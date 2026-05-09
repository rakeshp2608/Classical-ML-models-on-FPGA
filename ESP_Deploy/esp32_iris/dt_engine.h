// dt_engine.h -- FIXED: leaf check via feature < 0
#pragma once
#include <Arduino.h>
#include <pgmspace.h>
#include "utils.h"
#include "models/dt_model.h"

IRAM_ATTR static int dt_traverse(const int32_t* q) {
    int16_t  node  = 0;
    uint16_t guard = 0;
    while (guard++ < (uint16_t)(DT_N_NODES + 5)) {
        // LEAF DETECTION: feature < 0 (sklearn stores -2 for leaves)
        int8_t feat = pm_i8(&DT_FEATURE[node]);
        if (feat < 0) {
            return (int)pm_i8(&DT_CLASS[node]);
        }
        int32_t thr   = pm_i32(&DT_THRESHOLD[node]);
        int16_t left  = pm_i16(&DT_LEFT[node]);
        int16_t right = pm_i16(&DT_RIGHT[node]);

        node = (q[feat] <= thr) ? left : right;

        if (node < 0 || node >= (int16_t)DT_N_NODES) return 0;
    }
    return 0;
}

IRAM_ATTR MLResult dt_predict(const float* raw) {
    // raw is in cm — quantize directly
    int32_t q[ML_N_FEAT];
    for (uint8_t f = 0; f < ML_N_FEAT; f++)
        q[f] = (int32_t)roundf(raw[f] * (float)ML_QSCALE);

    uint32_t t0    = ccount();
    int      label = dt_traverse(q);
    uint32_t cyc   = ccount() - t0;

    MLResult r;
    r.label      = (uint8_t)label;
    r.confidence = 100.0f;
    r.cycles     = cyc;
    r.us         = cycles_to_us(cyc);
    return r;
}

void dt_eval() {
    eval_testset_raw("Decision Tree", dt_predict, ML_CLASS_NAMES);
}