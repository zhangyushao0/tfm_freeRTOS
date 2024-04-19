#include "trampoline.h"

region_t tramp_section = {0x8058b28, 0x216};
region_t tramp_a2b = {0x8058b29, 0x84};
region_t tramp_b2a = {0x8058bad, 0x84};
region_t tramp_blx = {0x8058c31, 0x10e};
region_t handler_section = {0x8058d40, 0x5a2};
