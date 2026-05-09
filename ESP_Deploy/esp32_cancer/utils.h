// utils.h -- UCI Breast Cancer: 30 features, 2 classes
#pragma once
#include <Arduino.h>
#include <pgmspace.h>
#include "models/common_model.h"

static inline int8_t  pm_i8 (const int8_t*  p){ return (int8_t) pgm_read_byte(p);  }
static inline int16_t pm_i16(const int16_t* p){ return (int16_t)pgm_read_word(p);  }
static inline int32_t pm_i32(const int32_t* p){ return (int32_t)pgm_read_dword(p); }
static inline float   pm_f32(const float*   p){ return pgm_read_float(p);           }

static inline uint32_t IRAM_ATTR ccount() {
    uint32_t v;
    __asm__ __volatile__("rsr %0, ccount" : "=r"(v));
    return v;
}

struct MLResult {
    uint8_t  label;
    float    confidence;
    uint32_t cycles;
    float    us;
};

static inline float cycles_to_us(uint32_t cyc) {
    return (float)cyc / (float)ESP.getCpuFreqMHz();
}

typedef MLResult (*PredictFn)(const float*);

static void scale_and_quantize(
        const float* raw,
        int16_t*     out,
        const float* smin,
        const float* srng,
        uint8_t      n_feat,
        int32_t      qscale) {
    for (uint8_t f = 0; f < n_feat; f++) {
        float mn       = pm_f32(&smin[f]);
        float rng      = pm_f32(&srng[f]);
        float x_scaled = 0.0f;
        if (rng > 1e-9f) x_scaled = (raw[f] - mn) / rng;
        if      (x_scaled < 0.0f) x_scaled = 0.0f;
        else if (x_scaled > 1.0f) x_scaled = 1.0f;
        out[f] = (int16_t)roundf(x_scaled * (float)qscale);
    }
}

static void print_eval_row(
        uint16_t i, uint8_t actual, const MLResult& r,
        const char* const* class_names) {
    char buf[90];
    snprintf(buf, sizeof(buf),
        "%3d | %-10s | %-10s | %4.1f | %6lu%s",
        (int)(i + 1),
        class_names[actual],
        class_names[r.label],
        r.confidence,
        (unsigned long)r.cycles,
        (r.label != actual) ? " WRONG" : ""
    );
    Serial.println(buf);
}

static void print_eval_footer(
        uint16_t correct, uint16_t n_test, uint32_t tot_cyc) {
    Serial.println("----+------------+------------+------+--------");
    Serial.print("  Accuracy : ");
    Serial.print(correct); Serial.print("/"); Serial.print(n_test);
    Serial.print("  (");
    Serial.print(100.0f * (float)correct / (float)n_test, 2);
    Serial.println("%)");
    Serial.print("  Avg cycles  : ");
    Serial.println((unsigned long)(tot_cyc / (uint32_t)n_test));
    Serial.print("  Avg latency : ");
    Serial.print(
        (float)(tot_cyc / (uint32_t)n_test)
        / (float)ESP.getCpuFreqMHz(), 4
    );
    Serial.println(" us");
    Serial.println("==============================================");
}

static void eval_testset_raw(
        const char*        model_name,
        PredictFn          predict_fn,
        const char* const* class_names) {

    uint16_t correct = 0;
    uint32_t tot_cyc = 0;

    Serial.println();
    Serial.println("==============================================");
    Serial.print  ("  Model: "); Serial.println(model_name);
    Serial.println("==============================================");
    Serial.println("  # | Actual     | Predicted  | Conf%| Cycles");
    Serial.println("----+------------+------------+------+--------");

    for (uint16_t i = 0; i < ML_N_TEST; i++) {
        if (i % 5 == 0) { yield(); delay(1); }
        uint8_t actual = (uint8_t)pgm_read_byte(&ML_Y_TEST[i]);
        float raw[ML_N_FEAT];
        for (uint8_t f = 0; f < ML_N_FEAT; f++)
            raw[f] = pm_f32(&ML_X_TEST_RAW[i][f]);
        MLResult r = predict_fn(raw);
        if (r.label >= (uint8_t)ML_N_CLASSES) r.label = 0;
        if (r.label == actual) correct++;
        tot_cyc += r.cycles;
        print_eval_row(i, actual, r, class_names);
    }
    print_eval_footer(correct, ML_N_TEST, tot_cyc);
}

static void eval_testset_scaled(
        const char*        model_name,
        PredictFn          predict_fn,
        const char* const* class_names) {

    uint16_t correct = 0;
    uint32_t tot_cyc = 0;

    Serial.println();
    Serial.println("==============================================");
    Serial.print  ("  Model: "); Serial.println(model_name);
    Serial.println("==============================================");
    Serial.println("  # | Actual     | Predicted  | Conf%| Cycles");
    Serial.println("----+------------+------------+------+--------");

    for (uint16_t i = 0; i < ML_N_TEST; i++) {
        if (i % 5 == 0) { yield(); delay(1); }
        uint8_t actual = (uint8_t)pgm_read_byte(&ML_Y_TEST[i]);
        float raw[ML_N_FEAT];
        for (uint8_t f = 0; f < ML_N_FEAT; f++) {
            int16_t q   = pm_i16(&ML_X_TEST_SC[i][f]);
            float   mn  = pm_f32(&ML_SCALER_MIN[f]);
            float   rng = pm_f32(&ML_SCALER_RANGE[f]);
            raw[f] = ((float)q / (float)ML_QSCALE) * rng + mn;
        }
        MLResult r = predict_fn(raw);
        if (r.label >= (uint8_t)ML_N_CLASSES) r.label = 0;
        if (r.label == actual) correct++;
        tot_cyc += r.cycles;
        print_eval_row(i, actual, r, class_names);
    }
    print_eval_footer(correct, ML_N_TEST, tot_cyc);
}
