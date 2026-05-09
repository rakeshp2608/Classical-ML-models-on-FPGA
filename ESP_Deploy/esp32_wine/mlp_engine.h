// mlp_engine.h -- MLP engine (Wine)
#pragma once
#include <Arduino.h>
#include <pgmspace.h>
#include <math.h>
#include "utils.h"
#include "models/mlp_model.h"

#define MLP_MAX_UNITS 32

static inline float reluf(float v) { return v > 0.0f ? v : 0.0f; }

IRAM_ATTR static void dense_layer_f(
        const float* in,   uint8_t in_sz,
        float*       out,  uint8_t out_sz,
        const float* W_flat,
        const float* B,
        bool         apply_relu) {
    for (uint8_t j = 0; j < out_sz; j++) {
        float acc = pm_f32(&B[j]);
        for (uint8_t i = 0; i < in_sz; i++)
            acc += pm_f32(&W_flat[(uint16_t)i * out_sz + j]) * in[i];
        out[j] = apply_relu ? reluf(acc) : acc;
    }
}

IRAM_ATTR MLResult mlp_predict(const float* raw) {
    int16_t q16[ML_N_FEAT];
    scale_and_quantize(raw, q16,
                       ML_SCALER_MIN, ML_SCALER_RANGE,
                       ML_N_FEAT, ML_QSCALE);

    float in0[ML_N_FEAT];
    for (uint8_t f = 0; f < ML_N_FEAT; f++)
        in0[f] = (float)q16[f] / (float)ML_QSCALE;

    uint32_t t0 = ccount();

    float h0[MLP_MAX_UNITS], h1[MLP_MAX_UNITS];
    float logits[ML_N_CLASSES];

    dense_layer_f(in0, MLP_L0_SIZE, h0, MLP_L1_SIZE,
                  (const float*)MLP_W0, MLP_B0, true);
    dense_layer_f(h0,  MLP_L1_SIZE, h1, MLP_L2_SIZE,
                  (const float*)MLP_W1, MLP_B1, true);
    dense_layer_f(h1,  MLP_L2_SIZE, logits, ML_N_CLASSES,
                  (const float*)MLP_W2, MLP_B2, false);

    uint32_t cyc = ccount() - t0;

    uint8_t best = 0;
    for (uint8_t c = 1; c < ML_N_CLASSES; c++)
        if (logits[c] > logits[best]) best = c;

    float max_l = logits[best];
    float e[ML_N_CLASSES];
    float sum_e = 0.0f;
    for (uint8_t c = 0; c < ML_N_CLASSES; c++) {
        e[c]  = expf(logits[c] - max_l);
        sum_e += e[c];
    }
    float conf = (sum_e > 0.0f) ? (e[best] / sum_e * 100.0f) : 0.0f;

    MLResult r;
    r.label      = best;
    r.confidence = conf;
    r.cycles     = cyc;
    r.us         = cycles_to_us(cyc);
    return r;
}

void mlp_eval() {
    eval_testset_scaled("MLP 16-16-3", mlp_predict, ML_CLASS_NAMES);
}
