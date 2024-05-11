#include "main_ns.h"
// #include "FreeRTOS.h"
#include "stm32l562xx.h"
#include "stm32l5xx_hal.h"
#include "stm32l5xx_hal_rcc.h"
#include "support.h"
// #include "task.h"
#include "trampline.h"

#define TFM_SPM_LOG_LEVEL TFM_SPM_LOG_LEVEL_DEBUG
// inline_vectors int (*inline_vectors[])(void) __attribute__((used)) = {SysTick_Handler};

static void
MX_GPIO_Init(void) {
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

extern int cnt;

// void func() {
//     SysTick->CTRL = 0;          // Disable SysTick
//     SysTick->LOAD = 0xFFFFFFFF; // Set the reload value to the maximum
//     SysTick->VAL = 0;           // Clear the current value to 0
//     SysTick->CTRL = 0x7;
//     cnt = 0;
//     uint32_t start = SysTick->VAL;
//     for (int i = 0; i < 50; ++i) {
//         initialise_benchmark();
//         int result = benchmark();
//         verify_benchmark(result);
//     }
//     uint32_t end = SysTick->VAL;
//     uint32_t res = start - end;
//     uint32_t load = cnt;
//     int      a_b = geta_b();
//     int      b_a = getb_a();
// }

char cArray[128] __attribute__((aligned(128)));

int main() {
    HAL_Init();
    MX_GPIO_Init();

    SysTick->CTRL = 0;          // Disable SysTick
    SysTick->LOAD = 0xFFFFFFFF; // Set the reload value to the maximum
    SysTick->VAL = 0;           // Clear the current value to 0
    SysTick->CTRL = 0x7;
    cnt = 0;
    uint32_t start = SysTick->VAL;
    for (int i = 0; i < 500; ++i) {
        initialise_benchmark();
        int result = benchmark();
        verify_benchmark(result);
    }
    uint32_t end = SysTick->VAL;
    uint32_t res = start - end;
    uint32_t load = cnt;
    int      res_a_b = geta_b();
    int      res_b_a = getb_a();

    /* 如果系统正常工作，以下代码不会执行 */
    __asm__ volatile("mov r3, %0\n\t" : : "r"(start) : "r3");
    __asm__ volatile("mov r4, %0\n\t" : : "r"(end) : "r4");
    __asm__ volatile("mov r5, %0\n\t" : : "r"(load) : "r5");
    __asm__ volatile("mov r6, %0\n\t" : : "r"(res_b_a) : "r6");
    *((uint32_t*)(0x200049a0)) = 1;
    for (;;) {
        trampoline_A_B();
        trampoline_B_A();
        trampoline_blx();
    }
}