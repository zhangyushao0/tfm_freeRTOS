#include "loader.h"
#include "func.h"
#include "relocation.h"
#include "stm32l5xx_hal_flash.h"
#include "divide.h"

void copy_text2ram(uint32_t dst, uint32_t src, uint32_t len) {
    HAL_FLASH_Unlock();
    len /= 4;
    uint32_t i = 0;
    while (i < len) {
        *(uint32_t*)(dst + i * 4) = *(uint32_t*)(src + i * 4);
        ++i;
    }
    HAL_FLASH_Lock();
}

void copy_text(region_t* a, region_t* b, uint32_t src_address) {
    for (uint32_t i = 0; i < func_info_size; ++i) {
        if (func_info[i].region == 0) {
            uint32_t addr = a->region_start + a->region_size;
            copy_text2ram(addr, func_info[i].addr, func_info[i].size);
            a->region_size += func_info[i].size;
        } else {
            uint32_t addr = b->region_start + b->region_size;
            copy_text2ram(addr, func_info[i].addr, func_info[i].size);
            b->region_size += func_info[i].size;
        }
    }
}

// judge whether the address is in the range of b
int in_range(uint32_t pos) {
    for (uint32_t i = 0; i < func_info_size; ++i) {
        if (pos >= func_info[i].addr && pos < func_info[i].addr + func_info[i].size) {
            return func_info[i].region;
        }
    }
    return -1;
}

uint32_t bl_address_calculate(uint32_t pos, uint32_t val) {
    uint32_t first_top_5 = 0x1f;
    uint32_t second_top_5 = 0x1e;
    val = val - 1;
    pos = pos + 4;
    uint32_t new_offset = val - pos;
    return (uint32_t)((first_top_5 << 27) | (((new_offset & 0xfff) >> 1) << 16) | (second_top_5 << 11) | ((new_offset >> 12) & 0x7ff));
}

uint32_t movw_calculate(uint32_t ori_val, uint32_t addr) {
    addr = addr & 0xffff;
    ori_val = ori_val & 0x0f00f0f0;
    if ((addr & 0xf00) >= 0x800) {
        addr = addr - 0x800;
        ori_val = ori_val | 0x00000600;
    } else {
        ori_val = ori_val | 0x00000200;
    }

    uint32_t new_val = ori_val | ((addr & 0xf00) << 20) | ((addr & 0xff) << 16) | ((addr & 0xf000) >> 12);
    return new_val;
}

uint32_t movt_calculate(uint32_t ori_val, uint32_t addr) {
    addr = (addr >> 16) & 0xffff;
    ori_val = ori_val & 0x0f00f0f0;
    if ((addr & 0xf00) >= 0x800) {
        addr = addr - 0x800;
        ori_val = ori_val | 0x00000600;
    } else {
        ori_val = ori_val | 0x00000200;
    }

    uint32_t new_val = ori_val | ((addr & 0xf00) << 20) | ((addr & 0xff) << 16) | ((addr & 0xf000) >> 12);
    return new_val;
}

void relocation(region_t* vector_addr) {
    uint32_t offset = vector_addr->region_start + vector_addr->region_size;
    *((uint32_t*)(relocation_info[0].addr + offset)) =
        relocation_info[0].value;
    vector_addr->region_size += 4;
    for (int i = 1; i < table_size; ++i) {
        // which range of the identifier
        if (relocation_info[i].type == 0) { // exception entry
            int      func_id = relocation_info[i].func_id1;
            uint32_t offset = vector_addr->region_start + vector_addr->region_size;
            *((uint32_t*)(relocation_info[i].addr + offset)) =
                func_info[func_id].reloc_addr;
            vector_addr->region_size += 4;
        } else if (relocation_info[i].type == 1) { // func pointer

        } else if (relocation_info[i].type == 2) { // data under function

        } else if (relocation_info[i].type == 3) { // data of some info, like "heap"

        } else if (relocation_info[i].type == 4) { // func call
            int      func_id1 = relocation_info[i].func_id1;
            int      func_id2 = relocation_info[i].func_id2;
            uint32_t pos = relocation_info[i].addr - func_info[func_id1].addr + func_info[func_id1].reloc_addr;
            uint32_t val = func_info[func_id2].reloc_addr;
            *((uint32_t*)pos) = bl_address_calculate(pos, val);
        } else if (relocation_info[i].type == 5) { // absoultably address: movw
            int      func_id1 = relocation_info[i].func_id1;
            int      func_id2 = relocation_info[i].func_id2;
            uint32_t pos = relocation_info[i].addr - func_info[func_id1].addr + func_info[func_id1].reloc_addr;
            if (func_id2 == -1) {
                *((uint32_t*)pos) = movw_calculate(*(uint32_t*)(relocation_info[i].addr), relocation_info[i].value);
            } else {
                uint32_t val = func_info[func_id2].reloc_addr;
                *((uint32_t*)pos) = movw_calculate(*(uint32_t*)(relocation_info[i].addr), val);
            }
        } else if (relocation_info[i].type == 6) { // absoulately address: mowt
            int      func_id1 = relocation_info[i].func_id1;
            int      func_id2 = relocation_info[i].func_id2;
            uint32_t pos = relocation_info[i].addr - func_info[func_id1].addr + func_info[func_id1].reloc_addr;
            if (func_id2 == -1) {
                *((uint32_t*)pos) = movt_calculate(*(uint32_t*)(relocation_info[i].addr), relocation_info[i].value);
            } else {
                uint32_t val = func_info[func_id2].reloc_addr;
                *((uint32_t*)pos) = movt_calculate(*(uint32_t*)(relocation_info[i].addr), val);
            }
        } else {
        }
    }
}

void loader(region_t* a, region_t* b, region_t* vector_addr, uint32_t src_address) {
    divide();
    copy_text(a, b, src_address);
    relocation(vector_addr);
}
