#include "divide.h"
#include "func.h"

void divide() {
    // return;
    for (uint32_t i = 0; i < func_info_size; ++i) {
        //if (func_info[i].region != -1) continue;
        if (((func_info[i].addr >> 1) & 1) == 1) {
            func_info[i].region = 1;
        } else {
            func_info[i].region = 0;
        }
        if(func_info[i].addr==0x8056509||func_info[i].addr==0x805604d){
            func_info[i].region = 1;
        }
    }
}