/*  knn_accel.h — K-Nearest Neighbours FPGA Accelerator
 *
 *  AXI-Lite : mode, num_features, num_classes, num_train, num_test, latency
 *  AXI-Stream IN  : mode 0 → training data + labels
 *                    mode 1 → test features
 *  AXI-Stream OUT : mode 1 → predicted class per test sample
 *
 *  Parallelism: full feature unroll (all features computed in parallel)
 *               pipelined training-sample loop (II=1 target)
 */
#ifndef KNN_ACCEL_H
#define KNN_ACCEL_H

#include "../common/common.h"

void knn_accel(
    axis_t &in_stream,
    axis_t &out_stream,
    int mode,           // 0 = load training data, 1 = inference
    int num_features,
    int num_classes,
    int num_train,
    int num_test,
    int &latency_out    // cycle count (written at end of mode 1)
);

#endif
