// svm_model.h -- SVM OvO on SCALED data
// 3 binary classifiers: [0vs1, 0vs2, 1vs2]
#pragma once
#include "common_model.h"

#define SVM_N_SV         27
#define SVM_N_CLF        3
#define SVM_TOTAL_CLF_SV 54
#define SVM_GAMMA_F      3.54738708f
#define SVM_QSCALE_F     10000.0f

// All support vectors quantized
static const int16_t SVM_SV[SVM_N_SV][ML_N_FEAT] PROGMEM = {
    {3889, 10000, 690, 1250},
    {556, 1250, 345, 833},
    {2222, 5417, 1034, 1667},
    {1944, 6250, 862, 2083},
    {2500, 8750, 690, 0},
    {0, 4167, 0, 0},
    {1944, 0, 4138, 3750},
    {5556, 2083, 6552, 5833},
    {4444, 5000, 6379, 7083},
    {7500, 5000, 6207, 5417},
    {4722, 2917, 6897, 6250},
    {3611, 4167, 5862, 5833},
    {4722, 5833, 5862, 6250},
    {5278, 833, 5862, 5833},
    {2222, 2083, 3276, 4167},
    {7222, 4583, 6552, 5833},
    {1667, 2083, 5862, 6667},
    {5556, 3333, 6897, 5833},
    {10000, 7500, 9138, 7917},
    {5278, 5833, 7414, 9167},
    {5556, 5417, 8448, 10000},
    {4444, 4167, 6897, 7083},
    {4722, 833, 6724, 5833},
    {8056, 4167, 8103, 6250},
    {5556, 2917, 6552, 7083},
    {9444, 2500, 10000, 9167},
    {5278, 3333, 6379, 7083}
};

// Per-classifier: number of SVs
static const uint8_t SVM_CLF_N_SV[SVM_N_CLF] PROGMEM = {
    16, 17, 21
};

// Per-classifier: offset into flat arrays
static const uint16_t SVM_CLF_OFFSET[SVM_N_CLF] PROGMEM = {
    0, 16, 33
};

// Flat SV indices for each classifier
static const int16_t SVM_CLF_SV_IDX[SVM_TOTAL_CLF_SV] PROGMEM = {
    0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 0, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26
};

// Flat alpha coefficients for each classifier
static const float SVM_CLF_COEF[SVM_TOTAL_CLF_SV] PROGMEM = {
    0.61584568f, 1.32130194f, 0.95208198f, 0.00000000f, 0.00000000f, 0.00000000f, -0.35028994f, -0.00000000f, -0.00000000f, -0.68344891f, -0.00000000f, -0.00000000f, -0.23789489f, -0.00000000f, -1.61759591f, -0.00000000f, 0.90938509f, 0.96163714f, 0.00000000f, 0.32029930f, 0.00592975f, 0.13586311f, -0.72225088f, -0.00000000f, -0.56616616f, -0.15683796f, -0.12937260f, -0.00000000f, -0.28675753f, -0.00000000f, -0.00000000f, -0.47172928f, -0.00000000f, 0.00000000f, 10.00000000f, 10.00000000f, 0.00000000f, 10.00000000f, 2.58954978f, 0.00000000f, 9.89979362f, 0.00000000f, 8.83833313f, -2.16876745f, -10.00000000f, -0.63088298f, -0.00000000f, -0.00000000f, -8.66061974f, -10.00000000f, -4.36745596f, -5.49995041f, -0.00000000f, -10.00000000f
};

// Intercepts: one per classifier
static const float SVM_INTERCEPT[SVM_N_CLF] PROGMEM = {
    0.07054877f, -0.12986764f, 0.12851262f
};

// Which class wins when decision > 0 / <= 0
// clf0: 0vs1, clf1: 0vs2, clf2: 1vs2
static const uint8_t SVM_CLF_POS[SVM_N_CLF] PROGMEM = {0, 0, 1};
static const uint8_t SVM_CLF_NEG[SVM_N_CLF] PROGMEM = {1, 2, 2};
