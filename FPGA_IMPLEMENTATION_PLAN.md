# FPGA Implementation Plan — PYNQ Z2 (Zynq-7020)

## Thesis Goal
Implement **KNN, Decision Tree, Random Forest, SVM, MLP** on FPGA for **4 datasets** (Iris, Wine, Cancer, MNIST), achieve lowest possible latency via hardware parallelism, and prove FPGAs outperform ESP32 for ML inference at the edge.

---

## Target Board: PYNQ Z2
| Resource       | Available |
|----------------|-----------|
| LUTs           | 53,200    |
| Flip-Flops     | 106,400   |
| DSP48 slices   | 220       |
| BRAM (36Kb)    | 140 (≈630 KB) |
| Clock (PL)     | 100–200 MHz typical |
| PS             | Dual ARM Cortex-A9 @ 650 MHz |
| Interface      | AXI4 / AXI4-Lite / AXI-Stream via DMA |

## Datasets Summary
| Dataset | Features | Classes | Train Samples | Test Samples |
|---------|----------|---------|---------------|--------------|
| Iris    | 4        | 3       | 120           | 30           |
| Wine    | 13       | 3       | 142           | 36           |
| Cancer  | 30       | 2       | 455           | 114          |
| MNIST   | 64       | 10      | 1437          | 360          |

## ESP32 Baseline (Iris only so far — @240 MHz)
| Model | Accuracy | Cycles  | Latency (µs) |
|-------|----------|---------|---------------|
| KNN   | 100%     | 13,012  | 54.22         |
| DT    | 93.33%   | 155     | 0.645         |
| RF    | 93.33%   | 2,271   | 9.46          |
| SVM   | 96.67%   | 26,666  | 111.11        |
| MLP   | 100%     | 2,742   | 11.43         |

> **TODO**: Run ESP32 benchmarks for Wine, Cancer, MNIST and fill the Stats.xlsx before final comparison.

---

## Toolchain & Workflow

```
Python (sklearn train) → Export weights/params as C headers
    → Vitis HLS 2022.2 (C-synthesis + C-sim via g++)
        → Export IP (.zip)
            → Vivado 2022.2 Block Design (Zynq PS + AXI + DMA + IP)
                → Generate Bitstream (.bit + .hwh)
                    → PYNQ Overlay (Jupyter notebook on board)
                        → Benchmark: latency, accuracy, resource usage
```

### Key Tool Notes
- **Vitis HLS 2022.2** at `/tools/Xilinx/Vitis_HLS/2022.2`
- **C-sim**: Use `g++ -I/tools/Xilinx/Vitis_HLS/2022.2/include` (Ubuntu 24.04 workaround)
- **Fixed-point**: Use `ap_fixed<W,I>` from HLS for area-efficient DSP-free arithmetic
- **Interface**: AXI4-Lite for small models (DT, RF), AXI4-Stream + DMA for data-heavy models (KNN, SVM, MLP)

---

## Phase 0: Python Model Training & Weight Export (Day 1–2)

Create a unified Python script per dataset that:
1. Loads dataset from sklearn
2. Trains all 5 models (KNN, DT, RF, SVM, MLP)
3. Exports model parameters as C/C++ header files compatible with HLS `ap_fixed` types
4. Exports test vectors for verification
5. Records sklearn accuracy as ground truth

### Quantization Strategy for FPGA
| Model | Data Type | Rationale |
|-------|-----------|-----------|
| DT    | `ap_fixed<32,16>` features & thresholds | Per-feature quantization (same scale for feature and threshold) |
| RF    | `ap_fixed<32,16>` | Same as DT, parallel trees |
| KNN   | `ap_fixed<16,8>` features | Squared-distance in `ap_fixed<32,16>` — fits in DSP |
| SVM   | `ap_fixed<16,8>` scaled features, `ap_fixed<32,16>` kernel | MinMax to [0,1] then quantize |
| MLP   | `ap_fixed<16,8>` weights & activations | Compact, DSP-friendly |

---

## Phase 1: HLS IP Design — Per-Model (Day 3–10)

### Note: Each ML Inference IP needs to have AXI Lite and AXI Stream ports. Reason specified in next sections

### 1.1 KNN Accelerator
**Parallelism Strategy**: This is where FPGA shines the most.
- **Parallel distance computation**: Compute squared Euclidean distance across ALL features in parallel (fully unrolled inner loop)
- **Parallel sample processing**: Process `P` training samples simultaneously (P = 4–16 depending on dataset)
- **Pipelined outer loop**: Pipeline the loop over training samples with II=1
- **Min-K selection**: Hardware sorting network or parallel comparator tree for top-K (K=3)

```
Architecture:
  AXI-Stream IN → Feature Buffer (BRAM)
                → Distance Engine (P parallel units, each computing full feature distance)
                → Min-K Selector (parallel compare-and-swap)
                → Majority Vote → AXI-Stream OUT
```

**Parallelism levels**:
| Dataset | Features | Train | Feature-parallel | Sample-parallel (P) | Expected Cycles |
|---------|----------|-------|------------------|---------------------|-----------------|
| Iris    | 4        | 120   | 4 (full)         | 8                   | ~15–20          |
| Wine    | 13       | 142   | 13 (full)        | 4                   | ~36–40          |
| Cancer  | 30       | 455   | 30 (full)        | 4                   | ~115–120        |
| MNIST   | 64       | 1437  | 16 (partial)     | 4                   | ~360–400 (×4 feature batches) |

### 1.2 Decision Tree Accelerator
**Parallelism Strategy**: Tree traversal is inherently sequential (path-dependent). Use:
- **Pipelined node evaluation**: 1 node per clock cycle (II=1 pipeline)
- **All node data in BRAM**: Single-cycle lookup
- **Speculative parallel evaluation**: Evaluate BOTH children at each level, select correct one → reduces effective latency to ~log₂(nodes) cycles for balanced trees

```
Architecture:
  AXI-Lite registers (feature input) → Node ROM (BRAM)
    → Pipelined Comparator → Child Selector → Class Output (AXI-Lite)
```

| Dataset | Max Depth | Nodes | Expected Cycles |
|---------|-----------|-------|-----------------|
| Iris    | ~5        | 15    | 5–7             |
| Wine    | ~5        | 15    | 5–7             |
| Cancer  | ~6        | 29    | 6–8             |
| MNIST   | ~12       | 245   | 12–15           |

### 1.3 Random Forest Accelerator
**Parallelism Strategy**: **ALL 10 trees execute simultaneously in parallel** — this is the key FPGA advantage.
- Each tree is an independent hardware unit
- All 10 trees evaluate the same input in parallel
- Majority voting logic combines results in 1 cycle

```
Architecture:
  AXI-Lite (features) → Broadcast to 10 Tree Engines (parallel)
                       → 10 class outputs → Majority Vote → Output
```

| Dataset | Trees | Nodes/tree | Expected Cycles (all trees in parallel) |
|---------|-------|------------|----------------------------------------|
| Iris    | 10    | ~13        | 5–7 (= single tree depth)              |
| Wine    | 10    | ~15        | 5–7                                    |
| Cancer  | 10    | ~27        | 6–8                                    |
| MNIST   | 10    | ~223       | 12–15                                  |

### 1.4 SVM Accelerator (RBF Kernel, One-vs-One)
**Parallelism Strategy**:
- **Parallel feature subtraction**: All features subtracted in parallel
- **Parallel support vector processing**: Process `P` SVs simultaneously
- **Pipelined kernel computation**: exp() via lookup table or CORDIC approximation
- **Parallel OvO classifiers**: All binary classifiers run simultaneously

```
Architecture:
  AXI-Stream IN → Feature Scaler (MinMax, pipelined)
    → P parallel SV distance units → exp() LUT → weighted sum
    → OvO Voting (parallel) → Class Output
```

| Dataset | SVs  | OvO Classifiers | SV-parallel (P) | Expected Cycles |
|---------|------|-----------------|------------------|-----------------|
| Iris    | 27   | 3               | 8                | ~10–15          |
| Wine    | 51   | 3               | 8                | ~15–20          |
| Cancer  | 64   | 1               | 16               | ~8–12           |
| MNIST   | 582  | 45              | 8                | ~80–100         |

### 1.5 MLP Accelerator
**Parallelism Strategy**: Matrix-vector multiply is massively parallelizable.
- **Fully parallel neuron computation**: All neurons in a layer computed simultaneously
- **Pipelined layers**: Layer 1 feeds layer 2 feeds output in a pipeline
- **MAC array**: Multiply-accumulate units for dot product
- **ReLU**: Single-cycle comparison (free in hardware)

```
Architecture:
  AXI-Stream IN → Layer 1 (parallel MAC array) → ReLU
    → Layer 2 (parallel MAC array) → ReLU
    → Output Layer (parallel MAC) → Argmax → AXI-Stream OUT
```

| Dataset | Architecture | MACs/layer        | Parallel MACs | Expected Cycles |
|---------|-------------|-------------------|---------------|-----------------|
| Iris    | 4→8→8→3    | 32, 64, 24        | All parallel  | ~3–5            |
| Wine    | 13→16→16→3 | 208, 256, 48      | All parallel  | ~3–5            |
| Cancer  | 30→16→16→2 | 480, 256, 32      | 16 parallel   | ~35–40          |
| MNIST   | 64→32→32→10| 2048, 1024, 320   | 32 parallel   | ~70–80          |

---

## Phase 2: C-Simulation & Verification (Day 8–12, overlaps with Phase 1)

For each HLS IP:
1. Write a C testbench that feeds test vectors and compares output to Python ground truth
2. Compile with `g++ -I/tools/Xilinx/Vitis_HLS/2022.2/include`
3. Verify **bit-exact** accuracy match with sklearn (within quantization tolerance)
4. Record any accuracy delta from quantization

---

## Phase 3: HLS Synthesis & Optimization (Day 10–14)

For each IP:
1. Run C-synthesis targeting `xc7z020clg400-1` @ 100 MHz
2. Check resource utilization (LUT, FF, DSP, BRAM)
3. Check latency and initiation interval (II)
4. Apply HLS pragmas to optimize:
   - `#pragma HLS UNROLL` — parallel feature/neuron computation
   - `#pragma HLS PIPELINE II=1` — pipelined loops
   - `#pragma HLS ARRAY_PARTITION` — parallel memory access
   - `#pragma HLS BIND_STORAGE` — BRAM/LUTRAM selection
   - `#pragma HLS DATAFLOW` — inter-layer pipelining (MLP)
   - `#pragma HLS INTERFACE` — AXI4-Lite / AXI4-Stream
5. Iterate until timing closure and resource fits

### Resource Budget (must fit in xc7z020)
| Model   | Est. LUT | Est. DSP | Est. BRAM | Notes |
|---------|----------|----------|-----------|-------|
| KNN     | ~8K      | 32–64    | 10–40     | BRAM for training data |
| DT      | ~1K      | 0        | 1–2       | Comparators only |
| RF      | ~8K      | 0        | 10–15     | 10× DT |
| SVM     | ~6K      | 16–32    | 5–20      | exp() LUT + SV storage |
| MLP     | ~10K     | 32–64    | 5–15      | MAC array |
| **Total** | **~33K** | **~128** | **~72**   | **Fits in Z-7020** |

> If resource constrained, implement models one at a time (separate bitstreams per model).
> For the final demo, could combine 2–3 small models in one bitstream.

---

## Phase 4: Vivado Integration (Day 13–17)

For each model (or combined set):
1. Create Vivado project targeting `xc7z020clg400-1`
2. Block design: Zynq PS → AXI Interconnect → HLS IP
3. For AXI-Stream models: Add AXI DMA IP
4. Assign addresses, validate design, generate wrapper
5. Run synthesis + implementation + generate bitstream
6. Export `.bit` + `.hwh` files for PYNQ

### Block Design Template
```
┌─────────────┐     AXI-Lite      ┌──────────────┐
│  Zynq PS    │◄────────────────►│  ML Accel IP  │
│  (ARM A9)   │                   │  (HLS)        │
│             │     AXI-Stream    │               │
│  ┌───────┐  │◄────────────────►│               │
│  │  DMA  │  │    (for large    │               │
│  └───────┘  │     data xfer)   └──────────────┘
└─────────────┘
```

---

## Phase 5: PYNQ Deployment & Benchmarking (Day 16–21)

### Per-model Jupyter Notebook:
```python
from pynq import Overlay, allocate
import numpy as np, time

ol = Overlay("ml_knn.bit")
ip = ol.knn_accel_0

# Load test data
X_test, y_test = load_test_data()

# Benchmark
latencies = []
correct = 0
for x, y in zip(X_test, y_test):
    start = time.perf_counter_ns()
    # Write features, trigger, read result
    pred = run_inference(ip, x)
    end = time.perf_counter_ns()
    latencies.append(end - start)
    if pred == y: correct += 1

accuracy = correct / len(y_test) * 100
avg_latency_us = np.mean(latencies) / 1000
```

### Metrics to collect per model per dataset:
| Metric | How to measure |
|--------|----------------|
| **Inference latency** | HLS cycle count × clock period (most accurate) + wall-clock from Python |
| **Accuracy** | Compare predictions vs test labels |
| **Resource usage** | From Vivado utilization report (LUT, FF, DSP, BRAM) |
| **Power** | Vivado power estimation report |
| **Clock frequency** | Achieved Fmax from timing report |
| **Throughput** | 1 / latency (inferences per second) |

---

## Phase 6: Complete ESP32 Benchmarks (Day 18–20)

Run ESP32 benchmarks for **Wine, Cancer, MNIST** datasets (currently only Iris is done). Fill in Stats.xlsx with:
- Accuracy, Cycles, Latency for all 5 models × 4 datasets
- Note: This will be performed by the used. So, temporarily, fill the data not available with a X 

---

## Phase 7: Comparative Analysis & Final Report (Day 20–25)

### Comparison Tables
1. **Latency**: FPGA vs ESP32 for each model × dataset → compute speedup factor
2. **Accuracy**: Should be identical or within quantization tolerance (≤1% delta)
3. **Resource/Memory**: FPGA (LUT/DSP/BRAM) vs ESP32 (Flash/RAM bytes)
4. **Power**: FPGA dynamic power vs ESP32 current draw
5. **Throughput**: Inferences/sec on each platform
6. **Speedup chart**: Bar chart showing FPGA speedup over ESP32

### Expected Results (Hypothesis)
| Model | Expected FPGA Speedup over ESP32 | Why |
|-------|----------------------------------|-----|
| KNN   | **50–500×** | Massive parallelism in distance computation |
| DT    | **5–10×** | Pipelined traversal, but tree depth limits parallelism |
| RF    | **50–100×** | 10 trees in parallel (vs 10 sequential on ESP32) |
| SVM   | **20–100×** | Parallel SV processing + parallel OvO classifiers |
| MLP   | **20–100×** | Parallel MAC arrays for matrix-vector multiply |

---

## Directory Structure

```
BTP_ML_ACCEL/
├── ESP_Deploy/                    # ✅ DONE
│   ├── esp32_iris/
│   ├── esp32_wine/
│   ├── esp32_cancer/
│   ├── esp32_mnist/
│   └── Stats.xlsx
├── FPGA_Deploy/                   # 🔨 TO BUILD
│   ├── python/                    # Model training & weight export
│   │   ├── train_and_export.py    # Unified training script
│   │   ├── test_vectors/          # Exported test data
│   │   └── hls_headers/           # Generated C headers for HLS
│   ├── hls/                       # Vitis HLS projects
│   │   ├── knn_accel/
│   │   │   ├── src/               # knn_accel.cpp, knn_accel.h
│   │   │   ├── tb/                # knn_tb.cpp (testbench)
│   │   │   └── models/            # Per-dataset headers (knn_iris.h, etc.)
│   │   ├── dt_accel/
│   │   ├── rf_accel/
│   │   ├── svm_accel/
│   │   └── mlp_accel/
│   ├── vivado/                    # Vivado block designs
│   │   ├── knn_bd/
│   │   ├── dt_bd/
│   │   ├── rf_bd/
│   │   ├── svm_bd/
│   │   └── mlp_bd/
│   ├── pynq/                      # PYNQ overlays & notebooks
│   │   ├── bitstreams/            # .bit + .hwh files
│   │   ├── knn_benchmark.ipynb
│   │   ├── dt_benchmark.ipynb
│   │   ├── rf_benchmark.ipynb
│   │   ├── svm_benchmark.ipynb
│   │   └── mlp_benchmark.ipynb
│   └── results/                   # Benchmark results
│       ├── fpga_stats.xlsx
│       └── comparison_charts/
├── Final_Report/                  # Final thesis
└── FPGA_IMPLEMENTATION_PLAN.md    # This file
```

---

## Task Checklist

### Phase 0: Python Training & Export
- [ ] Create `train_and_export.py` for all 4 datasets × 5 models
- [ ] Export model weights as HLS-compatible C headers (`ap_fixed` literals)
- [ ] Export test vectors (features + expected labels) as C arrays
- [ ] Verify sklearn accuracy matches ESP32 accuracy

### Phase 1: HLS IP Design (per model)
- [ ] **KNN**: Parallel distance engine + min-K selector
- [ ] **DT**: Pipelined tree traversal
- [ ] **RF**: 10 parallel tree engines + majority vote
- [ ] **SVM**: Parallel SV kernel engine + OvO voter
- [ ] **MLP**: Parallel MAC array with pipelined layers

### Phase 2: Simulation
- [ ] C-sim testbench for each model × each dataset
- [ ] Verify accuracy matches Python ground truth

### Phase 3: Synthesis
- [ ] Synthesize each IP, check resource utilization
- [ ] Optimize with HLS pragmas until timing closure
- [ ] Record latency (cycles), Fmax, resource usage

### Phase 4: Vivado Integration
- [ ] Block design per model (or combined)
- [ ] Generate bitstream for PYNQ Z2
- [ ] Export .bit + .hwh

### Phase 5: PYNQ Deployment
- [ ] Deploy each bitstream on PYNQ Z2
- [ ] Run inference on all test samples per dataset
- [ ] Measure latency, accuracy, power
- [ ] Record all results in fpga_stats.xlsx

### Phase 6: ESP32 Completion
- [ ] Run Wine benchmarks on ESP32
- [ ] Run Cancer benchmarks on ESP32
- [ ] Run MNIST benchmarks on ESP32
- [ ] Update Stats.xlsx

### Phase 7: Analysis & Report
- [ ] Build comparison tables (FPGA vs ESP32)
- [ ] Generate speedup charts
- [ ] Write final thesis report
- [ ] Prepare presentation/demo

---

## Key Design Decisions to Confirm

1. **One bitstream per model vs. combined?**
   - Recommend: **One per model** (simpler, maximizes resources per IP). Can combine small ones (DT+RF) if desired.
    - User choice: One per model.
2. **Clock frequency target?**
   - Recommend: **100 MHz** (safe for Zynq-7020). Push to 150 MHz if timing allows.
   - User choice: Yes. Min 100 MHz. Try your best to achieve till 200MHz. Doesn't matter if heavy pipelines need to be used. Just make sure it is able to fit on the PYNQ Z2

3. **Fixed-point width?**
   - Start with `ap_fixed<16,8>` for features/weights, `ap_fixed<32,16>` for accumulators.
   - Tune per model based on accuracy impact.
   - User choice: In PTQ, sweep the values for data width and see how accuracy is affected by data width. Need to document these too
4. **AXI interface choice?**
   - DT/RF: **AXI4-Lite** (small data, register-mapped) (rejected)
   - KNN/SVM/MLP: **AXI4-Stream + DMA** (bulk data transfer) (rejected)
   - User choice: User needs a AXI Lite and AXI4 Stream ports for all the inference IPs. Because the AXI Lite will have register for user to input data like num_test, num_classes, num_features, mode, latency cycles(inbuilt counter) etc. AXI4 stream for streaming params if mode=0, stream test data if mode=1. Output is collected from AXI4-Stream

5. **SVM exp() implementation?**
   - Option A: Piecewise linear LUT (fast, ~1% error)
   - Option B: CORDIC-based (accurate, more cycles)
   - Recommend: **Piecewise LUT** for best latency.
   - User Choice: Piecewise LUT

---

## Risk Mitigation

| Risk | Mitigation |
|------|-----------|
| MNIST KNN too large for BRAM (1437×64 = 92K values) | Use `ap_fixed<16,8>` → 92K × 2B = 184KB. Fits in ~52 BRAMs. OK. |
| SVM MNIST too many SVs (582×64) | 582×64×2B = 74KB. Fits. Process in batches if needed. |
| Timing failure at 200 MHz | Relax to lesser MHz. Still beats ESP32 by huge margin. Use pipelining and fix the citical path|
| Accuracy drop from quantization | Validate in C-sim first. Increase bit-width if needed. |
| Vivado build time | Budget 1–2 hours per bitstream generation. Run overnight. |
