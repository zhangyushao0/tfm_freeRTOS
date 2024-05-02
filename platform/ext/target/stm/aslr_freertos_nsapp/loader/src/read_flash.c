#include "read_flash.h"
copy_region_t new_MSIRangeTable = {0x8055f30, 0x8055f70, 0};
copy_region_t new_AHBPrescTable = {0x8055f70, 0x8055f80, 0};
copy_region_t new_copy_table = {0x8056178, 0x8056190, 0};
copy_region_t new_zero_table = {0x8056190, 0x80561a0, 0};
