// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xrf_accel.h"

extern XRf_accel_Config XRf_accel_ConfigTable[];

XRf_accel_Config *XRf_accel_LookupConfig(u16 DeviceId) {
	XRf_accel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XRF_ACCEL_NUM_INSTANCES; Index++) {
		if (XRf_accel_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XRf_accel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XRf_accel_Initialize(XRf_accel *InstancePtr, u16 DeviceId) {
	XRf_accel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XRf_accel_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XRf_accel_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

