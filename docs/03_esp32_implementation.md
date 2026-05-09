# ESP32 Implementation Details

## Platform

- **MCU**: ESP32-WROOM-32 (Dual-core Xtensa LX6 @ 240 MHz)
- **Flash**: 4 MB (model parameters stored in `PROGMEM`)
- **SRAM**: 520 KB (runtime buffers, stack)
- **IDE**: Arduino framework
- **Precision**: 16-bit fixed-point (QSCALE = 10,000 for DT/RF/SVM/MLP; variable for KNN)

## Design Approach

All models are implemented in header-based C/C++ with:
- **Fixed-point arithmetic**: Integer multiply/shift operations avoid floating-point overhead
- **PROGMEM storage**: Model weights and parameters stored in flash to conserve SRAM
- **IRAM_ATTR**: Critical inference functions placed in instruction RAM for faster execution
- **Cycle-accurate timing**: ESP32 hardware cycle counter (`ccount` register via inline assembly)
- **Identical parameters**: Same trained models exported from Python, quantized to int16

## Timing Methodology

```c
unsigned long t0, t1;
__asm__ __volatile__("rsr %0, ccount" : "=a"(t0));
// ... inference ...
__asm__ __volatile__("rsr %0, ccount" : "=a"(t1));
unsigned long cycles = t1 - t0;
float latency_us = (float)cycles / ESP.getCpuFreqMHz();
```

Each model is benchmarked over **200 iterations** (100 for MNIST) per dataset, reporting min/avg/max latency.

## Model Implementations

### 1. KNN

- **Algorithm**: Brute-force K=3 with squared Euclidean distance, majority vote
- **Quantization scale**: Dataset-specific (Iris: 100, Wine: 21, Cancer: 9, MNIST: 2000) to avoid int16 overflow
- **Execution**: Sequential distance computation for each training sample
- **Bottleneck**: Scales linearly with `n_train × n_features` — worst on Cancer (455 train × 30 features)

### 2. Decision Tree

- **Algorithm**: Binary tree traversal with pre-quantized thresholds
- **Storage**: Node arrays (feature index, threshold, left/right child, class) in flash
- **Execution**: Sequential node-by-node traversal from root to leaf
- **Latency**: Proportional to tree depth only — very fast (~0.5 µs)

### 3. Random Forest

- **Algorithm**: 10 decision trees evaluated **sequentially**, majority vote
- **Execution**: Each tree traversed one after another — total latency = sum of all tree depths
- **Contrast with FPGA**: No parallelism; ESP32 evaluates tree 0, then tree 1, ..., then tree 9

### 4. SVM

- **Algorithm**: RBF-kernel SVM with One-vs-One multi-class voting
- **Execution**: Sequential kernel computation for each support vector, then OvO decision functions
- **Bottleneck**: Scales with `n_sv × n_features` for kernel + `n_ovo × n_sv` for decisions
- **Preprocessing**: MinMaxScaler-normalized inputs (same as FPGA SVM)

### 5. MLP

- **Algorithm**: Feedforward network (Input → Hidden1 → Hidden2 → Output) with ReLU activation
- **Execution**: Matrix-vector multiplications computed sequentially (neuron by neuron, feature by feature)
- **Storage**: Weight matrices in flash, activations in SRAM
- **Preprocessing**: MinMaxScaler-normalized inputs

## Model Architecture Summary

| Model | Iris | Wine | Cancer | MNIST |
|-------|------|------|--------|-------|
| **KNN** | K=3, 120 train | K=3, 142 train | K=3, 455 train | K=3, 1,437 train |
| **DT** | 15 nodes, depth ≤ 5 | 15 nodes, depth ≤ 5 | 29 nodes, depth ≤ 5 | 245 nodes |
| **RF** | 10 trees, 128 nodes | 10 trees, 152 nodes | 10 trees, 272 nodes | 10 trees, 2,232 nodes |
| **SVM** | 27 SVs, 3 OvO | 51 SVs, 3 OvO | 64 SVs, 1 binary | 582 SVs, 45 OvO |
| **MLP** | 4→8→8→3 | 13→16→16→3 | 30→16→16→2 | 64→32→32→10 |

## Model Parameter Storage (Flash)

| Model | Iris | Wine | Cancer | MNIST |
|-------|------|------|--------|-------|
| **KNN** | 3.9 KB | 10.0 KB | 55.9 KB | 467.9 KB |
| **DT** | 0.8 KB | 0.7 KB | 1.0 KB | 5.6 KB |
| **RF** | 3.3 KB | 3.8 KB | 6.3 KB | 49.9 KB |
| **SVM** | 3.0 KB | 6.9 KB | 13.5 KB | 272.7 KB |
| **MLP** | 2.8 KB | 8.4 KB | 12.0 KB | 48.2 KB |

## ESP32 Benchmark Results

### Accuracy (%)

| Model | Iris | Wine | Cancer | MNIST |
|-------|------|------|--------|-------|
| **KNN** | 100.00 | 75.00 | 92.98 | 75.00 |
| **DT** | 93.33 | 94.44 | 92.11 | 94.44 |
| **RF** | 93.33 | 100.00 | 94.74 | 100.00 |
| **SVM** | 96.67 | 100.00 | 97.37 | 100.00 |
| **MLP** | 100.00 | 97.22 | 98.25 | 97.22 |

### Latency (µs per batch)

| Model | Iris | Wine | Cancer | MNIST |
|-------|------|------|--------|-------|
| **KNN** | 41.38 | 166.85 | 1,072.33 | 167.10 |
| **DT** | 0.53 | 0.59 | 0.66 | 0.59 |
| **RF** | 6.75 | 7.74 | 9.13 | 7.67 |
| **SVM** | 99.95 | 426.18 | 1,114.56 | 425.30 |
| **MLP** | 6.59 | 16.95 | 23.19 | 18.14 |

### Clock Cycles

| Model | Iris | Wine | Cancer | MNIST |
|-------|------|------|--------|-------|
| **KNN** | 9,930 | 40,043 | 257,358 | 40,104 |
| **DT** | 127 | 142 | 159 | 142 |
| **RF** | 1,620 | 1,858 | 2,160 | 1,840 |
| **SVM** | 23,987 | 102,283 | 267,494 | 102,072 |
| **MLP** | 1,582 | 4,067 | 5,565 | 4,353 |

## Key Limitations vs. FPGA

1. **Sequential execution**: All operations are sequential — no parallel tree evaluation, no parallel feature distance computation
2. **Clock speed ceiling**: 240 MHz is fixed; FPGA can pipeline at 100 MHz but with massive parallelism
3. **Memory bandwidth**: Single-port memory access vs. FPGA's multi-port BRAM
4. **No hardware customization**: Same ALU for all operations; FPGA instantiates model-specific datapaths
