/*  svm_accel.cpp — SVM (RBF Kernel, One-vs-One) FPGA Accelerator
 *
 *  Key parallelism:
 *    - Support vectors stored transposed: sv[feature][sv_idx]
 *      fully partitioned on feature dim → parallel distance computation
 *    - Kernel computation pipelined (II=1 per SV)
 *    - exp() approximated via 256-entry piecewise LUT
 *    - OvO voting uses pre-computed kernel values
 *
 *  Assumes features are MinMax-scaled to [0,1] by the PS before streaming.
 */
#include "svm_accel.h"

/* ── Internal storage ─────────────────────────────────────────────────── */
static fix16_t  sv_data[MAX_FEATURES][MAX_SVS];  // transposed: [feat][sv]
static fix16_t  dual_coef[MAX_CLASSES - 1][MAX_SVS]; // (n_class-1) × n_sv
static acc32_t  intercept[MAX_OVO];
static acc32_t  gamma_val;
static int      n_support[MAX_CLASSES];
static int      sv_start[MAX_CLASSES];            // cumulative start index per class

/* Temporary: kernel values for current test sample */
static acc32_t  kernel_cache[MAX_SVS];

/* ── Top-level function ──────────────────────────────────────────────── */
void svm_accel(
    axis_t &in_stream,
    axis_t &out_stream,
    int mode,
    int num_features,
    int num_classes,
    int n_sv,
    int num_test,
    int &latency_out)
{
#pragma HLS INTERFACE axis     port=in_stream
#pragma HLS INTERFACE axis     port=out_stream
#pragma HLS INTERFACE s_axilite port=mode         bundle=control
#pragma HLS INTERFACE s_axilite port=num_features bundle=control
#pragma HLS INTERFACE s_axilite port=num_classes  bundle=control
#pragma HLS INTERFACE s_axilite port=n_sv         bundle=control
#pragma HLS INTERFACE s_axilite port=num_test     bundle=control
#pragma HLS INTERFACE s_axilite port=latency_out  bundle=control
#pragma HLS INTERFACE s_axilite port=return       bundle=control

    /* Partition for parallel feature access */
#pragma HLS ARRAY_PARTITION variable=sv_data complete dim=1

    if (mode == 0) {
        /* ═══════ MODE 0: Load SVM model ═════════════════════════════ */
        /*  Stream order:                                               */
        /*   1. gamma (1 word, fixed-point)                             */
        /*   2. n_support[0..num_classes-1] (ints)                      */
        /*   3. intercept[0..n_pairs-1] (fixed-point)                   */
        /*   4. support_vectors: n_sv × num_features (row-major, fixed) */
        /*   5. dual_coef: (num_classes-1) × n_sv (row-major, fixed)    */

        /* 1. gamma */
        gamma_val = (acc32_t)read_stream_fix16(in_stream);

        /* 2. n_support per class + compute cumulative starts */
        int cumsum = 0;
        READ_NSUP:
        for (int c = 0; c < num_classes; c++) {
#pragma HLS LOOP_TRIPCOUNT min=2 max=10
#pragma HLS PIPELINE II=1
            n_support[c] = (int)read_stream_i32(in_stream);
            sv_start[c] = cumsum;
            cumsum += n_support[c];
        }

        /* 3. intercepts */
        int n_pairs = num_classes * (num_classes - 1) / 2;
        READ_INTERCEPT:
        for (int p = 0; p < n_pairs; p++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=45
#pragma HLS PIPELINE II=1
            intercept[p] = (acc32_t)read_stream_fix16(in_stream);
        }

        /* 4. support vectors (row-major → store transposed) */
        LOAD_SV:
        for (int s = 0; s < n_sv; s++) {
#pragma HLS LOOP_TRIPCOUNT min=20 max=600
            LOAD_SV_FEAT:
            for (int f = 0; f < num_features; f++) {
#pragma HLS LOOP_TRIPCOUNT min=4 max=64
#pragma HLS PIPELINE II=1
                sv_data[f][s] = read_stream_fix16(in_stream);
            }
        }

        /* 5. dual_coef */
        LOAD_DC:
        for (int r = 0; r < num_classes - 1; r++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=9
            LOAD_DC_COL:
            for (int s = 0; s < n_sv; s++) {
#pragma HLS LOOP_TRIPCOUNT min=20 max=600
#pragma HLS PIPELINE II=1
                dual_coef[r][s] = read_stream_fix16(in_stream);
            }
        }

        latency_out = 0;

    } else {
        /* ═══════ MODE 1: Inference ══════════════════════════════════ */
        int cycles = 0;
        int n_pairs = num_classes * (num_classes - 1) / 2;

        INFER_SAMPLES:
        for (int t = 0; t < num_test; t++) {
#pragma HLS LOOP_TRIPCOUNT min=10 max=360

            /* Read test feature vector (pre-scaled [0,1]) */
            fix16_t test_feat[MAX_FEATURES];
#pragma HLS ARRAY_PARTITION variable=test_feat complete
            READ_FEAT:
            for (int f = 0; f < num_features; f++) {
#pragma HLS LOOP_TRIPCOUNT min=4 max=64
#pragma HLS PIPELINE II=1
                test_feat[f] = read_stream_fix16(in_stream);
            }

            /* Step 1: Compute RBF kernel for ALL support vectors */
            KERNEL_LOOP:
            for (int s = 0; s < n_sv; s++) {
#pragma HLS LOOP_TRIPCOUNT min=20 max=600
#pragma HLS PIPELINE II=1
                acc32_t dist2 = 0;
                KERN_FEAT:
                for (int f = 0; f < MAX_FEATURES; f++) {
#pragma HLS UNROLL
                    if (f < num_features) {
                        fix16_t diff = test_feat[f] - sv_data[f][s];
                        dist2 += (acc32_t)(diff * diff);
                    }
                }
                acc32_t arg = -gamma_val * dist2;
                kernel_cache[s] = (acc32_t)exp_approx(arg);
                cycles++;
            }

            /* Step 2: OvO voting using pre-computed kernels */
            int votes[MAX_CLASSES];
#pragma HLS ARRAY_PARTITION variable=votes complete
            INIT_VOTES:
            for (int c = 0; c < MAX_CLASSES; c++) {
#pragma HLS UNROLL
                votes[c] = 0;
            }

            int pair_idx = 0;
            OVO_I:
            for (int i = 0; i < num_classes; i++) {
#pragma HLS LOOP_TRIPCOUNT min=2 max=10
                OVO_J:
                for (int j = i + 1; j < num_classes; j++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=9
                    acc32_t decision = intercept[pair_idx];

                    /* SVs from class i: use dual_coef[j-1] */
                    SUM_I:
                    for (int s = sv_start[i]; s < sv_start[i] + n_support[i]; s++) {
#pragma HLS LOOP_TRIPCOUNT min=2 max=200
#pragma HLS PIPELINE II=1
                        decision += (acc32_t)dual_coef[j-1][s] * kernel_cache[s];
                        cycles++;
                    }

                    /* SVs from class j: use dual_coef[i] */
                    SUM_J:
                    for (int s = sv_start[j]; s < sv_start[j] + n_support[j]; s++) {
#pragma HLS LOOP_TRIPCOUNT min=2 max=200
#pragma HLS PIPELINE II=1
                        decision += (acc32_t)dual_coef[i][s] * kernel_cache[s];
                        cycles++;
                    }

                    if (decision > 0)
                        votes[i]++;
                    else
                        votes[j]++;
                    pair_idx++;
                }
            }

            /* Argmax of votes */
            int best_class = 0;
            int best_votes = votes[0];
            ARGMAX:
            for (int c = 1; c < num_classes; c++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=9
#pragma HLS PIPELINE II=1
                if (votes[c] > best_votes) {
                    best_votes = votes[c];
                    best_class = c;
                }
            }

            bool is_last = (t == num_test - 1);
            write_stream_i32(out_stream, (ap_int<32>)best_class, is_last);
        }

        latency_out = cycles;
    }
}
