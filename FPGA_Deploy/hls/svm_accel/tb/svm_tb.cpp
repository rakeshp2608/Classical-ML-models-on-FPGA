/*  svm_tb.cpp — Testbench for SVM accelerator */
#include <cstdio>
#include <cstdlib>
#include "svm_accel.h"

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
#define TB_SVM_GAMMA_F   TB_IRIS_SVM_GAMMA_F
#define TB_SVM_N_SV      TB_IRIS_SVM_N_SV
#define TB_SVM_SV        TB_IRIS_SVM_SV
#define TB_SVM_DUAL_COEF TB_IRIS_SVM_DUAL_COEF
#define TB_SVM_INTERCEPT TB_IRIS_SVM_INTERCEPT
#define TB_SVM_N_SUPPORT TB_IRIS_SVM_N_SUPPORT
#elif DATASET == wine
#include "../../python/hls_headers/wine/test_wine_data.h"
#define TB_N_FEAT    TB_WINE_N_FEAT
#define TB_N_CLASSES TB_WINE_N_CLASSES
#define TB_N_TEST    TB_WINE_N_TEST
#define TB_X_SC      TB_WINE_X_SC
#define TB_Y          TB_WINE_Y
#define TB_SVM_GAMMA_F   TB_WINE_SVM_GAMMA_F
#define TB_SVM_N_SV      TB_WINE_SVM_N_SV
#define TB_SVM_SV        TB_WINE_SVM_SV
#define TB_SVM_DUAL_COEF TB_WINE_SVM_DUAL_COEF
#define TB_SVM_INTERCEPT TB_WINE_SVM_INTERCEPT
#define TB_SVM_N_SUPPORT TB_WINE_SVM_N_SUPPORT
#elif DATASET == cancer
#include "../../python/hls_headers/cancer/test_cancer_data.h"
#define TB_N_FEAT    TB_CANCER_N_FEAT
#define TB_N_CLASSES TB_CANCER_N_CLASSES
#define TB_N_TEST    TB_CANCER_N_TEST
#define TB_X_SC      TB_CANCER_X_SC
#define TB_Y          TB_CANCER_Y
#define TB_SVM_GAMMA_F   TB_CANCER_SVM_GAMMA_F
#define TB_SVM_N_SV      TB_CANCER_SVM_N_SV
#define TB_SVM_SV        TB_CANCER_SVM_SV
#define TB_SVM_DUAL_COEF TB_CANCER_SVM_DUAL_COEF
#define TB_SVM_INTERCEPT TB_CANCER_SVM_INTERCEPT
#define TB_SVM_N_SUPPORT TB_CANCER_SVM_N_SUPPORT
#elif DATASET == mnist
#include "../../python/hls_headers/mnist/test_mnist_data.h"
#define TB_N_FEAT    TB_MNIST_N_FEAT
#define TB_N_CLASSES TB_MNIST_N_CLASSES
#define TB_N_TEST    TB_MNIST_N_TEST
#define TB_X_SC      TB_MNIST_X_SC
#define TB_Y          TB_MNIST_Y
#define TB_SVM_GAMMA_F   TB_MNIST_SVM_GAMMA_F
#define TB_SVM_N_SV      TB_MNIST_SVM_N_SV
#define TB_SVM_SV        TB_MNIST_SVM_SV
#define TB_SVM_DUAL_COEF TB_MNIST_SVM_DUAL_COEF
#define TB_SVM_INTERCEPT TB_MNIST_SVM_INTERCEPT
#define TB_SVM_N_SUPPORT TB_MNIST_SVM_N_SUPPORT
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
    int n_pairs = TB_N_CLASSES * (TB_N_CLASSES - 1) / 2;

    printf("=== SVM Testbench (%d features, %d classes, %d SVs, %d pairs, %d test) ===\n",
           TB_N_FEAT, TB_N_CLASSES, TB_SVM_N_SV, n_pairs, TB_N_TEST);

    /* Mode 0: Load SVM model */
    /* 1. gamma */
    int32_t gamma_q = (int32_t)(TB_SVM_GAMMA_F * (1 << FRAC_BITS));
    push_fix16(in_stream, gamma_q, false);

    /* 2. n_support per class */
    for (int c = 0; c < TB_N_CLASSES; c++) {
        push_i32(in_stream, TB_SVM_N_SUPPORT[c], false);
    }

    /* 3. intercepts */
    for (int p = 0; p < n_pairs; p++) {
        push_fix16(in_stream, TB_SVM_INTERCEPT[p], false);
    }

    /* 4. support vectors (row-major) */
    for (int s = 0; s < TB_SVM_N_SV; s++) {
        for (int f = 0; f < TB_N_FEAT; f++) {
            push_fix16(in_stream, TB_SVM_SV[s * TB_N_FEAT + f], false);
        }
    }

    /* 5. dual_coef: (n_class-1) × n_sv */
    for (int r = 0; r < TB_N_CLASSES - 1; r++) {
        for (int s = 0; s < TB_SVM_N_SV; s++) {
            bool last = (r == TB_N_CLASSES - 2 && s == TB_SVM_N_SV - 1);
            push_fix16(in_stream, TB_SVM_DUAL_COEF[r * TB_SVM_N_SV + s], last);
        }
    }

    svm_accel(in_stream, out_stream, 0,
              TB_N_FEAT, TB_N_CLASSES, TB_SVM_N_SV, 0, latency);
    printf("  Mode 0 (load): done\n");

    /* Mode 1: Inference (scaled features) */
    for (int t = 0; t < TB_N_TEST; t++) {
        for (int f = 0; f < TB_N_FEAT; f++) {
            push_fix16(in_stream, TB_X_SC[t * TB_N_FEAT + f],
                       (t == TB_N_TEST - 1 && f == TB_N_FEAT - 1));
        }
    }
    svm_accel(in_stream, out_stream, 1,
              TB_N_FEAT, TB_N_CLASSES, TB_SVM_N_SV, TB_N_TEST, latency);

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
    return (accuracy >= 30.0f) ? 0 : 1;
}
