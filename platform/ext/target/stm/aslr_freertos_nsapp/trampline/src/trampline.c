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

#define MPU_DISABLE_0_DISABLE_1()                               \
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

#define PUSH()                                \
    __asm__ volatile(                         \
        "   str      r3, [r10, #0x4]      \n" \
        "   str      r2, [r10, #0x8]      \n" \
        "   str      r1, [r10, #0xc]      \n" \
        "   str      r0, [r10, #0x10]     \n" \
        "   add      r10, #0x10          \n");

#define POP()                                  \
    __asm__ volatile(                          \
        "   sub      r10, #0x10            \n" \
        "   ldr      r3, [r10, #0x4]       \n" \
        "   ldr      r2, [r10, #0x8]       \n" \
        "   ldr      r1, [r10, #0xc]       \n" \
        "   ldr      r0, [r10, #0x10]      \n");

__attribute__((section(".tram_section"))) __attribute__((naked)) void trampoline_A_B(void) {
    __asm__ volatile(
        "add      r10,#4                   \n"
        "str      lr,[r10]                   \n");
    PUSH()
    MPU_DISABLE_0_ENABLE_1()
    POP()
    __asm__ volatile("blx      r8                   \n");
    PUSH()
    MPU_DISABLE_1_ENABLE_0()
    POP()
    __asm__ volatile(
        "   ldr lr, [r10]  \n"
        "   sub r10, #4    \n"
        "   bx  lr         \n");
}

__attribute__((section(".tram_section"))) __attribute__((naked)) void trampoline_B_A(void) {
    __asm__ volatile(
        "add      r10,#4                   \n"
        "str      lr,[r10]                   \n");
    PUSH()
    MPU_DISABLE_1_ENABLE_0()
    POP()
    __asm__ volatile("blx      r8                   \n");
    PUSH()
    MPU_DISABLE_0_ENABLE_1()
    POP()
    __asm__ volatile(
        "   ldr lr, [r10]  \n"
        "   sub r10, #4    \n"
        "   bx  lr         \n");
}
#define REGION_DIVIDE (20010000)

#define RETURN_REGION1()                                     \
    __asm__ volatile(                                        \
        "mov r0, r8       \n");                              \
    __asm__ volatile("movw r1, %0"                           \
                     :                                       \
                     : "i"(REGION_DIVIDE & 0xFFFF));         \
    __asm__ volatile("movt r1, %0"                           \
                     :                                       \
                     : "i"((REGION_DIVIDE >> 16) & 0xFFFF)); \
    __asm__ volatile(                                        \
        "cmp r0, r1        \n"                               \
        "blt second_region1  \n");                           \
    MPU_DISABLE_1_ENABLE_0();                                \
    __asm__ volatile("b done1            \n");               \
    __asm__ volatile("second_region1:     \n");              \
    MPU_DISABLE_0_ENABLE_1();                                \
    __asm__ volatile("done1:     \n");

#define RETURN_REGION2()                                     \
    __asm__ volatile(                                        \
        "ldr r0, [r10]       \n");                           \
    __asm__ volatile("movw r1, %0"                           \
                     :                                       \
                     : "i"(REGION_DIVIDE & 0xFFFF));         \
    __asm__ volatile("movt r1, %0"                           \
                     :                                       \
                     : "i"((REGION_DIVIDE >> 16) & 0xFFFF)); \
    __asm__ volatile(                                        \
        "cmp r0, r1        \n"                               \
        "blt second_region2  \n");                           \
    MPU_DISABLE_1_ENABLE_0();                                \
    __asm__ volatile("b done2            \n");               \
    __asm__ volatile("second_region2:     \n");              \
    MPU_DISABLE_0_ENABLE_1();                                \
    __asm__ volatile("done2:     \n");

__attribute__((section(".tram_section"))) __attribute__((naked)) void trampoline_blx(void) {
    __asm__ volatile(
        "add      r10,#4                   \n"
        "str      lr,[r10]                   \n");
    PUSH()
    RETURN_REGION1()
    POP()
    __asm__ volatile(
        "blx        r8                            \n");
    PUSH()
    RETURN_REGION2()
    POP()
    __asm__ volatile(
        "   ldr lr, [r10]  \n"
        "   sub r10, #4    \n"
        "   bx  lr         \n");
}
