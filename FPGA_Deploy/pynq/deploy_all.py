#!/usr/bin/env python3
"""
PYNQ Z2 Deployment Script — All 5 ML Accelerators × 4 Datasets
================================================================
Loads bitstream, configures model via AXI-Stream (mode=0),
runs inference via AXI-Stream (mode=1), measures latency.

Usage (on PYNQ Z2):
    python3 deploy_all.py [--model knn|dt|rf|svm|mlp] [--dataset iris|wine|cancer|mnist]

If no arguments, runs ALL 20 combinations.

Directory layout expected on PYNQ:
    ./overlays/<model>_accel.bit   + .hwh
    ./models/<dataset>/<model>_params.npz
    ./test_vectors/<dataset>/test_data.npz
"""

import argparse
import time
import struct
import numpy as np
from pynq import Overlay, allocate

# ---------------------------------------------------------------------------
# AXI-Lite register offsets (from HLS-generated driver headers)
# ---------------------------------------------------------------------------
AP_CTRL        = 0x00
AP_START       = 0x01
AP_DONE        = 0x02
AP_IDLE        = 0x04

# Per-model register maps: { param_name: offset }
REG_MAP = {
    "knn": {"mode": 0x10, "num_features": 0x18, "num_classes": 0x20,
            "num_train": 0x28, "num_test": 0x30, "latency_out": 0x38},
    "dt":  {"mode": 0x10, "num_features": 0x18, "num_classes": 0x20,
            "num_nodes": 0x28, "num_test": 0x30, "latency_out": 0x38},
    "rf":  {"mode": 0x10, "num_features": 0x18, "num_classes": 0x20,
            "num_trees": 0x28, "num_test": 0x30, "latency_out": 0x38},
    "svm": {"mode": 0x10, "num_features": 0x18, "num_classes": 0x20,
            "n_sv": 0x28, "num_test": 0x30, "latency_out": 0x38},
    "mlp": {"mode": 0x10, "num_features": 0x18, "num_classes": 0x20,
            "h1_size": 0x28, "h2_size": 0x30, "num_test": 0x38,
            "latency_out": 0x40},
}

FRAC_BITS = 8
SCALE = 1 << FRAC_BITS  # 256

MODELS   = ["knn", "dt", "rf", "svm", "mlp"]
DATASETS = ["iris", "wine", "cancer", "mnist"]


def to_fixed(val):
    """Convert float to fix16_t (ap_fixed<16,8>) as int32."""
    v = int(round(val * SCALE))
    v = max(-32768, min(32767, v))
    return np.int32(v)


def to_u32(v):
    """Reinterpret signed int32 as unsigned 32-bit for DMA buffer."""
    return np.uint32(struct.unpack('<I', struct.pack('<i', int(v)))[0])


# ---------------------------------------------------------------------------
# Build DMA input buffers for mode=0 (model loading)
# ---------------------------------------------------------------------------
def build_knn_load_buffer(params):
    """KNN: [feat0 feat1 ... featN label] × n_train"""
    td = params["train_data"]   # (n_train, n_feat), int32
    tl = params["train_labels"]  # (n_train,), int32
    n_train, n_feat = td.shape
    words = []
    for i in range(n_train):
        for j in range(n_feat):
            words.append(to_u32(td[i, j]))
        words.append(to_u32(tl[i]))
    return np.array(words, dtype=np.uint32)


def build_dt_load_buffer(params):
    """DT: [feat_idx threshold left right class] × n_nodes"""
    feat     = params["feature"].astype(np.int32)
    thresh   = params["threshold"].astype(np.int32)
    left     = params["children_left"].astype(np.int32)
    right    = params["children_right"].astype(np.int32)
    cls      = params["node_class"].astype(np.int32)
    n_nodes  = len(feat)
    words = []
    for i in range(n_nodes):
        words.append(to_u32(feat[i]))
        words.append(to_u32(thresh[i]))
        words.append(to_u32(left[i]))
        words.append(to_u32(right[i]))
        words.append(to_u32(cls[i]))
    return np.array(words, dtype=np.uint32)


def build_rf_load_buffer(params):
    """RF: for each tree: [n_nodes] then [feat thresh left right class] × n_nodes"""
    n_trees      = int(params["n_trees"])
    tree_n_nodes = params["tree_n_nodes"].astype(np.int32)
    tree_offsets = params["tree_offsets"].astype(np.int32)
    feat     = params["feature"].astype(np.int32)
    thresh   = params["threshold"].astype(np.int32)
    left     = params["children_left"].astype(np.int32)
    right    = params["children_right"].astype(np.int32)
    cls      = params["node_class"].astype(np.int32)
    words = []
    for t in range(n_trees):
        nn = tree_n_nodes[t]
        words.append(to_u32(nn))
        off = tree_offsets[t]
        for i in range(nn):
            idx = off + i
            words.append(to_u32(feat[idx]))
            words.append(to_u32(thresh[idx]))
            words.append(to_u32(left[idx]))
            words.append(to_u32(right[idx]))
            words.append(to_u32(cls[idx]))
    return np.array(words, dtype=np.uint32)


def build_svm_load_buffer(params):
    """SVM: gamma, n_support[], intercept[], SVs (row-major), dual_coef (row-major)"""
    gamma     = params["gamma"]
    n_support = params["n_support"].astype(np.int32)
    intercept = params["intercept"].astype(np.int32)
    svs       = params["support_vectors"].astype(np.int32)  # (n_sv, n_feat)
    dc        = params["dual_coef"].astype(np.int32)        # (n_classes-1, n_sv)
    n_classes = int(params["n_classes"])
    n_sv, n_feat = svs.shape

    words = []
    # 1) gamma (fix16)
    words.append(to_u32(to_fixed(float(gamma))))
    # 2) n_support per class
    for c in range(n_classes):
        words.append(to_u32(n_support[c]))
    # 3) intercept (already fix16 encoded)
    for v in intercept.flat:
        words.append(to_u32(v))
    # 4) support vectors (row-major)
    for v in svs.flat:
        words.append(to_u32(v))
    # 5) dual_coef (row-major)
    for v in dc.flat:
        words.append(to_u32(v))
    return np.array(words, dtype=np.uint32)


def build_mlp_load_buffer(params):
    """MLP: W1, B1, W2, B2, Wo, Bo (all fix16 encoded, row-major)"""
    words = []
    for layer_idx in range(3):  # layers 0, 1, 2
        w = params[f"w{layer_idx}"].astype(np.int32)
        b = params[f"b{layer_idx}"].astype(np.int32)
        for v in w.flat:
            words.append(to_u32(v))
        for v in b.flat:
            words.append(to_u32(v))
    return np.array(words, dtype=np.uint32)


# ---------------------------------------------------------------------------
# Build DMA input buffer for mode=1 (inference)
# ---------------------------------------------------------------------------
def build_inference_buffer(model_name, test_data, n_test, n_feat):
    """Build input stream for inference: n_test × n_feat fix16 words.
    For SVM/MLP use MinMax-scaled data (X_test_sc_q); others use global-scaled (X_test_gs_q).
    """
    words = []
    for i in range(n_test):
        for j in range(n_feat):
            words.append(to_u32(test_data[i, j]))
    return np.array(words, dtype=np.uint32)


# ---------------------------------------------------------------------------
# Write AXI-Lite registers
# ---------------------------------------------------------------------------
def write_reg(ip, offset, value):
    ip.write(offset, int(value))

def read_reg(ip, offset):
    return ip.read(offset)

def start_and_wait(ip):
    """Start the IP and wait for AP_DONE."""
    write_reg(ip, AP_CTRL, AP_START)
    while True:
        ctrl = read_reg(ip, AP_CTRL)
        if ctrl & AP_DONE:
            break


# ---------------------------------------------------------------------------
# Main run function for one (model, dataset) pair
# ---------------------------------------------------------------------------
def run_model_dataset(model_name, dataset_name, base_dir="."):
    """Load overlay, configure model, run inference, return results dict."""
    print(f"\n{'='*60}")
    print(f"  {model_name.upper()} on {dataset_name.upper()}")
    print(f"{'='*60}")

    accel_name = f"{model_name}_accel"
    bit_path = f"{base_dir}/overlays/{accel_name}.bit"
    model_path = f"{base_dir}/models/{dataset_name}/{model_name}_params.npz"
    test_path = f"{base_dir}/test_vectors/{dataset_name}/test_data.npz"

    # Load overlay
    print(f"  Loading overlay: {bit_path}")
    ol = Overlay(bit_path)
    ip = getattr(ol, f"{accel_name}_0")
    dma = ol.axi_dma_0

    # Load model params
    params = np.load(model_path, allow_pickle=True)
    test = np.load(test_path, allow_pickle=True)

    n_features = int(params.get("n_features", test["n_features"]))
    n_classes  = int(params.get("n_classes", test["n_classes"]))
    n_test     = int(test["n_test"])
    y_true     = test["y_test"][:n_test]

    # Use correct test data scaling
    if model_name in ("svm", "mlp"):
        X_test = test["X_test_sc_q"][:n_test]  # MinMax scaled
    else:
        X_test = test["X_test_gs_q"][:n_test]  # Global scaled

    regs = REG_MAP[model_name]

    # ---- MODE 0: Load model parameters ----
    print(f"  Loading model parameters...")
    write_reg(ip, regs["mode"], 0)
    write_reg(ip, regs["num_features"], n_features)
    write_reg(ip, regs["num_classes"], n_classes)

    if model_name == "knn":
        n_train = int(params["n_train"])
        write_reg(ip, regs["num_train"], n_train)
        write_reg(ip, regs["num_test"], 0)
        load_buf = build_knn_load_buffer(params)
    elif model_name == "dt":
        n_nodes = int(params["n_nodes"])
        write_reg(ip, regs["num_nodes"], n_nodes)
        write_reg(ip, regs["num_test"], 0)
        load_buf = build_dt_load_buffer(params)
    elif model_name == "rf":
        n_trees = int(params["n_trees"])
        write_reg(ip, regs["num_trees"], n_trees)
        write_reg(ip, regs["num_test"], 0)
        load_buf = build_rf_load_buffer(params)
    elif model_name == "svm":
        n_sv = int(params["n_sv"])
        write_reg(ip, regs["n_sv"], n_sv)
        write_reg(ip, regs["num_test"], 0)
        load_buf = build_svm_load_buffer(params)
    elif model_name == "mlp":
        layer_sizes = params["layer_sizes"]
        h1 = int(layer_sizes[1])
        h2 = int(layer_sizes[2])
        write_reg(ip, regs["h1_size"], h1)
        write_reg(ip, regs["h2_size"], h2)
        write_reg(ip, regs["num_test"], 0)
        load_buf = build_mlp_load_buffer(params)

    # Allocate DMA buffers and send model data
    in_buffer = allocate(shape=(len(load_buf),), dtype=np.uint32)

    in_buffer[:] = load_buf
    in_buffer.flush()

    # Start accelerator, then DMA (mode 0: no output stream data)
    write_reg(ip, AP_CTRL, AP_START)
    dma.sendchannel.transfer(in_buffer)
    dma.sendchannel.wait()
    # Wait for AP_DONE
    while not (read_reg(ip, AP_CTRL) & AP_DONE):
        pass
    print(f"  Model loaded ({len(load_buf)} words)")

    in_buffer.freebuffer()

    # ---- MODE 1: Inference ----
    print(f"  Running inference on {n_test} samples...")
    write_reg(ip, regs["mode"], 1)
    write_reg(ip, regs["num_test"], n_test)

    inf_buf = build_inference_buffer(model_name, X_test, n_test, n_features)
    in_buffer = allocate(shape=(len(inf_buf),), dtype=np.uint32)
    out_buffer = allocate(shape=(n_test,), dtype=np.uint32)

    in_buffer[:] = inf_buf
    in_buffer.flush()

    # Time the inference
    t0 = time.perf_counter()
    write_reg(ip, AP_CTRL, AP_START)
    dma.sendchannel.transfer(in_buffer)
    dma.recvchannel.transfer(out_buffer)
    dma.sendchannel.wait()
    dma.recvchannel.wait()
    while not (read_reg(ip, AP_CTRL) & AP_DONE):
        pass
    t1 = time.perf_counter()

    out_buffer.invalidate()
    # Read predictions (reinterpret uint32 as int32)
    preds = np.frombuffer(out_buffer, dtype=np.int32)[:n_test].copy()
    wall_time_us = (t1 - t0) * 1e6

    # Read HW cycle counter
    hw_latency = read_reg(ip, regs["latency_out"])

    # Accuracy
    correct = np.sum(preds == y_true)
    accuracy = correct / n_test * 100.0

    in_buffer.freebuffer()
    out_buffer.freebuffer()

    result = {
        "model": model_name,
        "dataset": dataset_name,
        "n_test": n_test,
        "accuracy": accuracy,
        "correct": int(correct),
        "hw_cycles": int(hw_latency),
        "wall_time_us": wall_time_us,
        "predictions": preds,
    }

    print(f"  Accuracy: {accuracy:.2f}% ({correct}/{n_test})")
    print(f"  HW Cycles: {hw_latency}")
    print(f"  Wall Time: {wall_time_us:.1f} µs")

    return result


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------
def main():
    parser = argparse.ArgumentParser(description="PYNQ ML Accelerator Deployment")
    parser.add_argument("--model", choices=MODELS, default=None,
                        help="Run only this model (default: all)")
    parser.add_argument("--dataset", choices=DATASETS, default=None,
                        help="Run only this dataset (default: all)")
    parser.add_argument("--base-dir", default=".",
                        help="Base directory with overlays/, models/, test_vectors/")
    args = parser.parse_args()

    models = [args.model] if args.model else MODELS
    datasets = [args.dataset] if args.dataset else DATASETS

    results = []
    for m in models:
        for d in datasets:
            try:
                r = run_model_dataset(m, d, args.base_dir)
                results.append(r)
            except Exception as e:
                print(f"  FAILED: {m}/{d}: {e}")
                results.append({
                    "model": m, "dataset": d,
                    "accuracy": 0.0, "hw_cycles": 0, "wall_time_us": 0,
                    "error": str(e),
                })

    # Print summary table
    print(f"\n{'='*75}")
    print(f"  SUMMARY")
    print(f"{'='*75}")
    print(f"{'Model':<8} {'Dataset':<8} {'Acc%':>8} {'HW Cyc':>10} {'Wall(µs)':>10}")
    print(f"{'-'*75}")
    for r in results:
        err = r.get("error", "")
        if err:
            print(f"{r['model']:<8} {r['dataset']:<8} {'FAIL':>8} {err}")
        else:
            print(f"{r['model']:<8} {r['dataset']:<8} {r['accuracy']:>7.2f}% "
                  f"{r['hw_cycles']:>10} {r['wall_time_us']:>10.1f}")

    # Save results
    np.savez("fpga_results.npz",
             models=[r["model"] for r in results],
             datasets=[r["dataset"] for r in results],
             accuracies=[r.get("accuracy", 0) for r in results],
             hw_cycles=[r.get("hw_cycles", 0) for r in results],
             wall_times_us=[r.get("wall_time_us", 0) for r in results])
    print(f"\nResults saved to fpga_results.npz")


if __name__ == "__main__":
    main()
