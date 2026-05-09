/*  knn_accel.cpp — K-Nearest Neighbours FPGA Accelerator
 *
 *  Key parallelism:
 *    - Training data stored transposed: train[feature][sample]
 *      with COMPLETE partition on feature dimension → all features
 *      of one sample read in a single clock cycle.
 *    - Training-sample loop pipelined with II=1 (one distance per cycle).
 *    - Top-K maintained via insertion sort (K=3, 2 compare-swaps).
 */
#include "knn_accel.h"

/* ── Internal storage (BRAM) ──────────────────────────────────────────── */
static fix16_t  train_data[MAX_FEATURES][MAX_TRAIN];   // transposed for parallel access
static ap_uint<8> train_labels[MAX_TRAIN];

/* ── Top-K insertion (K=3) ────────────────────────────────────────────── */
static void insert_topk(
    dist_t dist, ap_uint<8> label,
    dist_t best_dist[K_VAL], ap_uint<8> best_label[K_VAL])
{
#pragma HLS INLINE
    if (dist < best_dist[K_VAL - 1]) {
        best_dist[K_VAL - 1]  = dist;
        best_label[K_VAL - 1] = label;
        // Bubble sort (2 passes for K=3)
        if (best_dist[2] < best_dist[1]) {
            dist_t   td = best_dist[1];  best_dist[1]  = best_dist[2];  best_dist[2]  = td;
            ap_uint<8> tl = best_label[1]; best_label[1] = best_label[2]; best_label[2] = tl;
        }
        if (best_dist[1] < best_dist[0]) {
            dist_t   td = best_dist[0];  best_dist[0]  = best_dist[1];  best_dist[1]  = td;
            ap_uint<8> tl = best_label[0]; best_label[0] = best_label[1]; best_label[1] = tl;
        }
    }
}

/* ── Majority vote (K=3) ─────────────────────────────────────────────── */
static ap_uint<8> majority_vote(ap_uint<8> labels[K_VAL]) {
#pragma HLS INLINE
    if (labels[0] == labels[1] || labels[0] == labels[2]) return labels[0];
    if (labels[1] == labels[2]) return labels[1];
    return labels[0];  // tie-break: nearest wins
}

/* ── Top-level function ──────────────────────────────────────────────── */
void knn_accel(
    axis_t &in_stream,
    axis_t &out_stream,
    int mode,
    int num_features,
    int num_classes,
    int num_train,
    int num_test,
    int &latency_out)
{
#pragma HLS INTERFACE axis     port=in_stream
#pragma HLS INTERFACE axis     port=out_stream
#pragma HLS INTERFACE s_axilite port=mode         bundle=control
#pragma HLS INTERFACE s_axilite port=num_features bundle=control
#pragma HLS INTERFACE s_axilite port=num_classes  bundle=control
#pragma HLS INTERFACE s_axilite port=num_train    bundle=control
#pragma HLS INTERFACE s_axilite port=num_test     bundle=control
#pragma HLS INTERFACE s_axilite port=latency_out  bundle=control
#pragma HLS INTERFACE s_axilite port=return       bundle=control

    /* Partition training data: complete on feature dim → all features in parallel */
#pragma HLS ARRAY_PARTITION variable=train_data complete dim=1

    if (mode == 0) {
        /* ═══════ MODE 0: Load training data ═══════════════════════════ */
        /* Stream format: for each sample: num_features values, then 1 label */
        LOAD_SAMPLES:
        for (int s = 0; s < num_train; s++) {
#pragma HLS LOOP_TRIPCOUNT min=30 max=1500
            LOAD_FEAT:
            for (int f = 0; f < num_features; f++) {
#pragma HLS LOOP_TRIPCOUNT min=4 max=64
#pragma HLS PIPELINE II=1
                train_data[f][s] = read_stream_fix16(in_stream);
            }
            train_labels[s] = (ap_uint<8>)read_stream_i32(in_stream);
        }
        latency_out = 0;

    } else {
        /* ═══════ MODE 1: Inference ════════════════════════════════════ */
        int cycles = 0;

        INFER_SAMPLES:
        for (int t = 0; t < num_test; t++) {
#pragma HLS LOOP_TRIPCOUNT min=10 max=360

            /* Read test feature vector */
            fix16_t test_feat[MAX_FEATURES];
#pragma HLS ARRAY_PARTITION variable=test_feat complete
            READ_TEST:
            for (int f = 0; f < num_features; f++) {
#pragma HLS LOOP_TRIPCOUNT min=4 max=64
#pragma HLS PIPELINE II=1
                test_feat[f] = read_stream_fix16(in_stream);
            }

            /* Initialize top-K */
            dist_t    best_dist[K_VAL];
            ap_uint<8> best_label[K_VAL];
#pragma HLS ARRAY_PARTITION variable=best_dist  complete
#pragma HLS ARRAY_PARTITION variable=best_label complete
            INIT_TOPK:
            for (int k = 0; k < K_VAL; k++) {
#pragma HLS UNROLL
                best_dist[k]  = (dist_t)2000000;  // large sentinel
                best_label[k] = 0;
            }

            /* Distance computation — pipelined, features fully parallel */
            DIST_LOOP:
            for (int s = 0; s < num_train; s++) {
#pragma HLS LOOP_TRIPCOUNT min=30 max=1500
#pragma HLS PIPELINE II=1
                dist_t dist = 0;
                FEAT_LOOP:
                for (int f = 0; f < MAX_FEATURES; f++) {
#pragma HLS UNROLL
                    if (f < num_features) {
                        fix16_t diff = test_feat[f] - train_data[f][s];
                        dist += (dist_t)(diff * diff);
                    }
                }
                insert_topk(dist, train_labels[s], best_dist, best_label);
                cycles++;
            }

            /* Majority vote and output */
            ap_uint<8> pred = majority_vote(best_label);
            bool is_last = (t == num_test - 1);
            write_stream_i32(out_stream, (ap_int<32>)pred, is_last);
        }

        latency_out = cycles;
    }
}
