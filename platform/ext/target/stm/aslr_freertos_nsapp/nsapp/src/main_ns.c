#include "main_ns.h"
// #include "FreeRTOS.h"
#include "assert.h"

#include "stm32l562xx.h"
#include "stm32l5xx_hal.h"
#include "stm32l5xx_hal_flash.h"
#include "stm32l5xx_hal_rcc.h"
#include "support.h"
// #include "task.h"
#define TFM_SPM_LOG_LEVEL TFM_SPM_LOG_LEVEL_DEBUG

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
void copy_text2ram(uint32_t* dst, uint32_t src, int len) {
    HAL_FLASH_Unlock();
    for (int i = 0; i < len; i++) {
        dst[i] = *(uint32_t*)(src + i * 4);
    }
    HAL_FLASH_Lock();
}
void toggle_light_2();
void toggle_light();
void toggle_light_2() {
    int i = 10;
    while (i--) {
        HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_3);
        spin_100000();
        spin_100000();
        spin_100000();
        spin_100000();
    }
    void (*new_toggle_light)() = (void (*)())toggle_light;
    new_toggle_light();
}
void toggle_light() {
    int i = 10;
    while (i--) {
        HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_3);
        spin_100000();
    }
    toggle_light_2();
}

int a = 0;
// extern void printf(const char *fmt, ...);
void foo2() {
    for (;;) {
    }
}
void foo3() {
    for (;;) {
    }
}
void foo() {
    void (*ptr)() = foo2;
    void (*ptr2)() = foo3;
    ptr();
    ptr2();
    foo3();
    a += 1;
}

char cArray[128] __attribute__((aligned(128)));

int main() {
    // HAL_Init();
    initialise_benchmark();
    int res = benchmark();
    verify_benchmark(res);

    MX_GPIO_Init();
    foo();

    while (1) {
        HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_3);
        spin_100000();
    }

    /* 如果系统正常工作，以下代码不会执行 */
    for (;;)
        ;
}
