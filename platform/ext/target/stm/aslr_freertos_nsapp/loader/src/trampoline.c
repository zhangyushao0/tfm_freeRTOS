#include "trampoline.h"

region_t old_trampline_section = {0x8055fa4, 0x1e6};
region_t old_trampline_a2b = {0x8055fa5, 0x88};
region_t old_trampline_b2a = {0x805602d, 0x88};
region_t old_trampline_blx = {0x80560b5, 0xd6};
region_t old_handler_section = {0x8055f94, 0x10};
