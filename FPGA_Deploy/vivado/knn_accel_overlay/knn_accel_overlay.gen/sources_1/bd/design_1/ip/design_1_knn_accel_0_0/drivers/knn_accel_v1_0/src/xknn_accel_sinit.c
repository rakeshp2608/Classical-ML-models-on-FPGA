// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xknn_accel.h"

extern XKnn_accel_Config XKnn_accel_ConfigTable[];

XKnn_accel_Config *XKnn_accel_LookupConfig(u16 DeviceId) {
	XKnn_accel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XKNN_ACCEL_NUM_INSTANCES; Index++) {
		if (XKnn_accel_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XKnn_accel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XKnn_accel_Initialize(XKnn_accel *InstancePtr, u16 DeviceId) {
	XKnn_accel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XKnn_accel_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XKnn_accel_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

