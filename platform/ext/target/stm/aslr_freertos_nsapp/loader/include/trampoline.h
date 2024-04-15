#ifndef TRAMPOLINE_H
#define TRAMPOLINE_H
#include "loader.h"

extern region_t tramp_section;
extern region_t tramp_a2b;
extern region_t tramp_b2a;
extern region_t tramp_blx;
extern region_t handler_section;
#endif