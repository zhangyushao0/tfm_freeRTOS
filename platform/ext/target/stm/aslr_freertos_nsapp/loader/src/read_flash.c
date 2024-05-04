#include "read_flash.h"
copy_region_t new_MSIRangeTable = {0x805855c, 0x805859c, 0};
copy_region_t new_AHBPrescTable = {0x805859c, 0x80585ac, 0};
copy_region_t new_copy_table = {0x80585bc, 0x80585d4, 0};
copy_region_t new_zero_table = {0x80585d4, 0x80585e4, 0};
