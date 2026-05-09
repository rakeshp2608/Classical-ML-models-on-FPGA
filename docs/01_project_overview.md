# Project Overview

## Title

**Implementation and Comparative Analysis of Machine Learning Models on FPGA and IoT Edge Devices**

## Author

- **Name**: Musham Varun (2210110406)
- **Program**: B.Tech, Spring 2026
- **Supervisor**: Dr. Rakesh Palisetty, Dept. of Electrical Engineering, Shiv Nadar University

## Objective

Design, implement, and comparatively analyze five classical machine learning models — K-Nearest Neighbours (KNN), Decision Tree (DT), Random Forest (RF), Support Vector Machine (SVM), and Multi-Layer Perceptron (MLP) — on two edge computing platforms:

1. **FPGA** (PYNQ Z2 — Xilinx Zynq-7020) — custom hardware accelerators via High-Level Synthesis (HLS), exploiting parallelism and pipelining.
2. **Microcontroller** (ESP32) — optimized C/C++ with fixed-point arithmetic and compact parameter storage.

Both platforms are benchmarked on four standard datasets using identical trained model parameters to ensure a fair comparison.

## Evaluation Metrics

| Metric | Description |
|--------|-------------|
| **Inference Accuracy** | Percentage of correct predictions on the test set |
| **Hardware Latency** | Clock cycles consumed by the accelerator / CPU for inference |
| **Wall-Clock Latency** | End-to-end time including DMA / memory overhead (µs) |
| **Resource Utilization** | FPGA: LUT, FF, DSP, BRAM; ESP32: Flash, SRAM |
| **Throughput** | Inferences per second |
| **Energy Efficiency** | Qualitative comparison based on platform power characteristics |

## Datasets

| Dataset | Features | Classes | Training Samples | Test Samples | Domain |
|---------|----------|---------|-----------------|--------------|--------|
| **Iris** | 4 | 3 | 120 | 30 | Botany (flower classification) |
| **Wine** | 13 | 3 | 142 | 36 | Chemistry (wine cultivar ID) |
| **Cancer** | 30 | 2 | 455 | 114 | Medicine (malignant vs benign) |
| **MNIST** (8×8) | 64 | 10 | 1,437 | 360 | Vision (handwritten digit recognition) |

Datasets span a range of dimensionalities (4–64 features), class counts (2–10), and training set sizes (120–1,437) to exercise different computational bottlenecks in each model.

## Platforms

### PYNQ Z2 (FPGA)

| Specification | Value |
|---------------|-------|
| FPGA Part | xc7z020clg400-1 (Zynq-7020) |
| Logic Cells | 85,000 |
| LUTs | 53,200 |
| Flip-Flops | 106,400 |
| DSP Slices | 220 |
| Block RAM | 140 (4.9 MB total) |
| PL Clock | 100 MHz |
| PS Processor | Dual-core ARM Cortex-A9 @ 650 MHz |
| DDR | 512 MB DDR3 |
| Power | ~2–3 W typical (PS + PL) |

### ESP32

| Specification | Value |
|---------------|-------|
| Processor | Dual-core Xtensa LX6 @ 240 MHz |
| Flash | 4 MB |
| SRAM | 520 KB |
| Clock Speed | 240 MHz |
| Power | ~0.16–0.26 W typical |

## Workflow

```
┌─────────────────────────────────────┐
│  Python (scikit-learn)              │
│  Train models → Export .npz params  │
└──────────┬──────────────────────────┘
           │
     ┌─────┴─────┐
     ▼           ▼
┌─────────┐  ┌──────────┐
│  FPGA   │  │  ESP32   │
│  Path   │  │  Path    │
└────┬────┘  └────┬─────┘
     │            │
     ▼            ▼
  Vitis HLS    C/C++ with
  → Vivado     fixed-point
  → Bitstream  arithmetic
     │            │
     ▼            ▼
  PYNQ Z2     ESP32 board
  DMA-based    Serial output
  inference    benchmarks
     │            │
     └────┬───────┘
          ▼
   Comparative Analysis
```

## Key Contributions

1. **Unified benchmark framework**: Same trained parameters, same test vectors, same accuracy evaluation — only the inference engine differs.
2. **Five diverse ML models**: Covers distance-based (KNN), tree-based (DT, RF), kernel-based (SVM), and neural network (MLP) paradigms.
3. **Hardware-optimized FPGA designs**: Each accelerator exploits model-specific parallelism (parallel feature computation, parallel tree traversal, pipelined dot products).
4. **Quantitative FPGA vs. MCU comparison**: Provides concrete latency, throughput, and resource data for practitioners choosing between platforms.
