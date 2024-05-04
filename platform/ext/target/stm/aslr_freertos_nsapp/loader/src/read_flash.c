#include "read_flash.h"
copy_region_t new_MSIRangeTable = {0x8058524, 0x8058564, 0};
copy_region_t new_AHBPrescTable = {0x8058564, 0x8058574, 0};
copy_region_t new_copy_table = {0x8058584, 0x805859c, 0};
copy_region_t new_zero_table = {0x805859c, 0x80585ac, 0};
