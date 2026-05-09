# FPGA Accelerator Architectures

## Design Methodology

All five accelerators are implemented in C++ using **Xilinx Vitis HLS 2022.2** and synthesized for the **xc7z020clg400-1** (PYNQ Z2) at **100 MHz**. Each accelerator follows a common two-mode protocol:

- **Mode 0 (Load Parameters)**: Model parameters are streamed from PS to PL via AXI4-Stream / DMA. The IP reads and stores them in on-chip BRAM.
- **Mode 1 (Inference)**: Test feature vectors are streamed in; predictions are streamed out, one 32-bit word per sample.

### Common Design Elements

| Element | Implementation |
|---------|---------------|
| Fixed-point type | `ap_fixed<16,8>` (8 integer, 8 fractional bits) for features, weights, thresholds |
| Accumulator type | `ap_fixed<32,16>` for intermediate sums |
| Distance type | `ap_fixed<48,32>` for KNN squared distances |
| AXI-Stream | `ap_axiu<32,0,0,0>` — 32-bit data, fix16 packed in lower 16 bits |
| Control | AXI-Lite slave registers for mode, dimensions, and latency counter |
| Exp approximation | 256-entry piecewise-linear LUT over [−8, 0] for SVM RBF kernel |
| Max dimensions | 64 features, 10 classes, 1500 training samples |

---

## 1. KNN Accelerator (`knn_accel`)

### Algorithm
K-Nearest Neighbours with K=3, squared Euclidean distance, majority vote.

### Architecture

```
┌──────────────────────────────────────────────────┐
│                  knn_accel                        │
│                                                  │
│  ┌──────────────┐    ┌───────────────────────┐   │
│  │  AXI-Stream  │───▶│  Train Data Store     │   │
│  │  (in_stream) │    │  [64][1500] BRAM      │   │
│  │              │    │  Fully partitioned     │   │
│  │              │    │  on dim=1 (features)   │   │
│  └──────────────┘    └───────────┬───────────┘   │
│                                  │               │
│  ┌──────────────┐    ┌───────────▼───────────┐   │
│  │  Test Vector │───▶│  Distance Compute     │   │
│  │  (64 regs)   │    │  64 parallel sub+mul  │   │
│  │  partitioned │    │  + reduction tree      │   │
│  │  complete    │    │  → 1 distance/cycle    │   │
│  └──────────────┘    └───────────┬───────────┘   │
│                                  │               │
│                      ┌───────────▼───────────┐   │
│                      │  Top-3 Insertion Sort │   │
│                      │  3 compare-swaps      │   │
│                      │  (inlined)            │   │
│                      └───────────┬───────────┘   │
│                                  │               │
│                      ┌───────────▼───────────┐   │
│                      │  Majority Vote        │──▶│ out_stream
│                      │  3-way comparison     │   │
│                      └───────────────────────┘   │
└──────────────────────────────────────────────────┘
```

### Key HLS Pragmas
- `ARRAY_PARTITION variable=train_data complete dim=1` — all 64 features accessible in parallel
- `PIPELINE II=1` on distance loop — one training sample per clock cycle
- `UNROLL` on feature loop — 64 parallel multiply-accumulate operations
- `INLINE` on top-K insertion sort

### Latency Model
- Per sample: `num_train` cycles (one distance computation per cycle) + K overhead
- Total: `num_test × num_train` cycles
- Example: Iris (120 train, 30 test) → 3,600 cycles = **36.0 µs** @ 100 MHz

---

## 2. Decision Tree Accelerator (`dt_accel`)

### Algorithm
Binary decision tree traversal. Each node stores: feature index, threshold, left/right child pointers, and class label (for leaves).

### Architecture

```
┌──────────────────────────────────────────────┐
│                 dt_accel                      │
│                                              │
│  Node Storage (BRAM):                        │
│  ┌─────────────────────────────────────┐     │
│  │ node_feature[300]  (ap_int<8>)      │     │
│  │ node_threshold[300] (fix16_t)       │     │
│  │ node_left[300]     (ap_int<16>)     │     │
│  │ node_right[300]    (ap_int<16>)     │     │
│  │ node_class[300]    (ap_uint<8>)     │     │
│  └─────────────────────────────────────┘     │
│                                              │
│  ┌──────────┐    ┌──────────────────┐        │
│  │ Feature  │───▶│ Tree Traversal   │        │
│  │ Vector   │    │ 1 node per cycle │───▶ out│
│  │ (regs)   │    │ Pipeline II=1    │        │
│  └──────────┘    └──────────────────┘        │
└──────────────────────────────────────────────┘
```

### Key HLS Pragmas
- `ARRAY_PARTITION variable=test_feat complete`
- `PIPELINE II=1` on traversal loop — one tree node evaluated per cycle
- `PIPELINE II=5` on load loop (5 reads per node)

### Latency Model
- Per sample: tree depth cycles (typically 5–15)
- Total: `num_test × depth` cycles
- Example: Iris (depth ≈ 5, 30 test) → 73 cycles = **0.73 µs** @ 100 MHz

---

## 3. Random Forest Accelerator (`rf_accel`)

### Algorithm
Ensemble of 10 decision trees with majority voting.

### Architecture

```
┌──────────────────────────────────────────────────────┐
│                    rf_accel                           │
│                                                      │
│  ┌──────────┐   ┌────────┐ ┌────────┐   ┌────────┐  │
│  │ Feature  │──▶│ Tree 0 │ │ Tree 1 │...│ Tree 9 │  │
│  │ Vector   │   │  ║     │ │  ║     │   │  ║     │  │
│  └──────────┘   │  ▼     │ │  ▼     │   │  ▼     │  │
│                 │ Trav.  │ │ Trav.  │   │ Trav.  │  │
│                 │ II=1   │ │ II=1   │   │ II=1   │  │
│                 └───┬────┘ └───┬────┘   └───┬────┘  │
│                     │          │             │       │
│                     ▼          ▼             ▼       │
│                 ┌─────────────────────────────────┐  │
│                 │    Majority Vote (argmax)       │  │
│                 │    votes[] fully partitioned    │──▶ out
│                 └─────────────────────────────────┘  │
│                                                      │
│  ★ All 10 trees traverse IN PARALLEL (#pragma UNROLL)│
│  ★ Latency = max(tree depths), NOT sum              │
└──────────────────────────────────────────────────────┘
```

### Key HLS Pragmas
- `ARRAY_PARTITION variable=tree_feature complete dim=1` (all 10 trees in parallel)
- `UNROLL` on tree traversal loop — **10 trees execute simultaneously**
- `PIPELINE II=1` within each tree traversal
- `ARRAY_PARTITION complete` on vote arrays

### Latency Model
- Per sample: `max(depth of any tree)` cycles + vote overhead
- Total: `num_test × max_depth` cycles
- Example: Iris (10 trees, 30 test) → 30 cycles = **0.30 µs** @ 100 MHz
- **Primary FPGA advantage**: ESP32 must evaluate trees sequentially (10× slower)

---

## 4. SVM Accelerator (`svm_accel`)

### Algorithm
RBF-kernel SVM with One-vs-One (OvO) multi-class strategy. Binary classification for 2-class problems.

### Architecture

```
┌──────────────────────────────────────────────────────────┐
│                      svm_accel                           │
│                                                          │
│  ┌────────────────────────────────────────┐              │
│  │  SV Store [64][600] (transposed)       │              │
│  │  Fully partitioned dim=1 (features)    │              │
│  └──────────────┬─────────────────────────┘              │
│                 │                                        │
│  ┌──────────┐   │   ┌──────────────────────────┐        │
│  │ Feature  │───┼──▶│ Kernel Computation       │        │
│  │ Vector   │   │   │ Per SV (Pipeline II=1):  │        │
│  └──────────┘   │   │   d² = Σ(x_i - sv_i)²   │        │
│                 │   │   k = exp(-γ·d²)  [LUT]  │        │
│                 │   │   → kernel_cache[sv]      │        │
│                 │   └──────────┬───────────────┘        │
│                 │              │                         │
│                 │   ┌──────────▼───────────────┐        │
│                 │   │ OvO Decision Functions    │        │
│                 │   │ For each class pair (i,j):│        │
│                 │   │   f = Σ α·k + b          │        │
│                 │   │   vote[winner]++          │        │
│                 │   └──────────┬───────────────┘        │
│                 │              │                         │
│                 │   ┌──────────▼───────────────┐        │
│                 │   │ Argmax over votes        │───▶ out│
│                 │   └─────────────────────────┘        │
└──────────────────────────────────────────────────────────┘
```

### Key HLS Pragmas
- `ARRAY_PARTITION variable=sv_data complete dim=1` — all 64 features parallel
- `PIPELINE II=1` on kernel loop — one SV per cycle
- `UNROLL` on feature subtraction — 64 parallel operations
- `PIPELINE II=1` on decision function accumulation
- `ARRAY_PARTITION complete` on vote array

### Latency Model
- Per sample: `n_sv` cycles (kernel) + `n_ovo × n_sv_per_pair` cycles (decisions) + vote
- Total scales with number of support vectors and class pairs
- Example: Iris (27 SVs, 3 OvO, 30 test) → 2,430 cycles = **24.3 µs** @ 100 MHz

---

## 5. MLP Accelerator (`mlp_accel`)

### Algorithm
Feedforward neural network: Input → Hidden1 (ReLU) → Hidden2 (ReLU) → Output (argmax).

### Architecture

```
┌──────────────────────────────────────────────────────┐
│                    mlp_accel                          │
│                                                      │
│  Weight Storage:                                     │
│  W1[64][64], B1[64]  (Layer 1)                       │
│  W2[64][64], B2[64]  (Layer 2)                       │
│  Wo[10][64], Bo[10]  (Output)                        │
│  Cyclic partition factor=8 on dim=2                  │
│                                                      │
│  ┌─────────┐  ┌──────────┐  ┌──────────┐  ┌──────┐  │
│  │ Input   │─▶│ Layer 1  │─▶│ Layer 2  │─▶│Output│  │
│  │ Features│  │ Dot+ReLU │  │ Dot+ReLU │  │Argmax│─▶│ out
│  │ (64)    │  │ 8 MACs/  │  │ 8 MACs/  │  │      │  │
│  │         │  │ neuron   │  │ neuron   │  │      │  │
│  └─────────┘  └──────────┘  └──────────┘  └──────┘  │
│                                                      │
│  Pipeline II=1 on dot-product inner loops            │
│  8 parallel MACs via cyclic factor=8 partitioning    │
└──────────────────────────────────────────────────────┘
```

### Key HLS Pragmas
- `ARRAY_PARTITION variable=w1 cyclic factor=8 dim=2` (same for w2, wo) — **8 parallel multiply-accumulates**
- `ARRAY_PARTITION variable=b1 complete` (same for b2, bo)
- `PIPELINE II=1` on all dot-product loops
- `ARRAY_PARTITION complete` on output values for argmax

### Design Trade-off
The original design used `complete` partitioning (64 parallel MACs) but consumed 91% DSPs and 73% FFs, causing placement failure. The area-reduced design uses `cyclic factor=8` (8 parallel MACs), trading ~8× per-neuron latency for a viable resource footprint on the Z-7020.

### Latency Model
- Per neuron: `⌈dimension / 8⌉` cycles (pipelined dot product)
- Per sample: `h1 × ⌈n_feat/8⌉ + h2 × ⌈h1/8⌉ + n_class × ⌈h2/8⌉` cycles
- Example: Iris (4→8→8→3) → 570 cycles = **5.7 µs** @ 100 MHz

---

## HLS Synthesis Resource Utilization

All synthesized with Vitis HLS 2022.2, target: xc7z020clg400-1 @ 10 ns (100 MHz).

| Model | BRAM_18K | DSP48E1 | LUT | FF | Estimated Fmax |
|-------|----------|---------|------|------|----------------|
| **KNN** | 129 (46%) | 64 (29%) | 4,615 (8%) | 9,067 (8%) | ~110 MHz |
| **DT** | 5 (1%) | 0 (0%) | 1,725 (3%) | 1,528 (1%) | >200 MHz |
| **RF** | 50 (17%) | 0 (0%) | 3,749 (7%) | 6,974 (6%) | ~130 MHz |
| **SVM** | 75 (26%) | 78 (35%) | 8,233 (15%) | 11,844 (11%) | ~120 MHz |
| **MLP** | 27 (9%) | 12 (5%) | 5,626 (10%) | 6,231 (5%) | ~137 MHz |

### Resource Budget (xc7z020clg400-1 Total)

| Resource | Available | Most Used By | Peak Usage |
|----------|-----------|-------------|------------|
| BRAM_18K | 280 | KNN (46%) | 129 |
| DSP48E1 | 220 | SVM (35%) | 78 |
| LUT | 53,200 | SVM (15%) | 8,233 |
| FF | 106,400 | SVM (11%) | 11,844 |

All designs fit comfortably within the PYNQ Z2 resource envelope. SVM is the most resource-intensive due to transposed SV storage and parallel kernel computation.
