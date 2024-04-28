#ifndef INS_TOOL_H_
#define INS_TOOL_H_
uint32_t  movt_transfer_aslr(uint16_t imm,uint32_t rd);
uint32_t  movw_transfer_aslr(uint16_t imm,uint32_t rd);
uint32_t  rd_recognize_aslr(uint32_t ins);

int is_ldr_aslr(uint32_t rt,uint16_t ins);
int ldr_get_imm_aslr(uint16_t ins);

#endif
