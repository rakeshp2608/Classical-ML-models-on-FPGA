// dt_model.h -- Decision Tree on RAW cm data
// Leaf detection: DT_FEATURE[node] < 0 means leaf
#pragma once
#include "common_model.h"

#define DT_N_NODES 15

// feature index; -2 (sklearn TREE_UNDEFINED) = leaf
static const int8_t DT_FEATURE[DT_N_NODES] PROGMEM = {
    2, -2, 3, 2, -2, 0, 1, -2, -2, -2, 2, 1, -2, -2, -2
};

static const int32_t DT_THRESHOLD[DT_N_NODES] PROGMEM = {
    24500, -1, 16500, 49500, -1, 61500, 24500, -1, -1, -1, 48500, 30000, -1, -1, -1
};

static const int16_t DT_LEFT[DT_N_NODES] PROGMEM = {
    1, -1, 3, 4, -1, 6, 7, -1, -1, -1, 11, 12, -1, -1, -1
};

static const int16_t DT_RIGHT[DT_N_NODES] PROGMEM = {
    2, -1, 10, 5, -1, 9, 8, -1, -1, -1, 14, 13, -1, -1, -1
};

static const int8_t DT_CLASS[DT_N_NODES] PROGMEM = {
    0, 0, 1, 1, 1, 2, 1, 2, 1, 2, 2, 2, 2, 1, 2
};
