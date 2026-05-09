// rf_engine.h -- Random Forest engine (Breast Cancer)
#pragma once
#include <Arduino.h>
#include <pgmspace.h>
#include "utils.h"
#include "models/rf_model.h"

IRAM_ATTR static int rf_traverse_tree(const int32_t* q, uint16_t offset, uint16_t tree_size) {
    uint16_t node = offset; uint16_t guard = 0;
    while (guard++ < tree_size + 5) {
        int8_t feat = pm_i8(&RF_FEATURE[node]);
        if (feat < 0) return (int)pm_i8(&RF_CLASS[node]);
        int32_t thr = pm_i32(&RF_THRESHOLD[node]);
        int16_t left = pm_i16(&RF_LEFT[node]);
        int16_t right = pm_i16(&RF_RIGHT[node]);
        uint16_t next = (q[feat] <= thr) ? (uint16_t)left : (uint16_t)right;
        if (next >= (uint16_t)RF_N_NODES_TOTAL) return 0;
        node = next;
    }
    return 0;
}

IRAM_ATTR MLResult rf_predict(const float* raw) {
    int32_t q[ML_N_FEAT];
    for (uint8_t f = 0; f < ML_N_FEAT; f++)
        q[f] = (int32_t)roundf(raw[f] * (float)ML_QSCALE);
    uint32_t t0 = ccount();
    uint8_t votes[ML_N_CLASSES] = {};
    for (uint8_t t = 0; t < RF_N_TREES; t++) {
        uint16_t off = (uint16_t)pgm_read_word(&RF_OFFSETS[t]);
        uint16_t sz = (uint16_t)pgm_read_word(&RF_SIZES[t]);
        int pred = rf_traverse_tree(q, off, sz);
        if (pred >= 0 && pred < (int)ML_N_CLASSES) votes[(uint8_t)pred]++;
    }
    uint32_t cyc = ccount() - t0;
    uint8_t best = 0;
    for (uint8_t c = 1; c < ML_N_CLASSES; c++)
        if (votes[c] > votes[best]) best = c;
    MLResult r; r.label = best;
    r.confidence = (float)votes[best] * 100.0f / (float)RF_N_TREES;
    r.cycles = cyc; r.us = cycles_to_us(cyc); return r;
}

void rf_eval() { eval_testset_raw("Random Forest", rf_predict, ML_CLASS_NAMES); }
