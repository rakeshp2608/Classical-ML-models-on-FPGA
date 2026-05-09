/*  mlp_accel.h — Multi-Layer Perceptron FPGA Accelerator
 *
 *  AXI-Lite : mode, num_features, num_classes, h1_size, h2_size, num_test, latency
 *  AXI-Stream IN  : mode 0 → weights + biases, mode 1 → test features (pre-scaled)
 *  AXI-Stream OUT : mode 1 → predicted class per test sample
 *
 *  Parallelism:
 *    - All neurons in a layer share same input → weight array partitioned
 *    - Pipelined neuron computation (1 neuron per cycle per layer)
 *    - ReLU: single-cycle max(0, x) — free in hardware
 *    - DATAFLOW between layers for pipelined inference
 */
#ifndef MLP_ACCEL_H
#define MLP_ACCEL_H

#include "../common/common.h"

void mlp_accel(
    axis_t &in_stream,
    axis_t &out_stream,
    int mode,
    int num_features,
    int num_classes,
    int h1_size,        // hidden layer 1 neurons
    int h2_size,        // hidden layer 2 neurons
    int num_test,
    int &latency_out
);

#endif
