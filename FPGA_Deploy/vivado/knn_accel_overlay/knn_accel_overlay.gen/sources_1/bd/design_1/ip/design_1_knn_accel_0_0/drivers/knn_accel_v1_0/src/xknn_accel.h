// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XKNN_ACCEL_H
#define XKNN_ACCEL_H

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
#include "xknn_accel_hw.h"

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
} XKnn_accel_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XKnn_accel;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XKnn_accel_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XKnn_accel_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XKnn_accel_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XKnn_accel_ReadReg(BaseAddress, RegOffset) \
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
int XKnn_accel_Initialize(XKnn_accel *InstancePtr, u16 DeviceId);
XKnn_accel_Config* XKnn_accel_LookupConfig(u16 DeviceId);
int XKnn_accel_CfgInitialize(XKnn_accel *InstancePtr, XKnn_accel_Config *ConfigPtr);
#else
int XKnn_accel_Initialize(XKnn_accel *InstancePtr, const char* InstanceName);
int XKnn_accel_Release(XKnn_accel *InstancePtr);
#endif

void XKnn_accel_Start(XKnn_accel *InstancePtr);
u32 XKnn_accel_IsDone(XKnn_accel *InstancePtr);
u32 XKnn_accel_IsIdle(XKnn_accel *InstancePtr);
u32 XKnn_accel_IsReady(XKnn_accel *InstancePtr);
void XKnn_accel_EnableAutoRestart(XKnn_accel *InstancePtr);
void XKnn_accel_DisableAutoRestart(XKnn_accel *InstancePtr);

void XKnn_accel_Set_mode(XKnn_accel *InstancePtr, u32 Data);
u32 XKnn_accel_Get_mode(XKnn_accel *InstancePtr);
void XKnn_accel_Set_num_features(XKnn_accel *InstancePtr, u32 Data);
u32 XKnn_accel_Get_num_features(XKnn_accel *InstancePtr);
void XKnn_accel_Set_num_classes(XKnn_accel *InstancePtr, u32 Data);
u32 XKnn_accel_Get_num_classes(XKnn_accel *InstancePtr);
void XKnn_accel_Set_num_train(XKnn_accel *InstancePtr, u32 Data);
u32 XKnn_accel_Get_num_train(XKnn_accel *InstancePtr);
void XKnn_accel_Set_num_test(XKnn_accel *InstancePtr, u32 Data);
u32 XKnn_accel_Get_num_test(XKnn_accel *InstancePtr);
u32 XKnn_accel_Get_latency_out(XKnn_accel *InstancePtr);
u32 XKnn_accel_Get_latency_out_vld(XKnn_accel *InstancePtr);

void XKnn_accel_InterruptGlobalEnable(XKnn_accel *InstancePtr);
void XKnn_accel_InterruptGlobalDisable(XKnn_accel *InstancePtr);
void XKnn_accel_InterruptEnable(XKnn_accel *InstancePtr, u32 Mask);
void XKnn_accel_InterruptDisable(XKnn_accel *InstancePtr, u32 Mask);
void XKnn_accel_InterruptClear(XKnn_accel *InstancePtr, u32 Mask);
u32 XKnn_accel_InterruptGetEnabled(XKnn_accel *InstancePtr);
u32 XKnn_accel_InterruptGetStatus(XKnn_accel *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
