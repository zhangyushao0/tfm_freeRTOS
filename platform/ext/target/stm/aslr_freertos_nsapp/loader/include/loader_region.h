#ifndef LOADER_REGION_H
#define LOADER_REGION_H
#include "stm32l562xx.h"

typedef struct region {
    uint32_t region_start;
    uint32_t region_size;
} region_t;

extern region_t dst_region[4];

extern region_t src_region[4];
#endif