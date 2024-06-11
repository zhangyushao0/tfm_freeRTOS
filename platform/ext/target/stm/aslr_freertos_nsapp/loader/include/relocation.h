#ifndef RELOCATION_H
#define RELOCATION_H
#include "stm32l562xx.h"
#include "loader_region.h"
typedef struct {
    uint32_t addr;
    uint32_t value;
    uint32_t type;
    uint32_t func_id1;
    uint32_t func_id2;
} relocation_info_t;

extern uint32_t          table_size;
extern relocation_info_t relocation_info[];

extern uint32_t index_table_size;
extern region_t index_table[];

#endif
