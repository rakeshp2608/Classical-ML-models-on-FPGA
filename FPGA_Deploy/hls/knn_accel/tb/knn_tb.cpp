/*  knn_tb.cpp — Testbench for KNN accelerator
 *
 *  Simulates the AXI-Stream flow:
 *    1. Mode 0: stream training data + labels
 *    2. Mode 1: stream test features, collect predictions, check accuracy
 *
 *  Compile: g++ -std=c++14 -I/tools/Xilinx/Vitis_HLS/2022.2/include \
 *           -I../../common -o knn_tb tb/knn_tb.cpp src/knn_accel.cpp
 */
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include "knn_accel.h"

/* Select dataset by #define (default: iris) */
#define iris   1
#define wine   2
#define cancer 3
#define mnist  4

#ifndef DATASET
#define DATASET iris
#endif

/* Include the auto-generated test data */
#if DATASET == iris
#include "../../python/hls_headers/iris/test_iris_data.h"
#define TB_N_FEAT    TB_IRIS_N_FEAT
#define TB_N_CLASSES TB_IRIS_N_CLASSES
#define TB_N_TRAIN   TB_IRIS_N_TRAIN
#define TB_N_TEST    TB_IRIS_N_TEST
#define TB_X_GS      TB_IRIS_X_GS
#define TB_Y          TB_IRIS_Y
#define TB_KNN_TRAIN  TB_IRIS_KNN_TRAIN
#define TB_KNN_LABELS TB_IRIS_KNN_LABELS
#elif DATASET == wine
#include "../../python/hls_headers/wine/test_wine_data.h"
#define TB_N_FEAT    TB_WINE_N_FEAT
#define TB_N_CLASSES TB_WINE_N_CLASSES
#define TB_N_TRAIN   TB_WINE_N_TRAIN
#define TB_N_TEST    TB_WINE_N_TEST
#define TB_X_GS      TB_WINE_X_GS
#define TB_Y          TB_WINE_Y
#define TB_KNN_TRAIN  TB_WINE_KNN_TRAIN
#define TB_KNN_LABELS TB_WINE_KNN_LABELS
#elif DATASET == cancer
#include "../../python/hls_headers/cancer/test_cancer_data.h"
#define TB_N_FEAT    TB_CANCER_N_FEAT
#define TB_N_CLASSES TB_CANCER_N_CLASSES
#define TB_N_TRAIN   TB_CANCER_N_TRAIN
#define TB_N_TEST    TB_CANCER_N_TEST
#define TB_X_GS      TB_CANCER_X_GS
#define TB_Y          TB_CANCER_Y
#define TB_KNN_TRAIN  TB_CANCER_KNN_TRAIN
#define TB_KNN_LABELS TB_CANCER_KNN_LABELS
#elif DATASET == mnist
#include "../../python/hls_headers/mnist/test_mnist_data.h"
#define TB_N_FEAT    TB_MNIST_N_FEAT
#define TB_N_CLASSES TB_MNIST_N_CLASSES
#define TB_N_TRAIN   TB_MNIST_N_TRAIN
#define TB_N_TEST    TB_MNIST_N_TEST
#define TB_X_GS      TB_MNIST_X_GS
#define TB_Y          TB_MNIST_Y
#define TB_KNN_TRAIN  TB_MNIST_KNN_TRAIN
#define TB_KNN_LABELS TB_MNIST_KNN_LABELS
#endif

static void push_fix16(axis_t &s, int32_t val, bool last) {
    axis_word_t w;
    w.data = (ap_uint<32>)(val & 0xFFFF);
    w.keep = 0xF; w.strb = 0xF; w.last = last ? 1 : 0;
    s.write(w);
}

static void push_i32(axis_t &s, int32_t val, bool last) {
    axis_word_t w;
    w.data = (ap_uint<32>)val;
    w.keep = 0xF; w.strb = 0xF; w.last = last ? 1 : 0;
    s.write(w);
}

int main() {
    axis_t in_stream, out_stream;
    int latency = 0;

    printf("=== KNN Testbench (%d features, %d classes, %d train, %d test) ===\n",
           TB_N_FEAT, TB_N_CLASSES, TB_N_TRAIN, TB_N_TEST);

    /* ── Mode 0: Load training data ──────────────────────────────────── */
    for (int s = 0; s < TB_N_TRAIN; s++) {
        for (int f = 0; f < TB_N_FEAT; f++) {
            push_fix16(in_stream, TB_KNN_TRAIN[s * TB_N_FEAT + f], false);
        }
        push_i32(in_stream, TB_KNN_LABELS[s], (s == TB_N_TRAIN - 1));
    }
    knn_accel(in_stream, out_stream, 0,
              TB_N_FEAT, TB_N_CLASSES, TB_N_TRAIN, 0, latency);
    printf("  Mode 0 (load): done\n");

    /* ── Mode 1: Inference ───────────────────────────────────────────── */
    for (int t = 0; t < TB_N_TEST; t++) {
        for (int f = 0; f < TB_N_FEAT; f++) {
            push_fix16(in_stream, TB_X_GS[t * TB_N_FEAT + f],
                       (t == TB_N_TEST - 1 && f == TB_N_FEAT - 1));
        }
    }
    knn_accel(in_stream, out_stream, 1,
              TB_N_FEAT, TB_N_CLASSES, TB_N_TRAIN, TB_N_TEST, latency);

    /* Read predictions and check accuracy */
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

    return (accuracy >= 50.0f) ? 0 : 1;  // pass if accuracy reasonable
}
