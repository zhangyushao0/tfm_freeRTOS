#include "loader.h"
#include "func_info.h"
#include "stm32l562xx.h"
#include "stm32l5xx_hal_flash.h"
int is_matched(uint32_t ar[], uint32_t val, int len) {
  for (int i = 0; i < len; i++) {
    if (ar[i] == val) {
      return i;
    }
  }
  return -1;
}
void copy_text2ram(uint32_t dst, uint32_t src, int len) {
  HAL_FLASH_Unlock();
  for (int i = 0; i < len; i++) {
    *(uint32_t *)(dst + i * 4) = *(uint32_t *)(src + i * 4);

    int index = is_matched(ldr_list, src + i * 4, sizeof(ldr_list) / 4);
    if (index != -1) {
      *(uint32_t *)(dst + ldr_list[index + 1] - src) -=
          (uint32_t)dst - (uint32_t)src;
    }
  }
  HAL_FLASH_Lock();
}