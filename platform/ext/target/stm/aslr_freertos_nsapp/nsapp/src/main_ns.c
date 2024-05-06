#include "main_ns.h"
// #include "FreeRTOS.h"
#include "stm32l562xx.h"
#include "stm32l5xx_hal.h"
#include "stm32l5xx_hal_rcc.h"
#include "support.h"
// #include "task.h"
// #include "trampline.h"

#define TFM_SPM_LOG_LEVEL TFM_SPM_LOG_LEVEL_DEBUG

// inline_vectors int (*inline_vectors[])(void) __attribute__((used)) = {SysTick_Handler};

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

// void testThread1(void* pvParameters) {
//     //     SysTick->LOAD = 0xFFFFFFFF; // Set the reload value to the maximum
//     //     SysTick->VAL = 0;           // Clear the current value to 0
//     uint32_t start = xTaskGetTickCount();
//     for (int i = 0; i < 1000; ++i) {
//         initialise_benchmark();
//         int result = benchmark();
//         verify_benchmark(result);
//     }
//     uint32_t end = xTaskGetTickCount();
//     uint32_t res = end - start;
//     while (1) {
//         res = end - start;
//         vTaskDelay(1000);
//     }
// }

// void testThread2(void* pvParameters) {
//     while (1) {
//         HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_3);
//         vTaskDelay(1000);
//     }
// }

// void testThread3(void* pvParameters) {
//     initialise_benchmark();
//     int result = benchmark();
//     verify_benchmark(result);
//     while (1) {
//         vTaskDelay(500);
//     }
// }

void func() {
    SysTick->CTRL = 0;          // Disable SysTick
    SysTick->LOAD = 0xFFFFFFFF; // Set the reload value to the maximum
    SysTick->VAL = 0;           // Clear the current value to 0
    SysTick->CTRL = 0x5;
    initialise_benchmark();
    int result = benchmark();
    verify_benchmark(result);
    uint32_t start = SysTick->VAL;
    for (int i = 0; i < 500; ++i) {
        initialise_benchmark();
        int result = benchmark();
        verify_benchmark(result);
    }
    uint32_t end = SysTick->VAL;
    uint32_t res = start - end;
    uint32_t end1 = SysTick->VAL;
}

char cArray[128] __attribute__((aligned(128)));
int  main() {
    HAL_Init();
    // 声明一个函数指针类型
    void (*functionPtr)();

    // 将函数指针指向 greet() 函数
    functionPtr = MX_GPIO_Init;

    // 通过函数指针调用 greet() 函数
    functionPtr();
    //MX_GPIO_Init();
    func();

    // BaseType_t xReturned;

    // xReturned = xTaskCreate(
    //     testThread1,           /* Function that implements the task. */
    //     "testThread1",         /* Text name for the task. */
    //     ((uint16_t)200),       /* Stack size in words, not bytes. */
    //     NULL,                  /* Parameter passed into the task. */
    //     1 | portPRIVILEGE_BIT, /* Priority at which the task is created. */
    //     NULL);                 /* Used to pass out the created task's handle. */

    // xReturned = xTaskCreate(
    //     testThread2,           /* Function that implements the task. */
    //     "testThread2",         /* Text name for the task. */
    //     ((uint16_t)200),       /* Stack size in words, not bytes. */
    //     NULL,                  /* Parameter passed into the task. */
    //     1 | portPRIVILEGE_BIT, /* Priority at which the task is created. */
    //     NULL);                 /* Used to pass out the created task's handle. */

    // //  xReturned = xTaskCreate(
    // //      testThread3,           /* Function that implements the task. */
    // //      "testThread3",         /* Text name for the task. */
    // //      ((uint16_t)100),       /* Stack size in words, not bytes. */
    // //      NULL,                  /* Parameter passed into the task. */
    // //      1 | portPRIVILEGE_BIT, /* Priority at which the task is created. */
    // //      NULL);
    // /* 启动调度器 */
    // vTaskStartScheduler();

    /* 如果系统正常工作，以下代码不会执行 */
    for (;;) {
    }
}