#ifndef LOADER_REGION_H
#define LOADER_REGION_H
#include "stm32l562xx.h"
typedef struct region {
    uint32_t region_start;
    uint32_t region_size;
} region_t;

typedef struct copy_region {
    uint32_t old_addr;
    uint32_t end_addr;
    uint32_t new_addr;
} copy_region_t;

#endif