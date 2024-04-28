#include "trampoline.h"

region_t tramp_section = {0x8055f82, 0x256};
region_t tramp_a2b = {0x8055f83, 0xa4};
region_t tramp_b2a = {0x8056027, 0xa4};
region_t tramp_blx = {0x80560cb, 0x10e};
region_t handler_section = {0x8055f80, 0x2};
