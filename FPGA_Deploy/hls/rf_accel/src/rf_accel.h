/*  rf_accel.h — Random Forest FPGA Accelerator
 *
 *  AXI-Lite : mode, num_features, num_classes, num_trees, num_test, latency
 *  AXI-Stream IN  : mode 0 → forest structure, mode 1 → test features
 *  AXI-Stream OUT : mode 1 → predicted class per test sample
 *
 *  Parallelism: ALL 10 trees traverse in PARALLEL on the same input
 */
#ifndef RF_ACCEL_H
#define RF_ACCEL_H

#include "../common/common.h"

void rf_accel(
    axis_t &in_stream,
    axis_t &out_stream,
    int mode,
    int num_features,
    int num_classes,
    int num_trees,       // max 10
    int num_test,
    int &latency_out
);

#endif
