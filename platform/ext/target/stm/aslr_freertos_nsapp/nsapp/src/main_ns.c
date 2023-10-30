#include "main_ns.h"
#include "FreeRTOS.h"
#include "stm32l562xx.h"
#include "stm32l5xx_hal.h"
#include "stm32l5xx_hal_rcc.h"
#include "task.h"
#include <stdint.h>

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
void testThread(void *pvParameters)
    __attribute__((section(".privileged_functions")));
void testThread(void *pvParameters) {
  while (1) {
    HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_3);
    vTaskDelay(500);
  }
}
int main() {
  HAL_Init();
  MX_GPIO_Init();

  /* 创建特权级任务 */
  // xTaskCreateRestricted(testThread, "testThread", 1024, NULL, 1, NULL, NULL);

  /* 启动调度器 */
  vTaskStartScheduler();

  /* 如果系统正常工作，以下代码不会执行 */
  for (;;)
    ;
}