# Tables and Figures for Thesis

This document contains pre-formatted tables and data ready to be adapted into LaTeX for the final thesis report.

---

## Table 1: Dataset Characteristics

| Dataset | Features | Classes | Training Samples | Test Samples | Domain |
|---------|----------|---------|-----------------|--------------|--------|
| Iris | 4 | 3 | 120 | 30 | Flower classification |
| Wine | 13 | 3 | 142 | 36 | Wine cultivar identification |
| Breast Cancer | 30 | 2 | 455 | 114 | Tumor classification |
| MNIST (8×8) | 64 | 10 | 1,437 | 360 | Digit recognition |

---

## Table 2: FPGA Resource Utilization (Post-HLS Synthesis)

| Accelerator | BRAM_18K | DSP48E1 | LUT | FF |
|-------------|----------|---------|-------|--------|
| KNN | 129 (46%) | 64 (29%) | 4,615 (8%) | 9,067 (8%) |
| DT | 5 (1%) | 0 (0%) | 1,725 (3%) | 1,528 (1%) |
| RF | 50 (17%) | 0 (0%) | 3,749 (7%) | 6,974 (6%) |
| SVM | 75 (26%) | 78 (35%) | 8,233 (15%) | 11,844 (11%) |
| MLP | 27 (9%) | 12 (5%) | 5,626 (10%) | 6,231 (5%) |
| **Available** | **280** | **220** | **53,200** | **106,400** |

---

## Table 3: FPGA Inference Results

| Model | Dataset | Accuracy (%) | HW Cycles | HW Latency (µs) | Wall Time (µs) |
|-------|---------|-------------|-----------|-----------------|----------------|
| KNN | Iris | 100.00 | 3,600 | 36.00 | 1,017.95 |
| KNN | Wine | 75.00 | 5,112 | 51.12 | 1,027.00 |
| KNN | Cancer | 92.98 | 51,870 | 518.70 | 1,537.22 |
| KNN | MNIST | 98.61 | 517,320 | 5,173.20 | 6,580.22 |
| DT | Iris | 93.33 | 73 | 0.73 | 1,035.59 |
| DT | Wine | 94.44 | 111 | 1.11 | 1,031.56 |
| DT | Cancer | 90.35 | 496 | 4.96 | 1,041.25 |
| DT | MNIST | 81.11 | 2,702 | 27.02 | 1,367.03 |
| RF | Iris | 93.33 | 30 | 0.30 | 1,042.94 |
| RF | Wine | 100.00 | 36 | 0.36 | 1,023.66 |
| RF | Cancer | 94.74 | 114 | 1.14 | 1,193.58 |
| RF | MNIST | 92.78 | 360 | 3.60 | 2,038.46 |
| SVM | Iris | 96.67 | 2,430 | 24.30 | 1,035.53 |
| SVM | Wine | 97.22 | 5,508 | 55.08 | 1,028.57 |
| SVM | Cancer | 97.37 | 14,592 | 145.92 | 1,310.98 |
| SVM | MNIST | 99.17 | 2,095,200 | 20,952.00 | 25,067.09 |
| MLP | Iris | 100.00 | 570 | 5.70 | 2,499.92 |
| MLP | Wine | 97.22 | 1,260 | 12.60 | 1,613.13 |
| MLP | Cancer | 98.25 | 3,876 | 38.76 | 3,535.22 |
| MLP | MNIST | 97.22 | 26,640 | 266.40 | 19,517.77 |

---

## Table 4: ESP32 Inference Results

| Model | Dataset | Accuracy (%) | Cycles | Latency (µs) |
|-------|---------|-------------|--------|--------------|
| KNN | Iris | 100.00 | 9,930 | 41.38 |
| KNN | Wine | 75.00 | 40,043 | 166.85 |
| KNN | Cancer | 92.98 | 257,358 | 1,072.33 |
| KNN | MNIST | 75.00 | 40,104 | 167.10 |
| DT | Iris | 93.33 | 127 | 0.53 |
| DT | Wine | 94.44 | 142 | 0.59 |
| DT | Cancer | 92.11 | 159 | 0.66 |
| DT | MNIST | 94.44 | 142 | 0.59 |
| RF | Iris | 93.33 | 1,620 | 6.75 |
| RF | Wine | 100.00 | 1,858 | 7.74 |
| RF | Cancer | 94.74 | 2,160 | 9.13 |
| RF | MNIST | 100.00 | 1,840 | 7.67 |
| SVM | Iris | 96.67 | 23,987 | 99.95 |
| SVM | Wine | 100.00 | 102,283 | 426.18 |
| SVM | Cancer | 97.37 | 267,494 | 1,114.56 |
| SVM | MNIST | 100.00 | 102,072 | 425.30 |
| MLP | Iris | 100.00 | 1,582 | 6.59 |
| MLP | Wine | 97.22 | 4,067 | 16.95 |
| MLP | Cancer | 98.25 | 5,565 | 23.19 |
| MLP | MNIST | 97.22 | 4,353 | 18.14 |

---

## Table 5: Clock Cycle Speedup (ESP32 Cycles / FPGA Cycles)

| Model | Iris | Wine | Cancer | MNIST |
|-------|------|------|--------|-------|
| KNN | 2.76× | 7.83× | 4.96× | 0.08× |
| DT | 1.74× | 1.28× | 0.32× | 0.05× |
| **RF** | **54.00×** | **51.61×** | **18.95×** | **5.11×** |
| SVM | 9.87× | 18.57× | 18.33× | 0.05× |
| MLP | 2.78× | 3.23× | 1.44× | 0.16× |

---

## Table 6: Accuracy Comparison (FPGA vs ESP32)

| Model | Dataset | FPGA (%) | ESP32 (%) | Δ (pp) |
|-------|---------|----------|-----------|--------|
| KNN | Iris | 100.00 | 100.00 | 0.00 |
| KNN | Wine | 75.00 | 75.00 | 0.00 |
| KNN | Cancer | 92.98 | 92.98 | 0.00 |
| KNN | MNIST | 98.61 | 75.00 | +23.61 |
| DT | Iris | 93.33 | 93.33 | 0.00 |
| DT | Wine | 94.44 | 94.44 | 0.00 |
| DT | Cancer | 90.35 | 92.11 | −1.76 |
| DT | MNIST | 81.11 | 94.44 | −13.33 |
| RF | Iris | 93.33 | 93.33 | 0.00 |
| RF | Wine | 100.00 | 100.00 | 0.00 |
| RF | Cancer | 94.74 | 94.74 | 0.00 |
| RF | MNIST | 92.78 | 100.00 | −7.22 |
| SVM | Iris | 96.67 | 96.67 | 0.00 |
| SVM | Wine | 97.22 | 100.00 | −2.78 |
| SVM | Cancer | 97.37 | 97.37 | 0.00 |
| SVM | MNIST | 99.17 | 100.00 | −0.83 |
| MLP | Iris | 100.00 | 100.00 | 0.00 |
| MLP | Wine | 97.22 | 97.22 | 0.00 |
| MLP | Cancer | 98.25 | 98.25 | 0.00 |
| MLP | MNIST | 97.22 | 97.22 | 0.00 |

---

## Table 7: Platform Specifications

| Specification | PYNQ Z2 (FPGA) | ESP32 |
|---------------|----------------|-------|
| Architecture | Zynq-7020 (ARM + FPGA fabric) | Xtensa LX6 (dual-core MCU) |
| Clock Speed | 100 MHz (PL) / 650 MHz (PS) | 240 MHz |
| Compute Units | Custom per model (DSPs, LUTs) | 2 general-purpose cores |
| On-chip Memory | 4.9 MB BRAM (630 KB usable) | 520 KB SRAM |
| External Memory | 512 MB DDR3 | 4 MB Flash |
| Power (typical) | 2–3 W | 0.16–0.26 W |
| Development | Vitis HLS + Vivado + PYNQ | Arduino IDE |
| Parallelism | Hardware-level (spatial) | Instruction-level only |
| Fixed-point | ap_fixed<16,8> native | int16 with software multiply |
| Cost | ~$200 (PYNQ Z2 board) | ~$5–10 (ESP32 module) |

---

## Figure Suggestions for Thesis

### Figure 1: System Architecture Diagram
- Side-by-side block diagrams of FPGA (PS7 + DMA + Accelerator) and ESP32 (MCU + Flash + SRAM)

### Figure 2: FPGA Accelerator Block Diagrams
- One diagram per model showing data flow, parallelism points, and BRAM usage (see `02_fpga_architectures.md`)

### Figure 3: Accuracy Comparison Bar Chart
- Grouped bar chart: 5 models × 4 datasets, FPGA vs ESP32 side by side

### Figure 4: Latency Comparison Bar Chart (Log Scale)
- Grouped bar chart with log-scale Y-axis showing HW cycles for both platforms

### Figure 5: Cycle Speedup Heatmap
- 5×4 heatmap (models × datasets) showing FPGA speedup factor, color-coded (green > 1×, red < 1×)

### Figure 6: Resource Utilization Stacked Bar Chart
- Stacked bar chart showing BRAM, DSP, LUT, FF usage per model as % of PYNQ Z2 total

### Figure 7: Parallelism Impact (RF Example)
- Timeline comparison: ESP32 (10 sequential trees) vs FPGA (10 parallel trees)

### Figure 8: Scalability Curves
- Line chart: Latency vs. dataset complexity (features × samples) for each model on both platforms

---

## LaTeX Table Template

```latex
\begin{table}[htbp]
\centering
\caption{FPGA vs ESP32 Clock Cycle Comparison}
\label{tab:cycle-comparison}
\begin{tabular}{llrrr}
\toprule
\textbf{Model} & \textbf{Dataset} & \textbf{FPGA Cycles} & \textbf{ESP32 Cycles} & \textbf{Speedup} \\
\midrule
KNN   & Iris    &     3,600 &     9,930 &  2.76$\times$ \\
KNN   & Wine    &     5,112 &    40,043 &  7.83$\times$ \\
KNN   & Cancer  &    51,870 &   257,358 &  4.96$\times$ \\
KNN   & MNIST   &   517,320 &    40,104 &  0.08$\times$ \\
\midrule
DT    & Iris    &        73 &       127 &  1.74$\times$ \\
DT    & Wine    &       111 &       142 &  1.28$\times$ \\
DT    & Cancer  &       496 &       159 &  0.32$\times$ \\
DT    & MNIST   &     2,702 &       142 &  0.05$\times$ \\
\midrule
RF    & Iris    &        30 &     1,620 & 54.00$\times$ \\
RF    & Wine    &        36 &     1,858 & 51.61$\times$ \\
RF    & Cancer  &       114 &     2,160 & 18.95$\times$ \\
RF    & MNIST   &       360 &     1,840 &  5.11$\times$ \\
\midrule
SVM   & Iris    &     2,430 &    23,987 &  9.87$\times$ \\
SVM   & Wine    &     5,508 &   102,283 & 18.57$\times$ \\
SVM   & Cancer  &    14,592 &   267,494 & 18.33$\times$ \\
SVM   & MNIST   & 2,095,200 &   102,072 &  0.05$\times$ \\
\midrule
MLP   & Iris    &       570 &     1,582 &  2.78$\times$ \\
MLP   & Wine    &     1,260 &     4,067 &  3.23$\times$ \\
MLP   & Cancer  &     3,876 &     5,565 &  1.44$\times$ \\
MLP   & MNIST   &    26,640 &     4,353 &  0.16$\times$ \\
\bottomrule
\end{tabular}
\end{table}
```
