// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xdt_accel.h"

extern XDt_accel_Config XDt_accel_ConfigTable[];

XDt_accel_Config *XDt_accel_LookupConfig(u16 DeviceId) {
	XDt_accel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XDT_ACCEL_NUM_INSTANCES; Index++) {
		if (XDt_accel_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XDt_accel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XDt_accel_Initialize(XDt_accel *InstancePtr, u16 DeviceId) {
	XDt_accel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XDt_accel_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XDt_accel_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

