#ifndef LOADER_REGION_H
#define LOADER_REGION_H
#include "stm32l562xx.h"

typedef struct region {
    uint32_t region_start;
    uint32_t region_size;
} region_t;

extern uint32_t src_start__addr;
extern region_t vector_region;
extern region_t privileged_region;
extern region_t syscall_region;
extern region_t unprivileged_region;

#endif