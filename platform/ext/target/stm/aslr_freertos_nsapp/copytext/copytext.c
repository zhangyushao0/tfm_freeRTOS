
#include "copytext.h"
#include "port.h"
#include <stdint.h>

uint32_t convertAddress(uint32_t address) {
  uint32_t page = GetPage(address);
  address = FLASH_BASE + page * FLASH_PAGE_SIZE;
  return address;
}

void copytext() {
  uint32_t dstAddress = __text_address__ + __text_offset__;
  dstAddress = convertAddress(dstAddress);
  while (dstAddress + __text_offset__ < FLASH_BASE + FLASH_SIZE) {
    flash_writing(__text_address__, __text_offset__, dstAddress);
    dstAddress += __text_offset__;
  }
}