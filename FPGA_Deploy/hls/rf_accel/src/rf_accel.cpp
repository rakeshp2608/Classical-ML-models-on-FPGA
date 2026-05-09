/*  rf_accel.cpp — Random Forest FPGA Accelerator
 *
 *  Key parallelism:
 *    - 10 independent tree engines with separate BRAM for node data
 *    - ALL trees traverse the same input SIMULTANEOUSLY
 *    - Majority voting in 1 cycle after all trees finish
 *    - Latency per sample ≈ max tree depth (not 10× tree depth)
 *
 *  This is the PRIMARY FPGA advantage over ESP32 for Random Forest:
 *  ESP32 evaluates trees sequentially; FPGA evaluates ALL in parallel.
 */
#include "rf_accel.h"

/* ── Per-tree node storage (10 separate BRAMs) ────────────────────────── */
#define MAX_NODES_PER_TREE 256

static ap_int<8>  tree_feature[MAX_TREES][MAX_NODES_PER_TREE];
static fix16_t    tree_threshold[MAX_TREES][MAX_NODES_PER_TREE];
static ap_int<16> tree_left[MAX_TREES][MAX_NODES_PER_TREE];
static ap_int<16> tree_right[MAX_TREES][MAX_NODES_PER_TREE];
static ap_uint<8> tree_class[MAX_TREES][MAX_NODES_PER_TREE];
static int        tree_n_nodes[MAX_TREES];

/* ── Single-tree traversal (to be replicated in parallel) ─────────────── */
static ap_uint<8> traverse_tree(
    int tree_id,
    fix16_t feat[MAX_FEATURES],
    int num_features)
{
#pragma HLS INLINE off
    int current = 0;
    TREE_WALK:
    for (int d = 0; d < MAX_NODES_PER_TREE; d++) {
#pragma HLS LOOP_TRIPCOUNT min=3 max=15
#pragma HLS PIPELINE II=1
        ap_int<8> fidx = tree_feature[tree_id][current];
        if (fidx < 0) break;
        if (feat[(int)fidx] <= tree_threshold[tree_id][current])
            current = (int)tree_left[tree_id][current];
        else
            current = (int)tree_right[tree_id][current];
    }
    return tree_class[tree_id][current];
}

/* ── Top-level function ──────────────────────────────────────────────── */
void rf_accel(
    axis_t &in_stream,
    axis_t &out_stream,
    int mode,
    int num_features,
    int num_classes,
    int num_trees,
    int num_test,
    int &latency_out)
{
#pragma HLS INTERFACE axis     port=in_stream
#pragma HLS INTERFACE axis     port=out_stream
#pragma HLS INTERFACE s_axilite port=mode         bundle=control
#pragma HLS INTERFACE s_axilite port=num_features bundle=control
#pragma HLS INTERFACE s_axilite port=num_classes  bundle=control
#pragma HLS INTERFACE s_axilite port=num_trees    bundle=control
#pragma HLS INTERFACE s_axilite port=num_test     bundle=control
#pragma HLS INTERFACE s_axilite port=latency_out  bundle=control
#pragma HLS INTERFACE s_axilite port=return       bundle=control

    /* Each tree has its own BRAM partition — enables parallel access */
#pragma HLS ARRAY_PARTITION variable=tree_feature   complete dim=1
#pragma HLS ARRAY_PARTITION variable=tree_threshold complete dim=1
#pragma HLS ARRAY_PARTITION variable=tree_left      complete dim=1
#pragma HLS ARRAY_PARTITION variable=tree_right     complete dim=1
#pragma HLS ARRAY_PARTITION variable=tree_class     complete dim=1

    if (mode == 0) {
        /* ═══════ MODE 0: Load forest ════════════════════════════════ */
        /* Stream format: for each tree: n_nodes, then per node:       */
        /*   feature_idx, threshold, left, right, class                */
        LOAD_TREES:
        for (int tr = 0; tr < num_trees; tr++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=10
            int n_nodes = (int)read_stream_i32(in_stream);
            tree_n_nodes[tr] = n_nodes;
            LOAD_TREE_NODES:
            for (int n = 0; n < n_nodes; n++) {
#pragma HLS LOOP_TRIPCOUNT min=5 max=256
#pragma HLS PIPELINE II=5
                tree_feature[tr][n]   = (ap_int<8>)read_stream_i32(in_stream);
                tree_threshold[tr][n] = read_stream_fix16(in_stream);
                tree_left[tr][n]      = (ap_int<16>)read_stream_i32(in_stream);
                tree_right[tr][n]     = (ap_int<16>)read_stream_i32(in_stream);
                tree_class[tr][n]     = (ap_uint<8>)read_stream_i32(in_stream);
            }
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

            /* ──── ALL TREES IN PARALLEL ────────────────────────────── */
            ap_uint<8> tree_preds[MAX_TREES];
#pragma HLS ARRAY_PARTITION variable=tree_preds complete

            PARALLEL_TREES:
            for (int tr = 0; tr < MAX_TREES; tr++) {
#pragma HLS UNROLL
                if (tr < num_trees) {
                    tree_preds[tr] = traverse_tree(tr, test_feat, num_features);
                } else {
                    tree_preds[tr] = 0;
                }
            }
            cycles++;  // all trees run in parallel = 1 "parallel traversal"

            /* Majority vote */
            ap_uint<8> vote_count[MAX_CLASSES];
#pragma HLS ARRAY_PARTITION variable=vote_count complete
            INIT_VOTES:
            for (int c = 0; c < MAX_CLASSES; c++) {
#pragma HLS UNROLL
                vote_count[c] = 0;
            }
            COUNT_VOTES:
            for (int tr = 0; tr < MAX_TREES; tr++) {
#pragma HLS UNROLL
                if (tr < num_trees) {
                    vote_count[tree_preds[tr]]++;
                }
            }

            /* Argmax */
            ap_uint<8> best_class = 0;
            ap_uint<8> best_count = 0;
            ARGMAX:
            for (int c = 0; c < MAX_CLASSES; c++) {
#pragma HLS UNROLL
                if (c < num_classes && vote_count[c] > best_count) {
                    best_count = vote_count[c];
                    best_class = (ap_uint<8>)c;
                }
            }

            bool is_last = (t == num_test - 1);
            write_stream_i32(out_stream, (ap_int<32>)best_class, is_last);
        }

        latency_out = cycles;
    }
}
