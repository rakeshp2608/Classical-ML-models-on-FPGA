# export_all.py -- FULLY FIXED FINAL VERSION
import numpy as np
from sklearn.datasets import load_iris
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import MinMaxScaler
from sklearn.tree import DecisionTreeClassifier
from sklearn.ensemble import RandomForestClassifier
from sklearn.svm import SVC
from sklearn.neural_network import MLPClassifier
import os

os.makedirs("models", exist_ok=True)

iris = load_iris()
X, y = iris.data, iris.target

X_tr_raw, X_te_raw, y_tr, y_te = train_test_split(
    X, y, test_size=0.2, random_state=42, stratify=y
)

scaler   = MinMaxScaler()
X_tr_sc  = scaler.fit_transform(X_tr_raw)
X_te_sc  = scaler.transform(X_te_raw)

QSCALE = 10000

# sklearn leaf sentinel in children_left/right arrays is -1
SKLEARN_LEAF_PY = -1
# We store -2 in our flat arrays as absolute sentinel
FLAT_LEAF = -2

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

    # Store raw float test data for DT/RF
    # Store scaled+quantized for SVM/MLP
    X_te_q = np.round(X_te_sc * QSCALE).astype(np.int16)

    sm  = scaler.data_min_.astype(np.float32)
    sr  = scaler.data_range_.astype(np.float32)

    lines = [
        "// common_model.h",
        "#pragma once",
        "#include <stdint.h>",
        "#include <pgmspace.h>",
        "",
        "#define ML_N_FEAT    4",
        "#define ML_N_CLASSES 3",
        "#define ML_QSCALE    " + str(QSCALE),
        "#define ML_N_TEST    " + str(n_te),
        "#define ML_N_TRAIN   " + str(n_tr),
        "",
        "// Scaler: x_scaled=(x_raw-min)/range, x_q=round(x_scaled*QSCALE)",
        "static const float ML_SCALER_MIN[ML_N_FEAT] PROGMEM = {",
        "    " + ", ".join("{:.8f}f".format(v) for v in sm),
        "};",
        "static const float ML_SCALER_RANGE[ML_N_FEAT] PROGMEM = {",
        "    " + ", ".join("{:.8f}f".format(v) for v in sr),
        "};",
        "",
        'static const char* const ML_CLASS_NAMES[ML_N_CLASSES] = {',
        '    "Setosa", "Versicolor", "Virginica"',
        "};",
        "",
        "// RAW cm test features for DT/RF",
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
        "// Scaled+quantized test features for SVM/MLP",
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
#  knn_model.h -- FIXED
# =============================================================
def export_knn():
    print("Training KNN...")
    from sklearn.neighbors import KNeighborsClassifier
    K_VAL = 3

    knn = KNeighborsClassifier(n_neighbors=K_VAL, metric='euclidean')
    knn.fit(X_tr_raw, y_tr)
    print("  sklearn accuracy: {:.2f}%".format(
        knn.score(X_te_raw, y_te) * 100))

    # Quantize training data
    X_tr_q = np.round(X_tr_raw * QSCALE).astype(np.int32)  # int32 not int16
    X_te_q_raw = np.round(X_te_raw * QSCALE).astype(np.int32)

    # ── Verify using int64 arithmetic to avoid overflow ──────
    # max raw value ~ 8.0 cm → q = 80000 (QSCALE=10000)
    # diff_max = 80000, diff^2 = 6.4e9 → needs int64
    def knn_q_predict(x_raw):
        x_q   = np.round(
            np.array(x_raw, dtype=np.float64) * QSCALE
        ).astype(np.int64)
        tr_q  = X_tr_q.astype(np.int64)
        diffs = tr_q - x_q[np.newaxis, :]   # (N, 4)
        dist2 = np.sum(diffs * diffs, axis=1)  # (N,) int64
        k_idx = np.argsort(dist2)[:K_VAL]
        votes = [0] * 3
        for idx in k_idx:
            votes[int(y_tr[idx])] += 1
        return int(np.argmax(votes))

    correct = sum(
        knn_q_predict(X_te_raw[i]) == y_te[i]
        for i in range(len(y_te))
    )
    print("  quantized accuracy (fixed): {:.2f}%".format(
        correct / len(y_te) * 100))

    # ── Check max possible distance² ─────────────────────────
    max_val_q = int(np.max(X_tr_q))
    min_val_q = int(np.min(X_tr_q))
    max_diff  = max_val_q - min_val_q
    max_dist2 = 4 * max_diff * max_diff  # 4 features
    print("  max q value  : {}".format(max_val_q))
    print("  max diff²×4  : {} (needs {} bits)".format(
        max_dist2,
        int(np.ceil(np.log2(max_dist2 + 1)))
    ))
    # If > 2^31-1 = 2147483647 → need int64 on ESP32 too

    n_tr_knn = len(X_tr_q)

    # Store as int16 in PROGMEM but use int64 for distance calc
    X_tr_q_i16 = X_tr_q.astype(np.int16)  # safe: raw cm < 10cm, q < 100000
    # Wait — QSCALE=10000, max raw=8.0 → q=80000 > int16 max (32767)!
    # We must reduce QSCALE for KNN or store as int32

    # Check if int16 is sufficient
    if max_val_q > 32767:
        print("  WARNING: q values exceed int16! Using smaller KNN_QSCALE")
        KNN_QSCALE = 100   # 8.0 * 100 = 800 — fits in int16
        X_tr_knn_q = np.round(X_tr_raw * KNN_QSCALE).astype(np.int16)
        X_te_knn_q = np.round(X_te_raw * KNN_QSCALE).astype(np.int16)
    else:
        KNN_QSCALE = QSCALE
        X_tr_knn_q = X_tr_q.astype(np.int16)
        X_te_knn_q = X_te_q_raw.astype(np.int16)

    print("  KNN_QSCALE   : {}".format(KNN_QSCALE))

    # Verify with correct KNN_QSCALE
    def knn_final_predict(x_raw):
        x_q   = np.round(
            np.array(x_raw, dtype=np.float64) * KNN_QSCALE
        ).astype(np.int64)
        tr_q  = X_tr_knn_q.astype(np.int64)
        diffs = tr_q - x_q[np.newaxis, :]
        dist2 = np.sum(diffs * diffs, axis=1)
        k_idx = np.argsort(dist2)[:K_VAL]
        votes = [0] * 3
        for idx in k_idx:
            votes[int(y_tr[idx])] += 1
        return int(np.argmax(votes))

    correct2 = sum(
        knn_final_predict(X_te_raw[i]) == y_te[i]
        for i in range(len(y_te))
    )
    print("  final quantized accuracy: {:.2f}%".format(
        correct2 / len(y_te) * 100))

    # Max dist² with KNN_QSCALE=100:
    # max_q = 800, diff_max=800, dist2_max = 4*800^2 = 2,560,000
    # fits in int32 easily — no overflow
    max_q2 = int(np.max(np.abs(X_tr_knn_q)))
    print("  max |q|      : {}  max_dist2 = {}".format(
        max_q2, 4 * 4 * max_q2 * max_q2))

    n_tr_knn = len(X_tr_knn_q)

    lines = [
        "// knn_model.h -- KNN on RAW cm data",
        "// KNN_QSCALE separate from ML_QSCALE to avoid overflow",
        "// max_dist2 = 4 * (KNN_QSCALE*8)^2 fits in int32",
        "#pragma once",
        '#include "common_model.h"',
        "",
        "#define KNN_K        " + str(K_VAL),
        "#define KNN_N_TRAIN  " + str(n_tr_knn),
        "#define KNN_QSCALE   " + str(KNN_QSCALE),
        "",
        "// Training features: q = round(cm * KNN_QSCALE)",
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
#  dt_model.h -- trained on RAW data
#  KEY FIX: sklearn leaf sentinel = -1, NOT -2
# =============================================================
def export_dt():
    print("Training Decision Tree...")
    dt = DecisionTreeClassifier(max_depth=5, random_state=42)
    dt.fit(X_tr_raw, y_tr)
    sk_acc = dt.score(X_te_raw, y_te) * 100
    print("  sklearn accuracy: {:.2f}%".format(sk_acc))

    t       = dt.tree_
    n_nodes = t.node_count

    # Verify leaf sentinel
    print("  DT leaf sentinel in children_left:",
          np.unique(t.children_left[t.children_left < 0]))

    thresh_q = np.where(
        t.feature >= 0,          # feature=-2 means leaf in sklearn
        np.round(t.threshold * QSCALE).astype(np.int32),
        np.int32(-1)
    )
    class_per_node = np.argmax(
        t.value[:, 0, :], axis=1
    ).astype(np.int8)

    # children_left[leaf] = TREE_LEAF = -1 in sklearn
    # Store exactly as-is — we check feat < 0 for leaf detection
    # which is more reliable than checking children values
    children_left  = t.children_left.astype(np.int16)
    children_right = t.children_right.astype(np.int16)

    # Verify quantized tree
    def dt_q_predict(x):
        node = 0
        for _ in range(n_nodes + 5):
            feat = int(t.feature[node])
            if feat < 0:  # leaf
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
        "// dt_model.h -- Decision Tree on RAW cm data",
        "// Leaf detection: DT_FEATURE[node] < 0 means leaf",
        "#pragma once",
        '#include "common_model.h"',
        "",
        "#define DT_N_NODES " + str(n_nodes),
        "",
        "// feature index; -2 (sklearn TREE_UNDEFINED) = leaf",
        "static const int8_t DT_FEATURE[DT_N_NODES] PROGMEM = {",
        "    " + ", ".join(str(int(v)) for v in t.feature),
        "};",
        "",
        "static const int32_t DT_THRESHOLD[DT_N_NODES] PROGMEM = {",
        "    " + ", ".join(str(int(v)) for v in thresh_q),
        "};",
        "",
        "static const int16_t DT_LEFT[DT_N_NODES] PROGMEM = {",
        "    " + ", ".join(str(int(v)) for v in children_left),
        "};",
        "",
        "static const int16_t DT_RIGHT[DT_N_NODES] PROGMEM = {",
        "    " + ", ".join(str(int(v)) for v in children_right),
        "};",
        "",
        "static const int8_t DT_CLASS[DT_N_NODES] PROGMEM = {",
        "    " + ", ".join(str(int(v)) for v in class_per_node),
        "};",
    ]
    write_file("models/dt_model.h", lines)

export_dt()

# =============================================================
#  rf_model.h -- trained on RAW data
# =============================================================
def export_rf():
    print("Training Random Forest...")
    rf = RandomForestClassifier(
        n_estimators=10, max_depth=4, random_state=42
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

        # Convert to absolute indices; use -2 as flat leaf sentinel
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

    # Verify
    def rf_q_predict(x):
        votes = [0] * 3
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

    lines = [
        "// rf_model.h -- Random Forest on RAW cm data",
        "// Leaf detection: RF_FEATURE[node] < 0 means leaf",
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
        "// left/right: absolute flat index, or -2 = leaf",
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
#  svm_model.h -- OvO kernel machines, proper vote
#  KEY FIX: sklearn SVC is OvO internally.
#  We export each binary classifier separately and vote.
#  n_classifiers = n_classes*(n_classes-1)/2 = 3
#  Classifiers: [0vs1, 0vs2, 1vs2]
# =============================================================
def export_svm():
    print("Training SVM...")
    # Use OvO explicitly for clarity
    svm = SVC(kernel="rbf", C=10, gamma="scale",
              decision_function_shape="ovo")
    svm.fit(X_tr_sc, y_tr)
    print("  sklearn accuracy: {:.2f}%".format(
        svm.score(X_te_sc, y_te) * 100))

    sv        = svm.support_vectors_  # (n_sv, n_feat)
    dc        = svm.dual_coef_        # (n_classes-1, n_sv)
    intercept = svm.intercept_        # (n_classifiers,) = (3,)
    gamma     = float(svm._gamma)
    n_sv      = int(sv.shape[0])
    n_classes = 3
    n_clf     = n_classes * (n_classes - 1) // 2  # = 3
    n_support = svm.n_support_  # e.g. [n0, n1, n2]

    sv_q    = np.round(sv * QSCALE).astype(np.int16)
    inter_f = intercept.astype(np.float32)

    # dual_coef_ layout (sklearn):
    # Row i contains coefficients for SVs of class i+1..n-1
    # against all other classes
    # For OvO with 3 classes:
    #   row 0: alpha * y for classifiers involving class 0
    #   row 1: alpha * y for classifiers involving class 1
    # Actually sklearn stores:
    #   dual_coef_[i, j] = alpha_j * sign for the classifier
    #   that separates class i from another class
    # Easier: use decision_function directly recomputed

    # Recompute dual_coef as flat per-classifier arrays
    # Classifier k (i vs j): uses SVs from class i and class j
    # dual_coef indices: complicated — just verify with df
    df_check = svm.decision_function(X_te_sc[:5])
    pred_check = np.argmax(
        np.array([
            # OvO vote: sign of each binary decision
            # clf 0: class0 vs class1
            # clf 1: class0 vs class2
            # clf 2: class1 vs class2
            (df_check[:, 0] > 0).astype(int) +
            (df_check[:, 1] > 0).astype(int),  # votes for class 0
            (df_check[:, 0] <= 0).astype(int) +
            (df_check[:, 2] > 0).astype(int),  # votes for class 1
            (df_check[:, 1] <= 0).astype(int) +
            (df_check[:, 2] <= 0).astype(int), # votes for class 2
        ]).T, axis=1
    )
    print("  OvO manual vote check:", np.mean(pred_check == y_te[:5]))

    # Store dual_coef_ as-is (n_classes-1 x n_sv)
    dc_flat = dc.flatten().astype(np.float32)

    # Verify our manual kernel computation matches sklearn
    def rbf_k(a, b, g):
        return float(np.exp(-g * np.sum((a - b)**2)))

    def svm_predict_manual(x_sc):
        # Compute K(x, sv_i) for all i
        K = np.array([rbf_k(x_sc, sv[i], gamma) for i in range(n_sv)])

        # sklearn OvO decision function:
        # For classifier (i vs j), the decision value is:
        # sum over SVs of class i: dc[j-1, sv_idx] * K[sv_idx]
        # + sum over SVs of class j: dc[i, sv_idx] * K[sv_idx]
        # + intercept[clf_idx]
        # This is encoded in dual_coef_ as:
        # dual_coef_[k, sv_idx] where k indexes over "other classes"

        # Use sklearn's own formula via decision_function approach
        # Simplest: recompute decision_function manually
        # df[clf] = sum_i alpha_i * K(x, sv_i) + b[clf]
        # where alpha_i includes the sign and is stored in dual_coef_

        # For 3 classes OvO, 3 classifiers:
        # clf0: class0 vs class1 → intercept[0]
        # clf1: class0 vs class2 → intercept[1]
        # clf2: class1 vs class2 → intercept[2]

        # dual_coef_ rows correspond to classes 1,2 (n_classes-1=2 rows)
        # dual_coef_[0]: coefficients for clf involving class 0 (vs class 1,2)
        # dual_coef_[1]: coefficients for clf involving class 1 (vs class 0,2)
        # This gets complex. Use scipy-style computation:

        # Simplest correct approach: dot(dc, K) gives per-class weighted sums
        # then apply intercepts

        # Actually the cleanest way:
        # decision_value[clf] = dual_coef_[clf_row, :] . K + intercept[clf]
        # But mapping clf → row is non-trivial for 3+ classes

        # CORRECT sklearn-matching formula:
        # score = dual_coef_ @ K  → shape (n_classes-1,)
        # For 3 classes this gives 2 values, not 3
        # We need to split by SV class membership

        # Build per-classifier scores using n_support
        n0, n1, n2 = int(n_support[0]), int(n_support[1]), int(n_support[2])
        sv_ranges = [(0, n0), (n0, n0+n1), (n0+n1, n0+n1+n2)]

        # dual_coef_ layout for 3 classes:
        # row 0: alphas for (class1_SVs in clf 0vs1),
        #              (class2_SVs in clf 0vs2)
        # row 1: alphas for (class0_SVs in clf 0vs1),
        #              (class2_SVs in clf 1vs2)
        # row 2: (not present — only n_classes-1 rows)
        # Actually:
        # dual_coef_[i,j] = alpha * y for SV j in the
        # binary classifier between class i and class (i+something)

        # Use the definitive sklearn formula:
        # kernel_matrix = K (precomputed)
        # decision = []
        # clf_idx = 0
        # for i in range(n_classes):
        #   for j in range(i+1, n_classes):
        #     # SVs for class i are in rows sv_ranges[i]
        #     # SVs for class j are in rows sv_ranges[j]
        #     # dual_coef for this clf:
        #     #   class i SVs: dc[j-1, sv_ranges[i][0]:sv_ranges[i][1]]
        #     #   class j SVs: dc[i,   sv_ranges[j][0]:sv_ranges[j][1]]
        #     coef_i = dc[j-1, sv_ranges[i][0]:sv_ranges[i][1]]
        #     coef_j = dc[i,   sv_ranges[j][0]:sv_ranges[j][1]]
        #     K_i = K[sv_ranges[i][0]:sv_ranges[i][1]]
        #     K_j = K[sv_ranges[j][0]:sv_ranges[j][1]]
        #     dec = np.dot(coef_i, K_i) + np.dot(coef_j, K_j) \
        #           + intercept[clf_idx]
        #     decision.append(dec)
        #     clf_idx += 1

        decision = []
        clf_idx = 0
        for i in range(n_classes):
            for j in range(i+1, n_classes):
                s0, e0 = sv_ranges[i]
                s1, e1 = sv_ranges[j]
                coef_i = dc[j-1, s0:e0]
                coef_j = dc[i,   s1:e1]
                K_i    = K[s0:e0]
                K_j    = K[s1:e1]
                dec    = (np.dot(coef_i, K_i) +
                          np.dot(coef_j, K_j) +
                          intercept[clf_idx])
                decision.append(dec)
                clf_idx += 1

        # OvO vote
        votes = [0] * n_classes
        clf_idx = 0
        for i in range(n_classes):
            for j in range(i+1, n_classes):
                if decision[clf_idx] > 0:
                    votes[i] += 1
                else:
                    votes[j] += 1
                clf_idx += 1
        return int(np.argmax(votes))

    correct = sum(
        svm_predict_manual(X_te_sc[i]) == y_te[i]
        for i in range(len(y_te))
    )
    print("  manual OvO accuracy: {:.2f}%".format(
        correct / len(y_te) * 100))

    # Now export per-classifier coefficients for ESP32
    # Pre-compute per-classifier alpha arrays for easy C++ implementation
    # For each clf (i vs j):
    #   coef_i = dc[j-1, sv_ranges[i][0]:sv_ranges[i][1]]
    #   coef_j = dc[i,   sv_ranges[j][0]:sv_ranges[j][1]]
    # We'll store them as a flat array per classifier

    n0, n1, n2 = int(n_support[0]), int(n_support[1]), int(n_support[2])
    sv_ranges = [(0, n0), (n0, n0+n1), (n0+n1, n0+n1+n2)]

    # Build per-clf coef arrays and sv index arrays
    clf_coefs  = []  # list of np arrays, one per clf
    clf_sv_idx = []  # list of sv index arrays, one per clf
    clf_n_sv   = []  # number of SVs per clf

    for i in range(n_classes):
        for j in range(i+1, n_classes):
            s0, e0 = sv_ranges[i]
            s1, e1 = sv_ranges[j]
            coef_i = dc[j-1, s0:e0].astype(np.float32)
            coef_j = dc[i,   s1:e1].astype(np.float32)
            idx_i  = np.arange(s0, e0, dtype=np.int16)
            idx_j  = np.arange(s1, e1, dtype=np.int16)
            clf_coefs.append(
                np.concatenate([coef_i, coef_j])
            )
            clf_sv_idx.append(
                np.concatenate([idx_i, idx_j])
            )
            clf_n_sv.append(len(coef_i) + len(coef_j))

    n_clf = len(clf_coefs)
    total_clf_sv = sum(clf_n_sv)

    # Flatten
    all_coefs   = np.concatenate(clf_coefs).astype(np.float32)
    all_sv_idx  = np.concatenate(clf_sv_idx).astype(np.int16)
    clf_offsets = []
    off = 0
    for ns in clf_n_sv:
        clf_offsets.append(off)
        off += ns

    lines = [
        "// svm_model.h -- SVM OvO on SCALED data",
        "// 3 binary classifiers: [0vs1, 0vs2, 1vs2]",
        "#pragma once",
        '#include "common_model.h"',
        "",
        "#define SVM_N_SV         " + str(n_sv),
        "#define SVM_N_CLF        " + str(n_clf),
        "#define SVM_TOTAL_CLF_SV " + str(total_clf_sv),
        "#define SVM_GAMMA_F      " + "{:.8f}f".format(gamma),
        "#define SVM_QSCALE_F     " + "{:.1f}f".format(float(QSCALE)),
        "",
        "// All support vectors quantized",
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
        "// Per-classifier: number of SVs",
        "static const uint8_t SVM_CLF_N_SV[SVM_N_CLF] PROGMEM = {",
        "    " + ", ".join(str(v) for v in clf_n_sv),
        "};",
        "",
        "// Per-classifier: offset into flat arrays",
        "static const uint16_t SVM_CLF_OFFSET[SVM_N_CLF] PROGMEM = {",
        "    " + ", ".join(str(v) for v in clf_offsets),
        "};",
        "",
        "// Flat SV indices for each classifier",
        "static const int16_t SVM_CLF_SV_IDX[SVM_TOTAL_CLF_SV]"
        " PROGMEM = {",
        "    " + ", ".join(str(int(v)) for v in all_sv_idx),
        "};",
        "",
        "// Flat alpha coefficients for each classifier",
        "static const float SVM_CLF_COEF[SVM_TOTAL_CLF_SV]"
        " PROGMEM = {",
        "    " + ", ".join(
            "{:.8f}f".format(float(v)) for v in all_coefs),
        "};",
        "",
        "// Intercepts: one per classifier",
        "static const float SVM_INTERCEPT[SVM_N_CLF] PROGMEM = {",
        "    " + ", ".join(
            "{:.8f}f".format(float(v)) for v in inter_f),
        "};",
        "",
        "// Which class wins when decision > 0 / <= 0",
        "// clf0: 0vs1, clf1: 0vs2, clf2: 1vs2",
        "static const uint8_t SVM_CLF_POS[SVM_N_CLF] PROGMEM = {0, 0, 1};",
        "static const uint8_t SVM_CLF_NEG[SVM_N_CLF] PROGMEM = {1, 2, 2};",
    ]
    write_file("models/svm_model.h", lines)

export_svm()

# =============================================================
#  mlp_model.h -- float32 weights
# =============================================================
def export_mlp():
    print("Training MLP...")
    mlp = MLPClassifier(
        hidden_layer_sizes=(8, 8),
        activation="relu",
        max_iter=2000,
        random_state=42
    )
    mlp.fit(X_tr_sc, y_tr)
    print("  sklearn accuracy: {:.2f}%".format(
        mlp.score(X_te_sc, y_te) * 100))

    layer_sizes = [4] + list(mlp.hidden_layer_sizes) + [3]
    n_layers    = len(layer_sizes)

    lines = [
        "// mlp_model.h -- MLP on SCALED data, float32 weights",
        "#pragma once",
        '#include "common_model.h"',
        "",
        "#define MLP_N_LAYERS " + str(n_layers),
    ]
    for i, s in enumerate(layer_sizes):
        lines.append("#define MLP_L" + str(i) + "_SIZE " + str(s))
    lines.append("")

    for l_idx, (W, b) in enumerate(
            zip(mlp.coefs_, mlp.intercepts_)):
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

export_mlp()
print("\nAll done.")