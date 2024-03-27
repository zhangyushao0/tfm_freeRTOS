#include "main_ns.h"
#include "FreeRTOS.h"
#include "assert.h"

#include "stm32l562xx.h"
#include "stm32l5xx_hal.h"
#include "stm32l5xx_hal_flash.h"
#include "stm32l5xx_hal_rcc.h"
#include "support.h"
//#include "task.h"
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


void testThread2(void) {
    initialise_benchmark();
    int result = benchmark();
    assert(verify_benchmark(result));
//     while (1) {
//     HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_3);
//     vTaskDelay(500);
//   }
}

int main() {
    MX_GPIO_Init();

    testThread2();

//       static StackType_t xRWAccessTaskStack1[configMINIMAL_STACK_SIZE]
//       __attribute__((aligned(32)));
//   TaskParameters_t taskParams2 = {
//       .pvTaskCode = testThread2,
//       .pcName = "testThread2",
//       .usStackDepth = configMINIMAL_STACK_SIZE,
//       .pvParameters = NULL,
//       .uxPriority = 1 | portPRIVILEGE_BIT,
//       .puxStackBuffer = xRWAccessTaskStack1,
//       .xRegions = {
//           /* Base address Length Parameters */
//           {(void *)(AHB2PERIPH_BASE_NS), 0x2000UL, portMPU_REGION_READ_WRITE},
//           {0, 0, 0},
//           {0, 0, 0}}};
//   //xTaskCreateRestricted(&taskParams, NULL);
//   xTaskCreateRestricted(&taskParams2, NULL);
    

    
    while (1) {
        HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_3);
        spin_100000();
    }

    /* 如果系统正常工作，以下代码不会执行 */
    for (;;)
        ;
}