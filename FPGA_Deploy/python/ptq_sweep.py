#!/usr/bin/env python3
"""
ptq_sweep.py
============
Post-Training Quantization sweep: measure accuracy vs bit-width for all
models and datasets.  Simulates ap_fixed<W,I> quantization in Python and
reports the accuracy delta from full-precision.

Usage:  python ptq_sweep.py
"""

import numpy as np
from sklearn.datasets import load_iris, load_wine, load_breast_cancer, load_digits
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import MinMaxScaler
from sklearn.neighbors import KNeighborsClassifier
from sklearn.tree import DecisionTreeClassifier
from sklearn.ensemble import RandomForestClassifier
from sklearn.svm import SVC
from sklearn.neural_network import MLPClassifier

DATASETS = {
    'iris':   dict(loader=load_iris,            dt_depth=5,  rf_depth=4, mlp_hidden=(8, 8)),
    'wine':   dict(loader=load_wine,            dt_depth=5,  rf_depth=4, mlp_hidden=(16, 16)),
    'cancer': dict(loader=load_breast_cancer,   dt_depth=5,  rf_depth=5, mlp_hidden=(16, 16)),
    'mnist':  dict(loader=load_digits,          dt_depth=10, rf_depth=8, mlp_hidden=(32, 32)),
}

# Bit-width configurations to sweep: (total_bits, int_bits)
BIT_CONFIGS = [
    (8,  4),
    (10, 5),
    (12, 6),
    (14, 7),
    (16, 8),    # <-- default
    (20, 10),
    (24, 12),
    (32, 16),
]


def quantize(val, total_bits, int_bits):
    """Simulate ap_fixed<total_bits, int_bits> quantization."""
    frac_bits = total_bits - int_bits
    s = 1 << frac_bits
    max_v = (1 << (total_bits - 1)) - 1
    min_v = -(1 << (total_bits - 1))
    arr = np.asarray(val, dtype=np.float64)
    return np.clip(np.round(arr * s), min_v, max_v) / s


def knn_quantized_accuracy(X_train, X_test, y_train, y_test, tb, ib):
    """KNN with quantized features."""
    Xtr_q = quantize(X_train, tb, ib)
    Xte_q = quantize(X_test,  tb, ib)
    knn = KNeighborsClassifier(n_neighbors=3, metric='euclidean')
    knn.fit(Xtr_q, y_train)
    return knn.score(Xte_q, y_test) * 100


def dt_quantized_accuracy(X_train, X_test, y_train, y_test, tb, ib, depth):
    """DT with quantized features and thresholds."""
    dt = DecisionTreeClassifier(max_depth=depth, random_state=42)
    dt.fit(X_train, y_train)  # train on original
    # Quantize thresholds and features
    tree = dt.tree_
    thresh_q = quantize(tree.threshold, tb, ib)
    Xte_q = quantize(X_test, tb, ib)
    # Manual tree traversal with quantized data
    correct = 0
    for x, y_true in zip(Xte_q, y_test):
        node = 0
        while tree.feature[node] >= 0:
            f = tree.feature[node]
            if x[f] <= thresh_q[node]:
                node = tree.children_left[node]
            else:
                node = tree.children_right[node]
        pred = tree.value[node].argmax()
        if pred == y_true:
            correct += 1
    return correct / len(y_test) * 100


def rf_quantized_accuracy(X_train, X_test, y_train, y_test, tb, ib, depth, n_classes):
    """RF with quantized features and thresholds."""
    rf = RandomForestClassifier(n_estimators=10, max_depth=depth, random_state=42)
    rf.fit(X_train, y_train)
    Xte_q = quantize(X_test, tb, ib)

    correct = 0
    for x, y_true in zip(Xte_q, y_test):
        votes = np.zeros(n_classes, dtype=int)
        for est in rf.estimators_:
            tree = est.tree_
            thresh_q = quantize(tree.threshold, tb, ib)
            node = 0
            while tree.feature[node] >= 0:
                f = tree.feature[node]
                if x[f] <= thresh_q[node]:
                    node = tree.children_left[node]
                else:
                    node = tree.children_right[node]
            pred = tree.value[node].argmax()
            votes[pred] += 1
        if votes.argmax() == y_true:
            correct += 1
    return correct / len(y_test) * 100


def svm_quantized_accuracy(X_train_sc, X_test_sc, y_train, y_test, tb, ib):
    """SVM with quantized scaled features."""
    svm = SVC(kernel='rbf', C=10, gamma='scale', decision_function_shape='ovo')
    svm.fit(X_train_sc, y_train)
    Xte_q = quantize(X_test_sc, tb, ib)
    return svm.score(Xte_q, y_test) * 100


def mlp_quantized_accuracy(X_train_sc, X_test_sc, y_train, y_test, tb, ib, hidden):
    """MLP with quantized weights and activations."""
    mlp = MLPClassifier(hidden_layer_sizes=hidden, activation='relu',
                        max_iter=2000, random_state=42)
    mlp.fit(X_train_sc, y_train)
    n_classes = len(np.unique(y_train))
    # Handle binary classification: sklearn outputs 1 neuron
    coefs  = [w.copy() for w in mlp.coefs_]
    biases = [b.copy() for b in mlp.intercepts_]
    if n_classes == 2 and coefs[-1].shape[1] == 1:
        coefs[-1]  = np.hstack([-coefs[-1],  coefs[-1]])
        biases[-1] = np.array([-biases[-1][0], biases[-1][0]])
    # Quantize weights and biases
    coefs  = [quantize(w, tb, ib) for w in coefs]
    biases = [quantize(b, tb, ib) for b in biases]
    # Forward pass with quantized arithmetic
    Xte_q = quantize(X_test_sc, tb, ib)
    correct = 0
    for x, y_true in zip(Xte_q, y_test):
        a = x.copy()
        for i, (w, b) in enumerate(zip(coefs, biases)):
            z = quantize(a @ w + b, tb, ib)
            if i < len(coefs) - 1:
                a = quantize(np.maximum(0, z), tb, ib)  # ReLU
            else:
                a = z  # output (no activation for argmax)
        pred = a.argmax()
        if pred == y_true:
            correct += 1
    return correct / len(y_test) * 100


def run_sweep():
    header = f"{'Dataset':<8} {'Model':<5} {'FP32':>7}"
    for tb, ib in BIT_CONFIGS:
        header += f" {'<'+str(tb)+','+str(ib)+'>':>9}"
    print(header)
    print("-" * len(header))

    for dname, dcfg in DATASETS.items():
        data = dcfg['loader']()
        X, y = data.data, data.target
        X_train, X_test, y_train, y_test = train_test_split(
            X, y, test_size=0.2, random_state=42, stratify=y)
        n_classes = len(np.unique(y))

        scaler = MinMaxScaler()
        X_train_sc = scaler.fit_transform(X_train)
        X_test_sc  = scaler.transform(X_test)

        abs_max = max(np.abs(X_train).max(), 1e-9)
        gs = 120.0 / abs_max
        X_train_gs = X_train * gs
        X_test_gs  = X_test * gs

        # FP32 baselines
        knn_fp = KNeighborsClassifier(3).fit(X_train_gs, y_train).score(X_test_gs, y_test) * 100
        dt_fp  = DecisionTreeClassifier(max_depth=dcfg['dt_depth'], random_state=42).fit(
            X_train_gs, y_train).score(X_test_gs, y_test) * 100
        rf_fp  = RandomForestClassifier(10, max_depth=dcfg['rf_depth'], random_state=42).fit(
            X_train_gs, y_train).score(X_test_gs, y_test) * 100
        svm_fp = SVC(kernel='rbf', C=10, gamma='scale', decision_function_shape='ovo').fit(
            X_train_sc, y_train).score(X_test_sc, y_test) * 100
        mlp_fp = MLPClassifier(hidden_layer_sizes=dcfg['mlp_hidden'], activation='relu',
                               max_iter=2000, random_state=42).fit(
            X_train_sc, y_train).score(X_test_sc, y_test) * 100

        for model_name, fp_acc, sweep_fn in [
            ('KNN', knn_fp, lambda tb, ib: knn_quantized_accuracy(X_train_gs, X_test_gs, y_train, y_test, tb, ib)),
            ('DT',  dt_fp,  lambda tb, ib: dt_quantized_accuracy(X_train_gs, X_test_gs, y_train, y_test, tb, ib, dcfg['dt_depth'])),
            ('RF',  rf_fp,  lambda tb, ib: rf_quantized_accuracy(X_train_gs, X_test_gs, y_train, y_test, tb, ib, dcfg['rf_depth'], n_classes)),
            ('SVM', svm_fp, lambda tb, ib: svm_quantized_accuracy(X_train_sc, X_test_sc, y_train, y_test, tb, ib)),
            ('MLP', mlp_fp, lambda tb, ib: mlp_quantized_accuracy(X_train_sc, X_test_sc, y_train, y_test, tb, ib, dcfg['mlp_hidden'])),
        ]:
            row = f"{dname:<8} {model_name:<5} {fp_acc:>6.2f}%"
            for tb, ib in BIT_CONFIGS:
                try:
                    acc = sweep_fn(tb, ib)
                    delta = acc - fp_acc
                    row += f" {acc:>6.2f}%"
                except Exception:
                    row += f"   ERR  "
            print(row)
        print()


if __name__ == '__main__':
    print("PTQ Sweep: Accuracy vs Fixed-Point Bit-Width")
    print("=" * 80)
    print(f"Format: ap_fixed<total_bits, int_bits>\n")
    run_sweep()
