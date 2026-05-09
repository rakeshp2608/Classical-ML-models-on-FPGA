// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XDT_ACCEL_H
#define XDT_ACCEL_H

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
#include "xdt_accel_hw.h"

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
} XDt_accel_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XDt_accel;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XDt_accel_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XDt_accel_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XDt_accel_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XDt_accel_ReadReg(BaseAddress, RegOffset) \
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
int XDt_accel_Initialize(XDt_accel *InstancePtr, u16 DeviceId);
XDt_accel_Config* XDt_accel_LookupConfig(u16 DeviceId);
int XDt_accel_CfgInitialize(XDt_accel *InstancePtr, XDt_accel_Config *ConfigPtr);
#else
int XDt_accel_Initialize(XDt_accel *InstancePtr, const char* InstanceName);
int XDt_accel_Release(XDt_accel *InstancePtr);
#endif

void XDt_accel_Start(XDt_accel *InstancePtr);
u32 XDt_accel_IsDone(XDt_accel *InstancePtr);
u32 XDt_accel_IsIdle(XDt_accel *InstancePtr);
u32 XDt_accel_IsReady(XDt_accel *InstancePtr);
void XDt_accel_EnableAutoRestart(XDt_accel *InstancePtr);
void XDt_accel_DisableAutoRestart(XDt_accel *InstancePtr);

void XDt_accel_Set_mode(XDt_accel *InstancePtr, u32 Data);
u32 XDt_accel_Get_mode(XDt_accel *InstancePtr);
void XDt_accel_Set_num_features(XDt_accel *InstancePtr, u32 Data);
u32 XDt_accel_Get_num_features(XDt_accel *InstancePtr);
void XDt_accel_Set_num_classes(XDt_accel *InstancePtr, u32 Data);
u32 XDt_accel_Get_num_classes(XDt_accel *InstancePtr);
void XDt_accel_Set_num_nodes(XDt_accel *InstancePtr, u32 Data);
u32 XDt_accel_Get_num_nodes(XDt_accel *InstancePtr);
void XDt_accel_Set_num_test(XDt_accel *InstancePtr, u32 Data);
u32 XDt_accel_Get_num_test(XDt_accel *InstancePtr);
u32 XDt_accel_Get_latency_out(XDt_accel *InstancePtr);
u32 XDt_accel_Get_latency_out_vld(XDt_accel *InstancePtr);

void XDt_accel_InterruptGlobalEnable(XDt_accel *InstancePtr);
void XDt_accel_InterruptGlobalDisable(XDt_accel *InstancePtr);
void XDt_accel_InterruptEnable(XDt_accel *InstancePtr, u32 Mask);
void XDt_accel_InterruptDisable(XDt_accel *InstancePtr, u32 Mask);
void XDt_accel_InterruptClear(XDt_accel *InstancePtr, u32 Mask);
u32 XDt_accel_InterruptGetEnabled(XDt_accel *InstancePtr);
u32 XDt_accel_InterruptGetStatus(XDt_accel *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
