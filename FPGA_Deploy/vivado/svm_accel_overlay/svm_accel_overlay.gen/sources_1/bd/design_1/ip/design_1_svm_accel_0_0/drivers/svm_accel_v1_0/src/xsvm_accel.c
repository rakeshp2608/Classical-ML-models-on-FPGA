// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xsvm_accel.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSvm_accel_CfgInitialize(XSvm_accel *InstancePtr, XSvm_accel_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSvm_accel_Start(XSvm_accel *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSvm_accel_ReadReg(InstancePtr->Control_BaseAddress, XSVM_ACCEL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XSvm_accel_WriteReg(InstancePtr->Control_BaseAddress, XSVM_ACCEL_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XSvm_accel_IsDone(XSvm_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSvm_accel_ReadReg(InstancePtr->Control_BaseAddress, XSVM_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XSvm_accel_IsIdle(XSvm_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSvm_accel_ReadReg(InstancePtr->Control_BaseAddress, XSVM_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XSvm_accel_IsReady(XSvm_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSvm_accel_ReadReg(InstancePtr->Control_BaseAddress, XSVM_ACCEL_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XSvm_accel_EnableAutoRestart(XSvm_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSvm_accel_WriteReg(InstancePtr->Control_BaseAddress, XSVM_ACCEL_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XSvm_accel_DisableAutoRestart(XSvm_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSvm_accel_WriteReg(InstancePtr->Control_BaseAddress, XSVM_ACCEL_CONTROL_ADDR_AP_CTRL, 0);
}

void XSvm_accel_Set_mode(XSvm_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSvm_accel_WriteReg(InstancePtr->Control_BaseAddress, XSVM_ACCEL_CONTROL_ADDR_MODE_DATA, Data);
}

u32 XSvm_accel_Get_mode(XSvm_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSvm_accel_ReadReg(InstancePtr->Control_BaseAddress, XSVM_ACCEL_CONTROL_ADDR_MODE_DATA);
    return Data;
}

void XSvm_accel_Set_num_features(XSvm_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSvm_accel_WriteReg(InstancePtr->Control_BaseAddress, XSVM_ACCEL_CONTROL_ADDR_NUM_FEATURES_DATA, Data);
}

u32 XSvm_accel_Get_num_features(XSvm_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSvm_accel_ReadReg(InstancePtr->Control_BaseAddress, XSVM_ACCEL_CONTROL_ADDR_NUM_FEATURES_DATA);
    return Data;
}

void XSvm_accel_Set_num_classes(XSvm_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSvm_accel_WriteReg(InstancePtr->Control_BaseAddress, XSVM_ACCEL_CONTROL_ADDR_NUM_CLASSES_DATA, Data);
}

u32 XSvm_accel_Get_num_classes(XSvm_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSvm_accel_ReadReg(InstancePtr->Control_BaseAddress, XSVM_ACCEL_CONTROL_ADDR_NUM_CLASSES_DATA);
    return Data;
}

void XSvm_accel_Set_n_sv(XSvm_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSvm_accel_WriteReg(InstancePtr->Control_BaseAddress, XSVM_ACCEL_CONTROL_ADDR_N_SV_DATA, Data);
}

u32 XSvm_accel_Get_n_sv(XSvm_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSvm_accel_ReadReg(InstancePtr->Control_BaseAddress, XSVM_ACCEL_CONTROL_ADDR_N_SV_DATA);
    return Data;
}

void XSvm_accel_Set_num_test(XSvm_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSvm_accel_WriteReg(InstancePtr->Control_BaseAddress, XSVM_ACCEL_CONTROL_ADDR_NUM_TEST_DATA, Data);
}

u32 XSvm_accel_Get_num_test(XSvm_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSvm_accel_ReadReg(InstancePtr->Control_BaseAddress, XSVM_ACCEL_CONTROL_ADDR_NUM_TEST_DATA);
    return Data;
}

u32 XSvm_accel_Get_latency_out(XSvm_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSvm_accel_ReadReg(InstancePtr->Control_BaseAddress, XSVM_ACCEL_CONTROL_ADDR_LATENCY_OUT_DATA);
    return Data;
}

u32 XSvm_accel_Get_latency_out_vld(XSvm_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSvm_accel_ReadReg(InstancePtr->Control_BaseAddress, XSVM_ACCEL_CONTROL_ADDR_LATENCY_OUT_CTRL);
    return Data & 0x1;
}

void XSvm_accel_InterruptGlobalEnable(XSvm_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSvm_accel_WriteReg(InstancePtr->Control_BaseAddress, XSVM_ACCEL_CONTROL_ADDR_GIE, 1);
}

void XSvm_accel_InterruptGlobalDisable(XSvm_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSvm_accel_WriteReg(InstancePtr->Control_BaseAddress, XSVM_ACCEL_CONTROL_ADDR_GIE, 0);
}

void XSvm_accel_InterruptEnable(XSvm_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSvm_accel_ReadReg(InstancePtr->Control_BaseAddress, XSVM_ACCEL_CONTROL_ADDR_IER);
    XSvm_accel_WriteReg(InstancePtr->Control_BaseAddress, XSVM_ACCEL_CONTROL_ADDR_IER, Register | Mask);
}

void XSvm_accel_InterruptDisable(XSvm_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSvm_accel_ReadReg(InstancePtr->Control_BaseAddress, XSVM_ACCEL_CONTROL_ADDR_IER);
    XSvm_accel_WriteReg(InstancePtr->Control_BaseAddress, XSVM_ACCEL_CONTROL_ADDR_IER, Register & (~Mask));
}

void XSvm_accel_InterruptClear(XSvm_accel *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSvm_accel_WriteReg(InstancePtr->Control_BaseAddress, XSVM_ACCEL_CONTROL_ADDR_ISR, Mask);
}

u32 XSvm_accel_InterruptGetEnabled(XSvm_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSvm_accel_ReadReg(InstancePtr->Control_BaseAddress, XSVM_ACCEL_CONTROL_ADDR_IER);
}

u32 XSvm_accel_InterruptGetStatus(XSvm_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSvm_accel_ReadReg(InstancePtr->Control_BaseAddress, XSVM_ACCEL_CONTROL_ADDR_ISR);
}

