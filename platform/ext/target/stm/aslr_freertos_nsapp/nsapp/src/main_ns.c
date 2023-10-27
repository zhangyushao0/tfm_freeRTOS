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
StackType_t xStack[128] __attribute__((section(".privileged_sram")));
int main() {
  HAL_Init();
  MX_GPIO_Init();

  /* 定义一个特权级任务的参数 */
  TaskParameters_t xPrivilegedTaskParameters = {
      .pvTaskCode = testThread,
      .pcName = "PrivTask",
      .usStackDepth = 128, /* 栈大小，可能需要根据您的需求进行调整 */
      .pvParameters = NULL,
      .uxPriority = 1,
      /* 设置特权级任务的内存区域和权限 */
      .xRegions = {
          /* 针对您的硬件架构，这些值可能会有所不同 */
          /* 例子: */
          /* {起始地址, 长度, 权限属性}, */
      }};
  xPrivilegedTaskParameters.puxStackBuffer = xStack;
  /* 创建特权级任务 */
  xTaskCreateRestricted(&xPrivilegedTaskParameters, NULL);

  /* 启动调度器 */
  vTaskStartScheduler();

  /* 如果系统正常工作，以下代码不会执行 */
  for (;;)
    ;
}