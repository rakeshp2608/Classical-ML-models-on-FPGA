# Classical ML Models on FPGA — User Manual

**Author:** Musham Varun (B.Tech Spring 2026)  
**Supervisor:** Dr. Rakesh Palisetty  
**Institution:** Shiv Nadar Institution of Eminence

---

## Table of Contents

1. [Project Overview](#1-project-overview)
2. [Hardware & Software Requirements](#2-hardware--software-requirements)
3. [Repository Structure](#3-repository-structure)
4. [Workflow Overview](#4-workflow-overview)
5. [Step 1 — Train & Export Models](#5-step-1--train--export-models)
6. [Step 2 — HLS C-Simulation](#6-step-2--hls-c-simulation)
7. [Step 3 — HLS Synthesis](#7-step-3--hls-synthesis)
8. [Step 4 — Vivado Bitstream Generation](#8-step-4--vivado-bitstream-generation)
9. [Step 5 — PYNQ Z2 Deployment](#9-step-5--pynq-z2-deployment)
10. [Step 6 — ESP32 Deployment](#10-step-6--esp32-deployment)
11. [Results Summary](#11-results-summary)
12. [Datasets](#12-datasets)
13. [Quantization Details](#13-quantization-details)
14. [Troubleshooting](#14-troubleshooting)

---

## 1. Project Overview

This project implements and benchmarks five classical machine learning models across two embedded platforms:

- **FPGA platform:** PYNQ Z2 (Xilinx Zynq-7020)
- **Microcontroller baseline:** ESP32-WROOM-32

### Models Implemented

| Model | Abbreviation |
|-------|-------------|
| K-Nearest Neighbours | KNN |
| Decision Tree | DT |
| Random Forest | RF |
| Support Vector Machine | SVM |
| Multi-Layer Perceptron | MLP |

### Datasets Used

| Dataset | Features | Classes | Samples (test) |
|---------|----------|---------|----------------|
| Iris | 4 | 3 | 30 |
| Wine | 13 | 3 | 36 |
| Breast Cancer (Wisconsin) | 30 | 2 | 114 |
| MNIST (scikit-learn subset) | 64 | 10 | 360 |

### Evaluation Metrics
- Inference accuracy (%)
- Hardware latency (µs)
- Clock cycles
- FPGA resource utilization (LUTs, FFs, DSPs, BRAMs)
- Speedup vs ESP32 baseline

---

## 2. Hardware & Software Requirements

### FPGA Path

| Component | Requirement |
|-----------|-------------|
| FPGA Board | PYNQ Z2 (Zynq-7020 — xc7z020clg400-1) |
| HLS Tool | Xilinx Vitis HLS 2022.2 |
| Synthesis Tool | Xilinx Vivado 2022.2 |
| Python (host) | 3.8+ with `scikit-learn`, `numpy` |
| Python (PYNQ) | PYNQ image 3.x (Python 3.10 on board) |
| PYNQ packages | `pynq`, `numpy` |

### ESP32 Path

| Component | Requirement |
|-----------|-------------|
| Board | ESP32-WROOM-32 (dual-core @ 240 MHz, 520 KB SRAM) |
| IDE | Arduino IDE 2.x with ESP32 board package |
| USB-Serial driver | CP210x or CH340 (depending on board variant) |

### Host Machine

- Windows 10/11, Ubuntu 20.04+, or macOS 12+
- Git with `core.longpaths = true` (required on Windows — see [Troubleshooting](#14-troubleshooting))
- Python 3.8+ with packages: `scikit-learn`, `numpy`, `scipy`

---

## 3. Repository Structure

```
.
├── README.md                        ← You are here
├── FPGA_IMPLEMENTATION_PLAN.md      ← Detailed design plan
├── docs/                            ← Technical documentation
│   ├── 01_project_overview.md
│   ├── 02_fpga_architectures.md     ← HLS accelerator designs
│   ├── 03_esp32_implementation.md
│   ├── 04_comparative_results.md    ← Full benchmark tables
│   ├── 05_quantization.md
│   ├── 06_fpga_design_flow.md
│   ├── 07_per_model_analysis.md
│   ├── 08_tables_and_figures.md
│   └── 09_discussion_and_conclusions.md
│
├── FPGA_Deploy/
│   ├── python/                      ← Host-side training & export
│   │   ├── train_and_export.py      ← Main training script
│   │   ├── ptq_sweep.py             ← Post-training quantization sweep
│   │   ├── models/                  ← Exported .npz parameter files
│   │   ├── hls_headers/             ← Generated C header test vectors
│   │   └── test_vectors/            ← .npz test vectors
│   │
│   ├── hls/                         ← Vitis HLS accelerator source
│   │   ├── common/                  ← Shared type definitions & LUT data
│   │   ├── knn_accel/src+tb/
│   │   ├── dt_accel/src+tb/
│   │   ├── rf_accel/src+tb/
│   │   ├── svm_accel/src+tb/
│   │   ├── mlp_accel/src+tb/
│   │   ├── Makefile                 ← C-simulation build
│   │   ├── synth_all.tcl            ← Synthesize all 5 accelerators
│   │   └── synth_mlp_only.tcl       ← Synthesize MLP only
│   │
│   ├── vivado/                      ← Block design & bitstream projects
│   │   ├── build_bitstreams.tcl     ← Build all overlays
│   │   ├── build_mlp_only.tcl
│   │   ├── *_accel_overlay/         ← Per-model Vivado projects
│   │   └── output/                  ← .bit + .hwh output files
│   │
│   └── pynq/                        ← PYNQ board deployment
│       ├── deploy_all.py            ← Run all benchmarks
│       ├── deploy_notebook.ipynb    ← Interactive deployment notebook
│       ├── *_deploy.ipynb           ← Per-model benchmark notebooks
│       ├── models/                  ← Model parameters (per dataset)
│       ├── overlays/                ← .bit + .hwh overlay files
│       ├── test_vectors/            ← .npz test data (per dataset)
│       └── results/                 ← Output CSV benchmark results
│
└── ESP_Deploy/
    ├── esp32_iris/                  ← Iris dataset Arduino project
    ├── esp32_wine/                  ← Wine dataset Arduino project
    ├── esp32_cancer/                ← Cancer dataset Arduino project
    └── esp32_mnist/                 ← MNIST dataset Arduino project
        ├── esp32_<dataset>.ino      ← Main Arduino sketch
        ├── esp32_<dataset>_ml.py    ← Python parameter export helper
        ├── *_engine.h               ← Per-model inference headers
        ├── utils.h                  ← Fixed-point utilities
        └── models/                  ← Quantized model parameter headers
```

---

## 4. Workflow Overview

```
scikit-learn training (Python)
         │
         │  train_and_export.py
         ▼
  Exported parameters (.npz)
     ┌────┴────┐
     │         │
     ▼         ▼
  FPGA path   ESP32 path
     │              │
  HLS C-sim    Arduino IDE
     │              │
  HLS Synth    Upload sketch
     │              │
  Vivado          Serial
  Bitstream      Monitor
     │
  PYNQ Deploy
     │
  results/*.csv
```

All five models are trained once on the host machine. The identical trained parameters are then deployed to **both** the FPGA and ESP32 to ensure a fair comparison.

---

## 5. Step 1 — Train & Export Models

This step trains all five models on all four datasets and exports model parameters as `.npz` files and C headers for HLS testbenches.

```bash
cd FPGA_Deploy/python
python train_and_export.py
```

**Outputs:**
- `FPGA_Deploy/python/models/<dataset>/<model>_params.npz` — model weights/parameters
- `FPGA_Deploy/python/hls_headers/<dataset>/test_<dataset>_data.h` — C array test vectors for HLS
- `FPGA_Deploy/python/test_vectors/<dataset>/test_data.npz` — NumPy test vectors for PYNQ

**Optional — Post-Training Quantization sweep:**

```bash
python ptq_sweep.py
```

This sweeps integer/fractional bit widths to find the optimal `ap_fixed<W,I>` configuration that minimises accuracy loss.

---

## 6. Step 2 — HLS C-Simulation

Verify the HLS accelerator logic in software before targeting hardware.

```bash
cd FPGA_Deploy/hls
make all
```

This compiles and runs C-simulation testbenches for all five accelerators using the generated header test vectors. Each testbench prints predicted labels alongside expected labels and reports a pass/fail result.

**To simulate a single accelerator:**

```bash
make knn    # or dt, rf, svm, mlp
```

**Expected output (example for KNN on Iris):**
```
[KNN TB] Iris: 30/30 correct. PASS.
```

---

## 7. Step 3 — HLS Synthesis

Run Vitis HLS to synthesise RTL from the C++ accelerator source and generate IP cores.

**Synthesise all five accelerators:**

```bash
cd FPGA_Deploy/hls
vitis_hls -f synth_all.tcl
```

**Synthesise MLP only (faster, for quick iteration):**

```bash
vitis_hls -f synth_mlp_only.tcl
```

**What this does:**
1. Opens each `*_accel/` project in Vitis HLS
2. Runs C-synthesis targeting `xc7z020clg400-1` at 100 MHz
3. Exports synthesised IP as `.zip` archives into `hls/ip_repo/`

> **Note:** Full synthesis of all five accelerators takes approximately 30–60 minutes depending on your machine. The MLP-only script takes ~5 minutes.

---

## 8. Step 4 — Vivado Bitstream Generation

Generate FPGA bitstreams by integrating each HLS IP core with the PYNQ Z2 base block design.

```bash
cd FPGA_Deploy/vivado
vivado -mode batch -source build_bitstreams.tcl
```

**What this does:**
1. Creates a Vivado block design for each accelerator
2. Instantiates the HLS IP and connects AXI interfaces
3. Runs implementation and bitstream generation
4. Copies `.bit` and `.hwh` files to `vivado/output/`

**Output files:**
```
FPGA_Deploy/vivado/output/
├── knn_accel.bit / knn_accel.hwh
├── dt_accel.bit  / dt_accel.hwh
├── rf_accel.bit  / rf_accel.hwh
├── svm_accel.bit / svm_accel.hwh
└── mlp_accel.bit / mlp_accel.hwh
```

> **Note:** Bitstream generation takes approximately 1–3 hours per accelerator. Pre-built bitstreams and `.hwh` files are already included in `FPGA_Deploy/pynq/overlays/` and can be used directly, skipping Steps 3 and 4.

---

## 9. Step 5 — PYNQ Z2 Deployment

### 9.1 Prepare the Package

Copy the deployment package to the PYNQ board over the network:

```bash
cd FPGA_Deploy/pynq
# Edit prepare_pynq_package.sh to set PYNQ_IP to your board's IP address
bash prepare_pynq_package.sh
```

Or manually SCP the required files:

```bash
PYNQ_IP=192.168.2.99   # replace with your board's IP
scp -r overlays/      xilinx@$PYNQ_IP:/home/xilinx/pynq_deploy/
scp -r models/        xilinx@$PYNQ_IP:/home/xilinx/pynq_deploy/
scp -r test_vectors/  xilinx@$PYNQ_IP:/home/xilinx/pynq_deploy/
scp *.ipynb deploy_all.py xilinx@$PYNQ_IP:/home/xilinx/pynq_deploy/
```

Default PYNQ credentials: **user** `xilinx` / **password** `xilinx`

### 9.2 Run Benchmarks via Jupyter

1. Open a browser and navigate to `http://<PYNQ_IP>:9090`
2. Log in with password `xilinx`
3. Open `deploy_notebook.ipynb` for an all-in-one run, or open individual notebooks:
   - `knn_deploy.ipynb`
   - `dt_deploy.ipynb`
   - `rf_deploy.ipynb`
   - `svm_deploy.ipynb`
   - `mlp_deploy.ipynb`
4. Run all cells. Each notebook loads the overlay, sends test vectors over AXI, collects predictions, and records latency.

### 9.3 Run Benchmarks via Command Line

SSH into the board and run:

```bash
ssh xilinx@<PYNQ_IP>
cd /home/xilinx/pynq_deploy
python3 deploy_all.py
```

Results are written to `results/` as CSV files:
```
results/knn_results.csv
results/dt_results.csv
results/rf_results.csv
results/svm_results.csv
results/mlp_results.csv
```

---

## 10. Step 6 — ESP32 Deployment

### 10.1 Export Parameters (if not already done)

```bash
cd ESP_Deploy/esp32_iris      # or esp32_wine, esp32_cancer, esp32_mnist
python esp32_iris_ml.py
```

This populates the `models/` subfolder with quantised C header files.

### 10.2 Upload the Sketch

1. Open Arduino IDE 2.x
2. Install the **ESP32 board package** via `File → Preferences → Additional Boards Manager URLs`:
   ```
   https://raw.githubusercontent.com/espressif/arduino-esp32/gh-pages/package_esp32_index.json
   ```
3. Go to `Tools → Board → ESP32 Arduino → ESP32 Dev Module`
4. Set `Tools → Upload Speed → 921600`
5. Open `ESP_Deploy/esp32_<dataset>/esp32_<dataset>.ino`
6. Click **Upload**

### 10.3 Read Results

Open `Tools → Serial Monitor` at **115200 baud**. The sketch will print inference timing and predictions for all five models:

```
=== KNN Iris ===
Predicted: 2  Expected: 2  Time: 41 us
...
Accuracy: 100.00%  Avg Latency: 41.38 us
```

---

## 11. Results Summary

### Accuracy (%)

| Model | Platform | Iris | Wine | Cancer | MNIST |
|-------|----------|------|------|--------|-------|
| KNN | FPGA | 100.00 | 75.00 | 92.98 | **98.61** |
| KNN | ESP32 | 100.00 | 75.00 | 92.98 | 75.00 |
| DT | FPGA | 93.33 | 94.44 | 90.35 | 81.11 |
| DT | ESP32 | 93.33 | 94.44 | 92.11 | 94.44 |
| RF | FPGA | 93.33 | 100.00 | **94.74** | 92.78 |
| RF | ESP32 | 93.33 | 100.00 | 94.74 | 100.00 |
| SVM | FPGA | 96.67 | 97.22 | **97.37** | **99.17** |
| SVM | ESP32 | 96.67 | 100.00 | 97.37 | 100.00 |
| MLP | FPGA | 100.00 | 97.22 | **98.25** | 97.22 |
| MLP | ESP32 | 100.00 | 97.22 | 98.25 | 97.22 |

### Inference Latency (µs)

| Model | FPGA (Iris) | ESP32 (Iris) | Speedup |
|-------|-------------|--------------|---------|
| KNN | 36.00 | 41.38 | **1.15×** |
| DT | 0.73 | 0.53 | 0.73× |
| RF | **0.30** | 6.75 | **22.5×** |
| SVM | 24.30 | 99.95 | **4.11×** |
| MLP | 5.70 | 6.59 | **1.16×** |

> Random Forest achieves the largest FPGA speedup (**22.5× on Iris**) because all 10 trees execute in parallel on the FPGA, whereas the ESP32 runs them sequentially.

---

## 12. Datasets

All datasets are loaded automatically by `train_and_export.py` via scikit-learn. No manual download is required.

| Dataset | scikit-learn loader | Notes |
|---------|---------------------|-------|
| Iris | `load_iris()` | 150 samples, 80/20 split |
| Wine | `load_wine()` | 178 samples, 80/20 split |
| Breast Cancer | `load_breast_cancer()` | 569 samples, 80/20 split |
| MNIST (digits) | `load_digits()` | 1797 samples, 80/20 split |

---

## 13. Quantization Details

### FPGA (ap_fixed)

| Model | Feature Type | Accumulator Type |
|-------|-------------|-----------------|
| KNN | `ap_fixed<16,8>` | `ap_fixed<32,16>` |
| DT | `ap_fixed<32,16>` | `ap_fixed<32,16>` |
| RF | `ap_fixed<32,16>` | `ap_fixed<32,16>` |
| SVM | `ap_fixed<16,8>` | `ap_fixed<32,16>` |
| MLP | `ap_fixed<16,8>` | `ap_fixed<32,16>` |

`ap_fixed<W,I>` means W total bits, I integer bits, (W−I) fractional bits.

### ESP32 (int16 fixed-point)

All ESP32 models use **int16** arithmetic with a per-dataset quantisation scale (`QSCALE`), typically 10,000, meaning `int_val = float_val × 10000`. Model weights and thresholds are stored in flash (`PROGMEM`) to conserve SRAM.

---

## 14. Troubleshooting

### Git on Windows — "Filename too long" error

Enable long path support before cloning or staging files:

```bash
git config --global core.longpaths true
```

Or enable it system-wide (requires admin privileges):

```powershell
# Run as Administrator
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem" -Name "LongPathsEnabled" -Value 1
```

### Vitis HLS not found

Ensure Vitis HLS 2022.2 is on your PATH:

```bash
# Linux / WSL
source /opt/Xilinx/Vitis_HLS/2022.2/settings64.sh

# Windows — add to system PATH:
# C:\Xilinx\Vitis_HLS\2022.2\bin
```

### PYNQ board not reachable

- Connect the board via Ethernet (direct cable or through a switch).
- The default static IP is `192.168.2.99`. Set your PC's Ethernet adapter to the `192.168.2.x` subnet.
- If using USB-Ethernet mode, the board appears at `192.168.3.1`.

### ESP32 upload fails

- Select the correct COM port under `Tools → Port`.
- Hold the **BOOT** button on the ESP32 while clicking Upload, then release after upload starts.
- Try lowering the upload speed to `115200`.

### Python package missing

```bash
pip install scikit-learn numpy scipy
```

---

## License

This project was developed as a B.Tech major project at Shiv Nadar Institution of Eminence. Refer to the project supervisor for licensing and usage terms.

---

*For detailed architecture descriptions, see [docs/02_fpga_architectures.md](docs/02_fpga_architectures.md). For full benchmark tables, see [docs/04_comparative_results.md](docs/04_comparative_results.md).*