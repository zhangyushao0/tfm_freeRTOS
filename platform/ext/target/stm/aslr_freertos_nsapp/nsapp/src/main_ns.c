#include "main_ns.h"
#include "FreeRTOS.h"
#include "stm32l562xx.h"
#include "stm32l5xx_hal.h"
#include "stm32l5xx_hal_rcc.h"
#include "task.h"
#include <stdint.h>
uint32_t __privileged_sram_start__ = 0x38000000;
uint32_t __privileged_sram_end__ = 0x3801FFFF;
uint32_t __unprivileged_sram_start__ = 0x38020000;
uint32_t __unprivileged_sram_end__ = 0x3803FFFF;
uint32_t __privileged_flash_start__ = 0x08000000;
uint32_t __privileged_flash_end__ = 0x0803FFFF;
uint32_t __unprivileged_flash_start__ = 0x08040000;
uint32_t __unprivileged_flash_end__ = 0x0807FFFF;
uint32_t __syscalls_flash_start__ = 0x08080000;
uint32_t __syscalls_flash_end__ = 0x0808FFFF;
uint32_t __privileged_functions_start__ = 0x08080000;
uint32_t __privileged_functions_end__ = 0x0808FFFF;
uint32_t __unprivileged_functions_start__ = 0x08090000;
uint32_t __unprivileged_functions_end__ = 0x0809FFFF;
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
void testThread() {
  while (1) {
    HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_3);
    vTaskDelay(500);
  }
}
int main() {
  HAL_Init();
  MX_GPIO_Init();
  TaskHandle_t *pxCreatedTask;

  xTaskCreateRestricted(testThread, pxCreatedTask);
  vTaskStartScheduler();
}