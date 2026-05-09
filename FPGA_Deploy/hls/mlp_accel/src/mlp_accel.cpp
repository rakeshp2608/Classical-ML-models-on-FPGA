/*  mlp_accel.cpp — Multi-Layer Perceptron FPGA Accelerator
 *
 *  Architecture: Input → Hidden1 (ReLU) → Hidden2 (ReLU) → Output (argmax)
 *
 *  Key parallelism:
 *    - Weight arrays partitioned on input dimension → full dot product
 *      of one neuron computed in parallel (all input features at once)
 *    - Neuron loop pipelined with II=1 (one neuron per cycle)
 *    - ReLU = max(0, x): single-cycle comparator, zero logic cost
 *    - Layer computation: h1_size + h2_size + num_classes cycles total
 *
 *  Assumes features are MinMax-scaled to [0,1] by PS before streaming.
 */
#include "mlp_accel.h"

/* ── Internal storage (BRAM / LUTRAM for weights) ────────────────────── */
/* Layer 1: input → hidden1 */
static fix16_t w1[MAX_HIDDEN][MAX_FEATURES];     // [h1_size][num_features]
static fix16_t b1[MAX_HIDDEN];

/* Layer 2: hidden1 → hidden2 */
static fix16_t w2[MAX_HIDDEN][MAX_HIDDEN];        // [h2_size][h1_size]
static fix16_t b2[MAX_HIDDEN];

/* Output layer: hidden2 → classes */
static fix16_t wo[MAX_CLASSES][MAX_HIDDEN];        // [num_classes][h2_size]
static fix16_t bo[MAX_CLASSES];

/* ── Top-level function ──────────────────────────────────────────────── */
void mlp_accel(
    axis_t &in_stream,
    axis_t &out_stream,
    int mode,
    int num_features,
    int num_classes,
    int h1_size,
    int h2_size,
    int num_test,
    int &latency_out)
{
#pragma HLS INTERFACE axis     port=in_stream
#pragma HLS INTERFACE axis     port=out_stream
#pragma HLS INTERFACE s_axilite port=mode         bundle=control
#pragma HLS INTERFACE s_axilite port=num_features bundle=control
#pragma HLS INTERFACE s_axilite port=num_classes  bundle=control
#pragma HLS INTERFACE s_axilite port=h1_size      bundle=control
#pragma HLS INTERFACE s_axilite port=h2_size      bundle=control
#pragma HLS INTERFACE s_axilite port=num_test     bundle=control
#pragma HLS INTERFACE s_axilite port=latency_out  bundle=control
#pragma HLS INTERFACE s_axilite port=return       bundle=control

    /* Partition weight arrays — cyclic factor=8 for area-efficient parallelism.
     * Gives 8 parallel MACs per neuron (fits PYNQ Z2 with DMA overhead).
     * Trade-off: ~8 cycles per neuron instead of 1, but still very fast. */
#pragma HLS ARRAY_PARTITION variable=w1 cyclic factor=8 dim=2
#pragma HLS ARRAY_PARTITION variable=w2 cyclic factor=8 dim=2
#pragma HLS ARRAY_PARTITION variable=wo cyclic factor=8 dim=2
#pragma HLS ARRAY_PARTITION variable=b1 complete
#pragma HLS ARRAY_PARTITION variable=b2 complete
#pragma HLS ARRAY_PARTITION variable=bo complete

    if (mode == 0) {
        /* ═══════ MODE 0: Load weights ═══════════════════════════════ */
        /*  Stream order:                                               */
        /*   1. W1: h1_size × num_features (row-major)                  */
        /*   2. B1: h1_size                                             */
        /*   3. W2: h2_size × h1_size (row-major)                       */
        /*   4. B2: h2_size                                             */
        /*   5. Wo: num_classes × h2_size (row-major)                   */
        /*   6. Bo: num_classes                                         */

        /* W1 */
        LOAD_W1:
        for (int n = 0; n < h1_size; n++) {
#pragma HLS LOOP_TRIPCOUNT min=8 max=64
            for (int f = 0; f < num_features; f++) {
#pragma HLS LOOP_TRIPCOUNT min=4 max=64
#pragma HLS PIPELINE II=1
                w1[n][f] = read_stream_fix16(in_stream);
            }
        }
        LOAD_B1:
        for (int n = 0; n < h1_size; n++) {
#pragma HLS LOOP_TRIPCOUNT min=8 max=64
#pragma HLS PIPELINE II=1
            b1[n] = read_stream_fix16(in_stream);
        }

        /* W2 */
        LOAD_W2:
        for (int n = 0; n < h2_size; n++) {
#pragma HLS LOOP_TRIPCOUNT min=8 max=64
            for (int m = 0; m < h1_size; m++) {
#pragma HLS LOOP_TRIPCOUNT min=8 max=64
#pragma HLS PIPELINE II=1
                w2[n][m] = read_stream_fix16(in_stream);
            }
        }
        LOAD_B2:
        for (int n = 0; n < h2_size; n++) {
#pragma HLS LOOP_TRIPCOUNT min=8 max=64
#pragma HLS PIPELINE II=1
            b2[n] = read_stream_fix16(in_stream);
        }

        /* Wo */
        LOAD_WO:
        for (int c = 0; c < num_classes; c++) {
#pragma HLS LOOP_TRIPCOUNT min=2 max=10
            for (int m = 0; m < h2_size; m++) {
#pragma HLS LOOP_TRIPCOUNT min=8 max=64
#pragma HLS PIPELINE II=1
                wo[c][m] = read_stream_fix16(in_stream);
            }
        }
        LOAD_BO:
        for (int c = 0; c < num_classes; c++) {
#pragma HLS LOOP_TRIPCOUNT min=2 max=10
#pragma HLS PIPELINE II=1
            bo[c] = read_stream_fix16(in_stream);
        }

        latency_out = 0;

    } else {
        /* ═══════ MODE 1: Inference ══════════════════════════════════ */
        int cycles = 0;

        INFER_SAMPLES:
        for (int t = 0; t < num_test; t++) {
#pragma HLS LOOP_TRIPCOUNT min=10 max=360

            /* Read test feature vector (pre-scaled [0,1]) */
            fix16_t x_in[MAX_FEATURES];
            READ_FEAT:
            for (int f = 0; f < num_features; f++) {
#pragma HLS LOOP_TRIPCOUNT min=4 max=64
#pragma HLS PIPELINE II=1
                x_in[f] = read_stream_fix16(in_stream);
            }

            /* ── Layer 1: Input → Hidden1 (ReLU) ─────────────────── */
            fix16_t h1[MAX_HIDDEN];
            LAYER1:
            for (int n = 0; n < h1_size; n++) {
#pragma HLS LOOP_TRIPCOUNT min=8 max=64
                acc32_t sum = (acc32_t)b1[n];
                L1_DOT:
                for (int f = 0; f < MAX_FEATURES; f++) {
#pragma HLS PIPELINE II=1
                    if (f < num_features) {
                        sum += (acc32_t)w1[n][f] * (acc32_t)x_in[f];
                    }
                }
                h1[n] = (sum > 0) ? (fix16_t)sum : (fix16_t)0;  // ReLU
                cycles++;
            }

            /* ── Layer 2: Hidden1 → Hidden2 (ReLU) ───────────────── */
            fix16_t h2[MAX_HIDDEN];
            LAYER2:
            for (int n = 0; n < h2_size; n++) {
#pragma HLS LOOP_TRIPCOUNT min=8 max=64
                acc32_t sum = (acc32_t)b2[n];
                L2_DOT:
                for (int m = 0; m < MAX_HIDDEN; m++) {
#pragma HLS PIPELINE II=1
                    if (m < h1_size) {
                        sum += (acc32_t)w2[n][m] * (acc32_t)h1[m];
                    }
                }
                h2[n] = (sum > 0) ? (fix16_t)sum : (fix16_t)0;  // ReLU
                cycles++;
            }

            /* ── Output Layer: Hidden2 → Classes ─────────────────── */
            acc32_t out_val[MAX_CLASSES];
#pragma HLS ARRAY_PARTITION variable=out_val complete
            OUT_LAYER:
            for (int c = 0; c < num_classes; c++) {
#pragma HLS LOOP_TRIPCOUNT min=2 max=10
                acc32_t sum = (acc32_t)bo[c];
                OUT_DOT:
                for (int m = 0; m < MAX_HIDDEN; m++) {
#pragma HLS PIPELINE II=1
                    if (m < h2_size) {
                        sum += (acc32_t)wo[c][m] * (acc32_t)h2[m];
                    }
                }
                out_val[c] = sum;
                cycles++;
            }

            /* Argmax */
            int best_class = 0;
            acc32_t best_val = out_val[0];
            ARGMAX:
            for (int c = 1; c < num_classes; c++) {
#pragma HLS PIPELINE II=1
                if (c < num_classes && out_val[c] > best_val) {
                    best_val = out_val[c];
                    best_class = c;
                }
            }

            bool is_last = (t == num_test - 1);
            write_stream_i32(out_stream, (ap_int<32>)best_class, is_last);
        }

        latency_out = cycles;
    }
}
