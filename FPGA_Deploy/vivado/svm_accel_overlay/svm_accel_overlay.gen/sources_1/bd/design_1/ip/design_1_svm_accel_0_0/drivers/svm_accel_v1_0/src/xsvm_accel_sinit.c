// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xsvm_accel.h"

extern XSvm_accel_Config XSvm_accel_ConfigTable[];

XSvm_accel_Config *XSvm_accel_LookupConfig(u16 DeviceId) {
	XSvm_accel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSVM_ACCEL_NUM_INSTANCES; Index++) {
		if (XSvm_accel_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XSvm_accel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSvm_accel_Initialize(XSvm_accel *InstancePtr, u16 DeviceId) {
	XSvm_accel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSvm_accel_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSvm_accel_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

