#pragma once
#include <stdint.h>

uint32_t func_addrs[] = {
    0x080558a5,
};

struct reloc_entry {
    uint32_t func_addr;
    uint32_t dst_addr;
    uint32_t src_addr;
};

struct reloc_entry reloc_entries[] = {
    { 0x080558a5, 0x080558cc, 0x0805589a },
    { 0x080558a5, 0x080558d0, 0x0805589e },
};
