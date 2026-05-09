#!/usr/bin/env python3
"""
train_and_export.py
===================
Train all 5 ML models (KNN, DT, RF, SVM, MLP) on all 4 datasets
(Iris, Wine, Cancer, MNIST-digits) and export parameters for FPGA HLS
deployment on PYNQ Z2.

Matches ESP32 training hyperparameters exactly for fair comparison.

Outputs
-------
- models/<dataset>/<model>_params.npz   : NumPy archives for PYNQ streaming
- test_vectors/<dataset>/test_data.npz  : Test features + labels
- hls_headers/<dataset>/<model>_data.h  : C headers for HLS testbench
"""

import os, sys, struct
import numpy as np
from sklearn.datasets import load_iris, load_wine, load_breast_cancer, load_digits
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import MinMaxScaler
from sklearn.neighbors import KNeighborsClassifier
from sklearn.tree import DecisionTreeClassifier
from sklearn.ensemble import RandomForestClassifier
from sklearn.svm import SVC
from sklearn.neural_network import MLPClassifier

# ── Fixed-point config (default for ap_fixed<16,8>) ──────────────────────
TOTAL_BITS = 16
INT_BITS   = 8
FRAC_BITS  = TOTAL_BITS - INT_BITS
SCALE      = 1 << FRAC_BITS          # 256

BASE_DIR = os.path.dirname(os.path.abspath(__file__))

# ── Dataset configs (matches ESP32 exactly) ───────────────────────────────
DATASETS = {
    'iris':   dict(loader=load_iris,            dt_depth=5,  rf_depth=4, mlp_hidden=(8, 8)),
    'wine':   dict(loader=load_wine,            dt_depth=5,  rf_depth=4, mlp_hidden=(16, 16)),
    'cancer': dict(loader=load_breast_cancer,   dt_depth=5,  rf_depth=5, mlp_hidden=(16, 16)),
    'mnist':  dict(loader=load_digits,          dt_depth=10, rf_depth=8, mlp_hidden=(32, 32)),
}

# ── Helpers ───────────────────────────────────────────────────────────────

def to_fixed(val, frac_bits=FRAC_BITS):
    """Convert float array to fixed-point int (simulate ap_fixed<16, INT_BITS>)."""
    s = 1 << frac_bits
    max_v = (1 << (TOTAL_BITS - 1)) - 1
    min_v = -(1 << (TOTAL_BITS - 1))
    return np.clip(np.round(np.asarray(val, dtype=np.float64) * s), min_v, max_v).astype(np.int32)


def to_fixed32(val, frac_bits=16):
    """Convert float to 32-bit fixed-point int (ap_fixed<32,16>)."""
    s = 1 << frac_bits
    max_v = (1 << 31) - 1
    min_v = -(1 << 31)
    return np.clip(np.round(np.asarray(val, dtype=np.float64) * s), min_v, max_v).astype(np.int32)


def c_array_i32(name, arr, per_line=12):
    """Format a flat int32 array as a C initializer."""
    flat = arr.flatten()
    lines = [f"static const int32_t {name}[{len(flat)}] = {{"]
    for i in range(0, len(flat), per_line):
        chunk = ", ".join(str(int(v)) for v in flat[i:i+per_line])
        lines.append(f"    {chunk},")
    lines.append("};")
    return "\n".join(lines)


def c_array_i16(name, arr, per_line=16):
    flat = arr.flatten()
    lines = [f"static const int16_t {name}[{len(flat)}] = {{"]
    for i in range(0, len(flat), per_line):
        chunk = ", ".join(str(int(v)) for v in flat[i:i+per_line])
        lines.append(f"    {chunk},")
    lines.append("};")
    return "\n".join(lines)


def c_array_i8(name, arr, per_line=20):
    flat = arr.flatten()
    lines = [f"static const int8_t {name}[{len(flat)}] = {{"]
    for i in range(0, len(flat), per_line):
        chunk = ", ".join(str(int(v)) for v in flat[i:i+per_line])
        lines.append(f"    {chunk},")
    lines.append("};")
    return "\n".join(lines)


def c_array_u8(name, arr, per_line=20):
    flat = arr.flatten()
    lines = [f"static const uint8_t {name}[{len(flat)}] = {{"]
    for i in range(0, len(flat), per_line):
        chunk = ", ".join(str(int(v)) for v in flat[i:i+per_line])
        lines.append(f"    {chunk},")
    lines.append("};")
    return "\n".join(lines)


# ── Export one dataset ────────────────────────────────────────────────────

def export_dataset(name, cfg):
    print(f"\n{'='*60}\nDataset: {name}\n{'='*60}")

    data = cfg['loader']()
    X, y = data.data.astype(np.float64), data.target.astype(np.int32)
    X_train, X_test, y_train, y_test = train_test_split(
        X, y, test_size=0.2, random_state=42, stratify=y)

    n_feat    = X.shape[1]
    n_classes = len(np.unique(y))
    n_train   = len(X_train)
    n_test    = len(X_test)
    print(f"  Features={n_feat}  Classes={n_classes}  Train={n_train}  Test={n_test}")

    # MinMax scaler (for SVM / MLP)
    scaler = MinMaxScaler()
    X_train_sc = scaler.fit_transform(X_train)
    X_test_sc  = scaler.transform(X_test)

    # Global scale for KNN/DT/RF — fit raw features into ap_fixed<16,8> range
    abs_max = max(np.abs(X_train).max(), 1e-9)
    gs = 120.0 / abs_max          # keeps values in roughly [-120, 120]
    X_train_gs = X_train * gs
    X_test_gs  = X_test * gs

    npz_dir = os.path.join(BASE_DIR, 'models',        name)
    hdr_dir = os.path.join(BASE_DIR, 'hls_headers',   name)
    vec_dir = os.path.join(BASE_DIR, 'test_vectors',   name)

    results = {}

    # ════════════════════  KNN  ════════════════════════════════════════════
    knn = KNeighborsClassifier(n_neighbors=3, metric='euclidean')
    knn.fit(X_train_gs, y_train)          # train on global-scaled
    knn_acc = knn.score(X_test_gs, y_test) * 100
    print(f"  KNN  acc={knn_acc:.2f}%")
    results['knn'] = knn_acc

    train_q  = to_fixed(X_train_gs)       # int16 fixed-point
    labels_q = y_train.astype(np.int32)
    np.savez(os.path.join(npz_dir, 'knn_params.npz'),
             train_data=train_q, train_labels=labels_q,
             n_train=n_train, n_features=n_feat, n_classes=n_classes,
             global_scale=gs)

    # ════════════════════  DT  ═════════════════════════════════════════════
    dt = DecisionTreeClassifier(max_depth=cfg['dt_depth'], random_state=42)
    dt.fit(X_train_gs, y_train)
    dt_acc = dt.score(X_test_gs, y_test) * 100
    print(f"  DT   acc={dt_acc:.2f}%")
    results['dt'] = dt_acc

    tree = dt.tree_
    # feature indices: -2 means leaf in sklearn
    feat_idx    = tree.feature.astype(np.int8)
    thresh_q    = to_fixed(tree.threshold)   # global-scaled thresholds
    left_child  = tree.children_left.astype(np.int16)
    right_child = tree.children_right.astype(np.int16)
    node_class  = tree.value.argmax(axis=2).flatten().astype(np.int8)
    n_nodes     = int(tree.node_count)

    np.savez(os.path.join(npz_dir, 'dt_params.npz'),
             feature=feat_idx, threshold=thresh_q,
             children_left=left_child, children_right=right_child,
             node_class=node_class, n_nodes=n_nodes,
             n_features=n_feat, n_classes=n_classes, global_scale=gs)

    # ════════════════════  RF  ═════════════════════════════════════════════
    rf = RandomForestClassifier(n_estimators=10, max_depth=cfg['rf_depth'],
                                random_state=42)
    rf.fit(X_train_gs, y_train)
    rf_acc = rf.score(X_test_gs, y_test) * 100
    print(f"  RF   acc={rf_acc:.2f}%")
    results['rf'] = rf_acc

    all_feat, all_thresh, all_left, all_right, all_cls = [], [], [], [], []
    tree_n_nodes = []
    for est in rf.estimators_:
        t = est.tree_
        all_feat.append(t.feature.astype(np.int8))
        all_thresh.append(to_fixed(t.threshold))
        all_left.append(t.children_left.astype(np.int16))
        all_right.append(t.children_right.astype(np.int16))
        all_cls.append(t.value.argmax(axis=2).flatten().astype(np.int8))
        tree_n_nodes.append(int(t.node_count))

    offsets = np.array([0] + tree_n_nodes, dtype=np.int32).cumsum()
    np.savez(os.path.join(npz_dir, 'rf_params.npz'),
             n_trees=10, tree_offsets=offsets,
             feature=np.concatenate(all_feat),
             threshold=np.concatenate(all_thresh),
             children_left=np.concatenate(all_left),
             children_right=np.concatenate(all_right),
             node_class=np.concatenate(all_cls),
             tree_n_nodes=np.array(tree_n_nodes, dtype=np.int32),
             n_features=n_feat, n_classes=n_classes, global_scale=gs)

    # ════════════════════  SVM  ════════════════════════════════════════════
    svm = SVC(kernel='rbf', C=10, gamma='scale', decision_function_shape='ovo')
    svm.fit(X_train_sc, y_train)
    svm_acc = svm.score(X_test_sc, y_test) * 100
    print(f"  SVM  acc={svm_acc:.2f}%")
    results['svm'] = svm_acc

    sv_q  = to_fixed(svm.support_vectors_)
    # Fix sign convention for binary SVM if libsvm internal order is reversed
    dc  = svm.dual_coef_.copy()
    intercepts = svm.intercept_.copy()
    if n_classes == 2:
        # If class-0 SVs have negative dual_coef, libsvm order is [1,0]
        # Negate to match our convention: decision>0 → class i (class 0) wins
        if np.mean(np.sign(dc[0, :svm.n_support_[0]])) < 0:
            dc = -dc
            intercepts = -intercepts
    dc_q  = to_fixed(dc)
    int_q = to_fixed(intercepts)
    gamma_val = float(svm._gamma)

    np.savez(os.path.join(npz_dir, 'svm_params.npz'),
             support_vectors=sv_q,
             dual_coef=dc_q,
             intercept=int_q,
             gamma=gamma_val,
             n_support=svm.n_support_.astype(np.int32),
             n_sv=int(svm.support_vectors_.shape[0]),
             n_features=n_feat, n_classes=n_classes)

    # ════════════════════  MLP  ════════════════════════════════════════════
    mlp = MLPClassifier(hidden_layer_sizes=cfg['mlp_hidden'],
                        activation='relu', max_iter=2000, random_state=42)
    mlp.fit(X_train_sc, y_train)
    mlp_acc = mlp.score(X_test_sc, y_test) * 100
    print(f"  MLP  acc={mlp_acc:.2f}%")
    results['mlp'] = mlp_acc

    # Handle binary classification (Cancer): sklearn outputs 1 neuron
    coefs  = [c.copy() for c in mlp.coefs_]
    biases = [b.copy() for b in mlp.intercepts_]
    out_classes = n_classes
    if n_classes == 2 and coefs[-1].shape[1] == 1:
        # Replicate as [-w, +w] for 2-output
        coefs[-1]  = np.hstack([-coefs[-1],  coefs[-1]])
        biases[-1] = np.array([-biases[-1][0], biases[-1][0]])
        out_classes = 2

    layer_sizes = [n_feat] + list(cfg['mlp_hidden']) + [out_classes]
    # Transpose weights: sklearn stores (input, output), HLS expects (output, input)
    coefs_T = [c.T.copy() for c in coefs]
    save_dict = dict(layer_sizes=np.array(layer_sizes, dtype=np.int32),
                     n_layers=len(layer_sizes))
    for i, (w, b) in enumerate(zip(coefs_T, biases)):
        save_dict[f'w{i}'] = to_fixed(w)
        save_dict[f'b{i}'] = to_fixed(b)
    np.savez(os.path.join(npz_dir, 'mlp_params.npz'), **save_dict)

    # ════════════════════  Test vectors  ═══════════════════════════════════
    np.savez(os.path.join(vec_dir, 'test_data.npz'),
             X_test_raw=X_test,
             X_test_gs_q=to_fixed(X_test_gs),      # for KNN/DT/RF
             X_test_sc_q=to_fixed(X_test_sc),       # for SVM/MLP
             y_test=y_test.astype(np.int32),
             n_features=n_feat, n_classes=n_classes, n_test=n_test,
             global_scale=gs,
             scaler_min=scaler.data_min_,
             scaler_range=scaler.data_range_)

    # ════════════════════  C Headers for HLS TB  ══════════════════════════
    max_tb = min(n_test, 50)   # cap testbench to 50 samples

    hdr = []
    hdr.append(f"// Auto-generated by train_and_export.py — {name}")
    hdr.append(f"#ifndef TEST_{name.upper()}_DATA_H")
    hdr.append(f"#define TEST_{name.upper()}_DATA_H\n")
    hdr.append(f"#include <stdint.h>\n")
    hdr.append(f"#define TB_{name.upper()}_N_FEAT    {n_feat}")
    hdr.append(f"#define TB_{name.upper()}_N_CLASSES {n_classes}")
    hdr.append(f"#define TB_{name.upper()}_N_TRAIN   {n_train}")
    hdr.append(f"#define TB_{name.upper()}_N_TEST    {max_tb}\n")

    # Test data (global-scaled, fixed16)
    hdr.append(c_array_i32(f"TB_{name.upper()}_X_GS",
                            to_fixed(X_test_gs[:max_tb])))
    hdr.append("")
    # Test data (MinMax-scaled, fixed16)
    hdr.append(c_array_i32(f"TB_{name.upper()}_X_SC",
                            to_fixed(X_test_sc[:max_tb])))
    hdr.append("")
    # Labels
    hdr.append(c_array_u8(f"TB_{name.upper()}_Y",
                           y_test[:max_tb].astype(np.uint8)))
    hdr.append("")

    # KNN training data
    hdr.append(c_array_i32(f"TB_{name.upper()}_KNN_TRAIN",
                            to_fixed(X_train_gs)))
    hdr.append("")
    hdr.append(c_array_u8(f"TB_{name.upper()}_KNN_LABELS",
                           y_train.astype(np.uint8)))
    hdr.append("")

    # DT params
    hdr.append(c_array_i8(f"TB_{name.upper()}_DT_FEATURE", feat_idx))
    hdr.append("")
    hdr.append(c_array_i32(f"TB_{name.upper()}_DT_THRESHOLD", thresh_q))
    hdr.append("")
    hdr.append(c_array_i16(f"TB_{name.upper()}_DT_LEFT", left_child))
    hdr.append("")
    hdr.append(c_array_i16(f"TB_{name.upper()}_DT_RIGHT", right_child))
    hdr.append("")
    hdr.append(c_array_i8(f"TB_{name.upper()}_DT_CLASS", node_class))
    hdr.append(f"\n#define TB_{name.upper()}_DT_N_NODES {n_nodes}\n")

    # RF params
    hdr.append(f"#define TB_{name.upper()}_RF_N_TREES 10")
    hdr.append(c_array_i32(f"TB_{name.upper()}_RF_OFFSETS", offsets))
    hdr.append("")
    hdr.append(c_array_i8(f"TB_{name.upper()}_RF_FEATURE",
                           np.concatenate(all_feat)))
    hdr.append("")
    hdr.append(c_array_i32(f"TB_{name.upper()}_RF_THRESHOLD",
                            np.concatenate(all_thresh)))
    hdr.append("")
    hdr.append(c_array_i16(f"TB_{name.upper()}_RF_LEFT",
                            np.concatenate(all_left)))
    hdr.append("")
    hdr.append(c_array_i16(f"TB_{name.upper()}_RF_RIGHT",
                            np.concatenate(all_right)))
    hdr.append("")
    hdr.append(c_array_i8(f"TB_{name.upper()}_RF_CLASS",
                           np.concatenate(all_cls)))
    hdr.append("")
    hdr.append(c_array_i32(f"TB_{name.upper()}_RF_TREE_NNODES",
                            np.array(tree_n_nodes, dtype=np.int32)))
    hdr.append("")

    # SVM params
    hdr.append(f"\n// SVM gamma (float) = {gamma_val}")
    hdr.append(f"#define TB_{name.upper()}_SVM_GAMMA_F  {gamma_val}")
    hdr.append(f"#define TB_{name.upper()}_SVM_N_SV     {svm.support_vectors_.shape[0]}")
    hdr.append(c_array_i32(f"TB_{name.upper()}_SVM_SV", sv_q))
    hdr.append("")
    hdr.append(c_array_i32(f"TB_{name.upper()}_SVM_DUAL_COEF", dc_q))
    hdr.append("")
    hdr.append(c_array_i32(f"TB_{name.upper()}_SVM_INTERCEPT", int_q))
    hdr.append("")
    hdr.append(c_array_i32(f"TB_{name.upper()}_SVM_N_SUPPORT",
                            svm.n_support_.astype(np.int32)))
    hdr.append("")

    # MLP params
    hdr.append(f"\n// MLP layer sizes: {layer_sizes}")
    hdr.append(c_array_i32(f"TB_{name.upper()}_MLP_LAYER_SIZES",
                            np.array(layer_sizes, dtype=np.int32)))
    hdr.append(f"#define TB_{name.upper()}_MLP_N_LAYERS {len(layer_sizes)}")
    for i, (w, b) in enumerate(zip(coefs_T, biases)):
        hdr.append("")
        hdr.append(c_array_i32(f"TB_{name.upper()}_MLP_W{i}", to_fixed(w)))
        hdr.append(c_array_i32(f"TB_{name.upper()}_MLP_B{i}", to_fixed(b)))

    hdr.append(f"\n#endif // TEST_{name.upper()}_DATA_H")

    with open(os.path.join(hdr_dir, f"test_{name}_data.h"), 'w') as f:
        f.write("\n".join(hdr))

    print(f"  Exported to {npz_dir}/, {hdr_dir}/, {vec_dir}/")
    return results


# ══════════════════════════════════════════════════════════════════════════
if __name__ == '__main__':
    all_results = {}
    for dname, dcfg in DATASETS.items():
        all_results[dname] = export_dataset(dname, dcfg)

    print(f"\n{'='*60}")
    print("Accuracy Summary (Python baseline — matches ESP32 training)")
    print(f"{'='*60}")
    print(f"{'Dataset':<10} {'KNN':>8} {'DT':>8} {'RF':>8} {'SVM':>8} {'MLP':>8}")
    for dname in DATASETS:
        r = all_results[dname]
        print(f"{dname:<10} {r['knn']:>7.2f}% {r['dt']:>7.2f}% {r['rf']:>7.2f}% "
              f"{r['svm']:>7.2f}% {r['mlp']:>7.2f}%")
    print()
