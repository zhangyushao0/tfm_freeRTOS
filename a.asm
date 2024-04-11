__asm volatile("   movw     r9, :lower16:MPU_BASE   \n"
                   "   movt     r9, :upper16:MPU_BASE   \n"
                   "   ldr      r10, [r9, #4]            \n"   // save mpu_ctrl
                   "   mov      r11, #0x0                \n"   //
                   "   str      r11, [r9, #0x4]          \n"   // set mpu_ctrl 0
                   "   mov      r11, #0x0                \n"   //
                   "   str      r11, [r9, #0x4]          \n"   // set rnr 0
                   "   ldr      r12, [r9, #0xc]          \n"   // ldr rlar to r12
                   "   bic      r12, r12, #0x1            \n"   // set rlar last pos = 0
                   "   str      r12, [r9, #0xc]          \n"   // set rlar
                   "   mov      r11, #0x1                \n"   //
                   "   str      r11, [r9, #0x4]          \n"   // set rnr 1
                   "   ldr      r12, [r9, #0xc]          \n"   // ldr rlar to r12
                   "   orr      r12, r12, #0x1            \n"   // set rlar last pos = 1
                   "   str      r12, [r9, #0xc]          \n"   // set rlar
                   "   str      r10, [r9, #0x4]          \n"); // set mpu_ctrl
    __ASM volatile("dsb 0xF" ::
                       : "memory");
    __ASM volatile("isb 0xF" ::
                       : "memory");