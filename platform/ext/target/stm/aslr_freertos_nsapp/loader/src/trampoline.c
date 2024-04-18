#include "trampoline.h"

region_t tramp_section = {0x8058be0, 0x2ee};
region_t tramp_a2b = {0x8058be1, 0xcc};
region_t tramp_b2a = {0x8058cad, 0xcc};
region_t tramp_blx = {0x8058d79, 0x156};
region_t handler_section = {0x8058ed0, 0x542};
