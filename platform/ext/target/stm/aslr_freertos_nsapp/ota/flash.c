#include "flash.h"
#include <string.h>

HAL_StatusTypeDef Flash_Write_Byte(uint32_t Address, uint8_t Data) {
    HAL_FLASH_Unlock();

    uint32_t page = GetPage(Address);
    uint32_t page_addr = page * FLASH_PAGE_SIZE + FLASH_BASE;
    uint32_t PageError = 0;
    uint32_t offset = Address % FLASH_PAGE_SIZE;
    uint32_t bank = GetBank(page);
    uint8_t buffer[FLASH_PAGE_SIZE];
    FLASH_EraseInitTypeDef EraseInitStruct;
    EraseInitStruct.TypeErase = FLASH_TYPEERASE_PAGES;
    EraseInitStruct.Banks = bank;
    EraseInitStruct.Page = page;
    EraseInitStruct.NbPages = 1;

    memcpy(buffer, (uint32_t*)page_addr, FLASH_PAGE_SIZE);
    if (HAL_FLASHEx_Erase(&EraseInitStruct, &PageError) != HAL_OK) {
        return HAL_ERROR;
        //		while (1)
        //	    {
        //			BSP_LED_On(LED9);
        //		    HAL_Delay(1000);
        //		    BSP_LED_Off(LED9);
        //		    HAL_Delay(1000);
        //		}
    }
    buffer[offset] = Data;
    Flash_Write_Page(page, buffer);

    HAL_FLASH_Lock();

    return HAL_OK;
}

HAL_StatusTypeDef Flash_Write_Double_Word(uint32_t Address, uint64_t Data) {
    HAL_FLASH_Unlock();

    uint32_t page = GetPage(Address);
    uint32_t page_addr = page * FLASH_PAGE_SIZE + FLASH_BASE;
    uint32_t PageError = 0;
    uint32_t offset = Address % FLASH_PAGE_SIZE;
    uint32_t bank = GetBank(page);
    uint8_t buffer[FLASH_PAGE_SIZE];
    FLASH_EraseInitTypeDef EraseInitStruct;
    EraseInitStruct.TypeErase = FLASH_TYPEERASE_PAGES;
    EraseInitStruct.Banks = bank;
    EraseInitStruct.Page = page;
    EraseInitStruct.NbPages = 1;

    memcpy(buffer, (uint32_t*)page_addr, FLASH_PAGE_SIZE);
    if (HAL_FLASHEx_Erase(&EraseInitStruct, &PageError) != HAL_OK) {
        return HAL_ERROR;
        //		while (1)
        //	    {
        //			BSP_LED_On(LED9);
        //		    HAL_Delay(1000);
        //		    BSP_LED_Off(LED9);
        //		    HAL_Delay(1000);
        //		}
    }
    for (int i = 0; i < 8; i++) {
        buffer[offset + i] = (Data >> (8 * i)) & 0xff;
    }
    Flash_Write_Page(page, buffer);

    HAL_FLASH_Lock();

    return HAL_OK;
}

HAL_StatusTypeDef Flash_Write_Word(uint32_t Address, uint32_t Data) {
    HAL_FLASH_Unlock();

    uint32_t page = GetPage(Address);
    uint32_t page_addr = page * FLASH_PAGE_SIZE + FLASH_BASE;
    uint32_t PageError = 0;
    uint32_t offset = Address % FLASH_PAGE_SIZE;
    uint32_t bank = GetBank(page);
    uint8_t buffer[FLASH_PAGE_SIZE];
    FLASH_EraseInitTypeDef EraseInitStruct;
    EraseInitStruct.TypeErase = FLASH_TYPEERASE_PAGES;
    EraseInitStruct.Banks = bank;
    EraseInitStruct.Page = page;
    EraseInitStruct.NbPages = 1;

    memcpy(buffer, (uint32_t*)page_addr, FLASH_PAGE_SIZE);
    if (HAL_FLASHEx_Erase(&EraseInitStruct, &PageError) != HAL_OK) {
        return HAL_ERROR;
        //		while (1)
        //	    {
        //			BSP_LED_On(LED9);
        //		    HAL_Delay(1000);
        //		    BSP_LED_Off(LED9);
        //		    HAL_Delay(1000);
        //		}
    }
    for (int i = 0; i < 4; i++) {
        buffer[offset + i] = (Data >> (8 * i)) & 0xff;
    }
    Flash_Write_Page(page, buffer);

    HAL_FLASH_Lock();

    return HAL_OK;
}

HAL_StatusTypeDef Flash_Write_Page(uint32_t Page, uint8_t* pBuffer) {
    uint32_t address = Page * FLASH_PAGE_SIZE + FLASH_BASE;
    uint64_t data = 0;
    for (unsigned int i = 0; i < FLASH_PAGE_SIZE; i += 8) {
        for (unsigned int j = 0; j < 8; j++) {
            data = pBuffer[i + 7 - j] | (data << 8U);
        }
        if (HAL_FLASH_Program(FLASH_TYPEPROGRAM_DOUBLEWORD, address + i,
                              data) != HAL_OK) {
            return HAL_ERROR;
            //		    while (1)
            //		    {
            //
            //		    	BSP_LED_On(LED9);
            //		        HAL_Delay(1000);
            //		        BSP_LED_Off(LED9);
            //		        HAL_Delay(1000);
            //		    }
        }
    }
    return HAL_OK;
}

HAL_StatusTypeDef Flash_Write(uint32_t Address, uint8_t* pBuffer,
                              uint32_t Size) {
    uint32_t page = GetPage(Address);
    uint32_t first_len = FLASH_PAGE_SIZE - Address % FLASH_PAGE_SIZE;
    uint32_t last_len = 0;
    uint32_t num_page = 0;

    if (first_len > Size) {
        first_len = Size;
    }
    last_len = (Size - first_len) % FLASH_PAGE_SIZE;
    num_page = (Size - first_len) / FLASH_PAGE_SIZE + 1;
    if (last_len) {
        num_page++;
    }

    HAL_FLASH_Unlock();
    for (unsigned int i = 0; i < num_page; i++) {
        if (i == 0) {
            uint32_t page_address = (page + i) * FLASH_PAGE_SIZE + FLASH_BASE;
            uint32_t offset = Address % FLASH_PAGE_SIZE;
            uint8_t buffer[FLASH_PAGE_SIZE];
            uint32_t PageError = 0;

            FLASH_EraseInitTypeDef EraseInitStruct;
            EraseInitStruct.TypeErase = FLASH_TYPEERASE_PAGES;
            EraseInitStruct.Banks = GetBank(page + i);
            EraseInitStruct.Page = page + i;
            EraseInitStruct.NbPages = 1;

            // memcpy(buffer, (uint32_t*)page_address, FLASH_PAGE_SIZE);
            memcpy(buffer, (uint32_t*)page_address, offset);
            for (unsigned int j = 0; j < first_len; j++) {
                buffer[offset + j] = pBuffer[j];
            }

            if (HAL_FLASHEx_Erase(&EraseInitStruct, &PageError) != HAL_OK) {
                return HAL_ERROR;
                //				while (1)
                //			    {
                //					BSP_LED_On(LED9);
                //			        HAL_Delay(1000);
                //			        BSP_LED_Off(LED9);
                //			        HAL_Delay(1000);
                //			    }
            }

            Flash_Write_Page(page + i, buffer);
        } else if (i == num_page - 1) {
            uint32_t page_address = (page + i) * FLASH_PAGE_SIZE + FLASH_BASE;
            uint32_t pBuffer_base = (i - 1) * FLASH_PAGE_SIZE + first_len;
            uint8_t buffer[FLASH_PAGE_SIZE];
            uint32_t PageError = 0;

            FLASH_EraseInitTypeDef EraseInitStruct;
            EraseInitStruct.TypeErase = FLASH_TYPEERASE_PAGES;
            EraseInitStruct.Banks = GetBank(page + i);
            EraseInitStruct.Page = page + i;
            EraseInitStruct.NbPages = 1;

            memcpy(buffer, (uint32_t*)page_address, FLASH_PAGE_SIZE);
            for (unsigned int j = 0; j < last_len; j++) {
                buffer[j] = pBuffer[pBuffer_base + j];
            }

            if (HAL_FLASHEx_Erase(&EraseInitStruct, &PageError) != HAL_OK) {
                return HAL_ERROR;
                //	    		while (1)
                //	        	{
                //	    			BSP_LED_On(LED9);
                //	        	    HAL_Delay(1000);
                //	           	    BSP_LED_Off(LED9);
                //	        	    HAL_Delay(1000);
                //	        	}
            }

            Flash_Write_Page(page + i, buffer);
        } else {
            uint64_t data = 0;
            uint32_t page_address = (page + i) * FLASH_PAGE_SIZE + FLASH_BASE;
            uint32_t pBuffer_base = (i - 1) * FLASH_PAGE_SIZE + first_len;
            uint32_t PageError = 0;

            FLASH_EraseInitTypeDef EraseInitStruct;
            EraseInitStruct.TypeErase = FLASH_TYPEERASE_PAGES;
            EraseInitStruct.Banks = GetBank(page + i);
            EraseInitStruct.Page = page + i;
            EraseInitStruct.NbPages = 1;

            if (HAL_FLASHEx_Erase(&EraseInitStruct, &PageError) != HAL_OK) {
                return HAL_ERROR;
                //	    		while (1)
                //	      		{
                //	        		BSP_LED_On(LED9);
                //	        	    HAL_Delay(1000);
                //	        	    BSP_LED_Off(LED9);
                //	                HAL_Delay(1000);
                //	      		}
            }

            for (unsigned int j = 0; j < FLASH_PAGE_SIZE; j += 8) {
                for (unsigned int k = 0; k < 8; k++) {
                    data = pBuffer[pBuffer_base + j + 7 - k] | (data << 8);
                }
                if (HAL_FLASH_Program(FLASH_TYPEPROGRAM_DOUBLEWORD,
                                      page_address, data) == HAL_OK) {
                    page_address += 8;
                } else {
                    return HAL_ERROR;
                    //	        		while (1)
                    //	        		{
                    //	        			BSP_LED_On(LED9);
                    //	        			HAL_Delay(1000);
                    //	        			BSP_LED_Off(LED9);
                    //	        			HAL_Delay(1000);
                    //	        		}
                }
            }
        }
    }
    HAL_FLASH_Lock();
    return HAL_OK;
}

uint32_t GetPage(uint32_t Address) {
    uint32_t page = 0;

    if (Address >= FLASH_BASE && Address < (FLASH_BASE + FLASH_BANK_SIZE)) {
        page = (Address - FLASH_BASE) / FLASH_PAGE_SIZE;
    } else if (Address >= FLASH_BASE + FLASH_BANK_SIZE &&
               Address < (FLASH_BASE + FLASH_BANK_SIZE * 2)) {
        page =
            (Address - FLASH_BASE - FLASH_BANK_SIZE) / FLASH_PAGE_SIZE + 128U;
    } else if (Address < (FLASH_BASE_NS + FLASH_BANK_SIZE)) {
        page = (Address - FLASH_BASE) / FLASH_PAGE_SIZE;
    } else {
        page = (Address - (FLASH_BASE_NS + FLASH_BANK_SIZE)) / FLASH_PAGE_SIZE +
               128U;
    }

    return page;
}

uint32_t GetBank(uint32_t Page) {
    if (READ_BIT(FLASH->OPTR, FLASH_OPTR_DBANK) != 0U) {
        if (Page < 128U) {
            return FLASH_BANK_1;
        } else {
            return FLASH_BANK_2;
        }
    } else {
        return FLASH_BANK_1;
    }
}

uint32_t GetAddress(uint32_t page) {
    return page * FLASH_PAGE_SIZE + FLASH_BASE_NS;
}
