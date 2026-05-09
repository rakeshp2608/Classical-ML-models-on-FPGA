/*  dt_accel.h — Decision Tree FPGA Accelerator
 *
 *  AXI-Lite : mode, num_features, num_classes, num_nodes, num_test, latency
 *  AXI-Stream IN  : mode 0 → tree structure, mode 1 → test features
 *  AXI-Stream OUT : mode 1 → predicted class per test sample
 *
 *  Parallelism: pipelined node traversal (1 node per clock cycle)
 */
#ifndef DT_ACCEL_H
#define DT_ACCEL_H

#include "../common/common.h"

void dt_accel(
    axis_t &in_stream,
    axis_t &out_stream,
    int mode,
    int num_features,
    int num_classes,
    int num_nodes,
    int num_test,
    int &latency_out
);

#endif
