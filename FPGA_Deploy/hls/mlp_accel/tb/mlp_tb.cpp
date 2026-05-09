/*  mlp_tb.cpp — Testbench for MLP accelerator */
#include <cstdio>
#include <cstdlib>
#include "mlp_accel.h"

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
#define TB_X_SC      TB_IRIS_X_SC
#define TB_Y          TB_IRIS_Y
#define TB_MLP_LAYER_SIZES TB_IRIS_MLP_LAYER_SIZES
#define TB_MLP_N_LAYERS    TB_IRIS_MLP_N_LAYERS
#define TB_MLP_W0    TB_IRIS_MLP_W0
#define TB_MLP_B0    TB_IRIS_MLP_B0
#define TB_MLP_W1    TB_IRIS_MLP_W1
#define TB_MLP_B1    TB_IRIS_MLP_B1
#define TB_MLP_W2    TB_IRIS_MLP_W2
#define TB_MLP_B2    TB_IRIS_MLP_B2
#elif DATASET == wine
#include "../../python/hls_headers/wine/test_wine_data.h"
#define TB_N_FEAT    TB_WINE_N_FEAT
#define TB_N_CLASSES TB_WINE_N_CLASSES
#define TB_N_TEST    TB_WINE_N_TEST
#define TB_X_SC      TB_WINE_X_SC
#define TB_Y          TB_WINE_Y
#define TB_MLP_LAYER_SIZES TB_WINE_MLP_LAYER_SIZES
#define TB_MLP_N_LAYERS    TB_WINE_MLP_N_LAYERS
#define TB_MLP_W0    TB_WINE_MLP_W0
#define TB_MLP_B0    TB_WINE_MLP_B0
#define TB_MLP_W1    TB_WINE_MLP_W1
#define TB_MLP_B1    TB_WINE_MLP_B1
#define TB_MLP_W2    TB_WINE_MLP_W2
#define TB_MLP_B2    TB_WINE_MLP_B2
#elif DATASET == cancer
#include "../../python/hls_headers/cancer/test_cancer_data.h"
#define TB_N_FEAT    TB_CANCER_N_FEAT
#define TB_N_CLASSES TB_CANCER_N_CLASSES
#define TB_N_TEST    TB_CANCER_N_TEST
#define TB_X_SC      TB_CANCER_X_SC
#define TB_Y          TB_CANCER_Y
#define TB_MLP_LAYER_SIZES TB_CANCER_MLP_LAYER_SIZES
#define TB_MLP_N_LAYERS    TB_CANCER_MLP_N_LAYERS
#define TB_MLP_W0    TB_CANCER_MLP_W0
#define TB_MLP_B0    TB_CANCER_MLP_B0
#define TB_MLP_W1    TB_CANCER_MLP_W1
#define TB_MLP_B1    TB_CANCER_MLP_B1
#define TB_MLP_W2    TB_CANCER_MLP_W2
#define TB_MLP_B2    TB_CANCER_MLP_B2
#elif DATASET == mnist
#include "../../python/hls_headers/mnist/test_mnist_data.h"
#define TB_N_FEAT    TB_MNIST_N_FEAT
#define TB_N_CLASSES TB_MNIST_N_CLASSES
#define TB_N_TEST    TB_MNIST_N_TEST
#define TB_X_SC      TB_MNIST_X_SC
#define TB_Y          TB_MNIST_Y
#define TB_MLP_LAYER_SIZES TB_MNIST_MLP_LAYER_SIZES
#define TB_MLP_N_LAYERS    TB_MNIST_MLP_N_LAYERS
#define TB_MLP_W0    TB_MNIST_MLP_W0
#define TB_MLP_B0    TB_MNIST_MLP_B0
#define TB_MLP_W1    TB_MNIST_MLP_W1
#define TB_MLP_B1    TB_MNIST_MLP_B1
#define TB_MLP_W2    TB_MNIST_MLP_W2
#define TB_MLP_B2    TB_MNIST_MLP_B2
#endif

static void push_fix16(axis_t &s, int32_t val, bool last) {
    axis_word_t w;
    w.data = (ap_uint<32>)(val & 0xFFFF); w.keep = 0xF; w.strb = 0xF; w.last = last ? 1 : 0;
    s.write(w);
}

int main() {
    axis_t in_stream, out_stream;
    int latency = 0;

    int n_feat = TB_MLP_LAYER_SIZES[0];
    int h1     = TB_MLP_LAYER_SIZES[1];
    int h2     = TB_MLP_LAYER_SIZES[2];
    int n_out  = TB_MLP_LAYER_SIZES[3];

    printf("=== MLP Testbench (%d→%d→%d→%d, %d test) ===\n",
           n_feat, h1, h2, n_out, TB_N_TEST);

    /* Mode 0: Load weights — W1, B1, W2, B2, Wo, Bo */
    /* W1: h1 × n_feat (row-major) */
    for (int n = 0; n < h1; n++)
        for (int f = 0; f < n_feat; f++)
            push_fix16(in_stream, TB_MLP_W0[n * n_feat + f], false);
    /* B1 */
    for (int n = 0; n < h1; n++)
        push_fix16(in_stream, TB_MLP_B0[n], false);
    /* W2: h2 × h1 */
    for (int n = 0; n < h2; n++)
        for (int m = 0; m < h1; m++)
            push_fix16(in_stream, TB_MLP_W1[n * h1 + m], false);
    /* B2 */
    for (int n = 0; n < h2; n++)
        push_fix16(in_stream, TB_MLP_B1[n], false);
    /* Wo: n_out × h2 */
    for (int c = 0; c < n_out; c++)
        for (int m = 0; m < h2; m++)
            push_fix16(in_stream, TB_MLP_W2[c * h2 + m], false);
    /* Bo */
    for (int c = 0; c < n_out; c++)
        push_fix16(in_stream, TB_MLP_B2[c], (c == n_out - 1));

    mlp_accel(in_stream, out_stream, 0,
              n_feat, n_out, h1, h2, 0, latency);
    printf("  Mode 0 (load): done\n");

    /* Mode 1: Inference (scaled features) */
    for (int t = 0; t < TB_N_TEST; t++)
        for (int f = 0; f < n_feat; f++)
            push_fix16(in_stream, TB_X_SC[t * n_feat + f],
                       (t == TB_N_TEST - 1 && f == n_feat - 1));

    mlp_accel(in_stream, out_stream, 1,
              n_feat, n_out, h1, h2, TB_N_TEST, latency);

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
    return (accuracy >= 40.0f) ? 0 : 1;
}
