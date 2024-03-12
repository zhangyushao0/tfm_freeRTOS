
build/platform/target/CMakeFiles/ns_app.dir/nsapp/src/main_ns.o:	file format elf32-littlearm

Disassembly of section .text.spin_100000:

00000000 <spin_100000>:
; void spin_100000() {
       0: b081         	sub	sp, #0x4
       2: 2000         	movs	r0, #0x0
;   for (int i = 0; i < 100000; i++) {
       4: 9000         	str	r0, [sp]
       6: e7ff         	b	0x8 <spin_100000+0x8>   @ imm = #-0x2
       8: 9800         	ldr	r0, [sp]
       a: f248 619f    	movw	r1, #0x869f
       e: f2c0 0101    	movt	r1, #0x1
      12: 4288         	cmp	r0, r1
      14: dc06         	bgt	0x24 <spin_100000+0x24> @ imm = #0xc
      16: e7ff         	b	0x18 <spin_100000+0x18> @ imm = #-0x2
;     __ASM volatile("nop");
      18: bf00         	nop
;   }
      1a: e7ff         	b	0x1c <spin_100000+0x1c> @ imm = #-0x2
;   for (int i = 0; i < 100000; i++) {
      1c: 9800         	ldr	r0, [sp]
      1e: 3001         	adds	r0, #0x1
      20: 9000         	str	r0, [sp]
      22: e7f1         	b	0x8 <spin_100000+0x8>   @ imm = #-0x1e
; }
      24: b001         	add	sp, #0x4
      26: 4770         	bx	lr

Disassembly of section .text.copy_text2ram:

00000000 <copy_text2ram>:
; void copy_text2ram(uint32_t *dst, uint32_t src, int len) {
       0: b580         	push	{r7, lr}
       2: 466f         	mov	r7, sp
       4: b084         	sub	sp, #0x10
       6: 9003         	str	r0, [sp, #0xc]
       8: 9102         	str	r1, [sp, #0x8]
       a: 9201         	str	r2, [sp, #0x4]
;   HAL_FLASH_Unlock();
       c: f7ff fffe    	bl	0xc <copy_text2ram+0xc> @ imm = #-0x4
      10: 2000         	movs	r0, #0x0
;   for (int i = 0; i < len; i++) {
      12: 9000         	str	r0, [sp]
      14: e7ff         	b	0x16 <copy_text2ram+0x16> @ imm = #-0x2
      16: 9800         	ldr	r0, [sp]
      18: 9901         	ldr	r1, [sp, #0x4]
      1a: 4288         	cmp	r0, r1
      1c: da0c         	bge	0x38 <copy_text2ram+0x38> @ imm = #0x18
      1e: e7ff         	b	0x20 <copy_text2ram+0x20> @ imm = #-0x2
;     dst[i] = *(uint32_t *)(src + i * 4);
      20: 9802         	ldr	r0, [sp, #0x8]
      22: 9a00         	ldr	r2, [sp]
      24: f850 0022    	ldr.w	r0, [r0, r2, lsl #2]
      28: 9903         	ldr	r1, [sp, #0xc]
      2a: f841 0022    	str.w	r0, [r1, r2, lsl #2]
;   }
      2e: e7ff         	b	0x30 <copy_text2ram+0x30> @ imm = #-0x2
;   for (int i = 0; i < len; i++) {
      30: 9800         	ldr	r0, [sp]
      32: 3001         	adds	r0, #0x1
      34: 9000         	str	r0, [sp]
      36: e7ee         	b	0x16 <copy_text2ram+0x16> @ imm = #-0x24
;   HAL_FLASH_Lock();
      38: f7ff fffe    	bl	0x38 <copy_text2ram+0x38> @ imm = #-0x4
; }
      3c: b004         	add	sp, #0x10
      3e: bd80         	pop	{r7, pc}

Disassembly of section .text.toggle_light_2:

00000000 <toggle_light_2>:
; void toggle_light_2() {
       0: b580         	push	{r7, lr}
       2: 466f         	mov	r7, sp
       4: b082         	sub	sp, #0x8
       6: 200a         	movs	r0, #0xa
;   int i = 10;
       8: 9001         	str	r0, [sp, #0x4]
;   while (i--) {
       a: e7ff         	b	0xc <toggle_light_2+0xc> @ imm = #-0x2
       c: 9801         	ldr	r0, [sp, #0x4]
       e: 1e41         	subs	r1, r0, #0x1
      10: 9101         	str	r1, [sp, #0x4]
      12: b180         	cbz	r0, 0x36 <toggle_light_2+0x36> @ imm = #0x20
      14: e7ff         	b	0x16 <toggle_light_2+0x16> @ imm = #-0x2
      16: f640 4000    	movw	r0, #0xc00
      1a: f2c4 2002    	movt	r0, #0x4202
      1e: 2108         	movs	r1, #0x8
;     HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_3);
      20: f7ff fffe    	bl	0x20 <toggle_light_2+0x20> @ imm = #-0x4
;     spin_100000();
      24: f7ff fffe    	bl	0x24 <toggle_light_2+0x24> @ imm = #-0x4
;     spin_100000();
      28: f7ff fffe    	bl	0x28 <toggle_light_2+0x28> @ imm = #-0x4
;     spin_100000();
      2c: f7ff fffe    	bl	0x2c <toggle_light_2+0x2c> @ imm = #-0x4
;     spin_100000();
      30: f7ff fffe    	bl	0x30 <toggle_light_2+0x30> @ imm = #-0x4
;   while (i--) {
      34: e7ea         	b	0xc <toggle_light_2+0xc> @ imm = #-0x2c
;   void (*new_toggle_light)() = (void (*)())toggle_light;
      36: 4803         	ldr	r0, [pc, #0xc]          @ 0x44 <toggle_light_2+0x44>
      38: 4478         	add	r0, pc
      3a: 9000         	str	r0, [sp]
;   new_toggle_light();
      3c: 9800         	ldr	r0, [sp]
      3e: 4780         	blx	r0
; }
      40: b002         	add	sp, #0x8
      42: bd80         	pop	{r7, pc}

00000044 <$d.3>:
      44: 08 00 00 00  	.word	0x00000008

Disassembly of section .text.toggle_light:

00000000 <toggle_light>:
; void toggle_light() {
       0: b580         	push	{r7, lr}
       2: 466f         	mov	r7, sp
       4: b082         	sub	sp, #0x8
       6: 200a         	movs	r0, #0xa
;   int i = 10;
       8: 9001         	str	r0, [sp, #0x4]
;   while (i--) {
       a: e7ff         	b	0xc <toggle_light+0xc>  @ imm = #-0x2
       c: 9801         	ldr	r0, [sp, #0x4]
       e: 1e41         	subs	r1, r0, #0x1
      10: 9101         	str	r1, [sp, #0x4]
      12: b150         	cbz	r0, 0x2a <toggle_light+0x2a> @ imm = #0x14
      14: e7ff         	b	0x16 <toggle_light+0x16> @ imm = #-0x2
      16: f640 4000    	movw	r0, #0xc00
      1a: f2c4 2002    	movt	r0, #0x4202
      1e: 2108         	movs	r1, #0x8
;     HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_3);
      20: f7ff fffe    	bl	0x20 <toggle_light+0x20> @ imm = #-0x4
;     spin_100000();
      24: f7ff fffe    	bl	0x24 <toggle_light+0x24> @ imm = #-0x4
;   while (i--) {
      28: e7f0         	b	0xc <toggle_light+0xc>  @ imm = #-0x20
;   toggle_light_2();
      2a: f7ff fffe    	bl	0x2a <toggle_light+0x2a> @ imm = #-0x4
; }
      2e: b002         	add	sp, #0x8
      30: bd80         	pop	{r7, pc}

Disassembly of section .text.foo2:

00000000 <foo2>:
; void foo2() {}
       0: 4770         	bx	lr

Disassembly of section .text.foo:

00000000 <foo>:
; void foo() {
       0: b580         	push	{r7, lr}
       2: 466f         	mov	r7, sp
       4: b082         	sub	sp, #0x8
;   void (*ptr)() = foo2;
       6: 4806         	ldr	r0, [pc, #0x18]         @ 0x20 <foo+0x20>
       8: 4478         	add	r0, pc
       a: 9001         	str	r0, [sp, #0x4]
;   ptr();
       c: 9801         	ldr	r0, [sp, #0x4]
       e: 4780         	blx	r0
;   a += 1;
      10: 4904         	ldr	r1, [pc, #0x10]         @ 0x24 <foo+0x24>
      12: 4479         	add	r1, pc
      14: 6808         	ldr	r0, [r1]
      16: 3001         	adds	r0, #0x1
      18: 6008         	str	r0, [r1]
; }
      1a: b002         	add	sp, #0x8
      1c: bd80         	pop	{r7, pc}
      1e: bf00         	nop

00000020 <$d.7>:
      20: 14 00 00 00  	.word	0x00000014
      24: 0e 00 00 00  	.word	0x0000000e

Disassembly of section .text.main:

00000000 <main>:
; int main() {
       0: b580         	push	{r7, lr}
       2: 466f         	mov	r7, sp
       4: b082         	sub	sp, #0x8
       6: 2000         	movs	r0, #0x0
       8: 9001         	str	r0, [sp, #0x4]
;   foo();
       a: f7ff fffe    	bl	0xa <main+0xa>          @ imm = #-0x4
;   if (!entered) {
       e: 480d         	ldr	r0, [pc, #0x34]         @ 0x44 <main+0x44>
      10: 4478         	add	r0, pc
      12: 6800         	ldr	r0, [r0]
      14: b948         	cbnz	r0, 0x2a <main+0x2a>    @ imm = #0x12
      16: e7ff         	b	0x18 <main+0x18>        @ imm = #-0x2
;     new_main();
      18: 480b         	ldr	r0, [pc, #0x2c]         @ 0x48 <main+0x48>
      1a: 4478         	add	r0, pc
      1c: 6800         	ldr	r0, [r0]
      1e: 4780         	blx	r0
;     entered = 1;
      20: 490a         	ldr	r1, [pc, #0x28]         @ 0x4c <main+0x4c>
      22: 4479         	add	r1, pc
      24: 2001         	movs	r0, #0x1
      26: 6008         	str	r0, [r1]
;   }
      28: e7ff         	b	0x2a <main+0x2a>        @ imm = #-0x2
;   MX_GPIO_Init();
      2a: f7ff fffe    	bl	0x2a <main+0x2a>        @ imm = #-0x4
;   while (1) {
      2e: e7ff         	b	0x30 <main+0x30>        @ imm = #-0x2
      30: f640 4000    	movw	r0, #0xc00
      34: f2c4 2002    	movt	r0, #0x4202
      38: 2108         	movs	r1, #0x8
;     HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_3);
      3a: f7ff fffe    	bl	0x3a <main+0x3a>        @ imm = #-0x4
;     spin_100000();
      3e: f7ff fffe    	bl	0x3e <main+0x3e>        @ imm = #-0x4
;   while (1) {
      42: e7f5         	b	0x30 <main+0x30>        @ imm = #-0x16

00000044 <$d.9>:
      44: 30 00 00 00  	.word	0x00000030
      48: 2a 00 00 00  	.word	0x0000002a
      4c: 26 00 00 00  	.word	0x00000026

Disassembly of section .text.MX_GPIO_Init:

00000000 <MX_GPIO_Init>:
; static void MX_GPIO_Init(void) {
       0: b580         	push	{r7, lr}
       2: 466f         	mov	r7, sp
       4: b08a         	sub	sp, #0x28
       6: 2000         	movs	r0, #0x0
;   GPIO_InitTypeDef GPIO_InitStruct = {0};
       8: 9009         	str	r0, [sp, #0x24]
       a: 9008         	str	r0, [sp, #0x20]
       c: 9007         	str	r0, [sp, #0x1c]
       e: 9006         	str	r0, [sp, #0x18]
      10: 9005         	str	r0, [sp, #0x14]
;   __HAL_RCC_GPIOD_CLK_ENABLE();
      12: e7ff         	b	0x14 <MX_GPIO_Init+0x14> @ imm = #-0x2
      14: f241 004c    	movw	r0, #0x104c
      18: f2c4 0002    	movt	r0, #0x4002
;   __HAL_RCC_GPIOD_CLK_ENABLE();
      1c: 6801         	ldr	r1, [r0]
      1e: f041 0108    	orr	r1, r1, #0x8
      22: 6001         	str	r1, [r0]
      24: 6800         	ldr	r0, [r0]
      26: f000 0008    	and	r0, r0, #0x8
      2a: 9004         	str	r0, [sp, #0x10]
      2c: 9804         	ldr	r0, [sp, #0x10]
      2e: e7ff         	b	0x30 <MX_GPIO_Init+0x30> @ imm = #-0x2
      30: f640 4000    	movw	r0, #0xc00
      34: f2c4 2002    	movt	r0, #0x4202
      38: 9003         	str	r0, [sp, #0xc]
      3a: 2108         	movs	r1, #0x8
      3c: 9101         	str	r1, [sp, #0x4]
      3e: 2201         	movs	r2, #0x1
;   HAL_GPIO_WritePin(LED9_GPIO_Port, LED9_Pin, GPIO_PIN_SET);
      40: 9202         	str	r2, [sp, #0x8]
      42: f7ff fffe    	bl	0x42 <MX_GPIO_Init+0x42> @ imm = #-0x4
      46: 9a01         	ldr	r2, [sp, #0x4]
      48: 9902         	ldr	r1, [sp, #0x8]
      4a: 9803         	ldr	r0, [sp, #0xc]
;   GPIO_InitStruct.Pin = LED9_Pin;
      4c: 9205         	str	r2, [sp, #0x14]
;   GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
      4e: 9106         	str	r1, [sp, #0x18]
;   GPIO_InitStruct.Pull = GPIO_PULLUP;
      50: 9107         	str	r1, [sp, #0x1c]
      52: 2103         	movs	r1, #0x3
;   GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
      54: 9108         	str	r1, [sp, #0x20]
      56: a905         	add	r1, sp, #0x14
;   HAL_GPIO_Init(LED9_GPIO_Port, &GPIO_InitStruct);
      58: f7ff fffe    	bl	0x58 <MX_GPIO_Init+0x58> @ imm = #-0x4
; }
      5c: b00a         	add	sp, #0x28
      5e: bd80         	pop	{r7, pc}
