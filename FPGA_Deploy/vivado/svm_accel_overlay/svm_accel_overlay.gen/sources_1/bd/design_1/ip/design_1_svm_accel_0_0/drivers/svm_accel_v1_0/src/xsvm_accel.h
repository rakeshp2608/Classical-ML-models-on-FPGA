// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XSVM_ACCEL_H
#define XSVM_ACCEL_H

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
#include "xsvm_accel_hw.h"

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
} XSvm_accel_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XSvm_accel;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSvm_accel_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSvm_accel_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSvm_accel_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSvm_accel_ReadReg(BaseAddress, RegOffset) \
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
int XSvm_accel_Initialize(XSvm_accel *InstancePtr, u16 DeviceId);
XSvm_accel_Config* XSvm_accel_LookupConfig(u16 DeviceId);
int XSvm_accel_CfgInitialize(XSvm_accel *InstancePtr, XSvm_accel_Config *ConfigPtr);
#else
int XSvm_accel_Initialize(XSvm_accel *InstancePtr, const char* InstanceName);
int XSvm_accel_Release(XSvm_accel *InstancePtr);
#endif

void XSvm_accel_Start(XSvm_accel *InstancePtr);
u32 XSvm_accel_IsDone(XSvm_accel *InstancePtr);
u32 XSvm_accel_IsIdle(XSvm_accel *InstancePtr);
u32 XSvm_accel_IsReady(XSvm_accel *InstancePtr);
void XSvm_accel_EnableAutoRestart(XSvm_accel *InstancePtr);
void XSvm_accel_DisableAutoRestart(XSvm_accel *InstancePtr);

void XSvm_accel_Set_mode(XSvm_accel *InstancePtr, u32 Data);
u32 XSvm_accel_Get_mode(XSvm_accel *InstancePtr);
void XSvm_accel_Set_num_features(XSvm_accel *InstancePtr, u32 Data);
u32 XSvm_accel_Get_num_features(XSvm_accel *InstancePtr);
void XSvm_accel_Set_num_classes(XSvm_accel *InstancePtr, u32 Data);
u32 XSvm_accel_Get_num_classes(XSvm_accel *InstancePtr);
void XSvm_accel_Set_n_sv(XSvm_accel *InstancePtr, u32 Data);
u32 XSvm_accel_Get_n_sv(XSvm_accel *InstancePtr);
void XSvm_accel_Set_num_test(XSvm_accel *InstancePtr, u32 Data);
u32 XSvm_accel_Get_num_test(XSvm_accel *InstancePtr);
u32 XSvm_accel_Get_latency_out(XSvm_accel *InstancePtr);
u32 XSvm_accel_Get_latency_out_vld(XSvm_accel *InstancePtr);

void XSvm_accel_InterruptGlobalEnable(XSvm_accel *InstancePtr);
void XSvm_accel_InterruptGlobalDisable(XSvm_accel *InstancePtr);
void XSvm_accel_InterruptEnable(XSvm_accel *InstancePtr, u32 Mask);
void XSvm_accel_InterruptDisable(XSvm_accel *InstancePtr, u32 Mask);
void XSvm_accel_InterruptClear(XSvm_accel *InstancePtr, u32 Mask);
u32 XSvm_accel_InterruptGetEnabled(XSvm_accel *InstancePtr);
u32 XSvm_accel_InterruptGetStatus(XSvm_accel *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
