#include "loader_region.h"

uint32_t src_start__addr = 0x8055000;
region_t vector_region = {0x0, 0x0};
region_t privileged_region = {0x0, 0x0};
region_t syscall_region = {0x0, 0x0};
region_t unprivileged_region = {0x0, 0x0};
