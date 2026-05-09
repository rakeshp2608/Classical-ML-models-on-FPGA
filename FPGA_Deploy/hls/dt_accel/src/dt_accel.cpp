/*  dt_accel.cpp — Decision Tree FPGA Accelerator
 *
 *  Key design:
 *    - Node arrays stored in BRAM (feature_idx, threshold, left, right, class)
 *    - Tree traversal: 1 node per cycle via pipeline
 *    - Latency per sample = tree depth (typically 5–12 cycles)
 */
#include "dt_accel.h"

/* ── Internal storage (BRAM) ──────────────────────────────────────────── */
static ap_int<8>   node_feature[MAX_NODES];    // feature index (-2 = leaf)
static fix16_t     node_threshold[MAX_NODES];  // comparison threshold
static ap_int<16>  node_left[MAX_NODES];       // left child index
static ap_int<16>  node_right[MAX_NODES];      // right child index
static ap_uint<8>  node_class[MAX_NODES];      // class prediction at this node

/* ── Top-level function ──────────────────────────────────────────────── */
void dt_accel(
    axis_t &in_stream,
    axis_t &out_stream,
    int mode,
    int num_features,
    int num_classes,
    int num_nodes,
    int num_test,
    int &latency_out)
{
#pragma HLS INTERFACE axis     port=in_stream
#pragma HLS INTERFACE axis     port=out_stream
#pragma HLS INTERFACE s_axilite port=mode         bundle=control
#pragma HLS INTERFACE s_axilite port=num_features bundle=control
#pragma HLS INTERFACE s_axilite port=num_classes  bundle=control
#pragma HLS INTERFACE s_axilite port=num_nodes    bundle=control
#pragma HLS INTERFACE s_axilite port=num_test     bundle=control
#pragma HLS INTERFACE s_axilite port=latency_out  bundle=control
#pragma HLS INTERFACE s_axilite port=return       bundle=control

    if (mode == 0) {
        /* ═══════ MODE 0: Load tree structure ═════════════════════════ */
        /* Stream format per node: feature_idx, threshold, left, right, class */
        LOAD_NODES:
        for (int n = 0; n < num_nodes; n++) {
#pragma HLS LOOP_TRIPCOUNT min=10 max=256
#pragma HLS PIPELINE II=5
            node_feature[n]   = (ap_int<8>)read_stream_i32(in_stream);
            node_threshold[n] = read_stream_fix16(in_stream);
            node_left[n]      = (ap_int<16>)read_stream_i32(in_stream);
            node_right[n]     = (ap_int<16>)read_stream_i32(in_stream);
            node_class[n]     = (ap_uint<8>)read_stream_i32(in_stream);
        }
        latency_out = 0;

    } else {
        /* ═══════ MODE 1: Inference ══════════════════════════════════ */
        int cycles = 0;

        INFER_SAMPLES:
        for (int t = 0; t < num_test; t++) {
#pragma HLS LOOP_TRIPCOUNT min=10 max=360

            /* Read test feature vector */
            fix16_t test_feat[MAX_FEATURES];
#pragma HLS ARRAY_PARTITION variable=test_feat complete
            READ_FEAT:
            for (int f = 0; f < num_features; f++) {
#pragma HLS LOOP_TRIPCOUNT min=4 max=64
#pragma HLS PIPELINE II=1
                test_feat[f] = read_stream_fix16(in_stream);
            }

            /* Tree traversal — 1 node per cycle */
            int current = 0;
            TRAVERSE:
            for (int depth = 0; depth < MAX_NODES; depth++) {
#pragma HLS LOOP_TRIPCOUNT min=3 max=20
#pragma HLS PIPELINE II=1
                ap_int<8> fidx = node_feature[current];
                if (fidx < 0) break;    // leaf node (sklearn uses -2)
                fix16_t feat_val = test_feat[(int)fidx];
                if (feat_val <= node_threshold[current])
                    current = (int)node_left[current];
                else
                    current = (int)node_right[current];
                cycles++;
            }

            ap_uint<8> pred = node_class[current];
            bool is_last = (t == num_test - 1);
            write_stream_i32(out_stream, (ap_int<32>)pred, is_last);
        }

        latency_out = cycles;
    }
}
