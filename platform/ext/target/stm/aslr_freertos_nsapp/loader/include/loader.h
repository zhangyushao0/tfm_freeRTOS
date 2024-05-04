#ifndef LOADER_H
#define LOADER_H
#include "loader_region.h"

void loader(region_t* a, region_t* vector_addr, uint32_t new_table_addr, uint32_t src_address);
#endif
