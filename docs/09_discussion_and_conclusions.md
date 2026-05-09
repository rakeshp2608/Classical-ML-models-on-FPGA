# Discussion, Conclusions, and Future Work

## Discussion

### Thesis Hypothesis Validation

The mid-term report hypothesized that "FPGA parallel processing will significantly reduce inference latency vs sequential microcontroller execution." The experimental results partially validate this claim:

**Validated for parallelizable models:**
- **Random Forest** demonstrates the most compelling FPGA advantage, with 5–54× cycle speedup across all datasets. The 10-tree parallel evaluation is a textbook example of spatial parallelism impossible on a sequential processor.
- **SVM** shows 10–19× cycle speedup on small/medium datasets where kernel parallelism (64 simultaneous feature operations) dominates.
- **KNN** achieves 3–8× cycle speedup on Wine and Cancer via parallel distance computation.

**Not validated for sequential models:**
- **Decision Tree** traversal is inherently sequential, and the ESP32's 2.4× clock advantage (240 MHz vs 100 MHz) makes it competitive or faster.
- **MLP** with the area-constrained 8-MAC design shows only modest (1.4–3.2×) cycle improvement.

### The Role of Problem Scale

A critical finding is that the **FPGA advantage depends strongly on problem scale and model characteristics**:

| Factor | Favors FPGA | Favors ESP32 |
|--------|------------|-------------|
| Many parallel operations (trees, features) | ✓ | |
| Large training sets (KNN, SVM) | ✓ (small/med) | ✓ (MNIST*) |
| Sequential dependencies (DT traversal) | | ✓ |
| High clock speed sensitivity | | ✓ |
| DMA/communication overhead tolerance | | ✓ |

*The MNIST anomaly for KNN/SVM on ESP32 reflects benchmark methodology differences (batch vs. single-sample) rather than fundamental platform capability.

### Accuracy Considerations

Both platforms achieve comparable accuracy (within ±3 percentage points) for 16 out of 20 model-dataset combinations. The divergences on MNIST are attributable to quantization scheme differences:

- **FPGA `ap_fixed<16,8>`**: 256 quantization levels, uniform across all models
- **ESP32 QSCALE=10000**: ~10,000 levels for DT/RF/SVM/MLP; reduced for KNN

For **tree-based models (DT, RF)**, the ESP32's higher precision (13+ fractional bits) preserves threshold boundary fidelity better on MNIST's 64-dimensional space. For **KNN**, the FPGA's `ap_fixed<16,8>` maintains better distance ordering than the ESP32's aggressively reduced KNN scales.

### DMA Overhead Impact

The FPGA "wall time" includes significant DMA and Python/PYNQ overhead (~1 ms baseline), which dominates for fast computations:

| Model | HW Latency | Wall Time | Overhead Fraction |
|-------|-----------|-----------|-------------------|
| RF (Iris) | 0.30 µs | 1,042.94 µs | 99.97% |
| DT (Iris) | 0.73 µs | 1,035.59 µs | 99.93% |
| MLP (MNIST) | 266.40 µs | 19,517.77 µs | 98.63% |

For production deployment, this overhead would be mitigated by:
1. Bare-metal PS driver (eliminating Python/OS overhead)
2. Continuous streaming mode (amortizing DMA setup)
3. Larger batch sizes

### Resource Efficiency

All five accelerators fit within the modest PYNQ Z2 (Zynq-7020) resource budget. The most resource-hungry model (SVM at 35% DSP, 26% BRAM) still leaves substantial headroom. This suggests:

1. Multiple accelerators could coexist on a single FPGA if model switching is needed.
2. The designs are portable to even smaller Zynq devices (e.g., Zynq-7010 with 80 DSPs).
3. Larger FPGAs would unlock higher parallelism (e.g., MLP with full 64-MAC design).

---

## Conclusions

1. **FPGAs provide significant latency reduction for models with inherent parallelism**. Random Forest (10 parallel trees) achieves up to 54× cycle speedup — the strongest result in this study.

2. **The FPGA advantage diminishes for sequential workloads**. Decision Tree inference, being inherently sequential, gains no benefit from spatial parallelism. The ESP32's higher clock speed makes it equally fast or faster.

3. **Quantization scheme affects accuracy differently per model class**. Tree-based models benefit from higher precision; distance-based models benefit from consistent scaling. Both platforms achieve production-acceptable accuracy (>90% on most tasks).

4. **DMA and communication overhead dominate FPGA wall-clock time for lightweight models**. The FPGA hardware completes RF inference in 0.3 µs, but the end-to-end time is ~1 ms. Production systems must optimize the software stack.

5. **The ESP32 remains compelling for its simplicity, cost, and power efficiency**. At ~$5–10 and 0.2 W, it achieves acceptable latency for most edge ML tasks. The FPGA's ~$200 price and 2–3 W power are justified only when parallelism-sensitive models dominate the workload.

6. **HLS enables rapid hardware design iteration**. All five accelerators were designed, verified, and deployed using C++ HLS rather than manual RTL, demonstrating that hardware acceleration of classical ML is accessible without deep hardware design expertise.

---

## Future Work

### Short-Term

1. **Optimize DMA communication**: Implement a bare-metal PS driver to eliminate Python/PYNQ overhead and measure true end-to-end FPGA latency.
2. **Power measurement**: Use on-board current sensors to measure actual power consumption during inference on both platforms for energy-efficiency comparison (µJ per inference).
3. **Multi-model FPGA**: Explore placing multiple accelerators on the FPGA simultaneously, with a runtime model-selector, to support mixed ML workloads.

### Medium-Term

4. **Larger FPGA exploration**: Port MLP to a Zynq UltraScale+ or Kintex-7 to evaluate the full 64-MAC design and measure the true parallelism ceiling.
5. **Streaming inference**: Implement continuous-streaming mode where samples are fed without per-batch DMA overhead, enabling real-time sensor fusion applications.
6. **Quantization-aware training**: Train models with quantization constraints in the loop to minimize accuracy degradation, particularly for tree-based models on high-dimensional data.

### Long-Term

7. **Deep learning extension**: Extend the framework to convolutional neural networks (CNNs) for image classification, where FPGA parallelism offers well-documented advantages.
8. **Edge deployment comparison**: Include additional edge platforms (Coral TPU, NVIDIA Jetson Nano, STM32 with CMSIS-NN) for a broader comparative study.
9. **Automated design space exploration**: Develop a tool that automatically selects HLS parallelism parameters (partition factors, unroll factors) based on target FPGA resource budget and latency requirements.

---

## References (Key)

- Xilinx, "Vitis High-Level Synthesis User Guide (UG1399)," v2022.2
- Xilinx, "PYNQ: Python Productivity for Zynq," pynq.io
- Xilinx, "Zynq-7000 SoC Technical Reference Manual (UG585)"
- Espressif, "ESP32 Technical Reference Manual"
- Banbury et al., "MLPerf Tiny Benchmark," NeurIPS 2021
- Blott et al., "FINN-R: An End-to-End Deep-Learning Framework for Fast Exploration of Quantized Neural Networks," ACM TRETS 2018
