#include "trampoline.h"

region_t old_trampline_section = {0x80592c8, 0x1e6};
region_t old_trampline_a2b = {0x80592c9, 0x88};
region_t old_trampline_b2a = {0x8059351, 0x88};
region_t old_trampline_blx = {0x80593d9, 0xd6};
region_t old_handler_section = {0x80592b8, 0x10};
