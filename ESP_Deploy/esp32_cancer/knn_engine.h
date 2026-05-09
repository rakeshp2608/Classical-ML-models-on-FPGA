// knn_engine.h -- KNN engine (Breast Cancer)
#pragma once
#include <Arduino.h>
#include <pgmspace.h>
#include "utils.h"
#include "models/knn_model.h"

struct KNNNeighbour { int64_t dist2; uint8_t label; };

struct KNNHeap {
    KNNNeighbour data[KNN_K];
    uint8_t size = 0;
    IRAM_ATTR void _swap(uint8_t a, uint8_t b) {
        KNNNeighbour tmp = data[a]; data[a] = data[b]; data[b] = tmp;
    }
    IRAM_ATTR void _sift_down(uint8_t i) {
        while (true) {
            uint8_t largest = i, l = 2*i+1, r = 2*i+2;
            if (l < size && data[l].dist2 > data[largest].dist2) largest = l;
            if (r < size && data[r].dist2 > data[largest].dist2) largest = r;
            if (largest == i) break;
            _swap(i, largest); i = largest;
        }
    }
    IRAM_ATTR void _build() {
        for (int8_t i = (int8_t)(size/2)-1; i >= 0; i--) _sift_down((uint8_t)i);
    }
    IRAM_ATTR void push(int64_t d2, uint8_t lbl) {
        if (size < KNN_K) { data[size++] = {d2, lbl}; if (size == KNN_K) _build(); }
        else if (d2 < data[0].dist2) { data[0] = {d2, lbl}; _sift_down(0); }
    }
    IRAM_ATTR uint8_t vote(float& conf) const {
        uint8_t votes[ML_N_CLASSES] = {};
        for (uint8_t i = 0; i < size; i++)
            if (data[i].label < ML_N_CLASSES) votes[data[i].label]++;
        uint8_t best = 0;
        for (uint8_t c = 1; c < ML_N_CLASSES; c++)
            if (votes[c] > votes[best]) best = c;
        conf = (float)votes[best] * 100.0f / (float)size;
        return best;
    }
};

IRAM_ATTR static int64_t knn_dist2(const int16_t* q16, uint16_t train_idx) {
    int64_t sum = 0;
    for (uint8_t f = 0; f < ML_N_FEAT; f++) {
        int32_t tv = (int32_t)(int16_t)pgm_read_word(&KNN_X_TRAIN[train_idx][f]);
        int32_t d = (int32_t)q16[f] - tv;
        sum += (int64_t)d * d;
    }
    return sum;
}

IRAM_ATTR MLResult knn_predict(const float* raw) {
    int16_t q[ML_N_FEAT];
    for (uint8_t f = 0; f < ML_N_FEAT; f++) {
        int32_t v = (int32_t)roundf(raw[f] * (float)KNN_QSCALE);
        if (v > 32767) v = 32767; else if (v < -32768) v = -32768;
        q[f] = (int16_t)v;
    }
    uint32_t t0 = ccount();
    KNNHeap heap; heap.size = 0;
    for (uint16_t i = 0; i < KNN_N_TRAIN; i++) {
        int64_t d2 = knn_dist2(q, i);
        heap.push(d2, (uint8_t)pgm_read_byte(&KNN_Y_TRAIN[i]));
    }
    float conf;
    uint8_t label = heap.vote(conf);
    uint32_t cyc = ccount() - t0;
    MLResult r; r.label = label; r.confidence = conf;
    r.cycles = cyc; r.us = cycles_to_us(cyc); return r;
}

void knn_eval() { eval_testset_raw("KNN (K=3)", knn_predict, ML_CLASS_NAMES); }
