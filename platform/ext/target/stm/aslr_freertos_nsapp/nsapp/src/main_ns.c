#include "main_ns.h"
#include "FreeRTOS.h"
#include "assert.h"
#include "stm32l562xx.h"
#include "stm32l5xx_hal.h"
#include "stm32l5xx_hal_rcc.h"
#include "support.h"
#include "task.h"
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
void *ret_addr1;
void *ret_addr2;

int sum(int a, int b) { return a + b; }
void testThread(void *pvParameters) {
  while (1) {
    HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_3);
    int a = 2;
    int b = 3;
    int c = sum(a, b);
    vTaskDelay(500);
  }
}

void testThread2(void *pvParameters) {
  initialise_benchmark();
  int result = benchmark();
  assert(verify_benchmark(result));
  while (1) {
    HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_3);
    int a = 2;
    int b = 3;
    int c = sum(a, b);
    vTaskDelay(500);
  }
}

char cArray[128] __attribute__((aligned(128)));
int main() {
  HAL_Init();
  MX_GPIO_Init();

  // int result = benchmark();
  // assert(verify_benchmark(result));
  static StackType_t xRWAccessTaskStack[configMINIMAL_STACK_SIZE]
      __attribute__((aligned(32)));
  // TaskParameters_t taskParams = {
  //     .pvTaskCode = testThread,
  //     .pcName = "testThread",
  //     .usStackDepth = configMINIMAL_STACK_SIZE,
  //     .pvParameters = NULL,
  //     .uxPriority = 1,
  //     .puxStackBuffer = xRWAccessTaskStack,
  //     .xRegions = {
  //         /* Base address Length Parameters */
  //         {(void *)(AHB2PERIPH_BASE_NS), 0x2000UL,
  //         portMPU_REGION_READ_WRITE}, {0, 0, 0}, {0, 0, 0}}};
  TaskParameters_t taskParams2 = {
      .pvTaskCode = testThread2,
      .pcName = "testThread",
      .usStackDepth = configMINIMAL_STACK_SIZE,
      .pvParameters = NULL,
      .uxPriority = 1 | portPRIVILEGE_BIT,
      .puxStackBuffer = xRWAccessTaskStack,
      .xRegions = {
          /* Base address Length Parameters */
          {(void *)(AHB2PERIPH_BASE_NS), 0x2000UL, portMPU_REGION_READ_WRITE},
          {0, 0, 0},
          {0, 0, 0}}};
  xTaskCreateRestricted(&taskParams2, NULL);

  /* 启动调度器 */
  vTaskStartScheduler();

  /* 如果系统正常工作，以下代码不会执行 */
  for (;;)
    ;
}