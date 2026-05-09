// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XRF_ACCEL_H
#define XRF_ACCEL_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xrf_accel_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XRf_accel_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XRf_accel;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XRf_accel_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XRf_accel_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XRf_accel_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XRf_accel_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XRf_accel_Initialize(XRf_accel *InstancePtr, u16 DeviceId);
XRf_accel_Config* XRf_accel_LookupConfig(u16 DeviceId);
int XRf_accel_CfgInitialize(XRf_accel *InstancePtr, XRf_accel_Config *ConfigPtr);
#else
int XRf_accel_Initialize(XRf_accel *InstancePtr, const char* InstanceName);
int XRf_accel_Release(XRf_accel *InstancePtr);
#endif

void XRf_accel_Start(XRf_accel *InstancePtr);
u32 XRf_accel_IsDone(XRf_accel *InstancePtr);
u32 XRf_accel_IsIdle(XRf_accel *InstancePtr);
u32 XRf_accel_IsReady(XRf_accel *InstancePtr);
void XRf_accel_EnableAutoRestart(XRf_accel *InstancePtr);
void XRf_accel_DisableAutoRestart(XRf_accel *InstancePtr);

void XRf_accel_Set_mode(XRf_accel *InstancePtr, u32 Data);
u32 XRf_accel_Get_mode(XRf_accel *InstancePtr);
void XRf_accel_Set_num_features(XRf_accel *InstancePtr, u32 Data);
u32 XRf_accel_Get_num_features(XRf_accel *InstancePtr);
void XRf_accel_Set_num_classes(XRf_accel *InstancePtr, u32 Data);
u32 XRf_accel_Get_num_classes(XRf_accel *InstancePtr);
void XRf_accel_Set_num_trees(XRf_accel *InstancePtr, u32 Data);
u32 XRf_accel_Get_num_trees(XRf_accel *InstancePtr);
void XRf_accel_Set_num_test(XRf_accel *InstancePtr, u32 Data);
u32 XRf_accel_Get_num_test(XRf_accel *InstancePtr);
u32 XRf_accel_Get_latency_out(XRf_accel *InstancePtr);
u32 XRf_accel_Get_latency_out_vld(XRf_accel *InstancePtr);

void XRf_accel_InterruptGlobalEnable(XRf_accel *InstancePtr);
void XRf_accel_InterruptGlobalDisable(XRf_accel *InstancePtr);
void XRf_accel_InterruptEnable(XRf_accel *InstancePtr, u32 Mask);
void XRf_accel_InterruptDisable(XRf_accel *InstancePtr, u32 Mask);
void XRf_accel_InterruptClear(XRf_accel *InstancePtr, u32 Mask);
u32 XRf_accel_InterruptGetEnabled(XRf_accel *InstancePtr);
u32 XRf_accel_InterruptGetStatus(XRf_accel *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
