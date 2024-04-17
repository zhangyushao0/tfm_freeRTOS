#include "trampoline.h"

region_t tramp_section = {0x805890c, 0x350};
region_t tramp_a2b = {0x805890d, 0xcc};
region_t tramp_b2a = {0x80589d9, 0xcc};
region_t tramp_blx = {0x8058aa5, 0x1b8};
region_t handler_section = {0x8058c5c, 0x526};
