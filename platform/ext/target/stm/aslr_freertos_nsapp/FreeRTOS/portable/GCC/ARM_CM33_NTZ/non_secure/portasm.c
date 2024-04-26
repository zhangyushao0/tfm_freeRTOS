/*
 * FreeRTOS Kernel <DEVELOPMENT BRANCH>
 * Copyright (C) 2021 Amazon.com, Inc. or its affiliates.  All Rights Reserved.
 *
 * SPDX-License-Identifier: MIT
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 * https://www.FreeRTOS.org
 * https://github.com/FreeRTOS
 *
 */

/* Standard includes. */
#include <stdint.h>

/* Defining MPU_WRAPPERS_INCLUDED_FROM_API_FILE ensures that PRIVILEGED_FUNCTION
 * is defined correctly and privileged functions are placed in correct sections.
 */
#define MPU_WRAPPERS_INCLUDED_FROM_API_FILE

/* Portasm includes. */
#include "portasm.h"

/* MPU_WRAPPERS_INCLUDED_FROM_API_FILE is needed to be defined only for the
 * header files. */
#undef MPU_WRAPPERS_INCLUDED_FROM_API_FILE

#if (configENABLE_MPU == 1)

void vRestoreContextOfFirstTask(
    void) /* __attribute__ (( naked )) PRIVILEGED_FUNCTION */
{
  __asm volatile(
      " .syntax unified                                 \n"
      "                                                 \n"
      " program_mpu_first_task:                         \n"
      "    ldr r2, pxCurrentTCBConst2                   \n" /* Read the location
                                                               of pxCurrentTCB
                                                               i.e. &(
                                                               pxCurrentTCB ).
                                                             */
      "    ldr r0, [r2]                                 \n" /* r0 =
                                                               pxCurrentTCB. */
      "                                                 \n"
      "    dmb                                          \n" /* Complete
                                                               outstanding
                                                               transfers before
                                                               disabling MPU. */
      "    ldr r1, xMPUCTRLConst2                       \n" /* r1 = 0xe000ed94
                                                               [Location of
                                                               MPU_CTRL]. */
      "    ldr r2, [r1]                                 \n" /* Read the value of
                                                               MPU_CTRL. */
      "    bic r2, #1                                   \n" /* r2 = r2 & ~1 i.e.
                                                               Clear the bit 0
                                                               in r2. */
      "    str r2, [r1]                                 \n" /* Disable MPU. */
      "                                                 \n"
      "    adds r0, #4                                  \n" /* r0 = r0 + 4. r0
                                                               now points to
                                                               MAIR0 in TCB. */
      "    ldr r1, [r0]                                 \n" /* r1 = *r0 i.e. r1
                                                               = MAIR0. */
      "    ldr r2, xMAIR0Const2                         \n" /* r2 = 0xe000edc0
                                                               [Location of
                                                               MAIR0]. */
      "    str r1, [r2]                                 \n" /* Program MAIR0. */
      "                                                 \n"
      "    adds r0, #4                                  \n" /* r0 = r0 + 4. r0
                                                               now points to
                                                               first RBAR in
                                                               TCB. */
      "    ldr r1, xRNRConst2                           \n" /* r1 = 0xe000ed98
                                                               [Location of
                                                               RNR]. */
      "    ldr r2, xRBARConst2                          \n" /* r2 = 0xe000ed9c
                                                               [Location of
                                                               RBAR]. */
      "                                                 \n"
      "    movs r3, #4                                  \n" /* r3 = 4. */
      "    str r3, [r1]                                 \n" /* Program RNR = 4.
                                                             */
      "    ldmia r0!, {r4-r11}                          \n" /* Read 4 sets of
                                                               RBAR/RLAR
                                                               registers from
                                                               TCB. */
      "    stmia r2, {r4-r11}                           \n" /* Write 4 set of
                                                               RBAR/RLAR
                                                               registers using
                                                               alias registers.
                                                             */
      "                                                 \n"
#if (configTOTAL_MPU_REGIONS == 16)
      "    movs r3, #8                                  \n" /* r3 = 8. */
      "    str r3, [r1]                                 \n" /* Program RNR = 8.
                                                             */
      "    ldmia r0!, {r4-r11}                          \n" /* Read 4 sets of
                                                               RBAR/RLAR
                                                               registers from
                                                               TCB. */
      "    stmia r2, {r4-r11}                           \n" /* Write 4 set of
                                                               RBAR/RLAR
                                                               registers using
                                                               alias registers.
                                                             */
      "    movs r3, #12                                 \n" /* r3 = 12. */
      "    str r3, [r1]                                 \n" /* Program RNR = 12.
                                                             */
      "    ldmia r0!, {r4-r11}                          \n" /* Read 4 sets of
                                                               RBAR/RLAR
                                                               registers from
                                                               TCB. */
      "    stmia r2, {r4-r11}                           \n" /* Write 4 set of
                                                               RBAR/RLAR
                                                               registers using
                                                               alias registers.
                                                             */
#endif /* configTOTAL_MPU_REGIONS == 16 */
      "                                                 \n"
      "   ldr r1, xMPUCTRLConst2                        \n" /* r1 = 0xe000ed94
                                                               [Location of
                                                               MPU_CTRL]. */
      "   ldr r2, [r1]                                  \n" /* Read the value of
                                                               MPU_CTRL. */
      "   orr r2, #1                                    \n" /* r2 = r2 | 1 i.e.
                                                               Set the bit 0 in
                                                               r2. */
      "   str r2, [r1]                                  \n" /* Enable MPU. */
      "   dsb                                           \n" /* Force memory
                                                               writes before
                                                               continuing. */
      "                                                 \n"
      " restore_context_first_task:                     \n"
      "    ldr r2, pxCurrentTCBConst2                   \n" /* Read the location
                                                               of pxCurrentTCB
                                                               i.e. &(
                                                               pxCurrentTCB ).
                                                             */
      "    ldr r0, [r2]                                 \n" /* r0 =
                                                               pxCurrentTCB.*/
      "    ldr r1, [r0]                                 \n" /* r1 = Location of
                                                               saved context in
                                                               TCB. */
      "                                                 \n"
      " restore_special_regs_first_task:                \n"
      "    ldmdb r1!, {r2-r4, lr}                       \n" /* r2 = original
                                                               PSP, r3 = PSPLIM,
                                                               r4 = CONTROL, LR
                                                               restored. */
      "    msr psp, r2                                  \n"
      "    msr psplim, r3                               \n"
      "    msr control, r4                              \n"
      "                                                 \n"
      " restore_general_regs_first_task:                \n"
      "    ldmdb r1!, {r4-r11}                          \n" /* r4-r11 contain
                                                               hardware saved
                                                               context. */
      "    stmia r2!, {r4-r11}                          \n" /* Copy the hardware
                                                               saved context on
                                                               the task stack.
                                                             */
      "    ldmdb r1!, {r4-r11}                          \n" /* r4-r11 restored.
                                                             */
      "                                                 \n"
      " restore_context_done_first_task:                \n"
      "    str r1, [r0]                                 \n" /* Save the location
                                                               where the context
                                                               should be saved
                                                               next as the first
                                                               member of TCB. */
      "    mov r0, #0                                   \n"
      "    msr basepri, r0                              \n" /* Ensure that
                                                               interrupts are
                                                               enabled when the
                                                               first task
                                                               starts. */
      "    bx lr                                        \n"
      "                                                 \n"
      " .align 4                                        \n"
      " pxCurrentTCBConst2: .word pxCurrentTCB          \n"
      " xMPUCTRLConst2: .word 0xe000ed94                \n"
      " xMAIR0Const2: .word 0xe000edc0                  \n"
      " xRNRConst2: .word 0xe000ed98                    \n"
      " xRBARConst2: .word 0xe000ed9c                   \n");
}

#else /* configENABLE_MPU */

void vRestoreContextOfFirstTask(
    void) /* __attribute__ (( naked )) PRIVILEGED_FUNCTION */
{
  __asm volatile(
      "   .syntax unified                                 \n"
      "                                                   \n"
      " MOVW    r2, :lower16:pxCurrentTCB\n"
      " MOVT    r2, :upper16:pxCurrentTCB\n"
      "   ldr  r1, [r2]                                   \n" /* Read
                                                                 pxCurrentTCB.
                                                               */
      "   ldr  r0, [r1]                                   \n" /* Read top of
                                                                 stack from TCB
                                                                 - The first
                                                                 item in
                                                                 pxCurrentTCB is
                                                                 the task top of
                                                                 stack. */
      "                                                   \n"
      "   ldm  r0!, {r1-r2}                               \n" /* Read from stack
                                                                 - r1 = PSPLIM
                                                                 and r2 =
                                                                 EXC_RETURN. */
      "   msr  psplim, r1                                 \n" /* Set this task's
                                                                 PSPLIM value.
                                                               */
      "   movs r1, #2                                     \n" /* r1 = 2. */
      "   msr  CONTROL, r1                                \n" /* Switch to use
                                                                 PSP in the
                                                                 thread mode. */
      "   adds r0, #32                                    \n" /* Discard
                                                                 everything up
                                                                 to r0. */
      "   msr  psp, r0                                    \n" /* This is now the
                                                                 new top of
                                                                 stack to use in
                                                                 the task. */
      "   isb                                             \n"
      "   mov  r0, #0                                     \n"
      "   msr  basepri, r0                                \n" /* Ensure that
                                                                 interrupts are
                                                                 enabled when
                                                                 the first task
                                                                 starts. */
      "   bx   r2                                         \n" /* Finally, branch
                                                                 to EXC_RETURN.
                                                               */
      "                                                   \n"
      //   "   .align 4                                        \n"
      //   "pxCurrentTCBConst2: .word pxCurrentTCB             \n"
  );
}

#endif /* configENABLE_MPU */
/*-----------------------------------------------------------*/

BaseType_t xIsPrivileged(void) /* __attribute__ (( naked )) */
{
  __asm volatile(
      "   .syntax unified                                 \n"
      "                                                   \n"
      "   mrs r0, control                                 \n" /* r0 = CONTROL.
                                                               */
      "   tst r0, #1                                      \n" /* Perform r0 & 1
                                                                 (bitwise AND)
                                                                 and update the
                                                                 conditions
                                                                 flag. */
      "   ite ne                                          \n"
      "   movne r0, #0                                    \n" /* CONTROL[0]!=0.
                                                                 Return false to
                                                                 indicate that
                                                                 the processor
                                                                 is not
                                                                 privileged. */
      "   moveq r0, #1                                    \n" /* CONTROL[0]==0.
                                                                 Return true to
                                                                 indicate that
                                                                 the processor
                                                                 is privileged.
                                                               */
      "   bx lr                                           \n" /* Return. */
      "                                                   \n"
      "   .align 4                                        \n" ::
          : "r0", "memory");
}
/*-----------------------------------------------------------*/

void vRaisePrivilege(void) /* __attribute__ (( naked )) PRIVILEGED_FUNCTION */
{
  __asm volatile(
      "   .syntax unified                                 \n"
      "                                                   \n"
      "   mrs  r0, control                                \n" /* Read the
                                                                 CONTROL
                                                                 register. */
      "   bic r0, #1                                      \n" /* Clear the bit
                                                                 0. */
      "   msr  control, r0                                \n" /* Write back the
                                                                 new CONTROL
                                                                 value. */
      "   bx lr                                           \n" /* Return to the
                                                                 caller. */
      ::
          : "r0", "memory");
}
/*-----------------------------------------------------------*/

void vResetPrivilege(void) /* __attribute__ (( naked )) */
{
  __asm volatile(
      "   .syntax unified                                 \n"
      "                                                   \n"
      "   mrs r0, control                                 \n" /* r0 = CONTROL.
                                                               */
      "   orr r0, #1                                      \n" /* r0 = r0 | 1. */
      "   msr control, r0                                 \n" /* CONTROL = r0.
                                                               */
      "   bx lr                                           \n" /* Return to the
                                                                 caller. */
      ::
          : "r0", "memory");
}
/*-----------------------------------------------------------*/

void vStartFirstTask(void) /* __attribute__ (( naked )) PRIVILEGED_FUNCTION */
{
  __asm volatile(
      "   .syntax unified                                 \n"
      "                                                   \n"
      "   MOVW R0, #0xED08                                \n" /* Load lower half
                                                                 of VTOR address
                                                               */
      "   MOVT R0, #0xE000                                \n" /* Load upper half
                                                                 of VTOR address
                                                               */
      "   LDR R0, [R0]                                    \n" /* Read the VTOR
                                                                 register which
                                                                 gives the
                                                                 address of
                                                                 vector table.
                                                               */
      "   LDR R0, [R0]                                    \n" /* The first entry
                                                                 in vector table
                                                                 is stack
                                                                 pointer. */
      "   MSR MSP, R0                                     \n" /* Set the MSP
                                                                 back to the
                                                                 start of the
                                                                 stack. */
      "   CPSIE I                                         \n" /* Globally enable
                                                                 interrupts. */
      "   CPSIE F                                         \n"
      "   DSB                                             \n"
      "   ISB                                             \n"
      "   SVC %0                                          \n" /* System call to
                                                                 start the first
                                                                 task. */
      "   NOP                                             \n"
      "                                                   \n" ::"i"(
          portSVC_START_SCHEDULER)
      : "memory");
}

/*-----------------------------------------------------------*/

// 用于读取 BASEPRI 寄存器的值
static inline uint32_t readBasepri() {
  uint32_t value;
  __asm volatile("mrs %0, basepri" : "=r"(value));
  return value;
}

// 用于设置 BASEPRI 寄存器的值
static inline void writeBasepri(uint32_t value) {
  __asm volatile("msr basepri, %0" ::"r"(value) : "memory");
  __asm volatile("dsb");
  __asm volatile("isb");
}

// 更高层次的函数，用于设置中断屏蔽，并返回旧的 BASEPRI 值
uint32_t ulSetInterruptMask(void) {
  uint32_t originalBasepri = readBasepri(); // 读取当前的 BASEPRI 值
  writeBasepri(configMAX_SYSCALL_INTERRUPT_PRIORITY); // 设置新的 BASEPRI 值
  return originalBasepri; // 返回旧的 BASEPRI 值
}

/*-----------------------------------------------------------*/

// 函数用于清除中断屏蔽，设置BASEPRI寄存器为给定的ulMask值
void vClearInterruptMask(uint32_t ulMask) {
  writeBasepri(ulMask); // 设置 BASEPRI 寄存器为 ulMask
}

/*-----------------------------------------------------------*/

#if (configENABLE_MPU == 1)

void PendSV_Handler(void) /* __attribute__ (( naked )) PRIVILEGED_FUNCTION */
{
  __asm volatile(
      " .syntax unified                                 \n"
      "                                                 \n"
      " ldr r2, pxCurrentTCBConst                       \n" /* Read the location
                                                               of pxCurrentTCB
                                                               i.e. &(
                                                               pxCurrentTCB ).
                                                             */
      " ldr r0, [r2]                                    \n" /* r0 =
                                                               pxCurrentTCB. */
      " ldr r1, [r0]                                    \n" /* r1 = Location in
                                                               TCB where the
                                                               context should be
                                                               saved. */
      " mrs r2, psp                                     \n" /* r2 = PSP. */
      "                                                 \n"
      " save_general_regs:                              \n"
#if ((configENABLE_FPU == 1) || (configENABLE_MVE == 1))
      "    add r2, r2, #0x20                            \n" /* Move r2 to
                                                               location where s0
                                                               is saved. */
      "    tst lr, #0x10                                \n"
      "    ittt eq                                      \n"
      "    vstmiaeq r1!, {s16-s31}                      \n" /* Store s16-s31. */
      "    vldmiaeq r2, {s0-s16}                        \n" /* Copy hardware
                                                               saved FP context
                                                               into s0-s16. */
      "    vstmiaeq r1!, {s0-s16}                       \n" /* Store hardware
                                                               saved FP context.
                                                             */
      "    sub r2, r2, #0x20                            \n" /* Set r2 back to
                                                               the location of
                                                               hardware saved
                                                               context. */
#endif /* configENABLE_FPU || configENABLE_MVE */
      "                                                 \n"
      "    stmia r1!, {r4-r11}                          \n" /* Store r4-r11. */
      "    ldmia r2, {r4-r11}                           \n" /* Copy the hardware
                                                               saved context
                                                               into r4-r11. */
      "    stmia r1!, {r4-r11}                          \n" /* Store the
                                                               hardware saved
                                                               context. */
      "                                                 \n"
      " save_special_regs:                              \n"
      "    mrs r3, psplim                               \n" /* r3 = PSPLIM. */
      "    mrs r4, control                              \n" /* r4 = CONTROL. */
      "    stmia r1!, {r2-r4, lr}                       \n" /* Store original
                                                               PSP (after
                                                               hardware has
                                                               saved context),
                                                               PSPLIM, CONTROL
                                                               and LR. */
      "    str r1, [r0]                                 \n" /* Save the location
                                                               from where the
                                                               context should be
                                                               restored as the
                                                               first member of
                                                               TCB. */
      "                                                 \n"
      " select_next_task:                               \n"
      "    mov r0, %0                                   \n" /* r0 =
                                                               configMAX_SYSCALL_INTERRUPT_PRIORITY
                                                             */
      "    msr basepri, r0                              \n" /* Disable
                                                               interrupts upto
                                                               configMAX_SYSCALL_INTERRUPT_PRIORITY.
                                                             */
      "    dsb                                          \n"
      "    isb                                          \n"
      "    bl vTaskSwitchContext                        \n"
      "    mov r0, #0                                   \n" /* r0 = 0. */
      "    msr basepri, r0                              \n" /* Enable
                                                               interrupts. */
      "                                                 \n"
      " program_mpu:                                    \n"
      "    ldr r2, pxCurrentTCBConst                    \n" /* Read the location
                                                               of pxCurrentTCB
                                                               i.e. &(
                                                               pxCurrentTCB ).
                                                             */
      "    ldr r0, [r2]                                 \n" /* r0 =
                                                               pxCurrentTCB. */
      "                                                 \n"
      "    dmb                                          \n" /* Complete
                                                               outstanding
                                                               transfers before
                                                               disabling MPU. */
      "    ldr r1, xMPUCTRLConst                        \n" /* r1 = 0xe000ed94
                                                               [Location of
                                                               MPU_CTRL]. */
      "    ldr r2, [r1]                                 \n" /* Read the value of
                                                               MPU_CTRL. */
      "    bic r2, #1                                   \n" /* r2 = r2 & ~1 i.e.
                                                               Clear the bit 0
                                                               in r2. */
      "    str r2, [r1]                                 \n" /* Disable MPU. */
      "                                                 \n"
      "    adds r0, #4                                  \n" /* r0 = r0 + 4. r0
                                                               now points to
                                                               MAIR0 in TCB. */
      "    ldr r1, [r0]                                 \n" /* r1 = *r0 i.e. r1
                                                               = MAIR0. */
      "    ldr r2, xMAIR0Const                          \n" /* r2 = 0xe000edc0
                                                               [Location of
                                                               MAIR0]. */
      "    str r1, [r2]                                 \n" /* Program MAIR0. */
      "                                                 \n"
      "    adds r0, #4                                  \n" /* r0 = r0 + 4. r0
                                                               now points to
                                                               first RBAR in
                                                               TCB. */
      "    ldr r1, xRNRConst                            \n" /* r1 = 0xe000ed98
                                                               [Location of
                                                               RNR]. */
      "    ldr r2, xRBARConst                           \n" /* r2 = 0xe000ed9c
                                                               [Location of
                                                               RBAR]. */
      "                                                 \n"
      "    movs r3, #4                                  \n" /* r3 = 4. */
      "    str r3, [r1]                                 \n" /* Program RNR = 4.
                                                             */
      "    ldmia r0!, {r4-r11}                          \n" /* Read 4 sets of
                                                               RBAR/RLAR
                                                               registers from
                                                               TCB. */
      "    stmia r2, {r4-r11}                           \n" /* Write 4 set of
                                                               RBAR/RLAR
                                                               registers using
                                                               alias registers.
                                                             */
      "                                                 \n"
#if (configTOTAL_MPU_REGIONS == 16)
      "    movs r3, #8                                  \n" /* r3 = 8. */
      "    str r3, [r1]                                 \n" /* Program RNR = 8.
                                                             */
      "    ldmia r0!, {r4-r11}                          \n" /* Read 4 sets of
                                                               RBAR/RLAR
                                                               registers from
                                                               TCB. */
      "    stmia r2, {r4-r11}                           \n" /* Write 4 set of
                                                               RBAR/RLAR
                                                               registers using
                                                               alias registers.
                                                             */
      "    movs r3, #12                                 \n" /* r3 = 12. */
      "    str r3, [r1]                                 \n" /* Program RNR = 12.
                                                             */
      "    ldmia r0!, {r4-r11}                          \n" /* Read 4 sets of
                                                               RBAR/RLAR
                                                               registers from
                                                               TCB. */
      "    stmia r2, {r4-r11}                           \n" /* Write 4 set of
                                                               RBAR/RLAR
                                                               registers using
                                                               alias registers.
                                                             */
#endif /* configTOTAL_MPU_REGIONS == 16 */
      "                                                 \n"
      "   ldr r1, xMPUCTRLConst                         \n" /* r1 = 0xe000ed94
                                                               [Location of
                                                               MPU_CTRL]. */
      "   ldr r2, [r1]                                  \n" /* Read the value of
                                                               MPU_CTRL. */
      "   orr r2, #1                                    \n" /* r2 = r2 | 1 i.e.
                                                               Set the bit 0 in
                                                               r2. */
      "   str r2, [r1]                                  \n" /* Enable MPU. */
      "   dsb                                           \n" /* Force memory
                                                               writes before
                                                               continuing. */
      "                                                 \n"
      " restore_context:                                \n"
      "    ldr r2, pxCurrentTCBConst                    \n" /* Read the location
                                                               of pxCurrentTCB
                                                               i.e. &(
                                                               pxCurrentTCB ).
                                                             */
      "    ldr r0, [r2]                                 \n" /* r0 =
                                                               pxCurrentTCB.*/
      "    ldr r1, [r0]                                 \n" /* r1 = Location of
                                                               saved context in
                                                               TCB. */
      "                                                 \n"
      " restore_special_regs:                           \n"
      "    ldmdb r1!, {r2-r4, lr}                       \n" /* r2 = original
                                                               PSP, r3 = PSPLIM,
                                                               r4 = CONTROL, LR
                                                               restored. */
      "    msr psp, r2                                  \n"
      "    msr psplim, r3                               \n"
      "    msr control, r4                              \n"
      "                                                 \n"
      " restore_general_regs:                           \n"
      "    ldmdb r1!, {r4-r11}                          \n" /* r4-r11 contain
                                                               hardware saved
                                                               context. */
      "    stmia r2!, {r4-r11}                          \n" /* Copy the hardware
                                                               saved context on
                                                               the task stack.
                                                             */
      "    ldmdb r1!, {r4-r11}                          \n" /* r4-r11 restored.
                                                             */
#if ((configENABLE_FPU == 1) || (configENABLE_MVE == 1))
      "    tst lr, #0x10                                \n"
      "    ittt eq                                      \n"
      "    vldmdbeq r1!, {s0-s16}                       \n" /* s0-s16 contain
                                                               hardware saved FP
                                                               context. */
      "    vstmiaeq r2!, {s0-s16}                       \n" /* Copy hardware
                                                               saved FP context
                                                               on the task
                                                               stack. */
      "    vldmdbeq r1!, {s16-s31}                      \n" /* Restore s16-s31.
                                                             */
#endif /* configENABLE_FPU || configENABLE_MVE */
      "                                                 \n"
      " restore_context_done:                           \n"
      "    str r1, [r0]                                 \n" /* Save the location
                                                               where the context
                                                               should be saved
                                                               next as the first
                                                               member of TCB. */
      "    bx lr                                        \n"
      "                                                 \n"
      " .align 4                                        \n"
      //   " pxCurrentTCBConst: .word pxCurrentTCB           \n"
      " xMPUCTRLConst: .word 0xe000ed94                 \n"
      " xMAIR0Const: .word 0xe000edc0                   \n"
      " xRNRConst: .word 0xe000ed98                     \n"
      " xRBARConst: .word 0xe000ed9c                    \n" ::"i"(
          configMAX_SYSCALL_INTERRUPT_PRIORITY));
}

#else /* configENABLE_MPU */

extern void vTaskSwitchContext(void);
void PendSV_Handler(void) {
  // 上下文保存
  uint32_t *stackPointer;
  __asm("mrs %0, psp" : "=r"(stackPointer));
  __asm("mrs r2, psplim");
#if (configENABLE_FPU == 1 || configENABLE_MVE == 1)
  // 保存浮点寄存器，如果启用
  asm volatile("vstmdbeq %0!, {s16-s31}" : "+r"(stackPointer));
#endif
  __asm volatile("stmdb %0!, {r2-r11}" : "+r"(stackPointer));

  // 更新当前任务的TCB中的栈顶
  extern uint32_t *pxCurrentTCB;
  *pxCurrentTCB = (uint32_t)stackPointer;
  // 关中断
  writeBasepri(configMAX_SYSCALL_INTERRUPT_PRIORITY);
  // 调用任务切换
  vTaskSwitchContext();
  // 开中断
  writeBasepri(0);
  // 上下文恢复
  stackPointer = (uint32_t *)*pxCurrentTCB;
  __asm volatile("ldmia %0!, {r2-r11}" : "+r"(stackPointer));
#if (configENABLE_FPU == 1 || configENABLE_MVE == 1)
  // 恢复浮点寄存器，如果启用
  asm volatile("vldmiaeq %0!, {s16-s31}" : "+r"(stackPointer));
#endif
  __asm("msr psplim, r2");
  __asm("msr psp, %0" : : "r"(stackPointer));
}

#endif /* configENABLE_MPU */
/*-----------------------------------------------------------*/

#if ((configENABLE_MPU == 1) && (configUSE_MPU_WRAPPERS_V1 == 0))

void SVC_Handler(void) /* __attribute__ (( naked )) PRIVILEGED_FUNCTION */
{
  __asm volatile(".syntax unified                \n"
                 ".extern vPortSVCHandler_C      \n"
                 ".extern vSystemCallEnter       \n"
                 ".extern vSystemCallEnter_1     \n"
                 ".extern vSystemCallExit        \n"
                 "                               \n"
                 "tst lr, #4                     \n"
                 "ite eq                         \n"
                 "mrseq r0, msp                  \n"
                 "mrsne r0, psp                  \n"
                 "                               \n"
                 "ldr r1, [r0, #24]              \n"
                 "ldrb r2, [r1, #-2]             \n"
                 "cmp r2, %0                     \n"
                 "beq syscall_enter              \n"
                 "cmp r2, %1                     \n"
                 "beq syscall_enter_1            \n"
                 "cmp r2, %2                     \n"
                 "beq syscall_exit               \n"
                 "b vPortSVCHandler_C            \n"
                 "                               \n"
                 "syscall_enter:                 \n"
                 "    mov r1, lr                 \n"
                 "    b vSystemCallEnter         \n"
                 "                               \n"
                 "syscall_enter_1:               \n"
                 "    mov r1, lr                 \n"
                 "    b vSystemCallEnter_1       \n"
                 "                               \n"
                 "syscall_exit:                  \n"
                 "    mov r1, lr                 \n"
                 "    b vSystemCallExit          \n"
                 "                               \n"
                 : /* No outputs. */
                 : "i"(portSVC_SYSTEM_CALL_ENTER),
                   "i"(portSVC_SYSTEM_CALL_ENTER_1),
                   "i"(portSVC_SYSTEM_CALL_EXIT)
                 : "r0", "r1", "r2", "memory");
}

#else /* ( configENABLE_MPU == 1 ) && ( configUSE_MPU_WRAPPERS_V1 == 0 ) */

extern void vPortSVCHandler_C(uint32_t *pulParam);

void SVC_Handler(void) {
  uint32_t *stack;

  // 内联汇编，用于选择正确的栈指针（MSP 或 PSP）
  __asm volatile("   tst lr, #4                     \n"
                 "   ite eq                         \n"
                 "   mrseq %0, msp                  \n"
                 "   mrsne %0, psp                  \n"
                 : "=r"(stack) // 输出到stack变量
  );

  // C语言调用 vPortSVCHandler_C，传入选定的栈指针
  vPortSVCHandler_C(stack);
}

#endif /* ( configENABLE_MPU == 1 ) && ( configUSE_MPU_WRAPPERS_V1 == 0 ) */
/*-----------------------------------------------------------*/
