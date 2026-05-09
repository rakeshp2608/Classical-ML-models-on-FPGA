// svm_engine.h -- SVM OvO engine (Wine)
#pragma once
#include <Arduino.h>
#include <pgmspace.h>
#include <math.h>
#include "utils.h"
#include "models/svm_model.h"

IRAM_ATTR static float rbf_kernel_single(
        const int16_t* q, uint16_t sv_idx) {
    float sq = 0.0f;
    for (uint8_t f = 0; f < ML_N_FEAT; f++) {
        float qf  = (float)q[f]                        / SVM_QSCALE_F;
        float svf = (float)pm_i16(&SVM_SV[sv_idx][f]) / SVM_QSCALE_F;
        float d   = qf - svf;
        sq       += d * d;
    }
    return expf(-SVM_GAMMA_F * sq);
}

IRAM_ATTR MLResult svm_predict(const float* raw) {
    int16_t q[ML_N_FEAT];
    scale_and_quantize(raw, q,
                       ML_SCALER_MIN, ML_SCALER_RANGE,
                       ML_N_FEAT, ML_QSCALE);

    uint32_t t0 = ccount();

    float K[SVM_N_SV];
    for (uint16_t i = 0; i < SVM_N_SV; i++)
        K[i] = rbf_kernel_single(q, i);

    uint8_t votes[ML_N_CLASSES] = {};

    for (uint8_t clf = 0; clf < SVM_N_CLF; clf++) {
        uint16_t off = (uint16_t)pgm_read_word(&SVM_CLF_OFFSET[clf]);
        uint8_t  ns  = (uint8_t) pgm_read_byte(&SVM_CLF_N_SV[clf]);
        float    b   = pm_f32(&SVM_INTERCEPT[clf]);

        float dec = b;
        for (uint8_t k = 0; k < ns; k++) {
            uint16_t sv_idx = (uint16_t)(int16_t)pgm_read_word(
                &SVM_CLF_SV_IDX[off + k]);
            float coef = pm_f32(&SVM_CLF_COEF[off + k]);
            dec += coef * K[sv_idx];
        }

        uint8_t win = (dec > 0.0f)
                    ? (uint8_t)pgm_read_byte(&SVM_CLF_POS[clf])
                    : (uint8_t)pgm_read_byte(&SVM_CLF_NEG[clf]);
        votes[win]++;
    }

    uint32_t cyc = ccount() - t0;

    uint8_t best = 0;
    for (uint8_t c = 1; c < ML_N_CLASSES; c++)
        if (votes[c] > votes[best]) best = c;

    float conf = (float)votes[best] * 100.0f / (float)SVM_N_CLF;

    MLResult r;
    r.label      = best;
    r.confidence = conf;
    r.cycles     = cyc;
    r.us         = cycles_to_us(cyc);
    return r;
}

void svm_eval() {
    eval_testset_scaled("SVM RBF OvO", svm_predict, ML_CLASS_NAMES);
}
