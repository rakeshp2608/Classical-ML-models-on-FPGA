// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XMLP_ACCEL_H
#define XMLP_ACCEL_H

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
#include "xmlp_accel_hw.h"

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
} XMlp_accel_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XMlp_accel;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMlp_accel_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMlp_accel_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMlp_accel_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMlp_accel_ReadReg(BaseAddress, RegOffset) \
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
int XMlp_accel_Initialize(XMlp_accel *InstancePtr, u16 DeviceId);
XMlp_accel_Config* XMlp_accel_LookupConfig(u16 DeviceId);
int XMlp_accel_CfgInitialize(XMlp_accel *InstancePtr, XMlp_accel_Config *ConfigPtr);
#else
int XMlp_accel_Initialize(XMlp_accel *InstancePtr, const char* InstanceName);
int XMlp_accel_Release(XMlp_accel *InstancePtr);
#endif

void XMlp_accel_Start(XMlp_accel *InstancePtr);
u32 XMlp_accel_IsDone(XMlp_accel *InstancePtr);
u32 XMlp_accel_IsIdle(XMlp_accel *InstancePtr);
u32 XMlp_accel_IsReady(XMlp_accel *InstancePtr);
void XMlp_accel_EnableAutoRestart(XMlp_accel *InstancePtr);
void XMlp_accel_DisableAutoRestart(XMlp_accel *InstancePtr);

void XMlp_accel_Set_mode(XMlp_accel *InstancePtr, u32 Data);
u32 XMlp_accel_Get_mode(XMlp_accel *InstancePtr);
void XMlp_accel_Set_num_features(XMlp_accel *InstancePtr, u32 Data);
u32 XMlp_accel_Get_num_features(XMlp_accel *InstancePtr);
void XMlp_accel_Set_num_classes(XMlp_accel *InstancePtr, u32 Data);
u32 XMlp_accel_Get_num_classes(XMlp_accel *InstancePtr);
void XMlp_accel_Set_h1_size(XMlp_accel *InstancePtr, u32 Data);
u32 XMlp_accel_Get_h1_size(XMlp_accel *InstancePtr);
void XMlp_accel_Set_h2_size(XMlp_accel *InstancePtr, u32 Data);
u32 XMlp_accel_Get_h2_size(XMlp_accel *InstancePtr);
void XMlp_accel_Set_num_test(XMlp_accel *InstancePtr, u32 Data);
u32 XMlp_accel_Get_num_test(XMlp_accel *InstancePtr);
u32 XMlp_accel_Get_latency_out(XMlp_accel *InstancePtr);
u32 XMlp_accel_Get_latency_out_vld(XMlp_accel *InstancePtr);

void XMlp_accel_InterruptGlobalEnable(XMlp_accel *InstancePtr);
void XMlp_accel_InterruptGlobalDisable(XMlp_accel *InstancePtr);
void XMlp_accel_InterruptEnable(XMlp_accel *InstancePtr, u32 Mask);
void XMlp_accel_InterruptDisable(XMlp_accel *InstancePtr, u32 Mask);
void XMlp_accel_InterruptClear(XMlp_accel *InstancePtr, u32 Mask);
u32 XMlp_accel_InterruptGetEnabled(XMlp_accel *InstancePtr);
u32 XMlp_accel_InterruptGetStatus(XMlp_accel *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
