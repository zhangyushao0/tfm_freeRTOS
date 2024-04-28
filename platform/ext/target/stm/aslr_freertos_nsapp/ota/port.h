/*
 * port.h
 *
 *  Created on: 2022年3月24日
 *      Author: gisakaimoe
 */
#ifndef SRC_PORT_H_
#define SRC_PORT_H_

#include "flash.h"
#include "stm32l5xx_hal.h"
#define BBNONSECURE 0U
#define BBSECURE 1U

void start_time();
uint32_t stop_time();

int flash_erase_page(uint32_t page, uint8_t *buffer);
int flash_read_word(uint32_t address, uint32_t *value);
int flash_write_words(uint32_t page, uint8_t *buffer);
int flash_writing(uint32_t src_address, uint32_t size, uint32_t dir_address);

#endif /* SRC_PORT_H_ */
