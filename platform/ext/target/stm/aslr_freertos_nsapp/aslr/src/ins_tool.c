#include "funcs.h"
#include "ins_tool.h"


uint32_t  movw_transfer_aslr(uint16_t imm,uint32_t rd){
	uint32_t ins=0;
	uint32_t imm3=0,imm4=0,i=0;
	uint32_t imm8=imm&0x00ff;
	imm4=(imm&0xf000)>>12;
	imm3=((imm&0x0f00)>>8)%8;
	i=((imm&0x0f00)>>8)/8;
	ins=ins|imm8|(rd<<8)|(imm3<<12)|imm4<<16|4<<20|(2+i*4)<<24|0xf<<28;
    return ins;
}

uint32_t  movt_transfer_aslr(uint16_t imm,uint32_t rd){
	uint32_t ins=0;
	uint32_t imm3=0,imm4=0,i=0;
	uint32_t imm8=imm&0x00ff;
	imm4=(imm&0xf000)>>12;
	imm3=((imm&0x0f00)>>8)%8;
	i=((imm&0x0f00)>>8)/8;
	ins=ins|imm8|(rd<<8)|(imm3<<12)|imm4<<16|0xc<<20|(2+i*4)<<24|0xf<<28;
    return ins;
}

uint32_t rd_recognize_aslr(uint32_t ins){
	uint32_t rd= (ins&0x007f)>>3;
	return rd;
}

int is_ldr_aslr(uint32_t rt,uint16_t ins){
    if((ins>>11)==0x9 && (((ins>>8)& 0x7)==rt)){
        return 0;
    }else{
        return 1;
    }
}


int ldr_get_imm_aslr(uint16_t ins){
    uint16_t val= ins&255;
    return val;
}
