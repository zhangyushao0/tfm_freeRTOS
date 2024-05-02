#include "trampoline.h"

region_t old_trampline_section = {0x8055f82, 0x1e6};
region_t old_trampline_a2b = {0x8055f83, 0x88};
region_t old_trampline_b2a = {0x805600b, 0x88};
region_t old_trampline_blx = {0x8056093, 0xd6};
region_t old_handler_section = {0x8055f80, 0x2};
