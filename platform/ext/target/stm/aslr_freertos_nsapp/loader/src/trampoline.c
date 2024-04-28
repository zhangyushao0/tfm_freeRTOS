#include "trampoline.h"

region_t tramp_section = {0x805961a, 0x216};
region_t tramp_a2b = {0x805961b, 0x84};
region_t tramp_b2a = {0x805969f, 0x84};
region_t tramp_blx = {0x8059723, 0x10e};
region_t handler_section = {0x8059618, 0x2};
