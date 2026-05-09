# Repository Structure and Build Guide

## Directory Structure

```
BTP_ML_ACCEL/
├── docs/                          # ← THIS FOLDER — Thesis documentation
│   ├── 01_project_overview.md
│   ├── 02_fpga_architectures.md
│   ├── 03_esp32_implementation.md
│   ├── 04_comparative_results.md
│   ├── 05_quantization.md
│   ├── 06_fpga_design_flow.md
│   ├── 07_per_model_analysis.md
│   ├── 08_tables_and_figures.md
│   ├── 09_discussion_and_conclusions.md
│   └── 10_repo_structure.md
│
├── FPGA_Deploy/
│   ├── python/
│   │   ├── train_and_export.py        # Train all 5 models, export .npz
│   │   ├── ptq_sweep.py               # Post-training quantization validation
│   │   ├── models/                    # Exported model parameters
│   │   │   ├── iris/{knn,dt,rf,svm,mlp}_params.npz
│   │   │   ├── wine/...
│   │   │   ├── cancer/...
│   │   │   └── mnist/...
│   │   └── test_vectors/              # Exported test data
│   │       ├── iris/test_data.npz
│   │       ├── wine/...
│   │       ├── cancer/...
│   │       └── mnist/...
│   │
│   ├── hls/
│   │   ├── common/common.h            # Shared types, constants, helpers
│   │   ├── knn_accel/
│   │   │   ├── src/knn_accel.cpp      # KNN HLS accelerator
│   │   │   └── tb/tb_knn.cpp          # KNN testbench
│   │   ├── dt_accel/
│   │   │   ├── src/dt_accel.cpp
│   │   │   └── tb/tb_dt.cpp
│   │   ├── rf_accel/
│   │   │   ├── src/rf_accel.cpp
│   │   │   └── tb/tb_rf.cpp
│   │   ├── svm_accel/
│   │   │   ├── src/svm_accel.cpp
│   │   │   └── tb/tb_svm.cpp
│   │   ├── mlp_accel/
│   │   │   ├── src/mlp_accel.cpp
│   │   │   └── tb/tb_mlp.cpp
│   │   ├── ip_repo/                   # Exported Vivado IP catalog entries
│   │   │   ├── knn_accel/component.xml
│   │   │   ├── dt_accel/component.xml
│   │   │   ├── rf_accel/component.xml
│   │   │   ├── svm_accel/component.xml
│   │   │   └── mlp_accel/component.xml
│   │   ├── Makefile                   # C-simulation build rules
│   │   ├── synth_all.tcl              # HLS synthesis + export script
│   │   └── synth_mlp_only.tcl         # MLP-only re-synthesis
│   │
│   ├── vivado/
│   │   ├── build_bitstreams.tcl       # Build all 5 bitstreams (Tcl batch)
│   │   ├── build_mlp_only.tcl         # MLP-only bitstream rebuild
│   │   └── output/                    # Generated bitstreams
│   │       ├── knn_accel.bit + .hwh
│   │       ├── dt_accel.bit + .hwh
│   │       ├── rf_accel.bit + .hwh
│   │       ├── svm_accel.bit + .hwh
│   │       └── mlp_accel.bit + .hwh
│   │
│   └── pynq/
│       ├── knn_deploy.ipynb           # KNN deployment notebook
│       ├── dt_deploy.ipynb            # DT deployment notebook
│       ├── rf_deploy.ipynb            # RF deployment notebook
│       ├── svm_deploy.ipynb           # SVM deployment notebook
│       ├── mlp_deploy.ipynb           # MLP deployment notebook
│       ├── deploy_all.py              # Automated all-model benchmark script
│       ├── deploy_notebook.ipynb      # Combined deployment notebook
│       ├── prepare_pynq_package.sh    # Package files for SCP to PYNQ
│       └── results/                   # FPGA benchmark results
│           ├── knn_results.csv
│           ├── dt_results.csv
│           ├── rf_results.csv
│           ├── svm_results.csv
│           └── mlp_results.csv
│
├── ESP_Deploy/
│   ├── Stats.xlsx                     # ESP32 benchmark results
│   ├── esp32_iris/
│   │   ├── esp32_iris.ino             # Arduino main sketch
│   │   ├── esp32_iris_ml.py           # Python model export for ESP32
│   │   ├── {knn,dt,rf,svm,mlp}_engine.h  # Inference engines
│   │   ├── utils.h                    # Fixed-point utilities
│   │   └── models/                    # Model parameter headers
│   │       ├── common_model.h
│   │       └── {knn,dt,rf,svm,mlp}_model.h
│   ├── esp32_wine/...                 # Same structure
│   ├── esp32_cancer/...
│   └── esp32_mnist/...
│
└── Mid_Report_.../
    ├── Mid_term_report_template.tex   # Mid-term thesis report (LaTeX)
    └── reference.bib                  # Bibliography
```

## Build Instructions

### Prerequisites

| Tool | Version | Purpose |
|------|---------|---------|
| Python 3.12+ | conda env "ml" | Training, export, PTQ |
| Vitis HLS | 2022.2 | HLS synthesis |
| Vivado | 2022.2 | Bitstream generation |
| g++ | 11+ | C-simulation (Ubuntu 24.04 workaround) |
| Arduino IDE | 2.x | ESP32 compilation and upload |
| PYNQ | 2.7+ | Board deployment |

### Step 1: Train Models and Export Parameters

```bash
cd FPGA_Deploy/python
conda activate ml
python train_and_export.py
python ptq_sweep.py  # Optional: validate quantization
```

### Step 2: HLS C-Simulation

```bash
cd FPGA_Deploy/hls
source /tools/Xilinx/Vitis_HLS/2022.2/settings64.sh
make all  # Builds and runs all 20 tests
```

### Step 3: HLS Synthesis and IP Export

```bash
cd FPGA_Deploy/hls
vitis_hls -f synth_all.tcl  # ~30 min for all 5 models
```

### Step 4: Vivado Bitstream Generation

```bash
cd FPGA_Deploy/vivado
source /tools/Xilinx/Vivado/2022.2/settings64.sh
vivado -mode batch -source build_bitstreams.tcl  # ~2–3 hours for all 5
```

### Step 5: Deploy to PYNQ Z2

```bash
cd FPGA_Deploy/pynq
bash prepare_pynq_package.sh
scp -r pynq_deploy/ xilinx@<PYNQ_IP>:~/
# Then open Jupyter on PYNQ and run notebooks
```

### Step 6: ESP32 Deployment

1. Open `esp32_<dataset>/esp32_<dataset>.ino` in Arduino IDE
2. Select ESP32 board and port
3. Compile and upload
4. Open Serial Monitor (115200 baud) to see benchmark results
