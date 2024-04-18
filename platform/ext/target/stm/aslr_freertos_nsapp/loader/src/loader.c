#include "loader.h"
#include "func.h"
#include "relocation.h"
#include "stm32l5xx_hal_flash.h"
#include "divide.h"
#include "trampoline.h"

void copy_text2ram(uint32_t dst, uint32_t src, uint32_t len) {
    HAL_FLASH_Unlock();
    uint32_t i = 0;
    while (i < len) {
        *(uint8_t*)(dst + i) = *(uint8_t*)(src + i);
        ++i;
    }
    HAL_FLASH_Lock();
}

void copy_text(region_t* a, region_t* b, uint32_t src_address, uint32_t handler_addr) {
    for (uint32_t i = 0; i < func_info_size; ++i) {
        if (func_info[i].region == 0) {
            // uint32_t addr = a->region_start + a->region_size;
            // copy_text2ram(addr, func_info[i].addr - 1, func_info[i].size);
            // func_info[i].reloc_addr = addr + 1;
            // a->region_size += func_info[i].size;
            uint32_t addr = func_info[i].addr - src_address + a->region_start;
            copy_text2ram(addr - 1, func_info[i].addr - 1, func_info[i].size);
            func_info[i].reloc_addr = addr;
        } else {
            // uint32_t addr = b->region_start + b->region_size;
            // copy_text2ram(addr, func_info[i].addr - 1, func_info[i].size);
            // func_info[i].reloc_addr = addr + 1;
            // b->region_size += func_info[i].size;
            uint32_t addr = func_info[i].addr - src_address + b->region_start;
            copy_text2ram(addr - 1, func_info[i].addr - 1, func_info[i].size);
            func_info[i].reloc_addr = addr;
        }
        if (func_info[i].addr >= handler_section.region_start && func_info[i].addr < handler_section.region_start + handler_section.region_size) {
            copy_text2ram(func_info[i].addr - handler_section.region_start + handler_addr - 1, func_info[i].reloc_addr - 1, func_info[i].size);
            func_info[i].reloc_addr = func_info[i].addr - handler_section.region_start + handler_addr;
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

void movw_r8(uint32_t pos, uint32_t val, int register_id) {
    uint32_t imm4 = val >> 12;
    uint32_t i = (val >> 11) & 1;
    uint32_t imm3 = (val >> 8) & 7;
    uint32_t imm8 = val & 0xff;
    uint32_t top_16 = (0 << 15) | (imm3 << 12) | (register_id << 8) | imm8;
    uint32_t low_16 = ((0b11110 << 27) | (i << 26) | (0b100100 << 20) | (imm4 << 16)) >> 16;
    *((uint32_t*)pos) = top_16 << 16 | low_16;
}

void movt_r8(uint32_t pos, uint32_t val, int register_id) {
    uint32_t imm4 = val >> 12;
    uint32_t i = (val >> 11) & 1;
    uint32_t imm3 = (val >> 8) & 7;
    uint32_t imm8 = val & 0xff;
    uint32_t top_16 = (0 << 15) | (imm3 << 12) | (register_id << 8) | imm8;
    uint32_t low_16 = ((0b11110 << 27) | (i << 26) | (0b101100 << 20) | (imm4 << 16)) >> 16;
    *((uint32_t*)pos) = top_16 << 16 | low_16;
}

void set_r8(uint32_t pos, uint32_t val) {
    int register_id = 8;
    movw_r8(pos - 8, val & 0xffff, register_id);
    movt_r8(pos - 4, val >> 16, register_id);
}

uint32_t bl_address_calculate(uint32_t pos, uint32_t val) {
    uint32_t first_top_5 = 0x1f;
    uint32_t second_top_5 = 0x1e;
    val = val - 1;
    pos = pos + 4;
    uint32_t new_offset = val - pos;
    return (uint32_t)((first_top_5 << 27) | (((new_offset & 0xfff) >> 1) << 16) | (second_top_5 << 11) | ((new_offset >> 12) & 0x7ff));
}

uint32_t movw_address_calculate(uint32_t ori_val, uint32_t addr) {
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

uint32_t movt_address_calculate(uint32_t ori_val, uint32_t addr) {
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

void vector_table_calculate(relocation_info_t* entry, region_t* vector_addr, uint32_t handler_addr, uint32_t src_address, int i) {
    int func_id = entry->func_id2;
    int addr = func_info[func_id].reloc_addr;
    if (i == 8 || i == 10 || i == 11) {
        addr = func_info[func_id].addr + handler_addr - handler_section.region_start;
    }
    *((uint32_t*)(entry->addr + vector_addr->region_start - src_address)) = addr;
    vector_addr->region_size += 4;
}

void bl_calculate(relocation_info_t* entry, uint32_t tram_addr) {
    int      func_id1 = entry->func_id1;
    int      func_id2 = entry->func_id2;
    uint32_t pos = entry->addr - func_info[func_id1].addr + func_info[func_id1].reloc_addr;
    uint32_t val = func_info[func_id2].reloc_addr;
    if (func_info[func_id2].region != func_info[func_id1].region) {
        // tram 的移动长度
        uint32_t offset = tram_addr - tramp_section.region_start;
        *((uint32_t*)pos) = bl_address_calculate(pos, func_info[func_id2].region == 0 ? offset + tramp_a2b.region_start : offset + tramp_b2a.region_start);
        set_r8(pos, val);
    } else {
        *((uint32_t*)pos) = bl_address_calculate(pos, val);
    }
}

void movw_calculate(relocation_info_t* entry) {
    int      func_id1 = entry->func_id1;
    int      func_id2 = entry->func_id2;
    uint32_t pos = entry->addr - func_info[func_id1].addr + func_info[func_id1].reloc_addr;
    if (func_id2 != -1) {
        uint32_t val = func_info[func_id2].reloc_addr;
        *((uint32_t*)pos) = movw_address_calculate(*(uint32_t*)(entry->addr), val);
    }
}

void movt_calculate(relocation_info_t* entry) {
    int      func_id1 = entry->func_id1;
    int      func_id2 = entry->func_id2;
    uint32_t pos = entry->addr - func_info[func_id1].addr + func_info[func_id1].reloc_addr;
    if (func_id2 != -1) {
        uint32_t val = func_info[func_id2].reloc_addr;
        *((uint32_t*)pos) = movt_address_calculate(*(uint32_t*)(entry->addr), val);
    }
}

int relocation(region_t* vector_addr, uint32_t tram_addr, uint32_t handler_addr, uint32_t src_address) {
    int reset_region = -1;
    // 第一项，直接写入即可
    *((uint32_t*)(relocation_info[0].addr + vector_addr->region_start - src_address)) =
        relocation_info[0].value;
    vector_addr->region_size += 4;
    // 第二项，reset_handler，需要记录该函数在哪个1
    int func_id = relocation_info[1].func_id2;
    *((uint32_t*)(relocation_info[1].addr + vector_addr->region_start - src_address)) =
        func_info[func_id].reloc_addr;
    vector_addr->region_size += 4;
    reset_region = func_info[func_id].region;
    for (int i = 2; i < table_size; ++i) {
        // which range of the identifier
        if (relocation_info[i].type == 0) { // exception entry
            vector_table_calculate(relocation_info + i, vector_addr, handler_addr, src_address, i);
        } else if (relocation_info[i].type == 4) { // func call
            bl_calculate(relocation_info + i, tram_addr);
        } else if (relocation_info[i].type == 5) { // absoultably address: movw
            movw_calculate(relocation_info + i);
        } else if (relocation_info[i].type == 6) { // absoulately address: mowt
            movt_calculate(relocation_info + i);
        } else {
        }
    }
    return reset_region;
}

int loader(region_t* a, region_t* b, region_t* vector_addr, uint32_t tram_addr, uint32_t handler_addr, uint32_t src_address) {
    int reset_region = -1;
    // 划分 a 和 b 区域
    divide();
    // 复制函数到 a 和 b 区域
    copy_text(a, b, src_address, handler_addr);
    // 复制 tramp 函数到 tramp_section 区域
    copy_text2ram(tram_addr, tramp_section.region_start, tramp_section.region_size);
    // 复制 handler 到 handler_section 区域
    // copy_text2ram(handler_addr, handler_section.region_start, handler_section.region_size);
    reset_region = relocation(vector_addr, tram_addr, handler_addr, src_address);
    return reset_region;
}
