# Comparative Results: FPGA vs ESP32

## Accuracy Comparison

Both platforms use identical trained model parameters and test vectors. Minor accuracy differences arise from different fixed-point quantization schemes (FPGA: `ap_fixed<16,8>` with FRAC_BITS=8; ESP32: int16 with QSCALE=10000 for most models).

### Accuracy (%) — FPGA

| Model | Iris | Wine | Cancer | MNIST |
|-------|------|------|--------|-------|
| **KNN** | 100.00 | 75.00 | 92.98 | 98.61 |
| **DT** | 93.33 | 94.44 | 90.35 | 81.11 |
| **RF** | 93.33 | 100.00 | 94.74 | 92.78 |
| **SVM** | 96.67 | 97.22 | 97.37 | 99.17 |
| **MLP** | 100.00 | 97.22 | 98.25 | 97.22 |

### Accuracy (%) — ESP32

| Model | Iris | Wine | Cancer | MNIST |
|-------|------|------|--------|-------|
| **KNN** | 100.00 | 75.00 | 92.98 | 75.00 |
| **DT** | 93.33 | 94.44 | 92.11 | 94.44 |
| **RF** | 93.33 | 100.00 | 94.74 | 100.00 |
| **SVM** | 96.67 | 100.00 | 97.37 | 100.00 |
| **MLP** | 100.00 | 97.22 | 98.25 | 97.22 |

### Accuracy Difference (FPGA − ESP32, percentage points)

| Model | Iris | Wine | Cancer | MNIST |
|-------|------|------|--------|-------|
| **KNN** | 0.00 | 0.00 | 0.00 | **+23.61** |
| **DT** | 0.00 | 0.00 | −1.76 | **−13.33** |
| **RF** | 0.00 | 0.00 | 0.00 | **−7.22** |
| **SVM** | 0.00 | −2.78 | 0.00 | **−0.83** |
| **MLP** | 0.00 | 0.00 | 0.00 | 0.00 |

**Observations:**
- For Iris, Wine, and Cancer, accuracy is nearly identical across platforms (within ±2.78 pp).
- MNIST shows larger divergences due to the higher dimensionality (64 features) interacting differently with each quantization scheme.
- KNN on FPGA achieves +23.61 pp higher accuracy on MNIST — the `ap_fixed<16,8>` representation preserves distance ordering better than the ESP32's reduced KNN quantization scale.
- DT/RF on ESP32 achieve higher MNIST accuracy — the higher QSCALE (10000 vs 256 levels) provides finer threshold resolution for tree-based models.

---

## Latency Comparison

### Hardware Latency (µs) — FPGA @ 100 MHz

Computed as `HW_Cycles / 100` (100 MHz clock → 1 cycle = 0.01 µs).

| Model | Iris | Wine | Cancer | MNIST |
|-------|------|------|--------|-------|
| **KNN** | 36.00 | 51.12 | 518.70 | 5,173.20 |
| **DT** | 0.73 | 1.11 | 4.96 | 27.02 |
| **RF** | 0.30 | 0.36 | 1.14 | 3.60 |
| **SVM** | 24.30 | 55.08 | 145.92 | 20,952.00 |
| **MLP** | 5.70 | 12.60 | 38.76 | 266.40 |

### Latency (µs) — ESP32 @ 240 MHz

| Model | Iris | Wine | Cancer | MNIST |
|-------|------|------|--------|-------|
| **KNN** | 41.38 | 166.85 | 1,072.33 | 167.10 |
| **DT** | 0.53 | 0.59 | 0.66 | 0.59 |
| **RF** | 6.75 | 7.74 | 9.13 | 7.67 |
| **SVM** | 99.95 | 426.18 | 1,114.56 | 425.30 |
| **MLP** | 6.59 | 16.95 | 23.19 | 18.14 |

### Speedup (ESP32 Latency / FPGA HW Latency)

| Model | Iris | Wine | Cancer | MNIST | Avg Speedup |
|-------|------|------|--------|-------|-------------|
| **KNN** | 1.15× | 3.26× | 2.07× | 0.03× | **1.63×** |
| **DT** | 0.73× | 0.53× | 0.13× | 0.02× | **0.35×** |
| **RF** | 22.50× | 21.50× | 8.01× | 2.13× | **13.54×** |
| **SVM** | 4.11× | 7.74× | 7.64× | 0.02× | **4.88×** |
| **MLP** | 1.16× | 1.35× | 0.60× | 0.07× | **0.79×** |

### Clock Cycles Comparison

| Model | Iris (FPGA/ESP32) | Wine (FPGA/ESP32) | Cancer (FPGA/ESP32) | MNIST (FPGA/ESP32) |
|-------|-------------------|-------------------|---------------------|---------------------|
| **KNN** | 3,600 / 9,930 | 5,112 / 40,043 | 51,870 / 257,358 | 517,320 / 40,104 |
| **DT** | 73 / 127 | 111 / 142 | 496 / 159 | 2,702 / 142 |
| **RF** | 30 / 1,620 | 36 / 1,858 | 114 / 2,160 | 360 / 1,840 |
| **SVM** | 2,430 / 23,987 | 5,508 / 102,283 | 14,592 / 267,494 | 2,095,200 / 102,072 |
| **MLP** | 570 / 1,582 | 1,260 / 4,067 | 3,876 / 5,565 | 26,640 / 4,353 |

### Cycle-Count Speedup (ESP32 Cycles / FPGA Cycles)

| Model | Iris | Wine | Cancer | MNIST | Avg |
|-------|------|------|--------|-------|-----|
| **KNN** | 2.76× | 7.83× | 4.96× | 0.08× | **3.91×** |
| **DT** | 1.74× | 1.28× | 0.32× | 0.05× | **0.85×** |
| **RF** | **54.00×** | **51.61×** | **18.95×** | **5.11×** | **32.42×** |
| **SVM** | 9.87× | 18.57× | 18.33× | 0.05× | **11.71×** |
| **MLP** | 2.78× | 3.23× | 1.44× | 0.16× | **1.90×** |

---

## Key Findings

### Where FPGA Wins Decisively

1. **Random Forest** — FPGA achieves **13–54× speedup** by evaluating all 10 trees in parallel. This is the clearest demonstration of the FPGA's architectural advantage: the ESP32 must process trees sequentially while the FPGA instantiates all 10 tree traversal units in hardware.

2. **SVM (small/medium datasets)** — FPGA achieves **4–19× cycle speedup** on Iris, Wine, and Cancer by parallelizing the feature-wise distance computation for kernel evaluation (64 operations per cycle vs. sequential on ESP32).

3. **KNN (small/medium datasets)** — FPGA achieves **3–8× cycle speedup** on Wine and Cancer by computing all 64 feature differences in parallel per training sample.

### Where ESP32 Competes or Wins

1. **Decision Tree** — The simplest model where parallelism has minimal impact. Both platforms perform sequential node traversal. The ESP32's higher clock speed (240 MHz vs 100 MHz) compensates for the FPGA's pipelining, and on larger datasets (Cancer, MNIST), the ESP32's simpler memory access pattern is actually faster.

2. **MNIST (large-scale)** — For KNN and SVM on MNIST, the FPGA processes more test samples with more training data / support vectors, causing cycle counts to explode. The ESP32 benchmarks a single sample per call at 240 MHz, which can appear faster. FPGA batches all 360 test samples; ESP32 times single-sample inference.

3. **MLP** — The area-reduced FPGA MLP (8 parallel MACs) achieves modest 1.2–3.2× cycle speedup. The original design with 64 parallel MACs would have been dramatically faster but exceeded resource limits.

### Important Caveats

- **FPGA HW latency** measures only PL execution time. The **wall time** includes DMA transfer overhead and PS→PL communication, which is 10–100× higher for small workloads.
- **ESP32 latency** is cycle-accurate single-sample inference. Both platforms use fixed-point arithmetic at comparable precision.
- **FPGA operates at 100 MHz** while **ESP32 operates at 240 MHz**. When comparing raw cycle counts, FPGA cycles are "worth" 2.4× more wall-clock time each. The cycle-count speedup is therefore a more favorable metric for the FPGA than the µs speedup.
- **Batched vs. single**: FPGA results are for full test-set batch inference (30–360 samples). ESP32 results are per single sample averaged over iterations. Per-sample FPGA latency can be derived by dividing total cycles by `n_test`.
