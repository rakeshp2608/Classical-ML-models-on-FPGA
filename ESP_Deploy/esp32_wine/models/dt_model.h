// dt_model.h -- Decision Tree (Wine)
#pragma once
#include "common_model.h"

#define DT_N_NODES 15

static const int8_t DT_FEATURE[DT_N_NODES] PROGMEM = {
    9, 2, 11, -2, -2, -2, 6, 3, -2, -2, 12, 1, -2, -2, -2
};
static const int32_t DT_THRESHOLD[DT_N_NODES] PROGMEM = {
    38200, 30000, 37300, -1, -1, -1, 15800, 176500, -1, -1, 7245000, 39200, -1, -1, -1
};
static const int16_t DT_LEFT[DT_N_NODES] PROGMEM = {
    1, 2, 3, -1, -1, -1, 7, 8, -1, -1, 11, 12, -1, -1, -1
};
static const int16_t DT_RIGHT[DT_N_NODES] PROGMEM = {
    6, 5, 4, -1, -1, -1, 10, 9, -1, -1, 14, 13, -1, -1, -1
};
static const int8_t DT_CLASS[DT_N_NODES] PROGMEM = {
    1, 1, 1, 1, 0, 0, 0, 2, 1, 2, 0, 1, 1, 0, 0
};
