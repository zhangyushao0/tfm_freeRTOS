#include "trampoline.h"

region_t tramp_section = {0x8058bfc, 0x216};
region_t tramp_a2b = {0x8058bfd, 0x84};
region_t tramp_b2a = {0x8058c81, 0x84};
region_t tramp_blx = {0x8058d05, 0x10e};
region_t handler_section = {0x8058e20, 0x5d2};
