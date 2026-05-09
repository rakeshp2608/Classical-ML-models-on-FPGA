// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xmlp_accel.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMlp_accel_CfgInitialize(XMlp_accel *InstancePtr, XMlp_accel_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMlp_accel_Start(XMlp_accel *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMlp_accel_ReadReg(InstancePtr->Control_BaseAddress, XMLP_ACCEL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XMlp_accel_WriteReg(InstancePtr->Control_BaseAddress, XMLP_ACCEL_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMlp_accel_IsDone(XMlp_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMlp_accel_ReadReg(InstancePtr->Control_BaseAddress, XMLP_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMlp_accel_IsIdle(XMlp_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMlp_accel_ReadReg(InstancePtr->Control_BaseAddress, XMLP_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMlp_accel_IsReady(XMlp_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMlp_accel_ReadReg(InstancePtr->Control_BaseAddress, XMLP_ACCEL_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMlp_accel_EnableAutoRestart(XMlp_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMlp_accel_WriteReg(InstancePtr->Control_BaseAddress, XMLP_ACCEL_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XMlp_accel_DisableAutoRestart(XMlp_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMlp_accel_WriteReg(InstancePtr->Control_BaseAddress, XMLP_ACCEL_CONTROL_ADDR_AP_CTRL, 0);
}

void XMlp_accel_Set_mode(XMlp_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMlp_accel_WriteReg(InstancePtr->Control_BaseAddress, XMLP_ACCEL_CONTROL_ADDR_MODE_DATA, Data);
}

u32 XMlp_accel_Get_mode(XMlp_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMlp_accel_ReadReg(InstancePtr->Control_BaseAddress, XMLP_ACCEL_CONTROL_ADDR_MODE_DATA);
    return Data;
}

void XMlp_accel_Set_num_features(XMlp_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMlp_accel_WriteReg(InstancePtr->Control_BaseAddress, XMLP_ACCEL_CONTROL_ADDR_NUM_FEATURES_DATA, Data);
}

u32 XMlp_accel_Get_num_features(XMlp_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMlp_accel_ReadReg(InstancePtr->Control_BaseAddress, XMLP_ACCEL_CONTROL_ADDR_NUM_FEATURES_DATA);
    return Data;
}

void XMlp_accel_Set_num_classes(XMlp_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMlp_accel_WriteReg(InstancePtr->Control_BaseAddress, XMLP_ACCEL_CONTROL_ADDR_NUM_CLASSES_DATA, Data);
}

u32 XMlp_accel_Get_num_classes(XMlp_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMlp_accel_ReadReg(InstancePtr->Control_BaseAddress, XMLP_ACCEL_CONTROL_ADDR_NUM_CLASSES_DATA);
    return Data;
}

void XMlp_accel_Set_h1_size(XMlp_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMlp_accel_WriteReg(InstancePtr->Control_BaseAddress, XMLP_ACCEL_CONTROL_ADDR_H1_SIZE_DATA, Data);
}

u32 XMlp_accel_Get_h1_size(XMlp_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMlp_accel_ReadReg(InstancePtr->Control_BaseAddress, XMLP_ACCEL_CONTROL_ADDR_H1_SIZE_DATA);
    return Data;
}

void XMlp_accel_Set_h2_size(XMlp_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMlp_accel_WriteReg(InstancePtr->Control_BaseAddress, XMLP_ACCEL_CONTROL_ADDR_H2_SIZE_DATA, Data);
}

u32 XMlp_accel_Get_h2_size(XMlp_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMlp_accel_ReadReg(InstancePtr->Control_BaseAddress, XMLP_ACCEL_CONTROL_ADDR_H2_SIZE_DATA);
    return Data;
}

void XMlp_accel_Set_num_test(XMlp_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMlp_accel_WriteReg(InstancePtr->Control_BaseAddress, XMLP_ACCEL_CONTROL_ADDR_NUM_TEST_DATA, Data);
}

u32 XMlp_accel_Get_num_test(XMlp_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMlp_accel_ReadReg(InstancePtr->Control_BaseAddress, XMLP_ACCEL_CONTROL_ADDR_NUM_TEST_DATA);
    return Data;
}

u32 XMlp_accel_Get_latency_out(XMlp_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMlp_accel_ReadReg(InstancePtr->Control_BaseAddress, XMLP_ACCEL_CONTROL_ADDR_LATENCY_OUT_DATA);
    return Data;
}

u32 XMlp_accel_Get_latency_out_vld(XMlp_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMlp_accel_ReadReg(InstancePtr->Control_BaseAddress, XMLP_ACCEL_CONTROL_ADDR_LATENCY_OUT_CTRL);
    return Data & 0x1;
}

void XMlp_accel_InterruptGlobalEnable(XMlp_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMlp_accel_WriteReg(InstancePtr->Control_BaseAddress, XMLP_ACCEL_CONTROL_ADDR_GIE, 1);
}

void XMlp_accel_InterruptGlobalDisable(XMlp_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMlp_accel_WriteReg(InstancePtr->Control_BaseAddress, XMLP_ACCEL_CONTROL_ADDR_GIE, 0);
}

void XMlp_accel_InterruptEnable(XMlp_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMlp_accel_ReadReg(InstancePtr->Control_BaseAddress, XMLP_ACCEL_CONTROL_ADDR_IER);
    XMlp_accel_WriteReg(InstancePtr->Control_BaseAddress, XMLP_ACCEL_CONTROL_ADDR_IER, Register | Mask);
}

void XMlp_accel_InterruptDisable(XMlp_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMlp_accel_ReadReg(InstancePtr->Control_BaseAddress, XMLP_ACCEL_CONTROL_ADDR_IER);
    XMlp_accel_WriteReg(InstancePtr->Control_BaseAddress, XMLP_ACCEL_CONTROL_ADDR_IER, Register & (~Mask));
}

void XMlp_accel_InterruptClear(XMlp_accel *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMlp_accel_WriteReg(InstancePtr->Control_BaseAddress, XMLP_ACCEL_CONTROL_ADDR_ISR, Mask);
}

u32 XMlp_accel_InterruptGetEnabled(XMlp_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMlp_accel_ReadReg(InstancePtr->Control_BaseAddress, XMLP_ACCEL_CONTROL_ADDR_IER);
}

u32 XMlp_accel_InterruptGetStatus(XMlp_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMlp_accel_ReadReg(InstancePtr->Control_BaseAddress, XMLP_ACCEL_CONTROL_ADDR_ISR);
}

