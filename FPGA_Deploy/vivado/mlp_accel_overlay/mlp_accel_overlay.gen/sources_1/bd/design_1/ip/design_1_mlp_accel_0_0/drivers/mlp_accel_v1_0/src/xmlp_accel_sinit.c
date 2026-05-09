// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xmlp_accel.h"

extern XMlp_accel_Config XMlp_accel_ConfigTable[];

XMlp_accel_Config *XMlp_accel_LookupConfig(u16 DeviceId) {
	XMlp_accel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMLP_ACCEL_NUM_INSTANCES; Index++) {
		if (XMlp_accel_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMlp_accel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMlp_accel_Initialize(XMlp_accel *InstancePtr, u16 DeviceId) {
	XMlp_accel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMlp_accel_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMlp_accel_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

