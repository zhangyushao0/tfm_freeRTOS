#if !defined(FUNC_H)
#define FUNC_H
#include "stm32l5xx.h"
void funcs_relocate();
typedef struct {
    uint32_t start_address;
    uint32_t size;
	uint32_t call_frame_size;

}FUNCS_INFO;


#endif // FUNC_H
