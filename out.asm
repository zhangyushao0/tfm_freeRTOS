
build/bin/ns_app.elf:	file format elf32-littlearm

Disassembly of section .text:

08055200 <__unprivileged_flash_start__>:
; {
 8055200: b580         	push	{r7, lr}
 8055202: 466f         	mov	r7, sp
 8055204: b082         	sub	sp, #0x8
 8055206: 2000         	movs	r0, #0x0
;   HAL_StatusTypeDef  status = HAL_OK;
 8055208: f807 0c01    	strb	r0, [r7, #-1]
 805520c: 2004         	movs	r0, #0x4
;   HAL_NVIC_SetPriorityGrouping(NVIC_PRIORITYGROUP_3);
 805520e: f000 faf8    	bl	0x8055802 <HAL_NVIC_SetPriorityGrouping> @ imm = #0x5f0
;   SystemCoreClockUpdate();
 8055212: f000 f857    	bl	0x80552c4 <SystemCoreClockUpdate> @ imm = #0xae
 8055216: 2007         	movs	r0, #0x7
;   if (HAL_InitTick(TICK_INT_PRIORITY) != HAL_OK)
 8055218: f000 f80d    	bl	0x8055236 <HAL_InitTick> @ imm = #0x1a
 805521c: b120         	cbz	r0, 0x8055228 <__unprivileged_flash_start__+0x28> @ imm = #0x8
 805521e: e7ff         	b	0x8055220 <__unprivileged_flash_start__+0x20> @ imm = #-0x2
 8055220: 2001         	movs	r0, #0x1
;     status = HAL_ERROR;
 8055222: f807 0c01    	strb	r0, [r7, #-1]
;   }
 8055226: e002         	b	0x805522e <__unprivileged_flash_start__+0x2e> @ imm = #0x4
;     HAL_MspInit();
 8055228: f000 f84a    	bl	0x80552c0 <HAL_MspInit> @ imm = #0x94
 805522c: e7ff         	b	0x805522e <__unprivileged_flash_start__+0x2e> @ imm = #-0x2
;   return status;
 805522e: f817 0c01    	ldrb	r0, [r7, #-1]
 8055232: b002         	add	sp, #0x8
 8055234: bd80         	pop	{r7, pc}

08055236 <HAL_InitTick>:
; {
 8055236: b580         	push	{r7, lr}
 8055238: 466f         	mov	r7, sp
 805523a: b082         	sub	sp, #0x8
 805523c: 9001         	str	r0, [sp, #0x4]
 805523e: 2000         	movs	r0, #0x0
;   HAL_StatusTypeDef  status = HAL_OK;
 8055240: f807 0c05    	strb	r0, [r7, #-5]
;   if ((uint32_t)uwTickFreq != 0U)
 8055244: f240 1004    	movw	r0, #0x104
 8055248: f2c2 0000    	movt	r0, #0x2000
 805524c: 7800         	ldrb	r0, [r0]
 805524e: b378         	cbz	r0, 0x80552b0 <HAL_InitTick+0x7a> @ imm = #0x5e
 8055250: e7ff         	b	0x8055252 <HAL_InitTick+0x1c> @ imm = #-0x2
;     if (HAL_SYSTICK_Config(SystemCoreClock / (1000U / (uint32_t)uwTickFreq)) == 0U)
 8055252: f240 1008    	movw	r0, #0x108
 8055256: f2c2 0000    	movt	r0, #0x2000
 805525a: 6800         	ldr	r0, [r0]
 805525c: f240 1104    	movw	r1, #0x104
 8055260: f2c2 0100    	movt	r1, #0x2000
 8055264: 780a         	ldrb	r2, [r1]
 8055266: f44f 717a    	mov.w	r1, #0x3e8
 805526a: fbb1 f1f2    	udiv	r1, r1, r2
 805526e: fbb0 f0f1    	udiv	r0, r0, r1
 8055272: f000 fb64    	bl	0x805593e <HAL_SYSTICK_Config> @ imm = #0x6c8
 8055276: b9b0         	cbnz	r0, 0x80552a6 <HAL_InitTick+0x70> @ imm = #0x2c
 8055278: e7ff         	b	0x805527a <HAL_InitTick+0x44> @ imm = #-0x2
;       if (TickPriority < (1UL << __NVIC_PRIO_BITS))
 805527a: 9801         	ldr	r0, [sp, #0x4]
 805527c: 2807         	cmp	r0, #0x7
 805527e: d80d         	bhi	0x805529c <HAL_InitTick+0x66> @ imm = #0x1a
 8055280: e7ff         	b	0x8055282 <HAL_InitTick+0x4c> @ imm = #-0x2
;         HAL_NVIC_SetPriority(SysTick_IRQn, TickPriority, 0U);
 8055282: 9901         	ldr	r1, [sp, #0x4]
 8055284: f04f 30ff    	mov.w	r0, #0xffffffff
 8055288: 2200         	movs	r2, #0x0
 805528a: f000 fae1    	bl	0x8055850 <HAL_NVIC_SetPriority> @ imm = #0x5c2
;         uwTickPrio = TickPriority;
 805528e: 9801         	ldr	r0, [sp, #0x4]
 8055290: f240 1100    	movw	r1, #0x100
 8055294: f2c2 0100    	movt	r1, #0x2000
 8055298: 6008         	str	r0, [r1]
;       }
 805529a: e003         	b	0x80552a4 <HAL_InitTick+0x6e> @ imm = #0x6
 805529c: 2001         	movs	r0, #0x1
;         status = HAL_ERROR;
 805529e: f807 0c05    	strb	r0, [r7, #-5]
 80552a2: e7ff         	b	0x80552a4 <HAL_InitTick+0x6e> @ imm = #-0x2
;     }
 80552a4: e003         	b	0x80552ae <HAL_InitTick+0x78> @ imm = #0x6
 80552a6: 2001         	movs	r0, #0x1
;       status = HAL_ERROR;
 80552a8: f807 0c05    	strb	r0, [r7, #-5]
 80552ac: e7ff         	b	0x80552ae <HAL_InitTick+0x78> @ imm = #-0x2
;   }
 80552ae: e003         	b	0x80552b8 <HAL_InitTick+0x82> @ imm = #0x6
 80552b0: 2001         	movs	r0, #0x1
;     status = HAL_ERROR;
 80552b2: f807 0c05    	strb	r0, [r7, #-5]
 80552b6: e7ff         	b	0x80552b8 <HAL_InitTick+0x82> @ imm = #-0x2
;   return status;
 80552b8: f817 0c05    	ldrb	r0, [r7, #-5]
 80552bc: b002         	add	sp, #0x8
 80552be: bd80         	pop	{r7, pc}

080552c0 <HAL_MspInit>:
; }
 80552c0: 4770         	bx	lr

080552c2 <SystemInit>:
; }
 80552c2: 4770         	bx	lr

080552c4 <SystemCoreClockUpdate>:
; {
 80552c4: b088         	sub	sp, #0x20
 80552c6: f241 0000    	movw	r0, #0x1000
 80552ca: f2c4 0002    	movt	r0, #0x4002
;   if((RCC->CR & RCC_CR_MSIRGSEL) == 0U)
 80552ce: 6800         	ldr	r0, [r0]
 80552d0: 0700         	lsls	r0, r0, #0x1c
 80552d2: 2800         	cmp	r0, #0x0
 80552d4: d409         	bmi	0x80552ea <SystemCoreClockUpdate+0x26> @ imm = #0x12
 80552d6: e7ff         	b	0x80552d8 <SystemCoreClockUpdate+0x14> @ imm = #-0x2
 80552d8: f241 0094    	movw	r0, #0x1094
 80552dc: f2c4 0002    	movt	r0, #0x4002
;     msirange = (RCC->CSR & RCC_CSR_MSISRANGE) >> 8U;
 80552e0: 6800         	ldr	r0, [r0]
 80552e2: f3c0 2003    	ubfx	r0, r0, #0x8, #0x4
 80552e6: 9006         	str	r0, [sp, #0x18]
;   }
 80552e8: e008         	b	0x80552fc <SystemCoreClockUpdate+0x38> @ imm = #0x10
 80552ea: f241 0000    	movw	r0, #0x1000
 80552ee: f2c4 0002    	movt	r0, #0x4002
;     msirange = (RCC->CR & RCC_CR_MSIRANGE) >> 4U;
 80552f2: 6800         	ldr	r0, [r0]
 80552f4: b2c0         	uxtb	r0, r0
 80552f6: 0900         	lsrs	r0, r0, #0x4
 80552f8: 9006         	str	r0, [sp, #0x18]
 80552fa: e7ff         	b	0x80552fc <SystemCoreClockUpdate+0x38> @ imm = #-0x2
;   msirange = MSIRangeTable[msirange];
 80552fc: 9906         	ldr	r1, [sp, #0x18]
 80552fe: f248 4010    	movw	r0, #0x8410
 8055302: f6c0 0005    	movt	r0, #0x805
 8055306: f850 0021    	ldr.w	r0, [r0, r1, lsl #2]
 805530a: 9006         	str	r0, [sp, #0x18]
 805530c: f241 0008    	movw	r0, #0x1008
 8055310: f2c4 0002    	movt	r0, #0x4002
;   switch (RCC->CFGR & RCC_CFGR_SWS)
 8055314: 6800         	ldr	r0, [r0]
 8055316: f000 000c    	and	r0, r0, #0xc
 805531a: 4601         	mov	r1, r0
 805531c: 9101         	str	r1, [sp, #0x4]
 805531e: b160         	cbz	r0, 0x805533a <SystemCoreClockUpdate+0x76> @ imm = #0x18
 8055320: e7ff         	b	0x8055322 <SystemCoreClockUpdate+0x5e> @ imm = #-0x2
 8055322: 9801         	ldr	r0, [sp, #0x4]
 8055324: 2804         	cmp	r0, #0x4
 8055326: d00f         	beq	0x8055348 <SystemCoreClockUpdate+0x84> @ imm = #0x1e
 8055328: e7ff         	b	0x805532a <SystemCoreClockUpdate+0x66> @ imm = #-0x2
 805532a: 9801         	ldr	r0, [sp, #0x4]
 805532c: 2808         	cmp	r0, #0x8
 805532e: d015         	beq	0x805535c <SystemCoreClockUpdate+0x98> @ imm = #0x2a
 8055330: e7ff         	b	0x8055332 <SystemCoreClockUpdate+0x6e> @ imm = #-0x2
 8055332: 9801         	ldr	r0, [sp, #0x4]
 8055334: 280c         	cmp	r0, #0xc
 8055336: d01b         	beq	0x8055370 <SystemCoreClockUpdate+0xac> @ imm = #0x36
 8055338: e064         	b	0x8055404 <SystemCoreClockUpdate+0x140> @ imm = #0xc8
;       SystemCoreClock = msirange;
 805533a: 9806         	ldr	r0, [sp, #0x18]
 805533c: f240 1108    	movw	r1, #0x108
 8055340: f2c2 0100    	movt	r1, #0x2000
 8055344: 6008         	str	r0, [r1]
;       break;
 8055346: e064         	b	0x8055412 <SystemCoreClockUpdate+0x14e> @ imm = #0xc8
;       SystemCoreClock = HSI_VALUE;
 8055348: f240 1108    	movw	r1, #0x108
 805534c: f2c2 0100    	movt	r1, #0x2000
 8055350: f242 4000    	movw	r0, #0x2400
 8055354: f2c0 00f4    	movt	r0, #0xf4
 8055358: 6008         	str	r0, [r1]
;       break;
 805535a: e05a         	b	0x8055412 <SystemCoreClockUpdate+0x14e> @ imm = #0xb4
;       SystemCoreClock = HSE_VALUE;
 805535c: f240 1108    	movw	r1, #0x108
 8055360: f2c2 0100    	movt	r1, #0x2000
 8055364: f242 4000    	movw	r0, #0x2400
 8055368: f2c0 00f4    	movt	r0, #0xf4
 805536c: 6008         	str	r0, [r1]
;       break;
 805536e: e050         	b	0x8055412 <SystemCoreClockUpdate+0x14e> @ imm = #0xa0
 8055370: f241 000c    	movw	r0, #0x100c
 8055374: f2c4 0002    	movt	r0, #0x4002
;       pllsource = (RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC);
 8055378: 6801         	ldr	r1, [r0]
 805537a: f001 0103    	and	r1, r1, #0x3
 805537e: 9104         	str	r1, [sp, #0x10]
;       pllm = ((RCC->PLLCFGR & RCC_PLLCFGR_PLLM) >> 4U) + 1U ;
 8055380: 6800         	ldr	r0, [r0]
 8055382: b2c1         	uxtb	r1, r0
 8055384: 2001         	movs	r0, #0x1
 8055386: eb00 1011    	add.w	r0, r0, r1, lsr #4
 805538a: 9003         	str	r0, [sp, #0xc]
;       switch (pllsource)
 805538c: 9804         	ldr	r0, [sp, #0x10]
 805538e: 9000         	str	r0, [sp]
 8055390: 2802         	cmp	r0, #0x2
 8055392: d004         	beq	0x805539e <SystemCoreClockUpdate+0xda> @ imm = #0x8
 8055394: e7ff         	b	0x8055396 <SystemCoreClockUpdate+0xd2> @ imm = #-0x2
 8055396: 9800         	ldr	r0, [sp]
 8055398: 2803         	cmp	r0, #0x3
 805539a: d009         	beq	0x80553b0 <SystemCoreClockUpdate+0xec> @ imm = #0x12
 805539c: e011         	b	0x80553c2 <SystemCoreClockUpdate+0xfe> @ imm = #0x22
;           pllvco = (HSI_VALUE / pllm);
 805539e: 9903         	ldr	r1, [sp, #0xc]
 80553a0: f242 4000    	movw	r0, #0x2400
 80553a4: f2c0 00f4    	movt	r0, #0xf4
 80553a8: fbb0 f0f1    	udiv	r0, r0, r1
 80553ac: 9005         	str	r0, [sp, #0x14]
;           break;
 80553ae: e00e         	b	0x80553ce <SystemCoreClockUpdate+0x10a> @ imm = #0x1c
;           pllvco = (HSE_VALUE / pllm);
 80553b0: 9903         	ldr	r1, [sp, #0xc]
 80553b2: f242 4000    	movw	r0, #0x2400
 80553b6: f2c0 00f4    	movt	r0, #0xf4
 80553ba: fbb0 f0f1    	udiv	r0, r0, r1
 80553be: 9005         	str	r0, [sp, #0x14]
;           break;
 80553c0: e005         	b	0x80553ce <SystemCoreClockUpdate+0x10a> @ imm = #0xa
;           pllvco = (msirange / pllm);
 80553c2: 9806         	ldr	r0, [sp, #0x18]
 80553c4: 9903         	ldr	r1, [sp, #0xc]
 80553c6: fbb0 f0f1    	udiv	r0, r0, r1
 80553ca: 9005         	str	r0, [sp, #0x14]
;           break;
 80553cc: e7ff         	b	0x80553ce <SystemCoreClockUpdate+0x10a> @ imm = #-0x2
;       pllvco = pllvco * ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> 8U);
 80553ce: 9905         	ldr	r1, [sp, #0x14]
 80553d0: f241 000c    	movw	r0, #0x100c
 80553d4: f2c4 0002    	movt	r0, #0x4002
 80553d8: 6802         	ldr	r2, [r0]
 80553da: f3c2 2206    	ubfx	r2, r2, #0x8, #0x7
 80553de: 4351         	muls	r1, r2, r1
 80553e0: 9105         	str	r1, [sp, #0x14]
;       pllr = (((RCC->PLLCFGR & RCC_PLLCFGR_PLLR) >> 25U) + 1U) * 2U;
 80553e2: 6800         	ldr	r0, [r0]
 80553e4: f000 61c0    	and	r1, r0, #0x6000000
 80553e8: 2002         	movs	r0, #0x2
 80553ea: eb00 6011    	add.w	r0, r0, r1, lsr #24
 80553ee: 9002         	str	r0, [sp, #0x8]
;       SystemCoreClock = pllvco/pllr;
 80553f0: 9805         	ldr	r0, [sp, #0x14]
 80553f2: 9902         	ldr	r1, [sp, #0x8]
 80553f4: fbb0 f0f1    	udiv	r0, r0, r1
 80553f8: f240 1108    	movw	r1, #0x108
 80553fc: f2c2 0100    	movt	r1, #0x2000
 8055400: 6008         	str	r0, [r1]
;       break;
 8055402: e006         	b	0x8055412 <SystemCoreClockUpdate+0x14e> @ imm = #0xc
;       SystemCoreClock = msirange;
 8055404: 9806         	ldr	r0, [sp, #0x18]
 8055406: f240 1108    	movw	r1, #0x108
 805540a: f2c2 0100    	movt	r1, #0x2000
 805540e: 6008         	str	r0, [r1]
;       break;
 8055410: e7ff         	b	0x8055412 <SystemCoreClockUpdate+0x14e> @ imm = #-0x2
 8055412: f241 0008    	movw	r0, #0x1008
 8055416: f2c4 0002    	movt	r0, #0x4002
;   tmp = AHBPrescTable[((RCC->CFGR & RCC_CFGR_HPRE) >> 4U)];
 805541a: 6800         	ldr	r0, [r0]
 805541c: b2c0         	uxtb	r0, r0
 805541e: 0901         	lsrs	r1, r0, #0x4
 8055420: f248 4000    	movw	r0, #0x8400
 8055424: f6c0 0005    	movt	r0, #0x805
 8055428: 5c40         	ldrb	r0, [r0, r1]
 805542a: 9007         	str	r0, [sp, #0x1c]
;   SystemCoreClock >>= tmp;
 805542c: 9a07         	ldr	r2, [sp, #0x1c]
 805542e: f240 1108    	movw	r1, #0x108
 8055432: f2c2 0100    	movt	r1, #0x2000
 8055436: 6808         	ldr	r0, [r1]
 8055438: 40d0         	lsrs	r0, r2
 805543a: 6008         	str	r0, [r1]
; }
 805543c: b008         	add	sp, #0x20
 805543e: 4770         	bx	lr

08055440 <HAL_GPIO_Init>:
; void HAL_GPIO_Init(GPIO_TypeDef *GPIOx, GPIO_InitTypeDef *GPIO_Init) {
 8055440: b08b         	sub	sp, #0x2c
 8055442: 900a         	str	r0, [sp, #0x28]
 8055444: 9109         	str	r1, [sp, #0x24]
 8055446: 2000         	movs	r0, #0x0
;   uint32_t position = 0U;
 8055448: 9008         	str	r0, [sp, #0x20]
;   while (((GPIO_Init->Pin) >> position) != 0U) {
 805544a: e7ff         	b	0x805544c <HAL_GPIO_Init+0xc> @ imm = #-0x2
 805544c: 9809         	ldr	r0, [sp, #0x24]
 805544e: 6800         	ldr	r0, [r0]
 8055450: 9908         	ldr	r1, [sp, #0x20]
 8055452: 40c8         	lsrs	r0, r1
 8055454: 2800         	cmp	r0, #0x0
 8055456: f000 81a9    	beq.w	0x80557ac <HAL_GPIO_Init+0x36c> @ imm = #0x352
 805545a: e7ff         	b	0x805545c <HAL_GPIO_Init+0x1c> @ imm = #-0x2
;     iocurrent = (GPIO_Init->Pin) & (1UL << position);
 805545c: 9809         	ldr	r0, [sp, #0x24]
 805545e: 6800         	ldr	r0, [r0]
 8055460: 9a08         	ldr	r2, [sp, #0x20]
 8055462: 2101         	movs	r1, #0x1
 8055464: 4091         	lsls	r1, r2
 8055466: 4008         	ands	r0, r1
 8055468: 9007         	str	r0, [sp, #0x1c]
;     if (iocurrent != 0U) {
 805546a: 9807         	ldr	r0, [sp, #0x1c]
 805546c: 2800         	cmp	r0, #0x0
 805546e: f000 8199    	beq.w	0x80557a4 <HAL_GPIO_Init+0x364> @ imm = #0x332
 8055472: e7ff         	b	0x8055474 <HAL_GPIO_Init+0x34> @ imm = #-0x2
;       if ((GPIO_Init->Mode == GPIO_MODE_OUTPUT_PP) ||
 8055474: 9809         	ldr	r0, [sp, #0x24]
 8055476: 6840         	ldr	r0, [r0, #0x4]
 8055478: 2801         	cmp	r0, #0x1
 805547a: d00f         	beq	0x805549c <HAL_GPIO_Init+0x5c> @ imm = #0x1e
 805547c: e7ff         	b	0x805547e <HAL_GPIO_Init+0x3e> @ imm = #-0x2
;           (GPIO_Init->Mode == GPIO_MODE_AF_PP) ||
 805547e: 9809         	ldr	r0, [sp, #0x24]
 8055480: 6840         	ldr	r0, [r0, #0x4]
 8055482: 2802         	cmp	r0, #0x2
 8055484: d00a         	beq	0x805549c <HAL_GPIO_Init+0x5c> @ imm = #0x14
 8055486: e7ff         	b	0x8055488 <HAL_GPIO_Init+0x48> @ imm = #-0x2
;           (GPIO_Init->Mode == GPIO_MODE_OUTPUT_OD) ||
 8055488: 9809         	ldr	r0, [sp, #0x24]
 805548a: 6840         	ldr	r0, [r0, #0x4]
 805548c: 2811         	cmp	r0, #0x11
 805548e: d005         	beq	0x805549c <HAL_GPIO_Init+0x5c> @ imm = #0xa
 8055490: e7ff         	b	0x8055492 <HAL_GPIO_Init+0x52> @ imm = #-0x2
;           (GPIO_Init->Mode == GPIO_MODE_AF_OD)) {
 8055492: 9809         	ldr	r0, [sp, #0x24]
 8055494: 6840         	ldr	r0, [r0, #0x4]
;       if ((GPIO_Init->Mode == GPIO_MODE_OUTPUT_PP) ||
 8055496: 2812         	cmp	r0, #0x12
 8055498: d12f         	bne	0x80554fa <HAL_GPIO_Init+0xba> @ imm = #0x5e
 805549a: e7ff         	b	0x805549c <HAL_GPIO_Init+0x5c> @ imm = #-0x2
;         temp = GPIOx->OSPEEDR;
 805549c: 980a         	ldr	r0, [sp, #0x28]
 805549e: 6880         	ldr	r0, [r0, #0x8]
 80554a0: 9006         	str	r0, [sp, #0x18]
;         temp &= ~(GPIO_OSPEEDR_OSPEED0 << (position * 2U));
 80554a2: 9808         	ldr	r0, [sp, #0x20]
 80554a4: 0041         	lsls	r1, r0, #0x1
 80554a6: 2003         	movs	r0, #0x3
 80554a8: fa00 f101    	lsl.w	r1, r0, r1
 80554ac: 9806         	ldr	r0, [sp, #0x18]
 80554ae: 4388         	bics	r0, r1
 80554b0: 9006         	str	r0, [sp, #0x18]
;         temp |= (GPIO_Init->Speed << (position * 2U));
 80554b2: 9809         	ldr	r0, [sp, #0x24]
 80554b4: 68c0         	ldr	r0, [r0, #0xc]
 80554b6: 9908         	ldr	r1, [sp, #0x20]
 80554b8: 0049         	lsls	r1, r1, #0x1
 80554ba: fa00 f101    	lsl.w	r1, r0, r1
 80554be: 9806         	ldr	r0, [sp, #0x18]
 80554c0: 4308         	orrs	r0, r1
 80554c2: 9006         	str	r0, [sp, #0x18]
;         GPIOx->OSPEEDR = temp;
 80554c4: 9806         	ldr	r0, [sp, #0x18]
 80554c6: 990a         	ldr	r1, [sp, #0x28]
 80554c8: 6088         	str	r0, [r1, #0x8]
;         temp = GPIOx->OTYPER;
 80554ca: 980a         	ldr	r0, [sp, #0x28]
 80554cc: 6840         	ldr	r0, [r0, #0x4]
 80554ce: 9006         	str	r0, [sp, #0x18]
;         temp &= ~(GPIO_OTYPER_OT0 << position);
 80554d0: 9908         	ldr	r1, [sp, #0x20]
 80554d2: 2001         	movs	r0, #0x1
 80554d4: fa00 f101    	lsl.w	r1, r0, r1
 80554d8: 9806         	ldr	r0, [sp, #0x18]
 80554da: 4388         	bics	r0, r1
 80554dc: 9006         	str	r0, [sp, #0x18]
;         temp |= (((GPIO_Init->Mode & GPIO_OUTPUT_TYPE) >> 4) << position);
 80554de: 9809         	ldr	r0, [sp, #0x24]
 80554e0: 6840         	ldr	r0, [r0, #0x4]
 80554e2: f3c0 1000    	ubfx	r0, r0, #0x4, #0x1
 80554e6: 9908         	ldr	r1, [sp, #0x20]
 80554e8: fa00 f101    	lsl.w	r1, r0, r1
 80554ec: 9806         	ldr	r0, [sp, #0x18]
 80554ee: 4308         	orrs	r0, r1
 80554f0: 9006         	str	r0, [sp, #0x18]
;         GPIOx->OTYPER = temp;
 80554f2: 9806         	ldr	r0, [sp, #0x18]
 80554f4: 990a         	ldr	r1, [sp, #0x28]
 80554f6: 6048         	str	r0, [r1, #0x4]
;       }
 80554f8: e7ff         	b	0x80554fa <HAL_GPIO_Init+0xba> @ imm = #-0x2
;       temp = GPIOx->PUPDR;
 80554fa: 980a         	ldr	r0, [sp, #0x28]
 80554fc: 68c0         	ldr	r0, [r0, #0xc]
 80554fe: 9006         	str	r0, [sp, #0x18]
;       temp &= ~(GPIO_PUPDR_PUPD0 << (position * 2U));
 8055500: 9808         	ldr	r0, [sp, #0x20]
 8055502: 0041         	lsls	r1, r0, #0x1
 8055504: 2003         	movs	r0, #0x3
 8055506: fa00 f101    	lsl.w	r1, r0, r1
 805550a: 9806         	ldr	r0, [sp, #0x18]
 805550c: 4388         	bics	r0, r1
 805550e: 9006         	str	r0, [sp, #0x18]
;       temp |= ((GPIO_Init->Pull) << (position * 2U));
 8055510: 9809         	ldr	r0, [sp, #0x24]
 8055512: 6880         	ldr	r0, [r0, #0x8]
 8055514: 9908         	ldr	r1, [sp, #0x20]
 8055516: 0049         	lsls	r1, r1, #0x1
 8055518: fa00 f101    	lsl.w	r1, r0, r1
 805551c: 9806         	ldr	r0, [sp, #0x18]
 805551e: 4308         	orrs	r0, r1
 8055520: 9006         	str	r0, [sp, #0x18]
;       GPIOx->PUPDR = temp;
 8055522: 9806         	ldr	r0, [sp, #0x18]
 8055524: 990a         	ldr	r1, [sp, #0x28]
 8055526: 60c8         	str	r0, [r1, #0xc]
;       if ((GPIO_Init->Mode == GPIO_MODE_AF_PP) ||
 8055528: 9809         	ldr	r0, [sp, #0x24]
 805552a: 6840         	ldr	r0, [r0, #0x4]
 805552c: 2802         	cmp	r0, #0x2
 805552e: d005         	beq	0x805553c <HAL_GPIO_Init+0xfc> @ imm = #0xa
 8055530: e7ff         	b	0x8055532 <HAL_GPIO_Init+0xf2> @ imm = #-0x2
;           (GPIO_Init->Mode == GPIO_MODE_AF_OD)) {
 8055532: 9809         	ldr	r0, [sp, #0x24]
 8055534: 6840         	ldr	r0, [r0, #0x4]
;       if ((GPIO_Init->Mode == GPIO_MODE_AF_PP) ||
 8055536: 2812         	cmp	r0, #0x12
 8055538: d126         	bne	0x8055588 <HAL_GPIO_Init+0x148> @ imm = #0x4c
 805553a: e7ff         	b	0x805553c <HAL_GPIO_Init+0xfc> @ imm = #-0x2
;         temp = GPIOx->AFR[position >> 3U];
 805553c: 980a         	ldr	r0, [sp, #0x28]
 805553e: 9908         	ldr	r1, [sp, #0x20]
 8055540: f06f 0203    	mvn	r2, #0x3
 8055544: ea02 0151    	and.w	r1, r2, r1, lsr #1
 8055548: 4408         	add	r0, r1
 805554a: 6a00         	ldr	r0, [r0, #0x20]
 805554c: 9006         	str	r0, [sp, #0x18]
;         temp &= ~(0x0FUL << ((position & 0x07U) * 4U));
 805554e: 9808         	ldr	r0, [sp, #0x20]
 8055550: f000 0007    	and	r0, r0, #0x7
 8055554: 0081         	lsls	r1, r0, #0x2
 8055556: 200f         	movs	r0, #0xf
 8055558: fa00 f101    	lsl.w	r1, r0, r1
 805555c: 9806         	ldr	r0, [sp, #0x18]
 805555e: 4388         	bics	r0, r1
 8055560: 9006         	str	r0, [sp, #0x18]
;         temp |= ((GPIO_Init->Alternate) << ((position & 0x07U) * 4U));
 8055562: 9809         	ldr	r0, [sp, #0x24]
 8055564: 6900         	ldr	r0, [r0, #0x10]
 8055566: 9908         	ldr	r1, [sp, #0x20]
 8055568: f001 0107    	and	r1, r1, #0x7
 805556c: 0089         	lsls	r1, r1, #0x2
 805556e: fa00 f101    	lsl.w	r1, r0, r1
 8055572: 9806         	ldr	r0, [sp, #0x18]
 8055574: 4308         	orrs	r0, r1
 8055576: 9006         	str	r0, [sp, #0x18]
;         GPIOx->AFR[position >> 3U] = temp;
 8055578: 9806         	ldr	r0, [sp, #0x18]
 805557a: 990a         	ldr	r1, [sp, #0x28]
 805557c: 9b08         	ldr	r3, [sp, #0x20]
 805557e: ea02 0253    	and.w	r2, r2, r3, lsr #1
 8055582: 4411         	add	r1, r2
 8055584: 6208         	str	r0, [r1, #0x20]
;       }
 8055586: e7ff         	b	0x8055588 <HAL_GPIO_Init+0x148> @ imm = #-0x2
;       temp = GPIOx->MODER;
 8055588: 980a         	ldr	r0, [sp, #0x28]
 805558a: 6800         	ldr	r0, [r0]
 805558c: 9006         	str	r0, [sp, #0x18]
;       temp &= ~(GPIO_MODER_MODE0 << (position * 2U));
 805558e: 9808         	ldr	r0, [sp, #0x20]
 8055590: 0041         	lsls	r1, r0, #0x1
 8055592: 2003         	movs	r0, #0x3
 8055594: fa00 f101    	lsl.w	r1, r0, r1
 8055598: 9806         	ldr	r0, [sp, #0x18]
 805559a: 4388         	bics	r0, r1
 805559c: 9006         	str	r0, [sp, #0x18]
;       temp |= ((GPIO_Init->Mode & GPIO_MODE) << (position * 2U));
 805559e: 9809         	ldr	r0, [sp, #0x24]
 80555a0: 6840         	ldr	r0, [r0, #0x4]
 80555a2: f000 0003    	and	r0, r0, #0x3
 80555a6: 9908         	ldr	r1, [sp, #0x20]
 80555a8: 0049         	lsls	r1, r1, #0x1
 80555aa: fa00 f101    	lsl.w	r1, r0, r1
 80555ae: 9806         	ldr	r0, [sp, #0x18]
 80555b0: 4308         	orrs	r0, r1
 80555b2: 9006         	str	r0, [sp, #0x18]
;       GPIOx->MODER = temp;
 80555b4: 9806         	ldr	r0, [sp, #0x18]
 80555b6: 990a         	ldr	r1, [sp, #0x28]
 80555b8: 6008         	str	r0, [r1]
;       if ((GPIO_Init->Mode & EXTI_MODE) == EXTI_MODE) {
 80555ba: 9809         	ldr	r0, [sp, #0x24]
 80555bc: 79c0         	ldrb	r0, [r0, #0x7]
 80555be: 06c0         	lsls	r0, r0, #0x1b
 80555c0: 2800         	cmp	r0, #0x0
 80555c2: f140 80ee    	bpl.w	0x80557a2 <HAL_GPIO_Init+0x362> @ imm = #0x1dc
 80555c6: e7ff         	b	0x80555c8 <HAL_GPIO_Init+0x188> @ imm = #-0x2
;         temp = EXTI->EXTICR[position >> 2U];
 80555c8: 9808         	ldr	r0, [sp, #0x20]
 80555ca: f020 0003    	bic	r0, r0, #0x3
 80555ce: f24f 4160    	movw	r1, #0xf460
 80555d2: f2c4 0102    	movt	r1, #0x4002
 80555d6: 5840         	ldr	r0, [r0, r1]
 80555d8: 9006         	str	r0, [sp, #0x18]
;         temp &= ~((0x0FU) << (8U * (position & 0x03U)));
 80555da: 9808         	ldr	r0, [sp, #0x20]
 80555dc: f000 0003    	and	r0, r0, #0x3
 80555e0: 00c1         	lsls	r1, r0, #0x3
 80555e2: 200f         	movs	r0, #0xf
 80555e4: fa00 f101    	lsl.w	r1, r0, r1
 80555e8: 9806         	ldr	r0, [sp, #0x18]
 80555ea: 4388         	bics	r0, r1
 80555ec: 9006         	str	r0, [sp, #0x18]
;         temp |= (GPIO_GET_INDEX(GPIOx) << (8U * (position & 0x03U)));
 80555ee: 980a         	ldr	r0, [sp, #0x28]
 80555f0: 2100         	movs	r1, #0x0
 80555f2: f2c4 2102    	movt	r1, #0x4202
 80555f6: 4288         	cmp	r0, r1
 80555f8: d103         	bne	0x8055602 <HAL_GPIO_Init+0x1c2> @ imm = #0x6
 80555fa: e7ff         	b	0x80555fc <HAL_GPIO_Init+0x1bc> @ imm = #-0x2
 80555fc: 2000         	movs	r0, #0x0
;         temp |= (GPIO_GET_INDEX(GPIOx) << (8U * (position & 0x03U)));
 80555fe: 9005         	str	r0, [sp, #0x14]
 8055600: e050         	b	0x80556a4 <HAL_GPIO_Init+0x264> @ imm = #0xa0
 8055602: 980a         	ldr	r0, [sp, #0x28]
 8055604: f240 4100    	movw	r1, #0x400
 8055608: f2c4 2102    	movt	r1, #0x4202
 805560c: 4288         	cmp	r0, r1
 805560e: d103         	bne	0x8055618 <HAL_GPIO_Init+0x1d8> @ imm = #0x6
 8055610: e7ff         	b	0x8055612 <HAL_GPIO_Init+0x1d2> @ imm = #-0x2
 8055612: 2001         	movs	r0, #0x1
;         temp |= (GPIO_GET_INDEX(GPIOx) << (8U * (position & 0x03U)));
 8055614: 9004         	str	r0, [sp, #0x10]
 8055616: e042         	b	0x805569e <HAL_GPIO_Init+0x25e> @ imm = #0x84
 8055618: 980a         	ldr	r0, [sp, #0x28]
 805561a: f640 0100    	movw	r1, #0x800
 805561e: f2c4 2102    	movt	r1, #0x4202
 8055622: 4288         	cmp	r0, r1
 8055624: d103         	bne	0x805562e <HAL_GPIO_Init+0x1ee> @ imm = #0x6
 8055626: e7ff         	b	0x8055628 <HAL_GPIO_Init+0x1e8> @ imm = #-0x2
 8055628: 2002         	movs	r0, #0x2
;         temp |= (GPIO_GET_INDEX(GPIOx) << (8U * (position & 0x03U)));
 805562a: 9003         	str	r0, [sp, #0xc]
 805562c: e034         	b	0x8055698 <HAL_GPIO_Init+0x258> @ imm = #0x68
 805562e: 980a         	ldr	r0, [sp, #0x28]
 8055630: f640 4100    	movw	r1, #0xc00
 8055634: f2c4 2102    	movt	r1, #0x4202
 8055638: 4288         	cmp	r0, r1
 805563a: d103         	bne	0x8055644 <HAL_GPIO_Init+0x204> @ imm = #0x6
 805563c: e7ff         	b	0x805563e <HAL_GPIO_Init+0x1fe> @ imm = #-0x2
 805563e: 2003         	movs	r0, #0x3
;         temp |= (GPIO_GET_INDEX(GPIOx) << (8U * (position & 0x03U)));
 8055640: 9002         	str	r0, [sp, #0x8]
 8055642: e026         	b	0x8055692 <HAL_GPIO_Init+0x252> @ imm = #0x4c
 8055644: 980a         	ldr	r0, [sp, #0x28]
 8055646: f241 0100    	movw	r1, #0x1000
 805564a: f2c4 2102    	movt	r1, #0x4202
 805564e: 4288         	cmp	r0, r1
 8055650: d103         	bne	0x805565a <HAL_GPIO_Init+0x21a> @ imm = #0x6
 8055652: e7ff         	b	0x8055654 <HAL_GPIO_Init+0x214> @ imm = #-0x2
 8055654: 2004         	movs	r0, #0x4
;         temp |= (GPIO_GET_INDEX(GPIOx) << (8U * (position & 0x03U)));
 8055656: 9001         	str	r0, [sp, #0x4]
 8055658: e018         	b	0x805568c <HAL_GPIO_Init+0x24c> @ imm = #0x30
 805565a: 980a         	ldr	r0, [sp, #0x28]
 805565c: f241 4100    	movw	r1, #0x1400
 8055660: f2c4 2102    	movt	r1, #0x4202
 8055664: 4288         	cmp	r0, r1
 8055666: d103         	bne	0x8055670 <HAL_GPIO_Init+0x230> @ imm = #0x6
 8055668: e7ff         	b	0x805566a <HAL_GPIO_Init+0x22a> @ imm = #-0x2
 805566a: 2005         	movs	r0, #0x5
;         temp |= (GPIO_GET_INDEX(GPIOx) << (8U * (position & 0x03U)));
 805566c: 9000         	str	r0, [sp]
 805566e: e00a         	b	0x8055686 <HAL_GPIO_Init+0x246> @ imm = #0x14
 8055670: 990a         	ldr	r1, [sp, #0x28]
 8055672: f641 0200    	movw	r2, #0x1800
 8055676: f2c4 2202    	movt	r2, #0x4202
 805567a: 2007         	movs	r0, #0x7
 805567c: 4291         	cmp	r1, r2
 805567e: bf08         	it	eq
 8055680: 2006         	moveq	r0, #0x6
 8055682: 9000         	str	r0, [sp]
 8055684: e7ff         	b	0x8055686 <HAL_GPIO_Init+0x246> @ imm = #-0x2
 8055686: 9800         	ldr	r0, [sp]
 8055688: 9001         	str	r0, [sp, #0x4]
 805568a: e7ff         	b	0x805568c <HAL_GPIO_Init+0x24c> @ imm = #-0x2
 805568c: 9801         	ldr	r0, [sp, #0x4]
 805568e: 9002         	str	r0, [sp, #0x8]
 8055690: e7ff         	b	0x8055692 <HAL_GPIO_Init+0x252> @ imm = #-0x2
 8055692: 9802         	ldr	r0, [sp, #0x8]
 8055694: 9003         	str	r0, [sp, #0xc]
 8055696: e7ff         	b	0x8055698 <HAL_GPIO_Init+0x258> @ imm = #-0x2
 8055698: 9803         	ldr	r0, [sp, #0xc]
 805569a: 9004         	str	r0, [sp, #0x10]
 805569c: e7ff         	b	0x805569e <HAL_GPIO_Init+0x25e> @ imm = #-0x2
 805569e: 9804         	ldr	r0, [sp, #0x10]
 80556a0: 9005         	str	r0, [sp, #0x14]
 80556a2: e7ff         	b	0x80556a4 <HAL_GPIO_Init+0x264> @ imm = #-0x2
 80556a4: 9805         	ldr	r0, [sp, #0x14]
 80556a6: 9908         	ldr	r1, [sp, #0x20]
 80556a8: f001 0103    	and	r1, r1, #0x3
 80556ac: 00c9         	lsls	r1, r1, #0x3
 80556ae: fa00 f101    	lsl.w	r1, r0, r1
 80556b2: 9806         	ldr	r0, [sp, #0x18]
 80556b4: 4308         	orrs	r0, r1
 80556b6: 9006         	str	r0, [sp, #0x18]
;         EXTI->EXTICR[position >> 2U] = temp;
 80556b8: 9806         	ldr	r0, [sp, #0x18]
 80556ba: 9908         	ldr	r1, [sp, #0x20]
 80556bc: f021 0103    	bic	r1, r1, #0x3
 80556c0: f24f 4260    	movw	r2, #0xf460
 80556c4: f2c4 0202    	movt	r2, #0x4002
 80556c8: 5088         	str	r0, [r1, r2]
 80556ca: f24f 4080    	movw	r0, #0xf480
 80556ce: f2c4 0002    	movt	r0, #0x4002
;         temp = EXTI->IMR1;
 80556d2: 6800         	ldr	r0, [r0]
 80556d4: 9006         	str	r0, [sp, #0x18]
;         temp &= ~(iocurrent);
 80556d6: 9907         	ldr	r1, [sp, #0x1c]
 80556d8: 9806         	ldr	r0, [sp, #0x18]
 80556da: 4388         	bics	r0, r1
 80556dc: 9006         	str	r0, [sp, #0x18]
;         if ((GPIO_Init->Mode & GPIO_MODE_IT) == GPIO_MODE_IT) {
 80556de: 9809         	ldr	r0, [sp, #0x24]
 80556e0: 7980         	ldrb	r0, [r0, #0x6]
 80556e2: 07c0         	lsls	r0, r0, #0x1f
 80556e4: b128         	cbz	r0, 0x80556f2 <HAL_GPIO_Init+0x2b2> @ imm = #0xa
 80556e6: e7ff         	b	0x80556e8 <HAL_GPIO_Init+0x2a8> @ imm = #-0x2
;           temp |= iocurrent;
 80556e8: 9907         	ldr	r1, [sp, #0x1c]
 80556ea: 9806         	ldr	r0, [sp, #0x18]
 80556ec: 4308         	orrs	r0, r1
 80556ee: 9006         	str	r0, [sp, #0x18]
;         }
 80556f0: e7ff         	b	0x80556f2 <HAL_GPIO_Init+0x2b2> @ imm = #-0x2
;         EXTI->IMR1 = temp;
 80556f2: 9806         	ldr	r0, [sp, #0x18]
 80556f4: f24f 4180    	movw	r1, #0xf480
 80556f8: f2c4 0102    	movt	r1, #0x4002
 80556fc: 6008         	str	r0, [r1]
 80556fe: f24f 4084    	movw	r0, #0xf484
 8055702: f2c4 0002    	movt	r0, #0x4002
;         temp = EXTI->EMR1;
 8055706: 6800         	ldr	r0, [r0]
 8055708: 9006         	str	r0, [sp, #0x18]
;         temp &= ~(iocurrent);
 805570a: 9907         	ldr	r1, [sp, #0x1c]
 805570c: 9806         	ldr	r0, [sp, #0x18]
 805570e: 4388         	bics	r0, r1
 8055710: 9006         	str	r0, [sp, #0x18]
;         if ((GPIO_Init->Mode & GPIO_MODE_EVT) == GPIO_MODE_EVT) {
 8055712: 9809         	ldr	r0, [sp, #0x24]
 8055714: 7980         	ldrb	r0, [r0, #0x6]
 8055716: 0780         	lsls	r0, r0, #0x1e
 8055718: 2800         	cmp	r0, #0x0
 805571a: d505         	bpl	0x8055728 <HAL_GPIO_Init+0x2e8> @ imm = #0xa
 805571c: e7ff         	b	0x805571e <HAL_GPIO_Init+0x2de> @ imm = #-0x2
;           temp |= iocurrent;
 805571e: 9907         	ldr	r1, [sp, #0x1c]
 8055720: 9806         	ldr	r0, [sp, #0x18]
 8055722: 4308         	orrs	r0, r1
 8055724: 9006         	str	r0, [sp, #0x18]
;         }
 8055726: e7ff         	b	0x8055728 <HAL_GPIO_Init+0x2e8> @ imm = #-0x2
;         EXTI->EMR1 = temp;
 8055728: 9806         	ldr	r0, [sp, #0x18]
 805572a: f24f 4184    	movw	r1, #0xf484
 805572e: f2c4 0102    	movt	r1, #0x4002
 8055732: 6008         	str	r0, [r1]
 8055734: f24f 4000    	movw	r0, #0xf400
 8055738: f2c4 0002    	movt	r0, #0x4002
;         temp = EXTI->RTSR1;
 805573c: 6800         	ldr	r0, [r0]
 805573e: 9006         	str	r0, [sp, #0x18]
;         temp &= ~(iocurrent);
 8055740: 9907         	ldr	r1, [sp, #0x1c]
 8055742: 9806         	ldr	r0, [sp, #0x18]
 8055744: 4388         	bics	r0, r1
 8055746: 9006         	str	r0, [sp, #0x18]
;         if ((GPIO_Init->Mode & RISING_EDGE) == RISING_EDGE) {
 8055748: 9809         	ldr	r0, [sp, #0x24]
 805574a: 7980         	ldrb	r0, [r0, #0x6]
 805574c: 06c0         	lsls	r0, r0, #0x1b
 805574e: 2800         	cmp	r0, #0x0
 8055750: d505         	bpl	0x805575e <HAL_GPIO_Init+0x31e> @ imm = #0xa
 8055752: e7ff         	b	0x8055754 <HAL_GPIO_Init+0x314> @ imm = #-0x2
;           temp |= iocurrent;
 8055754: 9907         	ldr	r1, [sp, #0x1c]
 8055756: 9806         	ldr	r0, [sp, #0x18]
 8055758: 4308         	orrs	r0, r1
 805575a: 9006         	str	r0, [sp, #0x18]
;         }
 805575c: e7ff         	b	0x805575e <HAL_GPIO_Init+0x31e> @ imm = #-0x2
;         EXTI->RTSR1 = temp;
 805575e: 9806         	ldr	r0, [sp, #0x18]
 8055760: f24f 4100    	movw	r1, #0xf400
 8055764: f2c4 0102    	movt	r1, #0x4002
 8055768: 6008         	str	r0, [r1]
 805576a: f24f 4004    	movw	r0, #0xf404
 805576e: f2c4 0002    	movt	r0, #0x4002
;         temp = EXTI->FTSR1;
 8055772: 6800         	ldr	r0, [r0]
 8055774: 9006         	str	r0, [sp, #0x18]
;         temp &= ~(iocurrent);
 8055776: 9907         	ldr	r1, [sp, #0x1c]
 8055778: 9806         	ldr	r0, [sp, #0x18]
 805577a: 4388         	bics	r0, r1
 805577c: 9006         	str	r0, [sp, #0x18]
;         if ((GPIO_Init->Mode & FALLING_EDGE) == FALLING_EDGE) {
 805577e: 9809         	ldr	r0, [sp, #0x24]
 8055780: 7980         	ldrb	r0, [r0, #0x6]
 8055782: 0680         	lsls	r0, r0, #0x1a
 8055784: 2800         	cmp	r0, #0x0
 8055786: d505         	bpl	0x8055794 <HAL_GPIO_Init+0x354> @ imm = #0xa
 8055788: e7ff         	b	0x805578a <HAL_GPIO_Init+0x34a> @ imm = #-0x2
;           temp |= iocurrent;
 805578a: 9907         	ldr	r1, [sp, #0x1c]
 805578c: 9806         	ldr	r0, [sp, #0x18]
 805578e: 4308         	orrs	r0, r1
 8055790: 9006         	str	r0, [sp, #0x18]
;         }
 8055792: e7ff         	b	0x8055794 <HAL_GPIO_Init+0x354> @ imm = #-0x2
;         EXTI->FTSR1 = temp;
 8055794: 9806         	ldr	r0, [sp, #0x18]
 8055796: f24f 4104    	movw	r1, #0xf404
 805579a: f2c4 0102    	movt	r1, #0x4002
 805579e: 6008         	str	r0, [r1]
;       }
 80557a0: e7ff         	b	0x80557a2 <HAL_GPIO_Init+0x362> @ imm = #-0x2
;     }
 80557a2: e7ff         	b	0x80557a4 <HAL_GPIO_Init+0x364> @ imm = #-0x2
;     position++;
 80557a4: 9808         	ldr	r0, [sp, #0x20]
 80557a6: 3001         	adds	r0, #0x1
 80557a8: 9008         	str	r0, [sp, #0x20]
;   while (((GPIO_Init->Pin) >> position) != 0U) {
 80557aa: e64f         	b	0x805544c <HAL_GPIO_Init+0xc> @ imm = #-0x362
; }
 80557ac: b00b         	add	sp, #0x2c
 80557ae: 4770         	bx	lr

080557b0 <HAL_GPIO_WritePin>:
;                        GPIO_PinState PinState) {
 80557b0: b082         	sub	sp, #0x8
 80557b2: 9001         	str	r0, [sp, #0x4]
 80557b4: f8ad 1002    	strh.w	r1, [sp, #0x2]
 80557b8: f88d 2001    	strb.w	r2, [sp, #0x1]
;   if (PinState != GPIO_PIN_RESET) {
 80557bc: f89d 0001    	ldrb.w	r0, [sp, #0x1]
 80557c0: b128         	cbz	r0, 0x80557ce <HAL_GPIO_WritePin+0x1e> @ imm = #0xa
 80557c2: e7ff         	b	0x80557c4 <HAL_GPIO_WritePin+0x14> @ imm = #-0x2
;     GPIOx->BSRR = (uint32_t)GPIO_Pin;
 80557c4: f8bd 0002    	ldrh.w	r0, [sp, #0x2]
 80557c8: 9901         	ldr	r1, [sp, #0x4]
 80557ca: 6188         	str	r0, [r1, #0x18]
;   } else {
 80557cc: e004         	b	0x80557d8 <HAL_GPIO_WritePin+0x28> @ imm = #0x8
;     GPIOx->BRR = (uint32_t)GPIO_Pin;
 80557ce: f8bd 0002    	ldrh.w	r0, [sp, #0x2]
 80557d2: 9901         	ldr	r1, [sp, #0x4]
 80557d4: 6288         	str	r0, [r1, #0x28]
 80557d6: e7ff         	b	0x80557d8 <HAL_GPIO_WritePin+0x28> @ imm = #-0x2
; }
 80557d8: b002         	add	sp, #0x8
 80557da: 4770         	bx	lr

080557dc <HAL_GPIO_TogglePin>:
; void HAL_GPIO_TogglePin(GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin) {
 80557dc: b083         	sub	sp, #0xc
 80557de: 9002         	str	r0, [sp, #0x8]
 80557e0: f8ad 1006    	strh.w	r1, [sp, #0x6]
;   odr = GPIOx->ODR;
 80557e4: 9802         	ldr	r0, [sp, #0x8]
 80557e6: 6940         	ldr	r0, [r0, #0x14]
 80557e8: 9000         	str	r0, [sp]
;   GPIOx->BSRR = ((odr & GPIO_Pin) << GPIO_NUMBER) | (~odr & GPIO_Pin);
 80557ea: 9a00         	ldr	r2, [sp]
 80557ec: f8bd 0006    	ldrh.w	r0, [sp, #0x6]
 80557f0: ea02 0100    	and.w	r1, r2, r0
 80557f4: 4390         	bics	r0, r2
 80557f6: ea40 4001    	orr.w	r0, r0, r1, lsl #16
 80557fa: 9902         	ldr	r1, [sp, #0x8]
 80557fc: 6188         	str	r0, [r1, #0x18]
; }
 80557fe: b003         	add	sp, #0xc
 8055800: 4770         	bx	lr

08055802 <HAL_NVIC_SetPriorityGrouping>:
; {
 8055802: b580         	push	{r7, lr}
 8055804: 466f         	mov	r7, sp
 8055806: b082         	sub	sp, #0x8
 8055808: 9001         	str	r0, [sp, #0x4]
;   NVIC_SetPriorityGrouping(PriorityGroup);
 805580a: 9801         	ldr	r0, [sp, #0x4]
 805580c: f000 f802    	bl	0x8055814 <__NVIC_SetPriorityGrouping> @ imm = #0x4
; }
 8055810: b002         	add	sp, #0x8
 8055812: bd80         	pop	{r7, pc}

08055814 <__NVIC_SetPriorityGrouping>:
; {
 8055814: b083         	sub	sp, #0xc
 8055816: 9002         	str	r0, [sp, #0x8]
;   uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);             /* only values 0..7 are used          */
 8055818: 9802         	ldr	r0, [sp, #0x8]
 805581a: f000 0007    	and	r0, r0, #0x7
 805581e: 9000         	str	r0, [sp]
 8055820: f64e 510c    	movw	r1, #0xed0c
 8055824: f2ce 0100    	movt	r1, #0xe000
;   reg_value  =  SCB->AIRCR;                                                   /* read old register configuration    */
 8055828: 6808         	ldr	r0, [r1]
 805582a: 9001         	str	r0, [sp, #0x4]
;   reg_value &= ~((uint32_t)(SCB_AIRCR_VECTKEY_Msk | SCB_AIRCR_PRIGROUP_Msk)); /* clear bits to change               */
 805582c: 9801         	ldr	r0, [sp, #0x4]
 805582e: f64f 02ff    	movw	r2, #0xf8ff
 8055832: 4010         	ands	r0, r2
 8055834: 9001         	str	r0, [sp, #0x4]
;   reg_value  =  (reg_value                                   |
 8055836: 9801         	ldr	r0, [sp, #0x4]
;                 (PriorityGroupTmp << SCB_AIRCR_PRIGROUP_Pos)  );              /* Insert write key and priority group */
 8055838: 9a00         	ldr	r2, [sp]
;   reg_value  =  (reg_value                                   |
 805583a: ea40 2002    	orr.w	r0, r0, r2, lsl #8
 805583e: 2200         	movs	r2, #0x0
 8055840: f2c0 52fa    	movt	r2, #0x5fa
;                 ((uint32_t)0x5FAUL << SCB_AIRCR_VECTKEY_Pos) |
 8055844: 4310         	orrs	r0, r2
;   reg_value  =  (reg_value                                   |
 8055846: 9001         	str	r0, [sp, #0x4]
;   SCB->AIRCR =  reg_value;
 8055848: 9801         	ldr	r0, [sp, #0x4]
 805584a: 6008         	str	r0, [r1]
; }
 805584c: b003         	add	sp, #0xc
 805584e: 4770         	bx	lr

08055850 <HAL_NVIC_SetPriority>:
; {
 8055850: b580         	push	{r7, lr}
 8055852: 466f         	mov	r7, sp
 8055854: b086         	sub	sp, #0x18
 8055856: f807 0c01    	strb	r0, [r7, #-1]
 805585a: 9104         	str	r1, [sp, #0x10]
 805585c: 9203         	str	r2, [sp, #0xc]
;   prioritygroup = NVIC_GetPriorityGrouping();
 805585e: f000 f80f    	bl	0x8055880 <__NVIC_GetPriorityGrouping> @ imm = #0x1e
 8055862: 9002         	str	r0, [sp, #0x8]
;   NVIC_SetPriority(IRQn, NVIC_EncodePriority(prioritygroup, PreemptPriority, SubPriority));
 8055864: f917 0c01    	ldrsb	r0, [r7, #-1]
 8055868: 9001         	str	r0, [sp, #0x4]
 805586a: 9802         	ldr	r0, [sp, #0x8]
 805586c: 9904         	ldr	r1, [sp, #0x10]
 805586e: 9a03         	ldr	r2, [sp, #0xc]
 8055870: f000 f82f    	bl	0x80558d2 <NVIC_EncodePriority> @ imm = #0x5e
 8055874: 4601         	mov	r1, r0
 8055876: 9801         	ldr	r0, [sp, #0x4]
 8055878: f000 f80a    	bl	0x8055890 <__NVIC_SetPriority> @ imm = #0x14
; }
 805587c: b006         	add	sp, #0x18
 805587e: bd80         	pop	{r7, pc}

08055880 <__NVIC_GetPriorityGrouping>:
; {
 8055880: f64e 500c    	movw	r0, #0xed0c
 8055884: f2ce 0000    	movt	r0, #0xe000
;   return ((uint32_t)((SCB->AIRCR & SCB_AIRCR_PRIGROUP_Msk) >> SCB_AIRCR_PRIGROUP_Pos));
 8055888: 6800         	ldr	r0, [r0]
 805588a: f3c0 2002    	ubfx	r0, r0, #0x8, #0x3
 805588e: 4770         	bx	lr

08055890 <__NVIC_SetPriority>:
; {
 8055890: b082         	sub	sp, #0x8
 8055892: f88d 0007    	strb.w	r0, [sp, #0x7]
 8055896: 9100         	str	r1, [sp]
;   if ((int32_t)(IRQn) >= 0)
 8055898: f99d 0007    	ldrsb.w	r0, [sp, #0x7]
 805589c: 2800         	cmp	r0, #0x0
 805589e: d40a         	bmi	0x80558b6 <__NVIC_SetPriority+0x26> @ imm = #0x14
 80558a0: e7ff         	b	0x80558a2 <__NVIC_SetPriority+0x12> @ imm = #-0x2
;     NVIC->IPR[((uint32_t)IRQn)]               = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
 80558a2: 9800         	ldr	r0, [sp]
 80558a4: 0140         	lsls	r0, r0, #0x5
 80558a6: f99d 1007    	ldrsb.w	r1, [sp, #0x7]
 80558aa: f24e 4200    	movw	r2, #0xe400
 80558ae: f2ce 0200    	movt	r2, #0xe000
 80558b2: 5488         	strb	r0, [r1, r2]
;   }
 80558b4: e00b         	b	0x80558ce <__NVIC_SetPriority+0x3e> @ imm = #0x16
;     SCB->SHPR[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
 80558b6: 9800         	ldr	r0, [sp]
 80558b8: 0140         	lsls	r0, r0, #0x5
 80558ba: f89d 1007    	ldrb.w	r1, [sp, #0x7]
 80558be: f001 010f    	and	r1, r1, #0xf
 80558c2: f64e 5214    	movw	r2, #0xed14
 80558c6: f2ce 0200    	movt	r2, #0xe000
 80558ca: 5488         	strb	r0, [r1, r2]
 80558cc: e7ff         	b	0x80558ce <__NVIC_SetPriority+0x3e> @ imm = #-0x2
; }
 80558ce: b002         	add	sp, #0x8
 80558d0: 4770         	bx	lr

080558d2 <NVIC_EncodePriority>:
; {
 80558d2: b088         	sub	sp, #0x20
 80558d4: 9007         	str	r0, [sp, #0x1c]
 80558d6: 9106         	str	r1, [sp, #0x18]
 80558d8: 9205         	str	r2, [sp, #0x14]
;   uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);   /* only values 0..7 are used          */
 80558da: 9807         	ldr	r0, [sp, #0x1c]
 80558dc: f000 0007    	and	r0, r0, #0x7
 80558e0: 9004         	str	r0, [sp, #0x10]
;   PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(__NVIC_PRIO_BITS)) ? (uint32_t)(__NVIC_PRIO_BITS) : (uint32_t)(7UL - PriorityGroupTmp);
 80558e2: 9804         	ldr	r0, [sp, #0x10]
 80558e4: f1c0 0007    	rsb.w	r0, r0, #0x7
 80558e8: 2804         	cmp	r0, #0x4
 80558ea: d303         	blo	0x80558f4 <NVIC_EncodePriority+0x22> @ imm = #0x6
 80558ec: e7ff         	b	0x80558ee <NVIC_EncodePriority+0x1c> @ imm = #-0x2
 80558ee: 2003         	movs	r0, #0x3
;   PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(__NVIC_PRIO_BITS)) ? (uint32_t)(__NVIC_PRIO_BITS) : (uint32_t)(7UL - PriorityGroupTmp);
 80558f0: 9001         	str	r0, [sp, #0x4]
 80558f2: e004         	b	0x80558fe <NVIC_EncodePriority+0x2c> @ imm = #0x8
 80558f4: 9804         	ldr	r0, [sp, #0x10]
 80558f6: f1c0 0007    	rsb.w	r0, r0, #0x7
 80558fa: 9001         	str	r0, [sp, #0x4]
 80558fc: e7ff         	b	0x80558fe <NVIC_EncodePriority+0x2c> @ imm = #-0x2
 80558fe: 9801         	ldr	r0, [sp, #0x4]
 8055900: 9003         	str	r0, [sp, #0xc]
;   SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(__NVIC_PRIO_BITS)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(__NVIC_PRIO_BITS));
 8055902: 9804         	ldr	r0, [sp, #0x10]
 8055904: 3003         	adds	r0, #0x3
 8055906: 2806         	cmp	r0, #0x6
 8055908: d803         	bhi	0x8055912 <NVIC_EncodePriority+0x40> @ imm = #0x6
 805590a: e7ff         	b	0x805590c <NVIC_EncodePriority+0x3a> @ imm = #-0x2
 805590c: 2000         	movs	r0, #0x0
;   SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(__NVIC_PRIO_BITS)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(__NVIC_PRIO_BITS));
 805590e: 9000         	str	r0, [sp]
 8055910: e003         	b	0x805591a <NVIC_EncodePriority+0x48> @ imm = #0x6
 8055912: 9804         	ldr	r0, [sp, #0x10]
 8055914: 3804         	subs	r0, #0x4
 8055916: 9000         	str	r0, [sp]
 8055918: e7ff         	b	0x805591a <NVIC_EncodePriority+0x48> @ imm = #-0x2
 805591a: 9800         	ldr	r0, [sp]
 805591c: 9002         	str	r0, [sp, #0x8]
;            ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
 805591e: 9806         	ldr	r0, [sp, #0x18]
 8055920: 9903         	ldr	r1, [sp, #0xc]
 8055922: 2201         	movs	r2, #0x1
 8055924: fa02 f101    	lsl.w	r1, r2, r1
 8055928: 3901         	subs	r1, #0x1
 805592a: 4008         	ands	r0, r1
 805592c: 9b02         	ldr	r3, [sp, #0x8]
 805592e: 4098         	lsls	r0, r3
;            ((SubPriority     & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL)))
 8055930: 9905         	ldr	r1, [sp, #0x14]
 8055932: 409a         	lsls	r2, r3
 8055934: 3a01         	subs	r2, #0x1
 8055936: 4011         	ands	r1, r2
;            ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
 8055938: 4308         	orrs	r0, r1
;   return (
 805593a: b008         	add	sp, #0x20
 805593c: 4770         	bx	lr

0805593e <HAL_SYSTICK_Config>:
; {
 805593e: b580         	push	{r7, lr}
 8055940: 466f         	mov	r7, sp
 8055942: b082         	sub	sp, #0x8
 8055944: 9001         	str	r0, [sp, #0x4]
;   return SysTick_Config(TicksNumb);
 8055946: 9801         	ldr	r0, [sp, #0x4]
 8055948: f000 f802    	bl	0x8055950 <SysTick_Config> @ imm = #0x4
 805594c: b002         	add	sp, #0x8
 805594e: bd80         	pop	{r7, pc}

08055950 <SysTick_Config>:
; {
 8055950: b580         	push	{r7, lr}
 8055952: 466f         	mov	r7, sp
 8055954: b084         	sub	sp, #0x10
 8055956: 9002         	str	r0, [sp, #0x8]
;   if ((ticks - 1UL) > SysTick_LOAD_RELOAD_Msk)
 8055958: 9802         	ldr	r0, [sp, #0x8]
 805595a: 3801         	subs	r0, #0x1
 805595c: f1b0 7f80    	cmp.w	r0, #0x1000000
 8055960: d303         	blo	0x805596a <SysTick_Config+0x1a> @ imm = #0x6
 8055962: e7ff         	b	0x8055964 <SysTick_Config+0x14> @ imm = #-0x2
 8055964: 2001         	movs	r0, #0x1
;     return (1UL);                                                   /* Reload value impossible */
 8055966: 9003         	str	r0, [sp, #0xc]
 8055968: e01a         	b	0x80559a0 <SysTick_Config+0x50> @ imm = #0x34
;   SysTick->LOAD  = (uint32_t)(ticks - 1UL);                         /* set reload register */
 805596a: 9802         	ldr	r0, [sp, #0x8]
 805596c: 3801         	subs	r0, #0x1
 805596e: f24e 0114    	movw	r1, #0xe014
 8055972: f2ce 0100    	movt	r1, #0xe000
 8055976: 6008         	str	r0, [r1]
 8055978: f04f 30ff    	mov.w	r0, #0xffffffff
 805597c: 2107         	movs	r1, #0x7
;   NVIC_SetPriority (SysTick_IRQn, (1UL << __NVIC_PRIO_BITS) - 1UL); /* set Priority for Systick Interrupt */
 805597e: 9101         	str	r1, [sp, #0x4]
 8055980: f7ff ff86    	bl	0x8055890 <__NVIC_SetPriority> @ imm = #-0xf4
 8055984: 9901         	ldr	r1, [sp, #0x4]
 8055986: f24e 0218    	movw	r2, #0xe018
 805598a: f2ce 0200    	movt	r2, #0xe000
 805598e: 2000         	movs	r0, #0x0
;   SysTick->VAL   = 0UL;                                             /* Load the SysTick Counter Value */
 8055990: 6010         	str	r0, [r2]
 8055992: f24e 0210    	movw	r2, #0xe010
 8055996: f2ce 0200    	movt	r2, #0xe000
;   SysTick->CTRL  = SysTick_CTRL_CLKSOURCE_Msk |
 805599a: 6011         	str	r1, [r2]
;   return (0UL);                                                     /* Function successful */
 805599c: 9003         	str	r0, [sp, #0xc]
 805599e: e7ff         	b	0x80559a0 <SysTick_Config+0x50> @ imm = #-0x2
; }
 80559a0: 9803         	ldr	r0, [sp, #0xc]
 80559a2: b004         	add	sp, #0x10
 80559a4: bd80         	pop	{r7, pc}

080559a6 <NMI_Handler>:
; DEFAULT_IRQ_HANDLER(NMI_Handler)
 80559a6: e7ff         	b	0x80559a8 <NMI_Handler+0x2> @ imm = #-0x2
 80559a8: e7fe         	b	0x80559a8 <NMI_Handler+0x2> @ imm = #-0x4

080559aa <HardFault_Handler>:
; DEFAULT_IRQ_HANDLER(HardFault_Handler)
 80559aa: e7ff         	b	0x80559ac <HardFault_Handler+0x2> @ imm = #-0x2
 80559ac: e7fe         	b	0x80559ac <HardFault_Handler+0x2> @ imm = #-0x4

080559ae <MemManage_Handler>:
; DEFAULT_IRQ_HANDLER(MemManage_Handler)
 80559ae: e7ff         	b	0x80559b0 <MemManage_Handler+0x2> @ imm = #-0x2
 80559b0: e7fe         	b	0x80559b0 <MemManage_Handler+0x2> @ imm = #-0x4

080559b2 <BusFault_Handler>:
; DEFAULT_IRQ_HANDLER(BusFault_Handler)
 80559b2: e7ff         	b	0x80559b4 <BusFault_Handler+0x2> @ imm = #-0x2
 80559b4: e7fe         	b	0x80559b4 <BusFault_Handler+0x2> @ imm = #-0x4

080559b6 <UsageFault_Handler>:
; DEFAULT_IRQ_HANDLER(UsageFault_Handler)
 80559b6: e7ff         	b	0x80559b8 <UsageFault_Handler+0x2> @ imm = #-0x2
 80559b8: e7fe         	b	0x80559b8 <UsageFault_Handler+0x2> @ imm = #-0x4

080559ba <SecureFault_Handler>:
; DEFAULT_IRQ_HANDLER(SecureFault_Handler)
 80559ba: e7ff         	b	0x80559bc <SecureFault_Handler+0x2> @ imm = #-0x2
 80559bc: e7fe         	b	0x80559bc <SecureFault_Handler+0x2> @ imm = #-0x4

080559be <DebugMon_Handler>:
; DEFAULT_IRQ_HANDLER(DebugMon_Handler)
 80559be: e7ff         	b	0x80559c0 <DebugMon_Handler+0x2> @ imm = #-0x2
 80559c0: e7fe         	b	0x80559c0 <DebugMon_Handler+0x2> @ imm = #-0x4

080559c2 <WWDG_IRQHandler>:
; DEFAULT_IRQ_HANDLER(WWDG_IRQHandler)
 80559c2: e7ff         	b	0x80559c4 <WWDG_IRQHandler+0x2> @ imm = #-0x2
 80559c4: e7fe         	b	0x80559c4 <WWDG_IRQHandler+0x2> @ imm = #-0x4

080559c6 <PVD_PVM_IRQHandler>:
; DEFAULT_IRQ_HANDLER(PVD_PVM_IRQHandler)
 80559c6: e7ff         	b	0x80559c8 <PVD_PVM_IRQHandler+0x2> @ imm = #-0x2
 80559c8: e7fe         	b	0x80559c8 <PVD_PVM_IRQHandler+0x2> @ imm = #-0x4

080559ca <RTC_IRQHandler>:
; DEFAULT_IRQ_HANDLER(RTC_IRQHandler)
 80559ca: e7ff         	b	0x80559cc <RTC_IRQHandler+0x2> @ imm = #-0x2
 80559cc: e7fe         	b	0x80559cc <RTC_IRQHandler+0x2> @ imm = #-0x4

080559ce <RTC_IRQHandler_S>:
; DEFAULT_IRQ_HANDLER(RTC_IRQHandler_S)
 80559ce: e7ff         	b	0x80559d0 <RTC_IRQHandler_S+0x2> @ imm = #-0x2
 80559d0: e7fe         	b	0x80559d0 <RTC_IRQHandler_S+0x2> @ imm = #-0x4

080559d2 <TAMP_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TAMP_IRQHandler)
 80559d2: e7ff         	b	0x80559d4 <TAMP_IRQHandler+0x2> @ imm = #-0x2
 80559d4: e7fe         	b	0x80559d4 <TAMP_IRQHandler+0x2> @ imm = #-0x4

080559d6 <TAMP_IRQHandler_S>:
; DEFAULT_IRQ_HANDLER(TAMP_IRQHandler_S)
 80559d6: e7ff         	b	0x80559d8 <TAMP_IRQHandler_S+0x2> @ imm = #-0x2
 80559d8: e7fe         	b	0x80559d8 <TAMP_IRQHandler_S+0x2> @ imm = #-0x4

080559da <FLASH_IRQHandler>:
; DEFAULT_IRQ_HANDLER(FLASH_IRQHandler)
 80559da: e7ff         	b	0x80559dc <FLASH_IRQHandler+0x2> @ imm = #-0x2
 80559dc: e7fe         	b	0x80559dc <FLASH_IRQHandler+0x2> @ imm = #-0x4

080559de <FLASH_IRQHandler_S>:
; DEFAULT_IRQ_HANDLER(FLASH_IRQHandler_S)
 80559de: e7ff         	b	0x80559e0 <FLASH_IRQHandler_S+0x2> @ imm = #-0x2
 80559e0: e7fe         	b	0x80559e0 <FLASH_IRQHandler_S+0x2> @ imm = #-0x4

080559e2 <SERR_IRQHandler>:
; DEFAULT_IRQ_HANDLER(SERR_IRQHandler)
 80559e2: e7ff         	b	0x80559e4 <SERR_IRQHandler+0x2> @ imm = #-0x2
 80559e4: e7fe         	b	0x80559e4 <SERR_IRQHandler+0x2> @ imm = #-0x4

080559e6 <RCC_IRQHandler>:
; DEFAULT_IRQ_HANDLER(RCC_IRQHandler)
 80559e6: e7ff         	b	0x80559e8 <RCC_IRQHandler+0x2> @ imm = #-0x2
 80559e8: e7fe         	b	0x80559e8 <RCC_IRQHandler+0x2> @ imm = #-0x4

080559ea <RCC_IRQHandler_S>:
; DEFAULT_IRQ_HANDLER(RCC_IRQHandler_S)
 80559ea: e7ff         	b	0x80559ec <RCC_IRQHandler_S+0x2> @ imm = #-0x2
 80559ec: e7fe         	b	0x80559ec <RCC_IRQHandler_S+0x2> @ imm = #-0x4

080559ee <EXTI0_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI0_IRQHandler)
 80559ee: e7ff         	b	0x80559f0 <EXTI0_IRQHandler+0x2> @ imm = #-0x2
 80559f0: e7fe         	b	0x80559f0 <EXTI0_IRQHandler+0x2> @ imm = #-0x4

080559f2 <EXTI1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI1_IRQHandler)
 80559f2: e7ff         	b	0x80559f4 <EXTI1_IRQHandler+0x2> @ imm = #-0x2
 80559f4: e7fe         	b	0x80559f4 <EXTI1_IRQHandler+0x2> @ imm = #-0x4

080559f6 <EXTI2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI2_IRQHandler)
 80559f6: e7ff         	b	0x80559f8 <EXTI2_IRQHandler+0x2> @ imm = #-0x2
 80559f8: e7fe         	b	0x80559f8 <EXTI2_IRQHandler+0x2> @ imm = #-0x4

080559fa <EXTI3_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI3_IRQHandler)
 80559fa: e7ff         	b	0x80559fc <EXTI3_IRQHandler+0x2> @ imm = #-0x2
 80559fc: e7fe         	b	0x80559fc <EXTI3_IRQHandler+0x2> @ imm = #-0x4

080559fe <EXTI4_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI4_IRQHandler)
 80559fe: e7ff         	b	0x8055a00 <EXTI4_IRQHandler+0x2> @ imm = #-0x2
 8055a00: e7fe         	b	0x8055a00 <EXTI4_IRQHandler+0x2> @ imm = #-0x4

08055a02 <EXTI5_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI5_IRQHandler)
 8055a02: e7ff         	b	0x8055a04 <EXTI5_IRQHandler+0x2> @ imm = #-0x2
 8055a04: e7fe         	b	0x8055a04 <EXTI5_IRQHandler+0x2> @ imm = #-0x4

08055a06 <EXTI6_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI6_IRQHandler)
 8055a06: e7ff         	b	0x8055a08 <EXTI6_IRQHandler+0x2> @ imm = #-0x2
 8055a08: e7fe         	b	0x8055a08 <EXTI6_IRQHandler+0x2> @ imm = #-0x4

08055a0a <EXTI7_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI7_IRQHandler)
 8055a0a: e7ff         	b	0x8055a0c <EXTI7_IRQHandler+0x2> @ imm = #-0x2
 8055a0c: e7fe         	b	0x8055a0c <EXTI7_IRQHandler+0x2> @ imm = #-0x4

08055a0e <EXTI8_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI8_IRQHandler)
 8055a0e: e7ff         	b	0x8055a10 <EXTI8_IRQHandler+0x2> @ imm = #-0x2
 8055a10: e7fe         	b	0x8055a10 <EXTI8_IRQHandler+0x2> @ imm = #-0x4

08055a12 <EXTI9_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI9_IRQHandler)
 8055a12: e7ff         	b	0x8055a14 <EXTI9_IRQHandler+0x2> @ imm = #-0x2
 8055a14: e7fe         	b	0x8055a14 <EXTI9_IRQHandler+0x2> @ imm = #-0x4

08055a16 <EXTI10_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI10_IRQHandler)
 8055a16: e7ff         	b	0x8055a18 <EXTI10_IRQHandler+0x2> @ imm = #-0x2
 8055a18: e7fe         	b	0x8055a18 <EXTI10_IRQHandler+0x2> @ imm = #-0x4

08055a1a <EXTI11_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI11_IRQHandler)
 8055a1a: e7ff         	b	0x8055a1c <EXTI11_IRQHandler+0x2> @ imm = #-0x2
 8055a1c: e7fe         	b	0x8055a1c <EXTI11_IRQHandler+0x2> @ imm = #-0x4

08055a1e <EXTI12_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI12_IRQHandler)
 8055a1e: e7ff         	b	0x8055a20 <EXTI12_IRQHandler+0x2> @ imm = #-0x2
 8055a20: e7fe         	b	0x8055a20 <EXTI12_IRQHandler+0x2> @ imm = #-0x4

08055a22 <EXTI13_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI13_IRQHandler)
 8055a22: e7ff         	b	0x8055a24 <EXTI13_IRQHandler+0x2> @ imm = #-0x2
 8055a24: e7fe         	b	0x8055a24 <EXTI13_IRQHandler+0x2> @ imm = #-0x4

08055a26 <EXTI14_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI14_IRQHandler)
 8055a26: e7ff         	b	0x8055a28 <EXTI14_IRQHandler+0x2> @ imm = #-0x2
 8055a28: e7fe         	b	0x8055a28 <EXTI14_IRQHandler+0x2> @ imm = #-0x4

08055a2a <EXTI15_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI15_IRQHandler)
 8055a2a: e7ff         	b	0x8055a2c <EXTI15_IRQHandler+0x2> @ imm = #-0x2
 8055a2c: e7fe         	b	0x8055a2c <EXTI15_IRQHandler+0x2> @ imm = #-0x4

08055a2e <DMAMUX1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMAMUX1_IRQHandler)
 8055a2e: e7ff         	b	0x8055a30 <DMAMUX1_IRQHandler+0x2> @ imm = #-0x2
 8055a30: e7fe         	b	0x8055a30 <DMAMUX1_IRQHandler+0x2> @ imm = #-0x4

08055a32 <DMAMUX1_IRQHandler_S>:
; DEFAULT_IRQ_HANDLER(DMAMUX1_IRQHandler_S)
 8055a32: e7ff         	b	0x8055a34 <DMAMUX1_IRQHandler_S+0x2> @ imm = #-0x2
 8055a34: e7fe         	b	0x8055a34 <DMAMUX1_IRQHandler_S+0x2> @ imm = #-0x4

08055a36 <DMA1_Channel1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA1_Channel1_IRQHandler)
 8055a36: e7ff         	b	0x8055a38 <DMA1_Channel1_IRQHandler+0x2> @ imm = #-0x2
 8055a38: e7fe         	b	0x8055a38 <DMA1_Channel1_IRQHandler+0x2> @ imm = #-0x4

08055a3a <DMA1_Channel2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA1_Channel2_IRQHandler)
 8055a3a: e7ff         	b	0x8055a3c <DMA1_Channel2_IRQHandler+0x2> @ imm = #-0x2
 8055a3c: e7fe         	b	0x8055a3c <DMA1_Channel2_IRQHandler+0x2> @ imm = #-0x4

08055a3e <DMA1_Channel3_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA1_Channel3_IRQHandler)
 8055a3e: e7ff         	b	0x8055a40 <DMA1_Channel3_IRQHandler+0x2> @ imm = #-0x2
 8055a40: e7fe         	b	0x8055a40 <DMA1_Channel3_IRQHandler+0x2> @ imm = #-0x4

08055a42 <DMA1_Channel4_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA1_Channel4_IRQHandler)
 8055a42: e7ff         	b	0x8055a44 <DMA1_Channel4_IRQHandler+0x2> @ imm = #-0x2
 8055a44: e7fe         	b	0x8055a44 <DMA1_Channel4_IRQHandler+0x2> @ imm = #-0x4

08055a46 <DMA1_Channel5_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA1_Channel5_IRQHandler)
 8055a46: e7ff         	b	0x8055a48 <DMA1_Channel5_IRQHandler+0x2> @ imm = #-0x2
 8055a48: e7fe         	b	0x8055a48 <DMA1_Channel5_IRQHandler+0x2> @ imm = #-0x4

08055a4a <DMA1_Channel6_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA1_Channel6_IRQHandler)
 8055a4a: e7ff         	b	0x8055a4c <DMA1_Channel6_IRQHandler+0x2> @ imm = #-0x2
 8055a4c: e7fe         	b	0x8055a4c <DMA1_Channel6_IRQHandler+0x2> @ imm = #-0x4

08055a4e <DMA1_Channel7_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA1_Channel7_IRQHandler)
 8055a4e: e7ff         	b	0x8055a50 <DMA1_Channel7_IRQHandler+0x2> @ imm = #-0x2
 8055a50: e7fe         	b	0x8055a50 <DMA1_Channel7_IRQHandler+0x2> @ imm = #-0x4

08055a52 <DMA1_Channel8_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA1_Channel8_IRQHandler)
 8055a52: e7ff         	b	0x8055a54 <DMA1_Channel8_IRQHandler+0x2> @ imm = #-0x2
 8055a54: e7fe         	b	0x8055a54 <DMA1_Channel8_IRQHandler+0x2> @ imm = #-0x4

08055a56 <ADC1_2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(ADC1_2_IRQHandler)
 8055a56: e7ff         	b	0x8055a58 <ADC1_2_IRQHandler+0x2> @ imm = #-0x2
 8055a58: e7fe         	b	0x8055a58 <ADC1_2_IRQHandler+0x2> @ imm = #-0x4

08055a5a <DAC_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DAC_IRQHandler)
 8055a5a: e7ff         	b	0x8055a5c <DAC_IRQHandler+0x2> @ imm = #-0x2
 8055a5c: e7fe         	b	0x8055a5c <DAC_IRQHandler+0x2> @ imm = #-0x4

08055a5e <FDCAN1_IT0_IRQHandler>:
; DEFAULT_IRQ_HANDLER(FDCAN1_IT0_IRQHandler)
 8055a5e: e7ff         	b	0x8055a60 <FDCAN1_IT0_IRQHandler+0x2> @ imm = #-0x2
 8055a60: e7fe         	b	0x8055a60 <FDCAN1_IT0_IRQHandler+0x2> @ imm = #-0x4

08055a62 <FDCAN1_IT1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(FDCAN1_IT1_IRQHandler)
 8055a62: e7ff         	b	0x8055a64 <FDCAN1_IT1_IRQHandler+0x2> @ imm = #-0x2
 8055a64: e7fe         	b	0x8055a64 <FDCAN1_IT1_IRQHandler+0x2> @ imm = #-0x4

08055a66 <TIM1_BRK_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM1_BRK_IRQHandler)
 8055a66: e7ff         	b	0x8055a68 <TIM1_BRK_IRQHandler+0x2> @ imm = #-0x2
 8055a68: e7fe         	b	0x8055a68 <TIM1_BRK_IRQHandler+0x2> @ imm = #-0x4

08055a6a <TIM1_UP_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM1_UP_IRQHandler)
 8055a6a: e7ff         	b	0x8055a6c <TIM1_UP_IRQHandler+0x2> @ imm = #-0x2
 8055a6c: e7fe         	b	0x8055a6c <TIM1_UP_IRQHandler+0x2> @ imm = #-0x4

08055a6e <TIM1_TRG_COM_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM1_TRG_COM_IRQHandler)
 8055a6e: e7ff         	b	0x8055a70 <TIM1_TRG_COM_IRQHandler+0x2> @ imm = #-0x2
 8055a70: e7fe         	b	0x8055a70 <TIM1_TRG_COM_IRQHandler+0x2> @ imm = #-0x4

08055a72 <TIM1_CC_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM1_CC_IRQHandler)
 8055a72: e7ff         	b	0x8055a74 <TIM1_CC_IRQHandler+0x2> @ imm = #-0x2
 8055a74: e7fe         	b	0x8055a74 <TIM1_CC_IRQHandler+0x2> @ imm = #-0x4

08055a76 <TIM2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM2_IRQHandler)
 8055a76: e7ff         	b	0x8055a78 <TIM2_IRQHandler+0x2> @ imm = #-0x2
 8055a78: e7fe         	b	0x8055a78 <TIM2_IRQHandler+0x2> @ imm = #-0x4

08055a7a <TIM3_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM3_IRQHandler)
 8055a7a: e7ff         	b	0x8055a7c <TIM3_IRQHandler+0x2> @ imm = #-0x2
 8055a7c: e7fe         	b	0x8055a7c <TIM3_IRQHandler+0x2> @ imm = #-0x4

08055a7e <TIM4_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM4_IRQHandler)
 8055a7e: e7ff         	b	0x8055a80 <TIM4_IRQHandler+0x2> @ imm = #-0x2
 8055a80: e7fe         	b	0x8055a80 <TIM4_IRQHandler+0x2> @ imm = #-0x4

08055a82 <TIM5_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM5_IRQHandler)
 8055a82: e7ff         	b	0x8055a84 <TIM5_IRQHandler+0x2> @ imm = #-0x2
 8055a84: e7fe         	b	0x8055a84 <TIM5_IRQHandler+0x2> @ imm = #-0x4

08055a86 <TIM6_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM6_IRQHandler)
 8055a86: e7ff         	b	0x8055a88 <TIM6_IRQHandler+0x2> @ imm = #-0x2
 8055a88: e7fe         	b	0x8055a88 <TIM6_IRQHandler+0x2> @ imm = #-0x4

08055a8a <TIM7_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM7_IRQHandler)
 8055a8a: e7ff         	b	0x8055a8c <TIM7_IRQHandler+0x2> @ imm = #-0x2
 8055a8c: e7fe         	b	0x8055a8c <TIM7_IRQHandler+0x2> @ imm = #-0x4

08055a8e <TIM8_BRK_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM8_BRK_IRQHandler)
 8055a8e: e7ff         	b	0x8055a90 <TIM8_BRK_IRQHandler+0x2> @ imm = #-0x2
 8055a90: e7fe         	b	0x8055a90 <TIM8_BRK_IRQHandler+0x2> @ imm = #-0x4

08055a92 <TIM8_UP_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM8_UP_IRQHandler)
 8055a92: e7ff         	b	0x8055a94 <TIM8_UP_IRQHandler+0x2> @ imm = #-0x2
 8055a94: e7fe         	b	0x8055a94 <TIM8_UP_IRQHandler+0x2> @ imm = #-0x4

08055a96 <TIM8_TRG_COM_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM8_TRG_COM_IRQHandler)
 8055a96: e7ff         	b	0x8055a98 <TIM8_TRG_COM_IRQHandler+0x2> @ imm = #-0x2
 8055a98: e7fe         	b	0x8055a98 <TIM8_TRG_COM_IRQHandler+0x2> @ imm = #-0x4

08055a9a <TIM8_CC_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM8_CC_IRQHandler)
 8055a9a: e7ff         	b	0x8055a9c <TIM8_CC_IRQHandler+0x2> @ imm = #-0x2
 8055a9c: e7fe         	b	0x8055a9c <TIM8_CC_IRQHandler+0x2> @ imm = #-0x4

08055a9e <I2C1_EV_IRQHandler>:
; DEFAULT_IRQ_HANDLER(I2C1_EV_IRQHandler)
 8055a9e: e7ff         	b	0x8055aa0 <I2C1_EV_IRQHandler+0x2> @ imm = #-0x2
 8055aa0: e7fe         	b	0x8055aa0 <I2C1_EV_IRQHandler+0x2> @ imm = #-0x4

08055aa2 <I2C1_ER_IRQHandler>:
; DEFAULT_IRQ_HANDLER(I2C1_ER_IRQHandler)
 8055aa2: e7ff         	b	0x8055aa4 <I2C1_ER_IRQHandler+0x2> @ imm = #-0x2
 8055aa4: e7fe         	b	0x8055aa4 <I2C1_ER_IRQHandler+0x2> @ imm = #-0x4

08055aa6 <I2C2_EV_IRQHandler>:
; DEFAULT_IRQ_HANDLER(I2C2_EV_IRQHandler)
 8055aa6: e7ff         	b	0x8055aa8 <I2C2_EV_IRQHandler+0x2> @ imm = #-0x2
 8055aa8: e7fe         	b	0x8055aa8 <I2C2_EV_IRQHandler+0x2> @ imm = #-0x4

08055aaa <I2C2_ER_IRQHandler>:
; DEFAULT_IRQ_HANDLER(I2C2_ER_IRQHandler)
 8055aaa: e7ff         	b	0x8055aac <I2C2_ER_IRQHandler+0x2> @ imm = #-0x2
 8055aac: e7fe         	b	0x8055aac <I2C2_ER_IRQHandler+0x2> @ imm = #-0x4

08055aae <SPI1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(SPI1_IRQHandler)
 8055aae: e7ff         	b	0x8055ab0 <SPI1_IRQHandler+0x2> @ imm = #-0x2
 8055ab0: e7fe         	b	0x8055ab0 <SPI1_IRQHandler+0x2> @ imm = #-0x4

08055ab2 <SPI2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(SPI2_IRQHandler)
 8055ab2: e7ff         	b	0x8055ab4 <SPI2_IRQHandler+0x2> @ imm = #-0x2
 8055ab4: e7fe         	b	0x8055ab4 <SPI2_IRQHandler+0x2> @ imm = #-0x4

08055ab6 <USART1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(USART1_IRQHandler)
 8055ab6: e7ff         	b	0x8055ab8 <USART1_IRQHandler+0x2> @ imm = #-0x2
 8055ab8: e7fe         	b	0x8055ab8 <USART1_IRQHandler+0x2> @ imm = #-0x4

08055aba <USART2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(USART2_IRQHandler)
 8055aba: e7ff         	b	0x8055abc <USART2_IRQHandler+0x2> @ imm = #-0x2
 8055abc: e7fe         	b	0x8055abc <USART2_IRQHandler+0x2> @ imm = #-0x4

08055abe <USART3_IRQHandler>:
; DEFAULT_IRQ_HANDLER(USART3_IRQHandler)
 8055abe: e7ff         	b	0x8055ac0 <USART3_IRQHandler+0x2> @ imm = #-0x2
 8055ac0: e7fe         	b	0x8055ac0 <USART3_IRQHandler+0x2> @ imm = #-0x4

08055ac2 <UART4_IRQHandler>:
; DEFAULT_IRQ_HANDLER(UART4_IRQHandler)
 8055ac2: e7ff         	b	0x8055ac4 <UART4_IRQHandler+0x2> @ imm = #-0x2
 8055ac4: e7fe         	b	0x8055ac4 <UART4_IRQHandler+0x2> @ imm = #-0x4

08055ac6 <UART5_IRQHandler>:
; DEFAULT_IRQ_HANDLER(UART5_IRQHandler)
 8055ac6: e7ff         	b	0x8055ac8 <UART5_IRQHandler+0x2> @ imm = #-0x2
 8055ac8: e7fe         	b	0x8055ac8 <UART5_IRQHandler+0x2> @ imm = #-0x4

08055aca <LPUART1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(LPUART1_IRQHandler)
 8055aca: e7ff         	b	0x8055acc <LPUART1_IRQHandler+0x2> @ imm = #-0x2
 8055acc: e7fe         	b	0x8055acc <LPUART1_IRQHandler+0x2> @ imm = #-0x4

08055ace <LPTIM1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(LPTIM1_IRQHandler)
 8055ace: e7ff         	b	0x8055ad0 <LPTIM1_IRQHandler+0x2> @ imm = #-0x2
 8055ad0: e7fe         	b	0x8055ad0 <LPTIM1_IRQHandler+0x2> @ imm = #-0x4

08055ad2 <LPTIM2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(LPTIM2_IRQHandler)
 8055ad2: e7ff         	b	0x8055ad4 <LPTIM2_IRQHandler+0x2> @ imm = #-0x2
 8055ad4: e7fe         	b	0x8055ad4 <LPTIM2_IRQHandler+0x2> @ imm = #-0x4

08055ad6 <TIM15_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM15_IRQHandler)
 8055ad6: e7ff         	b	0x8055ad8 <TIM15_IRQHandler+0x2> @ imm = #-0x2
 8055ad8: e7fe         	b	0x8055ad8 <TIM15_IRQHandler+0x2> @ imm = #-0x4

08055ada <TIM16_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM16_IRQHandler)
 8055ada: e7ff         	b	0x8055adc <TIM16_IRQHandler+0x2> @ imm = #-0x2
 8055adc: e7fe         	b	0x8055adc <TIM16_IRQHandler+0x2> @ imm = #-0x4

08055ade <TIM17_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM17_IRQHandler)
 8055ade: e7ff         	b	0x8055ae0 <TIM17_IRQHandler+0x2> @ imm = #-0x2
 8055ae0: e7fe         	b	0x8055ae0 <TIM17_IRQHandler+0x2> @ imm = #-0x4

08055ae2 <COMP_IRQHandler>:
; DEFAULT_IRQ_HANDLER(COMP_IRQHandler)
 8055ae2: e7ff         	b	0x8055ae4 <COMP_IRQHandler+0x2> @ imm = #-0x2
 8055ae4: e7fe         	b	0x8055ae4 <COMP_IRQHandler+0x2> @ imm = #-0x4

08055ae6 <USB_FS_IRQHandler>:
; DEFAULT_IRQ_HANDLER(USB_FS_IRQHandler)
 8055ae6: e7ff         	b	0x8055ae8 <USB_FS_IRQHandler+0x2> @ imm = #-0x2
 8055ae8: e7fe         	b	0x8055ae8 <USB_FS_IRQHandler+0x2> @ imm = #-0x4

08055aea <CRS_IRQHandler>:
; DEFAULT_IRQ_HANDLER(CRS_IRQHandler)
 8055aea: e7ff         	b	0x8055aec <CRS_IRQHandler+0x2> @ imm = #-0x2
 8055aec: e7fe         	b	0x8055aec <CRS_IRQHandler+0x2> @ imm = #-0x4

08055aee <FMC_IRQHandler>:
; DEFAULT_IRQ_HANDLER(FMC_IRQHandler)
 8055aee: e7ff         	b	0x8055af0 <FMC_IRQHandler+0x2> @ imm = #-0x2
 8055af0: e7fe         	b	0x8055af0 <FMC_IRQHandler+0x2> @ imm = #-0x4

08055af2 <OCTOSPI1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(OCTOSPI1_IRQHandler)
 8055af2: e7ff         	b	0x8055af4 <OCTOSPI1_IRQHandler+0x2> @ imm = #-0x2
 8055af4: e7fe         	b	0x8055af4 <OCTOSPI1_IRQHandler+0x2> @ imm = #-0x4

08055af6 <SDMMC1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(SDMMC1_IRQHandler)
 8055af6: e7ff         	b	0x8055af8 <SDMMC1_IRQHandler+0x2> @ imm = #-0x2
 8055af8: e7fe         	b	0x8055af8 <SDMMC1_IRQHandler+0x2> @ imm = #-0x4

08055afa <DMA2_Channel1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA2_Channel1_IRQHandler)
 8055afa: e7ff         	b	0x8055afc <DMA2_Channel1_IRQHandler+0x2> @ imm = #-0x2
 8055afc: e7fe         	b	0x8055afc <DMA2_Channel1_IRQHandler+0x2> @ imm = #-0x4

08055afe <DMA2_Channel2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA2_Channel2_IRQHandler)
 8055afe: e7ff         	b	0x8055b00 <DMA2_Channel2_IRQHandler+0x2> @ imm = #-0x2
 8055b00: e7fe         	b	0x8055b00 <DMA2_Channel2_IRQHandler+0x2> @ imm = #-0x4

08055b02 <DMA2_Channel3_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA2_Channel3_IRQHandler)
 8055b02: e7ff         	b	0x8055b04 <DMA2_Channel3_IRQHandler+0x2> @ imm = #-0x2
 8055b04: e7fe         	b	0x8055b04 <DMA2_Channel3_IRQHandler+0x2> @ imm = #-0x4

08055b06 <DMA2_Channel4_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA2_Channel4_IRQHandler)
 8055b06: e7ff         	b	0x8055b08 <DMA2_Channel4_IRQHandler+0x2> @ imm = #-0x2
 8055b08: e7fe         	b	0x8055b08 <DMA2_Channel4_IRQHandler+0x2> @ imm = #-0x4

08055b0a <DMA2_Channel5_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA2_Channel5_IRQHandler)
 8055b0a: e7ff         	b	0x8055b0c <DMA2_Channel5_IRQHandler+0x2> @ imm = #-0x2
 8055b0c: e7fe         	b	0x8055b0c <DMA2_Channel5_IRQHandler+0x2> @ imm = #-0x4

08055b0e <DMA2_Channel6_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA2_Channel6_IRQHandler)
 8055b0e: e7ff         	b	0x8055b10 <DMA2_Channel6_IRQHandler+0x2> @ imm = #-0x2
 8055b10: e7fe         	b	0x8055b10 <DMA2_Channel6_IRQHandler+0x2> @ imm = #-0x4

08055b12 <DMA2_Channel7_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA2_Channel7_IRQHandler)
 8055b12: e7ff         	b	0x8055b14 <DMA2_Channel7_IRQHandler+0x2> @ imm = #-0x2
 8055b14: e7fe         	b	0x8055b14 <DMA2_Channel7_IRQHandler+0x2> @ imm = #-0x4

08055b16 <DMA2_Channel8_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA2_Channel8_IRQHandler)
 8055b16: e7ff         	b	0x8055b18 <DMA2_Channel8_IRQHandler+0x2> @ imm = #-0x2
 8055b18: e7fe         	b	0x8055b18 <DMA2_Channel8_IRQHandler+0x2> @ imm = #-0x4

08055b1a <I2C3_EV_IRQHandler>:
; DEFAULT_IRQ_HANDLER(I2C3_EV_IRQHandler)
 8055b1a: e7ff         	b	0x8055b1c <I2C3_EV_IRQHandler+0x2> @ imm = #-0x2
 8055b1c: e7fe         	b	0x8055b1c <I2C3_EV_IRQHandler+0x2> @ imm = #-0x4

08055b1e <I2C3_ER_IRQHandler>:
; DEFAULT_IRQ_HANDLER(I2C3_ER_IRQHandler)
 8055b1e: e7ff         	b	0x8055b20 <I2C3_ER_IRQHandler+0x2> @ imm = #-0x2
 8055b20: e7fe         	b	0x8055b20 <I2C3_ER_IRQHandler+0x2> @ imm = #-0x4

08055b22 <SAI1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(SAI1_IRQHandler)
 8055b22: e7ff         	b	0x8055b24 <SAI1_IRQHandler+0x2> @ imm = #-0x2
 8055b24: e7fe         	b	0x8055b24 <SAI1_IRQHandler+0x2> @ imm = #-0x4

08055b26 <SAI2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(SAI2_IRQHandler)
 8055b26: e7ff         	b	0x8055b28 <SAI2_IRQHandler+0x2> @ imm = #-0x2
 8055b28: e7fe         	b	0x8055b28 <SAI2_IRQHandler+0x2> @ imm = #-0x4

08055b2a <TSC_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TSC_IRQHandler)
 8055b2a: e7ff         	b	0x8055b2c <TSC_IRQHandler+0x2> @ imm = #-0x2
 8055b2c: e7fe         	b	0x8055b2c <TSC_IRQHandler+0x2> @ imm = #-0x4

08055b2e <AES_IRQHandler>:
; DEFAULT_IRQ_HANDLER(AES_IRQHandler)
 8055b2e: e7ff         	b	0x8055b30 <AES_IRQHandler+0x2> @ imm = #-0x2
 8055b30: e7fe         	b	0x8055b30 <AES_IRQHandler+0x2> @ imm = #-0x4

08055b32 <RNG_IRQHandler>:
; DEFAULT_IRQ_HANDLER(RNG_IRQHandler)
 8055b32: e7ff         	b	0x8055b34 <RNG_IRQHandler+0x2> @ imm = #-0x2
 8055b34: e7fe         	b	0x8055b34 <RNG_IRQHandler+0x2> @ imm = #-0x4

08055b36 <FPU_IRQHandler>:
; DEFAULT_IRQ_HANDLER(FPU_IRQHandler)
 8055b36: e7ff         	b	0x8055b38 <FPU_IRQHandler+0x2> @ imm = #-0x2
 8055b38: e7fe         	b	0x8055b38 <FPU_IRQHandler+0x2> @ imm = #-0x4

08055b3a <HASH_IRQHandler>:
; DEFAULT_IRQ_HANDLER(HASH_IRQHandler)
 8055b3a: e7ff         	b	0x8055b3c <HASH_IRQHandler+0x2> @ imm = #-0x2
 8055b3c: e7fe         	b	0x8055b3c <HASH_IRQHandler+0x2> @ imm = #-0x4

08055b3e <PKA_IRQHandler>:
; DEFAULT_IRQ_HANDLER(PKA_IRQHandler)
 8055b3e: e7ff         	b	0x8055b40 <PKA_IRQHandler+0x2> @ imm = #-0x2
 8055b40: e7fe         	b	0x8055b40 <PKA_IRQHandler+0x2> @ imm = #-0x4

08055b42 <LPTIM3_IRQHandler>:
; DEFAULT_IRQ_HANDLER(LPTIM3_IRQHandler)
 8055b42: e7ff         	b	0x8055b44 <LPTIM3_IRQHandler+0x2> @ imm = #-0x2
 8055b44: e7fe         	b	0x8055b44 <LPTIM3_IRQHandler+0x2> @ imm = #-0x4

08055b46 <SPI3_IRQHandler>:
; DEFAULT_IRQ_HANDLER(SPI3_IRQHandler)
 8055b46: e7ff         	b	0x8055b48 <SPI3_IRQHandler+0x2> @ imm = #-0x2
 8055b48: e7fe         	b	0x8055b48 <SPI3_IRQHandler+0x2> @ imm = #-0x4

08055b4a <I2C4_ER_IRQHandler>:
; DEFAULT_IRQ_HANDLER(I2C4_ER_IRQHandler)
 8055b4a: e7ff         	b	0x8055b4c <I2C4_ER_IRQHandler+0x2> @ imm = #-0x2
 8055b4c: e7fe         	b	0x8055b4c <I2C4_ER_IRQHandler+0x2> @ imm = #-0x4

08055b4e <I2C4_EV_IRQHandler>:
; DEFAULT_IRQ_HANDLER(I2C4_EV_IRQHandler)
 8055b4e: e7ff         	b	0x8055b50 <I2C4_EV_IRQHandler+0x2> @ imm = #-0x2
 8055b50: e7fe         	b	0x8055b50 <I2C4_EV_IRQHandler+0x2> @ imm = #-0x4

08055b52 <DFSDM1_FLT0_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DFSDM1_FLT0_IRQHandler)
 8055b52: e7ff         	b	0x8055b54 <DFSDM1_FLT0_IRQHandler+0x2> @ imm = #-0x2
 8055b54: e7fe         	b	0x8055b54 <DFSDM1_FLT0_IRQHandler+0x2> @ imm = #-0x4

08055b56 <DFSDM1_FLT1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DFSDM1_FLT1_IRQHandler)
 8055b56: e7ff         	b	0x8055b58 <DFSDM1_FLT1_IRQHandler+0x2> @ imm = #-0x2
 8055b58: e7fe         	b	0x8055b58 <DFSDM1_FLT1_IRQHandler+0x2> @ imm = #-0x4

08055b5a <DFSDM1_FLT2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DFSDM1_FLT2_IRQHandler)
 8055b5a: e7ff         	b	0x8055b5c <DFSDM1_FLT2_IRQHandler+0x2> @ imm = #-0x2
 8055b5c: e7fe         	b	0x8055b5c <DFSDM1_FLT2_IRQHandler+0x2> @ imm = #-0x4

08055b5e <DFSDM1_FLT3_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DFSDM1_FLT3_IRQHandler)
 8055b5e: e7ff         	b	0x8055b60 <DFSDM1_FLT3_IRQHandler+0x2> @ imm = #-0x2
 8055b60: e7fe         	b	0x8055b60 <DFSDM1_FLT3_IRQHandler+0x2> @ imm = #-0x4

08055b62 <UCPD1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(UCPD1_IRQHandler)
 8055b62: e7ff         	b	0x8055b64 <UCPD1_IRQHandler+0x2> @ imm = #-0x2
 8055b64: e7fe         	b	0x8055b64 <UCPD1_IRQHandler+0x2> @ imm = #-0x4

08055b66 <ICACHE_IRQHandler>:
; DEFAULT_IRQ_HANDLER(ICACHE_IRQHandler)
 8055b66: e7ff         	b	0x8055b68 <ICACHE_IRQHandler+0x2> @ imm = #-0x2
 8055b68: e7fe         	b	0x8055b68 <ICACHE_IRQHandler+0x2> @ imm = #-0x4

08055b6a <OTFDEC1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(OTFDEC1_IRQHandler)
 8055b6a: e7ff         	b	0x8055b6c <OTFDEC1_IRQHandler+0x2> @ imm = #-0x2
 8055b6c: e7fe         	b	0x8055b6c <OTFDEC1_IRQHandler+0x2> @ imm = #-0x4

08055b6e <Reset_Handler>:
; void Reset_Handler(void) {
 8055b6e: b580         	push	{r7, lr}
 8055b70: 466f         	mov	r7, sp
 8055b72: b088         	sub	sp, #0x20
 8055b74: f242 30a0    	movw	r0, #0x23a0
 8055b78: f2c2 0000    	movt	r0, #0x2000
 8055b7c: 9005         	str	r0, [sp, #0x14]
;   __ASM volatile("MSR msplim, %0" : : "r"(MainStackPtrLimit));
 8055b7e: 9905         	ldr	r1, [sp, #0x14]
 8055b80: f381 880a    	msr	msplim, r1
 8055b84: f243 31a0    	movw	r1, #0x33a0
 8055b88: f2c2 0100    	movt	r1, #0x2000
 8055b8c: 9106         	str	r1, [sp, #0x18]
;   __ASM volatile("MSR psp, %0" : : "r"(topOfProcStack) :);
 8055b8e: 9906         	ldr	r1, [sp, #0x18]
 8055b90: f381 8809    	msr	psp, r1
 8055b94: 9007         	str	r0, [sp, #0x1c]
;   __ASM volatile("MSR psplim, %0" : : "r"(ProcStackPtrLimit));
 8055b96: 9807         	ldr	r0, [sp, #0x1c]
 8055b98: f380 880b    	msr	psplim, r0
;   SystemInit();      /* CMSIS System Initialization */
 8055b9c: f7ff fb91    	bl	0x80552c2 <SystemInit>  @ imm = #-0x8de
;   r9Init();
 8055ba0: f000 f84e    	bl	0x8055c40 <r9Init>      @ imm = #0x9c
;   for (__copy_table_t const *pTable = &__copy_table_start__;
 8055ba4: f248 4088    	movw	r0, #0x8488
 8055ba8: f6c0 0005    	movt	r0, #0x805
 8055bac: 9004         	str	r0, [sp, #0x10]
 8055bae: e7ff         	b	0x8055bb0 <Reset_Handler+0x42> @ imm = #-0x2
;        pTable < &__copy_table_end__; ++pTable) {
 8055bb0: 9804         	ldr	r0, [sp, #0x10]
 8055bb2: f248 41a0    	movw	r1, #0x84a0
 8055bb6: f6c0 0105    	movt	r1, #0x805
;   for (__copy_table_t const *pTable = &__copy_table_start__;
 8055bba: 4288         	cmp	r0, r1
 8055bbc: d219         	bhs	0x8055bf2 <Reset_Handler+0x84> @ imm = #0x32
 8055bbe: e7ff         	b	0x8055bc0 <Reset_Handler+0x52> @ imm = #-0x2
 8055bc0: 2000         	movs	r0, #0x0
;     for (uint32_t i = 0u; i < pTable->wlen; ++i) {
 8055bc2: 9003         	str	r0, [sp, #0xc]
 8055bc4: e7ff         	b	0x8055bc6 <Reset_Handler+0x58> @ imm = #-0x2
 8055bc6: 9803         	ldr	r0, [sp, #0xc]
 8055bc8: 9904         	ldr	r1, [sp, #0x10]
 8055bca: 6889         	ldr	r1, [r1, #0x8]
 8055bcc: 4288         	cmp	r0, r1
 8055bce: d20c         	bhs	0x8055bea <Reset_Handler+0x7c> @ imm = #0x18
 8055bd0: e7ff         	b	0x8055bd2 <Reset_Handler+0x64> @ imm = #-0x2
;       pTable->dest[i] = pTable->src[i];
 8055bd2: 9904         	ldr	r1, [sp, #0x10]
 8055bd4: 9a03         	ldr	r2, [sp, #0xc]
 8055bd6: 6808         	ldr	r0, [r1]
 8055bd8: 6849         	ldr	r1, [r1, #0x4]
 8055bda: f850 0022    	ldr.w	r0, [r0, r2, lsl #2]
 8055bde: f841 0022    	str.w	r0, [r1, r2, lsl #2]
;     for (uint32_t i = 0u; i < pTable->wlen; ++i) {
 8055be2: 9803         	ldr	r0, [sp, #0xc]
 8055be4: 3001         	adds	r0, #0x1
 8055be6: 9003         	str	r0, [sp, #0xc]
 8055be8: e7ed         	b	0x8055bc6 <Reset_Handler+0x58> @ imm = #-0x26
;        pTable < &__copy_table_end__; ++pTable) {
 8055bea: 9804         	ldr	r0, [sp, #0x10]
 8055bec: 300c         	adds	r0, #0xc
 8055bee: 9004         	str	r0, [sp, #0x10]
;   for (__copy_table_t const *pTable = &__copy_table_start__;
 8055bf0: e7de         	b	0x8055bb0 <Reset_Handler+0x42> @ imm = #-0x44
;   for (__zero_table_t const *pTable = &__zero_table_start__;
 8055bf2: f248 40a0    	movw	r0, #0x84a0
 8055bf6: f6c0 0005    	movt	r0, #0x805
 8055bfa: 9002         	str	r0, [sp, #0x8]
 8055bfc: e7ff         	b	0x8055bfe <Reset_Handler+0x90> @ imm = #-0x2
;        pTable < &__zero_table_end__; ++pTable) {
 8055bfe: 9802         	ldr	r0, [sp, #0x8]
 8055c00: f248 41b0    	movw	r1, #0x84b0
 8055c04: f6c0 0105    	movt	r1, #0x805
;   for (__zero_table_t const *pTable = &__zero_table_start__;
 8055c08: 4288         	cmp	r0, r1
 8055c0a: d217         	bhs	0x8055c3c <Reset_Handler+0xce> @ imm = #0x2e
 8055c0c: e7ff         	b	0x8055c0e <Reset_Handler+0xa0> @ imm = #-0x2
 8055c0e: 2000         	movs	r0, #0x0
;     for (uint32_t i = 0u; i < pTable->wlen; ++i) {
 8055c10: 9001         	str	r0, [sp, #0x4]
 8055c12: e7ff         	b	0x8055c14 <Reset_Handler+0xa6> @ imm = #-0x2
 8055c14: 9801         	ldr	r0, [sp, #0x4]
 8055c16: 9902         	ldr	r1, [sp, #0x8]
 8055c18: 6849         	ldr	r1, [r1, #0x4]
 8055c1a: 4288         	cmp	r0, r1
 8055c1c: d20a         	bhs	0x8055c34 <Reset_Handler+0xc6> @ imm = #0x14
 8055c1e: e7ff         	b	0x8055c20 <Reset_Handler+0xb2> @ imm = #-0x2
;       pTable->dest[i] = 0u;
 8055c20: 9802         	ldr	r0, [sp, #0x8]
 8055c22: 6801         	ldr	r1, [r0]
 8055c24: 9a01         	ldr	r2, [sp, #0x4]
 8055c26: 2000         	movs	r0, #0x0
 8055c28: f841 0022    	str.w	r0, [r1, r2, lsl #2]
;     for (uint32_t i = 0u; i < pTable->wlen; ++i) {
 8055c2c: 9801         	ldr	r0, [sp, #0x4]
 8055c2e: 3001         	adds	r0, #0x1
 8055c30: 9001         	str	r0, [sp, #0x4]
 8055c32: e7ef         	b	0x8055c14 <Reset_Handler+0xa6> @ imm = #-0x22
;        pTable < &__zero_table_end__; ++pTable) {
 8055c34: 9802         	ldr	r0, [sp, #0x8]
 8055c36: 3008         	adds	r0, #0x8
 8055c38: 9002         	str	r0, [sp, #0x8]
;   for (__zero_table_t const *pTable = &__zero_table_start__;
 8055c3a: e7e0         	b	0x8055bfe <Reset_Handler+0x90> @ imm = #-0x40
;   main();
 8055c3c: f000 f825    	bl	0x8055c8a <main>        @ imm = #0x4a

08055c40 <r9Init>:
;   __ASM volatile("mov.w	r9, #1");
 8055c40: f04f 0901    	mov.w	r9, #0x1
; }
 8055c44: 4770         	bx	lr

08055c46 <sum>:
; int sum(int a, int b) { return a + b; }
 8055c46: b082         	sub	sp, #0x8
 8055c48: 9001         	str	r0, [sp, #0x4]
 8055c4a: 9100         	str	r1, [sp]
 8055c4c: 9801         	ldr	r0, [sp, #0x4]
 8055c4e: 9900         	ldr	r1, [sp]
 8055c50: 4408         	add	r0, r1
 8055c52: b002         	add	sp, #0x8
 8055c54: 4770         	bx	lr

08055c56 <testThread>:
; void testThread(void *pvParameters) {
 8055c56: b580         	push	{r7, lr}
 8055c58: 466f         	mov	r7, sp
 8055c5a: b084         	sub	sp, #0x10
 8055c5c: 9003         	str	r0, [sp, #0xc]
;   while (1) {
 8055c5e: e7ff         	b	0x8055c60 <testThread+0xa> @ imm = #-0x2
 8055c60: f640 4000    	movw	r0, #0xc00
 8055c64: f2c4 2002    	movt	r0, #0x4202
 8055c68: 2108         	movs	r1, #0x8
;     HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_3);
 8055c6a: f7ff fdb7    	bl	0x80557dc <HAL_GPIO_TogglePin> @ imm = #-0x492
 8055c6e: 2002         	movs	r0, #0x2
;     int a = 2;
 8055c70: 9002         	str	r0, [sp, #0x8]
 8055c72: 2003         	movs	r0, #0x3
;     int b = 3;
 8055c74: 9001         	str	r0, [sp, #0x4]
;     int c = sum(a, b);
 8055c76: 9802         	ldr	r0, [sp, #0x8]
 8055c78: 9901         	ldr	r1, [sp, #0x4]
 8055c7a: f7ff ffe4    	bl	0x8055c46 <sum>         @ imm = #-0x38
 8055c7e: 9000         	str	r0, [sp]
 8055c80: f44f 70fa    	mov.w	r0, #0x1f4
;     vTaskDelay(500);
 8055c84: f000 fb4e    	bl	0x8056324 <vTaskDelay>  @ imm = #0x69c
;   while (1) {
 8055c88: e7ea         	b	0x8055c60 <testThread+0xa> @ imm = #-0x2c

08055c8a <main>:
; int main() {
 8055c8a: b580         	push	{r7, lr}
 8055c8c: 466f         	mov	r7, sp
 8055c8e: b084         	sub	sp, #0x10
 8055c90: 2000         	movs	r0, #0x0
 8055c92: 9002         	str	r0, [sp, #0x8]
 8055c94: 9003         	str	r0, [sp, #0xc]
;   HAL_Init();
 8055c96: f7ff fab3    	bl	0x8055200 <__unprivileged_flash_start__> @ imm = #-0xa9a
;   MX_GPIO_Init();
 8055c9a: f000 f815    	bl	0x8055cc8 <MX_GPIO_Init> @ imm = #0x2a
 8055c9e: 9b02         	ldr	r3, [sp, #0x8]
;   xTaskCreate(testThread, "testThread", 256, NULL, 1, NULL);
 8055ca0: 4669         	mov	r1, sp
 8055ca2: 604b         	str	r3, [r1, #0x4]
 8055ca4: 2001         	movs	r0, #0x1
 8055ca6: 6008         	str	r0, [r1]
 8055ca8: f645 4057    	movw	r0, #0x5c57
 8055cac: f6c0 0005    	movt	r0, #0x805
 8055cb0: f248 4150    	movw	r1, #0x8450
 8055cb4: f6c0 0105    	movt	r1, #0x805
 8055cb8: f44f 7280    	mov.w	r2, #0x100
 8055cbc: f000 f834    	bl	0x8055d28 <xTaskCreate> @ imm = #0x68
;   vTaskStartScheduler();
 8055cc0: f000 fbba    	bl	0x8056438 <vTaskStartScheduler> @ imm = #0x774
;   for (;;)
 8055cc4: e7ff         	b	0x8055cc6 <main+0x3c>   @ imm = #-0x2
 8055cc6: e7fe         	b	0x8055cc6 <main+0x3c>   @ imm = #-0x4

08055cc8 <MX_GPIO_Init>:
; static void MX_GPIO_Init(void) {
 8055cc8: b580         	push	{r7, lr}
 8055cca: 466f         	mov	r7, sp
 8055ccc: b08a         	sub	sp, #0x28
 8055cce: 2000         	movs	r0, #0x0
;   GPIO_InitTypeDef GPIO_InitStruct = {0};
 8055cd0: 9009         	str	r0, [sp, #0x24]
 8055cd2: 9008         	str	r0, [sp, #0x20]
 8055cd4: 9007         	str	r0, [sp, #0x1c]
 8055cd6: 9006         	str	r0, [sp, #0x18]
 8055cd8: 9005         	str	r0, [sp, #0x14]
;   __HAL_RCC_GPIOD_CLK_ENABLE();
 8055cda: e7ff         	b	0x8055cdc <MX_GPIO_Init+0x14> @ imm = #-0x2
 8055cdc: f241 004c    	movw	r0, #0x104c
 8055ce0: f2c4 0002    	movt	r0, #0x4002
;   __HAL_RCC_GPIOD_CLK_ENABLE();
 8055ce4: 6801         	ldr	r1, [r0]
 8055ce6: f041 0108    	orr	r1, r1, #0x8
 8055cea: 6001         	str	r1, [r0]
 8055cec: 6800         	ldr	r0, [r0]
 8055cee: f000 0008    	and	r0, r0, #0x8
 8055cf2: 9004         	str	r0, [sp, #0x10]
 8055cf4: 9804         	ldr	r0, [sp, #0x10]
 8055cf6: e7ff         	b	0x8055cf8 <MX_GPIO_Init+0x30> @ imm = #-0x2
 8055cf8: f640 4000    	movw	r0, #0xc00
 8055cfc: f2c4 2002    	movt	r0, #0x4202
 8055d00: 9003         	str	r0, [sp, #0xc]
 8055d02: 2108         	movs	r1, #0x8
 8055d04: 9101         	str	r1, [sp, #0x4]
 8055d06: 2201         	movs	r2, #0x1
;   HAL_GPIO_WritePin(LED9_GPIO_Port, LED9_Pin, GPIO_PIN_SET);
 8055d08: 9202         	str	r2, [sp, #0x8]
 8055d0a: f7ff fd51    	bl	0x80557b0 <HAL_GPIO_WritePin> @ imm = #-0x55e
 8055d0e: 9a01         	ldr	r2, [sp, #0x4]
 8055d10: 9902         	ldr	r1, [sp, #0x8]
 8055d12: 9803         	ldr	r0, [sp, #0xc]
;   GPIO_InitStruct.Pin = LED9_Pin;
 8055d14: 9205         	str	r2, [sp, #0x14]
;   GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
 8055d16: 9106         	str	r1, [sp, #0x18]
;   GPIO_InitStruct.Pull = GPIO_PULLUP;
 8055d18: 9107         	str	r1, [sp, #0x1c]
 8055d1a: 2103         	movs	r1, #0x3
;   GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
 8055d1c: 9108         	str	r1, [sp, #0x20]
 8055d1e: a905         	add	r1, sp, #0x14
;   HAL_GPIO_Init(LED9_GPIO_Port, &GPIO_InitStruct);
 8055d20: f7ff fb8e    	bl	0x8055440 <HAL_GPIO_Init> @ imm = #-0x8e4
; }
 8055d24: b00a         	add	sp, #0x28
 8055d26: bd80         	pop	{r7, pc}

08055d28 <xTaskCreate>:
;     {
 8055d28: b5d0         	push	{r4, r6, r7, lr}
 8055d2a: af02         	add	r7, sp, #0x8
 8055d2c: b088         	sub	sp, #0x20
 8055d2e: f8d7 c00c    	ldr.w	r12, [r7, #0xc]
 8055d32: f8d7 c008    	ldr.w	r12, [r7, #0x8]
 8055d36: 9007         	str	r0, [sp, #0x1c]
 8055d38: 9106         	str	r1, [sp, #0x18]
 8055d3a: f827 2c12    	strh	r2, [r7, #-18]
 8055d3e: 9304         	str	r3, [sp, #0x10]
;         pxNewTCB = prvCreateTask( pxTaskCode, pcName, usStackDepth, pvParameters, uxPriority, pxCreatedTask );
 8055d40: 9807         	ldr	r0, [sp, #0x1c]
 8055d42: 9906         	ldr	r1, [sp, #0x18]
 8055d44: f837 2c12    	ldrh	r2, [r7, #-18]
 8055d48: 9b04         	ldr	r3, [sp, #0x10]
 8055d4a: f8d7 c008    	ldr.w	r12, [r7, #0x8]
 8055d4e: 68fc         	ldr	r4, [r7, #0xc]
 8055d50: 46ee         	mov	lr, sp
 8055d52: f8ce 4004    	str.w	r4, [lr, #0x4]
 8055d56: f8ce c000    	str.w	r12, [lr]
 8055d5a: f000 f811    	bl	0x8055d80 <prvCreateTask> @ imm = #0x22
 8055d5e: 9003         	str	r0, [sp, #0xc]
;         if( pxNewTCB != NULL )
 8055d60: 9803         	ldr	r0, [sp, #0xc]
 8055d62: b130         	cbz	r0, 0x8055d72 <xTaskCreate+0x4a> @ imm = #0xc
 8055d64: e7ff         	b	0x8055d66 <xTaskCreate+0x3e> @ imm = #-0x2
;             prvAddNewTaskToReadyList( pxNewTCB );
 8055d66: 9803         	ldr	r0, [sp, #0xc]
 8055d68: f000 f857    	bl	0x8055e1a <prvAddNewTaskToReadyList> @ imm = #0xae
 8055d6c: 2001         	movs	r0, #0x1
;             xReturn = pdPASS;
 8055d6e: 9002         	str	r0, [sp, #0x8]
;         }
 8055d70: e003         	b	0x8055d7a <xTaskCreate+0x52> @ imm = #0x6
 8055d72: f04f 30ff    	mov.w	r0, #0xffffffff
;             xReturn = errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY;
 8055d76: 9002         	str	r0, [sp, #0x8]
 8055d78: e7ff         	b	0x8055d7a <xTaskCreate+0x52> @ imm = #-0x2
;         return xReturn;
 8055d7a: 9802         	ldr	r0, [sp, #0x8]
 8055d7c: b008         	add	sp, #0x20
 8055d7e: bdd0         	pop	{r4, r6, r7, pc}

08055d80 <prvCreateTask>:
;     {
 8055d80: b5f0         	push	{r4, r5, r6, r7, lr}
 8055d82: af03         	add	r7, sp, #0xc
 8055d84: f84d bd04    	str	r11, [sp, #-4]!
 8055d88: b08a         	sub	sp, #0x28
 8055d8a: f8d7 c00c    	ldr.w	r12, [r7, #0xc]
 8055d8e: f8d7 c008    	ldr.w	r12, [r7, #0x8]
 8055d92: 9009         	str	r0, [sp, #0x24]
 8055d94: 9108         	str	r1, [sp, #0x20]
 8055d96: f827 2c1a    	strh	r2, [r7, #-26]
 8055d9a: 9306         	str	r3, [sp, #0x18]
;             pxStack = pvPortMallocStack( ( ( ( size_t ) usStackDepth ) * sizeof( StackType_t ) ) ); /*lint !e9079 All values returned by pvPortMalloc() have at least the alignment required by the MCU's stack and this allocation is the stack. */
 8055d9c: f837 0c1a    	ldrh	r0, [r7, #-26]
 8055da0: 0080         	lsls	r0, r0, #0x2
 8055da2: f001 fa65    	bl	0x8057270 <pvPortMalloc> @ imm = #0x14ca
 8055da6: 9004         	str	r0, [sp, #0x10]
;             if( pxStack != NULL )
 8055da8: 9804         	ldr	r0, [sp, #0x10]
 8055daa: b1a8         	cbz	r0, 0x8055dd8 <prvCreateTask+0x58> @ imm = #0x2a
 8055dac: e7ff         	b	0x8055dae <prvCreateTask+0x2e> @ imm = #-0x2
 8055dae: 205c         	movs	r0, #0x5c
;                 pxNewTCB = ( TCB_t * ) pvPortMalloc( sizeof( TCB_t ) ); /*lint !e9087 !e9079 All values returned by pvPortMalloc() have at least the alignment required by the MCU's stack, and the first member of TCB_t is always a pointer to the task's stack. */
 8055db0: f001 fa5e    	bl	0x8057270 <pvPortMalloc> @ imm = #0x14bc
 8055db4: 9005         	str	r0, [sp, #0x14]
;                 if( pxNewTCB != NULL )
 8055db6: 9805         	ldr	r0, [sp, #0x14]
 8055db8: b148         	cbz	r0, 0x8055dce <prvCreateTask+0x4e> @ imm = #0x12
 8055dba: e7ff         	b	0x8055dbc <prvCreateTask+0x3c> @ imm = #-0x2
;                     ( void ) memset( ( void * ) pxNewTCB, 0x00, sizeof( TCB_t ) );
 8055dbc: 9805         	ldr	r0, [sp, #0x14]
 8055dbe: 2100         	movs	r1, #0x0
 8055dc0: 225c         	movs	r2, #0x5c
 8055dc2: f002 facb    	bl	0x805835c <memset>      @ imm = #0x2596
;                     pxNewTCB->pxStack = pxStack;
 8055dc6: 9804         	ldr	r0, [sp, #0x10]
 8055dc8: 9905         	ldr	r1, [sp, #0x14]
 8055dca: 6308         	str	r0, [r1, #0x30]
;                 }
 8055dcc: e003         	b	0x8055dd6 <prvCreateTask+0x56> @ imm = #0x6
;                     vPortFreeStack( pxStack );
 8055dce: 9804         	ldr	r0, [sp, #0x10]
 8055dd0: f001 fbfc    	bl	0x80575cc <vPortFree>   @ imm = #0x17f8
 8055dd4: e7ff         	b	0x8055dd6 <prvCreateTask+0x56> @ imm = #-0x2
;             }
 8055dd6: e002         	b	0x8055dde <prvCreateTask+0x5e> @ imm = #0x4
 8055dd8: 2000         	movs	r0, #0x0
;                 pxNewTCB = NULL;
 8055dda: 9005         	str	r0, [sp, #0x14]
 8055ddc: e7ff         	b	0x8055dde <prvCreateTask+0x5e> @ imm = #-0x2
;         if( pxNewTCB != NULL )
 8055dde: 9805         	ldr	r0, [sp, #0x14]
 8055de0: b1b0         	cbz	r0, 0x8055e10 <prvCreateTask+0x90> @ imm = #0x2c
 8055de2: e7ff         	b	0x8055de4 <prvCreateTask+0x64> @ imm = #-0x2
;             prvInitialiseNewTask( pxTaskCode, pcName, ( uint32_t ) usStackDepth, pvParameters, uxPriority, pxCreatedTask, pxNewTCB, NULL );
 8055de4: 9809         	ldr	r0, [sp, #0x24]
 8055de6: 9908         	ldr	r1, [sp, #0x20]
 8055de8: f837 2c1a    	ldrh	r2, [r7, #-26]
 8055dec: 9b06         	ldr	r3, [sp, #0x18]
 8055dee: f8d7 c008    	ldr.w	r12, [r7, #0x8]
 8055df2: 68fc         	ldr	r4, [r7, #0xc]
 8055df4: 9d05         	ldr	r5, [sp, #0x14]
 8055df6: 46ee         	mov	lr, sp
 8055df8: 2600         	movs	r6, #0x0
 8055dfa: f8ce 600c    	str.w	r6, [lr, #0xc]
 8055dfe: f8ce 5008    	str.w	r5, [lr, #0x8]
 8055e02: f8ce 4004    	str.w	r4, [lr, #0x4]
 8055e06: f8ce c000    	str.w	r12, [lr]
 8055e0a: f000 fe9a    	bl	0x8056b42 <prvInitialiseNewTask> @ imm = #0xd34
;         }
 8055e0e: e7ff         	b	0x8055e10 <prvCreateTask+0x90> @ imm = #-0x2
;         return pxNewTCB;
 8055e10: 9805         	ldr	r0, [sp, #0x14]
 8055e12: b00a         	add	sp, #0x28
 8055e14: f85d bb04    	ldr	r11, [sp], #4
 8055e18: bdf0         	pop	{r4, r5, r6, r7, pc}

08055e1a <prvAddNewTaskToReadyList>:
;     {
 8055e1a: b580         	push	{r7, lr}
 8055e1c: 466f         	mov	r7, sp
 8055e1e: b082         	sub	sp, #0x8
 8055e20: 9001         	str	r0, [sp, #0x4]
;         taskENTER_CRITICAL();
 8055e22: f002 f831    	bl	0x8057e88 <vPortEnterCritical> @ imm = #0x2062
;             uxCurrentNumberOfTasks++;
 8055e26: f240 1130    	movw	r1, #0x130
 8055e2a: f2c2 0100    	movt	r1, #0x2000
 8055e2e: 6808         	ldr	r0, [r1]
 8055e30: 3001         	adds	r0, #0x1
 8055e32: 6008         	str	r0, [r1]
;             if( pxCurrentTCB == NULL )
 8055e34: f240 1010    	movw	r0, #0x110
 8055e38: f2c2 0000    	movt	r0, #0x2000
 8055e3c: 6800         	ldr	r0, [r0]
 8055e3e: b998         	cbnz	r0, 0x8055e68 <prvAddNewTaskToReadyList+0x4e> @ imm = #0x26
 8055e40: e7ff         	b	0x8055e42 <prvAddNewTaskToReadyList+0x28> @ imm = #-0x2
;                 pxCurrentTCB = pxNewTCB;
 8055e42: 9801         	ldr	r0, [sp, #0x4]
 8055e44: f240 1110    	movw	r1, #0x110
 8055e48: f2c2 0100    	movt	r1, #0x2000
 8055e4c: 6008         	str	r0, [r1]
;                 if( uxCurrentNumberOfTasks == ( UBaseType_t ) 1 )
 8055e4e: f240 1030    	movw	r0, #0x130
 8055e52: f2c2 0000    	movt	r0, #0x2000
 8055e56: 6800         	ldr	r0, [r0]
 8055e58: 2801         	cmp	r0, #0x1
 8055e5a: d103         	bne	0x8055e64 <prvAddNewTaskToReadyList+0x4a> @ imm = #0x6
 8055e5c: e7ff         	b	0x8055e5e <prvAddNewTaskToReadyList+0x44> @ imm = #-0x2
;                     prvInitialiseTaskLists();
 8055e5e: f000 fef7    	bl	0x8056c50 <prvInitialiseTaskLists> @ imm = #0xdee
;                 }
 8055e62: e000         	b	0x8055e66 <prvAddNewTaskToReadyList+0x4c> @ imm = #0x0
 8055e64: e7ff         	b	0x8055e66 <prvAddNewTaskToReadyList+0x4c> @ imm = #-0x2
;             }
 8055e66: e01c         	b	0x8055ea2 <prvAddNewTaskToReadyList+0x88> @ imm = #0x38
;                 if( xSchedulerRunning == pdFALSE )
 8055e68: f240 1034    	movw	r0, #0x134
 8055e6c: f2c2 0000    	movt	r0, #0x2000
 8055e70: 6800         	ldr	r0, [r0]
 8055e72: b9a0         	cbnz	r0, 0x8055e9e <prvAddNewTaskToReadyList+0x84> @ imm = #0x28
 8055e74: e7ff         	b	0x8055e76 <prvAddNewTaskToReadyList+0x5c> @ imm = #-0x2
;                     if( pxCurrentTCB->uxPriority <= pxNewTCB->uxPriority )
 8055e76: f240 1010    	movw	r0, #0x110
 8055e7a: f2c2 0000    	movt	r0, #0x2000
 8055e7e: 6800         	ldr	r0, [r0]
 8055e80: 6ac0         	ldr	r0, [r0, #0x2c]
 8055e82: 9901         	ldr	r1, [sp, #0x4]
 8055e84: 6ac9         	ldr	r1, [r1, #0x2c]
 8055e86: 4288         	cmp	r0, r1
 8055e88: d807         	bhi	0x8055e9a <prvAddNewTaskToReadyList+0x80> @ imm = #0xe
 8055e8a: e7ff         	b	0x8055e8c <prvAddNewTaskToReadyList+0x72> @ imm = #-0x2
;                         pxCurrentTCB = pxNewTCB;
 8055e8c: 9801         	ldr	r0, [sp, #0x4]
 8055e8e: f240 1110    	movw	r1, #0x110
 8055e92: f2c2 0100    	movt	r1, #0x2000
 8055e96: 6008         	str	r0, [r1]
;                     }
 8055e98: e000         	b	0x8055e9c <prvAddNewTaskToReadyList+0x82> @ imm = #0x0
 8055e9a: e7ff         	b	0x8055e9c <prvAddNewTaskToReadyList+0x82> @ imm = #-0x2
;                 }
 8055e9c: e000         	b	0x8055ea0 <prvAddNewTaskToReadyList+0x86> @ imm = #0x0
 8055e9e: e7ff         	b	0x8055ea0 <prvAddNewTaskToReadyList+0x86> @ imm = #-0x2
 8055ea0: e7ff         	b	0x8055ea2 <prvAddNewTaskToReadyList+0x88> @ imm = #-0x2
;             uxTaskNumber++;
 8055ea2: f240 1014    	movw	r0, #0x114
 8055ea6: f2c2 0000    	movt	r0, #0x2000
 8055eaa: 6801         	ldr	r1, [r0]
 8055eac: 3101         	adds	r1, #0x1
 8055eae: 6001         	str	r1, [r0]
;                 pxNewTCB->uxTCBNumber = uxTaskNumber;
 8055eb0: 6800         	ldr	r0, [r0]
 8055eb2: 9901         	ldr	r1, [sp, #0x4]
 8055eb4: 6448         	str	r0, [r1, #0x44]
;             prvAddTaskToReadyList( pxNewTCB );
 8055eb6: e7ff         	b	0x8055eb8 <prvAddNewTaskToReadyList+0x9e> @ imm = #-0x2
 8055eb8: e7ff         	b	0x8055eba <prvAddNewTaskToReadyList+0xa0> @ imm = #-0x2
 8055eba: 9801         	ldr	r0, [sp, #0x4]
 8055ebc: 6ac0         	ldr	r0, [r0, #0x2c]
 8055ebe: f240 21b0    	movw	r1, #0x2b0
 8055ec2: f2c2 0100    	movt	r1, #0x2000
 8055ec6: 6809         	ldr	r1, [r1]
 8055ec8: 4288         	cmp	r0, r1
 8055eca: d908         	bls	0x8055ede <prvAddNewTaskToReadyList+0xc4> @ imm = #0x10
 8055ecc: e7ff         	b	0x8055ece <prvAddNewTaskToReadyList+0xb4> @ imm = #-0x2
 8055ece: 9801         	ldr	r0, [sp, #0x4]
 8055ed0: 6ac0         	ldr	r0, [r0, #0x2c]
 8055ed2: f240 21b0    	movw	r1, #0x2b0
 8055ed6: f2c2 0100    	movt	r1, #0x2000
 8055eda: 6008         	str	r0, [r1]
 8055edc: e7ff         	b	0x8055ede <prvAddNewTaskToReadyList+0xc4> @ imm = #-0x2
 8055ede: e7ff         	b	0x8055ee0 <prvAddNewTaskToReadyList+0xc6> @ imm = #-0x2
 8055ee0: e7ff         	b	0x8055ee2 <prvAddNewTaskToReadyList+0xc8> @ imm = #-0x2
 8055ee2: 9801         	ldr	r0, [sp, #0x4]
 8055ee4: 6ac0         	ldr	r0, [r0, #0x2c]
 8055ee6: eb00 0080    	add.w	r0, r0, r0, lsl #2
 8055eea: f240 1170    	movw	r1, #0x170
 8055eee: f2c2 0100    	movt	r1, #0x2000
 8055ef2: eb01 0080    	add.w	r0, r1, r0, lsl #2
 8055ef6: 6840         	ldr	r0, [r0, #0x4]
 8055ef8: 9000         	str	r0, [sp]
 8055efa: 9800         	ldr	r0, [sp]
 8055efc: 9a01         	ldr	r2, [sp, #0x4]
 8055efe: 6090         	str	r0, [r2, #0x8]
 8055f00: 9800         	ldr	r0, [sp]
 8055f02: 6880         	ldr	r0, [r0, #0x8]
 8055f04: 9a01         	ldr	r2, [sp, #0x4]
 8055f06: 60d0         	str	r0, [r2, #0xc]
 8055f08: 9801         	ldr	r0, [sp, #0x4]
 8055f0a: 3004         	adds	r0, #0x4
 8055f0c: 9a00         	ldr	r2, [sp]
 8055f0e: 6892         	ldr	r2, [r2, #0x8]
 8055f10: 6050         	str	r0, [r2, #0x4]
 8055f12: 9801         	ldr	r0, [sp, #0x4]
 8055f14: 3004         	adds	r0, #0x4
 8055f16: 9a00         	ldr	r2, [sp]
 8055f18: 6090         	str	r0, [r2, #0x8]
 8055f1a: 9a01         	ldr	r2, [sp, #0x4]
 8055f1c: 6ad0         	ldr	r0, [r2, #0x2c]
 8055f1e: eb00 0080    	add.w	r0, r0, r0, lsl #2
 8055f22: eb01 0080    	add.w	r0, r1, r0, lsl #2
 8055f26: 6150         	str	r0, [r2, #0x14]
 8055f28: 9801         	ldr	r0, [sp, #0x4]
 8055f2a: 6ac0         	ldr	r0, [r0, #0x2c]
 8055f2c: eb00 0280    	add.w	r2, r0, r0, lsl #2
 8055f30: f851 0022    	ldr.w	r0, [r1, r2, lsl #2]
 8055f34: 3001         	adds	r0, #0x1
 8055f36: f841 0022    	str.w	r0, [r1, r2, lsl #2]
 8055f3a: e7ff         	b	0x8055f3c <prvAddNewTaskToReadyList+0x122> @ imm = #-0x2
 8055f3c: e7ff         	b	0x8055f3e <prvAddNewTaskToReadyList+0x124> @ imm = #-0x2
;         taskEXIT_CRITICAL();
 8055f3e: f001 ffb3    	bl	0x8057ea8 <vPortExitCritical> @ imm = #0x1f66
;         if( xSchedulerRunning != pdFALSE )
 8055f42: f240 1034    	movw	r0, #0x134
 8055f46: f2c2 0000    	movt	r0, #0x2000
 8055f4a: 6800         	ldr	r0, [r0]
 8055f4c: b190         	cbz	r0, 0x8055f74 <prvAddNewTaskToReadyList+0x15a> @ imm = #0x24
 8055f4e: e7ff         	b	0x8055f50 <prvAddNewTaskToReadyList+0x136> @ imm = #-0x2
;             taskYIELD_ANY_CORE_IF_USING_PREEMPTION( pxNewTCB );
 8055f50: e7ff         	b	0x8055f52 <prvAddNewTaskToReadyList+0x138> @ imm = #-0x2
 8055f52: f240 1010    	movw	r0, #0x110
 8055f56: f2c2 0000    	movt	r0, #0x2000
 8055f5a: 6800         	ldr	r0, [r0]
 8055f5c: 6ac0         	ldr	r0, [r0, #0x2c]
 8055f5e: 9901         	ldr	r1, [sp, #0x4]
 8055f60: 6ac9         	ldr	r1, [r1, #0x2c]
 8055f62: 4288         	cmp	r0, r1
 8055f64: d203         	bhs	0x8055f6e <prvAddNewTaskToReadyList+0x154> @ imm = #0x6
 8055f66: e7ff         	b	0x8055f68 <prvAddNewTaskToReadyList+0x14e> @ imm = #-0x2
 8055f68: f001 ff82    	bl	0x8057e70 <vPortYield>  @ imm = #0x1f04
 8055f6c: e000         	b	0x8055f70 <prvAddNewTaskToReadyList+0x156> @ imm = #0x0
 8055f6e: e7ff         	b	0x8055f70 <prvAddNewTaskToReadyList+0x156> @ imm = #-0x2
;             taskYIELD_ANY_CORE_IF_USING_PREEMPTION( pxNewTCB );
 8055f70: e7ff         	b	0x8055f72 <prvAddNewTaskToReadyList+0x158> @ imm = #-0x2
;         }
 8055f72: e000         	b	0x8055f76 <prvAddNewTaskToReadyList+0x15c> @ imm = #0x0
 8055f74: e7ff         	b	0x8055f76 <prvAddNewTaskToReadyList+0x15c> @ imm = #-0x2
;     }
 8055f76: b002         	add	sp, #0x8
 8055f78: bd80         	pop	{r7, pc}

08055f7a <prvResetNextTaskUnblockTime>:
;     if( listLIST_IS_EMPTY( pxDelayedTaskList ) != pdFALSE )
 8055f7a: f240 1040    	movw	r0, #0x140
 8055f7e: f2c2 0000    	movt	r0, #0x2000
 8055f82: 6800         	ldr	r0, [r0]
 8055f84: 6800         	ldr	r0, [r0]
 8055f86: b940         	cbnz	r0, 0x8055f9a <prvResetNextTaskUnblockTime+0x20> @ imm = #0x10
 8055f88: e7ff         	b	0x8055f8a <prvResetNextTaskUnblockTime+0x10> @ imm = #-0x2
;         xNextTaskUnblockTime = portMAX_DELAY;
 8055f8a: f240 21b8    	movw	r1, #0x2b8
 8055f8e: f2c2 0100    	movt	r1, #0x2000
 8055f92: f04f 30ff    	mov.w	r0, #0xffffffff
 8055f96: 6008         	str	r0, [r1]
;     }
 8055f98: e00c         	b	0x8055fb4 <prvResetNextTaskUnblockTime+0x3a> @ imm = #0x18
;         xNextTaskUnblockTime = listGET_ITEM_VALUE_OF_HEAD_ENTRY( pxDelayedTaskList );
 8055f9a: f240 1040    	movw	r0, #0x140
 8055f9e: f2c2 0000    	movt	r0, #0x2000
 8055fa2: 6800         	ldr	r0, [r0]
 8055fa4: 68c0         	ldr	r0, [r0, #0xc]
 8055fa6: 6800         	ldr	r0, [r0]
 8055fa8: f240 21b8    	movw	r1, #0x2b8
 8055fac: f2c2 0100    	movt	r1, #0x2000
 8055fb0: 6008         	str	r0, [r1]
 8055fb2: e7ff         	b	0x8055fb4 <prvResetNextTaskUnblockTime+0x3a> @ imm = #-0x2
; }
 8055fb4: 4770         	bx	lr

08055fb6 <prvDeleteTCB>:
;     {
 8055fb6: b580         	push	{r7, lr}
 8055fb8: 466f         	mov	r7, sp
 8055fba: b082         	sub	sp, #0x8
 8055fbc: 9001         	str	r0, [sp, #0x4]
;         portCLEAN_UP_TCB( pxTCB );
 8055fbe: 9801         	ldr	r0, [sp, #0x4]
;             vPortFreeStack( pxTCB->pxStack );
 8055fc0: 6b00         	ldr	r0, [r0, #0x30]
 8055fc2: f001 fb03    	bl	0x80575cc <vPortFree>   @ imm = #0x1606
;             vPortFree( pxTCB );
 8055fc6: 9801         	ldr	r0, [sp, #0x4]
 8055fc8: f001 fb00    	bl	0x80575cc <vPortFree>   @ imm = #0x1600
;     }
 8055fcc: b002         	add	sp, #0x8
 8055fce: bd80         	pop	{r7, pc}

08055fd0 <vTaskSuspendAll>:
;         ++uxSchedulerSuspended;
 8055fd0: f240 1138    	movw	r1, #0x138
 8055fd4: f2c2 0100    	movt	r1, #0x2000
 8055fd8: 6808         	ldr	r0, [r1]
 8055fda: 3001         	adds	r0, #0x1
 8055fdc: 6008         	str	r0, [r1]
; }
 8055fde: 4770         	bx	lr

08055fe0 <prvAddCurrentTaskToDelayedList>:
; {
 8055fe0: b580         	push	{r7, lr}
 8055fe2: 466f         	mov	r7, sp
 8055fe4: b086         	sub	sp, #0x18
 8055fe6: 9005         	str	r0, [sp, #0x14]
 8055fe8: 9104         	str	r1, [sp, #0x10]
;     const TickType_t xConstTickCount = xTickCount;
 8055fea: f240 103c    	movw	r0, #0x13c
 8055fee: f2c2 0000    	movt	r0, #0x2000
 8055ff2: 6800         	ldr	r0, [r0]
 8055ff4: 9002         	str	r0, [sp, #0x8]
;     if( uxListRemove( &( pxCurrentTCB->xStateListItem ) ) == ( UBaseType_t ) 0 )
 8055ff6: f240 1010    	movw	r0, #0x110
 8055ffa: f2c2 0000    	movt	r0, #0x2000
 8055ffe: 6800         	ldr	r0, [r0]
 8056000: 3004         	adds	r0, #0x4
 8056002: f001 fc34    	bl	0x805786e <uxListRemove> @ imm = #0x1868
 8056006: b908         	cbnz	r0, 0x805600c <prvAddCurrentTaskToDelayedList+0x2c> @ imm = #0x2
 8056008: e7ff         	b	0x805600a <prvAddCurrentTaskToDelayedList+0x2a> @ imm = #-0x2
;     }
 805600a: e000         	b	0x805600e <prvAddCurrentTaskToDelayedList+0x2e> @ imm = #0x0
 805600c: e7ff         	b	0x805600e <prvAddCurrentTaskToDelayedList+0x2e> @ imm = #-0x2
;         if( ( xTicksToWait == portMAX_DELAY ) && ( xCanBlockIndefinitely != pdFALSE ) )
 805600e: 9805         	ldr	r0, [sp, #0x14]
 8056010: 3001         	adds	r0, #0x1
 8056012: bb28         	cbnz	r0, 0x8056060 <prvAddCurrentTaskToDelayedList+0x80> @ imm = #0x4a
 8056014: e7ff         	b	0x8056016 <prvAddCurrentTaskToDelayedList+0x36> @ imm = #-0x2
 8056016: 9804         	ldr	r0, [sp, #0x10]
 8056018: b310         	cbz	r0, 0x8056060 <prvAddCurrentTaskToDelayedList+0x80> @ imm = #0x44
 805601a: e7ff         	b	0x805601c <prvAddCurrentTaskToDelayedList+0x3c> @ imm = #-0x2
;             listINSERT_END( &xSuspendedTaskList, &( pxCurrentTCB->xStateListItem ) );
 805601c: e7ff         	b	0x805601e <prvAddCurrentTaskToDelayedList+0x3e> @ imm = #-0x2
 805601e: f240 115c    	movw	r1, #0x15c
 8056022: f2c2 0100    	movt	r1, #0x2000
 8056026: 6848         	ldr	r0, [r1, #0x4]
 8056028: 9001         	str	r0, [sp, #0x4]
 805602a: 9a01         	ldr	r2, [sp, #0x4]
 805602c: f240 1010    	movw	r0, #0x110
 8056030: f2c2 0000    	movt	r0, #0x2000
 8056034: 6803         	ldr	r3, [r0]
 8056036: 609a         	str	r2, [r3, #0x8]
 8056038: 9a01         	ldr	r2, [sp, #0x4]
 805603a: 6892         	ldr	r2, [r2, #0x8]
 805603c: 6803         	ldr	r3, [r0]
 805603e: 60da         	str	r2, [r3, #0xc]
 8056040: 6802         	ldr	r2, [r0]
 8056042: 3204         	adds	r2, #0x4
 8056044: 9b01         	ldr	r3, [sp, #0x4]
 8056046: 689b         	ldr	r3, [r3, #0x8]
 8056048: 605a         	str	r2, [r3, #0x4]
 805604a: 6802         	ldr	r2, [r0]
 805604c: 3204         	adds	r2, #0x4
 805604e: 9b01         	ldr	r3, [sp, #0x4]
 8056050: 609a         	str	r2, [r3, #0x8]
 8056052: 6800         	ldr	r0, [r0]
 8056054: 6141         	str	r1, [r0, #0x14]
 8056056: 6808         	ldr	r0, [r1]
 8056058: 3001         	adds	r0, #0x1
 805605a: 6008         	str	r0, [r1]
 805605c: e7ff         	b	0x805605e <prvAddCurrentTaskToDelayedList+0x7e> @ imm = #-0x2
;         }
 805605e: e03d         	b	0x80560dc <prvAddCurrentTaskToDelayedList+0xfc> @ imm = #0x7a
;             xTimeToWake = xConstTickCount + xTicksToWait;
 8056060: 9802         	ldr	r0, [sp, #0x8]
 8056062: 9905         	ldr	r1, [sp, #0x14]
 8056064: 4408         	add	r0, r1
 8056066: 9003         	str	r0, [sp, #0xc]
;             listSET_LIST_ITEM_VALUE( &( pxCurrentTCB->xStateListItem ), xTimeToWake );
 8056068: 9803         	ldr	r0, [sp, #0xc]
 805606a: f240 1110    	movw	r1, #0x110
 805606e: f2c2 0100    	movt	r1, #0x2000
 8056072: 6809         	ldr	r1, [r1]
 8056074: 6048         	str	r0, [r1, #0x4]
;             if( xTimeToWake < xConstTickCount )
 8056076: 9803         	ldr	r0, [sp, #0xc]
 8056078: 9902         	ldr	r1, [sp, #0x8]
 805607a: 4288         	cmp	r0, r1
 805607c: d20e         	bhs	0x805609c <prvAddCurrentTaskToDelayedList+0xbc> @ imm = #0x1c
 805607e: e7ff         	b	0x8056080 <prvAddCurrentTaskToDelayedList+0xa0> @ imm = #-0x2
;                 vListInsert( pxOverflowDelayedTaskList, &( pxCurrentTCB->xStateListItem ) );
 8056080: f240 1044    	movw	r0, #0x144
 8056084: f2c2 0000    	movt	r0, #0x2000
 8056088: 6800         	ldr	r0, [r0]
 805608a: f240 1110    	movw	r1, #0x110
 805608e: f2c2 0100    	movt	r1, #0x2000
 8056092: 6809         	ldr	r1, [r1]
 8056094: 3104         	adds	r1, #0x4
 8056096: f001 fbb5    	bl	0x8057804 <vListInsert> @ imm = #0x176a
;             }
 805609a: e01e         	b	0x80560da <prvAddCurrentTaskToDelayedList+0xfa> @ imm = #0x3c
;                 vListInsert( pxDelayedTaskList, &( pxCurrentTCB->xStateListItem ) );
 805609c: f240 1040    	movw	r0, #0x140
 80560a0: f2c2 0000    	movt	r0, #0x2000
 80560a4: 6800         	ldr	r0, [r0]
 80560a6: f240 1110    	movw	r1, #0x110
 80560aa: f2c2 0100    	movt	r1, #0x2000
 80560ae: 6809         	ldr	r1, [r1]
 80560b0: 3104         	adds	r1, #0x4
 80560b2: f001 fba7    	bl	0x8057804 <vListInsert> @ imm = #0x174e
;                 if( xTimeToWake < xNextTaskUnblockTime )
 80560b6: 9803         	ldr	r0, [sp, #0xc]
 80560b8: f240 21b8    	movw	r1, #0x2b8
 80560bc: f2c2 0100    	movt	r1, #0x2000
 80560c0: 6809         	ldr	r1, [r1]
 80560c2: 4288         	cmp	r0, r1
 80560c4: d207         	bhs	0x80560d6 <prvAddCurrentTaskToDelayedList+0xf6> @ imm = #0xe
 80560c6: e7ff         	b	0x80560c8 <prvAddCurrentTaskToDelayedList+0xe8> @ imm = #-0x2
;                     xNextTaskUnblockTime = xTimeToWake;
 80560c8: 9803         	ldr	r0, [sp, #0xc]
 80560ca: f240 21b8    	movw	r1, #0x2b8
 80560ce: f2c2 0100    	movt	r1, #0x2000
 80560d2: 6008         	str	r0, [r1]
;                 }
 80560d4: e000         	b	0x80560d8 <prvAddCurrentTaskToDelayedList+0xf8> @ imm = #0x0
 80560d6: e7ff         	b	0x80560d8 <prvAddCurrentTaskToDelayedList+0xf8> @ imm = #-0x2
 80560d8: e7ff         	b	0x80560da <prvAddCurrentTaskToDelayedList+0xfa> @ imm = #-0x2
 80560da: e7ff         	b	0x80560dc <prvAddCurrentTaskToDelayedList+0xfc> @ imm = #-0x2
; }
 80560dc: b006         	add	sp, #0x18
 80560de: bd80         	pop	{r7, pc}

080560e0 <xTaskResumeAll>:
; {
 80560e0: b580         	push	{r7, lr}
 80560e2: 466f         	mov	r7, sp
 80560e4: b088         	sub	sp, #0x20
 80560e6: 2000         	movs	r0, #0x0
;     TCB_t * pxTCB = NULL;
 80560e8: 9000         	str	r0, [sp]
 80560ea: 9007         	str	r0, [sp, #0x1c]
;     BaseType_t xAlreadyYielded = pdFALSE;
 80560ec: 9006         	str	r0, [sp, #0x18]
;         taskENTER_CRITICAL();
 80560ee: f001 fecb    	bl	0x8057e88 <vPortEnterCritical> @ imm = #0x1d96
 80560f2: 9800         	ldr	r0, [sp]
;             xCoreID = ( BaseType_t ) portGET_CORE_ID();
 80560f4: 9005         	str	r0, [sp, #0x14]
;             configASSERT( uxSchedulerSuspended != 0U );
 80560f6: f240 1038    	movw	r0, #0x138
 80560fa: f2c2 0000    	movt	r0, #0x2000
 80560fe: 6800         	ldr	r0, [r0]
 8056100: b920         	cbnz	r0, 0x805610c <xTaskResumeAll+0x2c> @ imm = #0x8
 8056102: e7ff         	b	0x8056104 <xTaskResumeAll+0x24> @ imm = #-0x2
 8056104: f002 f863    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0x20c6
 8056108: e7ff         	b	0x805610a <xTaskResumeAll+0x2a> @ imm = #-0x2
 805610a: e7fe         	b	0x805610a <xTaskResumeAll+0x2a> @ imm = #-0x4
;             --uxSchedulerSuspended;
 805610c: f240 1038    	movw	r0, #0x138
 8056110: f2c2 0000    	movt	r0, #0x2000
 8056114: 6801         	ldr	r1, [r0]
 8056116: 3901         	subs	r1, #0x1
 8056118: 6001         	str	r1, [r0]
;             if( uxSchedulerSuspended == ( UBaseType_t ) 0U )
 805611a: 6800         	ldr	r0, [r0]
 805611c: 2800         	cmp	r0, #0x0
 805611e: f040 80fb    	bne.w	0x8056318 <xTaskResumeAll+0x238> @ imm = #0x1f6
 8056122: e7ff         	b	0x8056124 <xTaskResumeAll+0x44> @ imm = #-0x2
;                 if( uxCurrentNumberOfTasks > ( UBaseType_t ) 0U )
 8056124: f240 1030    	movw	r0, #0x130
 8056128: f2c2 0000    	movt	r0, #0x2000
 805612c: 6800         	ldr	r0, [r0]
 805612e: 2800         	cmp	r0, #0x0
 8056130: f000 80f1    	beq.w	0x8056316 <xTaskResumeAll+0x236> @ imm = #0x1e2
 8056134: e7ff         	b	0x8056136 <xTaskResumeAll+0x56> @ imm = #-0x2
;                     while( listLIST_IS_EMPTY( &xPendingReadyList ) == pdFALSE )
 8056136: e7ff         	b	0x8056138 <xTaskResumeAll+0x58> @ imm = #-0x2
 8056138: f240 1048    	movw	r0, #0x148
 805613c: f2c2 0000    	movt	r0, #0x2000
 8056140: 6800         	ldr	r0, [r0]
 8056142: 2800         	cmp	r0, #0x0
 8056144: f000 80a2    	beq.w	0x805628c <xTaskResumeAll+0x1ac> @ imm = #0x144
 8056148: e7ff         	b	0x805614a <xTaskResumeAll+0x6a> @ imm = #-0x2
;                         pxTCB = listGET_OWNER_OF_HEAD_ENTRY( ( &xPendingReadyList ) ); /*lint !e9079 void * is used as this macro is used with timers too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
 805614a: f240 1048    	movw	r0, #0x148
 805614e: f2c2 0000    	movt	r0, #0x2000
 8056152: 68c0         	ldr	r0, [r0, #0xc]
 8056154: 68c0         	ldr	r0, [r0, #0xc]
 8056156: 9007         	str	r0, [sp, #0x1c]
;                         listREMOVE_ITEM( &( pxTCB->xEventListItem ) );
 8056158: e7ff         	b	0x805615a <xTaskResumeAll+0x7a> @ imm = #-0x2
 805615a: 9807         	ldr	r0, [sp, #0x1c]
 805615c: 6a80         	ldr	r0, [r0, #0x28]
 805615e: 9004         	str	r0, [sp, #0x10]
 8056160: 9807         	ldr	r0, [sp, #0x1c]
 8056162: 69c1         	ldr	r1, [r0, #0x1c]
 8056164: 6a00         	ldr	r0, [r0, #0x20]
 8056166: 6088         	str	r0, [r1, #0x8]
 8056168: 9907         	ldr	r1, [sp, #0x1c]
 805616a: 69c8         	ldr	r0, [r1, #0x1c]
 805616c: 6a09         	ldr	r1, [r1, #0x20]
 805616e: 6048         	str	r0, [r1, #0x4]
 8056170: 9804         	ldr	r0, [sp, #0x10]
 8056172: 6840         	ldr	r0, [r0, #0x4]
 8056174: 9907         	ldr	r1, [sp, #0x1c]
 8056176: 3118         	adds	r1, #0x18
 8056178: 4288         	cmp	r0, r1
 805617a: d105         	bne	0x8056188 <xTaskResumeAll+0xa8> @ imm = #0xa
 805617c: e7ff         	b	0x805617e <xTaskResumeAll+0x9e> @ imm = #-0x2
 805617e: 9807         	ldr	r0, [sp, #0x1c]
 8056180: 6a00         	ldr	r0, [r0, #0x20]
 8056182: 9904         	ldr	r1, [sp, #0x10]
 8056184: 6048         	str	r0, [r1, #0x4]
 8056186: e7ff         	b	0x8056188 <xTaskResumeAll+0xa8> @ imm = #-0x2
 8056188: 9907         	ldr	r1, [sp, #0x1c]
 805618a: 2000         	movs	r0, #0x0
 805618c: 6288         	str	r0, [r1, #0x28]
 805618e: 9904         	ldr	r1, [sp, #0x10]
 8056190: 6808         	ldr	r0, [r1]
 8056192: 3801         	subs	r0, #0x1
 8056194: 6008         	str	r0, [r1]
 8056196: e7ff         	b	0x8056198 <xTaskResumeAll+0xb8> @ imm = #-0x2
;                         listREMOVE_ITEM( &( pxTCB->xStateListItem ) );
 8056198: e7ff         	b	0x805619a <xTaskResumeAll+0xba> @ imm = #-0x2
 805619a: 9807         	ldr	r0, [sp, #0x1c]
 805619c: 6940         	ldr	r0, [r0, #0x14]
 805619e: 9003         	str	r0, [sp, #0xc]
 80561a0: 9807         	ldr	r0, [sp, #0x1c]
 80561a2: 6881         	ldr	r1, [r0, #0x8]
 80561a4: 68c0         	ldr	r0, [r0, #0xc]
 80561a6: 6088         	str	r0, [r1, #0x8]
 80561a8: 9907         	ldr	r1, [sp, #0x1c]
 80561aa: 6888         	ldr	r0, [r1, #0x8]
 80561ac: 68c9         	ldr	r1, [r1, #0xc]
 80561ae: 6048         	str	r0, [r1, #0x4]
 80561b0: 9803         	ldr	r0, [sp, #0xc]
 80561b2: 6840         	ldr	r0, [r0, #0x4]
 80561b4: 9907         	ldr	r1, [sp, #0x1c]
 80561b6: 3104         	adds	r1, #0x4
 80561b8: 4288         	cmp	r0, r1
 80561ba: d105         	bne	0x80561c8 <xTaskResumeAll+0xe8> @ imm = #0xa
 80561bc: e7ff         	b	0x80561be <xTaskResumeAll+0xde> @ imm = #-0x2
 80561be: 9807         	ldr	r0, [sp, #0x1c]
 80561c0: 68c0         	ldr	r0, [r0, #0xc]
 80561c2: 9903         	ldr	r1, [sp, #0xc]
 80561c4: 6048         	str	r0, [r1, #0x4]
 80561c6: e7ff         	b	0x80561c8 <xTaskResumeAll+0xe8> @ imm = #-0x2
 80561c8: 9907         	ldr	r1, [sp, #0x1c]
 80561ca: 2000         	movs	r0, #0x0
 80561cc: 6148         	str	r0, [r1, #0x14]
 80561ce: 9903         	ldr	r1, [sp, #0xc]
 80561d0: 6808         	ldr	r0, [r1]
 80561d2: 3801         	subs	r0, #0x1
 80561d4: 6008         	str	r0, [r1]
 80561d6: e7ff         	b	0x80561d8 <xTaskResumeAll+0xf8> @ imm = #-0x2
;                         prvAddTaskToReadyList( pxTCB );
 80561d8: e7ff         	b	0x80561da <xTaskResumeAll+0xfa> @ imm = #-0x2
 80561da: e7ff         	b	0x80561dc <xTaskResumeAll+0xfc> @ imm = #-0x2
 80561dc: 9807         	ldr	r0, [sp, #0x1c]
 80561de: 6ac0         	ldr	r0, [r0, #0x2c]
 80561e0: f240 21b0    	movw	r1, #0x2b0
 80561e4: f2c2 0100    	movt	r1, #0x2000
 80561e8: 6809         	ldr	r1, [r1]
 80561ea: 4288         	cmp	r0, r1
 80561ec: d908         	bls	0x8056200 <xTaskResumeAll+0x120> @ imm = #0x10
 80561ee: e7ff         	b	0x80561f0 <xTaskResumeAll+0x110> @ imm = #-0x2
 80561f0: 9807         	ldr	r0, [sp, #0x1c]
 80561f2: 6ac0         	ldr	r0, [r0, #0x2c]
 80561f4: f240 21b0    	movw	r1, #0x2b0
 80561f8: f2c2 0100    	movt	r1, #0x2000
 80561fc: 6008         	str	r0, [r1]
 80561fe: e7ff         	b	0x8056200 <xTaskResumeAll+0x120> @ imm = #-0x2
 8056200: e7ff         	b	0x8056202 <xTaskResumeAll+0x122> @ imm = #-0x2
 8056202: e7ff         	b	0x8056204 <xTaskResumeAll+0x124> @ imm = #-0x2
 8056204: 9807         	ldr	r0, [sp, #0x1c]
 8056206: 6ac0         	ldr	r0, [r0, #0x2c]
 8056208: eb00 0080    	add.w	r0, r0, r0, lsl #2
 805620c: f240 1170    	movw	r1, #0x170
 8056210: f2c2 0100    	movt	r1, #0x2000
 8056214: eb01 0080    	add.w	r0, r1, r0, lsl #2
 8056218: 6840         	ldr	r0, [r0, #0x4]
 805621a: 9002         	str	r0, [sp, #0x8]
 805621c: 9802         	ldr	r0, [sp, #0x8]
 805621e: 9a07         	ldr	r2, [sp, #0x1c]
 8056220: 6090         	str	r0, [r2, #0x8]
 8056222: 9802         	ldr	r0, [sp, #0x8]
 8056224: 6880         	ldr	r0, [r0, #0x8]
 8056226: 9a07         	ldr	r2, [sp, #0x1c]
 8056228: 60d0         	str	r0, [r2, #0xc]
 805622a: 9807         	ldr	r0, [sp, #0x1c]
 805622c: 3004         	adds	r0, #0x4
 805622e: 9a02         	ldr	r2, [sp, #0x8]
 8056230: 6892         	ldr	r2, [r2, #0x8]
 8056232: 6050         	str	r0, [r2, #0x4]
 8056234: 9807         	ldr	r0, [sp, #0x1c]
 8056236: 3004         	adds	r0, #0x4
 8056238: 9a02         	ldr	r2, [sp, #0x8]
 805623a: 6090         	str	r0, [r2, #0x8]
 805623c: 9a07         	ldr	r2, [sp, #0x1c]
 805623e: 6ad0         	ldr	r0, [r2, #0x2c]
 8056240: eb00 0080    	add.w	r0, r0, r0, lsl #2
 8056244: eb01 0080    	add.w	r0, r1, r0, lsl #2
 8056248: 6150         	str	r0, [r2, #0x14]
 805624a: 9807         	ldr	r0, [sp, #0x1c]
 805624c: 6ac0         	ldr	r0, [r0, #0x2c]
 805624e: eb00 0280    	add.w	r2, r0, r0, lsl #2
 8056252: f851 0022    	ldr.w	r0, [r1, r2, lsl #2]
 8056256: 3001         	adds	r0, #0x1
 8056258: f841 0022    	str.w	r0, [r1, r2, lsl #2]
 805625c: e7ff         	b	0x805625e <xTaskResumeAll+0x17e> @ imm = #-0x2
 805625e: e7ff         	b	0x8056260 <xTaskResumeAll+0x180> @ imm = #-0x2
;                             if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
 8056260: 9807         	ldr	r0, [sp, #0x1c]
 8056262: 6ac0         	ldr	r0, [r0, #0x2c]
 8056264: f240 1110    	movw	r1, #0x110
 8056268: f2c2 0100    	movt	r1, #0x2000
 805626c: 6809         	ldr	r1, [r1]
 805626e: 6ac9         	ldr	r1, [r1, #0x2c]
 8056270: 4288         	cmp	r0, r1
 8056272: d909         	bls	0x8056288 <xTaskResumeAll+0x1a8> @ imm = #0x12
 8056274: e7ff         	b	0x8056276 <xTaskResumeAll+0x196> @ imm = #-0x2
;                                 xYieldPendings[ xCoreID ] = pdTRUE;
 8056276: 9a05         	ldr	r2, [sp, #0x14]
 8056278: f240 21b4    	movw	r1, #0x2b4
 805627c: f2c2 0100    	movt	r1, #0x2000
 8056280: 2001         	movs	r0, #0x1
 8056282: f841 0022    	str.w	r0, [r1, r2, lsl #2]
;                             }
 8056286: e000         	b	0x805628a <xTaskResumeAll+0x1aa> @ imm = #0x0
 8056288: e7ff         	b	0x805628a <xTaskResumeAll+0x1aa> @ imm = #-0x2
;                     while( listLIST_IS_EMPTY( &xPendingReadyList ) == pdFALSE )
 805628a: e755         	b	0x8056138 <xTaskResumeAll+0x58> @ imm = #-0x156
;                     if( pxTCB != NULL )
 805628c: 9807         	ldr	r0, [sp, #0x1c]
 805628e: b118         	cbz	r0, 0x8056298 <xTaskResumeAll+0x1b8> @ imm = #0x6
 8056290: e7ff         	b	0x8056292 <xTaskResumeAll+0x1b2> @ imm = #-0x2
;                         prvResetNextTaskUnblockTime();
 8056292: f7ff fe72    	bl	0x8055f7a <prvResetNextTaskUnblockTime> @ imm = #-0x31c
;                     }
 8056296: e7ff         	b	0x8056298 <xTaskResumeAll+0x1b8> @ imm = #-0x2
;                         TickType_t xPendedCounts = xPendedTicks; /* Non-volatile copy. */
 8056298: f240 20c0    	movw	r0, #0x2c0
 805629c: f2c2 0000    	movt	r0, #0x2000
 80562a0: 6800         	ldr	r0, [r0]
 80562a2: 9001         	str	r0, [sp, #0x4]
;                         if( xPendedCounts > ( TickType_t ) 0U )
 80562a4: 9801         	ldr	r0, [sp, #0x4]
 80562a6: b1f0         	cbz	r0, 0x80562e6 <xTaskResumeAll+0x206> @ imm = #0x3c
 80562a8: e7ff         	b	0x80562aa <xTaskResumeAll+0x1ca> @ imm = #-0x2
;                             do
 80562aa: e7ff         	b	0x80562ac <xTaskResumeAll+0x1cc> @ imm = #-0x2
;                                 if( xTaskIncrementTick() != pdFALSE )
 80562ac: f000 f94a    	bl	0x8056544 <xTaskIncrementTick> @ imm = #0x294
 80562b0: b148         	cbz	r0, 0x80562c6 <xTaskResumeAll+0x1e6> @ imm = #0x12
 80562b2: e7ff         	b	0x80562b4 <xTaskResumeAll+0x1d4> @ imm = #-0x2
;                                     xYieldPendings[ xCoreID ] = pdTRUE;
 80562b4: 9a05         	ldr	r2, [sp, #0x14]
 80562b6: f240 21b4    	movw	r1, #0x2b4
 80562ba: f2c2 0100    	movt	r1, #0x2000
 80562be: 2001         	movs	r0, #0x1
 80562c0: f841 0022    	str.w	r0, [r1, r2, lsl #2]
;                                 }
 80562c4: e000         	b	0x80562c8 <xTaskResumeAll+0x1e8> @ imm = #0x0
 80562c6: e7ff         	b	0x80562c8 <xTaskResumeAll+0x1e8> @ imm = #-0x2
;                                 --xPendedCounts;
 80562c8: 9801         	ldr	r0, [sp, #0x4]
 80562ca: 3801         	subs	r0, #0x1
 80562cc: 9001         	str	r0, [sp, #0x4]
;                             } while( xPendedCounts > ( TickType_t ) 0U );
 80562ce: e7ff         	b	0x80562d0 <xTaskResumeAll+0x1f0> @ imm = #-0x2
 80562d0: 9801         	ldr	r0, [sp, #0x4]
 80562d2: 2800         	cmp	r0, #0x0
 80562d4: d1ea         	bne	0x80562ac <xTaskResumeAll+0x1cc> @ imm = #-0x2c
 80562d6: e7ff         	b	0x80562d8 <xTaskResumeAll+0x1f8> @ imm = #-0x2
;                             xPendedTicks = 0;
 80562d8: f240 21c0    	movw	r1, #0x2c0
 80562dc: f2c2 0100    	movt	r1, #0x2000
 80562e0: 2000         	movs	r0, #0x0
 80562e2: 6008         	str	r0, [r1]
;                         }
 80562e4: e000         	b	0x80562e8 <xTaskResumeAll+0x208> @ imm = #0x0
 80562e6: e7ff         	b	0x80562e8 <xTaskResumeAll+0x208> @ imm = #-0x2
;                     if( xYieldPendings[ xCoreID ] != pdFALSE )
 80562e8: 9905         	ldr	r1, [sp, #0x14]
 80562ea: f240 20b4    	movw	r0, #0x2b4
 80562ee: f2c2 0000    	movt	r0, #0x2000
 80562f2: f850 0021    	ldr.w	r0, [r0, r1, lsl #2]
 80562f6: b160         	cbz	r0, 0x8056312 <xTaskResumeAll+0x232> @ imm = #0x18
 80562f8: e7ff         	b	0x80562fa <xTaskResumeAll+0x21a> @ imm = #-0x2
 80562fa: 2001         	movs	r0, #0x1
;                             xAlreadyYielded = pdTRUE;
 80562fc: 9006         	str	r0, [sp, #0x18]
;                             taskYIELD_TASK_CORE_IF_USING_PREEMPTION( pxCurrentTCB );
 80562fe: e7ff         	b	0x8056300 <xTaskResumeAll+0x220> @ imm = #-0x2
 8056300: f240 1010    	movw	r0, #0x110
 8056304: f2c2 0000    	movt	r0, #0x2000
 8056308: 6800         	ldr	r0, [r0]
 805630a: f001 fdb1    	bl	0x8057e70 <vPortYield>  @ imm = #0x1b62
 805630e: e7ff         	b	0x8056310 <xTaskResumeAll+0x230> @ imm = #-0x2
;                     }
 8056310: e000         	b	0x8056314 <xTaskResumeAll+0x234> @ imm = #0x0
 8056312: e7ff         	b	0x8056314 <xTaskResumeAll+0x234> @ imm = #-0x2
;                 }
 8056314: e7ff         	b	0x8056316 <xTaskResumeAll+0x236> @ imm = #-0x2
;             }
 8056316: e000         	b	0x805631a <xTaskResumeAll+0x23a> @ imm = #0x0
 8056318: e7ff         	b	0x805631a <xTaskResumeAll+0x23a> @ imm = #-0x2
;         taskEXIT_CRITICAL();
 805631a: f001 fdc5    	bl	0x8057ea8 <vPortExitCritical> @ imm = #0x1b8a
;     return xAlreadyYielded;
 805631e: 9806         	ldr	r0, [sp, #0x18]
 8056320: b008         	add	sp, #0x20
 8056322: bd80         	pop	{r7, pc}

08056324 <vTaskDelay>:
;     {
 8056324: b580         	push	{r7, lr}
 8056326: 466f         	mov	r7, sp
 8056328: b082         	sub	sp, #0x8
 805632a: 9001         	str	r0, [sp, #0x4]
 805632c: 2000         	movs	r0, #0x0
;         BaseType_t xAlreadyYielded = pdFALSE;
 805632e: 9000         	str	r0, [sp]
;         if( xTicksToDelay > ( TickType_t ) 0U )
 8056330: 9801         	ldr	r0, [sp, #0x4]
 8056332: b1b0         	cbz	r0, 0x8056362 <vTaskDelay+0x3e> @ imm = #0x2c
 8056334: e7ff         	b	0x8056336 <vTaskDelay+0x12> @ imm = #-0x2
;             vTaskSuspendAll();
 8056336: f7ff fe4b    	bl	0x8055fd0 <vTaskSuspendAll> @ imm = #-0x36a
;                 configASSERT( uxSchedulerSuspended == 1U );
 805633a: f240 1038    	movw	r0, #0x138
 805633e: f2c2 0000    	movt	r0, #0x2000
 8056342: 6800         	ldr	r0, [r0]
 8056344: 2801         	cmp	r0, #0x1
 8056346: d004         	beq	0x8056352 <vTaskDelay+0x2e> @ imm = #0x8
 8056348: e7ff         	b	0x805634a <vTaskDelay+0x26> @ imm = #-0x2
 805634a: f001 ff40    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0x1e80
 805634e: e7ff         	b	0x8056350 <vTaskDelay+0x2c> @ imm = #-0x2
 8056350: e7fe         	b	0x8056350 <vTaskDelay+0x2c> @ imm = #-0x4
;                 prvAddCurrentTaskToDelayedList( xTicksToDelay, pdFALSE );
 8056352: 9801         	ldr	r0, [sp, #0x4]
 8056354: 2100         	movs	r1, #0x0
 8056356: f7ff fe43    	bl	0x8055fe0 <prvAddCurrentTaskToDelayedList> @ imm = #-0x37a
;             xAlreadyYielded = xTaskResumeAll();
 805635a: f7ff fec1    	bl	0x80560e0 <xTaskResumeAll> @ imm = #-0x27e
 805635e: 9000         	str	r0, [sp]
;         }
 8056360: e000         	b	0x8056364 <vTaskDelay+0x40> @ imm = #0x0
 8056362: e7ff         	b	0x8056364 <vTaskDelay+0x40> @ imm = #-0x2
;         if( xAlreadyYielded == pdFALSE )
 8056364: 9800         	ldr	r0, [sp]
 8056366: b918         	cbnz	r0, 0x8056370 <vTaskDelay+0x4c> @ imm = #0x6
 8056368: e7ff         	b	0x805636a <vTaskDelay+0x46> @ imm = #-0x2
;             taskYIELD_WITHIN_API();
 805636a: f001 fd81    	bl	0x8057e70 <vPortYield>  @ imm = #0x1b02
;         }
 805636e: e000         	b	0x8056372 <vTaskDelay+0x4e> @ imm = #0x0
 8056370: e7ff         	b	0x8056372 <vTaskDelay+0x4e> @ imm = #-0x2
;     }
 8056372: b002         	add	sp, #0x8
 8056374: bd80         	pop	{r7, pc}

08056376 <vTaskSwitchContext>:
;     {
 8056376: b580         	push	{r7, lr}
 8056378: 466f         	mov	r7, sp
 805637a: b082         	sub	sp, #0x8
;         if( uxSchedulerSuspended != ( UBaseType_t ) 0U )
 805637c: f240 1038    	movw	r0, #0x138
 8056380: f2c2 0000    	movt	r0, #0x2000
 8056384: 6800         	ldr	r0, [r0]
 8056386: b138         	cbz	r0, 0x8056398 <vTaskSwitchContext+0x22> @ imm = #0xe
 8056388: e7ff         	b	0x805638a <vTaskSwitchContext+0x14> @ imm = #-0x2
;             xYieldPendings[ 0 ] = pdTRUE;
 805638a: f240 21b4    	movw	r1, #0x2b4
 805638e: f2c2 0100    	movt	r1, #0x2000
 8056392: 2001         	movs	r0, #0x1
 8056394: 6008         	str	r0, [r1]
;         }
 8056396: e04d         	b	0x8056434 <vTaskSwitchContext+0xbe> @ imm = #0x9a
;             xYieldPendings[ 0 ] = pdFALSE;
 8056398: f240 21b4    	movw	r1, #0x2b4
 805639c: f2c2 0100    	movt	r1, #0x2000
 80563a0: 2000         	movs	r0, #0x0
 80563a2: 6008         	str	r0, [r1]
;             taskSELECT_HIGHEST_PRIORITY_TASK(); /*lint !e9079 void * is used as this macro is used with timers too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
 80563a4: e7ff         	b	0x80563a6 <vTaskSwitchContext+0x30> @ imm = #-0x2
 80563a6: f240 20b0    	movw	r0, #0x2b0
 80563aa: f2c2 0000    	movt	r0, #0x2000
 80563ae: 6800         	ldr	r0, [r0]
 80563b0: 9001         	str	r0, [sp, #0x4]
 80563b2: e7ff         	b	0x80563b4 <vTaskSwitchContext+0x3e> @ imm = #-0x2
 80563b4: 9801         	ldr	r0, [sp, #0x4]
 80563b6: eb00 0180    	add.w	r1, r0, r0, lsl #2
 80563ba: f240 1070    	movw	r0, #0x170
 80563be: f2c2 0000    	movt	r0, #0x2000
 80563c2: f850 0021    	ldr.w	r0, [r0, r1, lsl #2]
 80563c6: b958         	cbnz	r0, 0x80563e0 <vTaskSwitchContext+0x6a> @ imm = #0x16
 80563c8: e7ff         	b	0x80563ca <vTaskSwitchContext+0x54> @ imm = #-0x2
 80563ca: 9801         	ldr	r0, [sp, #0x4]
 80563cc: b920         	cbnz	r0, 0x80563d8 <vTaskSwitchContext+0x62> @ imm = #0x8
 80563ce: e7ff         	b	0x80563d0 <vTaskSwitchContext+0x5a> @ imm = #-0x2
 80563d0: f001 fefd    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0x1dfa
 80563d4: e7ff         	b	0x80563d6 <vTaskSwitchContext+0x60> @ imm = #-0x2
 80563d6: e7fe         	b	0x80563d6 <vTaskSwitchContext+0x60> @ imm = #-0x4
 80563d8: 9801         	ldr	r0, [sp, #0x4]
 80563da: 3801         	subs	r0, #0x1
 80563dc: 9001         	str	r0, [sp, #0x4]
 80563de: e7e9         	b	0x80563b4 <vTaskSwitchContext+0x3e> @ imm = #-0x2e
 80563e0: e7ff         	b	0x80563e2 <vTaskSwitchContext+0x6c> @ imm = #-0x2
 80563e2: 9801         	ldr	r0, [sp, #0x4]
 80563e4: eb00 0180    	add.w	r1, r0, r0, lsl #2
 80563e8: f240 1070    	movw	r0, #0x170
 80563ec: f2c2 0000    	movt	r0, #0x2000
 80563f0: eb00 0081    	add.w	r0, r0, r1, lsl #2
 80563f4: 9000         	str	r0, [sp]
 80563f6: 9900         	ldr	r1, [sp]
 80563f8: 6848         	ldr	r0, [r1, #0x4]
 80563fa: 6840         	ldr	r0, [r0, #0x4]
 80563fc: 6048         	str	r0, [r1, #0x4]
 80563fe: 9900         	ldr	r1, [sp]
 8056400: 6848         	ldr	r0, [r1, #0x4]
 8056402: 3108         	adds	r1, #0x8
 8056404: 4288         	cmp	r0, r1
 8056406: d104         	bne	0x8056412 <vTaskSwitchContext+0x9c> @ imm = #0x8
 8056408: e7ff         	b	0x805640a <vTaskSwitchContext+0x94> @ imm = #-0x2
 805640a: 9900         	ldr	r1, [sp]
 805640c: 68c8         	ldr	r0, [r1, #0xc]
 805640e: 6048         	str	r0, [r1, #0x4]
 8056410: e7ff         	b	0x8056412 <vTaskSwitchContext+0x9c> @ imm = #-0x2
 8056412: 9800         	ldr	r0, [sp]
 8056414: 6840         	ldr	r0, [r0, #0x4]
 8056416: 68c0         	ldr	r0, [r0, #0xc]
 8056418: f240 1110    	movw	r1, #0x110
 805641c: f2c2 0100    	movt	r1, #0x2000
 8056420: 6008         	str	r0, [r1]
 8056422: e7ff         	b	0x8056424 <vTaskSwitchContext+0xae> @ imm = #-0x2
 8056424: 9801         	ldr	r0, [sp, #0x4]
 8056426: f240 21b0    	movw	r1, #0x2b0
 805642a: f2c2 0100    	movt	r1, #0x2000
 805642e: 6008         	str	r0, [r1]
 8056430: e7ff         	b	0x8056432 <vTaskSwitchContext+0xbc> @ imm = #-0x2
 8056432: e7ff         	b	0x8056434 <vTaskSwitchContext+0xbe> @ imm = #-0x2
;     }
 8056434: b002         	add	sp, #0x8
 8056436: bd80         	pop	{r7, pc}

08056438 <vTaskStartScheduler>:
; {
 8056438: b580         	push	{r7, lr}
 805643a: 466f         	mov	r7, sp
 805643c: b082         	sub	sp, #0x8
;     xReturn = prvCreateIdleTasks();
 805643e: f000 f836    	bl	0x80564ae <prvCreateIdleTasks> @ imm = #0x6c
 8056442: 9001         	str	r0, [sp, #0x4]
;         if( xReturn == pdPASS )
 8056444: 9801         	ldr	r0, [sp, #0x4]
 8056446: 2801         	cmp	r0, #0x1
 8056448: d104         	bne	0x8056454 <vTaskStartScheduler+0x1c> @ imm = #0x8
 805644a: e7ff         	b	0x805644c <vTaskStartScheduler+0x14> @ imm = #-0x2
;             xReturn = xTimerCreateTimerTask();
 805644c: f000 fc8a    	bl	0x8056d64 <xTimerCreateTimerTask> @ imm = #0x914
 8056450: 9001         	str	r0, [sp, #0x4]
;         }
 8056452: e000         	b	0x8056456 <vTaskStartScheduler+0x1e> @ imm = #0x0
 8056454: e7ff         	b	0x8056456 <vTaskStartScheduler+0x1e> @ imm = #-0x2
;     if( xReturn == pdPASS )
 8056456: 9801         	ldr	r0, [sp, #0x4]
 8056458: 2801         	cmp	r0, #0x1
 805645a: d118         	bne	0x805648e <vTaskStartScheduler+0x56> @ imm = #0x30
 805645c: e7ff         	b	0x805645e <vTaskStartScheduler+0x26> @ imm = #-0x2
;         portDISABLE_INTERRUPTS();
 805645e: f001 feb6    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0x1d6c
;         xNextTaskUnblockTime = portMAX_DELAY;
 8056462: f240 21b8    	movw	r1, #0x2b8
 8056466: f2c2 0100    	movt	r1, #0x2000
 805646a: f04f 30ff    	mov.w	r0, #0xffffffff
 805646e: 6008         	str	r0, [r1]
;         xSchedulerRunning = pdTRUE;
 8056470: f240 1134    	movw	r1, #0x134
 8056474: f2c2 0100    	movt	r1, #0x2000
 8056478: 2001         	movs	r0, #0x1
 805647a: 6008         	str	r0, [r1]
;         xTickCount = ( TickType_t ) configINITIAL_TICK_COUNT;
 805647c: f240 113c    	movw	r1, #0x13c
 8056480: f2c2 0100    	movt	r1, #0x2000
 8056484: 2000         	movs	r0, #0x0
 8056486: 6008         	str	r0, [r1]
;         xPortStartScheduler();
 8056488: f001 fdfb    	bl	0x8058082 <xPortStartScheduler> @ imm = #0x1bf6
;     }
 805648c: e008         	b	0x80564a0 <vTaskStartScheduler+0x68> @ imm = #0x10
;         configASSERT( xReturn != errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY );
 805648e: 9801         	ldr	r0, [sp, #0x4]
 8056490: 3001         	adds	r0, #0x1
 8056492: b920         	cbnz	r0, 0x805649e <vTaskStartScheduler+0x66> @ imm = #0x8
 8056494: e7ff         	b	0x8056496 <vTaskStartScheduler+0x5e> @ imm = #-0x2
 8056496: f001 fe9a    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0x1d34
 805649a: e7ff         	b	0x805649c <vTaskStartScheduler+0x64> @ imm = #-0x2
 805649c: e7fe         	b	0x805649c <vTaskStartScheduler+0x64> @ imm = #-0x4
 805649e: e7ff         	b	0x80564a0 <vTaskStartScheduler+0x68> @ imm = #-0x2
;     ( void ) uxTopUsedPriority;
 80564a0: f248 405c    	movw	r0, #0x845c
 80564a4: f6c0 0005    	movt	r0, #0x805
 80564a8: 6800         	ldr	r0, [r0]
; }
 80564aa: b002         	add	sp, #0x8
 80564ac: bd80         	pop	{r7, pc}

080564ae <prvCreateIdleTasks>:
; {
 80564ae: b580         	push	{r7, lr}
 80564b0: 466f         	mov	r7, sp
 80564b2: b08a         	sub	sp, #0x28
 80564b4: 2001         	movs	r0, #0x1
;     BaseType_t xReturn = pdPASS;
 80564b6: 9009         	str	r0, [sp, #0x24]
 80564b8: 2000         	movs	r0, #0x0
;     TaskFunction_t pxIdleTaskFunction = NULL;
 80564ba: 9003         	str	r0, [sp, #0xc]
;     for( xIdleTaskNameIndex = ( BaseType_t ) 0; xIdleTaskNameIndex < ( BaseType_t ) configMAX_TASK_NAME_LEN; xIdleTaskNameIndex++ )
 80564bc: 9002         	str	r0, [sp, #0x8]
 80564be: e7ff         	b	0x80564c0 <prvCreateIdleTasks+0x12> @ imm = #-0x2
 80564c0: 9802         	ldr	r0, [sp, #0x8]
 80564c2: 280f         	cmp	r0, #0xf
 80564c4: dc13         	bgt	0x80564ee <prvCreateIdleTasks+0x40> @ imm = #0x26
 80564c6: e7ff         	b	0x80564c8 <prvCreateIdleTasks+0x1a> @ imm = #-0x2
;         cIdleName[ xIdleTaskNameIndex ] = configIDLE_TASK_NAME[ xIdleTaskNameIndex ];
 80564c8: 9a02         	ldr	r2, [sp, #0x8]
 80564ca: f248 4060    	movw	r0, #0x8460
 80564ce: f6c0 0005    	movt	r0, #0x805
 80564d2: 5c81         	ldrb	r1, [r0, r2]
 80564d4: a804         	add	r0, sp, #0x10
 80564d6: 5481         	strb	r1, [r0, r2]
;         if( cIdleName[ xIdleTaskNameIndex ] == ( char ) 0x00 )
 80564d8: 9902         	ldr	r1, [sp, #0x8]
 80564da: 5c40         	ldrb	r0, [r0, r1]
 80564dc: b908         	cbnz	r0, 0x80564e2 <prvCreateIdleTasks+0x34> @ imm = #0x2
 80564de: e7ff         	b	0x80564e0 <prvCreateIdleTasks+0x32> @ imm = #-0x2
;             break;
 80564e0: e005         	b	0x80564ee <prvCreateIdleTasks+0x40> @ imm = #0xa
 80564e2: e7ff         	b	0x80564e4 <prvCreateIdleTasks+0x36> @ imm = #-0x2
;     }
 80564e4: e7ff         	b	0x80564e6 <prvCreateIdleTasks+0x38> @ imm = #-0x2
;     for( xIdleTaskNameIndex = ( BaseType_t ) 0; xIdleTaskNameIndex < ( BaseType_t ) configMAX_TASK_NAME_LEN; xIdleTaskNameIndex++ )
 80564e6: 9802         	ldr	r0, [sp, #0x8]
 80564e8: 3001         	adds	r0, #0x1
 80564ea: 9002         	str	r0, [sp, #0x8]
 80564ec: e7e8         	b	0x80564c0 <prvCreateIdleTasks+0x12> @ imm = #-0x30
 80564ee: 2000         	movs	r0, #0x0
;     for( xCoreID = ( BaseType_t ) 0; xCoreID < ( BaseType_t ) configNUMBER_OF_CORES; xCoreID++ )
 80564f0: 9008         	str	r0, [sp, #0x20]
 80564f2: e7ff         	b	0x80564f4 <prvCreateIdleTasks+0x46> @ imm = #-0x2
 80564f4: 9808         	ldr	r0, [sp, #0x20]
 80564f6: 2800         	cmp	r0, #0x0
 80564f8: dc21         	bgt	0x805653e <prvCreateIdleTasks+0x90> @ imm = #0x42
 80564fa: e7ff         	b	0x80564fc <prvCreateIdleTasks+0x4e> @ imm = #-0x2
;             pxIdleTaskFunction = prvIdleTask;
 80564fc: f646 40e1    	movw	r0, #0x6ce1
 8056500: f6c0 0005    	movt	r0, #0x805
 8056504: 9003         	str	r0, [sp, #0xc]
;             xReturn = xTaskCreate( pxIdleTaskFunction,
 8056506: 9803         	ldr	r0, [sp, #0xc]
;                                    &xIdleTaskHandles[ xCoreID ] ); /*lint !e961 MISRA exception, justified as it is not a redundant explicit cast to all supported compilers. */
 8056508: 9a08         	ldr	r2, [sp, #0x20]
 805650a: f240 21bc    	movw	r1, #0x2bc
 805650e: f2c2 0100    	movt	r1, #0x2000
 8056512: eb01 0282    	add.w	r2, r1, r2, lsl #2
;             xReturn = xTaskCreate( pxIdleTaskFunction,
 8056516: 4669         	mov	r1, sp
 8056518: 604a         	str	r2, [r1, #0x4]
 805651a: 2300         	movs	r3, #0x0
 805651c: 600b         	str	r3, [r1]
 805651e: a904         	add	r1, sp, #0x10
 8056520: f44f 6280    	mov.w	r2, #0x400
 8056524: f7ff fc00    	bl	0x8055d28 <xTaskCreate> @ imm = #-0x800
 8056528: 9009         	str	r0, [sp, #0x24]
;         if( xReturn == pdFAIL )
 805652a: 9809         	ldr	r0, [sp, #0x24]
 805652c: b908         	cbnz	r0, 0x8056532 <prvCreateIdleTasks+0x84> @ imm = #0x2
 805652e: e7ff         	b	0x8056530 <prvCreateIdleTasks+0x82> @ imm = #-0x2
;             break;
 8056530: e005         	b	0x805653e <prvCreateIdleTasks+0x90> @ imm = #0xa
 8056532: e7ff         	b	0x8056534 <prvCreateIdleTasks+0x86> @ imm = #-0x2
;     }
 8056534: e7ff         	b	0x8056536 <prvCreateIdleTasks+0x88> @ imm = #-0x2
;     for( xCoreID = ( BaseType_t ) 0; xCoreID < ( BaseType_t ) configNUMBER_OF_CORES; xCoreID++ )
 8056536: 9808         	ldr	r0, [sp, #0x20]
 8056538: 3001         	adds	r0, #0x1
 805653a: 9008         	str	r0, [sp, #0x20]
 805653c: e7da         	b	0x80564f4 <prvCreateIdleTasks+0x46> @ imm = #-0x4c
;     return xReturn;
 805653e: 9809         	ldr	r0, [sp, #0x24]
 8056540: b00a         	add	sp, #0x28
 8056542: bd80         	pop	{r7, pc}

08056544 <xTaskIncrementTick>:
; {
 8056544: b580         	push	{r7, lr}
 8056546: 466f         	mov	r7, sp
 8056548: b088         	sub	sp, #0x20
 805654a: 2000         	movs	r0, #0x0
;     BaseType_t xSwitchRequired = pdFALSE;
 805654c: 9005         	str	r0, [sp, #0x14]
;     if( uxSchedulerSuspended == ( UBaseType_t ) 0U )
 805654e: f240 1038    	movw	r0, #0x138
 8056552: f2c2 0000    	movt	r0, #0x2000
 8056556: 6800         	ldr	r0, [r0]
 8056558: 2800         	cmp	r0, #0x0
 805655a: f040 8124    	bne.w	0x80567a6 <xTaskIncrementTick+0x262> @ imm = #0x248
 805655e: e7ff         	b	0x8056560 <xTaskIncrementTick+0x1c> @ imm = #-0x2
;         const TickType_t xConstTickCount = xTickCount + ( TickType_t ) 1;
 8056560: f240 113c    	movw	r1, #0x13c
 8056564: f2c2 0100    	movt	r1, #0x2000
 8056568: 6808         	ldr	r0, [r1]
 805656a: 3001         	adds	r0, #0x1
 805656c: 9004         	str	r0, [sp, #0x10]
;         xTickCount = xConstTickCount;
 805656e: 9804         	ldr	r0, [sp, #0x10]
 8056570: 6008         	str	r0, [r1]
;         if( xConstTickCount == ( TickType_t ) 0U ) /*lint !e774 'if' does not always evaluate to false as it is looking for an overflow. */
 8056572: 9804         	ldr	r0, [sp, #0x10]
 8056574: bb30         	cbnz	r0, 0x80565c4 <xTaskIncrementTick+0x80> @ imm = #0x4c
 8056576: e7ff         	b	0x8056578 <xTaskIncrementTick+0x34> @ imm = #-0x2
;             taskSWITCH_DELAYED_LISTS();
 8056578: e7ff         	b	0x805657a <xTaskIncrementTick+0x36> @ imm = #-0x2
 805657a: f240 1040    	movw	r0, #0x140
 805657e: f2c2 0000    	movt	r0, #0x2000
 8056582: 6800         	ldr	r0, [r0]
 8056584: 6800         	ldr	r0, [r0]
 8056586: b120         	cbz	r0, 0x8056592 <xTaskIncrementTick+0x4e> @ imm = #0x8
 8056588: e7ff         	b	0x805658a <xTaskIncrementTick+0x46> @ imm = #-0x2
 805658a: f001 fe20    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0x1c40
 805658e: e7ff         	b	0x8056590 <xTaskIncrementTick+0x4c> @ imm = #-0x2
 8056590: e7fe         	b	0x8056590 <xTaskIncrementTick+0x4c> @ imm = #-0x4
 8056592: f240 1240    	movw	r2, #0x140
 8056596: f2c2 0200    	movt	r2, #0x2000
 805659a: 6810         	ldr	r0, [r2]
 805659c: 9003         	str	r0, [sp, #0xc]
 805659e: f240 1144    	movw	r1, #0x144
 80565a2: f2c2 0100    	movt	r1, #0x2000
 80565a6: 6808         	ldr	r0, [r1]
 80565a8: 6010         	str	r0, [r2]
 80565aa: 9803         	ldr	r0, [sp, #0xc]
 80565ac: 6008         	str	r0, [r1]
 80565ae: f240 21c4    	movw	r1, #0x2c4
 80565b2: f2c2 0100    	movt	r1, #0x2000
 80565b6: 6808         	ldr	r0, [r1]
 80565b8: 3001         	adds	r0, #0x1
 80565ba: 6008         	str	r0, [r1]
 80565bc: f7ff fcdd    	bl	0x8055f7a <prvResetNextTaskUnblockTime> @ imm = #-0x646
 80565c0: e7ff         	b	0x80565c2 <xTaskIncrementTick+0x7e> @ imm = #-0x2
;         }
 80565c2: e000         	b	0x80565c6 <xTaskIncrementTick+0x82> @ imm = #0x0
 80565c4: e7ff         	b	0x80565c6 <xTaskIncrementTick+0x82> @ imm = #-0x2
;         if( xConstTickCount >= xNextTaskUnblockTime )
 80565c6: 9804         	ldr	r0, [sp, #0x10]
 80565c8: f240 21b8    	movw	r1, #0x2b8
 80565cc: f2c2 0100    	movt	r1, #0x2000
 80565d0: 6809         	ldr	r1, [r1]
 80565d2: 4288         	cmp	r0, r1
 80565d4: f0c0 80c6    	blo.w	0x8056764 <xTaskIncrementTick+0x220> @ imm = #0x18c
 80565d8: e7ff         	b	0x80565da <xTaskIncrementTick+0x96> @ imm = #-0x2
;             for( ; ; )
 80565da: e7ff         	b	0x80565dc <xTaskIncrementTick+0x98> @ imm = #-0x2
;                 if( listLIST_IS_EMPTY( pxDelayedTaskList ) != pdFALSE )
 80565dc: f240 1040    	movw	r0, #0x140
 80565e0: f2c2 0000    	movt	r0, #0x2000
 80565e4: 6800         	ldr	r0, [r0]
 80565e6: 6800         	ldr	r0, [r0]
 80565e8: b940         	cbnz	r0, 0x80565fc <xTaskIncrementTick+0xb8> @ imm = #0x10
 80565ea: e7ff         	b	0x80565ec <xTaskIncrementTick+0xa8> @ imm = #-0x2
;                     xNextTaskUnblockTime = portMAX_DELAY; /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
 80565ec: f240 21b8    	movw	r1, #0x2b8
 80565f0: f2c2 0100    	movt	r1, #0x2000
 80565f4: f04f 30ff    	mov.w	r0, #0xffffffff
 80565f8: 6008         	str	r0, [r1]
;                     break;
 80565fa: e0b2         	b	0x8056762 <xTaskIncrementTick+0x21e> @ imm = #0x164
;                     pxTCB = listGET_OWNER_OF_HEAD_ENTRY( pxDelayedTaskList ); /*lint !e9079 void * is used as this macro is used with timers and co-routines too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
 80565fc: f240 1040    	movw	r0, #0x140
 8056600: f2c2 0000    	movt	r0, #0x2000
 8056604: 6800         	ldr	r0, [r0]
 8056606: 68c0         	ldr	r0, [r0, #0xc]
 8056608: 68c0         	ldr	r0, [r0, #0xc]
 805660a: 9007         	str	r0, [sp, #0x1c]
;                     xItemValue = listGET_LIST_ITEM_VALUE( &( pxTCB->xStateListItem ) );
 805660c: 9807         	ldr	r0, [sp, #0x1c]
 805660e: 6840         	ldr	r0, [r0, #0x4]
 8056610: 9006         	str	r0, [sp, #0x18]
;                     if( xConstTickCount < xItemValue )
 8056612: 9804         	ldr	r0, [sp, #0x10]
 8056614: 9906         	ldr	r1, [sp, #0x18]
 8056616: 4288         	cmp	r0, r1
 8056618: d207         	bhs	0x805662a <xTaskIncrementTick+0xe6> @ imm = #0xe
 805661a: e7ff         	b	0x805661c <xTaskIncrementTick+0xd8> @ imm = #-0x2
;                         xNextTaskUnblockTime = xItemValue;
 805661c: 9806         	ldr	r0, [sp, #0x18]
 805661e: f240 21b8    	movw	r1, #0x2b8
 8056622: f2c2 0100    	movt	r1, #0x2000
 8056626: 6008         	str	r0, [r1]
;                         break; /*lint !e9011 Code structure here is deemed easier to understand with multiple breaks. */
 8056628: e09b         	b	0x8056762 <xTaskIncrementTick+0x21e> @ imm = #0x136
 805662a: e7ff         	b	0x805662c <xTaskIncrementTick+0xe8> @ imm = #-0x2
;                     listREMOVE_ITEM( &( pxTCB->xStateListItem ) );
 805662c: e7ff         	b	0x805662e <xTaskIncrementTick+0xea> @ imm = #-0x2
 805662e: 9807         	ldr	r0, [sp, #0x1c]
 8056630: 6940         	ldr	r0, [r0, #0x14]
 8056632: 9002         	str	r0, [sp, #0x8]
 8056634: 9807         	ldr	r0, [sp, #0x1c]
 8056636: 6881         	ldr	r1, [r0, #0x8]
 8056638: 68c0         	ldr	r0, [r0, #0xc]
 805663a: 6088         	str	r0, [r1, #0x8]
 805663c: 9907         	ldr	r1, [sp, #0x1c]
 805663e: 6888         	ldr	r0, [r1, #0x8]
 8056640: 68c9         	ldr	r1, [r1, #0xc]
 8056642: 6048         	str	r0, [r1, #0x4]
 8056644: 9802         	ldr	r0, [sp, #0x8]
 8056646: 6840         	ldr	r0, [r0, #0x4]
 8056648: 9907         	ldr	r1, [sp, #0x1c]
 805664a: 3104         	adds	r1, #0x4
 805664c: 4288         	cmp	r0, r1
 805664e: d105         	bne	0x805665c <xTaskIncrementTick+0x118> @ imm = #0xa
 8056650: e7ff         	b	0x8056652 <xTaskIncrementTick+0x10e> @ imm = #-0x2
 8056652: 9807         	ldr	r0, [sp, #0x1c]
 8056654: 68c0         	ldr	r0, [r0, #0xc]
 8056656: 9902         	ldr	r1, [sp, #0x8]
 8056658: 6048         	str	r0, [r1, #0x4]
 805665a: e7ff         	b	0x805665c <xTaskIncrementTick+0x118> @ imm = #-0x2
 805665c: 9907         	ldr	r1, [sp, #0x1c]
 805665e: 2000         	movs	r0, #0x0
 8056660: 6148         	str	r0, [r1, #0x14]
 8056662: 9902         	ldr	r1, [sp, #0x8]
 8056664: 6808         	ldr	r0, [r1]
 8056666: 3801         	subs	r0, #0x1
 8056668: 6008         	str	r0, [r1]
 805666a: e7ff         	b	0x805666c <xTaskIncrementTick+0x128> @ imm = #-0x2
;                     if( listLIST_ITEM_CONTAINER( &( pxTCB->xEventListItem ) ) != NULL )
 805666c: 9807         	ldr	r0, [sp, #0x1c]
 805666e: 6a80         	ldr	r0, [r0, #0x28]
 8056670: b308         	cbz	r0, 0x80566b6 <xTaskIncrementTick+0x172> @ imm = #0x42
 8056672: e7ff         	b	0x8056674 <xTaskIncrementTick+0x130> @ imm = #-0x2
;                         listREMOVE_ITEM( &( pxTCB->xEventListItem ) );
 8056674: e7ff         	b	0x8056676 <xTaskIncrementTick+0x132> @ imm = #-0x2
 8056676: 9807         	ldr	r0, [sp, #0x1c]
 8056678: 6a80         	ldr	r0, [r0, #0x28]
 805667a: 9001         	str	r0, [sp, #0x4]
 805667c: 9807         	ldr	r0, [sp, #0x1c]
 805667e: 69c1         	ldr	r1, [r0, #0x1c]
 8056680: 6a00         	ldr	r0, [r0, #0x20]
 8056682: 6088         	str	r0, [r1, #0x8]
 8056684: 9907         	ldr	r1, [sp, #0x1c]
 8056686: 69c8         	ldr	r0, [r1, #0x1c]
 8056688: 6a09         	ldr	r1, [r1, #0x20]
 805668a: 6048         	str	r0, [r1, #0x4]
 805668c: 9801         	ldr	r0, [sp, #0x4]
 805668e: 6840         	ldr	r0, [r0, #0x4]
 8056690: 9907         	ldr	r1, [sp, #0x1c]
 8056692: 3118         	adds	r1, #0x18
 8056694: 4288         	cmp	r0, r1
 8056696: d105         	bne	0x80566a4 <xTaskIncrementTick+0x160> @ imm = #0xa
 8056698: e7ff         	b	0x805669a <xTaskIncrementTick+0x156> @ imm = #-0x2
 805669a: 9807         	ldr	r0, [sp, #0x1c]
 805669c: 6a00         	ldr	r0, [r0, #0x20]
 805669e: 9901         	ldr	r1, [sp, #0x4]
 80566a0: 6048         	str	r0, [r1, #0x4]
 80566a2: e7ff         	b	0x80566a4 <xTaskIncrementTick+0x160> @ imm = #-0x2
 80566a4: 9907         	ldr	r1, [sp, #0x1c]
 80566a6: 2000         	movs	r0, #0x0
 80566a8: 6288         	str	r0, [r1, #0x28]
 80566aa: 9901         	ldr	r1, [sp, #0x4]
 80566ac: 6808         	ldr	r0, [r1]
 80566ae: 3801         	subs	r0, #0x1
 80566b0: 6008         	str	r0, [r1]
 80566b2: e7ff         	b	0x80566b4 <xTaskIncrementTick+0x170> @ imm = #-0x2
;                     }
 80566b4: e000         	b	0x80566b8 <xTaskIncrementTick+0x174> @ imm = #0x0
 80566b6: e7ff         	b	0x80566b8 <xTaskIncrementTick+0x174> @ imm = #-0x2
;                     prvAddTaskToReadyList( pxTCB );
 80566b8: e7ff         	b	0x80566ba <xTaskIncrementTick+0x176> @ imm = #-0x2
 80566ba: e7ff         	b	0x80566bc <xTaskIncrementTick+0x178> @ imm = #-0x2
 80566bc: 9807         	ldr	r0, [sp, #0x1c]
 80566be: 6ac0         	ldr	r0, [r0, #0x2c]
 80566c0: f240 21b0    	movw	r1, #0x2b0
 80566c4: f2c2 0100    	movt	r1, #0x2000
 80566c8: 6809         	ldr	r1, [r1]
 80566ca: 4288         	cmp	r0, r1
 80566cc: d908         	bls	0x80566e0 <xTaskIncrementTick+0x19c> @ imm = #0x10
 80566ce: e7ff         	b	0x80566d0 <xTaskIncrementTick+0x18c> @ imm = #-0x2
 80566d0: 9807         	ldr	r0, [sp, #0x1c]
 80566d2: 6ac0         	ldr	r0, [r0, #0x2c]
 80566d4: f240 21b0    	movw	r1, #0x2b0
 80566d8: f2c2 0100    	movt	r1, #0x2000
 80566dc: 6008         	str	r0, [r1]
 80566de: e7ff         	b	0x80566e0 <xTaskIncrementTick+0x19c> @ imm = #-0x2
 80566e0: e7ff         	b	0x80566e2 <xTaskIncrementTick+0x19e> @ imm = #-0x2
 80566e2: e7ff         	b	0x80566e4 <xTaskIncrementTick+0x1a0> @ imm = #-0x2
 80566e4: 9807         	ldr	r0, [sp, #0x1c]
 80566e6: 6ac0         	ldr	r0, [r0, #0x2c]
 80566e8: eb00 0080    	add.w	r0, r0, r0, lsl #2
 80566ec: f240 1170    	movw	r1, #0x170
 80566f0: f2c2 0100    	movt	r1, #0x2000
 80566f4: eb01 0080    	add.w	r0, r1, r0, lsl #2
 80566f8: 6840         	ldr	r0, [r0, #0x4]
 80566fa: 9000         	str	r0, [sp]
 80566fc: 9800         	ldr	r0, [sp]
 80566fe: 9a07         	ldr	r2, [sp, #0x1c]
 8056700: 6090         	str	r0, [r2, #0x8]
 8056702: 9800         	ldr	r0, [sp]
 8056704: 6880         	ldr	r0, [r0, #0x8]
 8056706: 9a07         	ldr	r2, [sp, #0x1c]
 8056708: 60d0         	str	r0, [r2, #0xc]
 805670a: 9807         	ldr	r0, [sp, #0x1c]
 805670c: 3004         	adds	r0, #0x4
 805670e: 9a00         	ldr	r2, [sp]
 8056710: 6892         	ldr	r2, [r2, #0x8]
 8056712: 6050         	str	r0, [r2, #0x4]
 8056714: 9807         	ldr	r0, [sp, #0x1c]
 8056716: 3004         	adds	r0, #0x4
 8056718: 9a00         	ldr	r2, [sp]
 805671a: 6090         	str	r0, [r2, #0x8]
 805671c: 9a07         	ldr	r2, [sp, #0x1c]
 805671e: 6ad0         	ldr	r0, [r2, #0x2c]
 8056720: eb00 0080    	add.w	r0, r0, r0, lsl #2
 8056724: eb01 0080    	add.w	r0, r1, r0, lsl #2
 8056728: 6150         	str	r0, [r2, #0x14]
 805672a: 9807         	ldr	r0, [sp, #0x1c]
 805672c: 6ac0         	ldr	r0, [r0, #0x2c]
 805672e: eb00 0280    	add.w	r2, r0, r0, lsl #2
 8056732: f851 0022    	ldr.w	r0, [r1, r2, lsl #2]
 8056736: 3001         	adds	r0, #0x1
 8056738: f841 0022    	str.w	r0, [r1, r2, lsl #2]
 805673c: e7ff         	b	0x805673e <xTaskIncrementTick+0x1fa> @ imm = #-0x2
 805673e: e7ff         	b	0x8056740 <xTaskIncrementTick+0x1fc> @ imm = #-0x2
;                             if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
 8056740: 9807         	ldr	r0, [sp, #0x1c]
 8056742: 6ac0         	ldr	r0, [r0, #0x2c]
 8056744: f240 1110    	movw	r1, #0x110
 8056748: f2c2 0100    	movt	r1, #0x2000
 805674c: 6809         	ldr	r1, [r1]
 805674e: 6ac9         	ldr	r1, [r1, #0x2c]
 8056750: 4288         	cmp	r0, r1
 8056752: d903         	bls	0x805675c <xTaskIncrementTick+0x218> @ imm = #0x6
 8056754: e7ff         	b	0x8056756 <xTaskIncrementTick+0x212> @ imm = #-0x2
 8056756: 2001         	movs	r0, #0x1
;                                 xSwitchRequired = pdTRUE;
 8056758: 9005         	str	r0, [sp, #0x14]
;                             }
 805675a: e000         	b	0x805675e <xTaskIncrementTick+0x21a> @ imm = #0x0
 805675c: e7ff         	b	0x805675e <xTaskIncrementTick+0x21a> @ imm = #-0x2
 805675e: e7ff         	b	0x8056760 <xTaskIncrementTick+0x21c> @ imm = #-0x2
;             for( ; ; )
 8056760: e73c         	b	0x80565dc <xTaskIncrementTick+0x98> @ imm = #-0x188
;         }
 8056762: e7ff         	b	0x8056764 <xTaskIncrementTick+0x220> @ imm = #-0x2
;                 if( listCURRENT_LIST_LENGTH( &( pxReadyTasksLists[ pxCurrentTCB->uxPriority ] ) ) > ( UBaseType_t ) 1 )
 8056764: f240 1010    	movw	r0, #0x110
 8056768: f2c2 0000    	movt	r0, #0x2000
 805676c: 6800         	ldr	r0, [r0]
 805676e: 6ac0         	ldr	r0, [r0, #0x2c]
 8056770: eb00 0180    	add.w	r1, r0, r0, lsl #2
 8056774: f240 1070    	movw	r0, #0x170
 8056778: f2c2 0000    	movt	r0, #0x2000
 805677c: f850 0021    	ldr.w	r0, [r0, r1, lsl #2]
 8056780: 2802         	cmp	r0, #0x2
 8056782: d303         	blo	0x805678c <xTaskIncrementTick+0x248> @ imm = #0x6
 8056784: e7ff         	b	0x8056786 <xTaskIncrementTick+0x242> @ imm = #-0x2
 8056786: 2001         	movs	r0, #0x1
;                     xSwitchRequired = pdTRUE;
 8056788: 9005         	str	r0, [sp, #0x14]
;                 }
 805678a: e000         	b	0x805678e <xTaskIncrementTick+0x24a> @ imm = #0x0
 805678c: e7ff         	b	0x805678e <xTaskIncrementTick+0x24a> @ imm = #-0x2
;                 if( xYieldPendings[ 0 ] != pdFALSE )
 805678e: f240 20b4    	movw	r0, #0x2b4
 8056792: f2c2 0000    	movt	r0, #0x2000
 8056796: 6800         	ldr	r0, [r0]
 8056798: b118         	cbz	r0, 0x80567a2 <xTaskIncrementTick+0x25e> @ imm = #0x6
 805679a: e7ff         	b	0x805679c <xTaskIncrementTick+0x258> @ imm = #-0x2
 805679c: 2001         	movs	r0, #0x1
;                     xSwitchRequired = pdTRUE;
 805679e: 9005         	str	r0, [sp, #0x14]
;                 }
 80567a0: e000         	b	0x80567a4 <xTaskIncrementTick+0x260> @ imm = #0x0
 80567a2: e7ff         	b	0x80567a4 <xTaskIncrementTick+0x260> @ imm = #-0x2
;     }
 80567a4: e007         	b	0x80567b6 <xTaskIncrementTick+0x272> @ imm = #0xe
;         ++xPendedTicks;
 80567a6: f240 21c0    	movw	r1, #0x2c0
 80567aa: f2c2 0100    	movt	r1, #0x2000
 80567ae: 6808         	ldr	r0, [r1]
 80567b0: 3001         	adds	r0, #0x1
 80567b2: 6008         	str	r0, [r1]
 80567b4: e7ff         	b	0x80567b6 <xTaskIncrementTick+0x272> @ imm = #-0x2
;     return xSwitchRequired;
 80567b6: 9805         	ldr	r0, [sp, #0x14]
 80567b8: b008         	add	sp, #0x20
 80567ba: bd80         	pop	{r7, pc}

080567bc <xTaskGetTickCount>:
; {
 80567bc: b081         	sub	sp, #0x4
;         xTicks = xTickCount;
 80567be: f240 103c    	movw	r0, #0x13c
 80567c2: f2c2 0000    	movt	r0, #0x2000
 80567c6: 6800         	ldr	r0, [r0]
 80567c8: 9000         	str	r0, [sp]
;     return xTicks;
 80567ca: 9800         	ldr	r0, [sp]
 80567cc: b001         	add	sp, #0x4
 80567ce: 4770         	bx	lr

080567d0 <vTaskPlaceOnEventList>:
; {
 80567d0: b580         	push	{r7, lr}
 80567d2: 466f         	mov	r7, sp
 80567d4: b082         	sub	sp, #0x8
 80567d6: 9001         	str	r0, [sp, #0x4]
 80567d8: 9100         	str	r1, [sp]
;     configASSERT( pxEventList );
 80567da: 9801         	ldr	r0, [sp, #0x4]
 80567dc: b920         	cbnz	r0, 0x80567e8 <vTaskPlaceOnEventList+0x18> @ imm = #0x8
 80567de: e7ff         	b	0x80567e0 <vTaskPlaceOnEventList+0x10> @ imm = #-0x2
 80567e0: f001 fcf5    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0x19ea
 80567e4: e7ff         	b	0x80567e6 <vTaskPlaceOnEventList+0x16> @ imm = #-0x2
 80567e6: e7fe         	b	0x80567e6 <vTaskPlaceOnEventList+0x16> @ imm = #-0x4
;     vListInsert( pxEventList, &( pxCurrentTCB->xEventListItem ) );
 80567e8: 9801         	ldr	r0, [sp, #0x4]
 80567ea: f240 1110    	movw	r1, #0x110
 80567ee: f2c2 0100    	movt	r1, #0x2000
 80567f2: 6809         	ldr	r1, [r1]
 80567f4: 3118         	adds	r1, #0x18
 80567f6: f001 f805    	bl	0x8057804 <vListInsert> @ imm = #0x100a
;     prvAddCurrentTaskToDelayedList( xTicksToWait, pdTRUE );
 80567fa: 9800         	ldr	r0, [sp]
 80567fc: 2101         	movs	r1, #0x1
 80567fe: f7ff fbef    	bl	0x8055fe0 <prvAddCurrentTaskToDelayedList> @ imm = #-0x822
; }
 8056802: b002         	add	sp, #0x8
 8056804: bd80         	pop	{r7, pc}

08056806 <vTaskPlaceOnEventListRestricted>:
;     {
 8056806: b580         	push	{r7, lr}
 8056808: 466f         	mov	r7, sp
 805680a: b084         	sub	sp, #0x10
 805680c: 9003         	str	r0, [sp, #0xc]
 805680e: 9102         	str	r1, [sp, #0x8]
 8056810: 9201         	str	r2, [sp, #0x4]
;         configASSERT( pxEventList );
 8056812: 9803         	ldr	r0, [sp, #0xc]
 8056814: b920         	cbnz	r0, 0x8056820 <vTaskPlaceOnEventListRestricted+0x1a> @ imm = #0x8
 8056816: e7ff         	b	0x8056818 <vTaskPlaceOnEventListRestricted+0x12> @ imm = #-0x2
 8056818: f001 fcd9    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0x19b2
 805681c: e7ff         	b	0x805681e <vTaskPlaceOnEventListRestricted+0x18> @ imm = #-0x2
 805681e: e7fe         	b	0x805681e <vTaskPlaceOnEventListRestricted+0x18> @ imm = #-0x4
;         listINSERT_END( pxEventList, &( pxCurrentTCB->xEventListItem ) );
 8056820: e7ff         	b	0x8056822 <vTaskPlaceOnEventListRestricted+0x1c> @ imm = #-0x2
 8056822: 9803         	ldr	r0, [sp, #0xc]
 8056824: 6840         	ldr	r0, [r0, #0x4]
 8056826: 9000         	str	r0, [sp]
 8056828: 9800         	ldr	r0, [sp]
 805682a: f240 1110    	movw	r1, #0x110
 805682e: f2c2 0100    	movt	r1, #0x2000
 8056832: 680a         	ldr	r2, [r1]
 8056834: 61d0         	str	r0, [r2, #0x1c]
 8056836: 9800         	ldr	r0, [sp]
 8056838: 6880         	ldr	r0, [r0, #0x8]
 805683a: 680a         	ldr	r2, [r1]
 805683c: 6210         	str	r0, [r2, #0x20]
 805683e: 6808         	ldr	r0, [r1]
 8056840: 3018         	adds	r0, #0x18
 8056842: 9a00         	ldr	r2, [sp]
 8056844: 6892         	ldr	r2, [r2, #0x8]
 8056846: 6050         	str	r0, [r2, #0x4]
 8056848: 6808         	ldr	r0, [r1]
 805684a: 3018         	adds	r0, #0x18
 805684c: 9a00         	ldr	r2, [sp]
 805684e: 6090         	str	r0, [r2, #0x8]
 8056850: 9803         	ldr	r0, [sp, #0xc]
 8056852: 6809         	ldr	r1, [r1]
 8056854: 6288         	str	r0, [r1, #0x28]
 8056856: 9903         	ldr	r1, [sp, #0xc]
 8056858: 6808         	ldr	r0, [r1]
 805685a: 3001         	adds	r0, #0x1
 805685c: 6008         	str	r0, [r1]
 805685e: e7ff         	b	0x8056860 <vTaskPlaceOnEventListRestricted+0x5a> @ imm = #-0x2
;         if( xWaitIndefinitely != pdFALSE )
 8056860: 9801         	ldr	r0, [sp, #0x4]
 8056862: b120         	cbz	r0, 0x805686e <vTaskPlaceOnEventListRestricted+0x68> @ imm = #0x8
 8056864: e7ff         	b	0x8056866 <vTaskPlaceOnEventListRestricted+0x60> @ imm = #-0x2
 8056866: f04f 30ff    	mov.w	r0, #0xffffffff
;             xTicksToWait = portMAX_DELAY;
 805686a: 9002         	str	r0, [sp, #0x8]
;         }
 805686c: e7ff         	b	0x805686e <vTaskPlaceOnEventListRestricted+0x68> @ imm = #-0x2
;         prvAddCurrentTaskToDelayedList( xTicksToWait, xWaitIndefinitely );
 805686e: 9802         	ldr	r0, [sp, #0x8]
 8056870: 9901         	ldr	r1, [sp, #0x4]
 8056872: f7ff fbb5    	bl	0x8055fe0 <prvAddCurrentTaskToDelayedList> @ imm = #-0x896
;     }
 8056876: b004         	add	sp, #0x10
 8056878: bd80         	pop	{r7, pc}

0805687a <xTaskRemoveFromEventList>:
; {
 805687a: b580         	push	{r7, lr}
 805687c: 466f         	mov	r7, sp
 805687e: b088         	sub	sp, #0x20
 8056880: 9007         	str	r0, [sp, #0x1c]
;     pxUnblockedTCB = listGET_OWNER_OF_HEAD_ENTRY( pxEventList ); /*lint !e9079 void * is used as this macro is used with timers and co-routines too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
 8056882: 9807         	ldr	r0, [sp, #0x1c]
 8056884: 68c0         	ldr	r0, [r0, #0xc]
 8056886: 68c0         	ldr	r0, [r0, #0xc]
 8056888: 9006         	str	r0, [sp, #0x18]
;     configASSERT( pxUnblockedTCB );
 805688a: 9806         	ldr	r0, [sp, #0x18]
 805688c: b920         	cbnz	r0, 0x8056898 <xTaskRemoveFromEventList+0x1e> @ imm = #0x8
 805688e: e7ff         	b	0x8056890 <xTaskRemoveFromEventList+0x16> @ imm = #-0x2
 8056890: f001 fc9d    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0x193a
 8056894: e7ff         	b	0x8056896 <xTaskRemoveFromEventList+0x1c> @ imm = #-0x2
 8056896: e7fe         	b	0x8056896 <xTaskRemoveFromEventList+0x1c> @ imm = #-0x4
;     listREMOVE_ITEM( &( pxUnblockedTCB->xEventListItem ) );
 8056898: e7ff         	b	0x805689a <xTaskRemoveFromEventList+0x20> @ imm = #-0x2
 805689a: 9806         	ldr	r0, [sp, #0x18]
 805689c: 6a80         	ldr	r0, [r0, #0x28]
 805689e: 9004         	str	r0, [sp, #0x10]
 80568a0: 9806         	ldr	r0, [sp, #0x18]
 80568a2: 69c1         	ldr	r1, [r0, #0x1c]
 80568a4: 6a00         	ldr	r0, [r0, #0x20]
 80568a6: 6088         	str	r0, [r1, #0x8]
 80568a8: 9906         	ldr	r1, [sp, #0x18]
 80568aa: 69c8         	ldr	r0, [r1, #0x1c]
 80568ac: 6a09         	ldr	r1, [r1, #0x20]
 80568ae: 6048         	str	r0, [r1, #0x4]
 80568b0: 9804         	ldr	r0, [sp, #0x10]
 80568b2: 6840         	ldr	r0, [r0, #0x4]
 80568b4: 9906         	ldr	r1, [sp, #0x18]
 80568b6: 3118         	adds	r1, #0x18
 80568b8: 4288         	cmp	r0, r1
 80568ba: d105         	bne	0x80568c8 <xTaskRemoveFromEventList+0x4e> @ imm = #0xa
 80568bc: e7ff         	b	0x80568be <xTaskRemoveFromEventList+0x44> @ imm = #-0x2
 80568be: 9806         	ldr	r0, [sp, #0x18]
 80568c0: 6a00         	ldr	r0, [r0, #0x20]
 80568c2: 9904         	ldr	r1, [sp, #0x10]
 80568c4: 6048         	str	r0, [r1, #0x4]
 80568c6: e7ff         	b	0x80568c8 <xTaskRemoveFromEventList+0x4e> @ imm = #-0x2
 80568c8: 9906         	ldr	r1, [sp, #0x18]
 80568ca: 2000         	movs	r0, #0x0
 80568cc: 6288         	str	r0, [r1, #0x28]
 80568ce: 9904         	ldr	r1, [sp, #0x10]
 80568d0: 6808         	ldr	r0, [r1]
 80568d2: 3801         	subs	r0, #0x1
 80568d4: 6008         	str	r0, [r1]
 80568d6: e7ff         	b	0x80568d8 <xTaskRemoveFromEventList+0x5e> @ imm = #-0x2
;     if( uxSchedulerSuspended == ( UBaseType_t ) 0U )
 80568d8: f240 1038    	movw	r0, #0x138
 80568dc: f2c2 0000    	movt	r0, #0x2000
 80568e0: 6800         	ldr	r0, [r0]
 80568e2: 2800         	cmp	r0, #0x0
 80568e4: d165         	bne	0x80569b2 <xTaskRemoveFromEventList+0x138> @ imm = #0xca
 80568e6: e7ff         	b	0x80568e8 <xTaskRemoveFromEventList+0x6e> @ imm = #-0x2
;         listREMOVE_ITEM( &( pxUnblockedTCB->xStateListItem ) );
 80568e8: e7ff         	b	0x80568ea <xTaskRemoveFromEventList+0x70> @ imm = #-0x2
 80568ea: 9806         	ldr	r0, [sp, #0x18]
 80568ec: 6940         	ldr	r0, [r0, #0x14]
 80568ee: 9003         	str	r0, [sp, #0xc]
 80568f0: 9806         	ldr	r0, [sp, #0x18]
 80568f2: 6881         	ldr	r1, [r0, #0x8]
 80568f4: 68c0         	ldr	r0, [r0, #0xc]
 80568f6: 6088         	str	r0, [r1, #0x8]
 80568f8: 9906         	ldr	r1, [sp, #0x18]
 80568fa: 6888         	ldr	r0, [r1, #0x8]
 80568fc: 68c9         	ldr	r1, [r1, #0xc]
 80568fe: 6048         	str	r0, [r1, #0x4]
 8056900: 9803         	ldr	r0, [sp, #0xc]
 8056902: 6840         	ldr	r0, [r0, #0x4]
 8056904: 9906         	ldr	r1, [sp, #0x18]
 8056906: 3104         	adds	r1, #0x4
 8056908: 4288         	cmp	r0, r1
 805690a: d105         	bne	0x8056918 <xTaskRemoveFromEventList+0x9e> @ imm = #0xa
 805690c: e7ff         	b	0x805690e <xTaskRemoveFromEventList+0x94> @ imm = #-0x2
 805690e: 9806         	ldr	r0, [sp, #0x18]
 8056910: 68c0         	ldr	r0, [r0, #0xc]
 8056912: 9903         	ldr	r1, [sp, #0xc]
 8056914: 6048         	str	r0, [r1, #0x4]
 8056916: e7ff         	b	0x8056918 <xTaskRemoveFromEventList+0x9e> @ imm = #-0x2
 8056918: 9906         	ldr	r1, [sp, #0x18]
 805691a: 2000         	movs	r0, #0x0
 805691c: 6148         	str	r0, [r1, #0x14]
 805691e: 9903         	ldr	r1, [sp, #0xc]
 8056920: 6808         	ldr	r0, [r1]
 8056922: 3801         	subs	r0, #0x1
 8056924: 6008         	str	r0, [r1]
 8056926: e7ff         	b	0x8056928 <xTaskRemoveFromEventList+0xae> @ imm = #-0x2
;         prvAddTaskToReadyList( pxUnblockedTCB );
 8056928: e7ff         	b	0x805692a <xTaskRemoveFromEventList+0xb0> @ imm = #-0x2
 805692a: e7ff         	b	0x805692c <xTaskRemoveFromEventList+0xb2> @ imm = #-0x2
 805692c: 9806         	ldr	r0, [sp, #0x18]
 805692e: 6ac0         	ldr	r0, [r0, #0x2c]
 8056930: f240 21b0    	movw	r1, #0x2b0
 8056934: f2c2 0100    	movt	r1, #0x2000
 8056938: 6809         	ldr	r1, [r1]
 805693a: 4288         	cmp	r0, r1
 805693c: d908         	bls	0x8056950 <xTaskRemoveFromEventList+0xd6> @ imm = #0x10
 805693e: e7ff         	b	0x8056940 <xTaskRemoveFromEventList+0xc6> @ imm = #-0x2
 8056940: 9806         	ldr	r0, [sp, #0x18]
 8056942: 6ac0         	ldr	r0, [r0, #0x2c]
 8056944: f240 21b0    	movw	r1, #0x2b0
 8056948: f2c2 0100    	movt	r1, #0x2000
 805694c: 6008         	str	r0, [r1]
 805694e: e7ff         	b	0x8056950 <xTaskRemoveFromEventList+0xd6> @ imm = #-0x2
 8056950: e7ff         	b	0x8056952 <xTaskRemoveFromEventList+0xd8> @ imm = #-0x2
 8056952: e7ff         	b	0x8056954 <xTaskRemoveFromEventList+0xda> @ imm = #-0x2
 8056954: 9806         	ldr	r0, [sp, #0x18]
 8056956: 6ac0         	ldr	r0, [r0, #0x2c]
 8056958: eb00 0080    	add.w	r0, r0, r0, lsl #2
 805695c: f240 1170    	movw	r1, #0x170
 8056960: f2c2 0100    	movt	r1, #0x2000
 8056964: eb01 0080    	add.w	r0, r1, r0, lsl #2
 8056968: 6840         	ldr	r0, [r0, #0x4]
 805696a: 9002         	str	r0, [sp, #0x8]
 805696c: 9802         	ldr	r0, [sp, #0x8]
 805696e: 9a06         	ldr	r2, [sp, #0x18]
 8056970: 6090         	str	r0, [r2, #0x8]
 8056972: 9802         	ldr	r0, [sp, #0x8]
 8056974: 6880         	ldr	r0, [r0, #0x8]
 8056976: 9a06         	ldr	r2, [sp, #0x18]
 8056978: 60d0         	str	r0, [r2, #0xc]
 805697a: 9806         	ldr	r0, [sp, #0x18]
 805697c: 3004         	adds	r0, #0x4
 805697e: 9a02         	ldr	r2, [sp, #0x8]
 8056980: 6892         	ldr	r2, [r2, #0x8]
 8056982: 6050         	str	r0, [r2, #0x4]
 8056984: 9806         	ldr	r0, [sp, #0x18]
 8056986: 3004         	adds	r0, #0x4
 8056988: 9a02         	ldr	r2, [sp, #0x8]
 805698a: 6090         	str	r0, [r2, #0x8]
 805698c: 9a06         	ldr	r2, [sp, #0x18]
 805698e: 6ad0         	ldr	r0, [r2, #0x2c]
 8056990: eb00 0080    	add.w	r0, r0, r0, lsl #2
 8056994: eb01 0080    	add.w	r0, r1, r0, lsl #2
 8056998: 6150         	str	r0, [r2, #0x14]
 805699a: 9806         	ldr	r0, [sp, #0x18]
 805699c: 6ac0         	ldr	r0, [r0, #0x2c]
 805699e: eb00 0280    	add.w	r2, r0, r0, lsl #2
 80569a2: f851 0022    	ldr.w	r0, [r1, r2, lsl #2]
 80569a6: 3001         	adds	r0, #0x1
 80569a8: f841 0022    	str.w	r0, [r1, r2, lsl #2]
 80569ac: e7ff         	b	0x80569ae <xTaskRemoveFromEventList+0x134> @ imm = #-0x2
 80569ae: e7ff         	b	0x80569b0 <xTaskRemoveFromEventList+0x136> @ imm = #-0x2
;     }
 80569b0: e01d         	b	0x80569ee <xTaskRemoveFromEventList+0x174> @ imm = #0x3a
;         listINSERT_END( &( xPendingReadyList ), &( pxUnblockedTCB->xEventListItem ) );
 80569b2: e7ff         	b	0x80569b4 <xTaskRemoveFromEventList+0x13a> @ imm = #-0x2
 80569b4: f240 1148    	movw	r1, #0x148
 80569b8: f2c2 0100    	movt	r1, #0x2000
 80569bc: 6848         	ldr	r0, [r1, #0x4]
 80569be: 9001         	str	r0, [sp, #0x4]
 80569c0: 9801         	ldr	r0, [sp, #0x4]
 80569c2: 9a06         	ldr	r2, [sp, #0x18]
 80569c4: 61d0         	str	r0, [r2, #0x1c]
 80569c6: 9801         	ldr	r0, [sp, #0x4]
 80569c8: 6880         	ldr	r0, [r0, #0x8]
 80569ca: 9a06         	ldr	r2, [sp, #0x18]
 80569cc: 6210         	str	r0, [r2, #0x20]
 80569ce: 9806         	ldr	r0, [sp, #0x18]
 80569d0: 3018         	adds	r0, #0x18
 80569d2: 9a01         	ldr	r2, [sp, #0x4]
 80569d4: 6892         	ldr	r2, [r2, #0x8]
 80569d6: 6050         	str	r0, [r2, #0x4]
 80569d8: 9806         	ldr	r0, [sp, #0x18]
 80569da: 3018         	adds	r0, #0x18
 80569dc: 9a01         	ldr	r2, [sp, #0x4]
 80569de: 6090         	str	r0, [r2, #0x8]
 80569e0: 9806         	ldr	r0, [sp, #0x18]
 80569e2: 6281         	str	r1, [r0, #0x28]
 80569e4: 6808         	ldr	r0, [r1]
 80569e6: 3001         	adds	r0, #0x1
 80569e8: 6008         	str	r0, [r1]
 80569ea: e7ff         	b	0x80569ec <xTaskRemoveFromEventList+0x172> @ imm = #-0x2
 80569ec: e7ff         	b	0x80569ee <xTaskRemoveFromEventList+0x174> @ imm = #-0x2
;         if( pxUnblockedTCB->uxPriority > pxCurrentTCB->uxPriority )
 80569ee: 9806         	ldr	r0, [sp, #0x18]
 80569f0: 6ac0         	ldr	r0, [r0, #0x2c]
 80569f2: f240 1110    	movw	r1, #0x110
 80569f6: f2c2 0100    	movt	r1, #0x2000
 80569fa: 6809         	ldr	r1, [r1]
 80569fc: 6ac9         	ldr	r1, [r1, #0x2c]
 80569fe: 4288         	cmp	r0, r1
 8056a00: d908         	bls	0x8056a14 <xTaskRemoveFromEventList+0x19a> @ imm = #0x10
 8056a02: e7ff         	b	0x8056a04 <xTaskRemoveFromEventList+0x18a> @ imm = #-0x2
 8056a04: 2001         	movs	r0, #0x1
;             xReturn = pdTRUE;
 8056a06: 9005         	str	r0, [sp, #0x14]
;             xYieldPendings[ 0 ] = pdTRUE;
 8056a08: f240 21b4    	movw	r1, #0x2b4
 8056a0c: f2c2 0100    	movt	r1, #0x2000
 8056a10: 6008         	str	r0, [r1]
;         }
 8056a12: e002         	b	0x8056a1a <xTaskRemoveFromEventList+0x1a0> @ imm = #0x4
 8056a14: 2000         	movs	r0, #0x0
;             xReturn = pdFALSE;
 8056a16: 9005         	str	r0, [sp, #0x14]
 8056a18: e7ff         	b	0x8056a1a <xTaskRemoveFromEventList+0x1a0> @ imm = #-0x2
;     return xReturn;
 8056a1a: 9805         	ldr	r0, [sp, #0x14]
 8056a1c: b008         	add	sp, #0x20
 8056a1e: bd80         	pop	{r7, pc}

08056a20 <vTaskInternalSetTimeOutState>:
; {
 8056a20: b081         	sub	sp, #0x4
 8056a22: 9000         	str	r0, [sp]
;     pxTimeOut->xOverflowCount = xNumOfOverflows;
 8056a24: f240 20c4    	movw	r0, #0x2c4
 8056a28: f2c2 0000    	movt	r0, #0x2000
 8056a2c: 6800         	ldr	r0, [r0]
 8056a2e: 9900         	ldr	r1, [sp]
 8056a30: 6008         	str	r0, [r1]
;     pxTimeOut->xTimeOnEntering = xTickCount;
 8056a32: f240 103c    	movw	r0, #0x13c
 8056a36: f2c2 0000    	movt	r0, #0x2000
 8056a3a: 6800         	ldr	r0, [r0]
 8056a3c: 9900         	ldr	r1, [sp]
 8056a3e: 6048         	str	r0, [r1, #0x4]
; }
 8056a40: b001         	add	sp, #0x4
 8056a42: 4770         	bx	lr

08056a44 <xTaskCheckForTimeOut>:
; {
 8056a44: b580         	push	{r7, lr}
 8056a46: 466f         	mov	r7, sp
 8056a48: b086         	sub	sp, #0x18
 8056a4a: 9005         	str	r0, [sp, #0x14]
 8056a4c: 9104         	str	r1, [sp, #0x10]
;     configASSERT( pxTimeOut );
 8056a4e: 9805         	ldr	r0, [sp, #0x14]
 8056a50: b920         	cbnz	r0, 0x8056a5c <xTaskCheckForTimeOut+0x18> @ imm = #0x8
 8056a52: e7ff         	b	0x8056a54 <xTaskCheckForTimeOut+0x10> @ imm = #-0x2
 8056a54: f001 fbbb    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0x1776
 8056a58: e7ff         	b	0x8056a5a <xTaskCheckForTimeOut+0x16> @ imm = #-0x2
 8056a5a: e7fe         	b	0x8056a5a <xTaskCheckForTimeOut+0x16> @ imm = #-0x4
;     configASSERT( pxTicksToWait );
 8056a5c: 9804         	ldr	r0, [sp, #0x10]
 8056a5e: b920         	cbnz	r0, 0x8056a6a <xTaskCheckForTimeOut+0x26> @ imm = #0x8
 8056a60: e7ff         	b	0x8056a62 <xTaskCheckForTimeOut+0x1e> @ imm = #-0x2
 8056a62: f001 fbb4    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0x1768
 8056a66: e7ff         	b	0x8056a68 <xTaskCheckForTimeOut+0x24> @ imm = #-0x2
 8056a68: e7fe         	b	0x8056a68 <xTaskCheckForTimeOut+0x24> @ imm = #-0x4
;     taskENTER_CRITICAL();
 8056a6a: f001 fa0d    	bl	0x8057e88 <vPortEnterCritical> @ imm = #0x141a
;         const TickType_t xConstTickCount = xTickCount;
 8056a6e: f240 103c    	movw	r0, #0x13c
 8056a72: f2c2 0000    	movt	r0, #0x2000
 8056a76: 6800         	ldr	r0, [r0]
 8056a78: 9002         	str	r0, [sp, #0x8]
;         const TickType_t xElapsedTime = xConstTickCount - pxTimeOut->xTimeOnEntering;
 8056a7a: 9802         	ldr	r0, [sp, #0x8]
 8056a7c: 9905         	ldr	r1, [sp, #0x14]
 8056a7e: 6849         	ldr	r1, [r1, #0x4]
 8056a80: 1a40         	subs	r0, r0, r1
 8056a82: 9001         	str	r0, [sp, #0x4]
;             if( *pxTicksToWait == portMAX_DELAY )
 8056a84: 9804         	ldr	r0, [sp, #0x10]
 8056a86: 6800         	ldr	r0, [r0]
 8056a88: 3001         	adds	r0, #0x1
 8056a8a: b918         	cbnz	r0, 0x8056a94 <xTaskCheckForTimeOut+0x50> @ imm = #0x6
 8056a8c: e7ff         	b	0x8056a8e <xTaskCheckForTimeOut+0x4a> @ imm = #-0x2
 8056a8e: 2000         	movs	r0, #0x0
;                 xReturn = pdFALSE;
 8056a90: 9003         	str	r0, [sp, #0xc]
;             }
 8056a92: e02e         	b	0x8056af2 <xTaskCheckForTimeOut+0xae> @ imm = #0x5c
;         if( ( xNumOfOverflows != pxTimeOut->xOverflowCount ) && ( xConstTickCount >= pxTimeOut->xTimeOnEntering ) ) /*lint !e525 Indentation preferred as is to make code within pre-processor directives clearer. */
 8056a94: f240 20c4    	movw	r0, #0x2c4
 8056a98: f2c2 0000    	movt	r0, #0x2000
 8056a9c: 6800         	ldr	r0, [r0]
 8056a9e: 9905         	ldr	r1, [sp, #0x14]
 8056aa0: 6809         	ldr	r1, [r1]
 8056aa2: 4288         	cmp	r0, r1
 8056aa4: d00c         	beq	0x8056ac0 <xTaskCheckForTimeOut+0x7c> @ imm = #0x18
 8056aa6: e7ff         	b	0x8056aa8 <xTaskCheckForTimeOut+0x64> @ imm = #-0x2
 8056aa8: 9802         	ldr	r0, [sp, #0x8]
 8056aaa: 9905         	ldr	r1, [sp, #0x14]
 8056aac: 6849         	ldr	r1, [r1, #0x4]
 8056aae: 4288         	cmp	r0, r1
 8056ab0: d306         	blo	0x8056ac0 <xTaskCheckForTimeOut+0x7c> @ imm = #0xc
 8056ab2: e7ff         	b	0x8056ab4 <xTaskCheckForTimeOut+0x70> @ imm = #-0x2
 8056ab4: 2001         	movs	r0, #0x1
;             xReturn = pdTRUE;
 8056ab6: 9003         	str	r0, [sp, #0xc]
;             *pxTicksToWait = ( TickType_t ) 0;
 8056ab8: 9904         	ldr	r1, [sp, #0x10]
 8056aba: 2000         	movs	r0, #0x0
 8056abc: 6008         	str	r0, [r1]
;         }
 8056abe: e017         	b	0x8056af0 <xTaskCheckForTimeOut+0xac> @ imm = #0x2e
;         else if( xElapsedTime < *pxTicksToWait ) /*lint !e961 Explicit casting is only redundant with some compilers, whereas others require it to prevent integer conversion errors. */
 8056ac0: 9801         	ldr	r0, [sp, #0x4]
 8056ac2: 9904         	ldr	r1, [sp, #0x10]
 8056ac4: 6809         	ldr	r1, [r1]
 8056ac6: 4288         	cmp	r0, r1
 8056ac8: d20b         	bhs	0x8056ae2 <xTaskCheckForTimeOut+0x9e> @ imm = #0x16
 8056aca: e7ff         	b	0x8056acc <xTaskCheckForTimeOut+0x88> @ imm = #-0x2
;             *pxTicksToWait -= xElapsedTime;
 8056acc: 9a01         	ldr	r2, [sp, #0x4]
 8056ace: 9904         	ldr	r1, [sp, #0x10]
 8056ad0: 6808         	ldr	r0, [r1]
 8056ad2: 1a80         	subs	r0, r0, r2
 8056ad4: 6008         	str	r0, [r1]
;             vTaskInternalSetTimeOutState( pxTimeOut );
 8056ad6: 9805         	ldr	r0, [sp, #0x14]
 8056ad8: f7ff ffa2    	bl	0x8056a20 <vTaskInternalSetTimeOutState> @ imm = #-0xbc
 8056adc: 2000         	movs	r0, #0x0
;             xReturn = pdFALSE;
 8056ade: 9003         	str	r0, [sp, #0xc]
;         }
 8056ae0: e005         	b	0x8056aee <xTaskCheckForTimeOut+0xaa> @ imm = #0xa
;             *pxTicksToWait = ( TickType_t ) 0;
 8056ae2: 9904         	ldr	r1, [sp, #0x10]
 8056ae4: 2000         	movs	r0, #0x0
 8056ae6: 6008         	str	r0, [r1]
 8056ae8: 2001         	movs	r0, #0x1
;             xReturn = pdTRUE;
 8056aea: 9003         	str	r0, [sp, #0xc]
 8056aec: e7ff         	b	0x8056aee <xTaskCheckForTimeOut+0xaa> @ imm = #-0x2
 8056aee: e7ff         	b	0x8056af0 <xTaskCheckForTimeOut+0xac> @ imm = #-0x2
 8056af0: e7ff         	b	0x8056af2 <xTaskCheckForTimeOut+0xae> @ imm = #-0x2
;     taskEXIT_CRITICAL();
 8056af2: f001 f9d9    	bl	0x8057ea8 <vPortExitCritical> @ imm = #0x13b2
;     return xReturn;
 8056af6: 9803         	ldr	r0, [sp, #0xc]
 8056af8: b006         	add	sp, #0x18
 8056afa: bd80         	pop	{r7, pc}

08056afc <vTaskMissedYield>:
;     xYieldPendings[ portGET_CORE_ID() ] = pdTRUE;
 8056afc: f240 21b4    	movw	r1, #0x2b4
 8056b00: f2c2 0100    	movt	r1, #0x2000
 8056b04: 2001         	movs	r0, #0x1
 8056b06: 6008         	str	r0, [r1]
; }
 8056b08: 4770         	bx	lr

08056b0a <xTaskGetSchedulerState>:
;     {
 8056b0a: b081         	sub	sp, #0x4
;         if( xSchedulerRunning == pdFALSE )
 8056b0c: f240 1034    	movw	r0, #0x134
 8056b10: f2c2 0000    	movt	r0, #0x2000
 8056b14: 6800         	ldr	r0, [r0]
 8056b16: b918         	cbnz	r0, 0x8056b20 <xTaskGetSchedulerState+0x16> @ imm = #0x6
 8056b18: e7ff         	b	0x8056b1a <xTaskGetSchedulerState+0x10> @ imm = #-0x2
 8056b1a: 2001         	movs	r0, #0x1
;             xReturn = taskSCHEDULER_NOT_STARTED;
 8056b1c: 9000         	str	r0, [sp]
;         }
 8056b1e: e00d         	b	0x8056b3c <xTaskGetSchedulerState+0x32> @ imm = #0x1a
;                 if( uxSchedulerSuspended == ( UBaseType_t ) 0U )
 8056b20: f240 1038    	movw	r0, #0x138
 8056b24: f2c2 0000    	movt	r0, #0x2000
 8056b28: 6800         	ldr	r0, [r0]
 8056b2a: b918         	cbnz	r0, 0x8056b34 <xTaskGetSchedulerState+0x2a> @ imm = #0x6
 8056b2c: e7ff         	b	0x8056b2e <xTaskGetSchedulerState+0x24> @ imm = #-0x2
 8056b2e: 2002         	movs	r0, #0x2
;                     xReturn = taskSCHEDULER_RUNNING;
 8056b30: 9000         	str	r0, [sp]
;                 }
 8056b32: e002         	b	0x8056b3a <xTaskGetSchedulerState+0x30> @ imm = #0x4
 8056b34: 2000         	movs	r0, #0x0
;                     xReturn = taskSCHEDULER_SUSPENDED;
 8056b36: 9000         	str	r0, [sp]
 8056b38: e7ff         	b	0x8056b3a <xTaskGetSchedulerState+0x30> @ imm = #-0x2
 8056b3a: e7ff         	b	0x8056b3c <xTaskGetSchedulerState+0x32> @ imm = #-0x2
;         return xReturn;
 8056b3c: 9800         	ldr	r0, [sp]
 8056b3e: b001         	add	sp, #0x4
 8056b40: 4770         	bx	lr

08056b42 <prvInitialiseNewTask>:
; {
 8056b42: b580         	push	{r7, lr}
 8056b44: 466f         	mov	r7, sp
 8056b46: b086         	sub	sp, #0x18
 8056b48: f8d7 c014    	ldr.w	r12, [r7, #0x14]
 8056b4c: f8d7 c010    	ldr.w	r12, [r7, #0x10]
 8056b50: f8d7 c00c    	ldr.w	r12, [r7, #0xc]
 8056b54: f8d7 c008    	ldr.w	r12, [r7, #0x8]
 8056b58: 9005         	str	r0, [sp, #0x14]
 8056b5a: 9104         	str	r1, [sp, #0x10]
 8056b5c: 9203         	str	r2, [sp, #0xc]
 8056b5e: 9302         	str	r3, [sp, #0x8]
;         ( void ) memset( pxNewTCB->pxStack, ( int ) tskSTACK_FILL_BYTE, ( size_t ) ulStackDepth * sizeof( StackType_t ) );
 8056b60: 6938         	ldr	r0, [r7, #0x10]
 8056b62: 6b00         	ldr	r0, [r0, #0x30]
 8056b64: 9903         	ldr	r1, [sp, #0xc]
 8056b66: 008a         	lsls	r2, r1, #0x2
 8056b68: 21a5         	movs	r1, #0xa5
 8056b6a: f001 fbf7    	bl	0x805835c <memset>      @ imm = #0x17ee
;         pxTopOfStack = &( pxNewTCB->pxStack[ ulStackDepth - ( uint32_t ) 1 ] );
 8056b6e: 6938         	ldr	r0, [r7, #0x10]
 8056b70: 6b00         	ldr	r0, [r0, #0x30]
 8056b72: 9903         	ldr	r1, [sp, #0xc]
 8056b74: eb00 0081    	add.w	r0, r0, r1, lsl #2
 8056b78: 3804         	subs	r0, #0x4
 8056b7a: 9001         	str	r0, [sp, #0x4]
;         pxTopOfStack = ( StackType_t * ) ( ( ( portPOINTER_SIZE_TYPE ) pxTopOfStack ) & ( ~( ( portPOINTER_SIZE_TYPE ) portBYTE_ALIGNMENT_MASK ) ) ); /*lint !e923 !e9033 !e9078 MISRA exception.  Avoiding casts between pointers and integers is not practical.  Size differences accounted for using portPOINTER_SIZE_TYPE type.  Checked by assert(). */
 8056b7c: 9801         	ldr	r0, [sp, #0x4]
 8056b7e: f020 0007    	bic	r0, r0, #0x7
 8056b82: 9001         	str	r0, [sp, #0x4]
;         configASSERT( ( ( ( portPOINTER_SIZE_TYPE ) pxTopOfStack & ( portPOINTER_SIZE_TYPE ) portBYTE_ALIGNMENT_MASK ) == 0UL ) );
 8056b84: f89d 0004    	ldrb.w	r0, [sp, #0x4]
 8056b88: 0740         	lsls	r0, r0, #0x1d
 8056b8a: b120         	cbz	r0, 0x8056b96 <prvInitialiseNewTask+0x54> @ imm = #0x8
 8056b8c: e7ff         	b	0x8056b8e <prvInitialiseNewTask+0x4c> @ imm = #-0x2
 8056b8e: f001 fb1e    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0x163c
 8056b92: e7ff         	b	0x8056b94 <prvInitialiseNewTask+0x52> @ imm = #-0x2
 8056b94: e7fe         	b	0x8056b94 <prvInitialiseNewTask+0x52> @ imm = #-0x4
;     if( pcName != NULL )
 8056b96: 9804         	ldr	r0, [sp, #0x10]
 8056b98: b1f8         	cbz	r0, 0x8056bda <prvInitialiseNewTask+0x98> @ imm = #0x3e
 8056b9a: e7ff         	b	0x8056b9c <prvInitialiseNewTask+0x5a> @ imm = #-0x2
 8056b9c: 2000         	movs	r0, #0x0
;         for( x = ( UBaseType_t ) 0; x < ( UBaseType_t ) configMAX_TASK_NAME_LEN; x++ )
 8056b9e: 9000         	str	r0, [sp]
 8056ba0: e7ff         	b	0x8056ba2 <prvInitialiseNewTask+0x60> @ imm = #-0x2
 8056ba2: 9800         	ldr	r0, [sp]
 8056ba4: 280f         	cmp	r0, #0xf
 8056ba6: d813         	bhi	0x8056bd0 <prvInitialiseNewTask+0x8e> @ imm = #0x26
 8056ba8: e7ff         	b	0x8056baa <prvInitialiseNewTask+0x68> @ imm = #-0x2
;             pxNewTCB->pcTaskName[ x ] = pcName[ x ];
 8056baa: 9804         	ldr	r0, [sp, #0x10]
 8056bac: 9a00         	ldr	r2, [sp]
 8056bae: 5c80         	ldrb	r0, [r0, r2]
 8056bb0: 6939         	ldr	r1, [r7, #0x10]
 8056bb2: 4411         	add	r1, r2
 8056bb4: f881 0034    	strb.w	r0, [r1, #0x34]
;             if( pcName[ x ] == ( char ) 0x00 )
 8056bb8: 9804         	ldr	r0, [sp, #0x10]
 8056bba: 9900         	ldr	r1, [sp]
 8056bbc: 5c40         	ldrb	r0, [r0, r1]
 8056bbe: b908         	cbnz	r0, 0x8056bc4 <prvInitialiseNewTask+0x82> @ imm = #0x2
 8056bc0: e7ff         	b	0x8056bc2 <prvInitialiseNewTask+0x80> @ imm = #-0x2
;                 break;
 8056bc2: e005         	b	0x8056bd0 <prvInitialiseNewTask+0x8e> @ imm = #0xa
 8056bc4: e7ff         	b	0x8056bc6 <prvInitialiseNewTask+0x84> @ imm = #-0x2
;         }
 8056bc6: e7ff         	b	0x8056bc8 <prvInitialiseNewTask+0x86> @ imm = #-0x2
;         for( x = ( UBaseType_t ) 0; x < ( UBaseType_t ) configMAX_TASK_NAME_LEN; x++ )
 8056bc8: 9800         	ldr	r0, [sp]
 8056bca: 3001         	adds	r0, #0x1
 8056bcc: 9000         	str	r0, [sp]
 8056bce: e7e8         	b	0x8056ba2 <prvInitialiseNewTask+0x60> @ imm = #-0x30
;         pxNewTCB->pcTaskName[ configMAX_TASK_NAME_LEN - 1 ] = '\0';
 8056bd0: 6939         	ldr	r1, [r7, #0x10]
 8056bd2: 2000         	movs	r0, #0x0
 8056bd4: f881 0043    	strb.w	r0, [r1, #0x43]
;     }
 8056bd8: e000         	b	0x8056bdc <prvInitialiseNewTask+0x9a> @ imm = #0x0
 8056bda: e7ff         	b	0x8056bdc <prvInitialiseNewTask+0x9a> @ imm = #-0x2
;     configASSERT( uxPriority < configMAX_PRIORITIES );
 8056bdc: 68b8         	ldr	r0, [r7, #0x8]
 8056bde: 2810         	cmp	r0, #0x10
 8056be0: d304         	blo	0x8056bec <prvInitialiseNewTask+0xaa> @ imm = #0x8
 8056be2: e7ff         	b	0x8056be4 <prvInitialiseNewTask+0xa2> @ imm = #-0x2
 8056be4: f001 faf3    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0x15e6
 8056be8: e7ff         	b	0x8056bea <prvInitialiseNewTask+0xa8> @ imm = #-0x2
 8056bea: e7fe         	b	0x8056bea <prvInitialiseNewTask+0xa8> @ imm = #-0x4
;     if( uxPriority >= ( UBaseType_t ) configMAX_PRIORITIES )
 8056bec: 68b8         	ldr	r0, [r7, #0x8]
 8056bee: 2810         	cmp	r0, #0x10
 8056bf0: d303         	blo	0x8056bfa <prvInitialiseNewTask+0xb8> @ imm = #0x6
 8056bf2: e7ff         	b	0x8056bf4 <prvInitialiseNewTask+0xb2> @ imm = #-0x2
 8056bf4: 200f         	movs	r0, #0xf
;         uxPriority = ( UBaseType_t ) configMAX_PRIORITIES - ( UBaseType_t ) 1U;
 8056bf6: 60b8         	str	r0, [r7, #0x8]
;     }
 8056bf8: e000         	b	0x8056bfc <prvInitialiseNewTask+0xba> @ imm = #0x0
 8056bfa: e7ff         	b	0x8056bfc <prvInitialiseNewTask+0xba> @ imm = #-0x2
;     pxNewTCB->uxPriority = uxPriority;
 8056bfc: 68b8         	ldr	r0, [r7, #0x8]
 8056bfe: 6939         	ldr	r1, [r7, #0x10]
 8056c00: 62c8         	str	r0, [r1, #0x2c]
;         pxNewTCB->uxBasePriority = uxPriority;
 8056c02: 68b8         	ldr	r0, [r7, #0x8]
 8056c04: 6939         	ldr	r1, [r7, #0x10]
 8056c06: 64c8         	str	r0, [r1, #0x4c]
;     vListInitialiseItem( &( pxNewTCB->xStateListItem ) );
 8056c08: 6938         	ldr	r0, [r7, #0x10]
 8056c0a: 3004         	adds	r0, #0x4
 8056c0c: f000 fdf3    	bl	0x80577f6 <vListInitialiseItem> @ imm = #0xbe6
;     vListInitialiseItem( &( pxNewTCB->xEventListItem ) );
 8056c10: 6938         	ldr	r0, [r7, #0x10]
 8056c12: 3018         	adds	r0, #0x18
 8056c14: f000 fdef    	bl	0x80577f6 <vListInitialiseItem> @ imm = #0xbde
;     listSET_LIST_ITEM_OWNER( &( pxNewTCB->xStateListItem ), pxNewTCB );
 8056c18: 6938         	ldr	r0, [r7, #0x10]
 8056c1a: 6100         	str	r0, [r0, #0x10]
;     listSET_LIST_ITEM_VALUE( &( pxNewTCB->xEventListItem ), ( TickType_t ) configMAX_PRIORITIES - ( TickType_t ) uxPriority ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
 8056c1c: 68b8         	ldr	r0, [r7, #0x8]
 8056c1e: f1c0 0010    	rsb.w	r0, r0, #0x10
 8056c22: 6939         	ldr	r1, [r7, #0x10]
 8056c24: 6188         	str	r0, [r1, #0x18]
;     listSET_LIST_ITEM_OWNER( &( pxNewTCB->xEventListItem ), pxNewTCB );
 8056c26: 6938         	ldr	r0, [r7, #0x10]
 8056c28: 6240         	str	r0, [r0, #0x24]
;                 pxNewTCB->pxTopOfStack = pxPortInitialiseStack( pxTopOfStack, pxNewTCB->pxStack, pxTaskCode, pvParameters );
 8056c2a: 9801         	ldr	r0, [sp, #0x4]
 8056c2c: 6939         	ldr	r1, [r7, #0x10]
 8056c2e: 6b09         	ldr	r1, [r1, #0x30]
 8056c30: 9a05         	ldr	r2, [sp, #0x14]
 8056c32: 9b02         	ldr	r3, [sp, #0x8]
 8056c34: f001 f986    	bl	0x8057f44 <pxPortInitialiseStack> @ imm = #0x130c
 8056c38: 6939         	ldr	r1, [r7, #0x10]
 8056c3a: 6008         	str	r0, [r1]
;     if( pxCreatedTask != NULL )
 8056c3c: 68f8         	ldr	r0, [r7, #0xc]
 8056c3e: b120         	cbz	r0, 0x8056c4a <prvInitialiseNewTask+0x108> @ imm = #0x8
 8056c40: e7ff         	b	0x8056c42 <prvInitialiseNewTask+0x100> @ imm = #-0x2
;         *pxCreatedTask = ( TaskHandle_t ) pxNewTCB;
 8056c42: 6938         	ldr	r0, [r7, #0x10]
 8056c44: 68f9         	ldr	r1, [r7, #0xc]
 8056c46: 6008         	str	r0, [r1]
;     }
 8056c48: e000         	b	0x8056c4c <prvInitialiseNewTask+0x10a> @ imm = #0x0
 8056c4a: e7ff         	b	0x8056c4c <prvInitialiseNewTask+0x10a> @ imm = #-0x2
; }
 8056c4c: b006         	add	sp, #0x18
 8056c4e: bd80         	pop	{r7, pc}

08056c50 <prvInitialiseTaskLists>:
; {
 8056c50: b580         	push	{r7, lr}
 8056c52: 466f         	mov	r7, sp
 8056c54: b084         	sub	sp, #0x10
 8056c56: 2000         	movs	r0, #0x0
;     for( uxPriority = ( UBaseType_t ) 0U; uxPriority < ( UBaseType_t ) configMAX_PRIORITIES; uxPriority++ )
 8056c58: 9003         	str	r0, [sp, #0xc]
 8056c5a: e7ff         	b	0x8056c5c <prvInitialiseTaskLists+0xc> @ imm = #-0x2
 8056c5c: 9803         	ldr	r0, [sp, #0xc]
 8056c5e: 280f         	cmp	r0, #0xf
 8056c60: d810         	bhi	0x8056c84 <prvInitialiseTaskLists+0x34> @ imm = #0x20
 8056c62: e7ff         	b	0x8056c64 <prvInitialiseTaskLists+0x14> @ imm = #-0x2
;         vListInitialise( &( pxReadyTasksLists[ uxPriority ] ) );
 8056c64: 9803         	ldr	r0, [sp, #0xc]
 8056c66: eb00 0180    	add.w	r1, r0, r0, lsl #2
 8056c6a: f240 1070    	movw	r0, #0x170
 8056c6e: f2c2 0000    	movt	r0, #0x2000
 8056c72: eb00 0081    	add.w	r0, r0, r1, lsl #2
 8056c76: f000 fda7    	bl	0x80577c8 <vListInitialise> @ imm = #0xb4e
;     }
 8056c7a: e7ff         	b	0x8056c7c <prvInitialiseTaskLists+0x2c> @ imm = #-0x2
;     for( uxPriority = ( UBaseType_t ) 0U; uxPriority < ( UBaseType_t ) configMAX_PRIORITIES; uxPriority++ )
 8056c7c: 9803         	ldr	r0, [sp, #0xc]
 8056c7e: 3001         	adds	r0, #0x1
 8056c80: 9003         	str	r0, [sp, #0xc]
 8056c82: e7eb         	b	0x8056c5c <prvInitialiseTaskLists+0xc> @ imm = #-0x2a
;     vListInitialise( &xDelayedTaskList1 );
 8056c84: f240 20c8    	movw	r0, #0x2c8
 8056c88: f2c2 0000    	movt	r0, #0x2000
 8056c8c: 9001         	str	r0, [sp, #0x4]
 8056c8e: f000 fd9b    	bl	0x80577c8 <vListInitialise> @ imm = #0xb36
;     vListInitialise( &xDelayedTaskList2 );
 8056c92: f240 20dc    	movw	r0, #0x2dc
 8056c96: f2c2 0000    	movt	r0, #0x2000
 8056c9a: 9002         	str	r0, [sp, #0x8]
 8056c9c: f000 fd94    	bl	0x80577c8 <vListInitialise> @ imm = #0xb28
;     vListInitialise( &xPendingReadyList );
 8056ca0: f240 1048    	movw	r0, #0x148
 8056ca4: f2c2 0000    	movt	r0, #0x2000
 8056ca8: f000 fd8e    	bl	0x80577c8 <vListInitialise> @ imm = #0xb1c
;         vListInitialise( &xTasksWaitingTermination );
 8056cac: f240 1018    	movw	r0, #0x118
 8056cb0: f2c2 0000    	movt	r0, #0x2000
 8056cb4: f000 fd88    	bl	0x80577c8 <vListInitialise> @ imm = #0xb10
;         vListInitialise( &xSuspendedTaskList );
 8056cb8: f240 105c    	movw	r0, #0x15c
 8056cbc: f2c2 0000    	movt	r0, #0x2000
 8056cc0: f000 fd82    	bl	0x80577c8 <vListInitialise> @ imm = #0xb04
 8056cc4: 9901         	ldr	r1, [sp, #0x4]
 8056cc6: 9802         	ldr	r0, [sp, #0x8]
;     pxDelayedTaskList = &xDelayedTaskList1;
 8056cc8: f240 1240    	movw	r2, #0x140
 8056ccc: f2c2 0200    	movt	r2, #0x2000
 8056cd0: 6011         	str	r1, [r2]
;     pxOverflowDelayedTaskList = &xDelayedTaskList2;
 8056cd2: f240 1144    	movw	r1, #0x144
 8056cd6: f2c2 0100    	movt	r1, #0x2000
 8056cda: 6008         	str	r0, [r1]
; }
 8056cdc: b004         	add	sp, #0x10
 8056cde: bd80         	pop	{r7, pc}

08056ce0 <prvIdleTask>:
; {
 8056ce0: b580         	push	{r7, lr}
 8056ce2: 466f         	mov	r7, sp
 8056ce4: b082         	sub	sp, #0x8
 8056ce6: 9001         	str	r0, [sp, #0x4]
;     for( ; configCONTROL_INFINITE_LOOP(); )
 8056ce8: e7ff         	b	0x8056cea <prvIdleTask+0xa> @ imm = #-0x2
;         prvCheckTasksWaitingTermination();
 8056cea: f000 f80d    	bl	0x8056d08 <prvCheckTasksWaitingTermination> @ imm = #0x1a
;             if( listCURRENT_LIST_LENGTH( &( pxReadyTasksLists[ tskIDLE_PRIORITY ] ) ) > ( UBaseType_t ) configNUMBER_OF_CORES )
 8056cee: f240 1070    	movw	r0, #0x170
 8056cf2: f2c2 0000    	movt	r0, #0x2000
 8056cf6: 6800         	ldr	r0, [r0]
 8056cf8: 2802         	cmp	r0, #0x2
 8056cfa: d303         	blo	0x8056d04 <prvIdleTask+0x24> @ imm = #0x6
 8056cfc: e7ff         	b	0x8056cfe <prvIdleTask+0x1e> @ imm = #-0x2
;                 taskYIELD();
 8056cfe: f001 f8b7    	bl	0x8057e70 <vPortYield>  @ imm = #0x116e
;             }
 8056d02: e000         	b	0x8056d06 <prvIdleTask+0x26> @ imm = #0x0
 8056d04: e7ff         	b	0x8056d06 <prvIdleTask+0x26> @ imm = #-0x2
;     for( ; configCONTROL_INFINITE_LOOP(); )
 8056d06: e7f0         	b	0x8056cea <prvIdleTask+0xa> @ imm = #-0x20

08056d08 <prvCheckTasksWaitingTermination>:
; {
 8056d08: b580         	push	{r7, lr}
 8056d0a: 466f         	mov	r7, sp
 8056d0c: b082         	sub	sp, #0x8
;         while( uxDeletedTasksWaitingCleanUp > ( UBaseType_t ) 0U )
 8056d0e: e7ff         	b	0x8056d10 <prvCheckTasksWaitingTermination+0x8> @ imm = #-0x2
 8056d10: f240 102c    	movw	r0, #0x12c
 8056d14: f2c2 0000    	movt	r0, #0x2000
 8056d18: 6800         	ldr	r0, [r0]
 8056d1a: b308         	cbz	r0, 0x8056d60 <prvCheckTasksWaitingTermination+0x58> @ imm = #0x42
 8056d1c: e7ff         	b	0x8056d1e <prvCheckTasksWaitingTermination+0x16> @ imm = #-0x2
;                 taskENTER_CRITICAL();
 8056d1e: f001 f8b3    	bl	0x8057e88 <vPortEnterCritical> @ imm = #0x1166
;                         pxTCB = listGET_OWNER_OF_HEAD_ENTRY( ( &xTasksWaitingTermination ) ); /*lint !e9079 void * is used as this macro is used with timers too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
 8056d22: f240 1018    	movw	r0, #0x118
 8056d26: f2c2 0000    	movt	r0, #0x2000
 8056d2a: 68c0         	ldr	r0, [r0, #0xc]
 8056d2c: 68c0         	ldr	r0, [r0, #0xc]
 8056d2e: 9001         	str	r0, [sp, #0x4]
;                         ( void ) uxListRemove( &( pxTCB->xStateListItem ) );
 8056d30: 9801         	ldr	r0, [sp, #0x4]
 8056d32: 3004         	adds	r0, #0x4
 8056d34: f000 fd9b    	bl	0x805786e <uxListRemove> @ imm = #0xb36
;                         --uxCurrentNumberOfTasks;
 8056d38: f240 1130    	movw	r1, #0x130
 8056d3c: f2c2 0100    	movt	r1, #0x2000
 8056d40: 6808         	ldr	r0, [r1]
 8056d42: 3801         	subs	r0, #0x1
 8056d44: 6008         	str	r0, [r1]
;                         --uxDeletedTasksWaitingCleanUp;
 8056d46: f240 112c    	movw	r1, #0x12c
 8056d4a: f2c2 0100    	movt	r1, #0x2000
 8056d4e: 6808         	ldr	r0, [r1]
 8056d50: 3801         	subs	r0, #0x1
 8056d52: 6008         	str	r0, [r1]
;                 taskEXIT_CRITICAL();
 8056d54: f001 f8a8    	bl	0x8057ea8 <vPortExitCritical> @ imm = #0x1150
;                 prvDeleteTCB( pxTCB );
 8056d58: 9801         	ldr	r0, [sp, #0x4]
 8056d5a: f7ff f92c    	bl	0x8055fb6 <prvDeleteTCB> @ imm = #-0xda8
;         while( uxDeletedTasksWaitingCleanUp > ( UBaseType_t ) 0U )
 8056d5e: e7d7         	b	0x8056d10 <prvCheckTasksWaitingTermination+0x8> @ imm = #-0x52
; }
 8056d60: b002         	add	sp, #0x8
 8056d62: bd80         	pop	{r7, pc}

08056d64 <xTimerCreateTimerTask>:
;     {
 8056d64: b580         	push	{r7, lr}
 8056d66: 466f         	mov	r7, sp
 8056d68: b084         	sub	sp, #0x10
 8056d6a: 2000         	movs	r0, #0x0
;         BaseType_t xReturn = pdFAIL;
 8056d6c: 9003         	str	r0, [sp, #0xc]
;         prvCheckForValidListAndQueue();
 8056d6e: f000 f829    	bl	0x8056dc4 <prvCheckForValidListAndQueue> @ imm = #0x52
;         if( xTimerQueue != NULL )
 8056d72: f240 20f0    	movw	r0, #0x2f0
 8056d76: f2c2 0000    	movt	r0, #0x2000
 8056d7a: 6800         	ldr	r0, [r0]
 8056d7c: b1b8         	cbz	r0, 0x8056dae <xTimerCreateTimerTask+0x4a> @ imm = #0x2e
 8056d7e: e7ff         	b	0x8056d80 <xTimerCreateTimerTask+0x1c> @ imm = #-0x2
;                     xReturn = xTaskCreate( prvTimerTask,
 8056d80: f240 20f4    	movw	r0, #0x2f4
 8056d84: f2c2 0000    	movt	r0, #0x2000
 8056d88: 4669         	mov	r1, sp
 8056d8a: 6048         	str	r0, [r1, #0x4]
 8056d8c: 2002         	movs	r0, #0x2
 8056d8e: 6008         	str	r0, [r1]
 8056d90: f646 6053    	movw	r0, #0x6e53
 8056d94: f6c0 0005    	movt	r0, #0x805
 8056d98: f248 4165    	movw	r1, #0x8465
 8056d9c: f6c0 0105    	movt	r1, #0x805
 8056da0: f44f 7280    	mov.w	r2, #0x100
 8056da4: 2300         	movs	r3, #0x0
 8056da6: f7fe ffbf    	bl	0x8055d28 <xTaskCreate> @ imm = #-0x1082
 8056daa: 9003         	str	r0, [sp, #0xc]
;         }
 8056dac: e000         	b	0x8056db0 <xTimerCreateTimerTask+0x4c> @ imm = #0x0
 8056dae: e7ff         	b	0x8056db0 <xTimerCreateTimerTask+0x4c> @ imm = #-0x2
;         configASSERT( xReturn );
 8056db0: 9803         	ldr	r0, [sp, #0xc]
 8056db2: b920         	cbnz	r0, 0x8056dbe <xTimerCreateTimerTask+0x5a> @ imm = #0x8
 8056db4: e7ff         	b	0x8056db6 <xTimerCreateTimerTask+0x52> @ imm = #-0x2
 8056db6: f001 fa0a    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0x1414
 8056dba: e7ff         	b	0x8056dbc <xTimerCreateTimerTask+0x58> @ imm = #-0x2
 8056dbc: e7fe         	b	0x8056dbc <xTimerCreateTimerTask+0x58> @ imm = #-0x4
;         return xReturn;
 8056dbe: 9803         	ldr	r0, [sp, #0xc]
 8056dc0: b004         	add	sp, #0x10
 8056dc2: bd80         	pop	{r7, pc}

08056dc4 <prvCheckForValidListAndQueue>:
;     {
 8056dc4: b580         	push	{r7, lr}
 8056dc6: 466f         	mov	r7, sp
 8056dc8: b082         	sub	sp, #0x8
;         taskENTER_CRITICAL();
 8056dca: f001 f85d    	bl	0x8057e88 <vPortEnterCritical> @ imm = #0x10ba
;             if( xTimerQueue == NULL )
 8056dce: f240 20f0    	movw	r0, #0x2f0
 8056dd2: f2c2 0000    	movt	r0, #0x2000
 8056dd6: 6800         	ldr	r0, [r0]
 8056dd8: bbb0         	cbnz	r0, 0x8056e48 <prvCheckForValidListAndQueue+0x84> @ imm = #0x6c
 8056dda: e7ff         	b	0x8056ddc <prvCheckForValidListAndQueue+0x18> @ imm = #-0x2
;                 vListInitialise( &xActiveTimerList1 );
 8056ddc: f240 3004    	movw	r0, #0x304
 8056de0: f2c2 0000    	movt	r0, #0x2000
 8056de4: 9000         	str	r0, [sp]
 8056de6: f000 fcef    	bl	0x80577c8 <vListInitialise> @ imm = #0x9de
;                 vListInitialise( &xActiveTimerList2 );
 8056dea: f240 3018    	movw	r0, #0x318
 8056dee: f2c2 0000    	movt	r0, #0x2000
 8056df2: 9001         	str	r0, [sp, #0x4]
 8056df4: f000 fce8    	bl	0x80577c8 <vListInitialise> @ imm = #0x9d0
 8056df8: 9900         	ldr	r1, [sp]
 8056dfa: 9801         	ldr	r0, [sp, #0x4]
;                 pxCurrentTimerList = &xActiveTimerList1;
 8056dfc: f240 22f8    	movw	r2, #0x2f8
 8056e00: f2c2 0200    	movt	r2, #0x2000
 8056e04: 6011         	str	r1, [r2]
;                 pxOverflowTimerList = &xActiveTimerList2;
 8056e06: f240 21fc    	movw	r1, #0x2fc
 8056e0a: f2c2 0100    	movt	r1, #0x2000
 8056e0e: 6008         	str	r0, [r1]
 8056e10: 200a         	movs	r0, #0xa
 8056e12: 2110         	movs	r1, #0x10
 8056e14: 2200         	movs	r2, #0x0
;                     xTimerQueue = xQueueCreate( ( UBaseType_t ) configTIMER_QUEUE_LENGTH, sizeof( DaemonTaskMessage_t ) );
 8056e16: f000 fdbc    	bl	0x8057992 <xQueueGenericCreate> @ imm = #0xb78
 8056e1a: 4601         	mov	r1, r0
 8056e1c: f240 20f0    	movw	r0, #0x2f0
 8056e20: f2c2 0000    	movt	r0, #0x2000
 8056e24: 6001         	str	r1, [r0]
;                     if( xTimerQueue != NULL )
 8056e26: 6800         	ldr	r0, [r0]
 8056e28: b160         	cbz	r0, 0x8056e44 <prvCheckForValidListAndQueue+0x80> @ imm = #0x18
 8056e2a: e7ff         	b	0x8056e2c <prvCheckForValidListAndQueue+0x68> @ imm = #-0x2
;                         vQueueAddToRegistry( xTimerQueue, "TmrQ" );
 8056e2c: f240 20f0    	movw	r0, #0x2f0
 8056e30: f2c2 0000    	movt	r0, #0x2000
 8056e34: 6800         	ldr	r0, [r0]
 8056e36: f248 416d    	movw	r1, #0x846d
 8056e3a: f6c0 0105    	movt	r1, #0x805
 8056e3e: f000 ff6b    	bl	0x8057d18 <vQueueAddToRegistry> @ imm = #0xed6
;                     }
 8056e42: e000         	b	0x8056e46 <prvCheckForValidListAndQueue+0x82> @ imm = #0x0
 8056e44: e7ff         	b	0x8056e46 <prvCheckForValidListAndQueue+0x82> @ imm = #-0x2
;             }
 8056e46: e000         	b	0x8056e4a <prvCheckForValidListAndQueue+0x86> @ imm = #0x0
 8056e48: e7ff         	b	0x8056e4a <prvCheckForValidListAndQueue+0x86> @ imm = #-0x2
;         taskEXIT_CRITICAL();
 8056e4a: f001 f82d    	bl	0x8057ea8 <vPortExitCritical> @ imm = #0x105a
;     }
 8056e4e: b002         	add	sp, #0x8
 8056e50: bd80         	pop	{r7, pc}

08056e52 <prvTimerTask>:
;     {
 8056e52: b580         	push	{r7, lr}
 8056e54: 466f         	mov	r7, sp
 8056e56: b084         	sub	sp, #0x10
 8056e58: 9003         	str	r0, [sp, #0xc]
;         for( ; configCONTROL_INFINITE_LOOP(); )
 8056e5a: e7ff         	b	0x8056e5c <prvTimerTask+0xa> @ imm = #-0x2
 8056e5c: a801         	add	r0, sp, #0x4
;             xNextExpireTime = prvGetNextExpireTime( &xListWasEmpty );
 8056e5e: f000 f808    	bl	0x8056e72 <prvGetNextExpireTime> @ imm = #0x10
 8056e62: 9002         	str	r0, [sp, #0x8]
;             prvProcessTimerOrBlockTask( xNextExpireTime, xListWasEmpty );
 8056e64: 9802         	ldr	r0, [sp, #0x8]
 8056e66: 9901         	ldr	r1, [sp, #0x4]
 8056e68: f000 f823    	bl	0x8056eb2 <prvProcessTimerOrBlockTask> @ imm = #0x46
;             prvProcessReceivedCommands();
 8056e6c: f000 f866    	bl	0x8056f3c <prvProcessReceivedCommands> @ imm = #0xcc
;         for( ; configCONTROL_INFINITE_LOOP(); )
 8056e70: e7f4         	b	0x8056e5c <prvTimerTask+0xa> @ imm = #-0x18

08056e72 <prvGetNextExpireTime>:
;     {
 8056e72: b082         	sub	sp, #0x8
 8056e74: 9001         	str	r0, [sp, #0x4]
;         *pxListWasEmpty = listLIST_IS_EMPTY( pxCurrentTimerList );
 8056e76: f240 20f8    	movw	r0, #0x2f8
 8056e7a: f2c2 0000    	movt	r0, #0x2000
 8056e7e: 6800         	ldr	r0, [r0]
 8056e80: 6800         	ldr	r0, [r0]
 8056e82: fab0 f080    	clz	r0, r0
 8056e86: 0940         	lsrs	r0, r0, #0x5
 8056e88: 9901         	ldr	r1, [sp, #0x4]
 8056e8a: 6008         	str	r0, [r1]
;         if( *pxListWasEmpty == pdFALSE )
 8056e8c: 9801         	ldr	r0, [sp, #0x4]
 8056e8e: 6800         	ldr	r0, [r0]
 8056e90: b948         	cbnz	r0, 0x8056ea6 <prvGetNextExpireTime+0x34> @ imm = #0x12
 8056e92: e7ff         	b	0x8056e94 <prvGetNextExpireTime+0x22> @ imm = #-0x2
;             xNextExpireTime = listGET_ITEM_VALUE_OF_HEAD_ENTRY( pxCurrentTimerList );
 8056e94: f240 20f8    	movw	r0, #0x2f8
 8056e98: f2c2 0000    	movt	r0, #0x2000
 8056e9c: 6800         	ldr	r0, [r0]
 8056e9e: 68c0         	ldr	r0, [r0, #0xc]
 8056ea0: 6800         	ldr	r0, [r0]
 8056ea2: 9000         	str	r0, [sp]
;         }
 8056ea4: e002         	b	0x8056eac <prvGetNextExpireTime+0x3a> @ imm = #0x4
 8056ea6: 2000         	movs	r0, #0x0
;             xNextExpireTime = ( TickType_t ) 0U;
 8056ea8: 9000         	str	r0, [sp]
 8056eaa: e7ff         	b	0x8056eac <prvGetNextExpireTime+0x3a> @ imm = #-0x2
;         return xNextExpireTime;
 8056eac: 9800         	ldr	r0, [sp]
 8056eae: b002         	add	sp, #0x8
 8056eb0: 4770         	bx	lr

08056eb2 <prvProcessTimerOrBlockTask>:
;     {
 8056eb2: b580         	push	{r7, lr}
 8056eb4: 466f         	mov	r7, sp
 8056eb6: b084         	sub	sp, #0x10
 8056eb8: 9003         	str	r0, [sp, #0xc]
 8056eba: 9102         	str	r1, [sp, #0x8]
;         vTaskSuspendAll();
 8056ebc: f7ff f888    	bl	0x8055fd0 <vTaskSuspendAll> @ imm = #-0xef0
 8056ec0: 4668         	mov	r0, sp
;             xTimeNow = prvSampleTimeNow( &xTimerListsWereSwitched );
 8056ec2: f000 f8fe    	bl	0x80570c2 <prvSampleTimeNow> @ imm = #0x1fc
 8056ec6: 9001         	str	r0, [sp, #0x4]
;             if( xTimerListsWereSwitched == pdFALSE )
 8056ec8: 9800         	ldr	r0, [sp]
 8056eca: bb90         	cbnz	r0, 0x8056f32 <prvProcessTimerOrBlockTask+0x80> @ imm = #0x64
 8056ecc: e7ff         	b	0x8056ece <prvProcessTimerOrBlockTask+0x1c> @ imm = #-0x2
;                 if( ( xListWasEmpty == pdFALSE ) && ( xNextExpireTime <= xTimeNow ) )
 8056ece: 9802         	ldr	r0, [sp, #0x8]
 8056ed0: b960         	cbnz	r0, 0x8056eec <prvProcessTimerOrBlockTask+0x3a> @ imm = #0x18
 8056ed2: e7ff         	b	0x8056ed4 <prvProcessTimerOrBlockTask+0x22> @ imm = #-0x2
 8056ed4: 9803         	ldr	r0, [sp, #0xc]
 8056ed6: 9901         	ldr	r1, [sp, #0x4]
 8056ed8: 4288         	cmp	r0, r1
 8056eda: d807         	bhi	0x8056eec <prvProcessTimerOrBlockTask+0x3a> @ imm = #0xe
 8056edc: e7ff         	b	0x8056ede <prvProcessTimerOrBlockTask+0x2c> @ imm = #-0x2
;                     ( void ) xTaskResumeAll();
 8056ede: f7ff f8ff    	bl	0x80560e0 <xTaskResumeAll> @ imm = #-0xe02
;                     prvProcessExpiredTimer( xNextExpireTime, xTimeNow );
 8056ee2: 9803         	ldr	r0, [sp, #0xc]
 8056ee4: 9901         	ldr	r1, [sp, #0x4]
 8056ee6: f000 f90f    	bl	0x8057108 <prvProcessExpiredTimer> @ imm = #0x21e
;                 }
 8056eea: e021         	b	0x8056f30 <prvProcessTimerOrBlockTask+0x7e> @ imm = #0x42
;                     if( xListWasEmpty != pdFALSE )
 8056eec: 9802         	ldr	r0, [sp, #0x8]
 8056eee: b158         	cbz	r0, 0x8056f08 <prvProcessTimerOrBlockTask+0x56> @ imm = #0x16
 8056ef0: e7ff         	b	0x8056ef2 <prvProcessTimerOrBlockTask+0x40> @ imm = #-0x2
;                         xListWasEmpty = listLIST_IS_EMPTY( pxOverflowTimerList );
 8056ef2: f240 20fc    	movw	r0, #0x2fc
 8056ef6: f2c2 0000    	movt	r0, #0x2000
 8056efa: 6800         	ldr	r0, [r0]
 8056efc: 6800         	ldr	r0, [r0]
 8056efe: fab0 f080    	clz	r0, r0
 8056f02: 0940         	lsrs	r0, r0, #0x5
 8056f04: 9002         	str	r0, [sp, #0x8]
;                     }
 8056f06: e7ff         	b	0x8056f08 <prvProcessTimerOrBlockTask+0x56> @ imm = #-0x2
;                     vQueueWaitForMessageRestricted( xTimerQueue, ( xNextExpireTime - xTimeNow ), xListWasEmpty );
 8056f08: f240 20f0    	movw	r0, #0x2f0
 8056f0c: f2c2 0000    	movt	r0, #0x2000
 8056f10: 6800         	ldr	r0, [r0]
 8056f12: 9903         	ldr	r1, [sp, #0xc]
 8056f14: 9a01         	ldr	r2, [sp, #0x4]
 8056f16: 1a89         	subs	r1, r1, r2
 8056f18: 9a02         	ldr	r2, [sp, #0x8]
 8056f1a: f000 ff53    	bl	0x8057dc4 <vQueueWaitForMessageRestricted> @ imm = #0xea6
;                     if( xTaskResumeAll() == pdFALSE )
 8056f1e: f7ff f8df    	bl	0x80560e0 <xTaskResumeAll> @ imm = #-0xe42
 8056f22: b918         	cbnz	r0, 0x8056f2c <prvProcessTimerOrBlockTask+0x7a> @ imm = #0x6
 8056f24: e7ff         	b	0x8056f26 <prvProcessTimerOrBlockTask+0x74> @ imm = #-0x2
;                         taskYIELD_WITHIN_API();
 8056f26: f000 ffa3    	bl	0x8057e70 <vPortYield>  @ imm = #0xf46
;                     }
 8056f2a: e000         	b	0x8056f2e <prvProcessTimerOrBlockTask+0x7c> @ imm = #0x0
 8056f2c: e7ff         	b	0x8056f2e <prvProcessTimerOrBlockTask+0x7c> @ imm = #-0x2
 8056f2e: e7ff         	b	0x8056f30 <prvProcessTimerOrBlockTask+0x7e> @ imm = #-0x2
;             }
 8056f30: e002         	b	0x8056f38 <prvProcessTimerOrBlockTask+0x86> @ imm = #0x4
;                 ( void ) xTaskResumeAll();
 8056f32: f7ff f8d5    	bl	0x80560e0 <xTaskResumeAll> @ imm = #-0xe56
 8056f36: e7ff         	b	0x8056f38 <prvProcessTimerOrBlockTask+0x86> @ imm = #-0x2
;     }
 8056f38: b004         	add	sp, #0x10
 8056f3a: bd80         	pop	{r7, pc}

08056f3c <prvProcessReceivedCommands>:
;     {
 8056f3c: b580         	push	{r7, lr}
 8056f3e: 466f         	mov	r7, sp
 8056f40: b08a         	sub	sp, #0x28
;         while( xQueueReceive( xTimerQueue, &xMessage, tmrNO_DELAY ) != pdFAIL ) /*lint !e603 xMessage does not have to be initialised as it is passed out, not in, and it is not used unless xQueueReceive() returns pdTRUE. */
 8056f42: e7ff         	b	0x8056f44 <prvProcessReceivedCommands+0x8> @ imm = #-0x2
 8056f44: f240 20f0    	movw	r0, #0x2f0
 8056f48: f2c2 0000    	movt	r0, #0x2000
 8056f4c: 6800         	ldr	r0, [r0]
 8056f4e: a906         	add	r1, sp, #0x18
 8056f50: 2200         	movs	r2, #0x0
 8056f52: f000 fde2    	bl	0x8057b1a <xQueueReceive> @ imm = #0xbc4
 8056f56: 2800         	cmp	r0, #0x0
 8056f58: f000 80b1    	beq.w	0x80570be <prvProcessReceivedCommands+0x182> @ imm = #0x162
 8056f5c: e7ff         	b	0x8056f5e <prvProcessReceivedCommands+0x22> @ imm = #-0x2
;                 if( xMessage.xMessageID < ( BaseType_t ) 0 )
 8056f5e: 9806         	ldr	r0, [sp, #0x18]
 8056f60: f1b0 3fff    	cmp.w	r0, #0xffffffff
 8056f64: dc10         	bgt	0x8056f88 <prvProcessReceivedCommands+0x4c> @ imm = #0x20
 8056f66: e7ff         	b	0x8056f68 <prvProcessReceivedCommands+0x2c> @ imm = #-0x2
 8056f68: a806         	add	r0, sp, #0x18
;                     const CallbackParameters_t * const pxCallback = &( xMessage.u.xCallbackParameters );
 8056f6a: 3004         	adds	r0, #0x4
 8056f6c: 9002         	str	r0, [sp, #0x8]
;                     configASSERT( pxCallback );
 8056f6e: 9802         	ldr	r0, [sp, #0x8]
 8056f70: b920         	cbnz	r0, 0x8056f7c <prvProcessReceivedCommands+0x40> @ imm = #0x8
 8056f72: e7ff         	b	0x8056f74 <prvProcessReceivedCommands+0x38> @ imm = #-0x2
 8056f74: f001 f92b    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0x1256
 8056f78: e7ff         	b	0x8056f7a <prvProcessReceivedCommands+0x3e> @ imm = #-0x2
 8056f7a: e7fe         	b	0x8056f7a <prvProcessReceivedCommands+0x3e> @ imm = #-0x4
;                     pxCallback->pxCallbackFunction( pxCallback->pvParameter1, pxCallback->ulParameter2 );
 8056f7c: 9902         	ldr	r1, [sp, #0x8]
 8056f7e: 680a         	ldr	r2, [r1]
 8056f80: 6848         	ldr	r0, [r1, #0x4]
 8056f82: 6889         	ldr	r1, [r1, #0x8]
 8056f84: 4790         	blx	r2
;                 }
 8056f86: e000         	b	0x8056f8a <prvProcessReceivedCommands+0x4e> @ imm = #0x0
 8056f88: e7ff         	b	0x8056f8a <prvProcessReceivedCommands+0x4e> @ imm = #-0x2
;             if( xMessage.xMessageID >= ( BaseType_t ) 0 )
 8056f8a: 9806         	ldr	r0, [sp, #0x18]
 8056f8c: 2800         	cmp	r0, #0x0
 8056f8e: f100 8095    	bmi.w	0x80570bc <prvProcessReceivedCommands+0x180> @ imm = #0x12a
 8056f92: e7ff         	b	0x8056f94 <prvProcessReceivedCommands+0x58> @ imm = #-0x2
;                 pxTimer = xMessage.u.xTimerParameters.pxTimer;
 8056f94: 9808         	ldr	r0, [sp, #0x20]
 8056f96: 9005         	str	r0, [sp, #0x14]
;                 if( listIS_CONTAINED_WITHIN( NULL, &( pxTimer->xTimerListItem ) ) == pdFALSE ) /*lint !e961. The cast is only redundant when NULL is passed into the macro. */
 8056f98: 9805         	ldr	r0, [sp, #0x14]
 8056f9a: 6940         	ldr	r0, [r0, #0x14]
 8056f9c: b128         	cbz	r0, 0x8056faa <prvProcessReceivedCommands+0x6e> @ imm = #0xa
 8056f9e: e7ff         	b	0x8056fa0 <prvProcessReceivedCommands+0x64> @ imm = #-0x2
;                     ( void ) uxListRemove( &( pxTimer->xTimerListItem ) );
 8056fa0: 9805         	ldr	r0, [sp, #0x14]
 8056fa2: 3004         	adds	r0, #0x4
 8056fa4: f000 fc63    	bl	0x805786e <uxListRemove> @ imm = #0x8c6
;                 }
 8056fa8: e000         	b	0x8056fac <prvProcessReceivedCommands+0x70> @ imm = #0x0
 8056faa: e7ff         	b	0x8056fac <prvProcessReceivedCommands+0x70> @ imm = #-0x2
 8056fac: a804         	add	r0, sp, #0x10
;                 xTimeNow = prvSampleTimeNow( &xTimerListsWereSwitched );
 8056fae: f000 f888    	bl	0x80570c2 <prvSampleTimeNow> @ imm = #0x110
 8056fb2: 9003         	str	r0, [sp, #0xc]
;                 switch( xMessage.xMessageID )
 8056fb4: 9806         	ldr	r0, [sp, #0x18]
 8056fb6: 9001         	str	r0, [sp, #0x4]
 8056fb8: 3801         	subs	r0, #0x1
 8056fba: 2802         	cmp	r0, #0x2
 8056fbc: d319         	blo	0x8056ff2 <prvProcessReceivedCommands+0xb6> @ imm = #0x32
 8056fbe: e7ff         	b	0x8056fc0 <prvProcessReceivedCommands+0x84> @ imm = #-0x2
 8056fc0: 9801         	ldr	r0, [sp, #0x4]
 8056fc2: 2803         	cmp	r0, #0x3
 8056fc4: d042         	beq	0x805704c <prvProcessReceivedCommands+0x110> @ imm = #0x84
 8056fc6: e7ff         	b	0x8056fc8 <prvProcessReceivedCommands+0x8c> @ imm = #-0x2
 8056fc8: 9801         	ldr	r0, [sp, #0x4]
 8056fca: 2804         	cmp	r0, #0x4
 8056fcc: d046         	beq	0x805705c <prvProcessReceivedCommands+0x120> @ imm = #0x8c
 8056fce: e7ff         	b	0x8056fd0 <prvProcessReceivedCommands+0x94> @ imm = #-0x2
 8056fd0: 9801         	ldr	r0, [sp, #0x4]
 8056fd2: 2805         	cmp	r0, #0x5
 8056fd4: d05c         	beq	0x8057090 <prvProcessReceivedCommands+0x154> @ imm = #0xb8
 8056fd6: e7ff         	b	0x8056fd8 <prvProcessReceivedCommands+0x9c> @ imm = #-0x2
 8056fd8: 9801         	ldr	r0, [sp, #0x4]
 8056fda: 3806         	subs	r0, #0x6
 8056fdc: 2802         	cmp	r0, #0x2
 8056fde: d308         	blo	0x8056ff2 <prvProcessReceivedCommands+0xb6> @ imm = #0x10
 8056fe0: e7ff         	b	0x8056fe2 <prvProcessReceivedCommands+0xa6> @ imm = #-0x2
 8056fe2: 9801         	ldr	r0, [sp, #0x4]
 8056fe4: 2808         	cmp	r0, #0x8
 8056fe6: d031         	beq	0x805704c <prvProcessReceivedCommands+0x110> @ imm = #0x62
 8056fe8: e7ff         	b	0x8056fea <prvProcessReceivedCommands+0xae> @ imm = #-0x2
 8056fea: 9801         	ldr	r0, [sp, #0x4]
 8056fec: 2809         	cmp	r0, #0x9
 8056fee: d035         	beq	0x805705c <prvProcessReceivedCommands+0x120> @ imm = #0x6a
 8056ff0: e062         	b	0x80570b8 <prvProcessReceivedCommands+0x17c> @ imm = #0xc4
;                         pxTimer->ucStatus |= ( uint8_t ) tmrSTATUS_IS_ACTIVE;
 8056ff2: 9905         	ldr	r1, [sp, #0x14]
 8056ff4: f891 0028    	ldrb.w	r0, [r1, #0x28]
 8056ff8: f040 0001    	orr	r0, r0, #0x1
 8056ffc: f881 0028    	strb.w	r0, [r1, #0x28]
;                         if( prvInsertTimerInActiveList( pxTimer, xMessage.u.xTimerParameters.xMessageValue + pxTimer->xTimerPeriodInTicks, xTimeNow, xMessage.u.xTimerParameters.xMessageValue ) != pdFALSE )
 8057000: 9805         	ldr	r0, [sp, #0x14]
 8057002: 9b07         	ldr	r3, [sp, #0x1c]
 8057004: 6981         	ldr	r1, [r0, #0x18]
 8057006: 4419         	add	r1, r3
 8057008: 9a03         	ldr	r2, [sp, #0xc]
 805700a: f000 f8ed    	bl	0x80571e8 <prvInsertTimerInActiveList> @ imm = #0x1da
 805700e: b1d8         	cbz	r0, 0x8057048 <prvProcessReceivedCommands+0x10c> @ imm = #0x36
 8057010: e7ff         	b	0x8057012 <prvProcessReceivedCommands+0xd6> @ imm = #-0x2
;                             if( ( pxTimer->ucStatus & tmrSTATUS_IS_AUTORELOAD ) != 0 )
 8057012: 9805         	ldr	r0, [sp, #0x14]
 8057014: f890 0028    	ldrb.w	r0, [r0, #0x28]
 8057018: 0740         	lsls	r0, r0, #0x1d
 805701a: 2800         	cmp	r0, #0x0
 805701c: d508         	bpl	0x8057030 <prvProcessReceivedCommands+0xf4> @ imm = #0x10
 805701e: e7ff         	b	0x8057020 <prvProcessReceivedCommands+0xe4> @ imm = #-0x2
;                                 prvReloadTimer( pxTimer, xMessage.u.xTimerParameters.xMessageValue + pxTimer->xTimerPeriodInTicks, xTimeNow );
 8057020: 9805         	ldr	r0, [sp, #0x14]
 8057022: 9907         	ldr	r1, [sp, #0x1c]
 8057024: 6982         	ldr	r2, [r0, #0x18]
 8057026: 4411         	add	r1, r2
 8057028: 9a03         	ldr	r2, [sp, #0xc]
 805702a: f000 f8c2    	bl	0x80571b2 <prvReloadTimer> @ imm = #0x184
;                             }
 805702e: e007         	b	0x8057040 <prvProcessReceivedCommands+0x104> @ imm = #0xe
;                                 pxTimer->ucStatus &= ( ( uint8_t ) ~tmrSTATUS_IS_ACTIVE );
 8057030: 9905         	ldr	r1, [sp, #0x14]
 8057032: f891 0028    	ldrb.w	r0, [r1, #0x28]
 8057036: f000 00fe    	and	r0, r0, #0xfe
 805703a: f881 0028    	strb.w	r0, [r1, #0x28]
 805703e: e7ff         	b	0x8057040 <prvProcessReceivedCommands+0x104> @ imm = #-0x2
;                             pxTimer->pxCallbackFunction( ( TimerHandle_t ) pxTimer );
 8057040: 9805         	ldr	r0, [sp, #0x14]
 8057042: 6a01         	ldr	r1, [r0, #0x20]
 8057044: 4788         	blx	r1
;                         }
 8057046: e000         	b	0x805704a <prvProcessReceivedCommands+0x10e> @ imm = #0x0
 8057048: e7ff         	b	0x805704a <prvProcessReceivedCommands+0x10e> @ imm = #-0x2
;                         break;
 805704a: e036         	b	0x80570ba <prvProcessReceivedCommands+0x17e> @ imm = #0x6c
;                         pxTimer->ucStatus &= ( ( uint8_t ) ~tmrSTATUS_IS_ACTIVE );
 805704c: 9905         	ldr	r1, [sp, #0x14]
 805704e: f891 0028    	ldrb.w	r0, [r1, #0x28]
 8057052: f000 00fe    	and	r0, r0, #0xfe
 8057056: f881 0028    	strb.w	r0, [r1, #0x28]
;                         break;
 805705a: e02e         	b	0x80570ba <prvProcessReceivedCommands+0x17e> @ imm = #0x5c
;                         pxTimer->ucStatus |= ( uint8_t ) tmrSTATUS_IS_ACTIVE;
 805705c: 9905         	ldr	r1, [sp, #0x14]
 805705e: f891 0028    	ldrb.w	r0, [r1, #0x28]
 8057062: f040 0001    	orr	r0, r0, #0x1
 8057066: f881 0028    	strb.w	r0, [r1, #0x28]
;                         pxTimer->xTimerPeriodInTicks = xMessage.u.xTimerParameters.xMessageValue;
 805706a: 9807         	ldr	r0, [sp, #0x1c]
 805706c: 9905         	ldr	r1, [sp, #0x14]
 805706e: 6188         	str	r0, [r1, #0x18]
;                         configASSERT( ( pxTimer->xTimerPeriodInTicks > 0 ) );
 8057070: 9805         	ldr	r0, [sp, #0x14]
 8057072: 6980         	ldr	r0, [r0, #0x18]
 8057074: b920         	cbnz	r0, 0x8057080 <prvProcessReceivedCommands+0x144> @ imm = #0x8
 8057076: e7ff         	b	0x8057078 <prvProcessReceivedCommands+0x13c> @ imm = #-0x2
 8057078: f001 f8a9    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0x1152
 805707c: e7ff         	b	0x805707e <prvProcessReceivedCommands+0x142> @ imm = #-0x2
 805707e: e7fe         	b	0x805707e <prvProcessReceivedCommands+0x142> @ imm = #-0x4
;                         ( void ) prvInsertTimerInActiveList( pxTimer, ( xTimeNow + pxTimer->xTimerPeriodInTicks ), xTimeNow, xTimeNow );
 8057080: 9805         	ldr	r0, [sp, #0x14]
 8057082: 9b03         	ldr	r3, [sp, #0xc]
 8057084: 6981         	ldr	r1, [r0, #0x18]
 8057086: 4419         	add	r1, r3
 8057088: 461a         	mov	r2, r3
 805708a: f000 f8ad    	bl	0x80571e8 <prvInsertTimerInActiveList> @ imm = #0x15a
;                         break;
 805708e: e014         	b	0x80570ba <prvProcessReceivedCommands+0x17e> @ imm = #0x28
;                             if( ( pxTimer->ucStatus & tmrSTATUS_IS_STATICALLY_ALLOCATED ) == ( uint8_t ) 0 )
 8057090: 9805         	ldr	r0, [sp, #0x14]
 8057092: f890 0028    	ldrb.w	r0, [r0, #0x28]
 8057096: 0780         	lsls	r0, r0, #0x1e
 8057098: 2800         	cmp	r0, #0x0
 805709a: d404         	bmi	0x80570a6 <prvProcessReceivedCommands+0x16a> @ imm = #0x8
 805709c: e7ff         	b	0x805709e <prvProcessReceivedCommands+0x162> @ imm = #-0x2
;                                 vPortFree( pxTimer );
 805709e: 9805         	ldr	r0, [sp, #0x14]
 80570a0: f000 fa94    	bl	0x80575cc <vPortFree>   @ imm = #0x528
;                             }
 80570a4: e007         	b	0x80570b6 <prvProcessReceivedCommands+0x17a> @ imm = #0xe
;                                 pxTimer->ucStatus &= ( ( uint8_t ) ~tmrSTATUS_IS_ACTIVE );
 80570a6: 9905         	ldr	r1, [sp, #0x14]
 80570a8: f891 0028    	ldrb.w	r0, [r1, #0x28]
 80570ac: f000 00fe    	and	r0, r0, #0xfe
 80570b0: f881 0028    	strb.w	r0, [r1, #0x28]
 80570b4: e7ff         	b	0x80570b6 <prvProcessReceivedCommands+0x17a> @ imm = #-0x2
;                         break;
 80570b6: e000         	b	0x80570ba <prvProcessReceivedCommands+0x17e> @ imm = #0x0
;                         break;
 80570b8: e7ff         	b	0x80570ba <prvProcessReceivedCommands+0x17e> @ imm = #-0x2
;             }
 80570ba: e7ff         	b	0x80570bc <prvProcessReceivedCommands+0x180> @ imm = #-0x2
;         while( xQueueReceive( xTimerQueue, &xMessage, tmrNO_DELAY ) != pdFAIL ) /*lint !e603 xMessage does not have to be initialised as it is passed out, not in, and it is not used unless xQueueReceive() returns pdTRUE. */
 80570bc: e742         	b	0x8056f44 <prvProcessReceivedCommands+0x8> @ imm = #-0x17c
;     }
 80570be: b00a         	add	sp, #0x28
 80570c0: bd80         	pop	{r7, pc}

080570c2 <prvSampleTimeNow>:
;     {
 80570c2: b580         	push	{r7, lr}
 80570c4: 466f         	mov	r7, sp
 80570c6: b082         	sub	sp, #0x8
 80570c8: 9001         	str	r0, [sp, #0x4]
;         xTimeNow = xTaskGetTickCount();
 80570ca: f7ff fb77    	bl	0x80567bc <xTaskGetTickCount> @ imm = #-0x912
 80570ce: 9000         	str	r0, [sp]
;         if( xTimeNow < xLastTime )
 80570d0: 9800         	ldr	r0, [sp]
 80570d2: f240 3100    	movw	r1, #0x300
 80570d6: f2c2 0100    	movt	r1, #0x2000
 80570da: 6809         	ldr	r1, [r1]
 80570dc: 4288         	cmp	r0, r1
 80570de: d206         	bhs	0x80570ee <prvSampleTimeNow+0x2c> @ imm = #0xc
 80570e0: e7ff         	b	0x80570e2 <prvSampleTimeNow+0x20> @ imm = #-0x2
;             prvSwitchTimerLists();
 80570e2: f000 f83c    	bl	0x805715e <prvSwitchTimerLists> @ imm = #0x78
;             *pxTimerListsWereSwitched = pdTRUE;
 80570e6: 9901         	ldr	r1, [sp, #0x4]
 80570e8: 2001         	movs	r0, #0x1
 80570ea: 6008         	str	r0, [r1]
;         }
 80570ec: e003         	b	0x80570f6 <prvSampleTimeNow+0x34> @ imm = #0x6
;             *pxTimerListsWereSwitched = pdFALSE;
 80570ee: 9901         	ldr	r1, [sp, #0x4]
 80570f0: 2000         	movs	r0, #0x0
 80570f2: 6008         	str	r0, [r1]
 80570f4: e7ff         	b	0x80570f6 <prvSampleTimeNow+0x34> @ imm = #-0x2
;         xLastTime = xTimeNow;
 80570f6: 9800         	ldr	r0, [sp]
 80570f8: f240 3100    	movw	r1, #0x300
 80570fc: f2c2 0100    	movt	r1, #0x2000
 8057100: 6008         	str	r0, [r1]
;         return xTimeNow;
 8057102: 9800         	ldr	r0, [sp]
 8057104: b002         	add	sp, #0x8
 8057106: bd80         	pop	{r7, pc}

08057108 <prvProcessExpiredTimer>:
;     {
 8057108: b580         	push	{r7, lr}
 805710a: 466f         	mov	r7, sp
 805710c: b084         	sub	sp, #0x10
 805710e: 9003         	str	r0, [sp, #0xc]
 8057110: 9102         	str	r1, [sp, #0x8]
;         Timer_t * const pxTimer = ( Timer_t * ) listGET_OWNER_OF_HEAD_ENTRY( pxCurrentTimerList ); /*lint !e9087 !e9079 void * is used as this macro is used with tasks and co-routines too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
 8057112: f240 20f8    	movw	r0, #0x2f8
 8057116: f2c2 0000    	movt	r0, #0x2000
 805711a: 6800         	ldr	r0, [r0]
 805711c: 68c0         	ldr	r0, [r0, #0xc]
 805711e: 68c0         	ldr	r0, [r0, #0xc]
 8057120: 9001         	str	r0, [sp, #0x4]
;         ( void ) uxListRemove( &( pxTimer->xTimerListItem ) );
 8057122: 9801         	ldr	r0, [sp, #0x4]
 8057124: 3004         	adds	r0, #0x4
 8057126: f000 fba2    	bl	0x805786e <uxListRemove> @ imm = #0x744
;         if( ( pxTimer->ucStatus & tmrSTATUS_IS_AUTORELOAD ) != 0 )
 805712a: 9801         	ldr	r0, [sp, #0x4]
 805712c: f890 0028    	ldrb.w	r0, [r0, #0x28]
 8057130: 0740         	lsls	r0, r0, #0x1d
 8057132: 2800         	cmp	r0, #0x0
 8057134: d506         	bpl	0x8057144 <prvProcessExpiredTimer+0x3c> @ imm = #0xc
 8057136: e7ff         	b	0x8057138 <prvProcessExpiredTimer+0x30> @ imm = #-0x2
;             prvReloadTimer( pxTimer, xNextExpireTime, xTimeNow );
 8057138: 9801         	ldr	r0, [sp, #0x4]
 805713a: 9903         	ldr	r1, [sp, #0xc]
 805713c: 9a02         	ldr	r2, [sp, #0x8]
 805713e: f000 f838    	bl	0x80571b2 <prvReloadTimer> @ imm = #0x70
;         }
 8057142: e007         	b	0x8057154 <prvProcessExpiredTimer+0x4c> @ imm = #0xe
;             pxTimer->ucStatus &= ( ( uint8_t ) ~tmrSTATUS_IS_ACTIVE );
 8057144: 9901         	ldr	r1, [sp, #0x4]
 8057146: f891 0028    	ldrb.w	r0, [r1, #0x28]
 805714a: f000 00fe    	and	r0, r0, #0xfe
 805714e: f881 0028    	strb.w	r0, [r1, #0x28]
 8057152: e7ff         	b	0x8057154 <prvProcessExpiredTimer+0x4c> @ imm = #-0x2
;         pxTimer->pxCallbackFunction( ( TimerHandle_t ) pxTimer );
 8057154: 9801         	ldr	r0, [sp, #0x4]
 8057156: 6a01         	ldr	r1, [r0, #0x20]
 8057158: 4788         	blx	r1
;     }
 805715a: b004         	add	sp, #0x10
 805715c: bd80         	pop	{r7, pc}

0805715e <prvSwitchTimerLists>:
;     {
 805715e: b580         	push	{r7, lr}
 8057160: 466f         	mov	r7, sp
 8057162: b082         	sub	sp, #0x8
;         while( listLIST_IS_EMPTY( pxCurrentTimerList ) == pdFALSE )
 8057164: e7ff         	b	0x8057166 <prvSwitchTimerLists+0x8> @ imm = #-0x2
 8057166: f240 20f8    	movw	r0, #0x2f8
 805716a: f2c2 0000    	movt	r0, #0x2000
 805716e: 6800         	ldr	r0, [r0]
 8057170: 6800         	ldr	r0, [r0]
 8057172: b170         	cbz	r0, 0x8057192 <prvSwitchTimerLists+0x34> @ imm = #0x1c
 8057174: e7ff         	b	0x8057176 <prvSwitchTimerLists+0x18> @ imm = #-0x2
;             xNextExpireTime = listGET_ITEM_VALUE_OF_HEAD_ENTRY( pxCurrentTimerList );
 8057176: f240 20f8    	movw	r0, #0x2f8
 805717a: f2c2 0000    	movt	r0, #0x2000
 805717e: 6800         	ldr	r0, [r0]
 8057180: 68c0         	ldr	r0, [r0, #0xc]
 8057182: 6800         	ldr	r0, [r0]
 8057184: 9001         	str	r0, [sp, #0x4]
;             prvProcessExpiredTimer( xNextExpireTime, tmrMAX_TIME_BEFORE_OVERFLOW );
 8057186: 9801         	ldr	r0, [sp, #0x4]
 8057188: f04f 31ff    	mov.w	r1, #0xffffffff
 805718c: f7ff ffbc    	bl	0x8057108 <prvProcessExpiredTimer> @ imm = #-0x88
;         while( listLIST_IS_EMPTY( pxCurrentTimerList ) == pdFALSE )
 8057190: e7e9         	b	0x8057166 <prvSwitchTimerLists+0x8> @ imm = #-0x2e
;         pxTemp = pxCurrentTimerList;
 8057192: f240 22f8    	movw	r2, #0x2f8
 8057196: f2c2 0200    	movt	r2, #0x2000
 805719a: 6810         	ldr	r0, [r2]
 805719c: 9000         	str	r0, [sp]
;         pxCurrentTimerList = pxOverflowTimerList;
 805719e: f240 21fc    	movw	r1, #0x2fc
 80571a2: f2c2 0100    	movt	r1, #0x2000
 80571a6: 6808         	ldr	r0, [r1]
 80571a8: 6010         	str	r0, [r2]
;         pxOverflowTimerList = pxTemp;
 80571aa: 9800         	ldr	r0, [sp]
 80571ac: 6008         	str	r0, [r1]
;     }
 80571ae: b002         	add	sp, #0x8
 80571b0: bd80         	pop	{r7, pc}

080571b2 <prvReloadTimer>:
;     {
 80571b2: b580         	push	{r7, lr}
 80571b4: 466f         	mov	r7, sp
 80571b6: b084         	sub	sp, #0x10
 80571b8: 9003         	str	r0, [sp, #0xc]
 80571ba: 9102         	str	r1, [sp, #0x8]
 80571bc: 9201         	str	r2, [sp, #0x4]
;         while( prvInsertTimerInActiveList( pxTimer, ( xExpiredTime + pxTimer->xTimerPeriodInTicks ), xTimeNow, xExpiredTime ) != pdFALSE )
 80571be: e7ff         	b	0x80571c0 <prvReloadTimer+0xe> @ imm = #-0x2
 80571c0: 9803         	ldr	r0, [sp, #0xc]
 80571c2: 9b02         	ldr	r3, [sp, #0x8]
 80571c4: 6981         	ldr	r1, [r0, #0x18]
 80571c6: 4419         	add	r1, r3
 80571c8: 9a01         	ldr	r2, [sp, #0x4]
 80571ca: f000 f80d    	bl	0x80571e8 <prvInsertTimerInActiveList> @ imm = #0x1a
 80571ce: b148         	cbz	r0, 0x80571e4 <prvReloadTimer+0x32> @ imm = #0x12
 80571d0: e7ff         	b	0x80571d2 <prvReloadTimer+0x20> @ imm = #-0x2
;             xExpiredTime += pxTimer->xTimerPeriodInTicks;
 80571d2: 9803         	ldr	r0, [sp, #0xc]
 80571d4: 6981         	ldr	r1, [r0, #0x18]
 80571d6: 9802         	ldr	r0, [sp, #0x8]
 80571d8: 4408         	add	r0, r1
 80571da: 9002         	str	r0, [sp, #0x8]
;             pxTimer->pxCallbackFunction( ( TimerHandle_t ) pxTimer );
 80571dc: 9803         	ldr	r0, [sp, #0xc]
 80571de: 6a01         	ldr	r1, [r0, #0x20]
 80571e0: 4788         	blx	r1
;         while( prvInsertTimerInActiveList( pxTimer, ( xExpiredTime + pxTimer->xTimerPeriodInTicks ), xTimeNow, xExpiredTime ) != pdFALSE )
 80571e2: e7ed         	b	0x80571c0 <prvReloadTimer+0xe> @ imm = #-0x26
;     }
 80571e4: b004         	add	sp, #0x10
 80571e6: bd80         	pop	{r7, pc}

080571e8 <prvInsertTimerInActiveList>:
;     {
 80571e8: b580         	push	{r7, lr}
 80571ea: 466f         	mov	r7, sp
 80571ec: b086         	sub	sp, #0x18
 80571ee: 9005         	str	r0, [sp, #0x14]
 80571f0: 9104         	str	r1, [sp, #0x10]
 80571f2: 9203         	str	r2, [sp, #0xc]
 80571f4: 9302         	str	r3, [sp, #0x8]
 80571f6: 2000         	movs	r0, #0x0
;         BaseType_t xProcessTimerNow = pdFALSE;
 80571f8: 9001         	str	r0, [sp, #0x4]
;         listSET_LIST_ITEM_VALUE( &( pxTimer->xTimerListItem ), xNextExpiryTime );
 80571fa: 9804         	ldr	r0, [sp, #0x10]
 80571fc: 9905         	ldr	r1, [sp, #0x14]
 80571fe: 6048         	str	r0, [r1, #0x4]
;         listSET_LIST_ITEM_OWNER( &( pxTimer->xTimerListItem ), pxTimer );
 8057200: 9805         	ldr	r0, [sp, #0x14]
 8057202: 6100         	str	r0, [r0, #0x10]
;         if( xNextExpiryTime <= xTimeNow )
 8057204: 9804         	ldr	r0, [sp, #0x10]
 8057206: 9903         	ldr	r1, [sp, #0xc]
 8057208: 4288         	cmp	r0, r1
 805720a: d816         	bhi	0x805723a <prvInsertTimerInActiveList+0x52> @ imm = #0x2c
 805720c: e7ff         	b	0x805720e <prvInsertTimerInActiveList+0x26> @ imm = #-0x2
;             if( ( ( TickType_t ) ( xTimeNow - xCommandTime ) ) >= pxTimer->xTimerPeriodInTicks ) /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
 805720e: 9803         	ldr	r0, [sp, #0xc]
 8057210: 9902         	ldr	r1, [sp, #0x8]
 8057212: 1a40         	subs	r0, r0, r1
 8057214: 9905         	ldr	r1, [sp, #0x14]
 8057216: 6989         	ldr	r1, [r1, #0x18]
 8057218: 4288         	cmp	r0, r1
 805721a: d303         	blo	0x8057224 <prvInsertTimerInActiveList+0x3c> @ imm = #0x6
 805721c: e7ff         	b	0x805721e <prvInsertTimerInActiveList+0x36> @ imm = #-0x2
 805721e: 2001         	movs	r0, #0x1
;                 xProcessTimerNow = pdTRUE;
 8057220: 9001         	str	r0, [sp, #0x4]
;             }
 8057222: e009         	b	0x8057238 <prvInsertTimerInActiveList+0x50> @ imm = #0x12
;                 vListInsert( pxOverflowTimerList, &( pxTimer->xTimerListItem ) );
 8057224: f240 20fc    	movw	r0, #0x2fc
 8057228: f2c2 0000    	movt	r0, #0x2000
 805722c: 6800         	ldr	r0, [r0]
 805722e: 9905         	ldr	r1, [sp, #0x14]
 8057230: 3104         	adds	r1, #0x4
 8057232: f000 fae7    	bl	0x8057804 <vListInsert> @ imm = #0x5ce
 8057236: e7ff         	b	0x8057238 <prvInsertTimerInActiveList+0x50> @ imm = #-0x2
;         }
 8057238: e017         	b	0x805726a <prvInsertTimerInActiveList+0x82> @ imm = #0x2e
;             if( ( xTimeNow < xCommandTime ) && ( xNextExpiryTime >= xCommandTime ) )
 805723a: 9803         	ldr	r0, [sp, #0xc]
 805723c: 9902         	ldr	r1, [sp, #0x8]
 805723e: 4288         	cmp	r0, r1
 8057240: d208         	bhs	0x8057254 <prvInsertTimerInActiveList+0x6c> @ imm = #0x10
 8057242: e7ff         	b	0x8057244 <prvInsertTimerInActiveList+0x5c> @ imm = #-0x2
 8057244: 9804         	ldr	r0, [sp, #0x10]
 8057246: 9902         	ldr	r1, [sp, #0x8]
 8057248: 4288         	cmp	r0, r1
 805724a: d303         	blo	0x8057254 <prvInsertTimerInActiveList+0x6c> @ imm = #0x6
 805724c: e7ff         	b	0x805724e <prvInsertTimerInActiveList+0x66> @ imm = #-0x2
 805724e: 2001         	movs	r0, #0x1
;                 xProcessTimerNow = pdTRUE;
 8057250: 9001         	str	r0, [sp, #0x4]
;             }
 8057252: e009         	b	0x8057268 <prvInsertTimerInActiveList+0x80> @ imm = #0x12
;                 vListInsert( pxCurrentTimerList, &( pxTimer->xTimerListItem ) );
 8057254: f240 20f8    	movw	r0, #0x2f8
 8057258: f2c2 0000    	movt	r0, #0x2000
 805725c: 6800         	ldr	r0, [r0]
 805725e: 9905         	ldr	r1, [sp, #0x14]
 8057260: 3104         	adds	r1, #0x4
 8057262: f000 facf    	bl	0x8057804 <vListInsert> @ imm = #0x59e
 8057266: e7ff         	b	0x8057268 <prvInsertTimerInActiveList+0x80> @ imm = #-0x2
 8057268: e7ff         	b	0x805726a <prvInsertTimerInActiveList+0x82> @ imm = #-0x2
;         return xProcessTimerNow;
 805726a: 9801         	ldr	r0, [sp, #0x4]
 805726c: b006         	add	sp, #0x18
 805726e: bd80         	pop	{r7, pc}

08057270 <pvPortMalloc>:
; {
 8057270: b580         	push	{r7, lr}
 8057272: 466f         	mov	r7, sp
 8057274: b08a         	sub	sp, #0x28
 8057276: 9009         	str	r0, [sp, #0x24]
 8057278: 2000         	movs	r0, #0x0
;     void * pvReturn = NULL;
 805727a: 9005         	str	r0, [sp, #0x14]
;     if( xWantedSize > 0 )
 805727c: 9809         	ldr	r0, [sp, #0x24]
 805727e: b340         	cbz	r0, 0x80572d2 <pvPortMalloc+0x62> @ imm = #0x50
 8057280: e7ff         	b	0x8057282 <pvPortMalloc+0x12> @ imm = #-0x2
;         if( heapADD_WILL_OVERFLOW( xWantedSize, xHeapStructSize ) == 0 )
 8057282: 9809         	ldr	r0, [sp, #0x24]
 8057284: f110 0f09    	cmn.w	r0, #0x9
 8057288: d81f         	bhi	0x80572ca <pvPortMalloc+0x5a> @ imm = #0x3e
 805728a: e7ff         	b	0x805728c <pvPortMalloc+0x1c> @ imm = #-0x2
;             xWantedSize += xHeapStructSize;
 805728c: 9809         	ldr	r0, [sp, #0x24]
 805728e: 3008         	adds	r0, #0x8
 8057290: 9009         	str	r0, [sp, #0x24]
;             if( ( xWantedSize & portBYTE_ALIGNMENT_MASK ) != 0x00 )
 8057292: f89d 0024    	ldrb.w	r0, [sp, #0x24]
 8057296: 0740         	lsls	r0, r0, #0x1d
 8057298: b1a8         	cbz	r0, 0x80572c6 <pvPortMalloc+0x56> @ imm = #0x2a
 805729a: e7ff         	b	0x805729c <pvPortMalloc+0x2c> @ imm = #-0x2
;                 xAdditionalRequiredSize = portBYTE_ALIGNMENT - ( xWantedSize & portBYTE_ALIGNMENT_MASK );
 805729c: 9809         	ldr	r0, [sp, #0x24]
 805729e: f000 0007    	and	r0, r0, #0x7
 80572a2: f1c0 0008    	rsb.w	r0, r0, #0x8
 80572a6: 9004         	str	r0, [sp, #0x10]
;                 if( heapADD_WILL_OVERFLOW( xWantedSize, xAdditionalRequiredSize ) == 0 )
 80572a8: 9809         	ldr	r0, [sp, #0x24]
 80572aa: 9904         	ldr	r1, [sp, #0x10]
 80572ac: 43c9         	mvns	r1, r1
 80572ae: 4288         	cmp	r0, r1
 80572b0: d805         	bhi	0x80572be <pvPortMalloc+0x4e> @ imm = #0xa
 80572b2: e7ff         	b	0x80572b4 <pvPortMalloc+0x44> @ imm = #-0x2
;                     xWantedSize += xAdditionalRequiredSize;
 80572b4: 9904         	ldr	r1, [sp, #0x10]
 80572b6: 9809         	ldr	r0, [sp, #0x24]
 80572b8: 4408         	add	r0, r1
 80572ba: 9009         	str	r0, [sp, #0x24]
;                 }
 80572bc: e002         	b	0x80572c4 <pvPortMalloc+0x54> @ imm = #0x4
 80572be: 2000         	movs	r0, #0x0
;                     xWantedSize = 0;
 80572c0: 9009         	str	r0, [sp, #0x24]
 80572c2: e7ff         	b	0x80572c4 <pvPortMalloc+0x54> @ imm = #-0x2
;             }
 80572c4: e000         	b	0x80572c8 <pvPortMalloc+0x58> @ imm = #0x0
 80572c6: e7ff         	b	0x80572c8 <pvPortMalloc+0x58> @ imm = #-0x2
;         }
 80572c8: e002         	b	0x80572d0 <pvPortMalloc+0x60> @ imm = #0x4
 80572ca: 2000         	movs	r0, #0x0
;             xWantedSize = 0;
 80572cc: 9009         	str	r0, [sp, #0x24]
 80572ce: e7ff         	b	0x80572d0 <pvPortMalloc+0x60> @ imm = #-0x2
;     }
 80572d0: e000         	b	0x80572d4 <pvPortMalloc+0x64> @ imm = #0x0
 80572d2: e7ff         	b	0x80572d4 <pvPortMalloc+0x64> @ imm = #-0x2
;     vTaskSuspendAll();
 80572d4: f7fe fe7c    	bl	0x8055fd0 <vTaskSuspendAll> @ imm = #-0x1308
;         if( pxEnd == NULL )
 80572d8: f240 302c    	movw	r0, #0x32c
 80572dc: f2c2 0000    	movt	r0, #0x2000
 80572e0: 6800         	ldr	r0, [r0]
 80572e2: b918         	cbnz	r0, 0x80572ec <pvPortMalloc+0x7c> @ imm = #0x6
 80572e4: e7ff         	b	0x80572e6 <pvPortMalloc+0x76> @ imm = #-0x2
;             prvHeapInit();
 80572e6: f000 f91c    	bl	0x8057522 <prvHeapInit> @ imm = #0x238
;         }
 80572ea: e000         	b	0x80572ee <pvPortMalloc+0x7e> @ imm = #0x0
 80572ec: e7ff         	b	0x80572ee <pvPortMalloc+0x7e> @ imm = #-0x2
;         if( heapBLOCK_SIZE_IS_VALID( xWantedSize ) != 0 )
 80572ee: f89d 0027    	ldrb.w	r0, [sp, #0x27]
 80572f2: 0600         	lsls	r0, r0, #0x18
 80572f4: 2800         	cmp	r0, #0x0
 80572f6: f100 8105    	bmi.w	0x8057504 <pvPortMalloc+0x294> @ imm = #0x20a
 80572fa: e7ff         	b	0x80572fc <pvPortMalloc+0x8c> @ imm = #-0x2
;             if( ( xWantedSize > 0 ) && ( xWantedSize <= xFreeBytesRemaining ) )
 80572fc: 9809         	ldr	r0, [sp, #0x24]
 80572fe: 2800         	cmp	r0, #0x0
 8057300: f000 80fe    	beq.w	0x8057500 <pvPortMalloc+0x290> @ imm = #0x1fc
 8057304: e7ff         	b	0x8057306 <pvPortMalloc+0x96> @ imm = #-0x2
 8057306: 9809         	ldr	r0, [sp, #0x24]
 8057308: f240 3130    	movw	r1, #0x330
 805730c: f2c2 0100    	movt	r1, #0x2000
 8057310: 6809         	ldr	r1, [r1]
 8057312: 4288         	cmp	r0, r1
 8057314: f200 80f4    	bhi.w	0x8057500 <pvPortMalloc+0x290> @ imm = #0x1e8
 8057318: e7ff         	b	0x805731a <pvPortMalloc+0xaa> @ imm = #-0x2
;                 pxPreviousBlock = &xStart;
 805731a: f240 3034    	movw	r0, #0x334
 805731e: f2c2 0000    	movt	r0, #0x2000
 8057322: 9007         	str	r0, [sp, #0x1c]
;                 pxBlock = heapPROTECT_BLOCK_POINTER( xStart.pxNextFreeBlock );
 8057324: 6800         	ldr	r0, [r0]
 8057326: 9008         	str	r0, [sp, #0x20]
;                 heapVALIDATE_BLOCK_POINTER( pxBlock );
 8057328: 9908         	ldr	r1, [sp, #0x20]
 805732a: 2000         	movs	r0, #0x0
 805732c: f240 323c    	movw	r2, #0x33c
 8057330: f2c2 0200    	movt	r2, #0x2000
 8057334: 4291         	cmp	r1, r2
 8057336: 9003         	str	r0, [sp, #0xc]
 8057338: d30e         	blo	0x8057358 <pvPortMalloc+0xe8> @ imm = #0x1c
 805733a: e7ff         	b	0x805733c <pvPortMalloc+0xcc> @ imm = #-0x2
 805733c: 9908         	ldr	r1, [sp, #0x20]
 805733e: f240 303c    	movw	r0, #0x33c
 8057342: f2c2 0000    	movt	r0, #0x2000
 8057346: f641 72ff    	movw	r2, #0x1fff
 805734a: 4402         	add	r2, r0
 805734c: 2000         	movs	r0, #0x0
 805734e: 4291         	cmp	r1, r2
 8057350: bf98         	it	ls
 8057352: 2001         	movls	r0, #0x1
 8057354: 9003         	str	r0, [sp, #0xc]
 8057356: e7ff         	b	0x8057358 <pvPortMalloc+0xe8> @ imm = #-0x2
 8057358: 9803         	ldr	r0, [sp, #0xc]
;                 heapVALIDATE_BLOCK_POINTER( pxBlock );
 805735a: 07c0         	lsls	r0, r0, #0x1f
 805735c: b920         	cbnz	r0, 0x8057368 <pvPortMalloc+0xf8> @ imm = #0x8
 805735e: e7ff         	b	0x8057360 <pvPortMalloc+0xf0> @ imm = #-0x2
 8057360: f000 ff35    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0xe6a
 8057364: e7ff         	b	0x8057366 <pvPortMalloc+0xf6> @ imm = #-0x2
 8057366: e7fe         	b	0x8057366 <pvPortMalloc+0xf6> @ imm = #-0x4
;                 while( ( pxBlock->xBlockSize < xWantedSize ) && ( pxBlock->pxNextFreeBlock != heapPROTECT_BLOCK_POINTER( NULL ) ) )
 8057368: e7ff         	b	0x805736a <pvPortMalloc+0xfa> @ imm = #-0x2
 805736a: 9808         	ldr	r0, [sp, #0x20]
 805736c: 6841         	ldr	r1, [r0, #0x4]
 805736e: 9a09         	ldr	r2, [sp, #0x24]
 8057370: 2000         	movs	r0, #0x0
 8057372: 4291         	cmp	r1, r2
 8057374: 9002         	str	r0, [sp, #0x8]
 8057376: d207         	bhs	0x8057388 <pvPortMalloc+0x118> @ imm = #0xe
 8057378: e7ff         	b	0x805737a <pvPortMalloc+0x10a> @ imm = #-0x2
 805737a: 9808         	ldr	r0, [sp, #0x20]
 805737c: 6800         	ldr	r0, [r0]
 805737e: 2800         	cmp	r0, #0x0
 8057380: bf18         	it	ne
 8057382: 2001         	movne	r0, #0x1
 8057384: 9002         	str	r0, [sp, #0x8]
 8057386: e7ff         	b	0x8057388 <pvPortMalloc+0x118> @ imm = #-0x2
 8057388: 9802         	ldr	r0, [sp, #0x8]
;                 while( ( pxBlock->xBlockSize < xWantedSize ) && ( pxBlock->pxNextFreeBlock != heapPROTECT_BLOCK_POINTER( NULL ) ) )
 805738a: 07c0         	lsls	r0, r0, #0x1f
 805738c: b330         	cbz	r0, 0x80573dc <pvPortMalloc+0x16c> @ imm = #0x4c
 805738e: e7ff         	b	0x8057390 <pvPortMalloc+0x120> @ imm = #-0x2
;                     pxPreviousBlock = pxBlock;
 8057390: 9808         	ldr	r0, [sp, #0x20]
 8057392: 9007         	str	r0, [sp, #0x1c]
;                     pxBlock = heapPROTECT_BLOCK_POINTER( pxBlock->pxNextFreeBlock );
 8057394: 9808         	ldr	r0, [sp, #0x20]
 8057396: 6800         	ldr	r0, [r0]
 8057398: 9008         	str	r0, [sp, #0x20]
;                     heapVALIDATE_BLOCK_POINTER( pxBlock );
 805739a: 9908         	ldr	r1, [sp, #0x20]
 805739c: 2000         	movs	r0, #0x0
 805739e: f240 323c    	movw	r2, #0x33c
 80573a2: f2c2 0200    	movt	r2, #0x2000
 80573a6: 4291         	cmp	r1, r2
 80573a8: 9001         	str	r0, [sp, #0x4]
 80573aa: d30e         	blo	0x80573ca <pvPortMalloc+0x15a> @ imm = #0x1c
 80573ac: e7ff         	b	0x80573ae <pvPortMalloc+0x13e> @ imm = #-0x2
 80573ae: 9908         	ldr	r1, [sp, #0x20]
 80573b0: f240 303c    	movw	r0, #0x33c
 80573b4: f2c2 0000    	movt	r0, #0x2000
 80573b8: f641 72ff    	movw	r2, #0x1fff
 80573bc: 4402         	add	r2, r0
 80573be: 2000         	movs	r0, #0x0
 80573c0: 4291         	cmp	r1, r2
 80573c2: bf98         	it	ls
 80573c4: 2001         	movls	r0, #0x1
 80573c6: 9001         	str	r0, [sp, #0x4]
 80573c8: e7ff         	b	0x80573ca <pvPortMalloc+0x15a> @ imm = #-0x2
 80573ca: 9801         	ldr	r0, [sp, #0x4]
;                     heapVALIDATE_BLOCK_POINTER( pxBlock );
 80573cc: 07c0         	lsls	r0, r0, #0x1f
 80573ce: b920         	cbnz	r0, 0x80573da <pvPortMalloc+0x16a> @ imm = #0x8
 80573d0: e7ff         	b	0x80573d2 <pvPortMalloc+0x162> @ imm = #-0x2
 80573d2: f000 fefc    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0xdf8
 80573d6: e7ff         	b	0x80573d8 <pvPortMalloc+0x168> @ imm = #-0x2
 80573d8: e7fe         	b	0x80573d8 <pvPortMalloc+0x168> @ imm = #-0x4
;                 while( ( pxBlock->xBlockSize < xWantedSize ) && ( pxBlock->pxNextFreeBlock != heapPROTECT_BLOCK_POINTER( NULL ) ) )
 80573da: e7c6         	b	0x805736a <pvPortMalloc+0xfa> @ imm = #-0x74
;                 if( pxBlock != pxEnd )
 80573dc: 9808         	ldr	r0, [sp, #0x20]
 80573de: f240 312c    	movw	r1, #0x32c
 80573e2: f2c2 0100    	movt	r1, #0x2000
 80573e6: 6809         	ldr	r1, [r1]
 80573e8: 4288         	cmp	r0, r1
 80573ea: f000 8087    	beq.w	0x80574fc <pvPortMalloc+0x28c> @ imm = #0x10e
 80573ee: e7ff         	b	0x80573f0 <pvPortMalloc+0x180> @ imm = #-0x2
;                     pvReturn = ( void * ) ( ( ( uint8_t * ) heapPROTECT_BLOCK_POINTER( pxPreviousBlock->pxNextFreeBlock ) ) + xHeapStructSize );
 80573f0: 9807         	ldr	r0, [sp, #0x1c]
 80573f2: 6800         	ldr	r0, [r0]
 80573f4: 3008         	adds	r0, #0x8
 80573f6: 9005         	str	r0, [sp, #0x14]
;                     heapVALIDATE_BLOCK_POINTER( pvReturn );
 80573f8: 9905         	ldr	r1, [sp, #0x14]
 80573fa: 2000         	movs	r0, #0x0
 80573fc: f240 323c    	movw	r2, #0x33c
 8057400: f2c2 0200    	movt	r2, #0x2000
 8057404: 4291         	cmp	r1, r2
 8057406: 9000         	str	r0, [sp]
 8057408: d30e         	blo	0x8057428 <pvPortMalloc+0x1b8> @ imm = #0x1c
 805740a: e7ff         	b	0x805740c <pvPortMalloc+0x19c> @ imm = #-0x2
 805740c: 9905         	ldr	r1, [sp, #0x14]
 805740e: f240 303c    	movw	r0, #0x33c
 8057412: f2c2 0000    	movt	r0, #0x2000
 8057416: f641 72ff    	movw	r2, #0x1fff
 805741a: 4402         	add	r2, r0
 805741c: 2000         	movs	r0, #0x0
 805741e: 4291         	cmp	r1, r2
 8057420: bf98         	it	ls
 8057422: 2001         	movls	r0, #0x1
 8057424: 9000         	str	r0, [sp]
 8057426: e7ff         	b	0x8057428 <pvPortMalloc+0x1b8> @ imm = #-0x2
 8057428: 9800         	ldr	r0, [sp]
;                     heapVALIDATE_BLOCK_POINTER( pvReturn );
 805742a: 07c0         	lsls	r0, r0, #0x1f
 805742c: b920         	cbnz	r0, 0x8057438 <pvPortMalloc+0x1c8> @ imm = #0x8
 805742e: e7ff         	b	0x8057430 <pvPortMalloc+0x1c0> @ imm = #-0x2
 8057430: f000 fecd    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0xd9a
 8057434: e7ff         	b	0x8057436 <pvPortMalloc+0x1c6> @ imm = #-0x2
 8057436: e7fe         	b	0x8057436 <pvPortMalloc+0x1c6> @ imm = #-0x4
;                     pxPreviousBlock->pxNextFreeBlock = pxBlock->pxNextFreeBlock;
 8057438: 9808         	ldr	r0, [sp, #0x20]
 805743a: 6800         	ldr	r0, [r0]
 805743c: 9907         	ldr	r1, [sp, #0x1c]
 805743e: 6008         	str	r0, [r1]
;                     configASSERT( heapSUBTRACT_WILL_UNDERFLOW( pxBlock->xBlockSize, xWantedSize ) == 0 );
 8057440: 9808         	ldr	r0, [sp, #0x20]
 8057442: 6840         	ldr	r0, [r0, #0x4]
 8057444: 9909         	ldr	r1, [sp, #0x24]
 8057446: 4288         	cmp	r0, r1
 8057448: d204         	bhs	0x8057454 <pvPortMalloc+0x1e4> @ imm = #0x8
 805744a: e7ff         	b	0x805744c <pvPortMalloc+0x1dc> @ imm = #-0x2
 805744c: f000 febf    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0xd7e
 8057450: e7ff         	b	0x8057452 <pvPortMalloc+0x1e2> @ imm = #-0x2
 8057452: e7fe         	b	0x8057452 <pvPortMalloc+0x1e2> @ imm = #-0x4
;                     if( ( pxBlock->xBlockSize - xWantedSize ) > heapMINIMUM_BLOCK_SIZE )
 8057454: 9808         	ldr	r0, [sp, #0x20]
 8057456: 6840         	ldr	r0, [r0, #0x4]
 8057458: 9909         	ldr	r1, [sp, #0x24]
 805745a: 1a40         	subs	r0, r0, r1
 805745c: 2811         	cmp	r0, #0x11
 805745e: d31e         	blo	0x805749e <pvPortMalloc+0x22e> @ imm = #0x3c
 8057460: e7ff         	b	0x8057462 <pvPortMalloc+0x1f2> @ imm = #-0x2
;                         pxNewBlockLink = ( void * ) ( ( ( uint8_t * ) pxBlock ) + xWantedSize );
 8057462: 9808         	ldr	r0, [sp, #0x20]
 8057464: 9909         	ldr	r1, [sp, #0x24]
 8057466: 4408         	add	r0, r1
 8057468: 9006         	str	r0, [sp, #0x18]
;                         configASSERT( ( ( ( size_t ) pxNewBlockLink ) & portBYTE_ALIGNMENT_MASK ) == 0 );
 805746a: f89d 0018    	ldrb.w	r0, [sp, #0x18]
 805746e: 0740         	lsls	r0, r0, #0x1d
 8057470: b120         	cbz	r0, 0x805747c <pvPortMalloc+0x20c> @ imm = #0x8
 8057472: e7ff         	b	0x8057474 <pvPortMalloc+0x204> @ imm = #-0x2
 8057474: f000 feab    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0xd56
 8057478: e7ff         	b	0x805747a <pvPortMalloc+0x20a> @ imm = #-0x2
 805747a: e7fe         	b	0x805747a <pvPortMalloc+0x20a> @ imm = #-0x4
;                         pxNewBlockLink->xBlockSize = pxBlock->xBlockSize - xWantedSize;
 805747c: 9808         	ldr	r0, [sp, #0x20]
 805747e: 6840         	ldr	r0, [r0, #0x4]
 8057480: 9909         	ldr	r1, [sp, #0x24]
 8057482: 1a40         	subs	r0, r0, r1
 8057484: 9906         	ldr	r1, [sp, #0x18]
 8057486: 6048         	str	r0, [r1, #0x4]
;                         pxBlock->xBlockSize = xWantedSize;
 8057488: 9809         	ldr	r0, [sp, #0x24]
 805748a: 9908         	ldr	r1, [sp, #0x20]
 805748c: 6048         	str	r0, [r1, #0x4]
;                         pxNewBlockLink->pxNextFreeBlock = pxPreviousBlock->pxNextFreeBlock;
 805748e: 9807         	ldr	r0, [sp, #0x1c]
 8057490: 6800         	ldr	r0, [r0]
 8057492: 9906         	ldr	r1, [sp, #0x18]
 8057494: 6008         	str	r0, [r1]
;                         pxPreviousBlock->pxNextFreeBlock = heapPROTECT_BLOCK_POINTER( pxNewBlockLink );
 8057496: 9806         	ldr	r0, [sp, #0x18]
 8057498: 9907         	ldr	r1, [sp, #0x1c]
 805749a: 6008         	str	r0, [r1]
;                     }
 805749c: e000         	b	0x80574a0 <pvPortMalloc+0x230> @ imm = #0x0
 805749e: e7ff         	b	0x80574a0 <pvPortMalloc+0x230> @ imm = #-0x2
;                     xFreeBytesRemaining -= pxBlock->xBlockSize;
 80574a0: 9808         	ldr	r0, [sp, #0x20]
 80574a2: 6842         	ldr	r2, [r0, #0x4]
 80574a4: f240 3030    	movw	r0, #0x330
 80574a8: f2c2 0000    	movt	r0, #0x2000
 80574ac: 6801         	ldr	r1, [r0]
 80574ae: 1a89         	subs	r1, r1, r2
 80574b0: 6001         	str	r1, [r0]
;                     if( xFreeBytesRemaining < xMinimumEverFreeBytesRemaining )
 80574b2: 6800         	ldr	r0, [r0]
 80574b4: f242 313c    	movw	r1, #0x233c
 80574b8: f2c2 0100    	movt	r1, #0x2000
 80574bc: 6809         	ldr	r1, [r1]
 80574be: 4288         	cmp	r0, r1
 80574c0: d20b         	bhs	0x80574da <pvPortMalloc+0x26a> @ imm = #0x16
 80574c2: e7ff         	b	0x80574c4 <pvPortMalloc+0x254> @ imm = #-0x2
;                         xMinimumEverFreeBytesRemaining = xFreeBytesRemaining;
 80574c4: f240 3030    	movw	r0, #0x330
 80574c8: f2c2 0000    	movt	r0, #0x2000
 80574cc: 6800         	ldr	r0, [r0]
 80574ce: f242 313c    	movw	r1, #0x233c
 80574d2: f2c2 0100    	movt	r1, #0x2000
 80574d6: 6008         	str	r0, [r1]
;                     }
 80574d8: e000         	b	0x80574dc <pvPortMalloc+0x26c> @ imm = #0x0
 80574da: e7ff         	b	0x80574dc <pvPortMalloc+0x26c> @ imm = #-0x2
;                     heapALLOCATE_BLOCK( pxBlock );
 80574dc: 9908         	ldr	r1, [sp, #0x20]
 80574de: 6848         	ldr	r0, [r1, #0x4]
 80574e0: f040 4000    	orr	r0, r0, #0x80000000
 80574e4: 6048         	str	r0, [r1, #0x4]
;                     pxBlock->pxNextFreeBlock = NULL;
 80574e6: 9908         	ldr	r1, [sp, #0x20]
 80574e8: 2000         	movs	r0, #0x0
 80574ea: 6008         	str	r0, [r1]
;                     xNumberOfSuccessfulAllocations++;
 80574ec: f242 3140    	movw	r1, #0x2340
 80574f0: f2c2 0100    	movt	r1, #0x2000
 80574f4: 6808         	ldr	r0, [r1]
 80574f6: 3001         	adds	r0, #0x1
 80574f8: 6008         	str	r0, [r1]
;                 }
 80574fa: e000         	b	0x80574fe <pvPortMalloc+0x28e> @ imm = #0x0
 80574fc: e7ff         	b	0x80574fe <pvPortMalloc+0x28e> @ imm = #-0x2
;             }
 80574fe: e000         	b	0x8057502 <pvPortMalloc+0x292> @ imm = #0x0
 8057500: e7ff         	b	0x8057502 <pvPortMalloc+0x292> @ imm = #-0x2
;         }
 8057502: e000         	b	0x8057506 <pvPortMalloc+0x296> @ imm = #0x0
 8057504: e7ff         	b	0x8057506 <pvPortMalloc+0x296> @ imm = #-0x2
;     ( void ) xTaskResumeAll();
 8057506: f7fe fdeb    	bl	0x80560e0 <xTaskResumeAll> @ imm = #-0x142a
;     configASSERT( ( ( ( size_t ) pvReturn ) & ( size_t ) portBYTE_ALIGNMENT_MASK ) == 0 );
 805750a: f89d 0014    	ldrb.w	r0, [sp, #0x14]
 805750e: 0740         	lsls	r0, r0, #0x1d
 8057510: b120         	cbz	r0, 0x805751c <pvPortMalloc+0x2ac> @ imm = #0x8
 8057512: e7ff         	b	0x8057514 <pvPortMalloc+0x2a4> @ imm = #-0x2
 8057514: f000 fe5b    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0xcb6
 8057518: e7ff         	b	0x805751a <pvPortMalloc+0x2aa> @ imm = #-0x2
 805751a: e7fe         	b	0x805751a <pvPortMalloc+0x2aa> @ imm = #-0x4
;     return pvReturn;
 805751c: 9805         	ldr	r0, [sp, #0x14]
 805751e: b00a         	add	sp, #0x28
 8057520: bd80         	pop	{r7, pc}

08057522 <prvHeapInit>:
; {
 8057522: b084         	sub	sp, #0x10
 8057524: f44f 5000    	mov.w	r0, #0x2000
;     size_t xTotalHeapSize = configTOTAL_HEAP_SIZE;
 8057528: 9000         	str	r0, [sp]
;     uxStartAddress = ( portPOINTER_SIZE_TYPE ) ucHeap;
 805752a: f240 303c    	movw	r0, #0x33c
 805752e: f2c2 0000    	movt	r0, #0x2000
 8057532: 9002         	str	r0, [sp, #0x8]
;     if( ( uxStartAddress & portBYTE_ALIGNMENT_MASK ) != 0 )
 8057534: f89d 0008    	ldrb.w	r0, [sp, #0x8]
 8057538: 0740         	lsls	r0, r0, #0x1d
 805753a: b188         	cbz	r0, 0x8057560 <prvHeapInit+0x3e> @ imm = #0x22
 805753c: e7ff         	b	0x805753e <prvHeapInit+0x1c> @ imm = #-0x2
;         uxStartAddress += ( portBYTE_ALIGNMENT - 1 );
 805753e: 9802         	ldr	r0, [sp, #0x8]
 8057540: 3007         	adds	r0, #0x7
 8057542: 9002         	str	r0, [sp, #0x8]
;         uxStartAddress &= ~( ( portPOINTER_SIZE_TYPE ) portBYTE_ALIGNMENT_MASK );
 8057544: 9802         	ldr	r0, [sp, #0x8]
 8057546: f020 0007    	bic	r0, r0, #0x7
 805754a: 9002         	str	r0, [sp, #0x8]
;         xTotalHeapSize -= ( size_t ) ( uxStartAddress - ( portPOINTER_SIZE_TYPE ) ucHeap );
 805754c: 9a02         	ldr	r2, [sp, #0x8]
 805754e: f240 313c    	movw	r1, #0x33c
 8057552: f2c2 0100    	movt	r1, #0x2000
 8057556: 9800         	ldr	r0, [sp]
 8057558: 1a89         	subs	r1, r1, r2
 805755a: 4408         	add	r0, r1
 805755c: 9000         	str	r0, [sp]
;     }
 805755e: e7ff         	b	0x8057560 <prvHeapInit+0x3e> @ imm = #-0x2
;     xStart.pxNextFreeBlock = ( void * ) heapPROTECT_BLOCK_POINTER( uxStartAddress );
 8057560: 9902         	ldr	r1, [sp, #0x8]
 8057562: f240 3034    	movw	r0, #0x334
 8057566: f2c2 0000    	movt	r0, #0x2000
 805756a: 6001         	str	r1, [r0]
 805756c: 2100         	movs	r1, #0x0
;     xStart.xBlockSize = ( size_t ) 0;
 805756e: 6041         	str	r1, [r0, #0x4]
;     uxEndAddress = uxStartAddress + ( portPOINTER_SIZE_TYPE ) xTotalHeapSize;
 8057570: 9802         	ldr	r0, [sp, #0x8]
 8057572: 9a00         	ldr	r2, [sp]
 8057574: 4410         	add	r0, r2
 8057576: 9001         	str	r0, [sp, #0x4]
;     uxEndAddress -= ( portPOINTER_SIZE_TYPE ) xHeapStructSize;
 8057578: 9801         	ldr	r0, [sp, #0x4]
 805757a: 3808         	subs	r0, #0x8
 805757c: 9001         	str	r0, [sp, #0x4]
;     uxEndAddress &= ~( ( portPOINTER_SIZE_TYPE ) portBYTE_ALIGNMENT_MASK );
 805757e: 9801         	ldr	r0, [sp, #0x4]
 8057580: f020 0007    	bic	r0, r0, #0x7
 8057584: 9001         	str	r0, [sp, #0x4]
;     pxEnd = ( BlockLink_t * ) uxEndAddress;
 8057586: 9a01         	ldr	r2, [sp, #0x4]
 8057588: f240 302c    	movw	r0, #0x32c
 805758c: f2c2 0000    	movt	r0, #0x2000
 8057590: 6002         	str	r2, [r0]
;     pxEnd->xBlockSize = 0;
 8057592: 6802         	ldr	r2, [r0]
 8057594: 6051         	str	r1, [r2, #0x4]
;     pxEnd->pxNextFreeBlock = heapPROTECT_BLOCK_POINTER( NULL );
 8057596: 6802         	ldr	r2, [r0]
 8057598: 6011         	str	r1, [r2]
;     pxFirstFreeBlock = ( BlockLink_t * ) uxStartAddress;
 805759a: 9902         	ldr	r1, [sp, #0x8]
 805759c: 9103         	str	r1, [sp, #0xc]
;     pxFirstFreeBlock->xBlockSize = ( size_t ) ( uxEndAddress - ( portPOINTER_SIZE_TYPE ) pxFirstFreeBlock );
 805759e: 9901         	ldr	r1, [sp, #0x4]
 80575a0: 9a03         	ldr	r2, [sp, #0xc]
 80575a2: 1a89         	subs	r1, r1, r2
 80575a4: 6051         	str	r1, [r2, #0x4]
;     pxFirstFreeBlock->pxNextFreeBlock = heapPROTECT_BLOCK_POINTER( pxEnd );
 80575a6: 6800         	ldr	r0, [r0]
 80575a8: 9903         	ldr	r1, [sp, #0xc]
 80575aa: 6008         	str	r0, [r1]
;     xMinimumEverFreeBytesRemaining = pxFirstFreeBlock->xBlockSize;
 80575ac: 9803         	ldr	r0, [sp, #0xc]
 80575ae: 6840         	ldr	r0, [r0, #0x4]
 80575b0: f242 313c    	movw	r1, #0x233c
 80575b4: f2c2 0100    	movt	r1, #0x2000
 80575b8: 6008         	str	r0, [r1]
;     xFreeBytesRemaining = pxFirstFreeBlock->xBlockSize;
 80575ba: 9803         	ldr	r0, [sp, #0xc]
 80575bc: 6840         	ldr	r0, [r0, #0x4]
 80575be: f240 3130    	movw	r1, #0x330
 80575c2: f2c2 0100    	movt	r1, #0x2000
 80575c6: 6008         	str	r0, [r1]
; }
 80575c8: b004         	add	sp, #0x10
 80575ca: 4770         	bx	lr

080575cc <vPortFree>:
; {
 80575cc: b580         	push	{r7, lr}
 80575ce: 466f         	mov	r7, sp
 80575d0: b084         	sub	sp, #0x10
 80575d2: 9003         	str	r0, [sp, #0xc]
;     uint8_t * puc = ( uint8_t * ) pv;
 80575d4: 9803         	ldr	r0, [sp, #0xc]
 80575d6: 9002         	str	r0, [sp, #0x8]
;     if( pv != NULL )
 80575d8: 9803         	ldr	r0, [sp, #0xc]
 80575da: 2800         	cmp	r0, #0x0
 80575dc: d064         	beq	0x80576a8 <vPortFree+0xdc> @ imm = #0xc8
 80575de: e7ff         	b	0x80575e0 <vPortFree+0x14> @ imm = #-0x2
;         puc -= xHeapStructSize;
 80575e0: 9802         	ldr	r0, [sp, #0x8]
 80575e2: 3808         	subs	r0, #0x8
 80575e4: 9002         	str	r0, [sp, #0x8]
;         pxLink = ( void * ) puc;
 80575e6: 9802         	ldr	r0, [sp, #0x8]
 80575e8: 9001         	str	r0, [sp, #0x4]
;         heapVALIDATE_BLOCK_POINTER( pxLink );
 80575ea: 9901         	ldr	r1, [sp, #0x4]
 80575ec: 2000         	movs	r0, #0x0
 80575ee: f240 323c    	movw	r2, #0x33c
 80575f2: f2c2 0200    	movt	r2, #0x2000
 80575f6: 4291         	cmp	r1, r2
 80575f8: 9000         	str	r0, [sp]
 80575fa: d30e         	blo	0x805761a <vPortFree+0x4e> @ imm = #0x1c
 80575fc: e7ff         	b	0x80575fe <vPortFree+0x32> @ imm = #-0x2
 80575fe: 9901         	ldr	r1, [sp, #0x4]
 8057600: f240 303c    	movw	r0, #0x33c
 8057604: f2c2 0000    	movt	r0, #0x2000
 8057608: f641 72ff    	movw	r2, #0x1fff
 805760c: 4402         	add	r2, r0
 805760e: 2000         	movs	r0, #0x0
 8057610: 4291         	cmp	r1, r2
 8057612: bf98         	it	ls
 8057614: 2001         	movls	r0, #0x1
 8057616: 9000         	str	r0, [sp]
 8057618: e7ff         	b	0x805761a <vPortFree+0x4e> @ imm = #-0x2
 805761a: 9800         	ldr	r0, [sp]
;         heapVALIDATE_BLOCK_POINTER( pxLink );
 805761c: 07c0         	lsls	r0, r0, #0x1f
 805761e: b920         	cbnz	r0, 0x805762a <vPortFree+0x5e> @ imm = #0x8
 8057620: e7ff         	b	0x8057622 <vPortFree+0x56> @ imm = #-0x2
 8057622: f000 fdd4    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0xba8
 8057626: e7ff         	b	0x8057628 <vPortFree+0x5c> @ imm = #-0x2
 8057628: e7fe         	b	0x8057628 <vPortFree+0x5c> @ imm = #-0x4
;         configASSERT( heapBLOCK_IS_ALLOCATED( pxLink ) != 0 );
 805762a: 9801         	ldr	r0, [sp, #0x4]
 805762c: 79c1         	ldrb	r1, [r0, #0x7]
 805762e: 2000         	movs	r0, #0x0
 8057630: ebb0 1fd1    	cmp.w	r0, r1, lsr #7
 8057634: d104         	bne	0x8057640 <vPortFree+0x74> @ imm = #0x8
 8057636: e7ff         	b	0x8057638 <vPortFree+0x6c> @ imm = #-0x2
 8057638: f000 fdc9    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0xb92
 805763c: e7ff         	b	0x805763e <vPortFree+0x72> @ imm = #-0x2
 805763e: e7fe         	b	0x805763e <vPortFree+0x72> @ imm = #-0x4
;         configASSERT( pxLink->pxNextFreeBlock == NULL );
 8057640: 9801         	ldr	r0, [sp, #0x4]
 8057642: 6800         	ldr	r0, [r0]
 8057644: b120         	cbz	r0, 0x8057650 <vPortFree+0x84> @ imm = #0x8
 8057646: e7ff         	b	0x8057648 <vPortFree+0x7c> @ imm = #-0x2
 8057648: f000 fdc1    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0xb82
 805764c: e7ff         	b	0x805764e <vPortFree+0x82> @ imm = #-0x2
 805764e: e7fe         	b	0x805764e <vPortFree+0x82> @ imm = #-0x4
;         if( heapBLOCK_IS_ALLOCATED( pxLink ) != 0 )
 8057650: 9801         	ldr	r0, [sp, #0x4]
 8057652: 79c1         	ldrb	r1, [r0, #0x7]
 8057654: 2000         	movs	r0, #0x0
 8057656: ebb0 1fd1    	cmp.w	r0, r1, lsr #7
 805765a: d023         	beq	0x80576a4 <vPortFree+0xd8> @ imm = #0x46
 805765c: e7ff         	b	0x805765e <vPortFree+0x92> @ imm = #-0x2
;             if( pxLink->pxNextFreeBlock == NULL )
 805765e: 9801         	ldr	r0, [sp, #0x4]
 8057660: 6800         	ldr	r0, [r0]
 8057662: b9e8         	cbnz	r0, 0x80576a0 <vPortFree+0xd4> @ imm = #0x3a
 8057664: e7ff         	b	0x8057666 <vPortFree+0x9a> @ imm = #-0x2
;                 heapFREE_BLOCK( pxLink );
 8057666: 9901         	ldr	r1, [sp, #0x4]
 8057668: 6848         	ldr	r0, [r1, #0x4]
 805766a: f020 4000    	bic	r0, r0, #0x80000000
 805766e: 6048         	str	r0, [r1, #0x4]
;                 vTaskSuspendAll();
 8057670: f7fe fcae    	bl	0x8055fd0 <vTaskSuspendAll> @ imm = #-0x16a4
;                     xFreeBytesRemaining += pxLink->xBlockSize;
 8057674: 9801         	ldr	r0, [sp, #0x4]
 8057676: 6842         	ldr	r2, [r0, #0x4]
 8057678: f240 3130    	movw	r1, #0x330
 805767c: f2c2 0100    	movt	r1, #0x2000
 8057680: 6808         	ldr	r0, [r1]
 8057682: 4410         	add	r0, r2
 8057684: 6008         	str	r0, [r1]
;                     prvInsertBlockIntoFreeList( ( ( BlockLink_t * ) pxLink ) );
 8057686: 9801         	ldr	r0, [sp, #0x4]
 8057688: f000 f810    	bl	0x80576ac <prvInsertBlockIntoFreeList> @ imm = #0x20
;                     xNumberOfSuccessfulFrees++;
 805768c: f242 3144    	movw	r1, #0x2344
 8057690: f2c2 0100    	movt	r1, #0x2000
 8057694: 6808         	ldr	r0, [r1]
 8057696: 3001         	adds	r0, #0x1
 8057698: 6008         	str	r0, [r1]
;                 ( void ) xTaskResumeAll();
 805769a: f7fe fd21    	bl	0x80560e0 <xTaskResumeAll> @ imm = #-0x15be
;             }
 805769e: e000         	b	0x80576a2 <vPortFree+0xd6> @ imm = #0x0
 80576a0: e7ff         	b	0x80576a2 <vPortFree+0xd6> @ imm = #-0x2
;         }
 80576a2: e000         	b	0x80576a6 <vPortFree+0xda> @ imm = #0x0
 80576a4: e7ff         	b	0x80576a6 <vPortFree+0xda> @ imm = #-0x2
;     }
 80576a6: e7ff         	b	0x80576a8 <vPortFree+0xdc> @ imm = #-0x2
; }
 80576a8: b004         	add	sp, #0x10
 80576aa: bd80         	pop	{r7, pc}

080576ac <prvInsertBlockIntoFreeList>:
; {
 80576ac: b580         	push	{r7, lr}
 80576ae: 466f         	mov	r7, sp
 80576b0: b084         	sub	sp, #0x10
 80576b2: 9003         	str	r0, [sp, #0xc]
;     for( pxIterator = &xStart; heapPROTECT_BLOCK_POINTER( pxIterator->pxNextFreeBlock ) < pxBlockToInsert; pxIterator = heapPROTECT_BLOCK_POINTER( pxIterator->pxNextFreeBlock ) )
 80576b4: f240 3034    	movw	r0, #0x334
 80576b8: f2c2 0000    	movt	r0, #0x2000
 80576bc: 9002         	str	r0, [sp, #0x8]
 80576be: e7ff         	b	0x80576c0 <prvInsertBlockIntoFreeList+0x14> @ imm = #-0x2
 80576c0: 9802         	ldr	r0, [sp, #0x8]
 80576c2: 6800         	ldr	r0, [r0]
 80576c4: 9903         	ldr	r1, [sp, #0xc]
 80576c6: 4288         	cmp	r0, r1
 80576c8: d205         	bhs	0x80576d6 <prvInsertBlockIntoFreeList+0x2a> @ imm = #0xa
 80576ca: e7ff         	b	0x80576cc <prvInsertBlockIntoFreeList+0x20> @ imm = #-0x2
;     }
 80576cc: e7ff         	b	0x80576ce <prvInsertBlockIntoFreeList+0x22> @ imm = #-0x2
;     for( pxIterator = &xStart; heapPROTECT_BLOCK_POINTER( pxIterator->pxNextFreeBlock ) < pxBlockToInsert; pxIterator = heapPROTECT_BLOCK_POINTER( pxIterator->pxNextFreeBlock ) )
 80576ce: 9802         	ldr	r0, [sp, #0x8]
 80576d0: 6800         	ldr	r0, [r0]
 80576d2: 9002         	str	r0, [sp, #0x8]
 80576d4: e7f4         	b	0x80576c0 <prvInsertBlockIntoFreeList+0x14> @ imm = #-0x18
;     if( pxIterator != &xStart )
 80576d6: 9802         	ldr	r0, [sp, #0x8]
 80576d8: f240 3134    	movw	r1, #0x334
 80576dc: f2c2 0100    	movt	r1, #0x2000
 80576e0: 4288         	cmp	r0, r1
 80576e2: d021         	beq	0x8057728 <prvInsertBlockIntoFreeList+0x7c> @ imm = #0x42
 80576e4: e7ff         	b	0x80576e6 <prvInsertBlockIntoFreeList+0x3a> @ imm = #-0x2
;         heapVALIDATE_BLOCK_POINTER( pxIterator );
 80576e6: 9902         	ldr	r1, [sp, #0x8]
 80576e8: 2000         	movs	r0, #0x0
 80576ea: f240 323c    	movw	r2, #0x33c
 80576ee: f2c2 0200    	movt	r2, #0x2000
 80576f2: 4291         	cmp	r1, r2
 80576f4: 9000         	str	r0, [sp]
 80576f6: d30e         	blo	0x8057716 <prvInsertBlockIntoFreeList+0x6a> @ imm = #0x1c
 80576f8: e7ff         	b	0x80576fa <prvInsertBlockIntoFreeList+0x4e> @ imm = #-0x2
 80576fa: 9902         	ldr	r1, [sp, #0x8]
 80576fc: f240 303c    	movw	r0, #0x33c
 8057700: f2c2 0000    	movt	r0, #0x2000
 8057704: f641 72ff    	movw	r2, #0x1fff
 8057708: 4402         	add	r2, r0
 805770a: 2000         	movs	r0, #0x0
 805770c: 4291         	cmp	r1, r2
 805770e: bf98         	it	ls
 8057710: 2001         	movls	r0, #0x1
 8057712: 9000         	str	r0, [sp]
 8057714: e7ff         	b	0x8057716 <prvInsertBlockIntoFreeList+0x6a> @ imm = #-0x2
 8057716: 9800         	ldr	r0, [sp]
;         heapVALIDATE_BLOCK_POINTER( pxIterator );
 8057718: 07c0         	lsls	r0, r0, #0x1f
 805771a: b920         	cbnz	r0, 0x8057726 <prvInsertBlockIntoFreeList+0x7a> @ imm = #0x8
 805771c: e7ff         	b	0x805771e <prvInsertBlockIntoFreeList+0x72> @ imm = #-0x2
 805771e: f000 fd56    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0xaac
 8057722: e7ff         	b	0x8057724 <prvInsertBlockIntoFreeList+0x78> @ imm = #-0x2
 8057724: e7fe         	b	0x8057724 <prvInsertBlockIntoFreeList+0x78> @ imm = #-0x4
;     }
 8057726: e7ff         	b	0x8057728 <prvInsertBlockIntoFreeList+0x7c> @ imm = #-0x2
;     puc = ( uint8_t * ) pxIterator;
 8057728: 9802         	ldr	r0, [sp, #0x8]
 805772a: 9001         	str	r0, [sp, #0x4]
;     if( ( puc + pxIterator->xBlockSize ) == ( uint8_t * ) pxBlockToInsert )
 805772c: 9801         	ldr	r0, [sp, #0x4]
 805772e: 9902         	ldr	r1, [sp, #0x8]
 8057730: 6849         	ldr	r1, [r1, #0x4]
 8057732: 4408         	add	r0, r1
 8057734: 9903         	ldr	r1, [sp, #0xc]
 8057736: 4288         	cmp	r0, r1
 8057738: d109         	bne	0x805774e <prvInsertBlockIntoFreeList+0xa2> @ imm = #0x12
 805773a: e7ff         	b	0x805773c <prvInsertBlockIntoFreeList+0x90> @ imm = #-0x2
;         pxIterator->xBlockSize += pxBlockToInsert->xBlockSize;
 805773c: 9803         	ldr	r0, [sp, #0xc]
 805773e: 6842         	ldr	r2, [r0, #0x4]
 8057740: 9902         	ldr	r1, [sp, #0x8]
 8057742: 6848         	ldr	r0, [r1, #0x4]
 8057744: 4410         	add	r0, r2
 8057746: 6048         	str	r0, [r1, #0x4]
;         pxBlockToInsert = pxIterator;
 8057748: 9802         	ldr	r0, [sp, #0x8]
 805774a: 9003         	str	r0, [sp, #0xc]
;     }
 805774c: e000         	b	0x8057750 <prvInsertBlockIntoFreeList+0xa4> @ imm = #0x0
 805774e: e7ff         	b	0x8057750 <prvInsertBlockIntoFreeList+0xa4> @ imm = #-0x2
;     puc = ( uint8_t * ) pxBlockToInsert;
 8057750: 9803         	ldr	r0, [sp, #0xc]
 8057752: 9001         	str	r0, [sp, #0x4]
;     if( ( puc + pxBlockToInsert->xBlockSize ) == ( uint8_t * ) heapPROTECT_BLOCK_POINTER( pxIterator->pxNextFreeBlock ) )
 8057754: 9801         	ldr	r0, [sp, #0x4]
 8057756: 9903         	ldr	r1, [sp, #0xc]
 8057758: 6849         	ldr	r1, [r1, #0x4]
 805775a: 4408         	add	r0, r1
 805775c: 9902         	ldr	r1, [sp, #0x8]
 805775e: 6809         	ldr	r1, [r1]
 8057760: 4288         	cmp	r0, r1
 8057762: d120         	bne	0x80577a6 <prvInsertBlockIntoFreeList+0xfa> @ imm = #0x40
 8057764: e7ff         	b	0x8057766 <prvInsertBlockIntoFreeList+0xba> @ imm = #-0x2
;         if( heapPROTECT_BLOCK_POINTER( pxIterator->pxNextFreeBlock ) != pxEnd )
 8057766: 9802         	ldr	r0, [sp, #0x8]
 8057768: 6800         	ldr	r0, [r0]
 805776a: f240 312c    	movw	r1, #0x32c
 805776e: f2c2 0100    	movt	r1, #0x2000
 8057772: 6809         	ldr	r1, [r1]
 8057774: 4288         	cmp	r0, r1
 8057776: d00d         	beq	0x8057794 <prvInsertBlockIntoFreeList+0xe8> @ imm = #0x1a
 8057778: e7ff         	b	0x805777a <prvInsertBlockIntoFreeList+0xce> @ imm = #-0x2
;             pxBlockToInsert->xBlockSize += heapPROTECT_BLOCK_POINTER( pxIterator->pxNextFreeBlock )->xBlockSize;
 805777a: 9802         	ldr	r0, [sp, #0x8]
 805777c: 6800         	ldr	r0, [r0]
 805777e: 6842         	ldr	r2, [r0, #0x4]
 8057780: 9903         	ldr	r1, [sp, #0xc]
 8057782: 6848         	ldr	r0, [r1, #0x4]
 8057784: 4410         	add	r0, r2
 8057786: 6048         	str	r0, [r1, #0x4]
;             pxBlockToInsert->pxNextFreeBlock = heapPROTECT_BLOCK_POINTER( pxIterator->pxNextFreeBlock )->pxNextFreeBlock;
 8057788: 9802         	ldr	r0, [sp, #0x8]
 805778a: 6800         	ldr	r0, [r0]
 805778c: 6800         	ldr	r0, [r0]
 805778e: 9903         	ldr	r1, [sp, #0xc]
 8057790: 6008         	str	r0, [r1]
;         }
 8057792: e007         	b	0x80577a4 <prvInsertBlockIntoFreeList+0xf8> @ imm = #0xe
;             pxBlockToInsert->pxNextFreeBlock = heapPROTECT_BLOCK_POINTER( pxEnd );
 8057794: f240 302c    	movw	r0, #0x32c
 8057798: f2c2 0000    	movt	r0, #0x2000
 805779c: 6800         	ldr	r0, [r0]
 805779e: 9903         	ldr	r1, [sp, #0xc]
 80577a0: 6008         	str	r0, [r1]
 80577a2: e7ff         	b	0x80577a4 <prvInsertBlockIntoFreeList+0xf8> @ imm = #-0x2
;     }
 80577a4: e004         	b	0x80577b0 <prvInsertBlockIntoFreeList+0x104> @ imm = #0x8
;         pxBlockToInsert->pxNextFreeBlock = pxIterator->pxNextFreeBlock;
 80577a6: 9802         	ldr	r0, [sp, #0x8]
 80577a8: 6800         	ldr	r0, [r0]
 80577aa: 9903         	ldr	r1, [sp, #0xc]
 80577ac: 6008         	str	r0, [r1]
 80577ae: e7ff         	b	0x80577b0 <prvInsertBlockIntoFreeList+0x104> @ imm = #-0x2
;     if( pxIterator != pxBlockToInsert )
 80577b0: 9802         	ldr	r0, [sp, #0x8]
 80577b2: 9903         	ldr	r1, [sp, #0xc]
 80577b4: 4288         	cmp	r0, r1
 80577b6: d004         	beq	0x80577c2 <prvInsertBlockIntoFreeList+0x116> @ imm = #0x8
 80577b8: e7ff         	b	0x80577ba <prvInsertBlockIntoFreeList+0x10e> @ imm = #-0x2
;         pxIterator->pxNextFreeBlock = heapPROTECT_BLOCK_POINTER( pxBlockToInsert );
 80577ba: 9803         	ldr	r0, [sp, #0xc]
 80577bc: 9902         	ldr	r1, [sp, #0x8]
 80577be: 6008         	str	r0, [r1]
;     }
 80577c0: e000         	b	0x80577c4 <prvInsertBlockIntoFreeList+0x118> @ imm = #0x0
 80577c2: e7ff         	b	0x80577c4 <prvInsertBlockIntoFreeList+0x118> @ imm = #-0x2
; }
 80577c4: b004         	add	sp, #0x10
 80577c6: bd80         	pop	{r7, pc}

080577c8 <vListInitialise>:
; {
 80577c8: b081         	sub	sp, #0x4
 80577ca: 9000         	str	r0, [sp]
;     pxList->pxIndex = ( ListItem_t * ) &( pxList->xListEnd ); /*lint !e826 !e740 !e9087 The mini list structure is used as the list end to save RAM.  This is checked and valid. */
 80577cc: 9900         	ldr	r1, [sp]
 80577ce: f101 0008    	add.w	r0, r1, #0x8
 80577d2: 6048         	str	r0, [r1, #0x4]
;     pxList->xListEnd.xItemValue = portMAX_DELAY;
 80577d4: 9900         	ldr	r1, [sp]
 80577d6: f04f 30ff    	mov.w	r0, #0xffffffff
 80577da: 6088         	str	r0, [r1, #0x8]
;     pxList->xListEnd.pxNext = ( ListItem_t * ) &( pxList->xListEnd );     /*lint !e826 !e740 !e9087 The mini list structure is used as the list end to save RAM.  This is checked and valid. */
 80577dc: 9900         	ldr	r1, [sp]
 80577de: f101 0008    	add.w	r0, r1, #0x8
 80577e2: 60c8         	str	r0, [r1, #0xc]
;     pxList->xListEnd.pxPrevious = ( ListItem_t * ) &( pxList->xListEnd ); /*lint !e826 !e740 !e9087 The mini list structure is used as the list end to save RAM.  This is checked and valid. */
 80577e4: 9900         	ldr	r1, [sp]
 80577e6: f101 0008    	add.w	r0, r1, #0x8
 80577ea: 6108         	str	r0, [r1, #0x10]
;     pxList->uxNumberOfItems = ( UBaseType_t ) 0U;
 80577ec: 9900         	ldr	r1, [sp]
 80577ee: 2000         	movs	r0, #0x0
 80577f0: 6008         	str	r0, [r1]
; }
 80577f2: b001         	add	sp, #0x4
 80577f4: 4770         	bx	lr

080577f6 <vListInitialiseItem>:
; {
 80577f6: b081         	sub	sp, #0x4
 80577f8: 9000         	str	r0, [sp]
;     pxItem->pxContainer = NULL;
 80577fa: 9900         	ldr	r1, [sp]
 80577fc: 2000         	movs	r0, #0x0
 80577fe: 6108         	str	r0, [r1, #0x10]
; }
 8057800: b001         	add	sp, #0x4
 8057802: 4770         	bx	lr

08057804 <vListInsert>:
; {
 8057804: b084         	sub	sp, #0x10
 8057806: 9003         	str	r0, [sp, #0xc]
 8057808: 9102         	str	r1, [sp, #0x8]
;     const TickType_t xValueOfInsertion = pxNewListItem->xItemValue;
 805780a: 9802         	ldr	r0, [sp, #0x8]
 805780c: 6800         	ldr	r0, [r0]
 805780e: 9000         	str	r0, [sp]
;     if( xValueOfInsertion == portMAX_DELAY )
 8057810: 9800         	ldr	r0, [sp]
 8057812: 3001         	adds	r0, #0x1
 8057814: b920         	cbnz	r0, 0x8057820 <vListInsert+0x1c> @ imm = #0x8
 8057816: e7ff         	b	0x8057818 <vListInsert+0x14> @ imm = #-0x2
;         pxIterator = pxList->xListEnd.pxPrevious;
 8057818: 9803         	ldr	r0, [sp, #0xc]
 805781a: 6900         	ldr	r0, [r0, #0x10]
 805781c: 9001         	str	r0, [sp, #0x4]
;     }
 805781e: e010         	b	0x8057842 <vListInsert+0x3e> @ imm = #0x20
;         for( pxIterator = ( ListItem_t * ) &( pxList->xListEnd ); pxIterator->pxNext->xItemValue <= xValueOfInsertion; pxIterator = pxIterator->pxNext ) /*lint !e826 !e740 !e9087 The mini list structure is used as the list end to save RAM.  This is checked and valid. *//*lint !e440 The iterator moves to a different value, not xValueOfInsertion. */
 8057820: 9803         	ldr	r0, [sp, #0xc]
 8057822: 3008         	adds	r0, #0x8
 8057824: 9001         	str	r0, [sp, #0x4]
 8057826: e7ff         	b	0x8057828 <vListInsert+0x24> @ imm = #-0x2
 8057828: 9801         	ldr	r0, [sp, #0x4]
 805782a: 6840         	ldr	r0, [r0, #0x4]
 805782c: 6800         	ldr	r0, [r0]
 805782e: 9900         	ldr	r1, [sp]
 8057830: 4288         	cmp	r0, r1
 8057832: d805         	bhi	0x8057840 <vListInsert+0x3c> @ imm = #0xa
 8057834: e7ff         	b	0x8057836 <vListInsert+0x32> @ imm = #-0x2
;         }
 8057836: e7ff         	b	0x8057838 <vListInsert+0x34> @ imm = #-0x2
;         for( pxIterator = ( ListItem_t * ) &( pxList->xListEnd ); pxIterator->pxNext->xItemValue <= xValueOfInsertion; pxIterator = pxIterator->pxNext ) /*lint !e826 !e740 !e9087 The mini list structure is used as the list end to save RAM.  This is checked and valid. *//*lint !e440 The iterator moves to a different value, not xValueOfInsertion. */
 8057838: 9801         	ldr	r0, [sp, #0x4]
 805783a: 6840         	ldr	r0, [r0, #0x4]
 805783c: 9001         	str	r0, [sp, #0x4]
 805783e: e7f3         	b	0x8057828 <vListInsert+0x24> @ imm = #-0x1a
 8057840: e7ff         	b	0x8057842 <vListInsert+0x3e> @ imm = #-0x2
;     pxNewListItem->pxNext = pxIterator->pxNext;
 8057842: 9801         	ldr	r0, [sp, #0x4]
 8057844: 6840         	ldr	r0, [r0, #0x4]
 8057846: 9902         	ldr	r1, [sp, #0x8]
 8057848: 6048         	str	r0, [r1, #0x4]
;     pxNewListItem->pxNext->pxPrevious = pxNewListItem;
 805784a: 9802         	ldr	r0, [sp, #0x8]
 805784c: 6841         	ldr	r1, [r0, #0x4]
 805784e: 6088         	str	r0, [r1, #0x8]
;     pxNewListItem->pxPrevious = pxIterator;
 8057850: 9801         	ldr	r0, [sp, #0x4]
 8057852: 9902         	ldr	r1, [sp, #0x8]
 8057854: 6088         	str	r0, [r1, #0x8]
;     pxIterator->pxNext = pxNewListItem;
 8057856: 9802         	ldr	r0, [sp, #0x8]
 8057858: 9901         	ldr	r1, [sp, #0x4]
 805785a: 6048         	str	r0, [r1, #0x4]
;     pxNewListItem->pxContainer = pxList;
 805785c: 9803         	ldr	r0, [sp, #0xc]
 805785e: 9902         	ldr	r1, [sp, #0x8]
 8057860: 6108         	str	r0, [r1, #0x10]
;     ( pxList->uxNumberOfItems )++;
 8057862: 9903         	ldr	r1, [sp, #0xc]
 8057864: 6808         	ldr	r0, [r1]
 8057866: 3001         	adds	r0, #0x1
 8057868: 6008         	str	r0, [r1]
; }
 805786a: b004         	add	sp, #0x10
 805786c: 4770         	bx	lr

0805786e <uxListRemove>:
; {
 805786e: b082         	sub	sp, #0x8
 8057870: 9001         	str	r0, [sp, #0x4]
;     List_t * const pxList = pxItemToRemove->pxContainer;
 8057872: 9801         	ldr	r0, [sp, #0x4]
 8057874: 6900         	ldr	r0, [r0, #0x10]
 8057876: 9000         	str	r0, [sp]
;     pxItemToRemove->pxNext->pxPrevious = pxItemToRemove->pxPrevious;
 8057878: 9801         	ldr	r0, [sp, #0x4]
 805787a: 6841         	ldr	r1, [r0, #0x4]
 805787c: 6880         	ldr	r0, [r0, #0x8]
 805787e: 6088         	str	r0, [r1, #0x8]
;     pxItemToRemove->pxPrevious->pxNext = pxItemToRemove->pxNext;
 8057880: 9901         	ldr	r1, [sp, #0x4]
 8057882: 6848         	ldr	r0, [r1, #0x4]
 8057884: 6889         	ldr	r1, [r1, #0x8]
 8057886: 6048         	str	r0, [r1, #0x4]
;     if( pxList->pxIndex == pxItemToRemove )
 8057888: 9800         	ldr	r0, [sp]
 805788a: 6840         	ldr	r0, [r0, #0x4]
 805788c: 9901         	ldr	r1, [sp, #0x4]
 805788e: 4288         	cmp	r0, r1
 8057890: d105         	bne	0x805789e <uxListRemove+0x30> @ imm = #0xa
 8057892: e7ff         	b	0x8057894 <uxListRemove+0x26> @ imm = #-0x2
;         pxList->pxIndex = pxItemToRemove->pxPrevious;
 8057894: 9801         	ldr	r0, [sp, #0x4]
 8057896: 6880         	ldr	r0, [r0, #0x8]
 8057898: 9900         	ldr	r1, [sp]
 805789a: 6048         	str	r0, [r1, #0x4]
;     }
 805789c: e000         	b	0x80578a0 <uxListRemove+0x32> @ imm = #0x0
 805789e: e7ff         	b	0x80578a0 <uxListRemove+0x32> @ imm = #-0x2
;     pxItemToRemove->pxContainer = NULL;
 80578a0: 9901         	ldr	r1, [sp, #0x4]
 80578a2: 2000         	movs	r0, #0x0
 80578a4: 6108         	str	r0, [r1, #0x10]
;     ( pxList->uxNumberOfItems )--;
 80578a6: 9900         	ldr	r1, [sp]
 80578a8: 6808         	ldr	r0, [r1]
 80578aa: 3801         	subs	r0, #0x1
 80578ac: 6008         	str	r0, [r1]
;     return pxList->uxNumberOfItems;
 80578ae: 9800         	ldr	r0, [sp]
 80578b0: 6800         	ldr	r0, [r0]
 80578b2: b002         	add	sp, #0x8
 80578b4: 4770         	bx	lr

080578b6 <xQueueGenericReset>:
; {
 80578b6: b580         	push	{r7, lr}
 80578b8: 466f         	mov	r7, sp
 80578ba: b084         	sub	sp, #0x10
 80578bc: 9003         	str	r0, [sp, #0xc]
 80578be: 9102         	str	r1, [sp, #0x8]
 80578c0: 2001         	movs	r0, #0x1
;     BaseType_t xReturn = pdPASS;
 80578c2: 9001         	str	r0, [sp, #0x4]
;     Queue_t * const pxQueue = xQueue;
 80578c4: 9803         	ldr	r0, [sp, #0xc]
 80578c6: 9000         	str	r0, [sp]
;     configASSERT( pxQueue );
 80578c8: 9800         	ldr	r0, [sp]
 80578ca: b920         	cbnz	r0, 0x80578d6 <xQueueGenericReset+0x20> @ imm = #0x8
 80578cc: e7ff         	b	0x80578ce <xQueueGenericReset+0x18> @ imm = #-0x2
 80578ce: f000 fc7e    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0x8fc
 80578d2: e7ff         	b	0x80578d4 <xQueueGenericReset+0x1e> @ imm = #-0x2
 80578d4: e7fe         	b	0x80578d4 <xQueueGenericReset+0x1e> @ imm = #-0x4
;     if( ( pxQueue != NULL ) &&
 80578d6: 9800         	ldr	r0, [sp]
 80578d8: 2800         	cmp	r0, #0x0
 80578da: d04d         	beq	0x8057978 <xQueueGenericReset+0xc2> @ imm = #0x9a
 80578dc: e7ff         	b	0x80578de <xQueueGenericReset+0x28> @ imm = #-0x2
;         ( pxQueue->uxLength >= 1U ) &&
 80578de: 9800         	ldr	r0, [sp]
 80578e0: 6bc0         	ldr	r0, [r0, #0x3c]
 80578e2: 2800         	cmp	r0, #0x0
 80578e4: d048         	beq	0x8057978 <xQueueGenericReset+0xc2> @ imm = #0x90
 80578e6: e7ff         	b	0x80578e8 <xQueueGenericReset+0x32> @ imm = #-0x2
;         ( ( SIZE_MAX / pxQueue->uxLength ) >= pxQueue->uxItemSize ) )
 80578e8: 9800         	ldr	r0, [sp]
 80578ea: 6bc2         	ldr	r2, [r0, #0x3c]
 80578ec: 6c01         	ldr	r1, [r0, #0x40]
 80578ee: f04f 30ff    	mov.w	r0, #0xffffffff
 80578f2: fbb0 f0f2    	udiv	r0, r0, r2
;     if( ( pxQueue != NULL ) &&
 80578f6: 4288         	cmp	r0, r1
 80578f8: d33e         	blo	0x8057978 <xQueueGenericReset+0xc2> @ imm = #0x7c
 80578fa: e7ff         	b	0x80578fc <xQueueGenericReset+0x46> @ imm = #-0x2
;         taskENTER_CRITICAL();
 80578fc: f000 fac4    	bl	0x8057e88 <vPortEnterCritical> @ imm = #0x588
;             pxQueue->u.xQueue.pcTail = pxQueue->pcHead + ( pxQueue->uxLength * pxQueue->uxItemSize ); /*lint !e9016 Pointer arithmetic allowed on char types, especially when it assists conveying intent. */
 8057900: 9900         	ldr	r1, [sp]
 8057902: 680b         	ldr	r3, [r1]
 8057904: 6bc8         	ldr	r0, [r1, #0x3c]
 8057906: 6c0a         	ldr	r2, [r1, #0x40]
 8057908: fb00 3002    	mla	r0, r0, r2, r3
 805790c: 6088         	str	r0, [r1, #0x8]
;             pxQueue->uxMessagesWaiting = ( UBaseType_t ) 0U;
 805790e: 9900         	ldr	r1, [sp]
 8057910: 2000         	movs	r0, #0x0
 8057912: 6388         	str	r0, [r1, #0x38]
;             pxQueue->pcWriteTo = pxQueue->pcHead;
 8057914: 9900         	ldr	r1, [sp]
 8057916: 6808         	ldr	r0, [r1]
 8057918: 6048         	str	r0, [r1, #0x4]
;             pxQueue->u.xQueue.pcReadFrom = pxQueue->pcHead + ( ( pxQueue->uxLength - 1U ) * pxQueue->uxItemSize ); /*lint !e9016 Pointer arithmetic allowed on char types, especially when it assists conveying intent. */
 805791a: 9900         	ldr	r1, [sp]
 805791c: 680b         	ldr	r3, [r1]
 805791e: 6bc8         	ldr	r0, [r1, #0x3c]
 8057920: 6c0a         	ldr	r2, [r1, #0x40]
 8057922: 3801         	subs	r0, #0x1
 8057924: fb00 3002    	mla	r0, r0, r2, r3
 8057928: 60c8         	str	r0, [r1, #0xc]
;             pxQueue->cRxLock = queueUNLOCKED;
 805792a: 9900         	ldr	r1, [sp]
 805792c: 20ff         	movs	r0, #0xff
 805792e: f881 0044    	strb.w	r0, [r1, #0x44]
;             pxQueue->cTxLock = queueUNLOCKED;
 8057932: 9900         	ldr	r1, [sp]
 8057934: f881 0045    	strb.w	r0, [r1, #0x45]
;             if( xNewQueue == pdFALSE )
 8057938: 9802         	ldr	r0, [sp, #0x8]
 805793a: b988         	cbnz	r0, 0x8057960 <xQueueGenericReset+0xaa> @ imm = #0x22
 805793c: e7ff         	b	0x805793e <xQueueGenericReset+0x88> @ imm = #-0x2
;                 if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
 805793e: 9800         	ldr	r0, [sp]
 8057940: 6900         	ldr	r0, [r0, #0x10]
 8057942: b158         	cbz	r0, 0x805795c <xQueueGenericReset+0xa6> @ imm = #0x16
 8057944: e7ff         	b	0x8057946 <xQueueGenericReset+0x90> @ imm = #-0x2
;                     if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
 8057946: 9800         	ldr	r0, [sp]
 8057948: 3010         	adds	r0, #0x10
 805794a: f7fe ff96    	bl	0x805687a <xTaskRemoveFromEventList> @ imm = #-0x10d4
 805794e: b118         	cbz	r0, 0x8057958 <xQueueGenericReset+0xa2> @ imm = #0x6
 8057950: e7ff         	b	0x8057952 <xQueueGenericReset+0x9c> @ imm = #-0x2
;                         queueYIELD_IF_USING_PREEMPTION();
 8057952: f000 fa8d    	bl	0x8057e70 <vPortYield>  @ imm = #0x51a
;                     }
 8057956: e000         	b	0x805795a <xQueueGenericReset+0xa4> @ imm = #0x0
 8057958: e7ff         	b	0x805795a <xQueueGenericReset+0xa4> @ imm = #-0x2
;                 }
 805795a: e000         	b	0x805795e <xQueueGenericReset+0xa8> @ imm = #0x0
 805795c: e7ff         	b	0x805795e <xQueueGenericReset+0xa8> @ imm = #-0x2
;             }
 805795e: e008         	b	0x8057972 <xQueueGenericReset+0xbc> @ imm = #0x10
;                 vListInitialise( &( pxQueue->xTasksWaitingToSend ) );
 8057960: 9800         	ldr	r0, [sp]
 8057962: 3010         	adds	r0, #0x10
 8057964: f7ff ff30    	bl	0x80577c8 <vListInitialise> @ imm = #-0x1a0
;                 vListInitialise( &( pxQueue->xTasksWaitingToReceive ) );
 8057968: 9800         	ldr	r0, [sp]
 805796a: 3024         	adds	r0, #0x24
 805796c: f7ff ff2c    	bl	0x80577c8 <vListInitialise> @ imm = #-0x1a8
 8057970: e7ff         	b	0x8057972 <xQueueGenericReset+0xbc> @ imm = #-0x2
;         taskEXIT_CRITICAL();
 8057972: f000 fa99    	bl	0x8057ea8 <vPortExitCritical> @ imm = #0x532
;     }
 8057976: e002         	b	0x805797e <xQueueGenericReset+0xc8> @ imm = #0x4
 8057978: 2000         	movs	r0, #0x0
;         xReturn = pdFAIL;
 805797a: 9001         	str	r0, [sp, #0x4]
 805797c: e7ff         	b	0x805797e <xQueueGenericReset+0xc8> @ imm = #-0x2
;     configASSERT( xReturn != pdFAIL );
 805797e: 9801         	ldr	r0, [sp, #0x4]
 8057980: b920         	cbnz	r0, 0x805798c <xQueueGenericReset+0xd6> @ imm = #0x8
 8057982: e7ff         	b	0x8057984 <xQueueGenericReset+0xce> @ imm = #-0x2
 8057984: f000 fc23    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0x846
 8057988: e7ff         	b	0x805798a <xQueueGenericReset+0xd4> @ imm = #-0x2
 805798a: e7fe         	b	0x805798a <xQueueGenericReset+0xd4> @ imm = #-0x4
;     return xReturn;
 805798c: 9801         	ldr	r0, [sp, #0x4]
 805798e: b004         	add	sp, #0x10
 8057990: bd80         	pop	{r7, pc}

08057992 <xQueueGenericCreate>:
;     {
 8057992: b580         	push	{r7, lr}
 8057994: 466f         	mov	r7, sp
 8057996: b088         	sub	sp, #0x20
 8057998: 9007         	str	r0, [sp, #0x1c]
 805799a: 9106         	str	r1, [sp, #0x18]
 805799c: f807 2c09    	strb	r2, [r7, #-9]
 80579a0: 2000         	movs	r0, #0x0
;         Queue_t * pxNewQueue = NULL;
 80579a2: 9004         	str	r0, [sp, #0x10]
;         if( ( uxQueueLength > ( UBaseType_t ) 0 ) &&
 80579a4: 9807         	ldr	r0, [sp, #0x1c]
 80579a6: b380         	cbz	r0, 0x8057a0a <xQueueGenericCreate+0x78> @ imm = #0x60
 80579a8: e7ff         	b	0x80579aa <xQueueGenericCreate+0x18> @ imm = #-0x2
;             ( ( SIZE_MAX / uxQueueLength ) >= uxItemSize ) &&
 80579aa: 9907         	ldr	r1, [sp, #0x1c]
 80579ac: f04f 30ff    	mov.w	r0, #0xffffffff
 80579b0: fbb0 f0f1    	udiv	r0, r0, r1
 80579b4: 9906         	ldr	r1, [sp, #0x18]
 80579b6: 4288         	cmp	r0, r1
 80579b8: d327         	blo	0x8057a0a <xQueueGenericCreate+0x78> @ imm = #0x4e
 80579ba: e7ff         	b	0x80579bc <xQueueGenericCreate+0x2a> @ imm = #-0x2
;             ( ( UBaseType_t ) ( SIZE_MAX - sizeof( Queue_t ) ) >= ( uxQueueLength * uxItemSize ) ) )
 80579bc: 9807         	ldr	r0, [sp, #0x1c]
 80579be: 9906         	ldr	r1, [sp, #0x18]
 80579c0: 4348         	muls	r0, r1, r0
;         if( ( uxQueueLength > ( UBaseType_t ) 0 ) &&
 80579c2: f110 0f51    	cmn.w	r0, #0x51
 80579c6: d820         	bhi	0x8057a0a <xQueueGenericCreate+0x78> @ imm = #0x40
 80579c8: e7ff         	b	0x80579ca <xQueueGenericCreate+0x38> @ imm = #-0x2
;             xQueueSizeInBytes = ( size_t ) ( uxQueueLength * uxItemSize ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
 80579ca: 9807         	ldr	r0, [sp, #0x1c]
 80579cc: 9906         	ldr	r1, [sp, #0x18]
 80579ce: 4348         	muls	r0, r1, r0
 80579d0: 9003         	str	r0, [sp, #0xc]
;             pxNewQueue = ( Queue_t * ) pvPortMalloc( sizeof( Queue_t ) + xQueueSizeInBytes ); /*lint !e9087 !e9079 see comment above. */
 80579d2: 9803         	ldr	r0, [sp, #0xc]
 80579d4: 3050         	adds	r0, #0x50
 80579d6: f7ff fc4b    	bl	0x8057270 <pvPortMalloc> @ imm = #-0x76a
 80579da: 9004         	str	r0, [sp, #0x10]
;             if( pxNewQueue != NULL )
 80579dc: 9804         	ldr	r0, [sp, #0x10]
 80579de: b190         	cbz	r0, 0x8057a06 <xQueueGenericCreate+0x74> @ imm = #0x24
 80579e0: e7ff         	b	0x80579e2 <xQueueGenericCreate+0x50> @ imm = #-0x2
;                 pucQueueStorage = ( uint8_t * ) pxNewQueue;
 80579e2: 9804         	ldr	r0, [sp, #0x10]
 80579e4: 9002         	str	r0, [sp, #0x8]
;                 pucQueueStorage += sizeof( Queue_t ); /*lint !e9016 Pointer arithmetic allowed on char types, especially when it assists conveying intent. */
 80579e6: 9802         	ldr	r0, [sp, #0x8]
 80579e8: 3050         	adds	r0, #0x50
 80579ea: 9002         	str	r0, [sp, #0x8]
;                 prvInitialiseNewQueue( uxQueueLength, uxItemSize, pucQueueStorage, ucQueueType, pxNewQueue );
 80579ec: 9807         	ldr	r0, [sp, #0x1c]
 80579ee: 9906         	ldr	r1, [sp, #0x18]
 80579f0: 9a02         	ldr	r2, [sp, #0x8]
 80579f2: f817 3c09    	ldrb	r3, [r7, #-9]
 80579f6: f8dd c010    	ldr.w	r12, [sp, #0x10]
 80579fa: 46ee         	mov	lr, sp
 80579fc: f8ce c000    	str.w	r12, [lr]
 8057a00: f000 f80e    	bl	0x8057a20 <prvInitialiseNewQueue> @ imm = #0x1c
;             }
 8057a04: e000         	b	0x8057a08 <xQueueGenericCreate+0x76> @ imm = #0x0
 8057a06: e7ff         	b	0x8057a08 <xQueueGenericCreate+0x76> @ imm = #-0x2
;         }
 8057a08: e007         	b	0x8057a1a <xQueueGenericCreate+0x88> @ imm = #0xe
;             configASSERT( pxNewQueue );
 8057a0a: 9804         	ldr	r0, [sp, #0x10]
 8057a0c: b920         	cbnz	r0, 0x8057a18 <xQueueGenericCreate+0x86> @ imm = #0x8
 8057a0e: e7ff         	b	0x8057a10 <xQueueGenericCreate+0x7e> @ imm = #-0x2
 8057a10: f000 fbdd    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0x7ba
 8057a14: e7ff         	b	0x8057a16 <xQueueGenericCreate+0x84> @ imm = #-0x2
 8057a16: e7fe         	b	0x8057a16 <xQueueGenericCreate+0x84> @ imm = #-0x4
 8057a18: e7ff         	b	0x8057a1a <xQueueGenericCreate+0x88> @ imm = #-0x2
;         return pxNewQueue;
 8057a1a: 9804         	ldr	r0, [sp, #0x10]
 8057a1c: b008         	add	sp, #0x20
 8057a1e: bd80         	pop	{r7, pc}

08057a20 <prvInitialiseNewQueue>:
; {
 8057a20: b580         	push	{r7, lr}
 8057a22: 466f         	mov	r7, sp
 8057a24: b084         	sub	sp, #0x10
 8057a26: f8d7 c008    	ldr.w	r12, [r7, #0x8]
 8057a2a: 9003         	str	r0, [sp, #0xc]
 8057a2c: 9102         	str	r1, [sp, #0x8]
 8057a2e: 9201         	str	r2, [sp, #0x4]
 8057a30: f807 3c0d    	strb	r3, [r7, #-13]
;     if( uxItemSize == ( UBaseType_t ) 0 )
 8057a34: 9802         	ldr	r0, [sp, #0x8]
 8057a36: b918         	cbnz	r0, 0x8057a40 <prvInitialiseNewQueue+0x20> @ imm = #0x6
 8057a38: e7ff         	b	0x8057a3a <prvInitialiseNewQueue+0x1a> @ imm = #-0x2
;         pxNewQueue->pcHead = ( int8_t * ) pxNewQueue;
 8057a3a: 68b8         	ldr	r0, [r7, #0x8]
 8057a3c: 6000         	str	r0, [r0]
;     }
 8057a3e: e003         	b	0x8057a48 <prvInitialiseNewQueue+0x28> @ imm = #0x6
;         pxNewQueue->pcHead = ( int8_t * ) pucQueueStorage;
 8057a40: 9801         	ldr	r0, [sp, #0x4]
 8057a42: 68b9         	ldr	r1, [r7, #0x8]
 8057a44: 6008         	str	r0, [r1]
 8057a46: e7ff         	b	0x8057a48 <prvInitialiseNewQueue+0x28> @ imm = #-0x2
;     pxNewQueue->uxLength = uxQueueLength;
 8057a48: 9803         	ldr	r0, [sp, #0xc]
 8057a4a: 68b9         	ldr	r1, [r7, #0x8]
 8057a4c: 63c8         	str	r0, [r1, #0x3c]
;     pxNewQueue->uxItemSize = uxItemSize;
 8057a4e: 9802         	ldr	r0, [sp, #0x8]
 8057a50: 68b9         	ldr	r1, [r7, #0x8]
 8057a52: 6408         	str	r0, [r1, #0x40]
;     ( void ) xQueueGenericReset( pxNewQueue, pdTRUE );
 8057a54: 68b8         	ldr	r0, [r7, #0x8]
 8057a56: 2101         	movs	r1, #0x1
 8057a58: f7ff ff2d    	bl	0x80578b6 <xQueueGenericReset> @ imm = #-0x1a6
;         pxNewQueue->ucQueueType = ucQueueType;
 8057a5c: f817 0c0d    	ldrb	r0, [r7, #-13]
 8057a60: 68b9         	ldr	r1, [r7, #0x8]
 8057a62: f881 004c    	strb.w	r0, [r1, #0x4c]
; }
 8057a66: b004         	add	sp, #0x10
 8057a68: bd80         	pop	{r7, pc}

08057a6a <prvUnlockQueue>:
; {
 8057a6a: b580         	push	{r7, lr}
 8057a6c: 466f         	mov	r7, sp
 8057a6e: b082         	sub	sp, #0x8
 8057a70: 9001         	str	r0, [sp, #0x4]
;     taskENTER_CRITICAL();
 8057a72: f000 fa09    	bl	0x8057e88 <vPortEnterCritical> @ imm = #0x412
;         int8_t cTxLock = pxQueue->cTxLock;
 8057a76: 9801         	ldr	r0, [sp, #0x4]
 8057a78: f890 0045    	ldrb.w	r0, [r0, #0x45]
 8057a7c: f807 0c05    	strb	r0, [r7, #-5]
;         while( cTxLock > queueLOCKED_UNMODIFIED )
 8057a80: e7ff         	b	0x8057a82 <prvUnlockQueue+0x18> @ imm = #-0x2
 8057a82: f917 0c05    	ldrsb	r0, [r7, #-5]
 8057a86: 2801         	cmp	r0, #0x1
 8057a88: db16         	blt	0x8057ab8 <prvUnlockQueue+0x4e> @ imm = #0x2c
 8057a8a: e7ff         	b	0x8057a8c <prvUnlockQueue+0x22> @ imm = #-0x2
;                 if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
 8057a8c: 9801         	ldr	r0, [sp, #0x4]
 8057a8e: 6a40         	ldr	r0, [r0, #0x24]
 8057a90: b158         	cbz	r0, 0x8057aaa <prvUnlockQueue+0x40> @ imm = #0x16
 8057a92: e7ff         	b	0x8057a94 <prvUnlockQueue+0x2a> @ imm = #-0x2
;                     if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
 8057a94: 9801         	ldr	r0, [sp, #0x4]
 8057a96: 3024         	adds	r0, #0x24
 8057a98: f7fe feef    	bl	0x805687a <xTaskRemoveFromEventList> @ imm = #-0x1222
 8057a9c: b118         	cbz	r0, 0x8057aa6 <prvUnlockQueue+0x3c> @ imm = #0x6
 8057a9e: e7ff         	b	0x8057aa0 <prvUnlockQueue+0x36> @ imm = #-0x2
;                         vTaskMissedYield();
 8057aa0: f7ff f82c    	bl	0x8056afc <vTaskMissedYield> @ imm = #-0xfa8
;                     }
 8057aa4: e000         	b	0x8057aa8 <prvUnlockQueue+0x3e> @ imm = #0x0
 8057aa6: e7ff         	b	0x8057aa8 <prvUnlockQueue+0x3e> @ imm = #-0x2
;                 }
 8057aa8: e000         	b	0x8057aac <prvUnlockQueue+0x42> @ imm = #0x0
;                     break;
 8057aaa: e005         	b	0x8057ab8 <prvUnlockQueue+0x4e> @ imm = #0xa
;             --cTxLock;
 8057aac: f817 0c05    	ldrb	r0, [r7, #-5]
 8057ab0: 3801         	subs	r0, #0x1
 8057ab2: f807 0c05    	strb	r0, [r7, #-5]
;         while( cTxLock > queueLOCKED_UNMODIFIED )
 8057ab6: e7e4         	b	0x8057a82 <prvUnlockQueue+0x18> @ imm = #-0x38
;         pxQueue->cTxLock = queueUNLOCKED;
 8057ab8: 9901         	ldr	r1, [sp, #0x4]
 8057aba: 20ff         	movs	r0, #0xff
 8057abc: f881 0045    	strb.w	r0, [r1, #0x45]
;     taskEXIT_CRITICAL();
 8057ac0: f000 f9f2    	bl	0x8057ea8 <vPortExitCritical> @ imm = #0x3e4
;     taskENTER_CRITICAL();
 8057ac4: f000 f9e0    	bl	0x8057e88 <vPortEnterCritical> @ imm = #0x3c0
;         int8_t cRxLock = pxQueue->cRxLock;
 8057ac8: 9801         	ldr	r0, [sp, #0x4]
 8057aca: f890 0044    	ldrb.w	r0, [r0, #0x44]
 8057ace: f807 0c06    	strb	r0, [r7, #-6]
;         while( cRxLock > queueLOCKED_UNMODIFIED )
 8057ad2: e7ff         	b	0x8057ad4 <prvUnlockQueue+0x6a> @ imm = #-0x2
 8057ad4: f917 0c06    	ldrsb	r0, [r7, #-6]
 8057ad8: 2801         	cmp	r0, #0x1
 8057ada: db16         	blt	0x8057b0a <prvUnlockQueue+0xa0> @ imm = #0x2c
 8057adc: e7ff         	b	0x8057ade <prvUnlockQueue+0x74> @ imm = #-0x2
;             if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
 8057ade: 9801         	ldr	r0, [sp, #0x4]
 8057ae0: 6900         	ldr	r0, [r0, #0x10]
 8057ae2: b180         	cbz	r0, 0x8057b06 <prvUnlockQueue+0x9c> @ imm = #0x20
 8057ae4: e7ff         	b	0x8057ae6 <prvUnlockQueue+0x7c> @ imm = #-0x2
;                 if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
 8057ae6: 9801         	ldr	r0, [sp, #0x4]
 8057ae8: 3010         	adds	r0, #0x10
 8057aea: f7fe fec6    	bl	0x805687a <xTaskRemoveFromEventList> @ imm = #-0x1274
 8057aee: b118         	cbz	r0, 0x8057af8 <prvUnlockQueue+0x8e> @ imm = #0x6
 8057af0: e7ff         	b	0x8057af2 <prvUnlockQueue+0x88> @ imm = #-0x2
;                     vTaskMissedYield();
 8057af2: f7ff f803    	bl	0x8056afc <vTaskMissedYield> @ imm = #-0xffa
;                 }
 8057af6: e000         	b	0x8057afa <prvUnlockQueue+0x90> @ imm = #0x0
 8057af8: e7ff         	b	0x8057afa <prvUnlockQueue+0x90> @ imm = #-0x2
;                 --cRxLock;
 8057afa: f817 0c06    	ldrb	r0, [r7, #-6]
 8057afe: 3801         	subs	r0, #0x1
 8057b00: f807 0c06    	strb	r0, [r7, #-6]
;             }
 8057b04: e000         	b	0x8057b08 <prvUnlockQueue+0x9e> @ imm = #0x0
;                 break;
 8057b06: e000         	b	0x8057b0a <prvUnlockQueue+0xa0> @ imm = #0x0
;         while( cRxLock > queueLOCKED_UNMODIFIED )
 8057b08: e7e4         	b	0x8057ad4 <prvUnlockQueue+0x6a> @ imm = #-0x38
;         pxQueue->cRxLock = queueUNLOCKED;
 8057b0a: 9901         	ldr	r1, [sp, #0x4]
 8057b0c: 20ff         	movs	r0, #0xff
 8057b0e: f881 0044    	strb.w	r0, [r1, #0x44]
;     taskEXIT_CRITICAL();
 8057b12: f000 f9c9    	bl	0x8057ea8 <vPortExitCritical> @ imm = #0x392
; }
 8057b16: b002         	add	sp, #0x8
 8057b18: bd80         	pop	{r7, pc}

08057b1a <xQueueReceive>:
; {
 8057b1a: b580         	push	{r7, lr}
 8057b1c: 466f         	mov	r7, sp
 8057b1e: b08c         	sub	sp, #0x30
 8057b20: 900a         	str	r0, [sp, #0x28]
 8057b22: 9109         	str	r1, [sp, #0x24]
 8057b24: 9208         	str	r2, [sp, #0x20]
 8057b26: 2000         	movs	r0, #0x0
;     BaseType_t xEntryTimeSet = pdFALSE;
 8057b28: 9007         	str	r0, [sp, #0x1c]
;     Queue_t * const pxQueue = xQueue;
 8057b2a: 980a         	ldr	r0, [sp, #0x28]
 8057b2c: 9004         	str	r0, [sp, #0x10]
;     configASSERT( ( pxQueue ) );
 8057b2e: 9804         	ldr	r0, [sp, #0x10]
 8057b30: b920         	cbnz	r0, 0x8057b3c <xQueueReceive+0x22> @ imm = #0x8
 8057b32: e7ff         	b	0x8057b34 <xQueueReceive+0x1a> @ imm = #-0x2
 8057b34: f000 fb4b    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0x696
 8057b38: e7ff         	b	0x8057b3a <xQueueReceive+0x20> @ imm = #-0x2
 8057b3a: e7fe         	b	0x8057b3a <xQueueReceive+0x20> @ imm = #-0x4
;     configASSERT( !( ( ( pvBuffer ) == NULL ) && ( ( pxQueue )->uxItemSize != ( UBaseType_t ) 0U ) ) );
 8057b3c: 9909         	ldr	r1, [sp, #0x24]
 8057b3e: 2000         	movs	r0, #0x0
 8057b40: 9002         	str	r0, [sp, #0x8]
 8057b42: b939         	cbnz	r1, 0x8057b54 <xQueueReceive+0x3a> @ imm = #0xe
 8057b44: e7ff         	b	0x8057b46 <xQueueReceive+0x2c> @ imm = #-0x2
 8057b46: 9804         	ldr	r0, [sp, #0x10]
 8057b48: 6c00         	ldr	r0, [r0, #0x40]
 8057b4a: 2800         	cmp	r0, #0x0
 8057b4c: bf18         	it	ne
 8057b4e: 2001         	movne	r0, #0x1
 8057b50: 9002         	str	r0, [sp, #0x8]
 8057b52: e7ff         	b	0x8057b54 <xQueueReceive+0x3a> @ imm = #-0x2
 8057b54: 9802         	ldr	r0, [sp, #0x8]
;     configASSERT( !( ( ( pvBuffer ) == NULL ) && ( ( pxQueue )->uxItemSize != ( UBaseType_t ) 0U ) ) );
 8057b56: 07c0         	lsls	r0, r0, #0x1f
 8057b58: b120         	cbz	r0, 0x8057b64 <xQueueReceive+0x4a> @ imm = #0x8
 8057b5a: e7ff         	b	0x8057b5c <xQueueReceive+0x42> @ imm = #-0x2
 8057b5c: f000 fb37    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0x66e
 8057b60: e7ff         	b	0x8057b62 <xQueueReceive+0x48> @ imm = #-0x2
 8057b62: e7fe         	b	0x8057b62 <xQueueReceive+0x48> @ imm = #-0x4
;         configASSERT( !( ( xTaskGetSchedulerState() == taskSCHEDULER_SUSPENDED ) && ( xTicksToWait != 0 ) ) );
 8057b64: f7fe ffd1    	bl	0x8056b0a <xTaskGetSchedulerState> @ imm = #-0x105e
 8057b68: 4601         	mov	r1, r0
 8057b6a: 2000         	movs	r0, #0x0
 8057b6c: 9001         	str	r0, [sp, #0x4]
 8057b6e: b931         	cbnz	r1, 0x8057b7e <xQueueReceive+0x64> @ imm = #0xc
 8057b70: e7ff         	b	0x8057b72 <xQueueReceive+0x58> @ imm = #-0x2
 8057b72: 9808         	ldr	r0, [sp, #0x20]
 8057b74: 2800         	cmp	r0, #0x0
 8057b76: bf18         	it	ne
 8057b78: 2001         	movne	r0, #0x1
 8057b7a: 9001         	str	r0, [sp, #0x4]
 8057b7c: e7ff         	b	0x8057b7e <xQueueReceive+0x64> @ imm = #-0x2
 8057b7e: 9801         	ldr	r0, [sp, #0x4]
;         configASSERT( !( ( xTaskGetSchedulerState() == taskSCHEDULER_SUSPENDED ) && ( xTicksToWait != 0 ) ) );
 8057b80: 07c0         	lsls	r0, r0, #0x1f
 8057b82: b120         	cbz	r0, 0x8057b8e <xQueueReceive+0x74> @ imm = #0x8
 8057b84: e7ff         	b	0x8057b86 <xQueueReceive+0x6c> @ imm = #-0x2
 8057b86: f000 fb22    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0x644
 8057b8a: e7ff         	b	0x8057b8c <xQueueReceive+0x72> @ imm = #-0x2
 8057b8c: e7fe         	b	0x8057b8c <xQueueReceive+0x72> @ imm = #-0x4
;     for( ; ; )
 8057b8e: e7ff         	b	0x8057b90 <xQueueReceive+0x76> @ imm = #-0x2
;         taskENTER_CRITICAL();
 8057b90: f000 f97a    	bl	0x8057e88 <vPortEnterCritical> @ imm = #0x2f4
;             const UBaseType_t uxMessagesWaiting = pxQueue->uxMessagesWaiting;
 8057b94: 9804         	ldr	r0, [sp, #0x10]
 8057b96: 6b80         	ldr	r0, [r0, #0x38]
 8057b98: 9003         	str	r0, [sp, #0xc]
;             if( uxMessagesWaiting > ( UBaseType_t ) 0 )
 8057b9a: 9803         	ldr	r0, [sp, #0xc]
 8057b9c: b1e8         	cbz	r0, 0x8057bda <xQueueReceive+0xc0> @ imm = #0x3a
 8057b9e: e7ff         	b	0x8057ba0 <xQueueReceive+0x86> @ imm = #-0x2
;                 prvCopyDataFromQueue( pxQueue, pvBuffer );
 8057ba0: 9804         	ldr	r0, [sp, #0x10]
 8057ba2: 9909         	ldr	r1, [sp, #0x24]
 8057ba4: f000 f881    	bl	0x8057caa <prvCopyDataFromQueue> @ imm = #0x102
;                 pxQueue->uxMessagesWaiting = ( UBaseType_t ) ( uxMessagesWaiting - ( UBaseType_t ) 1 );
 8057ba8: 9803         	ldr	r0, [sp, #0xc]
 8057baa: 3801         	subs	r0, #0x1
 8057bac: 9904         	ldr	r1, [sp, #0x10]
 8057bae: 6388         	str	r0, [r1, #0x38]
;                 if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
 8057bb0: 9804         	ldr	r0, [sp, #0x10]
 8057bb2: 6900         	ldr	r0, [r0, #0x10]
 8057bb4: b158         	cbz	r0, 0x8057bce <xQueueReceive+0xb4> @ imm = #0x16
 8057bb6: e7ff         	b	0x8057bb8 <xQueueReceive+0x9e> @ imm = #-0x2
;                     if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
 8057bb8: 9804         	ldr	r0, [sp, #0x10]
 8057bba: 3010         	adds	r0, #0x10
 8057bbc: f7fe fe5d    	bl	0x805687a <xTaskRemoveFromEventList> @ imm = #-0x1346
 8057bc0: b118         	cbz	r0, 0x8057bca <xQueueReceive+0xb0> @ imm = #0x6
 8057bc2: e7ff         	b	0x8057bc4 <xQueueReceive+0xaa> @ imm = #-0x2
;                         queueYIELD_IF_USING_PREEMPTION();
 8057bc4: f000 f954    	bl	0x8057e70 <vPortYield>  @ imm = #0x2a8
;                     }
 8057bc8: e000         	b	0x8057bcc <xQueueReceive+0xb2> @ imm = #0x0
 8057bca: e7ff         	b	0x8057bcc <xQueueReceive+0xb2> @ imm = #-0x2
;                 }
 8057bcc: e000         	b	0x8057bd0 <xQueueReceive+0xb6> @ imm = #0x0
 8057bce: e7ff         	b	0x8057bd0 <xQueueReceive+0xb6> @ imm = #-0x2
;                 taskEXIT_CRITICAL();
 8057bd0: f000 f96a    	bl	0x8057ea8 <vPortExitCritical> @ imm = #0x2d4
 8057bd4: 2001         	movs	r0, #0x1
;                 return pdPASS;
 8057bd6: 900b         	str	r0, [sp, #0x2c]
 8057bd8: e064         	b	0x8057ca4 <xQueueReceive+0x18a> @ imm = #0xc8
;                 if( xTicksToWait == ( TickType_t ) 0 )
 8057bda: 9808         	ldr	r0, [sp, #0x20]
 8057bdc: b928         	cbnz	r0, 0x8057bea <xQueueReceive+0xd0> @ imm = #0xa
 8057bde: e7ff         	b	0x8057be0 <xQueueReceive+0xc6> @ imm = #-0x2
;                     taskEXIT_CRITICAL();
 8057be0: f000 f962    	bl	0x8057ea8 <vPortExitCritical> @ imm = #0x2c4
 8057be4: 2000         	movs	r0, #0x0
;                     return errQUEUE_EMPTY;
 8057be6: 900b         	str	r0, [sp, #0x2c]
 8057be8: e05c         	b	0x8057ca4 <xQueueReceive+0x18a> @ imm = #0xb8
;                 else if( xEntryTimeSet == pdFALSE )
 8057bea: 9807         	ldr	r0, [sp, #0x1c]
 8057bec: b930         	cbnz	r0, 0x8057bfc <xQueueReceive+0xe2> @ imm = #0xc
 8057bee: e7ff         	b	0x8057bf0 <xQueueReceive+0xd6> @ imm = #-0x2
 8057bf0: a805         	add	r0, sp, #0x14
;                     vTaskInternalSetTimeOutState( &xTimeOut );
 8057bf2: f7fe ff15    	bl	0x8056a20 <vTaskInternalSetTimeOutState> @ imm = #-0x11d6
 8057bf6: 2001         	movs	r0, #0x1
;                     xEntryTimeSet = pdTRUE;
 8057bf8: 9007         	str	r0, [sp, #0x1c]
;                 }
 8057bfa: e000         	b	0x8057bfe <xQueueReceive+0xe4> @ imm = #0x0
 8057bfc: e7ff         	b	0x8057bfe <xQueueReceive+0xe4> @ imm = #-0x2
 8057bfe: e7ff         	b	0x8057c00 <xQueueReceive+0xe6> @ imm = #-0x2
 8057c00: e7ff         	b	0x8057c02 <xQueueReceive+0xe8> @ imm = #-0x2
;         taskEXIT_CRITICAL();
 8057c02: f000 f951    	bl	0x8057ea8 <vPortExitCritical> @ imm = #0x2a2
;         vTaskSuspendAll();
 8057c06: f7fe f9e3    	bl	0x8055fd0 <vTaskSuspendAll> @ imm = #-0x1c3a
;         prvLockQueue( pxQueue );
 8057c0a: f000 f93d    	bl	0x8057e88 <vPortEnterCritical> @ imm = #0x27a
 8057c0e: 9804         	ldr	r0, [sp, #0x10]
 8057c10: f990 0044    	ldrsb.w	r0, [r0, #0x44]
 8057c14: 3001         	adds	r0, #0x1
 8057c16: b928         	cbnz	r0, 0x8057c24 <xQueueReceive+0x10a> @ imm = #0xa
 8057c18: e7ff         	b	0x8057c1a <xQueueReceive+0x100> @ imm = #-0x2
 8057c1a: 9904         	ldr	r1, [sp, #0x10]
 8057c1c: 2000         	movs	r0, #0x0
 8057c1e: f881 0044    	strb.w	r0, [r1, #0x44]
 8057c22: e7ff         	b	0x8057c24 <xQueueReceive+0x10a> @ imm = #-0x2
 8057c24: 9804         	ldr	r0, [sp, #0x10]
 8057c26: f990 0045    	ldrsb.w	r0, [r0, #0x45]
 8057c2a: 3001         	adds	r0, #0x1
 8057c2c: b928         	cbnz	r0, 0x8057c3a <xQueueReceive+0x120> @ imm = #0xa
 8057c2e: e7ff         	b	0x8057c30 <xQueueReceive+0x116> @ imm = #-0x2
 8057c30: 9904         	ldr	r1, [sp, #0x10]
 8057c32: 2000         	movs	r0, #0x0
 8057c34: f881 0045    	strb.w	r0, [r1, #0x45]
 8057c38: e7ff         	b	0x8057c3a <xQueueReceive+0x120> @ imm = #-0x2
 8057c3a: f000 f935    	bl	0x8057ea8 <vPortExitCritical> @ imm = #0x26a
 8057c3e: a805         	add	r0, sp, #0x14
 8057c40: a908         	add	r1, sp, #0x20
;         if( xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == pdFALSE )
 8057c42: f7fe feff    	bl	0x8056a44 <xTaskCheckForTimeOut> @ imm = #-0x1202
 8057c46: b9e8         	cbnz	r0, 0x8057c84 <xQueueReceive+0x16a> @ imm = #0x3a
 8057c48: e7ff         	b	0x8057c4a <xQueueReceive+0x130> @ imm = #-0x2
;             if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
 8057c4a: 9804         	ldr	r0, [sp, #0x10]
 8057c4c: f000 f84f    	bl	0x8057cee <prvIsQueueEmpty> @ imm = #0x9e
 8057c50: b188         	cbz	r0, 0x8057c76 <xQueueReceive+0x15c> @ imm = #0x22
 8057c52: e7ff         	b	0x8057c54 <xQueueReceive+0x13a> @ imm = #-0x2
;                 vTaskPlaceOnEventList( &( pxQueue->xTasksWaitingToReceive ), xTicksToWait );
 8057c54: 9804         	ldr	r0, [sp, #0x10]
 8057c56: 3024         	adds	r0, #0x24
 8057c58: 9908         	ldr	r1, [sp, #0x20]
 8057c5a: f7fe fdb9    	bl	0x80567d0 <vTaskPlaceOnEventList> @ imm = #-0x148e
;                 prvUnlockQueue( pxQueue );
 8057c5e: 9804         	ldr	r0, [sp, #0x10]
 8057c60: f7ff ff03    	bl	0x8057a6a <prvUnlockQueue> @ imm = #-0x1fa
;                 if( xTaskResumeAll() == pdFALSE )
 8057c64: f7fe fa3c    	bl	0x80560e0 <xTaskResumeAll> @ imm = #-0x1b88
 8057c68: b918         	cbnz	r0, 0x8057c72 <xQueueReceive+0x158> @ imm = #0x6
 8057c6a: e7ff         	b	0x8057c6c <xQueueReceive+0x152> @ imm = #-0x2
;                     taskYIELD_WITHIN_API();
 8057c6c: f000 f900    	bl	0x8057e70 <vPortYield>  @ imm = #0x200
;                 }
 8057c70: e000         	b	0x8057c74 <xQueueReceive+0x15a> @ imm = #0x0
 8057c72: e7ff         	b	0x8057c74 <xQueueReceive+0x15a> @ imm = #-0x2
;             }
 8057c74: e005         	b	0x8057c82 <xQueueReceive+0x168> @ imm = #0xa
;                 prvUnlockQueue( pxQueue );
 8057c76: 9804         	ldr	r0, [sp, #0x10]
 8057c78: f7ff fef7    	bl	0x8057a6a <prvUnlockQueue> @ imm = #-0x212
;                 ( void ) xTaskResumeAll();
 8057c7c: f7fe fa30    	bl	0x80560e0 <xTaskResumeAll> @ imm = #-0x1ba0
 8057c80: e7ff         	b	0x8057c82 <xQueueReceive+0x168> @ imm = #-0x2
;         }
 8057c82: e00e         	b	0x8057ca2 <xQueueReceive+0x188> @ imm = #0x1c
;             prvUnlockQueue( pxQueue );
 8057c84: 9804         	ldr	r0, [sp, #0x10]
 8057c86: f7ff fef0    	bl	0x8057a6a <prvUnlockQueue> @ imm = #-0x220
;             ( void ) xTaskResumeAll();
 8057c8a: f7fe fa29    	bl	0x80560e0 <xTaskResumeAll> @ imm = #-0x1bae
;             if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
 8057c8e: 9804         	ldr	r0, [sp, #0x10]
 8057c90: f000 f82d    	bl	0x8057cee <prvIsQueueEmpty> @ imm = #0x5a
 8057c94: b118         	cbz	r0, 0x8057c9e <xQueueReceive+0x184> @ imm = #0x6
 8057c96: e7ff         	b	0x8057c98 <xQueueReceive+0x17e> @ imm = #-0x2
 8057c98: 2000         	movs	r0, #0x0
;                 return errQUEUE_EMPTY;
 8057c9a: 900b         	str	r0, [sp, #0x2c]
 8057c9c: e002         	b	0x8057ca4 <xQueueReceive+0x18a> @ imm = #0x4
 8057c9e: e7ff         	b	0x8057ca0 <xQueueReceive+0x186> @ imm = #-0x2
 8057ca0: e7ff         	b	0x8057ca2 <xQueueReceive+0x188> @ imm = #-0x2
;     for( ; ; )
 8057ca2: e775         	b	0x8057b90 <xQueueReceive+0x76> @ imm = #-0x116
; }
 8057ca4: 980b         	ldr	r0, [sp, #0x2c]
 8057ca6: b00c         	add	sp, #0x30
 8057ca8: bd80         	pop	{r7, pc}

08057caa <prvCopyDataFromQueue>:
; {
 8057caa: b580         	push	{r7, lr}
 8057cac: 466f         	mov	r7, sp
 8057cae: b082         	sub	sp, #0x8
 8057cb0: 9001         	str	r0, [sp, #0x4]
 8057cb2: 9100         	str	r1, [sp]
;     if( pxQueue->uxItemSize != ( UBaseType_t ) 0 )
 8057cb4: 9801         	ldr	r0, [sp, #0x4]
 8057cb6: 6c00         	ldr	r0, [r0, #0x40]
 8057cb8: b1b8         	cbz	r0, 0x8057cea <prvCopyDataFromQueue+0x40> @ imm = #0x2e
 8057cba: e7ff         	b	0x8057cbc <prvCopyDataFromQueue+0x12> @ imm = #-0x2
;         pxQueue->u.xQueue.pcReadFrom += pxQueue->uxItemSize;           /*lint !e9016 Pointer arithmetic on char types ok, especially in this use case where it is the clearest way of conveying intent. */
 8057cbc: 9901         	ldr	r1, [sp, #0x4]
 8057cbe: 68c8         	ldr	r0, [r1, #0xc]
 8057cc0: 6c0a         	ldr	r2, [r1, #0x40]
 8057cc2: 4410         	add	r0, r2
 8057cc4: 60c8         	str	r0, [r1, #0xc]
;         if( pxQueue->u.xQueue.pcReadFrom >= pxQueue->u.xQueue.pcTail ) /*lint !e946 MISRA exception justified as use of the relational operator is the cleanest solutions. */
 8057cc6: 9801         	ldr	r0, [sp, #0x4]
 8057cc8: 6881         	ldr	r1, [r0, #0x8]
 8057cca: 68c0         	ldr	r0, [r0, #0xc]
 8057ccc: 4288         	cmp	r0, r1
 8057cce: d304         	blo	0x8057cda <prvCopyDataFromQueue+0x30> @ imm = #0x8
 8057cd0: e7ff         	b	0x8057cd2 <prvCopyDataFromQueue+0x28> @ imm = #-0x2
;             pxQueue->u.xQueue.pcReadFrom = pxQueue->pcHead;
 8057cd2: 9901         	ldr	r1, [sp, #0x4]
 8057cd4: 6808         	ldr	r0, [r1]
 8057cd6: 60c8         	str	r0, [r1, #0xc]
;         }
 8057cd8: e000         	b	0x8057cdc <prvCopyDataFromQueue+0x32> @ imm = #0x0
 8057cda: e7ff         	b	0x8057cdc <prvCopyDataFromQueue+0x32> @ imm = #-0x2
;         ( void ) memcpy( ( void * ) pvBuffer, ( void * ) pxQueue->u.xQueue.pcReadFrom, ( size_t ) pxQueue->uxItemSize ); /*lint !e961 !e418 !e9087 MISRA exception as the casts are only redundant for some ports.  Also previous logic ensures a null pointer can only be passed to memcpy() when the count is 0.  Cast to void required by function signature and safe as no alignment requirement and copy length specified in bytes. */
 8057cdc: 9800         	ldr	r0, [sp]
 8057cde: 9a01         	ldr	r2, [sp, #0x4]
 8057ce0: 68d1         	ldr	r1, [r2, #0xc]
 8057ce2: 6c12         	ldr	r2, [r2, #0x40]
 8057ce4: f000 fac4    	bl	0x8058270 <memcpy>      @ imm = #0x588
;     }
 8057ce8: e7ff         	b	0x8057cea <prvCopyDataFromQueue+0x40> @ imm = #-0x2
; }
 8057cea: b002         	add	sp, #0x8
 8057cec: bd80         	pop	{r7, pc}

08057cee <prvIsQueueEmpty>:
; {
 8057cee: b580         	push	{r7, lr}
 8057cf0: 466f         	mov	r7, sp
 8057cf2: b082         	sub	sp, #0x8
 8057cf4: 9001         	str	r0, [sp, #0x4]
;     taskENTER_CRITICAL();
 8057cf6: f000 f8c7    	bl	0x8057e88 <vPortEnterCritical> @ imm = #0x18e
;         if( pxQueue->uxMessagesWaiting == ( UBaseType_t ) 0 )
 8057cfa: 9801         	ldr	r0, [sp, #0x4]
 8057cfc: 6b80         	ldr	r0, [r0, #0x38]
 8057cfe: b918         	cbnz	r0, 0x8057d08 <prvIsQueueEmpty+0x1a> @ imm = #0x6
 8057d00: e7ff         	b	0x8057d02 <prvIsQueueEmpty+0x14> @ imm = #-0x2
 8057d02: 2001         	movs	r0, #0x1
;             xReturn = pdTRUE;
 8057d04: 9000         	str	r0, [sp]
;         }
 8057d06: e002         	b	0x8057d0e <prvIsQueueEmpty+0x20> @ imm = #0x4
 8057d08: 2000         	movs	r0, #0x0
;             xReturn = pdFALSE;
 8057d0a: 9000         	str	r0, [sp]
 8057d0c: e7ff         	b	0x8057d0e <prvIsQueueEmpty+0x20> @ imm = #-0x2
;     taskEXIT_CRITICAL();
 8057d0e: f000 f8cb    	bl	0x8057ea8 <vPortExitCritical> @ imm = #0x196
;     return xReturn;
 8057d12: 9800         	ldr	r0, [sp]
 8057d14: b002         	add	sp, #0x8
 8057d16: bd80         	pop	{r7, pc}

08057d18 <vQueueAddToRegistry>:
;     {
 8057d18: b580         	push	{r7, lr}
 8057d1a: 466f         	mov	r7, sp
 8057d1c: b084         	sub	sp, #0x10
 8057d1e: 9003         	str	r0, [sp, #0xc]
 8057d20: 9102         	str	r1, [sp, #0x8]
 8057d22: 2000         	movs	r0, #0x0
;         QueueRegistryItem_t * pxEntryToWrite = NULL;
 8057d24: 9000         	str	r0, [sp]
;         configASSERT( xQueue );
 8057d26: 9803         	ldr	r0, [sp, #0xc]
 8057d28: b920         	cbnz	r0, 0x8057d34 <vQueueAddToRegistry+0x1c> @ imm = #0x8
 8057d2a: e7ff         	b	0x8057d2c <vQueueAddToRegistry+0x14> @ imm = #-0x2
 8057d2c: f000 fa4f    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0x49e
 8057d30: e7ff         	b	0x8057d32 <vQueueAddToRegistry+0x1a> @ imm = #-0x2
 8057d32: e7fe         	b	0x8057d32 <vQueueAddToRegistry+0x1a> @ imm = #-0x4
;         if( pcQueueName != NULL )
 8057d34: 9802         	ldr	r0, [sp, #0x8]
 8057d36: b3c8         	cbz	r0, 0x8057dac <vQueueAddToRegistry+0x94> @ imm = #0x72
 8057d38: e7ff         	b	0x8057d3a <vQueueAddToRegistry+0x22> @ imm = #-0x2
 8057d3a: 2000         	movs	r0, #0x0
;             for( ux = ( UBaseType_t ) 0U; ux < ( UBaseType_t ) configQUEUE_REGISTRY_SIZE; ux++ )
 8057d3c: 9001         	str	r0, [sp, #0x4]
 8057d3e: e7ff         	b	0x8057d40 <vQueueAddToRegistry+0x28> @ imm = #-0x2
 8057d40: 9801         	ldr	r0, [sp, #0x4]
 8057d42: 2807         	cmp	r0, #0x7
 8057d44: d831         	bhi	0x8057daa <vQueueAddToRegistry+0x92> @ imm = #0x62
 8057d46: e7ff         	b	0x8057d48 <vQueueAddToRegistry+0x30> @ imm = #-0x2
;                 if( xQueue == xQueueRegistry[ ux ].xHandle )
 8057d48: 9803         	ldr	r0, [sp, #0xc]
 8057d4a: 9a01         	ldr	r2, [sp, #0x4]
 8057d4c: f242 3148    	movw	r1, #0x2348
 8057d50: f2c2 0100    	movt	r1, #0x2000
 8057d54: eb01 01c2    	add.w	r1, r1, r2, lsl #3
 8057d58: 6849         	ldr	r1, [r1, #0x4]
 8057d5a: 4288         	cmp	r0, r1
 8057d5c: d109         	bne	0x8057d72 <vQueueAddToRegistry+0x5a> @ imm = #0x12
 8057d5e: e7ff         	b	0x8057d60 <vQueueAddToRegistry+0x48> @ imm = #-0x2
;                     pxEntryToWrite = &( xQueueRegistry[ ux ] );
 8057d60: 9901         	ldr	r1, [sp, #0x4]
 8057d62: f242 3048    	movw	r0, #0x2348
 8057d66: f2c2 0000    	movt	r0, #0x2000
 8057d6a: eb00 00c1    	add.w	r0, r0, r1, lsl #3
 8057d6e: 9000         	str	r0, [sp]
;                     break;
 8057d70: e01b         	b	0x8057daa <vQueueAddToRegistry+0x92> @ imm = #0x36
;                 else if( ( pxEntryToWrite == NULL ) && ( xQueueRegistry[ ux ].pcQueueName == NULL ) )
 8057d72: 9800         	ldr	r0, [sp]
 8057d74: b990         	cbnz	r0, 0x8057d9c <vQueueAddToRegistry+0x84> @ imm = #0x24
 8057d76: e7ff         	b	0x8057d78 <vQueueAddToRegistry+0x60> @ imm = #-0x2
 8057d78: 9901         	ldr	r1, [sp, #0x4]
 8057d7a: f242 3048    	movw	r0, #0x2348
 8057d7e: f2c2 0000    	movt	r0, #0x2000
 8057d82: f850 0031    	ldr.w	r0, [r0, r1, lsl #3]
 8057d86: b948         	cbnz	r0, 0x8057d9c <vQueueAddToRegistry+0x84> @ imm = #0x12
 8057d88: e7ff         	b	0x8057d8a <vQueueAddToRegistry+0x72> @ imm = #-0x2
;                     pxEntryToWrite = &( xQueueRegistry[ ux ] );
 8057d8a: 9901         	ldr	r1, [sp, #0x4]
 8057d8c: f242 3048    	movw	r0, #0x2348
 8057d90: f2c2 0000    	movt	r0, #0x2000
 8057d94: eb00 00c1    	add.w	r0, r0, r1, lsl #3
 8057d98: 9000         	str	r0, [sp]
;                 }
 8057d9a: e000         	b	0x8057d9e <vQueueAddToRegistry+0x86> @ imm = #0x0
 8057d9c: e7ff         	b	0x8057d9e <vQueueAddToRegistry+0x86> @ imm = #-0x2
 8057d9e: e7ff         	b	0x8057da0 <vQueueAddToRegistry+0x88> @ imm = #-0x2
;             }
 8057da0: e7ff         	b	0x8057da2 <vQueueAddToRegistry+0x8a> @ imm = #-0x2
;             for( ux = ( UBaseType_t ) 0U; ux < ( UBaseType_t ) configQUEUE_REGISTRY_SIZE; ux++ )
 8057da2: 9801         	ldr	r0, [sp, #0x4]
 8057da4: 3001         	adds	r0, #0x1
 8057da6: 9001         	str	r0, [sp, #0x4]
 8057da8: e7ca         	b	0x8057d40 <vQueueAddToRegistry+0x28> @ imm = #-0x6c
;         }
 8057daa: e7ff         	b	0x8057dac <vQueueAddToRegistry+0x94> @ imm = #-0x2
;         if( pxEntryToWrite != NULL )
 8057dac: 9800         	ldr	r0, [sp]
 8057dae: b138         	cbz	r0, 0x8057dc0 <vQueueAddToRegistry+0xa8> @ imm = #0xe
 8057db0: e7ff         	b	0x8057db2 <vQueueAddToRegistry+0x9a> @ imm = #-0x2
;             pxEntryToWrite->pcQueueName = pcQueueName;
 8057db2: 9802         	ldr	r0, [sp, #0x8]
 8057db4: 9900         	ldr	r1, [sp]
 8057db6: 6008         	str	r0, [r1]
;             pxEntryToWrite->xHandle = xQueue;
 8057db8: 9803         	ldr	r0, [sp, #0xc]
 8057dba: 9900         	ldr	r1, [sp]
 8057dbc: 6048         	str	r0, [r1, #0x4]
;         }
 8057dbe: e7ff         	b	0x8057dc0 <vQueueAddToRegistry+0xa8> @ imm = #-0x2
;     }
 8057dc0: b004         	add	sp, #0x10
 8057dc2: bd80         	pop	{r7, pc}

08057dc4 <vQueueWaitForMessageRestricted>:
;     {
 8057dc4: b580         	push	{r7, lr}
 8057dc6: 466f         	mov	r7, sp
 8057dc8: b084         	sub	sp, #0x10
 8057dca: 9003         	str	r0, [sp, #0xc]
 8057dcc: 9102         	str	r1, [sp, #0x8]
 8057dce: 9201         	str	r2, [sp, #0x4]
;         Queue_t * const pxQueue = xQueue;
 8057dd0: 9803         	ldr	r0, [sp, #0xc]
 8057dd2: 9000         	str	r0, [sp]
;         prvLockQueue( pxQueue );
 8057dd4: f000 f858    	bl	0x8057e88 <vPortEnterCritical> @ imm = #0xb0
 8057dd8: 9800         	ldr	r0, [sp]
 8057dda: f990 0044    	ldrsb.w	r0, [r0, #0x44]
 8057dde: 3001         	adds	r0, #0x1
 8057de0: b928         	cbnz	r0, 0x8057dee <vQueueWaitForMessageRestricted+0x2a> @ imm = #0xa
 8057de2: e7ff         	b	0x8057de4 <vQueueWaitForMessageRestricted+0x20> @ imm = #-0x2
 8057de4: 9900         	ldr	r1, [sp]
 8057de6: 2000         	movs	r0, #0x0
 8057de8: f881 0044    	strb.w	r0, [r1, #0x44]
 8057dec: e7ff         	b	0x8057dee <vQueueWaitForMessageRestricted+0x2a> @ imm = #-0x2
 8057dee: 9800         	ldr	r0, [sp]
 8057df0: f990 0045    	ldrsb.w	r0, [r0, #0x45]
 8057df4: 3001         	adds	r0, #0x1
 8057df6: b928         	cbnz	r0, 0x8057e04 <vQueueWaitForMessageRestricted+0x40> @ imm = #0xa
 8057df8: e7ff         	b	0x8057dfa <vQueueWaitForMessageRestricted+0x36> @ imm = #-0x2
 8057dfa: 9900         	ldr	r1, [sp]
 8057dfc: 2000         	movs	r0, #0x0
 8057dfe: f881 0045    	strb.w	r0, [r1, #0x45]
 8057e02: e7ff         	b	0x8057e04 <vQueueWaitForMessageRestricted+0x40> @ imm = #-0x2
 8057e04: f000 f850    	bl	0x8057ea8 <vPortExitCritical> @ imm = #0xa0
;         if( pxQueue->uxMessagesWaiting == ( UBaseType_t ) 0U )
 8057e08: 9800         	ldr	r0, [sp]
 8057e0a: 6b80         	ldr	r0, [r0, #0x38]
 8057e0c: b938         	cbnz	r0, 0x8057e1e <vQueueWaitForMessageRestricted+0x5a> @ imm = #0xe
 8057e0e: e7ff         	b	0x8057e10 <vQueueWaitForMessageRestricted+0x4c> @ imm = #-0x2
;             vTaskPlaceOnEventListRestricted( &( pxQueue->xTasksWaitingToReceive ), xTicksToWait, xWaitIndefinitely );
 8057e10: 9800         	ldr	r0, [sp]
 8057e12: 3024         	adds	r0, #0x24
 8057e14: 9902         	ldr	r1, [sp, #0x8]
 8057e16: 9a01         	ldr	r2, [sp, #0x4]
 8057e18: f7fe fcf5    	bl	0x8056806 <vTaskPlaceOnEventListRestricted> @ imm = #-0x1616
;         }
 8057e1c: e000         	b	0x8057e20 <vQueueWaitForMessageRestricted+0x5c> @ imm = #0x0
 8057e1e: e7ff         	b	0x8057e20 <vQueueWaitForMessageRestricted+0x5c> @ imm = #-0x2
;         prvUnlockQueue( pxQueue );
 8057e20: 9800         	ldr	r0, [sp]
 8057e22: f7ff fe22    	bl	0x8057a6a <prvUnlockQueue> @ imm = #-0x3bc
;     }
 8057e26: b004         	add	sp, #0x10
 8057e28: bd80         	pop	{r7, pc}

08057e2a <vPortSetupTimerInterrupt>:
; {
 8057e2a: f24e 0110    	movw	r1, #0xe010
 8057e2e: f2ce 0100    	movt	r1, #0xe000
 8057e32: 2004         	movs	r0, #0x4
;     portNVIC_SYSTICK_CTRL_REG = portNVIC_SYSTICK_CLK_BIT_CONFIG;
 8057e34: 6008         	str	r0, [r1]
 8057e36: f24e 0218    	movw	r2, #0xe018
 8057e3a: f2ce 0200    	movt	r2, #0xe000
 8057e3e: 2000         	movs	r0, #0x0
;     portNVIC_SYSTICK_CURRENT_VALUE_REG = 0UL;
 8057e40: 6010         	str	r0, [r2]
;     portNVIC_SYSTICK_LOAD_REG = ( configSYSTICK_CLOCK_HZ / configTICK_RATE_HZ ) - 1UL;
 8057e42: f240 1008    	movw	r0, #0x108
 8057e46: f2c2 0000    	movt	r0, #0x2000
 8057e4a: 6800         	ldr	r0, [r0]
 8057e4c: f644 52d3    	movw	r2, #0x4dd3
 8057e50: f2c1 0262    	movt	r2, #0x1062
 8057e54: fba0 0202    	umull	r0, r2, r0, r2
 8057e58: f04f 30ff    	mov.w	r0, #0xffffffff
 8057e5c: eb00 1092    	add.w	r0, r0, r2, lsr #6
 8057e60: f24e 0214    	movw	r2, #0xe014
 8057e64: f2ce 0200    	movt	r2, #0xe000
 8057e68: 6010         	str	r0, [r2]
 8057e6a: 2007         	movs	r0, #0x7
;     portNVIC_SYSTICK_CTRL_REG = portNVIC_SYSTICK_CLK_BIT_CONFIG | portNVIC_SYSTICK_INT_BIT | portNVIC_SYSTICK_ENABLE_BIT;
 8057e6c: 6008         	str	r0, [r1]
; }
 8057e6e: 4770         	bx	lr

08057e70 <vPortYield>:
; {
 8057e70: f64e 5104    	movw	r1, #0xed04
 8057e74: f2ce 0100    	movt	r1, #0xe000
 8057e78: f04f 5080    	mov.w	r0, #0x10000000
;     portNVIC_INT_CTRL_REG = portNVIC_PENDSVSET_BIT;
 8057e7c: 6008         	str	r0, [r1]
;     __asm volatile ( "dsb" ::: "memory" );
 8057e7e: f3bf 8f4f    	dsb	sy
;     __asm volatile ( "isb" );
 8057e82: f3bf 8f6f    	isb	sy
; }
 8057e86: 4770         	bx	lr

08057e88 <vPortEnterCritical>:
; {
 8057e88: b580         	push	{r7, lr}
 8057e8a: 466f         	mov	r7, sp
;     portDISABLE_INTERRUPTS();
 8057e8c: f000 f99f    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0x33e
;     ulCriticalNesting++;
 8057e90: f240 110c    	movw	r1, #0x10c
 8057e94: f2c2 0100    	movt	r1, #0x2000
 8057e98: 6808         	ldr	r0, [r1]
 8057e9a: 3001         	adds	r0, #0x1
 8057e9c: 6008         	str	r0, [r1]
;     __asm volatile ( "dsb" ::: "memory" );
 8057e9e: f3bf 8f4f    	dsb	sy
;     __asm volatile ( "isb" );
 8057ea2: f3bf 8f6f    	isb	sy
; }
 8057ea6: bd80         	pop	{r7, pc}

08057ea8 <vPortExitCritical>:
; {
 8057ea8: b580         	push	{r7, lr}
 8057eaa: 466f         	mov	r7, sp
;     configASSERT( ulCriticalNesting );
 8057eac: f240 100c    	movw	r0, #0x10c
 8057eb0: f2c2 0000    	movt	r0, #0x2000
 8057eb4: 6800         	ldr	r0, [r0]
 8057eb6: b920         	cbnz	r0, 0x8057ec2 <vPortExitCritical+0x1a> @ imm = #0x8
 8057eb8: e7ff         	b	0x8057eba <vPortExitCritical+0x12> @ imm = #-0x2
 8057eba: f000 f988    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0x310
 8057ebe: e7ff         	b	0x8057ec0 <vPortExitCritical+0x18> @ imm = #-0x2
 8057ec0: e7fe         	b	0x8057ec0 <vPortExitCritical+0x18> @ imm = #-0x4
;     ulCriticalNesting--;
 8057ec2: f240 100c    	movw	r0, #0x10c
 8057ec6: f2c2 0000    	movt	r0, #0x2000
 8057eca: 6801         	ldr	r1, [r0]
 8057ecc: 3901         	subs	r1, #0x1
 8057ece: 6001         	str	r1, [r0]
;     if( ulCriticalNesting == 0 )
 8057ed0: 6800         	ldr	r0, [r0]
 8057ed2: b920         	cbnz	r0, 0x8057ede <vPortExitCritical+0x36> @ imm = #0x8
 8057ed4: e7ff         	b	0x8057ed6 <vPortExitCritical+0x2e> @ imm = #-0x2
 8057ed6: 2000         	movs	r0, #0x0
;         portENABLE_INTERRUPTS();
 8057ed8: f000 f984    	bl	0x80581e4 <vClearInterruptMask> @ imm = #0x308
;     }
 8057edc: e7ff         	b	0x8057ede <vPortExitCritical+0x36> @ imm = #-0x2
; }
 8057ede: bd80         	pop	{r7, pc}

08057ee0 <SysTick_Handler>:
; {
 8057ee0: b580         	push	{r7, lr}
 8057ee2: 466f         	mov	r7, sp
 8057ee4: b082         	sub	sp, #0x8
;     ulPreviousMask = portSET_INTERRUPT_MASK_FROM_ISR();
 8057ee6: f000 f972    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0x2e4
 8057eea: 9001         	str	r0, [sp, #0x4]
;         if( xTaskIncrementTick() != pdFALSE )
 8057eec: f7fe fb2a    	bl	0x8056544 <xTaskIncrementTick> @ imm = #-0x19ac
 8057ef0: b140         	cbz	r0, 0x8057f04 <SysTick_Handler+0x24> @ imm = #0x10
 8057ef2: e7ff         	b	0x8057ef4 <SysTick_Handler+0x14> @ imm = #-0x2
 8057ef4: f64e 5104    	movw	r1, #0xed04
 8057ef8: f2ce 0100    	movt	r1, #0xe000
 8057efc: f04f 5080    	mov.w	r0, #0x10000000
;             portNVIC_INT_CTRL_REG = portNVIC_PENDSVSET_BIT;
 8057f00: 6008         	str	r0, [r1]
;         }
 8057f02: e000         	b	0x8057f06 <SysTick_Handler+0x26> @ imm = #0x0
 8057f04: e7ff         	b	0x8057f06 <SysTick_Handler+0x26> @ imm = #-0x2
;     portCLEAR_INTERRUPT_MASK_FROM_ISR( ulPreviousMask );
 8057f06: 9801         	ldr	r0, [sp, #0x4]
 8057f08: f000 f96c    	bl	0x80581e4 <vClearInterruptMask> @ imm = #0x2d8
; }
 8057f0c: b002         	add	sp, #0x8
 8057f0e: bd80         	pop	{r7, pc}

08057f10 <vPortSVCHandler_C>:
; {
 8057f10: b580         	push	{r7, lr}
 8057f12: 466f         	mov	r7, sp
 8057f14: b084         	sub	sp, #0x10
 8057f16: 9003         	str	r0, [sp, #0xc]
;     ulPC = pulCallerStackAddress[ portOFFSET_TO_PC ];
 8057f18: 9803         	ldr	r0, [sp, #0xc]
 8057f1a: 6980         	ldr	r0, [r0, #0x18]
 8057f1c: 9002         	str	r0, [sp, #0x8]
;     ucSVCNumber = ( ( uint8_t * ) ulPC )[ -2 ];
 8057f1e: 9802         	ldr	r0, [sp, #0x8]
 8057f20: f810 0c02    	ldrb	r0, [r0, #-2]
 8057f24: f807 0c09    	strb	r0, [r7, #-9]
;     switch( ucSVCNumber )
 8057f28: f817 0c09    	ldrb	r0, [r7, #-9]
 8057f2c: 2802         	cmp	r0, #0x2
 8057f2e: d103         	bne	0x8057f38 <vPortSVCHandler_C+0x28> @ imm = #0x6
 8057f30: e7ff         	b	0x8057f32 <vPortSVCHandler_C+0x22> @ imm = #-0x2
;             vRestoreContextOfFirstTask();
 8057f32: f000 f926    	bl	0x8058182 <vRestoreContextOfFirstTask> @ imm = #0x24c
;             break;
 8057f36: e003         	b	0x8057f40 <vPortSVCHandler_C+0x30> @ imm = #0x6
;             configASSERT( pdFALSE );
 8057f38: f000 f949    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0x292
 8057f3c: e7ff         	b	0x8057f3e <vPortSVCHandler_C+0x2e> @ imm = #-0x2
 8057f3e: e7fe         	b	0x8057f3e <vPortSVCHandler_C+0x2e> @ imm = #-0x4
; }
 8057f40: b004         	add	sp, #0x10
 8057f42: bd80         	pop	{r7, pc}

08057f44 <pxPortInitialiseStack>:
;     {
 8057f44: b084         	sub	sp, #0x10
 8057f46: 9003         	str	r0, [sp, #0xc]
 8057f48: 9102         	str	r1, [sp, #0x8]
 8057f4a: 9201         	str	r2, [sp, #0x4]
 8057f4c: 9300         	str	r3, [sp]
;             pxTopOfStack--;                                          /* Offset added to account for the way the MCU uses the stack on entry/exit of interrupts. */
 8057f4e: 9803         	ldr	r0, [sp, #0xc]
 8057f50: 3804         	subs	r0, #0x4
 8057f52: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = portINITIAL_XPSR;                        /* xPSR. */
 8057f54: 9903         	ldr	r1, [sp, #0xc]
 8057f56: f04f 7080    	mov.w	r0, #0x1000000
 8057f5a: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 8057f5c: 9803         	ldr	r0, [sp, #0xc]
 8057f5e: 3804         	subs	r0, #0x4
 8057f60: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) pxCode;                  /* PC. */
 8057f62: 9801         	ldr	r0, [sp, #0x4]
 8057f64: 9903         	ldr	r1, [sp, #0xc]
 8057f66: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 8057f68: 9803         	ldr	r0, [sp, #0xc]
 8057f6a: 3804         	subs	r0, #0x4
 8057f6c: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) portTASK_RETURN_ADDRESS; /* LR. */
 8057f6e: 9903         	ldr	r1, [sp, #0xc]
 8057f70: f248 004f    	movw	r0, #0x804f
 8057f74: f6c0 0005    	movt	r0, #0x805
 8057f78: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 8057f7a: 9803         	ldr	r0, [sp, #0xc]
 8057f7c: 3804         	subs	r0, #0x4
 8057f7e: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x12121212UL;            /* R12. */
 8057f80: 9903         	ldr	r1, [sp, #0xc]
 8057f82: f04f 3012    	mov.w	r0, #0x12121212
 8057f86: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 8057f88: 9803         	ldr	r0, [sp, #0xc]
 8057f8a: 3804         	subs	r0, #0x4
 8057f8c: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x03030303UL;            /* R3. */
 8057f8e: 9903         	ldr	r1, [sp, #0xc]
 8057f90: f04f 3003    	mov.w	r0, #0x3030303
 8057f94: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 8057f96: 9803         	ldr	r0, [sp, #0xc]
 8057f98: 3804         	subs	r0, #0x4
 8057f9a: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x02020202UL;            /* R2. */
 8057f9c: 9903         	ldr	r1, [sp, #0xc]
 8057f9e: f04f 3002    	mov.w	r0, #0x2020202
 8057fa2: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 8057fa4: 9803         	ldr	r0, [sp, #0xc]
 8057fa6: 3804         	subs	r0, #0x4
 8057fa8: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x01010101UL;            /* R1. */
 8057faa: 9903         	ldr	r1, [sp, #0xc]
 8057fac: f04f 3001    	mov.w	r0, #0x1010101
 8057fb0: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 8057fb2: 9803         	ldr	r0, [sp, #0xc]
 8057fb4: 3804         	subs	r0, #0x4
 8057fb6: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) pvParameters;            /* R0. */
 8057fb8: 9800         	ldr	r0, [sp]
 8057fba: 9903         	ldr	r1, [sp, #0xc]
 8057fbc: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 8057fbe: 9803         	ldr	r0, [sp, #0xc]
 8057fc0: 3804         	subs	r0, #0x4
 8057fc2: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x11111111UL;            /* R11. */
 8057fc4: 9903         	ldr	r1, [sp, #0xc]
 8057fc6: f04f 3011    	mov.w	r0, #0x11111111
 8057fca: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 8057fcc: 9803         	ldr	r0, [sp, #0xc]
 8057fce: 3804         	subs	r0, #0x4
 8057fd0: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x10101010UL;            /* R10. */
 8057fd2: 9903         	ldr	r1, [sp, #0xc]
 8057fd4: f04f 3010    	mov.w	r0, #0x10101010
 8057fd8: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 8057fda: 9803         	ldr	r0, [sp, #0xc]
 8057fdc: 3804         	subs	r0, #0x4
 8057fde: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x09090909UL;            /* R09. */
 8057fe0: 9903         	ldr	r1, [sp, #0xc]
 8057fe2: f04f 3009    	mov.w	r0, #0x9090909
 8057fe6: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 8057fe8: 9803         	ldr	r0, [sp, #0xc]
 8057fea: 3804         	subs	r0, #0x4
 8057fec: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x08080808UL;            /* R08. */
 8057fee: 9903         	ldr	r1, [sp, #0xc]
 8057ff0: f04f 3008    	mov.w	r0, #0x8080808
 8057ff4: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 8057ff6: 9803         	ldr	r0, [sp, #0xc]
 8057ff8: 3804         	subs	r0, #0x4
 8057ffa: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x07070707UL;            /* R07. */
 8057ffc: 9903         	ldr	r1, [sp, #0xc]
 8057ffe: f04f 3007    	mov.w	r0, #0x7070707
 8058002: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 8058004: 9803         	ldr	r0, [sp, #0xc]
 8058006: 3804         	subs	r0, #0x4
 8058008: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x06060606UL;            /* R06. */
 805800a: 9903         	ldr	r1, [sp, #0xc]
 805800c: f04f 3006    	mov.w	r0, #0x6060606
 8058010: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 8058012: 9803         	ldr	r0, [sp, #0xc]
 8058014: 3804         	subs	r0, #0x4
 8058016: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x05050505UL;            /* R05. */
 8058018: 9903         	ldr	r1, [sp, #0xc]
 805801a: f04f 3005    	mov.w	r0, #0x5050505
 805801e: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 8058020: 9803         	ldr	r0, [sp, #0xc]
 8058022: 3804         	subs	r0, #0x4
 8058024: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x04040404UL;            /* R04. */
 8058026: 9903         	ldr	r1, [sp, #0xc]
 8058028: f04f 3004    	mov.w	r0, #0x4040404
 805802c: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 805802e: 9803         	ldr	r0, [sp, #0xc]
 8058030: 3804         	subs	r0, #0x4
 8058032: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = portINITIAL_EXC_RETURN;                  /* EXC_RETURN. */
 8058034: 9903         	ldr	r1, [sp, #0xc]
 8058036: f06f 0043    	mvn	r0, #0x43
 805803a: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 805803c: 9803         	ldr	r0, [sp, #0xc]
 805803e: 3804         	subs	r0, #0x4
 8058040: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) pxEndOfStack;            /* Slot used to hold this task's PSPLIM value. */
 8058042: 9802         	ldr	r0, [sp, #0x8]
 8058044: 9903         	ldr	r1, [sp, #0xc]
 8058046: 6008         	str	r0, [r1]
;         return pxTopOfStack;
 8058048: 9803         	ldr	r0, [sp, #0xc]
 805804a: b004         	add	sp, #0x10
 805804c: 4770         	bx	lr

0805804e <prvTaskExitError>:
; {
 805804e: b580         	push	{r7, lr}
 8058050: 466f         	mov	r7, sp
 8058052: b082         	sub	sp, #0x8
 8058054: 2000         	movs	r0, #0x0
;     volatile uint32_t ulDummy = 0UL;
 8058056: 9001         	str	r0, [sp, #0x4]
;     configASSERT( ulCriticalNesting == ~0UL );
 8058058: f240 100c    	movw	r0, #0x10c
 805805c: f2c2 0000    	movt	r0, #0x2000
 8058060: 6800         	ldr	r0, [r0]
 8058062: 3001         	adds	r0, #0x1
 8058064: b120         	cbz	r0, 0x8058070 <prvTaskExitError+0x22> @ imm = #0x8
 8058066: e7ff         	b	0x8058068 <prvTaskExitError+0x1a> @ imm = #-0x2
 8058068: f000 f8b1    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0x162
 805806c: e7ff         	b	0x805806e <prvTaskExitError+0x20> @ imm = #-0x2
 805806e: e7fe         	b	0x805806e <prvTaskExitError+0x20> @ imm = #-0x4
;     portDISABLE_INTERRUPTS();
 8058070: f000 f8ad    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0x15a
;     while( ulDummy == 0 )
 8058074: e7ff         	b	0x8058076 <prvTaskExitError+0x28> @ imm = #-0x2
 8058076: 9801         	ldr	r0, [sp, #0x4]
 8058078: b908         	cbnz	r0, 0x805807e <prvTaskExitError+0x30> @ imm = #0x2
 805807a: e7ff         	b	0x805807c <prvTaskExitError+0x2e> @ imm = #-0x2
 805807c: e7fb         	b	0x8058076 <prvTaskExitError+0x28> @ imm = #-0xa
; }
 805807e: b002         	add	sp, #0x8
 8058080: bd80         	pop	{r7, pc}

08058082 <xPortStartScheduler>:
; {
 8058082: b580         	push	{r7, lr}
 8058084: 466f         	mov	r7, sp
 8058086: b084         	sub	sp, #0x10
 8058088: 2000         	movs	r0, #0x0
;         volatile uint32_t ulImplementedPrioBits = 0;
 805808a: 9002         	str	r0, [sp, #0x8]
 805808c: f64e 501c    	movw	r0, #0xed1c
 8058090: f2ce 0000    	movt	r0, #0xe000
;         ulOriginalPriority = portNVIC_SHPR2_REG;
 8058094: 6801         	ldr	r1, [r0]
 8058096: 9103         	str	r1, [sp, #0xc]
 8058098: f04f 417f    	mov.w	r1, #0xff000000
;         portNVIC_SHPR2_REG = 0xFF000000;
 805809c: 6001         	str	r1, [r0]
;         ucMaxPriorityValue = ( uint8_t ) ( ( portNVIC_SHPR2_REG & 0xFF000000 ) >> 24 );
 805809e: 6800         	ldr	r0, [r0]
 80580a0: 0e00         	lsrs	r0, r0, #0x18
 80580a2: f807 0c09    	strb	r0, [r7, #-9]
;         ucMaxSysCallPriority = configMAX_SYSCALL_INTERRUPT_PRIORITY & ucMaxPriorityValue;
 80580a6: f817 0c09    	ldrb	r0, [r7, #-9]
 80580aa: f000 01a0    	and	r1, r0, #0xa0
 80580ae: f242 3088    	movw	r0, #0x2388
 80580b2: f2c2 0000    	movt	r0, #0x2000
 80580b6: 7001         	strb	r1, [r0]
;         configASSERT( ucMaxSysCallPriority );
 80580b8: 7800         	ldrb	r0, [r0]
 80580ba: b920         	cbnz	r0, 0x80580c6 <xPortStartScheduler+0x44> @ imm = #0x8
 80580bc: e7ff         	b	0x80580be <xPortStartScheduler+0x3c> @ imm = #-0x2
 80580be: f000 f886    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0x10c
 80580c2: e7ff         	b	0x80580c4 <xPortStartScheduler+0x42> @ imm = #-0x2
 80580c4: e7fe         	b	0x80580c4 <xPortStartScheduler+0x42> @ imm = #-0x4
;         configASSERT( ( configMAX_SYSCALL_INTERRUPT_PRIORITY & ( uint8_t ) ( ~( uint32_t ) ucMaxPriorityValue ) ) == 0U );
 80580c6: f817 0c09    	ldrb	r0, [r7, #-9]
 80580ca: 43c0         	mvns	r0, r0
 80580cc: f010 0fa0    	tst.w	r0, #0xa0
 80580d0: d004         	beq	0x80580dc <xPortStartScheduler+0x5a> @ imm = #0x8
 80580d2: e7ff         	b	0x80580d4 <xPortStartScheduler+0x52> @ imm = #-0x2
 80580d4: f000 f87b    	bl	0x80581ce <ulSetInterruptMask> @ imm = #0xf6
 80580d8: e7ff         	b	0x80580da <xPortStartScheduler+0x58> @ imm = #-0x2
 80580da: e7fe         	b	0x80580da <xPortStartScheduler+0x58> @ imm = #-0x4
;         while( ( ucMaxPriorityValue & portTOP_BIT_OF_BYTE ) == portTOP_BIT_OF_BYTE )
 80580dc: e7ff         	b	0x80580de <xPortStartScheduler+0x5c> @ imm = #-0x2
 80580de: f817 0c09    	ldrb	r0, [r7, #-9]
 80580e2: 0600         	lsls	r0, r0, #0x18
 80580e4: 2800         	cmp	r0, #0x0
 80580e6: d509         	bpl	0x80580fc <xPortStartScheduler+0x7a> @ imm = #0x12
 80580e8: e7ff         	b	0x80580ea <xPortStartScheduler+0x68> @ imm = #-0x2
;             ulImplementedPrioBits++;
 80580ea: 9802         	ldr	r0, [sp, #0x8]
 80580ec: 3001         	adds	r0, #0x1
 80580ee: 9002         	str	r0, [sp, #0x8]
;             ucMaxPriorityValue <<= ( uint8_t ) 0x01;
 80580f0: f817 0c09    	ldrb	r0, [r7, #-9]
 80580f4: 0040         	lsls	r0, r0, #0x1
 80580f6: f807 0c09    	strb	r0, [r7, #-9]
;         while( ( ucMaxPriorityValue & portTOP_BIT_OF_BYTE ) == portTOP_BIT_OF_BYTE )
 80580fa: e7f0         	b	0x80580de <xPortStartScheduler+0x5c> @ imm = #-0x20
;         if( ulImplementedPrioBits == 8 )
 80580fc: 9802         	ldr	r0, [sp, #0x8]
 80580fe: 2808         	cmp	r0, #0x8
 8058100: d107         	bne	0x8058112 <xPortStartScheduler+0x90> @ imm = #0xe
 8058102: e7ff         	b	0x8058104 <xPortStartScheduler+0x82> @ imm = #-0x2
;             ulMaxPRIGROUPValue = 0;
 8058104: f242 318c    	movw	r1, #0x238c
 8058108: f2c2 0100    	movt	r1, #0x2000
 805810c: 2000         	movs	r0, #0x0
 805810e: 6008         	str	r0, [r1]
;         }
 8058110: e008         	b	0x8058124 <xPortStartScheduler+0xa2> @ imm = #0x10
;             ulMaxPRIGROUPValue = portMAX_PRIGROUP_BITS - ulImplementedPrioBits;
 8058112: 9802         	ldr	r0, [sp, #0x8]
 8058114: f1c0 0007    	rsb.w	r0, r0, #0x7
 8058118: f242 318c    	movw	r1, #0x238c
 805811c: f2c2 0100    	movt	r1, #0x2000
 8058120: 6008         	str	r0, [r1]
 8058122: e7ff         	b	0x8058124 <xPortStartScheduler+0xa2> @ imm = #-0x2
;         ulMaxPRIGROUPValue <<= portPRIGROUP_SHIFT;
 8058124: f242 318c    	movw	r1, #0x238c
 8058128: f2c2 0100    	movt	r1, #0x2000
 805812c: 6808         	ldr	r0, [r1]
 805812e: 0200         	lsls	r0, r0, #0x8
 8058130: 6008         	str	r0, [r1]
;         ulMaxPRIGROUPValue &= portPRIORITY_GROUP_MASK;
 8058132: 6808         	ldr	r0, [r1]
 8058134: f400 60e0    	and	r0, r0, #0x700
 8058138: 6008         	str	r0, [r1]
;         portNVIC_SHPR2_REG = ulOriginalPriority;
 805813a: 9803         	ldr	r0, [sp, #0xc]
 805813c: f64e 511c    	movw	r1, #0xed1c
 8058140: f2ce 0100    	movt	r1, #0xe000
 8058144: 6008         	str	r0, [r1]
 8058146: f64e 5120    	movw	r1, #0xed20
 805814a: f2ce 0100    	movt	r1, #0xe000
;     portNVIC_SHPR3_REG |= portNVIC_PENDSV_PRI;
 805814e: 6808         	ldr	r0, [r1]
 8058150: f440 007f    	orr	r0, r0, #0xff0000
 8058154: 6008         	str	r0, [r1]
;     portNVIC_SHPR3_REG |= portNVIC_SYSTICK_PRI;
 8058156: 6808         	ldr	r0, [r1]
 8058158: f040 407f    	orr	r0, r0, #0xff000000
 805815c: 6008         	str	r0, [r1]
;     vPortSetupTimerInterrupt();
 805815e: f7ff fe64    	bl	0x8057e2a <vPortSetupTimerInterrupt> @ imm = #-0x338
;     ulCriticalNesting = 0;
 8058162: f240 110c    	movw	r1, #0x10c
 8058166: f2c2 0100    	movt	r1, #0x2000
 805816a: 2000         	movs	r0, #0x0
 805816c: 9000         	str	r0, [sp]
 805816e: 6008         	str	r0, [r1]
;     vStartFirstTask();
 8058170: f000 f81d    	bl	0x80581ae <vStartFirstTask> @ imm = #0x3a
;     vTaskSwitchContext();
 8058174: f7fe f8ff    	bl	0x8056376 <vTaskSwitchContext> @ imm = #-0x1e02
;     prvTaskExitError();
 8058178: f7ff ff69    	bl	0x805804e <prvTaskExitError> @ imm = #-0x12e
 805817c: 9800         	ldr	r0, [sp]
;     return 0;
 805817e: b004         	add	sp, #0x10
 8058180: bd80         	pop	{r7, pc}

08058182 <vRestoreContextOfFirstTask>:
;   __asm volatile(
 8058182: f240 1210    	movw	r2, #0x110
 8058186: f2c2 0200    	movt	r2, #0x2000
 805818a: 6811         	ldr	r1, [r2]
 805818c: 6808         	ldr	r0, [r1]
 805818e: c806         	ldm	r0!, {r1, r2}
 8058190: f381 880b    	msr	psplim, r1
 8058194: 2102         	movs	r1, #0x2
 8058196: f381 8814    	msr	control, r1
 805819a: 3020         	adds	r0, #0x20
 805819c: f380 8809    	msr	psp, r0
 80581a0: f3bf 8f6f    	isb	sy
 80581a4: f04f 0000    	mov.w	r0, #0x0
 80581a8: f380 8811    	msr	basepri, r0
 80581ac: 4710         	bx	r2

080581ae <vStartFirstTask>:
;   __asm volatile(
 80581ae: f64e 5008    	movw	r0, #0xed08
 80581b2: f2ce 0000    	movt	r0, #0xe000
 80581b6: 6800         	ldr	r0, [r0]
 80581b8: 6800         	ldr	r0, [r0]
 80581ba: f380 8808    	msr	msp, r0
 80581be: b662         	cpsie i
 80581c0: b661         	cpsie f
 80581c2: f3bf 8f4f    	dsb	sy
 80581c6: f3bf 8f6f    	isb	sy
 80581ca: df02         	svc	#0x2
 80581cc: bf00         	nop

080581ce <ulSetInterruptMask>:
;   __asm volatile(
 80581ce: f3ef 8011    	mrs	r0, basepri
 80581d2: f04f 01a0    	mov.w	r1, #0xa0
 80581d6: f381 8811    	msr	basepri, r1
 80581da: f3bf 8f4f    	dsb	sy
 80581de: f3bf 8f6f    	isb	sy
 80581e2: 4770         	bx	lr

080581e4 <vClearInterruptMask>:
;   __asm volatile(
 80581e4: f380 8811    	msr	basepri, r0
 80581e8: f3bf 8f4f    	dsb	sy
 80581ec: f3bf 8f6f    	isb	sy
 80581f0: 4770         	bx	lr
		...
 80581fe: 0000         	movs	r0, r0

08058200 <PendSV_Handler>:
;   __asm volatile(
 8058200: f3ef 8009    	mrs	r0, psp
 8058204: f3ef 820b    	mrs	r2, psplim
 8058208: 4673         	mov	r3, lr
 805820a: e920 0ffc    	stmdb	r0!, {r2, r3, r4, r5, r6, r7, r8, r9, r10, r11}
 805820e: f240 1210    	movw	r2, #0x110
 8058212: f2c2 0200    	movt	r2, #0x2000
 8058216: 6811         	ldr	r1, [r2]
 8058218: 6008         	str	r0, [r1]
 805821a: f04f 00a0    	mov.w	r0, #0xa0
 805821e: f380 8811    	msr	basepri, r0
 8058222: f3bf 8f4f    	dsb	sy
 8058226: f3bf 8f6f    	isb	sy
 805822a: f7fe f8a4    	bl	0x8056376 <vTaskSwitchContext> @ imm = #-0x1eb8
 805822e: f04f 0000    	mov.w	r0, #0x0
 8058232: f380 8811    	msr	basepri, r0
 8058236: f240 1210    	movw	r2, #0x110
 805823a: f2c2 0200    	movt	r2, #0x2000
 805823e: 6811         	ldr	r1, [r2]
 8058240: 6808         	ldr	r0, [r1]
 8058242: e8b0 0ffc    	ldm.w	r0!, {r2, r3, r4, r5, r6, r7, r8, r9, r10, r11}
 8058246: f382 880b    	msr	psplim, r2
 805824a: f380 8809    	msr	psp, r0
 805824e: 4718         	bx	r3

08058250 <SVC_Handler>:
;   __asm volatile("   .syntax unified                                 \n"
 8058250: f01e 0f04    	tst.w	lr, #0x4
 8058254: bf0c         	ite	eq
 8058256: f3ef 8008    	mrseq	r0, msp
 805825a: f3ef 8009    	mrsne	r0, psp
 805825e: f647 7111    	movw	r1, #0x7f11
 8058262: f6c0 0105    	movt	r1, #0x805
 8058266: 4708         	bx	r1
 8058268: bf00         	nop
 805826a: bf00         	nop
 805826c: bf00         	nop
 805826e: bf00         	nop

08058270 <memcpy>:
 8058270: 4684         	mov	r12, r0
 8058272: ea41 0300    	orr.w	r3, r1, r0
 8058276: f013 0303    	ands	r3, r3, #0x3
 805827a: d149         	bne	0x8058310 <memcpy+0xa0> @ imm = #0x92
 805827c: 3a40         	subs	r2, #0x40
 805827e: d323         	blo	0x80582c8 <memcpy+0x58> @ imm = #0x46
 8058280: 680b         	ldr	r3, [r1]
 8058282: 6003         	str	r3, [r0]
 8058284: 684b         	ldr	r3, [r1, #0x4]
 8058286: 6043         	str	r3, [r0, #0x4]
 8058288: 688b         	ldr	r3, [r1, #0x8]
 805828a: 6083         	str	r3, [r0, #0x8]
 805828c: 68cb         	ldr	r3, [r1, #0xc]
 805828e: 60c3         	str	r3, [r0, #0xc]
 8058290: 690b         	ldr	r3, [r1, #0x10]
 8058292: 6103         	str	r3, [r0, #0x10]
 8058294: 694b         	ldr	r3, [r1, #0x14]
 8058296: 6143         	str	r3, [r0, #0x14]
 8058298: 698b         	ldr	r3, [r1, #0x18]
 805829a: 6183         	str	r3, [r0, #0x18]
 805829c: 69cb         	ldr	r3, [r1, #0x1c]
 805829e: 61c3         	str	r3, [r0, #0x1c]
 80582a0: 6a0b         	ldr	r3, [r1, #0x20]
 80582a2: 6203         	str	r3, [r0, #0x20]
 80582a4: 6a4b         	ldr	r3, [r1, #0x24]
 80582a6: 6243         	str	r3, [r0, #0x24]
 80582a8: 6a8b         	ldr	r3, [r1, #0x28]
 80582aa: 6283         	str	r3, [r0, #0x28]
 80582ac: 6acb         	ldr	r3, [r1, #0x2c]
 80582ae: 62c3         	str	r3, [r0, #0x2c]
 80582b0: 6b0b         	ldr	r3, [r1, #0x30]
 80582b2: 6303         	str	r3, [r0, #0x30]
 80582b4: 6b4b         	ldr	r3, [r1, #0x34]
 80582b6: 6343         	str	r3, [r0, #0x34]
 80582b8: 6b8b         	ldr	r3, [r1, #0x38]
 80582ba: 6383         	str	r3, [r0, #0x38]
 80582bc: 6bcb         	ldr	r3, [r1, #0x3c]
 80582be: 63c3         	str	r3, [r0, #0x3c]
 80582c0: 3040         	adds	r0, #0x40
 80582c2: 3140         	adds	r1, #0x40
 80582c4: 3a40         	subs	r2, #0x40
 80582c6: d2db         	bhs	0x8058280 <memcpy+0x10> @ imm = #-0x4a
 80582c8: 3230         	adds	r2, #0x30
 80582ca: d30b         	blo	0x80582e4 <memcpy+0x74> @ imm = #0x16
 80582cc: 680b         	ldr	r3, [r1]
 80582ce: 6003         	str	r3, [r0]
 80582d0: 684b         	ldr	r3, [r1, #0x4]
 80582d2: 6043         	str	r3, [r0, #0x4]
 80582d4: 688b         	ldr	r3, [r1, #0x8]
 80582d6: 6083         	str	r3, [r0, #0x8]
 80582d8: 68cb         	ldr	r3, [r1, #0xc]
 80582da: 60c3         	str	r3, [r0, #0xc]
 80582dc: 3010         	adds	r0, #0x10
 80582de: 3110         	adds	r1, #0x10
 80582e0: 3a10         	subs	r2, #0x10
 80582e2: d2f3         	bhs	0x80582cc <memcpy+0x5c> @ imm = #-0x1a
 80582e4: 320c         	adds	r2, #0xc
 80582e6: d305         	blo	0x80582f4 <memcpy+0x84> @ imm = #0xa
 80582e8: f851 3b04    	ldr	r3, [r1], #4
 80582ec: f840 3b04    	str	r3, [r0], #4
 80582f0: 3a04         	subs	r2, #0x4
 80582f2: d2f9         	bhs	0x80582e8 <memcpy+0x78> @ imm = #-0xe
 80582f4: 3204         	adds	r2, #0x4
 80582f6: d008         	beq	0x805830a <memcpy+0x9a> @ imm = #0x10
 80582f8: 07d2         	lsls	r2, r2, #0x1f
 80582fa: bf1c         	itt	ne
 80582fc: f811 3b01    	ldrbne	r3, [r1], #1
 8058300: f800 3b01    	strbne	r3, [r0], #1
 8058304: d301         	blo	0x805830a <memcpy+0x9a> @ imm = #0x2
 8058306: 880b         	ldrh	r3, [r1]
 8058308: 8003         	strh	r3, [r0]
 805830a: 4660         	mov	r0, r12
 805830c: 4770         	bx	lr
 805830e: bf00         	nop
 8058310: 2a08         	cmp	r2, #0x8
 8058312: d313         	blo	0x805833c <memcpy+0xcc> @ imm = #0x26
 8058314: 078b         	lsls	r3, r1, #0x1e
 8058316: d0b1         	beq	0x805827c <memcpy+0xc>  @ imm = #-0x9e
 8058318: f010 0303    	ands	r3, r0, #0x3
 805831c: d0ae         	beq	0x805827c <memcpy+0xc>  @ imm = #-0xa4
 805831e: f1c3 0304    	rsb.w	r3, r3, #0x4
 8058322: 1ad2         	subs	r2, r2, r3
 8058324: 07db         	lsls	r3, r3, #0x1f
 8058326: bf1c         	itt	ne
 8058328: f811 3b01    	ldrbne	r3, [r1], #1
 805832c: f800 3b01    	strbne	r3, [r0], #1
 8058330: d3a4         	blo	0x805827c <memcpy+0xc>  @ imm = #-0xb8
 8058332: f831 3b02    	ldrh	r3, [r1], #2
 8058336: f820 3b02    	strh	r3, [r0], #2
 805833a: e79f         	b	0x805827c <memcpy+0xc>  @ imm = #-0xc2
 805833c: 3a04         	subs	r2, #0x4
 805833e: d3d9         	blo	0x80582f4 <memcpy+0x84> @ imm = #-0x4e
 8058340: 3a01         	subs	r2, #0x1
 8058342: f811 3b01    	ldrb	r3, [r1], #1
 8058346: f800 3b01    	strb	r3, [r0], #1
 805834a: d2f9         	bhs	0x8058340 <memcpy+0xd0> @ imm = #-0xe
 805834c: 780b         	ldrb	r3, [r1]
 805834e: 7003         	strb	r3, [r0]
 8058350: 784b         	ldrb	r3, [r1, #0x1]
 8058352: 7043         	strb	r3, [r0, #0x1]
 8058354: 788b         	ldrb	r3, [r1, #0x2]
 8058356: 7083         	strb	r3, [r0, #0x2]
 8058358: 4660         	mov	r0, r12
 805835a: 4770         	bx	lr

0805835c <memset>:
 805835c: b570         	push	{r4, r5, r6, lr}
 805835e: 0786         	lsls	r6, r0, #0x1e
 8058360: d048         	beq	0x80583f4 <memset+0x98> @ imm = #0x90
 8058362: 1e54         	subs	r4, r2, #0x1
 8058364: 2a00         	cmp	r2, #0x0
 8058366: d03f         	beq	0x80583e8 <memset+0x8c> @ imm = #0x7e
 8058368: b2ca         	uxtb	r2, r1
 805836a: 4603         	mov	r3, r0
 805836c: e001         	b	0x8058372 <memset+0x16> @ imm = #0x2
 805836e: 3c01         	subs	r4, #0x1
 8058370: d33a         	blo	0x80583e8 <memset+0x8c> @ imm = #0x74
 8058372: f803 2b01    	strb	r2, [r3], #1
 8058376: 079d         	lsls	r5, r3, #0x1e
 8058378: d1f9         	bne	0x805836e <memset+0x12> @ imm = #-0xe
 805837a: 2c03         	cmp	r4, #0x3
 805837c: d92d         	bls	0x80583da <memset+0x7e> @ imm = #0x5a
 805837e: b2cd         	uxtb	r5, r1
 8058380: 2c0f         	cmp	r4, #0xf
 8058382: ea45 2505    	orr.w	r5, r5, r5, lsl #8
 8058386: ea45 4505    	orr.w	r5, r5, r5, lsl #16
 805838a: d936         	bls	0x80583fa <memset+0x9e> @ imm = #0x6c
 805838c: f1a4 0c10    	sub.w	r12, r4, #0x10
 8058390: f103 0e20    	add.w	lr, r3, #0x20
 8058394: f103 0210    	add.w	r2, r3, #0x10
 8058398: f02c 060f    	bic	r6, r12, #0xf
 805839c: ea4f 1c1c    	lsr.w	r12, r12, #0x4
 80583a0: 44b6         	add	lr, r6
 80583a2: e942 5504    	strd	r5, r5, [r2, #-16]
 80583a6: e942 5502    	strd	r5, r5, [r2, #-8]
 80583aa: 3210         	adds	r2, #0x10
 80583ac: 4572         	cmp	r2, lr
 80583ae: d1f8         	bne	0x80583a2 <memset+0x46> @ imm = #-0x10
 80583b0: f10c 0201    	add.w	r2, r12, #0x1
 80583b4: f014 0f0c    	tst.w	r4, #0xc
 80583b8: f004 0c0f    	and	r12, r4, #0xf
 80583bc: eb03 1202    	add.w	r2, r3, r2, lsl #4
 80583c0: d013         	beq	0x80583ea <memset+0x8e> @ imm = #0x26
 80583c2: f1ac 0304    	sub.w	r3, r12, #0x4
 80583c6: f023 0303    	bic	r3, r3, #0x3
 80583ca: 3304         	adds	r3, #0x4
 80583cc: 4413         	add	r3, r2
 80583ce: f842 5b04    	str	r5, [r2], #4
 80583d2: 4293         	cmp	r3, r2
 80583d4: d1fb         	bne	0x80583ce <memset+0x72> @ imm = #-0xa
 80583d6: f00c 0403    	and	r4, r12, #0x3
 80583da: b12c         	cbz	r4, 0x80583e8 <memset+0x8c> @ imm = #0xa
 80583dc: b2ca         	uxtb	r2, r1
 80583de: 441c         	add	r4, r3
 80583e0: f803 2b01    	strb	r2, [r3], #1
 80583e4: 429c         	cmp	r4, r3
 80583e6: d1fb         	bne	0x80583e0 <memset+0x84> @ imm = #-0xa
 80583e8: bd70         	pop	{r4, r5, r6, pc}
 80583ea: 4664         	mov	r4, r12
 80583ec: 4613         	mov	r3, r2
 80583ee: 2c00         	cmp	r4, #0x0
 80583f0: d1f4         	bne	0x80583dc <memset+0x80> @ imm = #-0x18
 80583f2: e7f9         	b	0x80583e8 <memset+0x8c> @ imm = #-0xe
 80583f4: 4603         	mov	r3, r0
 80583f6: 4614         	mov	r4, r2
 80583f8: e7bf         	b	0x805837a <memset+0x1e> @ imm = #-0x82
 80583fa: 461a         	mov	r2, r3
 80583fc: 46a4         	mov	r12, r4
 80583fe: e7e0         	b	0x80583c2 <memset+0x66> @ imm = #-0x40
 8058400: 00 00 00 00  	.word	0x00000000
 8058404: 00 00 00 00  	.word	0x00000000
 8058408: 01 02 03 04  	.word	0x04030201
 805840c: 06 07 08 09  	.word	0x09080706
 8058410: a0 86 01 00  	.word	0x000186a0
 8058414: 40 0d 03 00  	.word	0x00030d40
 8058418: 80 1a 06 00  	.word	0x00061a80
 805841c: 00 35 0c 00  	.word	0x000c3500
 8058420: 40 42 0f 00  	.word	0x000f4240
 8058424: 80 84 1e 00  	.word	0x001e8480
 8058428: 00 09 3d 00  	.word	0x003d0900
 805842c: 00 12 7a 00  	.word	0x007a1200
 8058430: 00 24 f4 00  	.word	0x00f42400
 8058434: 00 36 6e 01  	.word	0x016e3600
 8058438: 00 48 e8 01  	.word	0x01e84800
 805843c: 00 6c dc 02  	.word	0x02dc6c00
 8058440: 00 00 00 00  	.word	0x00000000
 8058444: 00 00 00 00  	.word	0x00000000
 8058448: 00 00 00 00  	.word	0x00000000
 805844c: 00 00 00 00  	.word	0x00000000
 8058450: 74 65 73 74  	.word	0x74736574
 8058454: 54 68 72 65  	.word	0x65726854
 8058458: 61 64 00 00  	.word	0x00006461
 805845c: 0f 00 00 00  	.word	0x0000000f
 8058460: 49 44 4c 45  	.word	0x454c4449
 8058464: 00           	.byte	0x00
 8058465: 54 6d 72 20  	.word	0x20726d54
 8058469: 53 76 63 00  	.word	0x00637653
 805846d: 54 6d 72 51  	.word	0x51726d54
 8058471: 00 00 00 00  	.word	0x00000000
 8058475: 00 00 00 00  	.word	0x00000000
 8058479: 00 00 00 00  	.word	0x00000000
 805847d: 00 00        	.short	0x0000

0805847f <__unprivileged_flash_end__>:
 805847f: 00           	.byte	0x00
