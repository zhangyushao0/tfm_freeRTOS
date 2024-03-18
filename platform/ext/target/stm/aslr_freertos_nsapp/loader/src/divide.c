#include "divide.h"
#include "func.h"

void divide() {
    // return;
    for (uint32_t i = 0; i < func_info_size; ++i) {
        if (((func_info[i].addr >> 1) & 1) == 1) {
            func_info[i].region = 1;
        }
    }
}