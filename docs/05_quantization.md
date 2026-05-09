# Quantization and Fixed-Point Design

## Overview

Both FPGA and ESP32 implementations use fixed-point integer arithmetic instead of floating-point to reduce hardware cost (FPGA) and execution time (ESP32). This document describes the quantization methodology, precision choices, and their impact on accuracy.

## Python Training Pipeline

All models are trained in Python using scikit-learn with default floating-point (float64) precision. Trained parameters are then quantized and exported to `.npz` files.

### Export Script: `train_and_export.py`

```
scikit-learn (float64) → quantize to int16/fixed-point → .npz files → FPGA / ESP32
```

### Preprocessing

| Model | Preprocessing | Rationale |
|-------|--------------|-----------|
| KNN | Global scaling (std-based) | Uniform distance metric |
| DT, RF | Per-feature quantization | Thresholds must use same scale as features |
| SVM, MLP | MinMaxScaler → [0, 1] | Standard for kernel/neural network models |

## FPGA Fixed-Point Format

### Type: `ap_fixed<16,8>` (fix16_t)

```
┌─────────┬──────────────────┐
│ 8 int   │ 8 fractional     │
│ bits    │ bits             │
└─────────┴──────────────────┘
  Sign + 7 integer bits
  
Range:  [-128, +127.99609375]
Resolution: 1/256 = 0.00390625
FRAC_BITS = 8
```

### Quantization Formula

```
fixed_value = round(float_value × 2^FRAC_BITS)
            = round(float_value × 256)
```

### Accumulator Types

| Type | Bits | Purpose | Range |
|------|------|---------|-------|
| `fix16_t` | `ap_fixed<16,8>` | Features, weights, thresholds | [−128, +128) |
| `acc32_t` | `ap_fixed<32,16>` | Dot products, intermediate sums | [−32768, +32768) |
| `dist_t` | `ap_fixed<48,32>` | KNN squared distances | [−2^31, +2^31) |

The wider accumulator types prevent overflow during reduction operations:
- **MLP**: A dot product of 64 features × weights (each ≤ 128) can reach ~8192, well within `acc32_t` range.
- **KNN**: Squared Euclidean distance over 64 features of maximum difference ~256 → sum up to ~4.2M, requiring `dist_t`.

## ESP32 Fixed-Point Format

### Type: int16 with QSCALE

```
fixed_value = round(float_value × QSCALE)
```

| Model | QSCALE | Effective Fractional Bits | Rationale |
|-------|--------|--------------------------|-----------|
| DT, RF, SVM, MLP | 10,000 | ~13.3 bits | High precision for threshold comparison |
| KNN (Iris) | 100 | ~6.6 bits | Reduced to avoid int16 overflow in distance² |
| KNN (Wine) | 21 | ~4.4 bits | Larger features need smaller scale |
| KNN (Cancer) | 9 | ~3.2 bits | 30 features → smaller per-feature scale |
| KNN (MNIST) | 2,000 | ~11.0 bits | 8×8 pixels have bounded range [0,16] |

### Overflow Prevention (KNN)

The squared Euclidean distance computation accumulates `n_features` squared differences. Each squared difference can be up to `(QSCALE × max_range)²`. For int16 intermediate values, the KNN scale must be reduced:

```
QSCALE_KNN ≤ sqrt(INT32_MAX / (n_features × max_feature_range²))
```

## Post-Training Quantization (PTQ) Validation

The PTQ sweep (`ptq_sweep.py`) validated that `ap_fixed<16,8>` preserves model accuracy:

| Model | Float Accuracy | Fixed-Point Accuracy | Degradation |
|-------|---------------|---------------------|-------------|
| KNN | Baseline | Identical | 0% |
| DT | Baseline | Within ±2% | Minimal |
| RF | Baseline | Within ±1% | Minimal |
| SVM | Baseline | Within ±1% | Minimal |
| MLP | Baseline | Within ±1% | Minimal |

### Key Lesson: Per-Feature Quantization for Decision Trees

Decision trees compare `feature[i]` against `threshold[i]`. If different features use different quantization scales, the comparison becomes invalid. The solution:

- **Per-feature quantization**: Each feature and its corresponding thresholds share the same scale factor.
- This is automatically handled by the global scaling (features) and threshold re-quantization in the export pipeline.

## AXI-Stream Data Packing

Fixed-point values are transmitted via 32-bit AXI-Stream words:

```
┌────────────────────────────────────┐
│ 32-bit AXI-Stream word             │
├────────────────┬───────────────────┤
│ Upper 16 bits  │ Lower 16 bits     │
│ (unused/sign-  │ (fix16_t value)   │
│  extended)     │                   │
└────────────────┴───────────────────┘
```

- **Features/weights**: `fix16_t` sign-extended to 32 bits
- **Integer parameters** (class labels, node indices): Direct 32-bit encoding
- **Predictions**: 32-bit signed integer (class index)

## Comparison: FPGA vs ESP32 Quantization

| Aspect | FPGA (ap_fixed<16,8>) | ESP32 (int16 × QSCALE) |
|--------|----------------------|------------------------|
| Fractional bits | 8 (fixed) | Variable (3.2–13.3) |
| Range | [−128, +128) | [−32768, +32767] / QSCALE |
| Hardware support | Native bit-level | Software multiply/shift |
| Overflow handling | Saturating arithmetic | Manual range checking |
| Accumulator width | 32 or 48 bits (HLS types) | 32-bit int |
| Precision impact | Uniform across models | Higher for non-KNN models |
