#include "port.h"

static uint32_t time;
extern uint32_t overflow;

static HAL_StatusTypeDef config_SBBPage(uint32_t Page, uint32_t Bank,
                                        uint32_t Attribute);

void start_time() {
  overflow = 0;
  time = HAL_GetTick();
}

uint32_t stop_time() { return (4294967295 * overflow) + HAL_GetTick() - time; }

int flash_erase_page(uint32_t page, uint8_t *buffer) {
  int ret = 0;
  uint32_t bank = GetBank(page);
  if (config_SBBPage(page, bank, BBSECURE) != HAL_OK) {
    ret += 1;
  }

  FLASH_EraseInitTypeDef EraseInitStruct;
  EraseInitStruct.TypeErase = FLASH_TYPEERASE_PAGES;
  EraseInitStruct.Banks = bank;
  EraseInitStruct.Page = page;
  EraseInitStruct.NbPages = 1;
  uint32_t address = GetAddress(page);
  uint32_t PageError = 0;

  HAL_FLASH_Unlock();
  // memcpy(buffer, (uint32_t*)address, FLASH_PAGE_SIZE);
  if (HAL_FLASHEx_Erase(&EraseInitStruct, &PageError) != HAL_OK) {
    ret += 1;
  }
  HAL_FLASH_Unlock();

  if (config_SBBPage(page, bank, BBNONSECURE) != HAL_OK) {
    ret += 1;
  }

  return ret;
}

int flash_read_word(uint32_t address, uint32_t *value) {
  int ret = 0;
  uint32_t page = GetPage(address);
  uint32_t bank = GetBank(page);
  if (config_SBBPage(page, bank, BBSECURE) != HAL_OK) {
    ret += 1;
  }

  *value = *(uint32_t *)address;

  if (config_SBBPage(page, bank, BBNONSECURE) != HAL_OK) {
    ret += 1;
  }

  return ret;
}

int flash_write_words(uint32_t page, uint8_t *buffer) {
  int ret = 0;
  uint32_t bank = GetBank(page);
  if (config_SBBPage(page, bank, BBSECURE) != HAL_OK) {
    ret += 1;
  }

  HAL_FLASH_Unlock();
  Flash_Write_Page(page, buffer);
  HAL_FLASH_Lock();

  if (config_SBBPage(page, bank, BBNONSECURE) != HAL_OK) {
    ret += 1;
  }

  return ret;
}

int flash_writing(uint32_t src_address, uint32_t size, uint32_t dir_address) {
  uint32_t ret = 0;
  uint32_t page = GetPage(dir_address);
  // uint32_t num_page = GetPage(src_address + size - 1) - GetPage(src_address)
  // + 1;
  uint32_t num_page =
      GetPage(dir_address + size - 1) - GetPage(dir_address) + 1;

  for (uint32_t i = 0; i < num_page; i++) {
    uint32_t bank = GetBank(page + i);
    if (config_SBBPage(page + i, bank, BBSECURE) != HAL_OK) {
      ret += 1;
    }
  }

  HAL_FLASH_Unlock();
  FLASH_EraseInitTypeDef EraseInitStruct;
  EraseInitStruct.TypeErase = FLASH_TYPEERASE_PAGES;
  EraseInitStruct.Banks = GetBank(page);
  EraseInitStruct.Page = page;
  EraseInitStruct.NbPages = num_page;
  uint32_t PageError = 0;
  if (HAL_FLASHEx_Erase(&EraseInitStruct, &PageError) != HAL_OK) {
    ret += 1;
  }

  uint64_t data;
  uint32_t i = 0;
  while (i < size) {
    if (i == 0 && (dir_address % 8) != 0) {
      data = (*(uint32_t *)src_address);
      data <<= 32;
      if (HAL_FLASH_Program(FLASH_TYPEPROGRAM_DOUBLEWORD, dir_address - 4,
                            data) != HAL_OK) {
        ret += 1;
      }
      i += 4;
    } else if ((size - i) == 4) {
      data = *(uint32_t *)(src_address + i);
      if (HAL_FLASH_Program(FLASH_TYPEPROGRAM_DOUBLEWORD, dir_address + i,
                            data) != HAL_OK) {
        ret += 1;
      }
      i += 4;
    } else {
      data = *(uint64_t *)(src_address + i);
      if (HAL_FLASH_Program(FLASH_TYPEPROGRAM_DOUBLEWORD, dir_address + i,
                            data) != HAL_OK) {
        ret += 1;
      }
      i += 8;
    }
  }
  HAL_FLASH_Lock();

  for (uint32_t i = 0; i < num_page; i++) {
    uint32_t bank = GetBank(page + i);
    if (config_SBBPage(page + i, bank, BBNONSECURE) != HAL_OK) {
      ret += 1;
    }
  }
  return ret;
}

static HAL_StatusTypeDef config_SBBPage(uint32_t Page, uint32_t Bank,
                                        uint32_t Attribute) {
  uint32_t BBReg;
  if (Bank == FLASH_BANK_2) {
    BBReg = (Page - 128) / 32;
  } else {
    BBReg = Page / 32;
  }

  uint32_t pageBit = Page % 32;

  FLASH_BBAttributesTypeDef BBAttributesStruct;
  BBAttributesStruct.Bank = Bank;
  BBAttributesStruct.BBAttributesType = FLASH_BB_SEC;
  HAL_FLASHEx_GetConfigBBAttributes(&BBAttributesStruct);
  BBAttributesStruct.BBAttributes_array[BBReg] &= ~(0x1 << pageBit);
  BBAttributesStruct.BBAttributes_array[BBReg] |= (Attribute & 0x1) << pageBit;

  return HAL_FLASHEx_ConfigBBAttributes(&BBAttributesStruct);
}
