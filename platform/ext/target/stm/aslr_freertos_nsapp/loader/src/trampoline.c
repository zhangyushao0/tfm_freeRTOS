#include "trampoline.h"

region_t tramp_section = {0x8056a66, 0x256};
region_t tramp_a2b = {0x8056a67, 0xa4};
region_t tramp_b2a = {0x8056b0b, 0xa4};
region_t tramp_blx = {0x8056baf, 0x10e};
region_t handler_section = {0x8056a64, 0x2};
