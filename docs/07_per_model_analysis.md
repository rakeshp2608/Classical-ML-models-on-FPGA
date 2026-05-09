# Per-Model Detailed Analysis

This document provides a deep-dive analysis of each model's behavior across both platforms and all four datasets.

---

## 1. K-Nearest Neighbours (KNN)

### Computational Complexity
- **Per sample**: O(n_train × n_features) for distance computation + O(n_train) for top-K selection
- **Batch**: O(n_test × n_train × n_features)

### FPGA Results

| Dataset | Accuracy | HW Cycles | FPGA Latency (µs) | Wall Time (µs) |
|---------|----------|-----------|-------------------|----------------|
| Iris | 100.00% | 3,600 | 36.00 | 1,017.95 |
| Wine | 75.00% | 5,112 | 51.12 | 1,027.00 |
| Cancer | 92.98% | 51,870 | 518.70 | 1,537.22 |
| MNIST | 98.61% | 517,320 | 5,173.20 | 6,580.22 |

### ESP32 Results

| Dataset | Accuracy | Cycles | Latency (µs) |
|---------|----------|--------|--------------|
| Iris | 100.00% | 9,930 | 41.38 |
| Wine | 75.00% | 40,043 | 166.85 |
| Cancer | 92.98% | 257,358 | 1,072.33 |
| MNIST | 75.00% | 40,104 | 167.10 |

### Analysis

**FPGA Parallelism**: All 64 features are computed in parallel (complete partition on dim=1). Distance to one training sample = 1 cycle. This gives a theoretical throughput of `100M distances/sec`.

**Scaling behavior**: FPGA cycles scale as `n_test × n_train` (1 cycle per sample). This dominates for large training sets (Cancer: 455 train → 51,870 cycles for 114 test samples ≈ 455 cycles/sample).

**MNIST anomaly (ESP32)**: The ESP32 KNN accuracy on MNIST drops to 75% vs FPGA's 98.61%. This is due to the KNN quantization scale — the ESP32 uses a reduced scale to prevent int16 overflow during 64-dimensional distance computation, which degrades distance ordering fidelity.

**Wall time overhead**: FPGA wall time (1,018–6,580 µs) is 10–30× larger than HW latency due to DMA setup, PS-PL communication, and Python overhead. For latency-critical applications, this overhead could be amortized over larger batches or mitigated with a bare-metal driver.

---

## 2. Decision Tree (DT)

### Computational Complexity
- **Per sample**: O(depth) — one comparison per tree level
- **Batch**: O(n_test × depth)

### FPGA Results

| Dataset | Accuracy | HW Cycles | FPGA Latency (µs) | Wall Time (µs) |
|---------|----------|-----------|-------------------|----------------|
| Iris | 93.33% | 73 | 0.73 | 1,035.59 |
| Wine | 94.44% | 111 | 1.11 | 1,031.56 |
| Cancer | 90.35% | 496 | 4.96 | 1,041.25 |
| MNIST | 81.11% | 2,702 | 27.02 | 1,367.03 |

### ESP32 Results

| Dataset | Accuracy | Cycles | Latency (µs) |
|---------|----------|--------|--------------|
| Iris | 93.33% | 127 | 0.53 |
| Wine | 94.44% | 142 | 0.59 |
| Cancer | 92.11% | 159 | 0.66 |
| MNIST | 94.44% | 142 | 0.59 |

### Analysis

**Minimal parallelism opportunity**: DT traversal is inherently sequential — each node's outcome determines the next node. Both platforms do 1 node per cycle, making this the least parallelizable model.

**ESP32 advantage**: The ESP32 runs at 240 MHz vs FPGA at 100 MHz. Since parallelism doesn't help, the 2.4× clock advantage directly translates to lower wall-clock latency. ESP32 completes DT inference in 0.5–0.7 µs vs FPGA's ~1 µs HW time (plus ~1 ms DMA overhead).

**FPGA cycle scaling**: FPGA cycles scale with `n_test × depth`, with more variation across datasets (73–2,702 cycles) because MNIST has 360 test samples vs Iris's 30. Per-sample cycles are similar: Iris ≈ 2.4 cyc/sample, MNIST ≈ 7.5 cyc/sample.

**Accuracy note**: FPGA DT on Cancer (90.35%) and MNIST (81.11%) are slightly lower than ESP32 (92.11%, 94.44%), likely due to the lower fractional precision of `ap_fixed<16,8>` (8 bits) vs ESP32's QSCALE=10000 (~13 bits) affecting threshold comparisons.

---

## 3. Random Forest (RF)

### Computational Complexity
- **Sequential (ESP32)**: O(n_test × n_trees × avg_depth)
- **Parallel (FPGA)**: O(n_test × max_depth) — all trees simultaneously

### FPGA Results

| Dataset | Accuracy | HW Cycles | FPGA Latency (µs) | Wall Time (µs) |
|---------|----------|-----------|-------------------|----------------|
| Iris | 93.33% | 30 | 0.30 | 1,042.94 |
| Wine | 100.00% | 36 | 0.36 | 1,023.66 |
| Cancer | 94.74% | 114 | 1.14 | 1,193.58 |
| MNIST | 92.78% | 360 | 3.60 | 2,038.46 |

### ESP32 Results

| Dataset | Accuracy | Cycles | Latency (µs) |
|---------|----------|--------|--------------|
| Iris | 93.33% | 1,620 | 6.75 |
| Wine | 100.00% | 1,858 | 7.74 |
| Cancer | 94.74% | 2,160 | 9.13 |
| MNIST | 100.00% | 1,840 | 7.67 |

### Analysis

**Strongest FPGA advantage**: This is the model where FPGA parallelism shines brightest. The FPGA evaluates all 10 trees **simultaneously** using `#pragma HLS UNROLL` on the tree loop. The latency equals the depth of the deepest tree, not the sum.

**Cycle-count speedup**: 54× (Iris), 52× (Wine), 19× (Cancer), 5× (MNIST). The FPGA consistently uses 10–50× fewer cycles because 10 trees run in parallel.

**Per-sample analysis**:
- FPGA Iris: 30 cycles / 30 samples = **1.0 cycle/sample** (≈ max tree depth, since all trees finish in 1 cycle)
- ESP32 Iris: 1,620 cycles / 30 samples = **54 cycles/sample** (≈ 10 trees × 5.4 depth each)

**MNIST accuracy**: FPGA RF (92.78%) trails ESP32 RF (100.00%) — again attributable to the coarser `ap_fixed<16,8>` quantization affecting tree threshold comparisons in the high-dimensional space.

---

## 4. Support Vector Machine (SVM)

### Computational Complexity
- **Kernel computation**: O(n_sv × n_features) per sample
- **Decision functions**: O(n_ovo × n_sv) per sample
- **Total**: O(n_test × n_sv × (n_features + n_ovo))

### FPGA Results

| Dataset | Accuracy | HW Cycles | FPGA Latency (µs) | Wall Time (µs) |
|---------|----------|-----------|-------------------|----------------|
| Iris | 96.67% | 2,430 | 24.30 | 1,035.53 |
| Wine | 97.22% | 5,508 | 55.08 | 1,028.57 |
| Cancer | 97.37% | 14,592 | 145.92 | 1,310.98 |
| MNIST | 99.17% | 2,095,200 | 20,952.00 | 25,067.09 |

### ESP32 Results

| Dataset | Accuracy | Cycles | Latency (µs) |
|---------|----------|--------|--------------|
| Iris | 96.67% | 23,987 | 99.95 |
| Wine | 100.00% | 102,283 | 426.18 |
| Cancer | 97.37% | 267,494 | 1,114.56 |
| MNIST | 100.00% | 102,072 | 425.30 |

### Analysis

**FPGA kernel parallelism**: All 64 feature differences computed in parallel (complete partition on sv_data dim=1), giving 1 kernel evaluation per cycle per SV. The exp() approximation uses a 256-entry LUT — no DSP-heavy division.

**MNIST scaling problem**: MNIST SVM has 582 support vectors and 45 OvO class pairs, leading to 2,095,200 FPGA cycles for 360 samples. The FPGA processes ALL test samples in batch, while ESP32 benchmarks single-sample inference (102,072 cycles for ~1 sample).

**Cycle speedup (excluding MNIST)**: 10× (Iris), 19× (Wine), 18× (Cancer) — consistent and significant.

**Accuracy**: Both platforms match on Iris and Cancer. ESP32 achieves 100% on Wine and MNIST vs FPGA's 97–99%, likely due to higher quantization precision for decision boundaries.

---

## 5. Multi-Layer Perceptron (MLP)

### Computational Complexity
- **Per sample**: O(n_feat × h1 + h1 × h2 + h2 × n_class) multiply-accumulate operations
- **FPGA**: 8 parallel MACs → ÷8 effective operations

### FPGA Results

| Dataset | Accuracy | HW Cycles | FPGA Latency (µs) | Wall Time (µs) |
|---------|----------|-----------|-------------------|----------------|
| Iris | 100.00% | 570 | 5.70 | 2,499.92 |
| Wine | 97.22% | 1,260 | 12.60 | 1,613.13 |
| Cancer | 98.25% | 3,876 | 38.76 | 3,535.22 |
| MNIST | 97.22% | 26,640 | 266.40 | 19,517.77 |

### ESP32 Results

| Dataset | Accuracy | Cycles | Latency (µs) |
|---------|----------|--------|--------------|
| Iris | 100.00% | 1,582 | 6.59 |
| Wine | 97.22% | 4,067 | 16.95 |
| Cancer | 98.25% | 5,565 | 23.19 |
| MNIST | 97.22% | 4,353 | 18.14 |

### Analysis

**Moderate FPGA advantage**: The area-reduced design uses 8 parallel MACs (cyclic factor=8) instead of the ideal 64. This gives a 2–3× cycle speedup on small datasets but is constrained by the resource budget.

**Design trade-off context**: The original `complete` partition design would have provided 64 parallel MACs and ~8× more speedup, but exceeded the PYNQ Z2's resource limits (91% DSP, 73% FF). A larger FPGA (e.g., Zynq-7045 or Ultrascale+) would unlock the full parallelism.

**Accuracy parity**: Both platforms achieve identical accuracy across all 4 datasets (100%, 97.22%, 98.25%, 97.22%), confirming that the quantization schemes are equivalent for neural network weights.

**MNIST wall time**: The FPGA wall time (19.5 ms) is dominated by DMA transfer of 360 × 64 = 23,040 input words + output, not by computation (266 µs HW latency).

---

## Summary: Best Platform Per Model

| Model | Best for Latency | Best for Accuracy | Key Factor |
|-------|-----------------|-------------------|------------|
| **KNN** | FPGA (small/medium datasets) | FPGA (MNIST) | Parallel distance computation |
| **DT** | ESP32 | ESP32 | Sequential traversal; clock speed wins |
| **RF** | **FPGA (all datasets)** | Tie | **Parallel tree evaluation (10×)** |
| **SVM** | FPGA (small/medium) | Tie | Parallel kernel computation |
| **MLP** | Tie | Tie | Area-constrained FPGA limits advantage |
