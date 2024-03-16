#pragma once
#include "sys/_stdint.h"
#include <stdint.h>

struct region_info {
    uint32_t start;
    uint32_t size;
};

void copy_text2ram(uint32_t dst, uint32_t src, uint32_t len);

void relocate(uint32_t offset);

void relocation(struct region_info region_a, struct region_info region_b, uint32_t offset_a, uint32_t offset_b);