// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of mode
//        bit 31~0 - mode[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of num_features
//        bit 31~0 - num_features[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of num_classes
//        bit 31~0 - num_classes[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of num_train
//        bit 31~0 - num_train[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of num_test
//        bit 31~0 - num_test[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of latency_out
//        bit 31~0 - latency_out[31:0] (Read)
// 0x3c : Control signal of latency_out
//        bit 0  - latency_out_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XKNN_ACCEL_CONTROL_ADDR_AP_CTRL           0x00
#define XKNN_ACCEL_CONTROL_ADDR_GIE               0x04
#define XKNN_ACCEL_CONTROL_ADDR_IER               0x08
#define XKNN_ACCEL_CONTROL_ADDR_ISR               0x0c
#define XKNN_ACCEL_CONTROL_ADDR_MODE_DATA         0x10
#define XKNN_ACCEL_CONTROL_BITS_MODE_DATA         32
#define XKNN_ACCEL_CONTROL_ADDR_NUM_FEATURES_DATA 0x18
#define XKNN_ACCEL_CONTROL_BITS_NUM_FEATURES_DATA 32
#define XKNN_ACCEL_CONTROL_ADDR_NUM_CLASSES_DATA  0x20
#define XKNN_ACCEL_CONTROL_BITS_NUM_CLASSES_DATA  32
#define XKNN_ACCEL_CONTROL_ADDR_NUM_TRAIN_DATA    0x28
#define XKNN_ACCEL_CONTROL_BITS_NUM_TRAIN_DATA    32
#define XKNN_ACCEL_CONTROL_ADDR_NUM_TEST_DATA     0x30
#define XKNN_ACCEL_CONTROL_BITS_NUM_TEST_DATA     32
#define XKNN_ACCEL_CONTROL_ADDR_LATENCY_OUT_DATA  0x38
#define XKNN_ACCEL_CONTROL_BITS_LATENCY_OUT_DATA  32
#define XKNN_ACCEL_CONTROL_ADDR_LATENCY_OUT_CTRL  0x3c

