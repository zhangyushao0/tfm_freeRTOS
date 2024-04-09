#pragma once
#include "stm32l562xx.h"

typedef struct region {
    uint32_t region_start;
    uint32_t region_size;
} region_t;

void loader(region_t* a, region_t* b, region_t* vector_addr, uint32_t tram_addr, uint32_t src_address);
