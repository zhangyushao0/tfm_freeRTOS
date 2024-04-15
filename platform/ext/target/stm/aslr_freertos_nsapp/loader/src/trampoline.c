#include "trampoline.h"

region_t tramp_section = {0x8058964, 0x350};
region_t tramp_a2b = {0x8058965, 0xcc};
region_t tramp_b2a = {0x8058a31, 0xcc};
region_t tramp_blx = {0x8058afd, 0x1b8};
region_t handler_section = {0x8058cc0, 0x3b8};
