// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xrf_accel.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XRf_accel_CfgInitialize(XRf_accel *InstancePtr, XRf_accel_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XRf_accel_Start(XRf_accel *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRf_accel_ReadReg(InstancePtr->Control_BaseAddress, XRF_ACCEL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XRf_accel_WriteReg(InstancePtr->Control_BaseAddress, XRF_ACCEL_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XRf_accel_IsDone(XRf_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRf_accel_ReadReg(InstancePtr->Control_BaseAddress, XRF_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XRf_accel_IsIdle(XRf_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRf_accel_ReadReg(InstancePtr->Control_BaseAddress, XRF_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XRf_accel_IsReady(XRf_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRf_accel_ReadReg(InstancePtr->Control_BaseAddress, XRF_ACCEL_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XRf_accel_EnableAutoRestart(XRf_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRf_accel_WriteReg(InstancePtr->Control_BaseAddress, XRF_ACCEL_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XRf_accel_DisableAutoRestart(XRf_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRf_accel_WriteReg(InstancePtr->Control_BaseAddress, XRF_ACCEL_CONTROL_ADDR_AP_CTRL, 0);
}

void XRf_accel_Set_mode(XRf_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRf_accel_WriteReg(InstancePtr->Control_BaseAddress, XRF_ACCEL_CONTROL_ADDR_MODE_DATA, Data);
}

u32 XRf_accel_Get_mode(XRf_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRf_accel_ReadReg(InstancePtr->Control_BaseAddress, XRF_ACCEL_CONTROL_ADDR_MODE_DATA);
    return Data;
}

void XRf_accel_Set_num_features(XRf_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRf_accel_WriteReg(InstancePtr->Control_BaseAddress, XRF_ACCEL_CONTROL_ADDR_NUM_FEATURES_DATA, Data);
}

u32 XRf_accel_Get_num_features(XRf_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRf_accel_ReadReg(InstancePtr->Control_BaseAddress, XRF_ACCEL_CONTROL_ADDR_NUM_FEATURES_DATA);
    return Data;
}

void XRf_accel_Set_num_classes(XRf_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRf_accel_WriteReg(InstancePtr->Control_BaseAddress, XRF_ACCEL_CONTROL_ADDR_NUM_CLASSES_DATA, Data);
}

u32 XRf_accel_Get_num_classes(XRf_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRf_accel_ReadReg(InstancePtr->Control_BaseAddress, XRF_ACCEL_CONTROL_ADDR_NUM_CLASSES_DATA);
    return Data;
}

void XRf_accel_Set_num_trees(XRf_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRf_accel_WriteReg(InstancePtr->Control_BaseAddress, XRF_ACCEL_CONTROL_ADDR_NUM_TREES_DATA, Data);
}

u32 XRf_accel_Get_num_trees(XRf_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRf_accel_ReadReg(InstancePtr->Control_BaseAddress, XRF_ACCEL_CONTROL_ADDR_NUM_TREES_DATA);
    return Data;
}

void XRf_accel_Set_num_test(XRf_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRf_accel_WriteReg(InstancePtr->Control_BaseAddress, XRF_ACCEL_CONTROL_ADDR_NUM_TEST_DATA, Data);
}

u32 XRf_accel_Get_num_test(XRf_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRf_accel_ReadReg(InstancePtr->Control_BaseAddress, XRF_ACCEL_CONTROL_ADDR_NUM_TEST_DATA);
    return Data;
}

u32 XRf_accel_Get_latency_out(XRf_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRf_accel_ReadReg(InstancePtr->Control_BaseAddress, XRF_ACCEL_CONTROL_ADDR_LATENCY_OUT_DATA);
    return Data;
}

u32 XRf_accel_Get_latency_out_vld(XRf_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRf_accel_ReadReg(InstancePtr->Control_BaseAddress, XRF_ACCEL_CONTROL_ADDR_LATENCY_OUT_CTRL);
    return Data & 0x1;
}

void XRf_accel_InterruptGlobalEnable(XRf_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRf_accel_WriteReg(InstancePtr->Control_BaseAddress, XRF_ACCEL_CONTROL_ADDR_GIE, 1);
}

void XRf_accel_InterruptGlobalDisable(XRf_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRf_accel_WriteReg(InstancePtr->Control_BaseAddress, XRF_ACCEL_CONTROL_ADDR_GIE, 0);
}

void XRf_accel_InterruptEnable(XRf_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XRf_accel_ReadReg(InstancePtr->Control_BaseAddress, XRF_ACCEL_CONTROL_ADDR_IER);
    XRf_accel_WriteReg(InstancePtr->Control_BaseAddress, XRF_ACCEL_CONTROL_ADDR_IER, Register | Mask);
}

void XRf_accel_InterruptDisable(XRf_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XRf_accel_ReadReg(InstancePtr->Control_BaseAddress, XRF_ACCEL_CONTROL_ADDR_IER);
    XRf_accel_WriteReg(InstancePtr->Control_BaseAddress, XRF_ACCEL_CONTROL_ADDR_IER, Register & (~Mask));
}

void XRf_accel_InterruptClear(XRf_accel *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRf_accel_WriteReg(InstancePtr->Control_BaseAddress, XRF_ACCEL_CONTROL_ADDR_ISR, Mask);
}

u32 XRf_accel_InterruptGetEnabled(XRf_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XRf_accel_ReadReg(InstancePtr->Control_BaseAddress, XRF_ACCEL_CONTROL_ADDR_IER);
}

u32 XRf_accel_InterruptGetStatus(XRf_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XRf_accel_ReadReg(InstancePtr->Control_BaseAddress, XRF_ACCEL_CONTROL_ADDR_ISR);
}

