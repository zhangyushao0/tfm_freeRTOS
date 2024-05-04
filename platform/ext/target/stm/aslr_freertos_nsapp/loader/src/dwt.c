/*
 * dwt.c
 *
 *  Created on: Feb 29, 2024
 *      Author: zhang
 */

#include "dwt.h"

void DWT_enable(region_t* a) {
    //	/* Check ROM table for DWT and ITM implementation */
    //	assert(ROMDWT_DWT_IMPL && "DWT not implemented!");
    //	assert(ROMITM_ITM_IMPL && "ITM not implemented!");
    DWT->COMP0 = a->region_start;
    DWT->FUNCTION0 = (1U << DWT_FUNCTION_ACTION_Pos) | (DWT_FUNCTION_MATCH_D_RW << DWT_FUNCTION_MATCH_Pos);
    DWT->COMP1 = a->region_start + a->region_size;
    DWT->FUNCTION1 = (1U << DWT_FUNCTION_ACTION_Pos) | (DWT_FUNCTION_MATCH_DL << DWT_FUNCTION_MATCH_Pos);
    /* Enable DWT, ITM, and Debug Exception globally */
    CoreDebug->DEMCR |= CoreDebug_DEMCR_TRCENA_Msk | CoreDebug_DEMCR_MON_EN_Msk;
}

// void DWT_enable2(uint32_t begin1, uint32_t end1) {
//     //	/* Check ROM table for DWT and ITM implementation */
//     //	assert(ROMDWT_DWT_IMPL && "DWT not implemented!");
//     //	assert(ROMITM_ITM_IMPL && "ITM not implemented!");
//     DWT->COMP0 = 0;
//     DWT->FUNCTION0 = (1U << DWT_FUNCTION_ACTION_Pos) | (DWT_FUNCTION_MATCH_IL << DWT_FUNCTION_MATCH_Pos);
//     DWT->COMP1 = end1;
//     DWT->FUNCTION1 = (1U << DWT_FUNCTION_ACTION_Pos) | (DWT_FUNCTION_MATCH_DL << DWT_FUNCTION_MATCH_Pos);
//     /* Enable DWT, ITM, and Debug Exception globally */
//     CoreDebug->DEMCR |= CoreDebug_DEMCR_TRCENA_Msk | CoreDebug_DEMCR_MON_EN_Msk;
// }
