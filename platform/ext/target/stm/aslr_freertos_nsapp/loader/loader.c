#include "loader.h"
#include "func_info.h"
#include "relocation.h"
#include "stm32l562xx.h"
#include "stm32l5xx_hal_flash.h"
#include "sys/_stdint.h"

int is_matched(uint32_t ar[], uint32_t val, int len) {
    for (int i = 0; i < len; i++) {
        if (ar[i] == val) {
            return i;
        }
    }
    return -1;
}

// int index = is_matched(ldr_list, src + i * 4, sizeof(ldr_list) / 4);
// if (index != -1) {
//     *(uint32_t*)(dst + ldr_list[index + 1] - src) -=
//         (uint32_t)dst - (uint32_t)src;
// }

void copy_text2ram(uint32_t dst, uint32_t src, uint32_t len) {
    HAL_FLASH_Unlock();
    uint32_t i = 0;
    while (i < len) {
        *(uint32_t*)(dst + i * 4) = *(uint32_t*)(src + i * 4);
        ++i;
    }
    HAL_FLASH_Lock();
}

int in_range(struct region_info region, uint32_t pos) {
    if (pos >= region.size && pos < region.start + region.size) {
        return 1;
    }
    return 0;
}

uint32_t address_calculate(uint32_t val, int offset) {
    uint32_t first = (val >> 16) & 0xffff;
    uint32_t second = val & 0xffff;
    uint32_t first_top_5 = (first >> 11) & 0x1f;
    uint32_t first_bottom_11 = first & 0x7ff;
    uint32_t second_top_5 = (second >> 11) & 0x1f;
    uint32_t second_bottom_11 = second & 0x7ff;
    uint32_t new_offset = (uint32_t)(((int)(((second_bottom_11 << 12) | (first_bottom_11 << 1)) << 9) >> 9) + offset);
    return (uint32_t)((first_top_5 << 27) | (((new_offset & 0xfff) >> 1) << 16) | (second_top_5 << 11) | ((new_offset >> 12) & 0x7ff));
}

void relocate(uint32_t offset) {
    // *((uint32_t*)0x80636ee) = 1;
    for (int i = 1; i < table_size; ++i) {
        if (relocation_info[i].type == 0) {
            *((uint32_t*)(relocation_info[i].addr + offset)) += offset;
        } else if (relocation_info[i].type == 1) {
            *((uint32_t*)(relocation_info[i].addr + offset)) -= offset;
        }
    }
}

void relocation(struct region_info region_a, struct region_info region_b, uint32_t offset_a, uint32_t offset_b) {
    for (int i = 1; i < table_size; ++i) {
        // which range of the identifier
        if (relocation_info[i].type == 0) {
            if (in_range(region_a, relocation_info[i].value)) {
                *((uint32_t*)(relocation_info[i].addr + offset_a)) += offset_a;
            } else {
                *((uint32_t*)(relocation_info[i].addr + offset_b)) += offset_b;
            }
        } else if (relocation_info[i].type == 1) {
            if (in_range(region_a, relocation_info[i].addr)) {
                *((uint32_t*)(relocation_info[i].addr + offset_a)) -= offset_a;
            } else {
                *((uint32_t*)(relocation_info[i].addr + offset_b)) -= offset_b;
            }
        } else {
            if (in_range(region_a, relocation_info[i].addr) && in_range(region_b, relocation_info[i].value)) {
                uint32_t val = *((uint32_t*)(relocation_info[i].addr + offset_a));
                *((uint32_t*)(relocation_info[i].addr + offset_a)) = address_calculate(val, offset_b - offset_a);
            } else if (in_range(region_b, relocation_info[i].addr) && in_range(region_a, relocation_info[i].value)) {
                uint32_t val = *((uint32_t*)(relocation_info[i].addr + offset_b));
                *((uint32_t*)(relocation_info[i].addr + offset_b)) = address_calculate(val, offset_a - offset_b);
            }
        }
    }
}