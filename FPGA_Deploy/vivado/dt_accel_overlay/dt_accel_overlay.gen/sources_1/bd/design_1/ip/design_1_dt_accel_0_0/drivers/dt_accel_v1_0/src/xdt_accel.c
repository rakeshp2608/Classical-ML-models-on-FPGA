// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xdt_accel.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XDt_accel_CfgInitialize(XDt_accel *InstancePtr, XDt_accel_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XDt_accel_Start(XDt_accel *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDt_accel_ReadReg(InstancePtr->Control_BaseAddress, XDT_ACCEL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XDt_accel_WriteReg(InstancePtr->Control_BaseAddress, XDT_ACCEL_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XDt_accel_IsDone(XDt_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDt_accel_ReadReg(InstancePtr->Control_BaseAddress, XDT_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XDt_accel_IsIdle(XDt_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDt_accel_ReadReg(InstancePtr->Control_BaseAddress, XDT_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XDt_accel_IsReady(XDt_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDt_accel_ReadReg(InstancePtr->Control_BaseAddress, XDT_ACCEL_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XDt_accel_EnableAutoRestart(XDt_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDt_accel_WriteReg(InstancePtr->Control_BaseAddress, XDT_ACCEL_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XDt_accel_DisableAutoRestart(XDt_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDt_accel_WriteReg(InstancePtr->Control_BaseAddress, XDT_ACCEL_CONTROL_ADDR_AP_CTRL, 0);
}

void XDt_accel_Set_mode(XDt_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDt_accel_WriteReg(InstancePtr->Control_BaseAddress, XDT_ACCEL_CONTROL_ADDR_MODE_DATA, Data);
}

u32 XDt_accel_Get_mode(XDt_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDt_accel_ReadReg(InstancePtr->Control_BaseAddress, XDT_ACCEL_CONTROL_ADDR_MODE_DATA);
    return Data;
}

void XDt_accel_Set_num_features(XDt_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDt_accel_WriteReg(InstancePtr->Control_BaseAddress, XDT_ACCEL_CONTROL_ADDR_NUM_FEATURES_DATA, Data);
}

u32 XDt_accel_Get_num_features(XDt_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDt_accel_ReadReg(InstancePtr->Control_BaseAddress, XDT_ACCEL_CONTROL_ADDR_NUM_FEATURES_DATA);
    return Data;
}

void XDt_accel_Set_num_classes(XDt_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDt_accel_WriteReg(InstancePtr->Control_BaseAddress, XDT_ACCEL_CONTROL_ADDR_NUM_CLASSES_DATA, Data);
}

u32 XDt_accel_Get_num_classes(XDt_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDt_accel_ReadReg(InstancePtr->Control_BaseAddress, XDT_ACCEL_CONTROL_ADDR_NUM_CLASSES_DATA);
    return Data;
}

void XDt_accel_Set_num_nodes(XDt_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDt_accel_WriteReg(InstancePtr->Control_BaseAddress, XDT_ACCEL_CONTROL_ADDR_NUM_NODES_DATA, Data);
}

u32 XDt_accel_Get_num_nodes(XDt_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDt_accel_ReadReg(InstancePtr->Control_BaseAddress, XDT_ACCEL_CONTROL_ADDR_NUM_NODES_DATA);
    return Data;
}

void XDt_accel_Set_num_test(XDt_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDt_accel_WriteReg(InstancePtr->Control_BaseAddress, XDT_ACCEL_CONTROL_ADDR_NUM_TEST_DATA, Data);
}

u32 XDt_accel_Get_num_test(XDt_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDt_accel_ReadReg(InstancePtr->Control_BaseAddress, XDT_ACCEL_CONTROL_ADDR_NUM_TEST_DATA);
    return Data;
}

u32 XDt_accel_Get_latency_out(XDt_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDt_accel_ReadReg(InstancePtr->Control_BaseAddress, XDT_ACCEL_CONTROL_ADDR_LATENCY_OUT_DATA);
    return Data;
}

u32 XDt_accel_Get_latency_out_vld(XDt_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDt_accel_ReadReg(InstancePtr->Control_BaseAddress, XDT_ACCEL_CONTROL_ADDR_LATENCY_OUT_CTRL);
    return Data & 0x1;
}

void XDt_accel_InterruptGlobalEnable(XDt_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDt_accel_WriteReg(InstancePtr->Control_BaseAddress, XDT_ACCEL_CONTROL_ADDR_GIE, 1);
}

void XDt_accel_InterruptGlobalDisable(XDt_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDt_accel_WriteReg(InstancePtr->Control_BaseAddress, XDT_ACCEL_CONTROL_ADDR_GIE, 0);
}

void XDt_accel_InterruptEnable(XDt_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDt_accel_ReadReg(InstancePtr->Control_BaseAddress, XDT_ACCEL_CONTROL_ADDR_IER);
    XDt_accel_WriteReg(InstancePtr->Control_BaseAddress, XDT_ACCEL_CONTROL_ADDR_IER, Register | Mask);
}

void XDt_accel_InterruptDisable(XDt_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDt_accel_ReadReg(InstancePtr->Control_BaseAddress, XDT_ACCEL_CONTROL_ADDR_IER);
    XDt_accel_WriteReg(InstancePtr->Control_BaseAddress, XDT_ACCEL_CONTROL_ADDR_IER, Register & (~Mask));
}

void XDt_accel_InterruptClear(XDt_accel *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDt_accel_WriteReg(InstancePtr->Control_BaseAddress, XDT_ACCEL_CONTROL_ADDR_ISR, Mask);
}

u32 XDt_accel_InterruptGetEnabled(XDt_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDt_accel_ReadReg(InstancePtr->Control_BaseAddress, XDT_ACCEL_CONTROL_ADDR_IER);
}

u32 XDt_accel_InterruptGetStatus(XDt_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDt_accel_ReadReg(InstancePtr->Control_BaseAddress, XDT_ACCEL_CONTROL_ADDR_ISR);
}

