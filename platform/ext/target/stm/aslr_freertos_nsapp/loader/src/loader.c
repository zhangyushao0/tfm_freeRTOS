#include "loader.h"
#include "func.h"
#include "relocation.h"
#include "stm32l5xx_hal_flash.h"

#define ENCODE_KEY 0x00000001

void copy_text2ram(uint32_t dst, uint32_t src, uint32_t len) {
    HAL_FLASH_Unlock();
    uint32_t i = 0;
    while (i < len) {
        *(uint8_t*)(dst + i) = *(uint8_t*)(src + i);
        ++i;
    }
    HAL_FLASH_Lock();
}

void copy_text() {
    int region;
    for (uint32_t i = 0; i < func_info_size; ++i) {
        // uint32_t addr = a->region_start + a->region_size + 1;
        // copy_text2ram(addr - 1, func_info[i].addr - 1, func_info[i].size);
        // func_info[i].reloc_addr = addr;
        // a->region_size += func_info[i].size;
        region = func_info[i].reloc_addr & 0xff;
        uint32_t addr = func_info[i].addr - src_region[region].region_start + dst_region[region].region_start;
        if (func_info[i].reloc_addr & 0x100) {
            copy_text2ram(addr, func_info[i].addr, func_info[i].size);
        } else {
            copy_text2ram(addr - 1, func_info[i].addr - 1, func_info[i].size);
        }
        func_info[i].reloc_addr = addr;
    }
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

void vector_table_calculate(relocation_info_t* entry) {
    int func_id1 = entry->func_id1;
    int func_id2 = entry->func_id2;
    int addr = entry->value;
    if (func_id2 != -1) {
        addr = func_info[func_id2].reloc_addr;
    }
    if (func_id1 == 0) {
        *((uint32_t*)(entry->addr - src_region[0].region_start + dst_region[0].region_start)) = addr;
    } else {
        *((uint32_t*)(entry->addr - func_info[func_id1].addr + func_info[func_id1].reloc_addr)) = addr;
    }
}

void bl_calculate(relocation_info_t* entry) {
    int      func_id1 = entry->func_id1;
    int      func_id2 = entry->func_id2;
    uint32_t pos = entry->addr - func_info[func_id1].addr + func_info[func_id1].reloc_addr;
    uint32_t val = func_info[func_id2].reloc_addr;
    *((uint32_t*)pos) = bl_address_calculate(pos, val);
}

void movw_calculate(relocation_info_t* entry) {
    int      func_id1 = entry->func_id1;
    int      func_id2 = entry->func_id2;
    uint32_t pos = entry->addr - func_info[func_id1].addr + func_info[func_id1].reloc_addr;
    uint32_t val = entry->value;
    if (func_id2 != -1) {
        val = func_info[func_id2].reloc_addr; //^ ENCODE_KEY;
    }
    *((uint32_t*)pos) = movw_address_calculate(*(uint32_t*)(entry->addr), val);
}

void movt_calculate(relocation_info_t* entry) {
    int      func_id1 = entry->func_id1;
    int      func_id2 = entry->func_id2;
    uint32_t pos = entry->addr - func_info[func_id1].addr + func_info[func_id1].reloc_addr;
    uint32_t val = entry->value;
    if (func_id2 != -1) {
        val = func_info[func_id2].reloc_addr; // ^ ENCODE_KEY;
    }
    *((uint32_t*)pos) = movt_address_calculate(*(uint32_t*)(entry->addr), val);
}

void relocation() {
    for (int i = 0; i < index_table_size; ++i) {
        relocation_info[index_table[i].region_start].func_id2 = -1;
        int region = index_table[i].region_size & 0xff;
        if (index_table[i].region_size & 0x100) {
            relocation_info[index_table[i].region_start].value = dst_region[region].region_start + src_region[region].region_size - 1;
        } else {
            relocation_info[index_table[i].region_start].value = dst_region[region].region_start;
        }
    }
    for (int i = 0; i < table_size; ++i) {
        // which range of the identifier
        if (relocation_info[i].type == 0) { // exception entry
            vector_table_calculate(relocation_info + i);
        } else if (relocation_info[i].type == 4) { // func call
            bl_calculate(relocation_info + i);
        } else if (relocation_info[i].type == 5) { // absoultably address: movw
            movw_calculate(relocation_info + i);
        } else if (relocation_info[i].type == 6) { // absoulately address: mowt
            movt_calculate(relocation_info + i);
        } else {
            // do nothing
        }
    }
}

void loader() {
    copy_text();
    relocation();
}
