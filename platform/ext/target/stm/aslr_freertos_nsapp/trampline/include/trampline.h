#ifndef TRAMPLINE_H
#define TRAMPLINE_H

__attribute__((section(".tram_section"))) __attribute__((naked)) void trampoline_A_B(void);
__attribute__((section(".tram_section"))) __attribute__((naked)) void trampoline_B_A(void);
__attribute__((section(".tram_section"))) __attribute__((naked)) void trampoline_blx(void);

#endif