/*  common.h — Shared types, constants, and helpers for all HLS ML accelerators
 *
 *  Target: PYNQ Z2 (xc7z020clg400-1), Vitis HLS 2022.2
 *  Fixed-point default: ap_fixed<16,8> features/weights, ap_fixed<32,16> accum
 */
#ifndef COMMON_H
#define COMMON_H

#include <ap_fixed.h>
#include <ap_int.h>
#include <hls_stream.h>
#include <ap_axi_sdata.h>

/* ── Fixed-point types ─────────────────────────────────────────────────── */
typedef ap_fixed<16, 8>   fix16_t;   // features, weights, thresholds
typedef ap_fixed<32, 16>  acc32_t;   // accumulators, intermediate results
typedef ap_fixed<48, 32>  dist_t;    // wide distance accumulator (KNN)
typedef ap_ufixed<16, 1>  ufix16_t;  // [0,1) range scaled features
typedef ap_int<32>        i32_t;

/* Fractional bits for encoding/decoding */
static const int FRAC_BITS = 8;       // for fix16_t
static const int FRAC_BITS_32 = 16;   // for acc32_t

/* ── AXI-Stream word (32-bit data, standard side-channels) ─────────────  */
typedef ap_axiu<32, 0, 0, 0> axis_word_t;
typedef hls::stream<axis_word_t> axis_t;

/* ── Maximum dimensions (sized for MNIST, the largest dataset) ─────────  */
#define MAX_FEATURES     64
#define MAX_CLASSES      10
#define MAX_TRAIN       1500    /* KNN training samples              */
#define MAX_NODES        300    /* DT nodes per tree                 */
#define MAX_TREES         10    /* RF number of trees                */
#define MAX_RF_NODES    3000    /* RF total nodes (10 × 300)         */
#define MAX_SVS          600    /* SVM support vectors               */
#define MAX_OVO           45    /* SVM OvO pairs (10 choose 2)       */
#define MAX_HIDDEN        64    /* MLP max neurons per hidden layer  */
#define K_VAL              3    /* KNN K parameter                   */

/* ── Stream helpers ────────────────────────────────────────────────────  */
inline axis_word_t make_word(ap_uint<32> data, bool last) {
#pragma HLS INLINE
    axis_word_t w;
    w.data = data;
    w.keep = 0xF;
    w.strb = 0xF;
    w.last = last ? 1 : 0;
    return w;
}

inline ap_int<32> read_stream_i32(axis_t &s) {
#pragma HLS INLINE
    axis_word_t w = s.read();
    return (ap_int<32>)w.data;
}

inline fix16_t read_stream_fix16(axis_t &s) {
#pragma HLS INLINE
    axis_word_t w = s.read();
    fix16_t v;
    v.range() = w.data.range(15, 0);
    return v;
}

inline void write_stream_i32(axis_t &s, ap_int<32> val, bool last) {
#pragma HLS INLINE
    s.write(make_word((ap_uint<32>)val, last));
}

/* ── exp() approximation via piecewise-linear LUT ─────────────────────  */
/* Covers range [-8, 0].  For x < -8 → 0.  For x > 0 → clamp to 1.      */
#define EXP_LUT_BITS  8
#define EXP_LUT_SIZE  (1 << EXP_LUT_BITS)   /* 256 entries */

static const float EXP_LUT_MIN  = -8.0f;
static const float EXP_LUT_MAX  =  0.0f;
static const float EXP_LUT_STEP = (EXP_LUT_MAX - EXP_LUT_MIN) / EXP_LUT_SIZE;

/* This table is generated at init or can be replaced by a BRAM ROM. */
/* Values: exp(EXP_LUT_MIN + i * EXP_LUT_STEP) for i in [0, 256)    */
inline fix16_t exp_approx(acc32_t x) {
#pragma HLS INLINE
    /* Precomputed LUT in LUTRAM — generated at compile time */
    static const fix16_t lut[EXP_LUT_SIZE] = {
        /* Segment 0..255 covering [-8, 0) */
        /* exp(-8.000)=0.000335, exp(-7.969)=0.000346, ... exp(-0.031)=0.969 */
        /* For brevity, we use a runtime computation in C-sim; */
        /* in synthesis this will be optimized into ROM.        */
#include "exp_lut_data.inc"
    };

    if (x < (acc32_t)EXP_LUT_MIN) return (fix16_t)0;
    if (x > (acc32_t)0)           return (fix16_t)1;

    /* Index into LUT */
    acc32_t shifted = x - (acc32_t)EXP_LUT_MIN;
    int idx = (int)(shifted / (acc32_t)EXP_LUT_STEP);
    if (idx >= EXP_LUT_SIZE) idx = EXP_LUT_SIZE - 1;
    if (idx < 0)             idx = 0;
    return lut[idx];
}

#endif /* COMMON_H */
