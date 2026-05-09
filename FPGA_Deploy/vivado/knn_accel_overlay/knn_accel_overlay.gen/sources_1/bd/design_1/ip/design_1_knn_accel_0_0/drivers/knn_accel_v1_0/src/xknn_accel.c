// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xknn_accel.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XKnn_accel_CfgInitialize(XKnn_accel *InstancePtr, XKnn_accel_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XKnn_accel_Start(XKnn_accel *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKnn_accel_ReadReg(InstancePtr->Control_BaseAddress, XKNN_ACCEL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XKnn_accel_WriteReg(InstancePtr->Control_BaseAddress, XKNN_ACCEL_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XKnn_accel_IsDone(XKnn_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKnn_accel_ReadReg(InstancePtr->Control_BaseAddress, XKNN_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XKnn_accel_IsIdle(XKnn_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKnn_accel_ReadReg(InstancePtr->Control_BaseAddress, XKNN_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XKnn_accel_IsReady(XKnn_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKnn_accel_ReadReg(InstancePtr->Control_BaseAddress, XKNN_ACCEL_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XKnn_accel_EnableAutoRestart(XKnn_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKnn_accel_WriteReg(InstancePtr->Control_BaseAddress, XKNN_ACCEL_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XKnn_accel_DisableAutoRestart(XKnn_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKnn_accel_WriteReg(InstancePtr->Control_BaseAddress, XKNN_ACCEL_CONTROL_ADDR_AP_CTRL, 0);
}

void XKnn_accel_Set_mode(XKnn_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKnn_accel_WriteReg(InstancePtr->Control_BaseAddress, XKNN_ACCEL_CONTROL_ADDR_MODE_DATA, Data);
}

u32 XKnn_accel_Get_mode(XKnn_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKnn_accel_ReadReg(InstancePtr->Control_BaseAddress, XKNN_ACCEL_CONTROL_ADDR_MODE_DATA);
    return Data;
}

void XKnn_accel_Set_num_features(XKnn_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKnn_accel_WriteReg(InstancePtr->Control_BaseAddress, XKNN_ACCEL_CONTROL_ADDR_NUM_FEATURES_DATA, Data);
}

u32 XKnn_accel_Get_num_features(XKnn_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKnn_accel_ReadReg(InstancePtr->Control_BaseAddress, XKNN_ACCEL_CONTROL_ADDR_NUM_FEATURES_DATA);
    return Data;
}

void XKnn_accel_Set_num_classes(XKnn_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKnn_accel_WriteReg(InstancePtr->Control_BaseAddress, XKNN_ACCEL_CONTROL_ADDR_NUM_CLASSES_DATA, Data);
}

u32 XKnn_accel_Get_num_classes(XKnn_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKnn_accel_ReadReg(InstancePtr->Control_BaseAddress, XKNN_ACCEL_CONTROL_ADDR_NUM_CLASSES_DATA);
    return Data;
}

void XKnn_accel_Set_num_train(XKnn_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKnn_accel_WriteReg(InstancePtr->Control_BaseAddress, XKNN_ACCEL_CONTROL_ADDR_NUM_TRAIN_DATA, Data);
}

u32 XKnn_accel_Get_num_train(XKnn_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKnn_accel_ReadReg(InstancePtr->Control_BaseAddress, XKNN_ACCEL_CONTROL_ADDR_NUM_TRAIN_DATA);
    return Data;
}

void XKnn_accel_Set_num_test(XKnn_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKnn_accel_WriteReg(InstancePtr->Control_BaseAddress, XKNN_ACCEL_CONTROL_ADDR_NUM_TEST_DATA, Data);
}

u32 XKnn_accel_Get_num_test(XKnn_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKnn_accel_ReadReg(InstancePtr->Control_BaseAddress, XKNN_ACCEL_CONTROL_ADDR_NUM_TEST_DATA);
    return Data;
}

u32 XKnn_accel_Get_latency_out(XKnn_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKnn_accel_ReadReg(InstancePtr->Control_BaseAddress, XKNN_ACCEL_CONTROL_ADDR_LATENCY_OUT_DATA);
    return Data;
}

u32 XKnn_accel_Get_latency_out_vld(XKnn_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKnn_accel_ReadReg(InstancePtr->Control_BaseAddress, XKNN_ACCEL_CONTROL_ADDR_LATENCY_OUT_CTRL);
    return Data & 0x1;
}

void XKnn_accel_InterruptGlobalEnable(XKnn_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKnn_accel_WriteReg(InstancePtr->Control_BaseAddress, XKNN_ACCEL_CONTROL_ADDR_GIE, 1);
}

void XKnn_accel_InterruptGlobalDisable(XKnn_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKnn_accel_WriteReg(InstancePtr->Control_BaseAddress, XKNN_ACCEL_CONTROL_ADDR_GIE, 0);
}

void XKnn_accel_InterruptEnable(XKnn_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XKnn_accel_ReadReg(InstancePtr->Control_BaseAddress, XKNN_ACCEL_CONTROL_ADDR_IER);
    XKnn_accel_WriteReg(InstancePtr->Control_BaseAddress, XKNN_ACCEL_CONTROL_ADDR_IER, Register | Mask);
}

void XKnn_accel_InterruptDisable(XKnn_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XKnn_accel_ReadReg(InstancePtr->Control_BaseAddress, XKNN_ACCEL_CONTROL_ADDR_IER);
    XKnn_accel_WriteReg(InstancePtr->Control_BaseAddress, XKNN_ACCEL_CONTROL_ADDR_IER, Register & (~Mask));
}

void XKnn_accel_InterruptClear(XKnn_accel *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKnn_accel_WriteReg(InstancePtr->Control_BaseAddress, XKNN_ACCEL_CONTROL_ADDR_ISR, Mask);
}

u32 XKnn_accel_InterruptGetEnabled(XKnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XKnn_accel_ReadReg(InstancePtr->Control_BaseAddress, XKNN_ACCEL_CONTROL_ADDR_IER);
}

u32 XKnn_accel_InterruptGetStatus(XKnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XKnn_accel_ReadReg(InstancePtr->Control_BaseAddress, XKNN_ACCEL_CONTROL_ADDR_ISR);
}

