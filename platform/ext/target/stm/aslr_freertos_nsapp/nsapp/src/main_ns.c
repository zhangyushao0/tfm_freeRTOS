#include "main_ns.h"
// #include "FreeRTOS.h"
#include "assert.h"

#include "stm32l562xx.h"
#include "stm32l5xx_hal.h"
#include "stm32l5xx_hal_flash.h"
#include "stm32l5xx_hal_rcc.h"
// #include "support.h"
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

int c = 0;
int d = 0;

int add(int a, int b) { //  __attribute__((section("random_functions")))
    c++;
    int sum = a;
    while (b != 0) {
        sum = a ^ b;
        b = ((a & b) << 1);
        a = sum;
    }
    return sum;
}
int minust(int a, int b) { // __attribute__((section("random_functions")))
    d++;
    return add(a, add(~b, 1));
}

// int (*p)(int, int) = add;

int main() {
    // NVIC_SystemReset();

    // HAL_Init();
    // p(1, 2);
    // p = minust;
    // p(1, 2);

    int e = add(1, 2);
    int f = minust(1, 2);
    e += c;
    f += d;

    MX_GPIO_Init();

    while (1) {
        HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_3);
        spin_100000();
    }

    /* 如果系统正常工作，以下代码不会执行 */
    for (;;)
        ;
}
