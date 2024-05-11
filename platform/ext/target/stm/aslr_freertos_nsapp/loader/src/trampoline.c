#include "trampoline.h"

region_t old_trampline_section = {0x8057b18, 0x1e6};
region_t old_trampline_a2b = {0x8057b19, 0x88};
region_t old_trampline_b2a = {0x8057ba1, 0x88};
region_t old_trampline_blx = {0x8057c29, 0xd6};
region_t old_handler_section = {0x8057b08, 0x10};
