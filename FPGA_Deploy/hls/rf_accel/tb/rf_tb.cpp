/*  rf_tb.cpp — Testbench for Random Forest accelerator */
#include <cstdio>
#include <cstdlib>
#include "rf_accel.h"

#define iris   1
#define wine   2
#define cancer 3
#define mnist  4

#ifndef DATASET
#define DATASET iris
#endif

#if DATASET == iris
#include "../../python/hls_headers/iris/test_iris_data.h"
#define TB_N_FEAT    TB_IRIS_N_FEAT
#define TB_N_CLASSES TB_IRIS_N_CLASSES
#define TB_N_TEST    TB_IRIS_N_TEST
#define TB_X_GS      TB_IRIS_X_GS
#define TB_Y          TB_IRIS_Y
#define TB_RF_N_TREES      TB_IRIS_RF_N_TREES
#define TB_RF_OFFSETS      TB_IRIS_RF_OFFSETS
#define TB_RF_FEATURE      TB_IRIS_RF_FEATURE
#define TB_RF_THRESHOLD    TB_IRIS_RF_THRESHOLD
#define TB_RF_LEFT         TB_IRIS_RF_LEFT
#define TB_RF_RIGHT        TB_IRIS_RF_RIGHT
#define TB_RF_CLASS        TB_IRIS_RF_CLASS
#define TB_RF_TREE_NNODES  TB_IRIS_RF_TREE_NNODES
#elif DATASET == wine
#include "../../python/hls_headers/wine/test_wine_data.h"
#define TB_N_FEAT    TB_WINE_N_FEAT
#define TB_N_CLASSES TB_WINE_N_CLASSES
#define TB_N_TEST    TB_WINE_N_TEST
#define TB_X_GS      TB_WINE_X_GS
#define TB_Y          TB_WINE_Y
#define TB_RF_N_TREES      TB_WINE_RF_N_TREES
#define TB_RF_OFFSETS      TB_WINE_RF_OFFSETS
#define TB_RF_FEATURE      TB_WINE_RF_FEATURE
#define TB_RF_THRESHOLD    TB_WINE_RF_THRESHOLD
#define TB_RF_LEFT         TB_WINE_RF_LEFT
#define TB_RF_RIGHT        TB_WINE_RF_RIGHT
#define TB_RF_CLASS        TB_WINE_RF_CLASS
#define TB_RF_TREE_NNODES  TB_WINE_RF_TREE_NNODES
#elif DATASET == cancer
#include "../../python/hls_headers/cancer/test_cancer_data.h"
#define TB_N_FEAT    TB_CANCER_N_FEAT
#define TB_N_CLASSES TB_CANCER_N_CLASSES
#define TB_N_TEST    TB_CANCER_N_TEST
#define TB_X_GS      TB_CANCER_X_GS
#define TB_Y          TB_CANCER_Y
#define TB_RF_N_TREES      TB_CANCER_RF_N_TREES
#define TB_RF_OFFSETS      TB_CANCER_RF_OFFSETS
#define TB_RF_FEATURE      TB_CANCER_RF_FEATURE
#define TB_RF_THRESHOLD    TB_CANCER_RF_THRESHOLD
#define TB_RF_LEFT         TB_CANCER_RF_LEFT
#define TB_RF_RIGHT        TB_CANCER_RF_RIGHT
#define TB_RF_CLASS        TB_CANCER_RF_CLASS
#define TB_RF_TREE_NNODES  TB_CANCER_RF_TREE_NNODES
#elif DATASET == mnist
#include "../../python/hls_headers/mnist/test_mnist_data.h"
#define TB_N_FEAT    TB_MNIST_N_FEAT
#define TB_N_CLASSES TB_MNIST_N_CLASSES
#define TB_N_TEST    TB_MNIST_N_TEST
#define TB_X_GS      TB_MNIST_X_GS
#define TB_Y          TB_MNIST_Y
#define TB_RF_N_TREES      TB_MNIST_RF_N_TREES
#define TB_RF_OFFSETS      TB_MNIST_RF_OFFSETS
#define TB_RF_FEATURE      TB_MNIST_RF_FEATURE
#define TB_RF_THRESHOLD    TB_MNIST_RF_THRESHOLD
#define TB_RF_LEFT         TB_MNIST_RF_LEFT
#define TB_RF_RIGHT        TB_MNIST_RF_RIGHT
#define TB_RF_CLASS        TB_MNIST_RF_CLASS
#define TB_RF_TREE_NNODES  TB_MNIST_RF_TREE_NNODES
#endif

static void push_fix16(axis_t &s, int32_t val, bool last) {
    axis_word_t w;
    w.data = (ap_uint<32>)(val & 0xFFFF); w.keep = 0xF; w.strb = 0xF; w.last = last ? 1 : 0;
    s.write(w);
}
static void push_i32(axis_t &s, int32_t val, bool last) {
    axis_word_t w;
    w.data = (ap_uint<32>)val; w.keep = 0xF; w.strb = 0xF; w.last = last ? 1 : 0;
    s.write(w);
}

int main() {
    axis_t in_stream, out_stream;
    int latency = 0;

    printf("=== RF Testbench (%d features, %d classes, %d trees, %d test) ===\n",
           TB_N_FEAT, TB_N_CLASSES, TB_RF_N_TREES, TB_N_TEST);

    /* Mode 0: Load forest — per tree: n_nodes, then node data */
    for (int tr = 0; tr < TB_RF_N_TREES; tr++) {
        int n_nodes = TB_RF_TREE_NNODES[tr];
        int off = TB_RF_OFFSETS[tr];
        push_i32(in_stream, n_nodes, false);
        for (int n = 0; n < n_nodes; n++) {
            push_i32(in_stream, TB_RF_FEATURE[off + n], false);
            push_fix16(in_stream, TB_RF_THRESHOLD[off + n], false);
            push_i32(in_stream, TB_RF_LEFT[off + n], false);
            push_i32(in_stream, TB_RF_RIGHT[off + n], false);
            bool last = (tr == TB_RF_N_TREES - 1 && n == n_nodes - 1);
            push_i32(in_stream, TB_RF_CLASS[off + n], last);
        }
    }
    rf_accel(in_stream, out_stream, 0,
             TB_N_FEAT, TB_N_CLASSES, TB_RF_N_TREES, 0, latency);
    printf("  Mode 0 (load): done\n");

    /* Mode 1: Inference */
    for (int t = 0; t < TB_N_TEST; t++) {
        for (int f = 0; f < TB_N_FEAT; f++) {
            push_fix16(in_stream, TB_X_GS[t * TB_N_FEAT + f],
                       (t == TB_N_TEST - 1 && f == TB_N_FEAT - 1));
        }
    }
    rf_accel(in_stream, out_stream, 1,
             TB_N_FEAT, TB_N_CLASSES, TB_RF_N_TREES, TB_N_TEST, latency);

    int correct = 0;
    for (int t = 0; t < TB_N_TEST; t++) {
        axis_word_t w = out_stream.read();
        int pred = (int)w.data;
        int expected = TB_Y[t];
        if (pred == expected) correct++;
        else printf("  MISMATCH sample %d: pred=%d expected=%d\n", t, pred, expected);
    }

    float accuracy = 100.0f * correct / TB_N_TEST;
    printf("  Accuracy: %d/%d = %.2f%%\n", correct, TB_N_TEST, accuracy);
    printf("  Latency cycles: %d\n", latency);
    return (accuracy >= 50.0f) ? 0 : 1;
}
