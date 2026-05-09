# FPGA Design Flow and Toolchain

## Toolchain

| Tool | Version | Purpose |
|------|---------|---------|
| **Vitis HLS** | 2022.2 | C++ → RTL synthesis, IP export |
| **Vivado** | 2022.2 | Block design, synthesis, implementation, bitstream |
| **PYNQ** | 2.7+ | Python overlay management, DMA control on Zynq |
| **Python** | 3.12 | Model training, parameter export, PTQ validation |

## End-to-End Flow

```
┌──────────────────────────────────────────────────────────────┐
│ Step 1: Python Training & Export                             │
│ train_and_export.py → models/*.npz + test_vectors/*.npz      │
└──────────────────────┬───────────────────────────────────────┘
                       │
┌──────────────────────▼───────────────────────────────────────┐
│ Step 2: HLS C-Simulation (Verification)                      │
│ g++ -std=c++14 -I<HLS_INCLUDE> tb_*.cpp → ./test             │
│ All 20 model×dataset combinations pass                       │
└──────────────────────┬───────────────────────────────────────┘
                       │
┌──────────────────────▼───────────────────────────────────────┐
│ Step 3: HLS C-Synthesis                                      │
│ vitis_hls -f synth_all.tcl                                   │
│ → RTL, resource estimates, timing analysis                   │
└──────────────────────┬───────────────────────────────────────┘
                       │
┌──────────────────────▼───────────────────────────────────────┐
│ Step 4: IP Export                                            │
│ export_design -format ip_catalog                             │
│ → ip_repo/{knn,dt,rf,svm,mlp}_accel/component.xml           │
└──────────────────────┬───────────────────────────────────────┘
                       │
┌──────────────────────▼───────────────────────────────────────┐
│ Step 5: Vivado Block Design & Bitstream                      │
│ build_bitstreams.tcl (Tcl batch mode)                        │
│ Per model: PS7 + DMA + Accel IP → synth → implement → .bit  │
│ → vivado/output/{model}_accel.bit + .hwh                     │
└──────────────────────┬───────────────────────────────────────┘
                       │
┌──────────────────────▼───────────────────────────────────────┐
│ Step 6: PYNQ Deployment                                      │
│ SCP overlays + models + notebooks to PYNQ Z2 board           │
│ Run Jupyter notebooks: load overlay → DMA transfer → infer   │
└──────────────────────────────────────────────────────────────┘
```

## HLS C-Simulation

Since Vitis HLS 2022.2 C-sim has known issues on Ubuntu 24.04, simulation is performed using standalone g++:

```bash
g++ -std=c++14 -I/tools/Xilinx/Vitis_HLS/2022.2/include \
    -o test tb_<model>.cpp <model>_accel.cpp
./test
```

### C-Sim Results (All 20 Pass)

| Dataset | KNN | DT | RF | SVM | MLP |
|---------|-----|-----|-----|-----|-----|
| **Iris** | 100.00% (3,600 cyc) | 93.33% (73 cyc) | 93.33% (30 cyc) | 96.67% (2,430 cyc) | 100.00% (570 cyc) |
| **Wine** | 75.00% (5,112 cyc) | 94.44% (111 cyc) | 100.00% (36 cyc) | 97.22% (5,508 cyc) | 97.22% (1,260 cyc) |
| **Cancer** | 96.00% (22,750 cyc) | 92.00% (214 cyc) | 94.00% (50 cyc) | 96.00% (6,400 cyc) | 98.00% (1,700 cyc) |
| **MNIST** | 100.00% (71,850 cyc) | 80.00% (369 cyc) | 92.00% (50 cyc) | 100.00% (291,000 cyc) | 98.00% (3,700 cyc) |

Note: C-sim uses a smaller test subset (50 samples) compared to full deployment (30–360 samples).

## Vivado Block Design

Each model gets its own bitstream with an identical block design structure:

```
┌──────────────────────────────────────────────────┐
│               Zynq PS7 (ARM)                     │
│  ┌──────────┐          ┌───────────────────┐     │
│  │ GP0 AXI  │─────────▶│ AXI Interconnect  │     │
│  │ (Master) │          │ (Control Bus)     │     │
│  └──────────┘          └─┬─────────────┬───┘     │
│                          │             │         │
│                          ▼             ▼         │
│                    ┌──────────┐  ┌──────────┐    │
│                    │ DMA Ctrl │  │ Accel IP │    │
│                    │ (AXI-L)  │  │ (AXI-L)  │    │
│                    └────┬─────┘  └──────────┘    │
│                         │                        │
│  ┌──────────┐    ┌──────▼──────┐                 │
│  │ HP0 AXI  │◀──▶│  AXI DMA   │                 │
│  │ (Slave)  │    │  (Simple)   │                 │
│  └──────────┘    └──┬──────┬──┘                  │
│                     │      │                     │
│              ┌──────▼──┐ ┌─▼────────┐            │
│              │ MM2S    │ │ S2MM     │            │
│              │(to PL)  │ │(from PL) │            │
│              └────┬────┘ └─────▲────┘            │
│                   │            │                 │
│              ┌────▼────────────┴────┐            │
│              │    ML Accelerator    │            │
│              │    (AXI-Stream)      │            │
│              │    in_stream→out_str │            │
│              └─────────────────────┘            │
└──────────────────────────────────────────────────┘
```

### PS7 Configuration (Manual — No Board Files)

| Setting | Value |
|---------|-------|
| DDR | MT41K256M16 RE-125 @ 525 MHz |
| Crystal | 50 MHz |
| FCLK_CLK0 | 100 MHz |
| MIO Bank 0 | LVCMOS 3.3V |
| MIO Bank 1 | LVCMOS 1.8V |
| Peripherals | QSPI, SD0, UART1, USB0, ENET0, GPIO |

### DMA Configuration

| Parameter | Value |
|-----------|-------|
| Type | AXI DMA (Simple, no Scatter-Gather) |
| Data Width | 32 bits |
| Length Width | 23 bits (max 8 MB transfer) |
| Channels | MM2S (PS→PL) + S2MM (PL→PS) |

## PYNQ Deployment Protocol

### Mode 0: Load Parameters

```python
# 1. Write control registers
write_reg(ip, mode_reg, 0)
write_reg(ip, feature_reg, n_features)
write_reg(ip, class_reg, n_classes)
# ... model-specific registers ...

# 2. Prepare DMA buffer with model parameters
in_buffer = allocate(shape=(n_words,), dtype=np.uint32)
in_buffer[:] = load_data
in_buffer.flush()

# 3. Start accelerator and DMA (send only — NO receive in Mode 0)
write_reg(ip, AP_CTRL, AP_START)
dma.sendchannel.transfer(in_buffer)
dma.sendchannel.wait()
while not (read_reg(ip, AP_CTRL) & AP_DONE): pass
```

### Mode 1: Inference

```python
# 1. Write control registers
write_reg(ip, mode_reg, 1)
write_reg(ip, num_test_reg, n_test)

# 2. Prepare input and output DMA buffers
in_buffer[:] = test_features  # n_test × n_features words
out_buffer = allocate(shape=(n_test,), dtype=np.uint32)

# 3. Start accelerator and both DMA channels
write_reg(ip, AP_CTRL, AP_START)
dma.sendchannel.transfer(in_buffer)
dma.recvchannel.transfer(out_buffer)
dma.sendchannel.wait()
dma.recvchannel.wait()
while not (read_reg(ip, AP_CTRL) & AP_DONE): pass

# 4. Read predictions
out_buffer.invalidate()
predictions = np.frombuffer(out_buffer, dtype=np.int32)[:n_test]
hw_cycles = read_reg(ip, latency_reg)
```

### Critical Design Note

**Mode 0 never writes to `out_stream`**. Starting a DMA receive channel (S2MM) during Mode 0 causes the driver to hang indefinitely waiting for data that will never arrive. This was a bug discovered during deployment and fixed across all notebooks.

## AXI-Lite Register Maps

### KNN, DT, RF, SVM

| Offset | Register | Description |
|--------|----------|-------------|
| 0x00 | AP_CTRL | Control (bit 0: start, bit 1: done, bit 2: idle) |
| 0x10 | mode | 0 = load, 1 = inference |
| 0x18 | num_features | Feature dimension |
| 0x20 | num_classes | Number of output classes |
| 0x28 | (model-specific) | num_train / num_nodes / num_trees / n_sv |
| 0x30 | num_test | Number of test samples (0 for mode 0) |
| 0x38 | latency_out | Hardware cycle counter (read after inference) |

### MLP

| Offset | Register | Description |
|--------|----------|-------------|
| 0x00 | AP_CTRL | Control |
| 0x10 | mode | 0 = load, 1 = inference |
| 0x18 | num_features | Input dimension |
| 0x20 | num_classes | Output classes |
| 0x28 | h1_size | Hidden layer 1 size |
| 0x30 | h2_size | Hidden layer 2 size |
| 0x38 | num_test | Number of test samples |
| 0x40 | latency_out | Hardware cycle counter |

## Known Issues and Workarounds

| Issue | Workaround |
|-------|-----------|
| Vitis HLS 2022.2 C-sim fails on Ubuntu 24.04 | Use standalone g++ with `-I<HLS_INCLUDE>` |
| `UNROLL factor=N` + `PIPELINE` causes llvm-link crash | Use `PIPELINE II=1` on inner loops only; rely on array partitioning for parallelism |
| MLP with `complete` partitioning exceeds PYNQ Z2 resources | Use `cyclic factor=8` partitioning (8 parallel MACs) |
| No PYNQ Z2 board files in Vivado 2022.2 | Manual PS7 configuration via Tcl |
| DMA hang during Mode 0 parameter loading | Do not start recvchannel for Mode 0 (no output data) |
