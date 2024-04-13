#include "trampline.h"
#include "stm32l5xx.h"

/*
#define mpu_region_switch_from_to(region_id1, region_id2) \
    MPU_Type* mpu = (MPU_Type*)MPU_BASE;                  \
    uint32_t  ctrl_before = mpu->CTRL;                    \
    mpu->CTRL = 0;                                        \
    mpu->RNR = region_id1;                                \
    uint32_t limit_cfg = mpu->RLAR;                       \
    limit_cfg &= 0xFFFFFFFE;                              \
    mpu->RLAR = limit_cfg;                                \
    mpu->RNR = region_id2;                                \
    limit_cfg = mpu->RLAR;                                \
    limit_cfg |= MPU_RLAR_EN_Msk;                         \
    mpu->RLAR = limit_cfg;                                \
    mpu->CTRL = ctrl_before;                              \
    __DSB();                                              \
    __ISB();
*/

#define MPU_DISABLE_0_ENABLE_1()                                \
    __asm__ volatile("movw r0, %0"                              \
                     :                                          \
                     : "i"(MPU_BASE & 0xFFFF));                 \
    __asm__ volatile("movt r0, %0"                              \
                     :                                          \
                     : "i"((MPU_BASE >> 16) & 0xFFFF));         \
    __asm__ volatile("   ldr      r1, [r0, #0x4]          \n"   \
                     "   mov      r2, #0x0                \n"   \
                     "   str      r2, [r0, #0x4]          \n"   \
                     "   str      r2, [r0, #0x8]          \n"   \
                     "   ldr      r3, [r0, #0x10]          \n"  \
                     "   bic      r3, r3, #0x1             \n"  \
                     "   str      r3, [r0, #0x10]          \n"  \
                     "   mov      r2, #1                   \n"  \
                     "   str      r2, [r0, #0x8]          \n"   \
                     "   ldr      r3, [r0, #0x10]          \n"  \
                     "   orr      r3, r3, #0x1             \n"  \
                     "   str      r3, [r0, #0x10]          \n"  \
                     "   str      r1, [r0, #0x4]          \n"); \
    __asm__ volatile("dsb 0xF" ::                               \
                         : "memory");                           \
    __asm__ volatile("isb 0xF" ::                               \
                         : "memory");

#define MPU_DISABLE_1_ENABLE_0()                                \
    __asm__ volatile("movw r0, %0"                              \
                     :                                          \
                     : "i"(MPU_BASE & 0xFFFF));                 \
    __asm__ volatile("movt r0, %0"                              \
                     :                                          \
                     : "i"((MPU_BASE >> 16) & 0xFFFF));         \
    __asm__ volatile("   ldr      r1, [r0, #0x4]          \n"   \
                     "   mov      r2, #0x0                \n"   \
                     "   str      r2, [r0, #0x4]          \n"   \
                     "   mov      r2, #0x1                \n"   \
                     "   str      r2, [r0, #0x8]          \n"   \
                     "   ldr      r3, [r0, #0x10]          \n"  \
                     "   bic      r3, r3, #0x1             \n"  \
                     "   str      r3, [r0, #0x10]          \n"  \
                     "   mov      r2, #0                   \n"  \
                     "   str      r2, [r0, #0x8]          \n"   \
                     "   ldr      r3, [r0, #0x10]          \n"  \
                     "   orr      r3, r3, #0x1             \n"  \
                     "   str      r3, [r0, #0x10]          \n"  \
                     "   str      r1, [r0, #0x4]          \n"); \
    __asm__ volatile("dsb 0xF" ::                               \
                         : "memory");                           \
    __asm__ volatile("isb 0xF" ::                               \
                         : "memory");

#define PUSH()                                                   \
    __asm__ volatile("   str      r3, [r10]      \n"             \
                     "   str      r2, [r10, #0x4]      \n"       \
                     "   str      r1, [r10, #0x8]      \n"       \
                     "   str      r0, [r10, #0xc]            \n" \
                     "   add      r10, #0x10          \n");

#define POP()                                               \
    __asm__ volatile("   sub      r10, #0x10            \n" \
                     "   ldr      r3, [r10]            \n"  \
                     "   ldr      r2, [r10, #0x4]      \n"  \
                     "   ldr      r1, [r10, #0x8]      \n"  \
                     "   ldr      r0, [r10, #0xc]      \n");

__attribute__((section(".tram_section"))) __attribute__((naked)) void trampoline_A_B(void) {
    __asm__ volatile("str      lr,[r10]                   \n"
                     "add      r10,#4                   \n");
    PUSH()
    MPU_DISABLE_0_ENABLE_1()
    POP()
    __asm__ volatile("blx      r8                   \n");
    PUSH()
    MPU_DISABLE_1_ENABLE_0()
    POP()
    __asm__ volatile("   sub r10, #4    \n"
                     "   ldr lr, [r10]  \n"
                     "   bx  lr         \n");
}

__attribute__((section(".tram_section"))) __attribute__((naked)) void trampoline_B_A(void) {
    __asm__ volatile("str      lr,[r10]                   \n"
                     "add      r10,#4                   \n");
    PUSH()
    MPU_DISABLE_1_ENABLE_0()
    POP()
    __asm__ volatile("blx      r8                   \n");
    PUSH()
    MPU_DISABLE_0_ENABLE_1()
    POP()
    __asm__ volatile("   sub r10, #4    \n"
                     "   ldr lr, [r10]  \n"
                     "   bx  lr         \n");
}

__attribute__((section(".tram_section"))) __attribute__((naked)) void trampoline_blx(void) {
    __asm__ volatile("str        lr,[r10]                      \n"
                     "add        r10,#32                       \n");
    __asm__ volatile("str        r8,[r10,#-4]                  \n"
                     "str        r0,[r10,#-8]                  \n"
                     "subs       r0,lr,r8                      \n"
                     "cmp.w      r0,#20480                       \n"
                     "ble        #8                             \n"    /*lr-r8<=0x5000 */
                     "b          #-2                             \n"); /*lr-r8>0x5000 B to A */
    /*设A为可执行，B不可执行*/
    PUSH()
    MPU_DISABLE_0_ENABLE_1()
    POP()
    __asm__ volatile("ldr        r0,[r10,#-8]                  \n"
                     "blx        r8                            \n");
    /*设B为可执行，A不可执行*/
    PUSH()
    MPU_DISABLE_1_ENABLE_0()
    POP()
    __asm__ volatile("b          #24                             \n" /*跳到结尾*/
                     "subs       r0,r8,lr                      \n"
                     "cmp.w      r0,#20480                       \n"
                     "ble        #8                             \n"    /*r8-lr<=0x5000 */
                     "b          #-2                             \n"); /*r8-lr>0x5000 A to B */
    /*设B为可执行，A不可执行*/
    PUSH()
    MPU_DISABLE_1_ENABLE_0();
    POP()
    __asm__ volatile("ldr        r0,[r10,#-8]                  \n" /*恢复r0*/
                     "blx        r8                            \n");
    /*设A为可执行，B不可执行*/
    PUSH()
    MPU_DISABLE_0_ENABLE_1();
    POP()
    __asm__ volatile("  b          #4                              \n" /*跳到结尾*/
                     /*以下说明不跨区域*/
                     "  ldr        r0,[r10,#-8]                  \n" /*恢复r0*/
                     "  blx        r8                            \n");
    __asm__ volatile("   sub r10, #32    \n"
                     "   ldr lr, [r10]  \n"
                     "   bx  lr         \n");
}
