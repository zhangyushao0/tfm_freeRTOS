#include "trampoline.h"

region_t tramp_section = {0x805557a, 0x350};
region_t tramp_a2b = {0x805557b, 0xcc};
region_t tramp_b2a = {0x8055647, 0xcc};
region_t tramp_blx = {0x8055713, 0x1b8};
