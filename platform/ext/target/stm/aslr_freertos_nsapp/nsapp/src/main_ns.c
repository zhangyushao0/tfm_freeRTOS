#include "main_ns.h"
#include "FreeRTOS.h"
#include "stm32l562xx.h"
#include "stm32l5xx_hal.h"
#include "stm32l5xx_hal_rcc.h"
// #include "support.h"
#include "task.h"

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

void testThread1(void* pvParameters) {
    uint32_t start = xTaskGetTickCount();
    for (int i = 0; i < 1000; ++i) {
    }
    uint32_t end = xTaskGetTickCount();
    uint32_t res = end - start;
    while (1) {
        res = end - start;
        vTaskDelay(1000);
    }
}

void testThread2(void* pvParameters) {
    while (1) {
        HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_3);
        vTaskDelay(1000);
    }
}

char cArray[128] __attribute__((aligned(128)));
int  main() {
    HAL_Init();

    MX_GPIO_Init();

    static StackType_t xRWAccessTaskStack1[configMINIMAL_STACK_SIZE] __attribute__((aligned(32)));
    TaskParameters_t   taskParams1 = {
           .pvTaskCode = testThread1,
           .pcName = "testThread1",
           .usStackDepth = configMINIMAL_STACK_SIZE,
           .pvParameters = NULL,
           .uxPriority = 1,
           .puxStackBuffer = xRWAccessTaskStack1,
           .xRegions = {
            /* Base address Length Parameters */
            {0, 0, 0},
            {0, 0, 0},
        }};

    static StackType_t xRWAccessTaskStack2[configMINIMAL_STACK_SIZE] __attribute__((aligned(32)));
    TaskParameters_t   taskParams2 = {
           .pvTaskCode = testThread2,
           .pcName = "testThread2",
           .usStackDepth = configMINIMAL_STACK_SIZE,
           .pvParameters = NULL,
           .uxPriority = 1,
           .puxStackBuffer = xRWAccessTaskStack2,
           .xRegions = {
            /* Base address Length Parameters */
            {(void*)(AHB2PERIPH_BASE_NS), 0x2000UL, portMPU_REGION_READ_WRITE},
            {0, 0, 0},
        }};

    xTaskCreateRestricted(&taskParams1, NULL);
    xTaskCreateRestricted(&taskParams2, NULL);

    /* 启动调度器 */
    vTaskStartScheduler();

    /* 如果系统正常工作，以下代码不会执行 */
    for (;;) {}
}
