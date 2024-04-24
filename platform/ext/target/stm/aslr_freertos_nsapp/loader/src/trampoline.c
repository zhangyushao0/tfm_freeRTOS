#include "trampoline.h"

region_t tramp_section = {0x0, 0x0};
region_t tramp_a2b = {0x0, 0x0};
region_t tramp_b2a = {0x0, 0x0};
region_t tramp_blx = {0x0, 0x0};
region_t handler_section = {0x8056a4c, 0x2};
