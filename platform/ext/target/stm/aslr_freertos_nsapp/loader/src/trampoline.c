#include "trampoline.h"

region_t tramp_section = {0x8058d0c, 0x2ee};
region_t tramp_a2b = {0x8058d0d, 0xcc};
region_t tramp_b2a = {0x8058dd9, 0xcc};
region_t tramp_blx = {0x8058ea5, 0x156};
region_t handler_section = {0x8059000, 0x482};
