#include "trampoline.h"

region_t old_trampline_section = {0x8059b1a, 0x1e6};
region_t old_trampline_a2b = {0x8059b1b, 0x88};
region_t old_trampline_b2a = {0x8059ba3, 0x88};
region_t old_trampline_blx = {0x8059c2b, 0xd6};
region_t old_handler_section = {0x8059b0a, 0x10};
