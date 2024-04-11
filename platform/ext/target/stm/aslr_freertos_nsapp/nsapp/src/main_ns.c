#include "main_ns.h"
#include "FreeRTOS.h"
#include "stm32l562xx.h"
#include "stm32l5xx_hal.h"
#include "stm32l5xx_hal_flash.h"
#include "stm32l5xx_hal_rcc.h"
#include "support.h"
#include "task.h"
#define TFM_SPM_LOG_LEVEL TFM_SPM_LOG_LEVEL_DEBUG

#define mpu_disable_0_enable_1()                                \
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

#define mpu_disable_1_enable_0()                                \
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

#define push()                                             \
    __asm__ volatile("   add      r10, #0x10          \n"  \
                     "   str      r3, [r10, #0xc]      \n" \
                     "   str      r2, [r10, #0x8]      \n" \
                     "   str      r1, [r10, #0x4]      \n" \
                     "   str      r0, [r10]            \n");

#define pop()                                              \
    __asm__ volatile("   ldr      r0, [r10]            \n" \
                     "   ldr      r1, [r10, #0x4]      \n" \
                     "   ldr      r2, [r10, #0x8]      \n" \
                     "   ldr      r3, [r10, #0xc]      \n" \
                     "   sub      r10, #0x10          \n");

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

void func01() {
    push();
    mpu_disable_0_enable_1();
    pop();
}

void func10() {
    push();
    mpu_disable_1_enable_0();
    pop();
}
__attribute__((section(".tram_section"))) __attribute__((naked)) void trampoline_A_B(void) {
    __asm__ volatile(
        "str      lr,[r10]                   \n"
        "add      r10,#4                   \n");
    push();
    mpu_disable_1_enable_0();
    pop();
    __asm__ volatile(
        "blx      r8                   \n");
    push();
    mpu_disable_0_enable_1();
    pop();
    __asm__ volatile(
        "sub      r10,#4                   \n"
        "ldr      pc,[r10]                      \n");
}

__attribute__((section(".tram_section"))) __attribute__((naked)) void trampoline_B_A(void) {
    __asm__ volatile(
        "str      lr,[r10]                   \n"
        "add      r10,#32                   \n");
    push();
    mpu_disable_1_enable_0();
    pop();
    __asm__ volatile(
        "blx      r8                   \n");
    push();
    mpu_disable_0_enable_1();
    pop();
    __asm__ volatile(
        "sub      r10,#32                   \n"
        "ldr      pc,[r10]                      \n");
}

static void MX_GPIO_Init(void) {
    GPIO_InitTypeDef GPIO_InitStruct = {0};

    /* GPIO Ports Clock Enable */
    __HAL_RCC_GPIOD_CLK_ENABLE();

    /*Configure GPIO pin Output Level */
    HAL_GPIO_WritePin(LED9_GPIO_Port, LED9_Pin, GPIO_PIN_SET);

    /*Configure GPIO pin : LED9_Pin */
    GPIO_InitStruct.Pin = LED9_Pin;
    GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
    GPIO_InitStruct.Pull = GPIO_PULLUP;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
    HAL_GPIO_Init(LED9_GPIO_Port, &GPIO_InitStruct);
}

void spin_100000() {
    for (int i = 0; i < 100000; i++) {
        __ASM volatile("nop");
    }
}

void testThread2(void* pvParameters) {
    int a = 0;
    initialise_benchmark();
    int result = benchmark();
    verify_benchmark(result);
    while (1) {
        a++;
        HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_3);
        spin_100000();
    }
}

void testThread1(void* pvParameters) {
    // initialise_benchmark();
    // int result = benchmark();
    // assert(verify_benchmark(result));
    //     while (1) {
    //     HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_3);
    //     vTaskDelay(500);
    //   }
    while (1) {
        HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_3);
        for (int i = 0; i < 100000; i++) {
            __ASM volatile("nop");
        }
    }
}

int main() {
    /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
    // HAL_Init();
    MX_GPIO_Init();
    func01();
    uint32_t* addr0 = (uint32_t*)(0x20005500);
    *addr0 = 1;
    func10();
    uint32_t* addr1 = (uint32_t*)(0x20007500);
    *addr1 = 1;
    /* USER CODE BEGIN Init */

    /* USER CODE END Init */

    // testThread2();
    BaseType_t xReturned;

    xReturned = xTaskCreate(
        testThread2,           /* Function that implements the task. */
        "testThread1",         /* Text name for the task. */
        ((uint16_t)300),       /* Stack size in words, not bytes. */
        NULL,                  /* Parameter passed into the task. */
        1 | portPRIVILEGE_BIT, /* Priority at which the task is created. */
        NULL);                 /* Used to pass out the created task's handle. */

    /* 启动调度器 */
    vTaskStartScheduler();

    /* 如果系统正常工作，以下代码不会执行 */
    for (;;) {
        trampoline_A_B();
        trampoline_B_A();
    }
}