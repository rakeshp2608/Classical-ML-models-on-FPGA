// dt_model.h -- Decision Tree (Breast Cancer)
#pragma once
#include "common_model.h"

#define DT_N_NODES 29

static const int8_t DT_FEATURE[DT_N_NODES] PROGMEM = {
    20, 27, 13, 13, 14, -2, -2, 11, -2, -2, -2, 21, 24, 23, -2, -2, -2, 28, 2, -2, -2, -2, 11, -2, 26, 1, -2, -2, -2
};
static const int32_t DT_THRESHOLD[DT_N_NODES] PROGMEM = {
    167950, 1359, 915550, 386050, 33, -1, -1, 20070, -1, -1, -1, 256200, 1786, 8171000, -1, -1, -1, 2682, 941500, -1, -1, -1, 4731, -1, 1907, 213500, -1, -1, -1
};
static const int16_t DT_LEFT[DT_N_NODES] PROGMEM = {
    1, 2, 3, 4, 5, -1, -1, 8, -1, -1, -1, 12, 13, 14, -1, -1, -1, 18, 19, -1, -1, -1, 23, -1, 25, 26, -1, -1, -1
};
static const int16_t DT_RIGHT[DT_N_NODES] PROGMEM = {
    22, 11, 10, 7, 6, -1, -1, 9, -1, -1, -1, 17, 16, 15, -1, -1, -1, 21, 20, -1, -1, -1, 24, -1, 28, 27, -1, -1, -1
};
static const int8_t DT_CLASS[DT_N_NODES] PROGMEM = {
    1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 1, 0, 0
};
