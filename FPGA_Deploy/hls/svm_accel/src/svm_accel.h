/*  svm_accel.h — SVM (RBF Kernel, One-vs-One) FPGA Accelerator
 *
 *  AXI-Lite : mode, num_features, num_classes, n_sv, num_test, latency
 *  AXI-Stream IN  : mode 0 → SVM model params, mode 1 → test features (pre-scaled)
 *  AXI-Stream OUT : mode 1 → predicted class per test sample
 *
 *  Parallelism:
 *    - Feature subtraction fully unrolled
 *    - SV processing pipelined (II=1)
 *    - exp() via piecewise LUT (single-cycle)
 */
#ifndef SVM_ACCEL_H
#define SVM_ACCEL_H

#include "../common/common.h"

void svm_accel(
    axis_t &in_stream,
    axis_t &out_stream,
    int mode,
    int num_features,
    int num_classes,
    int n_sv,           // total number of support vectors
    int num_test,
    int &latency_out
);

#endif
