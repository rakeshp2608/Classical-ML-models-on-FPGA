# esp32_cancer_ml.py -- Export all ML models for UCI Breast Cancer dataset
import numpy as np
from sklearn.datasets import load_breast_cancer
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import MinMaxScaler
from sklearn.tree import DecisionTreeClassifier
from sklearn.ensemble import RandomForestClassifier
from sklearn.svm import SVC
from sklearn.neural_network import MLPClassifier
import os

os.makedirs("models", exist_ok=True)

cancer = load_breast_cancer()
X, y = cancer.data, cancer.target

N_FEAT = X.shape[1]           # 30
N_CLASSES = len(np.unique(y)) # 2

X_tr_raw, X_te_raw, y_tr, y_te = train_test_split(
    X, y, test_size=0.2, random_state=42, stratify=y
)

scaler   = MinMaxScaler()
X_tr_sc  = scaler.fit_transform(X_tr_raw)
X_te_sc  = scaler.transform(X_te_raw)

QSCALE = 10000
FLAT_LEAF = -2

CLASS_NAMES = ['"Malignant"', '"Benign"']

def write_file(path, lines):
    with open(path, "w", encoding="utf-8") as f:
        f.write("\n".join(lines) + "\n")
    print("  Written: " + path)


# =============================================================
#  common_model.h
# =============================================================
def export_common():
    n_te = len(X_te_raw)
    n_tr = len(X_tr_raw)

    X_te_q = np.round(X_te_sc * QSCALE).astype(np.int16)

    sm  = scaler.data_min_.astype(np.float32)
    sr  = scaler.data_range_.astype(np.float32)

    lines = [
        "// common_model.h -- UCI Breast Cancer",
        "#pragma once",
        "#include <stdint.h>",
        "#include <pgmspace.h>",
        "",
        "#define ML_N_FEAT    " + str(N_FEAT),
        "#define ML_N_CLASSES " + str(N_CLASSES),
        "#define ML_QSCALE    " + str(QSCALE),
        "#define ML_N_TEST    " + str(n_te),
        "#define ML_N_TRAIN   " + str(n_tr),
        "",
        "static const float ML_SCALER_MIN[ML_N_FEAT] PROGMEM = {",
        "    " + ", ".join("{:.8f}f".format(v) for v in sm),
        "};",
        "static const float ML_SCALER_RANGE[ML_N_FEAT] PROGMEM = {",
        "    " + ", ".join("{:.8f}f".format(v) for v in sr),
        "};",
        "",
        'static const char* const ML_CLASS_NAMES[ML_N_CLASSES] = {',
        '    ' + ', '.join(CLASS_NAMES),
        "};",
        "",
        "static const float ML_X_TEST_RAW[ML_N_TEST][ML_N_FEAT]"
        " PROGMEM = {",
    ]
    for i, row in enumerate(X_te_raw.astype(np.float32)):
        c = "," if i < n_te - 1 else ""
        lines.append(
            "    {" +
            ", ".join("{:.6f}f".format(v) for v in row) +
            "}" + c
        )
    lines += [
        "};",
        "",
        "static const int16_t ML_X_TEST_SC[ML_N_TEST][ML_N_FEAT]"
        " PROGMEM = {",
    ]
    for i, row in enumerate(X_te_q):
        c = "," if i < n_te - 1 else ""
        lines.append(
            "    {" + ", ".join(str(int(v)) for v in row) + "}" + c
        )
    lines += [
        "};",
        "",
        "static const uint8_t ML_Y_TEST[ML_N_TEST] PROGMEM = {",
        "    " + ", ".join(str(int(v)) for v in y_te),
        "};",
    ]
    write_file("models/common_model.h", lines)

export_common()


# =============================================================
#  knn_model.h
# =============================================================
def export_knn():
    print("Training KNN...")
    from sklearn.neighbors import KNeighborsClassifier
    K_VAL = 3

    knn = KNeighborsClassifier(n_neighbors=K_VAL, metric='euclidean')
    knn.fit(X_tr_raw, y_tr)
    print("  sklearn accuracy: {:.2f}%".format(
        knn.score(X_te_raw, y_te) * 100))

    max_raw = np.max(np.abs(X_tr_raw))
    max_q = int(max_raw * QSCALE)
    print("  max raw: {:.2f}, max q: {}".format(max_raw, max_q))

    if max_q > 32767:
        KNN_QSCALE = int(32000 / max_raw)
        print("  Using KNN_QSCALE = {}".format(KNN_QSCALE))
    else:
        KNN_QSCALE = QSCALE

    X_tr_knn_q = np.round(X_tr_raw * KNN_QSCALE).astype(np.int16)

    def knn_final_predict(x_raw):
        x_q   = np.round(
            np.array(x_raw, dtype=np.float64) * KNN_QSCALE
        ).astype(np.int64)
        tr_q  = X_tr_knn_q.astype(np.int64)
        diffs = tr_q - x_q[np.newaxis, :]
        dist2 = np.sum(diffs * diffs, axis=1)
        k_idx = np.argsort(dist2)[:K_VAL]
        votes = [0] * N_CLASSES
        for idx in k_idx:
            votes[int(y_tr[idx])] += 1
        return int(np.argmax(votes))

    correct = sum(
        knn_final_predict(X_te_raw[i]) == y_te[i]
        for i in range(len(y_te))
    )
    print("  quantized accuracy: {:.2f}%".format(
        correct / len(y_te) * 100))

    n_tr_knn = len(X_tr_knn_q)

    lines = [
        "// knn_model.h -- KNN (Breast Cancer)",
        "#pragma once",
        '#include "common_model.h"',
        "",
        "#define KNN_K        " + str(K_VAL),
        "#define KNN_N_TRAIN  " + str(n_tr_knn),
        "#define KNN_QSCALE   " + str(KNN_QSCALE),
        "",
        "static const int16_t KNN_X_TRAIN[KNN_N_TRAIN][ML_N_FEAT]"
        " PROGMEM = {",
    ]
    for i, row in enumerate(X_tr_knn_q):
        c = "," if i < n_tr_knn - 1 else ""
        lines.append(
            "    {" + ", ".join(str(int(v)) for v in row) + "}" + c
        )
    lines += [
        "};",
        "",
        "static const uint8_t KNN_Y_TRAIN[KNN_N_TRAIN] PROGMEM = {",
        "    " + ", ".join(str(int(v)) for v in y_tr),
        "};",
    ]
    write_file("models/knn_model.h", lines)

export_knn()


# =============================================================
#  dt_model.h
# =============================================================
def export_dt():
    print("Training Decision Tree...")
    dt = DecisionTreeClassifier(max_depth=5, random_state=42)
    dt.fit(X_tr_raw, y_tr)
    print("  sklearn accuracy: {:.2f}%".format(
        dt.score(X_te_raw, y_te) * 100))

    t       = dt.tree_
    n_nodes = t.node_count

    thresh_q = np.where(
        t.feature >= 0,
        np.round(t.threshold * QSCALE).astype(np.int32),
        np.int32(-1)
    )
    class_per_node = np.argmax(
        t.value[:, 0, :], axis=1
    ).astype(np.int8)

    children_left  = t.children_left.astype(np.int16)
    children_right = t.children_right.astype(np.int16)

    def dt_q_predict(x):
        node = 0
        for _ in range(n_nodes + 5):
            feat = int(t.feature[node])
            if feat < 0:
                return int(class_per_node[node])
            thr_q = int(thresh_q[node])
            x_q   = int(round(x[feat] * QSCALE))
            node  = int(t.children_left[node]) if x_q <= thr_q \
                    else int(t.children_right[node])
        return 0

    correct = sum(dt_q_predict(X_te_raw[i]) == y_te[i]
                  for i in range(len(y_te)))
    print("  quantized accuracy: {:.2f}%".format(
        correct / len(y_te) * 100))

    lines = [
        "// dt_model.h -- Decision Tree (Breast Cancer)",
        "#pragma once",
        '#include "common_model.h"',
        "",
        "#define DT_N_NODES " + str(n_nodes),
        "",
        "static const int8_t DT_FEATURE[DT_N_NODES] PROGMEM = {",
        "    " + ", ".join(str(int(v)) for v in t.feature),
        "};",
        "static const int32_t DT_THRESHOLD[DT_N_NODES] PROGMEM = {",
        "    " + ", ".join(str(int(v)) for v in thresh_q),
        "};",
        "static const int16_t DT_LEFT[DT_N_NODES] PROGMEM = {",
        "    " + ", ".join(str(int(v)) for v in children_left),
        "};",
        "static const int16_t DT_RIGHT[DT_N_NODES] PROGMEM = {",
        "    " + ", ".join(str(int(v)) for v in children_right),
        "};",
        "static const int8_t DT_CLASS[DT_N_NODES] PROGMEM = {",
        "    " + ", ".join(str(int(v)) for v in class_per_node),
        "};",
    ]
    write_file("models/dt_model.h", lines)

export_dt()


# =============================================================
#  rf_model.h
# =============================================================
def export_rf():
    print("Training Random Forest...")
    rf = RandomForestClassifier(
        n_estimators=10, max_depth=5, random_state=42
    )
    rf.fit(X_tr_raw, y_tr)
    print("  sklearn accuracy: {:.2f}%".format(
        rf.score(X_te_raw, y_te) * 100))

    trees       = rf.estimators_
    n_trees     = len(trees)
    node_counts = [t.tree_.node_count for t in trees]
    total_nodes = sum(node_counts)

    feat_flat  = []
    thr_flat   = []
    left_flat  = []
    right_flat = []
    class_flat = []
    offsets    = []
    off        = 0

    for tree in trees:
        t = tree.tree_
        offsets.append(off)
        feat_flat.extend(t.feature.tolist())
        tq = np.where(
            t.feature >= 0,
            np.round(t.threshold * QSCALE).astype(np.int32),
            np.int32(-1)
        )
        thr_flat.extend(tq.tolist())
        left_abs = np.where(
            t.children_left < 0,
            np.int32(FLAT_LEAF),
            (t.children_left + off).astype(np.int32)
        )
        right_abs = np.where(
            t.children_right < 0,
            np.int32(FLAT_LEAF),
            (t.children_right + off).astype(np.int32)
        )
        left_flat.extend(left_abs.tolist())
        right_flat.extend(right_abs.tolist())
        class_flat.extend(
            np.argmax(t.value[:, 0, :], axis=1).tolist()
        )
        off += t.node_count

    def rf_q_predict(x):
        votes = [0] * N_CLASSES
        for tree in trees:
            t    = tree.tree_
            node = 0
            for _ in range(t.node_count + 5):
                feat = int(t.feature[node])
                if feat < 0:
                    votes[int(np.argmax(t.value[node,0,:]))] += 1
                    break
                thr_q = int(round(t.threshold[node] * QSCALE))
                x_q   = int(round(x[feat] * QSCALE))
                node  = int(t.children_left[node]) \
                        if x_q <= thr_q \
                        else int(t.children_right[node])
        return int(np.argmax(votes))

    correct = sum(rf_q_predict(X_te_raw[i]) == y_te[i]
                  for i in range(len(y_te)))
    print("  quantized accuracy: {:.2f}%".format(
        correct / len(y_te) * 100))

    # ── Flat-array verification (matches C code exactly) ──
    def rf_flat_predict(x):
        votes = [0] * N_CLASSES
        for t_idx in range(n_trees):
            o = offsets[t_idx]
            sz = node_counts[t_idx]
            node = o
            for _ in range(sz + 5):
                feat = feat_flat[node]
                if feat < 0:
                    votes[class_flat[node]] += 1
                    break
                thr = thr_flat[node]
                x_q = int(round(x[feat] * QSCALE))
                node = left_flat[node] if x_q <= thr else right_flat[node]
        return int(np.argmax(votes))

    correct_flat = sum(rf_flat_predict(X_te_raw[i]) == y_te[i]
                       for i in range(len(y_te)))
    print("  flat-array accuracy: {:.2f}%".format(
        correct_flat / len(y_te) * 100))

    lines = [
        "// rf_model.h -- Random Forest (Breast Cancer)",
        "#pragma once",
        '#include "common_model.h"',
        "",
        "#define RF_N_TREES       " + str(n_trees),
        "#define RF_N_NODES_TOTAL " + str(total_nodes),
        "",
        "static const uint16_t RF_OFFSETS[RF_N_TREES] PROGMEM = {",
        "    " + ", ".join(str(int(v)) for v in offsets),
        "};",
        "static const uint16_t RF_SIZES[RF_N_TREES] PROGMEM = {",
        "    " + ", ".join(str(int(v)) for v in node_counts),
        "};",
        "static const int8_t RF_FEATURE[RF_N_NODES_TOTAL] PROGMEM = {",
        "    " + ", ".join(str(int(v)) for v in feat_flat),
        "};",
        "static const int32_t RF_THRESHOLD[RF_N_NODES_TOTAL] PROGMEM = {",
        "    " + ", ".join(str(int(v)) for v in thr_flat),
        "};",
        "static const int16_t RF_LEFT[RF_N_NODES_TOTAL] PROGMEM = {",
        "    " + ", ".join(str(int(v)) for v in left_flat),
        "};",
        "static const int16_t RF_RIGHT[RF_N_NODES_TOTAL] PROGMEM = {",
        "    " + ", ".join(str(int(v)) for v in right_flat),
        "};",
        "static const int8_t RF_CLASS[RF_N_NODES_TOTAL] PROGMEM = {",
        "    " + ", ".join(str(int(v)) for v in class_flat),
        "};",
    ]
    write_file("models/rf_model.h", lines)

export_rf()


# =============================================================
#  svm_model.h -- Binary classification (no OvO needed, but sklearn uses it)
# =============================================================
def export_svm():
    print("Training SVM...")
    svm = SVC(kernel="rbf", C=10, gamma="scale",
              decision_function_shape="ovo")
    svm.fit(X_tr_sc, y_tr)
    print("  sklearn accuracy: {:.2f}%".format(
        svm.score(X_te_sc, y_te) * 100))

    sv        = svm.support_vectors_
    dc        = svm.dual_coef_
    intercept = svm.intercept_
    gamma     = float(svm._gamma)
    n_sv      = int(sv.shape[0])
    n_classes = N_CLASSES
    n_clf     = n_classes * (n_classes - 1) // 2  # = 1 for binary
    n_support = svm.n_support_

    sv_q    = np.round(sv * QSCALE).astype(np.int16)
    inter_f = intercept.astype(np.float32)

    sv_ranges = []
    cumsum = 0
    for ns in n_support:
        sv_ranges.append((cumsum, cumsum + int(ns)))
        cumsum += int(ns)

    clf_coefs  = []
    clf_sv_idx = []
    clf_n_sv   = []
    clf_pos    = []
    clf_neg    = []

    for i in range(n_classes):
        for j in range(i+1, n_classes):
            s0, e0 = sv_ranges[i]
            s1, e1 = sv_ranges[j]
            coef_i = dc[j-1, s0:e0].astype(np.float32)
            coef_j = dc[i,   s1:e1].astype(np.float32)
            idx_i  = np.arange(s0, e0, dtype=np.int16)
            idx_j  = np.arange(s1, e1, dtype=np.int16)
            clf_coefs.append(np.concatenate([coef_i, coef_j]))
            clf_sv_idx.append(np.concatenate([idx_i, idx_j]))
            clf_n_sv.append(len(coef_i) + len(coef_j))
            clf_pos.append(i)
            clf_neg.append(j)

    total_clf_sv = sum(clf_n_sv)
    all_coefs   = np.concatenate(clf_coefs).astype(np.float32)
    all_sv_idx  = np.concatenate(clf_sv_idx).astype(np.int16)
    clf_offsets = []
    off = 0
    for ns in clf_n_sv:
        clf_offsets.append(off)
        off += ns

    lines = [
        "// svm_model.h -- SVM OvO (Breast Cancer)",
        "#pragma once",
        '#include "common_model.h"',
        "",
        "#define SVM_N_SV         " + str(n_sv),
        "#define SVM_N_CLF        " + str(n_clf),
        "#define SVM_TOTAL_CLF_SV " + str(total_clf_sv),
        "#define SVM_GAMMA_F      " + "{:.8f}f".format(gamma),
        "#define SVM_QSCALE_F     " + "{:.1f}f".format(float(QSCALE)),
        "",
        "static const int16_t SVM_SV[SVM_N_SV][ML_N_FEAT]"
        " PROGMEM = {",
    ]
    for i, row in enumerate(sv_q):
        c = "," if i < n_sv - 1 else ""
        lines.append(
            "    {" + ", ".join(str(int(v)) for v in row) + "}" + c
        )
    lines += [
        "};",
        "",
        "static const uint8_t SVM_CLF_N_SV[SVM_N_CLF] PROGMEM = {",
        "    " + ", ".join(str(v) for v in clf_n_sv),
        "};",
        "static const uint16_t SVM_CLF_OFFSET[SVM_N_CLF] PROGMEM = {",
        "    " + ", ".join(str(v) for v in clf_offsets),
        "};",
        "static const int16_t SVM_CLF_SV_IDX[SVM_TOTAL_CLF_SV]"
        " PROGMEM = {",
        "    " + ", ".join(str(int(v)) for v in all_sv_idx),
        "};",
        "static const float SVM_CLF_COEF[SVM_TOTAL_CLF_SV]"
        " PROGMEM = {",
        "    " + ", ".join(
            "{:.8f}f".format(float(v)) for v in all_coefs),
        "};",
        "static const float SVM_INTERCEPT[SVM_N_CLF] PROGMEM = {",
        "    " + ", ".join(
            "{:.8f}f".format(float(v)) for v in inter_f),
        "};",
        "static const uint8_t SVM_CLF_POS[SVM_N_CLF] PROGMEM = {" +
        ", ".join(str(v) for v in clf_pos) + "};",
        "static const uint8_t SVM_CLF_NEG[SVM_N_CLF] PROGMEM = {" +
        ", ".join(str(v) for v in clf_neg) + "};",
    ]
    write_file("models/svm_model.h", lines)

export_svm()


# =============================================================
#  mlp_model.h
# =============================================================
def export_mlp():
    print("Training MLP...")
    mlp = MLPClassifier(
        hidden_layer_sizes=(16, 16),
        activation="relu",
        max_iter=2000,
        random_state=42
    )
    mlp.fit(X_tr_sc, y_tr)
    print("  sklearn accuracy: {:.2f}%".format(
        mlp.score(X_te_sc, y_te) * 100))

    # For binary classification, sklearn uses 1 output + logistic.
    # Convert to 2-output equivalent for the C engine:
    #   logit_0 = -W*h - b,  logit_1 = +W*h + b  =>  argmax = class
    coefs  = [c.copy() for c in mlp.coefs_]
    biases = [b.copy() for b in mlp.intercepts_]
    if mlp.n_outputs_ == 1:
        W_last = coefs[-1]    # shape (hidden, 1)
        b_last = biases[-1]   # shape (1,)
        coefs[-1]  = np.hstack([-W_last, W_last])   # (hidden, 2)
        biases[-1] = np.array([-b_last[0], b_last[0]])
        print("  Converted 1-output logistic to 2-output for C engine")

    layer_sizes = [N_FEAT] + list(mlp.hidden_layer_sizes) + [N_CLASSES]
    n_layers    = len(layer_sizes)

    lines = [
        "// mlp_model.h -- MLP (Breast Cancer)",
        "#pragma once",
        '#include "common_model.h"',
        "",
        "#define MLP_N_LAYERS " + str(n_layers),
    ]
    for i, s in enumerate(layer_sizes):
        lines.append("#define MLP_L" + str(i) + "_SIZE " + str(s))
    lines.append("")

    for l_idx, (W, b) in enumerate(zip(coefs, biases)):
        rows, cols = W.shape
        lines += [
            "#define MLP_W" + str(l_idx) + "_ROWS " + str(rows),
            "#define MLP_W" + str(l_idx) + "_COLS " + str(cols),
            "static const float MLP_W" + str(l_idx) +
            "[MLP_W" + str(l_idx) + "_ROWS]" +
            "[MLP_W" + str(l_idx) + "_COLS] PROGMEM = {",
        ]
        for i, row in enumerate(W.astype(np.float32)):
            c = "," if i < rows - 1 else ""
            lines.append(
                "    {" +
                ", ".join("{:.8f}f".format(float(v)) for v in row) +
                "}" + c
            )
        lines += [
            "};",
            "static const float MLP_B" + str(l_idx) +
            "[MLP_W" + str(l_idx) + "_COLS] PROGMEM = {",
            "    " + ", ".join(
                "{:.8f}f".format(float(v))
                for v in b.astype(np.float32)),
            "};",
            "",
        ]

    write_file("models/mlp_model.h", lines)

    # ── MLP C-equivalent verification ──
    def mlp_c_predict(x_raw):
        # Simulate scale_and_quantize
        q16 = np.round(
            (x_raw - scaler.data_min_) / scaler.data_range_ * QSCALE
        ).clip(0, QSCALE).astype(np.int16)
        inp = q16.astype(np.float32) / QSCALE

        # Forward pass using converted weights
        for l_idx, (W, b) in enumerate(zip(coefs, biases)):
            out = inp @ W.astype(np.float32) + b.astype(np.float32)
            if l_idx < len(mlp.coefs_) - 1:
                out = np.maximum(out, 0)  # ReLU
            inp = out
        return int(np.argmax(out))

    correct_mlp = sum(mlp_c_predict(X_te_raw[i]) == y_te[i]
                      for i in range(len(y_te)))
    print("  C-equivalent accuracy: {:.2f}%".format(
        correct_mlp / len(y_te) * 100))

export_mlp()
print("\nAll done.")
