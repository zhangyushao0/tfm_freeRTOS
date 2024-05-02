#pragma once
#include "loader_region.h"

int loader(region_t* a, region_t* b, region_t* vector_addr, uint32_t new_table_addr, uint32_t trampline_addr, uint32_t handler_addr, uint32_t src_address);
