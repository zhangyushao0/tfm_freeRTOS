
build/bin/ns_app.elf:	file format elf32-littlearm

Disassembly of section .text:

08055200 <__unprivileged_flash_start__>:
; }
 8055200: 4770         	bx	lr

08055202 <HAL_GPIO_Init>:
; void HAL_GPIO_Init(GPIO_TypeDef *GPIOx, GPIO_InitTypeDef *GPIO_Init) {
 8055202: b08b         	sub	sp, #0x2c
 8055204: 900a         	str	r0, [sp, #0x28]
 8055206: 9109         	str	r1, [sp, #0x24]
 8055208: 2000         	movs	r0, #0x0
;   uint32_t position = 0U;
 805520a: 9008         	str	r0, [sp, #0x20]
;   while (((GPIO_Init->Pin) >> position) != 0U) {
 805520c: e7ff         	b	0x805520e <HAL_GPIO_Init+0xc> @ imm = #-0x2
 805520e: 9809         	ldr	r0, [sp, #0x24]
 8055210: 6800         	ldr	r0, [r0]
 8055212: 9908         	ldr	r1, [sp, #0x20]
 8055214: 40c8         	lsrs	r0, r1
 8055216: 2800         	cmp	r0, #0x0
 8055218: f000 81a9    	beq.w	0x805556e <HAL_GPIO_Init+0x36c> @ imm = #0x352
 805521c: e7ff         	b	0x805521e <HAL_GPIO_Init+0x1c> @ imm = #-0x2
;     iocurrent = (GPIO_Init->Pin) & (1UL << position);
 805521e: 9809         	ldr	r0, [sp, #0x24]
 8055220: 6800         	ldr	r0, [r0]
 8055222: 9a08         	ldr	r2, [sp, #0x20]
 8055224: 2101         	movs	r1, #0x1
 8055226: 4091         	lsls	r1, r2
 8055228: 4008         	ands	r0, r1
 805522a: 9007         	str	r0, [sp, #0x1c]
;     if (iocurrent != 0U) {
 805522c: 9807         	ldr	r0, [sp, #0x1c]
 805522e: 2800         	cmp	r0, #0x0
 8055230: f000 8199    	beq.w	0x8055566 <HAL_GPIO_Init+0x364> @ imm = #0x332
 8055234: e7ff         	b	0x8055236 <HAL_GPIO_Init+0x34> @ imm = #-0x2
;       if ((GPIO_Init->Mode == GPIO_MODE_OUTPUT_PP) ||
 8055236: 9809         	ldr	r0, [sp, #0x24]
 8055238: 6840         	ldr	r0, [r0, #0x4]
 805523a: 2801         	cmp	r0, #0x1
 805523c: d00f         	beq	0x805525e <HAL_GPIO_Init+0x5c> @ imm = #0x1e
 805523e: e7ff         	b	0x8055240 <HAL_GPIO_Init+0x3e> @ imm = #-0x2
;           (GPIO_Init->Mode == GPIO_MODE_AF_PP) ||
 8055240: 9809         	ldr	r0, [sp, #0x24]
 8055242: 6840         	ldr	r0, [r0, #0x4]
 8055244: 2802         	cmp	r0, #0x2
 8055246: d00a         	beq	0x805525e <HAL_GPIO_Init+0x5c> @ imm = #0x14
 8055248: e7ff         	b	0x805524a <HAL_GPIO_Init+0x48> @ imm = #-0x2
;           (GPIO_Init->Mode == GPIO_MODE_OUTPUT_OD) ||
 805524a: 9809         	ldr	r0, [sp, #0x24]
 805524c: 6840         	ldr	r0, [r0, #0x4]
 805524e: 2811         	cmp	r0, #0x11
 8055250: d005         	beq	0x805525e <HAL_GPIO_Init+0x5c> @ imm = #0xa
 8055252: e7ff         	b	0x8055254 <HAL_GPIO_Init+0x52> @ imm = #-0x2
;           (GPIO_Init->Mode == GPIO_MODE_AF_OD)) {
 8055254: 9809         	ldr	r0, [sp, #0x24]
 8055256: 6840         	ldr	r0, [r0, #0x4]
;       if ((GPIO_Init->Mode == GPIO_MODE_OUTPUT_PP) ||
 8055258: 2812         	cmp	r0, #0x12
 805525a: d12f         	bne	0x80552bc <HAL_GPIO_Init+0xba> @ imm = #0x5e
 805525c: e7ff         	b	0x805525e <HAL_GPIO_Init+0x5c> @ imm = #-0x2
;         temp = GPIOx->OSPEEDR;
 805525e: 980a         	ldr	r0, [sp, #0x28]
 8055260: 6880         	ldr	r0, [r0, #0x8]
 8055262: 9006         	str	r0, [sp, #0x18]
;         temp &= ~(GPIO_OSPEEDR_OSPEED0 << (position * 2U));
 8055264: 9808         	ldr	r0, [sp, #0x20]
 8055266: 0041         	lsls	r1, r0, #0x1
 8055268: 2003         	movs	r0, #0x3
 805526a: fa00 f101    	lsl.w	r1, r0, r1
 805526e: 9806         	ldr	r0, [sp, #0x18]
 8055270: 4388         	bics	r0, r1
 8055272: 9006         	str	r0, [sp, #0x18]
;         temp |= (GPIO_Init->Speed << (position * 2U));
 8055274: 9809         	ldr	r0, [sp, #0x24]
 8055276: 68c0         	ldr	r0, [r0, #0xc]
 8055278: 9908         	ldr	r1, [sp, #0x20]
 805527a: 0049         	lsls	r1, r1, #0x1
 805527c: fa00 f101    	lsl.w	r1, r0, r1
 8055280: 9806         	ldr	r0, [sp, #0x18]
 8055282: 4308         	orrs	r0, r1
 8055284: 9006         	str	r0, [sp, #0x18]
;         GPIOx->OSPEEDR = temp;
 8055286: 9806         	ldr	r0, [sp, #0x18]
 8055288: 990a         	ldr	r1, [sp, #0x28]
 805528a: 6088         	str	r0, [r1, #0x8]
;         temp = GPIOx->OTYPER;
 805528c: 980a         	ldr	r0, [sp, #0x28]
 805528e: 6840         	ldr	r0, [r0, #0x4]
 8055290: 9006         	str	r0, [sp, #0x18]
;         temp &= ~(GPIO_OTYPER_OT0 << position);
 8055292: 9908         	ldr	r1, [sp, #0x20]
 8055294: 2001         	movs	r0, #0x1
 8055296: fa00 f101    	lsl.w	r1, r0, r1
 805529a: 9806         	ldr	r0, [sp, #0x18]
 805529c: 4388         	bics	r0, r1
 805529e: 9006         	str	r0, [sp, #0x18]
;         temp |= (((GPIO_Init->Mode & GPIO_OUTPUT_TYPE) >> 4) << position);
 80552a0: 9809         	ldr	r0, [sp, #0x24]
 80552a2: 6840         	ldr	r0, [r0, #0x4]
 80552a4: f3c0 1000    	ubfx	r0, r0, #0x4, #0x1
 80552a8: 9908         	ldr	r1, [sp, #0x20]
 80552aa: fa00 f101    	lsl.w	r1, r0, r1
 80552ae: 9806         	ldr	r0, [sp, #0x18]
 80552b0: 4308         	orrs	r0, r1
 80552b2: 9006         	str	r0, [sp, #0x18]
;         GPIOx->OTYPER = temp;
 80552b4: 9806         	ldr	r0, [sp, #0x18]
 80552b6: 990a         	ldr	r1, [sp, #0x28]
 80552b8: 6048         	str	r0, [r1, #0x4]
;       }
 80552ba: e7ff         	b	0x80552bc <HAL_GPIO_Init+0xba> @ imm = #-0x2
;       temp = GPIOx->PUPDR;
 80552bc: 980a         	ldr	r0, [sp, #0x28]
 80552be: 68c0         	ldr	r0, [r0, #0xc]
 80552c0: 9006         	str	r0, [sp, #0x18]
;       temp &= ~(GPIO_PUPDR_PUPD0 << (position * 2U));
 80552c2: 9808         	ldr	r0, [sp, #0x20]
 80552c4: 0041         	lsls	r1, r0, #0x1
 80552c6: 2003         	movs	r0, #0x3
 80552c8: fa00 f101    	lsl.w	r1, r0, r1
 80552cc: 9806         	ldr	r0, [sp, #0x18]
 80552ce: 4388         	bics	r0, r1
 80552d0: 9006         	str	r0, [sp, #0x18]
;       temp |= ((GPIO_Init->Pull) << (position * 2U));
 80552d2: 9809         	ldr	r0, [sp, #0x24]
 80552d4: 6880         	ldr	r0, [r0, #0x8]
 80552d6: 9908         	ldr	r1, [sp, #0x20]
 80552d8: 0049         	lsls	r1, r1, #0x1
 80552da: fa00 f101    	lsl.w	r1, r0, r1
 80552de: 9806         	ldr	r0, [sp, #0x18]
 80552e0: 4308         	orrs	r0, r1
 80552e2: 9006         	str	r0, [sp, #0x18]
;       GPIOx->PUPDR = temp;
 80552e4: 9806         	ldr	r0, [sp, #0x18]
 80552e6: 990a         	ldr	r1, [sp, #0x28]
 80552e8: 60c8         	str	r0, [r1, #0xc]
;       if ((GPIO_Init->Mode == GPIO_MODE_AF_PP) ||
 80552ea: 9809         	ldr	r0, [sp, #0x24]
 80552ec: 6840         	ldr	r0, [r0, #0x4]
 80552ee: 2802         	cmp	r0, #0x2
 80552f0: d005         	beq	0x80552fe <HAL_GPIO_Init+0xfc> @ imm = #0xa
 80552f2: e7ff         	b	0x80552f4 <HAL_GPIO_Init+0xf2> @ imm = #-0x2
;           (GPIO_Init->Mode == GPIO_MODE_AF_OD)) {
 80552f4: 9809         	ldr	r0, [sp, #0x24]
 80552f6: 6840         	ldr	r0, [r0, #0x4]
;       if ((GPIO_Init->Mode == GPIO_MODE_AF_PP) ||
 80552f8: 2812         	cmp	r0, #0x12
 80552fa: d126         	bne	0x805534a <HAL_GPIO_Init+0x148> @ imm = #0x4c
 80552fc: e7ff         	b	0x80552fe <HAL_GPIO_Init+0xfc> @ imm = #-0x2
;         temp = GPIOx->AFR[position >> 3U];
 80552fe: 980a         	ldr	r0, [sp, #0x28]
 8055300: 9908         	ldr	r1, [sp, #0x20]
 8055302: f06f 0203    	mvn	r2, #0x3
 8055306: ea02 0151    	and.w	r1, r2, r1, lsr #1
 805530a: 4408         	add	r0, r1
 805530c: 6a00         	ldr	r0, [r0, #0x20]
 805530e: 9006         	str	r0, [sp, #0x18]
;         temp &= ~(0x0FUL << ((position & 0x07U) * 4U));
 8055310: 9808         	ldr	r0, [sp, #0x20]
 8055312: f000 0007    	and	r0, r0, #0x7
 8055316: 0081         	lsls	r1, r0, #0x2
 8055318: 200f         	movs	r0, #0xf
 805531a: fa00 f101    	lsl.w	r1, r0, r1
 805531e: 9806         	ldr	r0, [sp, #0x18]
 8055320: 4388         	bics	r0, r1
 8055322: 9006         	str	r0, [sp, #0x18]
;         temp |= ((GPIO_Init->Alternate) << ((position & 0x07U) * 4U));
 8055324: 9809         	ldr	r0, [sp, #0x24]
 8055326: 6900         	ldr	r0, [r0, #0x10]
 8055328: 9908         	ldr	r1, [sp, #0x20]
 805532a: f001 0107    	and	r1, r1, #0x7
 805532e: 0089         	lsls	r1, r1, #0x2
 8055330: fa00 f101    	lsl.w	r1, r0, r1
 8055334: 9806         	ldr	r0, [sp, #0x18]
 8055336: 4308         	orrs	r0, r1
 8055338: 9006         	str	r0, [sp, #0x18]
;         GPIOx->AFR[position >> 3U] = temp;
 805533a: 9806         	ldr	r0, [sp, #0x18]
 805533c: 990a         	ldr	r1, [sp, #0x28]
 805533e: 9b08         	ldr	r3, [sp, #0x20]
 8055340: ea02 0253    	and.w	r2, r2, r3, lsr #1
 8055344: 4411         	add	r1, r2
 8055346: 6208         	str	r0, [r1, #0x20]
;       }
 8055348: e7ff         	b	0x805534a <HAL_GPIO_Init+0x148> @ imm = #-0x2
;       temp = GPIOx->MODER;
 805534a: 980a         	ldr	r0, [sp, #0x28]
 805534c: 6800         	ldr	r0, [r0]
 805534e: 9006         	str	r0, [sp, #0x18]
;       temp &= ~(GPIO_MODER_MODE0 << (position * 2U));
 8055350: 9808         	ldr	r0, [sp, #0x20]
 8055352: 0041         	lsls	r1, r0, #0x1
 8055354: 2003         	movs	r0, #0x3
 8055356: fa00 f101    	lsl.w	r1, r0, r1
 805535a: 9806         	ldr	r0, [sp, #0x18]
 805535c: 4388         	bics	r0, r1
 805535e: 9006         	str	r0, [sp, #0x18]
;       temp |= ((GPIO_Init->Mode & GPIO_MODE) << (position * 2U));
 8055360: 9809         	ldr	r0, [sp, #0x24]
 8055362: 6840         	ldr	r0, [r0, #0x4]
 8055364: f000 0003    	and	r0, r0, #0x3
 8055368: 9908         	ldr	r1, [sp, #0x20]
 805536a: 0049         	lsls	r1, r1, #0x1
 805536c: fa00 f101    	lsl.w	r1, r0, r1
 8055370: 9806         	ldr	r0, [sp, #0x18]
 8055372: 4308         	orrs	r0, r1
 8055374: 9006         	str	r0, [sp, #0x18]
;       GPIOx->MODER = temp;
 8055376: 9806         	ldr	r0, [sp, #0x18]
 8055378: 990a         	ldr	r1, [sp, #0x28]
 805537a: 6008         	str	r0, [r1]
;       if ((GPIO_Init->Mode & EXTI_MODE) == EXTI_MODE) {
 805537c: 9809         	ldr	r0, [sp, #0x24]
 805537e: 79c0         	ldrb	r0, [r0, #0x7]
 8055380: 06c0         	lsls	r0, r0, #0x1b
 8055382: 2800         	cmp	r0, #0x0
 8055384: f140 80ee    	bpl.w	0x8055564 <HAL_GPIO_Init+0x362> @ imm = #0x1dc
 8055388: e7ff         	b	0x805538a <HAL_GPIO_Init+0x188> @ imm = #-0x2
;         temp = EXTI->EXTICR[position >> 2U];
 805538a: 9808         	ldr	r0, [sp, #0x20]
 805538c: f020 0003    	bic	r0, r0, #0x3
 8055390: f24f 4160    	movw	r1, #0xf460
 8055394: f2c4 0102    	movt	r1, #0x4002
 8055398: 5840         	ldr	r0, [r0, r1]
 805539a: 9006         	str	r0, [sp, #0x18]
;         temp &= ~((0x0FU) << (8U * (position & 0x03U)));
 805539c: 9808         	ldr	r0, [sp, #0x20]
 805539e: f000 0003    	and	r0, r0, #0x3
 80553a2: 00c1         	lsls	r1, r0, #0x3
 80553a4: 200f         	movs	r0, #0xf
 80553a6: fa00 f101    	lsl.w	r1, r0, r1
 80553aa: 9806         	ldr	r0, [sp, #0x18]
 80553ac: 4388         	bics	r0, r1
 80553ae: 9006         	str	r0, [sp, #0x18]
;         temp |= (GPIO_GET_INDEX(GPIOx) << (8U * (position & 0x03U)));
 80553b0: 980a         	ldr	r0, [sp, #0x28]
 80553b2: 2100         	movs	r1, #0x0
 80553b4: f2c4 2102    	movt	r1, #0x4202
 80553b8: 4288         	cmp	r0, r1
 80553ba: d103         	bne	0x80553c4 <HAL_GPIO_Init+0x1c2> @ imm = #0x6
 80553bc: e7ff         	b	0x80553be <HAL_GPIO_Init+0x1bc> @ imm = #-0x2
 80553be: 2000         	movs	r0, #0x0
;         temp |= (GPIO_GET_INDEX(GPIOx) << (8U * (position & 0x03U)));
 80553c0: 9005         	str	r0, [sp, #0x14]
 80553c2: e050         	b	0x8055466 <HAL_GPIO_Init+0x264> @ imm = #0xa0
 80553c4: 980a         	ldr	r0, [sp, #0x28]
 80553c6: f240 4100    	movw	r1, #0x400
 80553ca: f2c4 2102    	movt	r1, #0x4202
 80553ce: 4288         	cmp	r0, r1
 80553d0: d103         	bne	0x80553da <HAL_GPIO_Init+0x1d8> @ imm = #0x6
 80553d2: e7ff         	b	0x80553d4 <HAL_GPIO_Init+0x1d2> @ imm = #-0x2
 80553d4: 2001         	movs	r0, #0x1
;         temp |= (GPIO_GET_INDEX(GPIOx) << (8U * (position & 0x03U)));
 80553d6: 9004         	str	r0, [sp, #0x10]
 80553d8: e042         	b	0x8055460 <HAL_GPIO_Init+0x25e> @ imm = #0x84
 80553da: 980a         	ldr	r0, [sp, #0x28]
 80553dc: f640 0100    	movw	r1, #0x800
 80553e0: f2c4 2102    	movt	r1, #0x4202
 80553e4: 4288         	cmp	r0, r1
 80553e6: d103         	bne	0x80553f0 <HAL_GPIO_Init+0x1ee> @ imm = #0x6
 80553e8: e7ff         	b	0x80553ea <HAL_GPIO_Init+0x1e8> @ imm = #-0x2
 80553ea: 2002         	movs	r0, #0x2
;         temp |= (GPIO_GET_INDEX(GPIOx) << (8U * (position & 0x03U)));
 80553ec: 9003         	str	r0, [sp, #0xc]
 80553ee: e034         	b	0x805545a <HAL_GPIO_Init+0x258> @ imm = #0x68
 80553f0: 980a         	ldr	r0, [sp, #0x28]
 80553f2: f640 4100    	movw	r1, #0xc00
 80553f6: f2c4 2102    	movt	r1, #0x4202
 80553fa: 4288         	cmp	r0, r1
 80553fc: d103         	bne	0x8055406 <HAL_GPIO_Init+0x204> @ imm = #0x6
 80553fe: e7ff         	b	0x8055400 <HAL_GPIO_Init+0x1fe> @ imm = #-0x2
 8055400: 2003         	movs	r0, #0x3
;         temp |= (GPIO_GET_INDEX(GPIOx) << (8U * (position & 0x03U)));
 8055402: 9002         	str	r0, [sp, #0x8]
 8055404: e026         	b	0x8055454 <HAL_GPIO_Init+0x252> @ imm = #0x4c
 8055406: 980a         	ldr	r0, [sp, #0x28]
 8055408: f241 0100    	movw	r1, #0x1000
 805540c: f2c4 2102    	movt	r1, #0x4202
 8055410: 4288         	cmp	r0, r1
 8055412: d103         	bne	0x805541c <HAL_GPIO_Init+0x21a> @ imm = #0x6
 8055414: e7ff         	b	0x8055416 <HAL_GPIO_Init+0x214> @ imm = #-0x2
 8055416: 2004         	movs	r0, #0x4
;         temp |= (GPIO_GET_INDEX(GPIOx) << (8U * (position & 0x03U)));
 8055418: 9001         	str	r0, [sp, #0x4]
 805541a: e018         	b	0x805544e <HAL_GPIO_Init+0x24c> @ imm = #0x30
 805541c: 980a         	ldr	r0, [sp, #0x28]
 805541e: f241 4100    	movw	r1, #0x1400
 8055422: f2c4 2102    	movt	r1, #0x4202
 8055426: 4288         	cmp	r0, r1
 8055428: d103         	bne	0x8055432 <HAL_GPIO_Init+0x230> @ imm = #0x6
 805542a: e7ff         	b	0x805542c <HAL_GPIO_Init+0x22a> @ imm = #-0x2
 805542c: 2005         	movs	r0, #0x5
;         temp |= (GPIO_GET_INDEX(GPIOx) << (8U * (position & 0x03U)));
 805542e: 9000         	str	r0, [sp]
 8055430: e00a         	b	0x8055448 <HAL_GPIO_Init+0x246> @ imm = #0x14
 8055432: 990a         	ldr	r1, [sp, #0x28]
 8055434: f641 0200    	movw	r2, #0x1800
 8055438: f2c4 2202    	movt	r2, #0x4202
 805543c: 2007         	movs	r0, #0x7
 805543e: 4291         	cmp	r1, r2
 8055440: bf08         	it	eq
 8055442: 2006         	moveq	r0, #0x6
 8055444: 9000         	str	r0, [sp]
 8055446: e7ff         	b	0x8055448 <HAL_GPIO_Init+0x246> @ imm = #-0x2
 8055448: 9800         	ldr	r0, [sp]
 805544a: 9001         	str	r0, [sp, #0x4]
 805544c: e7ff         	b	0x805544e <HAL_GPIO_Init+0x24c> @ imm = #-0x2
 805544e: 9801         	ldr	r0, [sp, #0x4]
 8055450: 9002         	str	r0, [sp, #0x8]
 8055452: e7ff         	b	0x8055454 <HAL_GPIO_Init+0x252> @ imm = #-0x2
 8055454: 9802         	ldr	r0, [sp, #0x8]
 8055456: 9003         	str	r0, [sp, #0xc]
 8055458: e7ff         	b	0x805545a <HAL_GPIO_Init+0x258> @ imm = #-0x2
 805545a: 9803         	ldr	r0, [sp, #0xc]
 805545c: 9004         	str	r0, [sp, #0x10]
 805545e: e7ff         	b	0x8055460 <HAL_GPIO_Init+0x25e> @ imm = #-0x2
 8055460: 9804         	ldr	r0, [sp, #0x10]
 8055462: 9005         	str	r0, [sp, #0x14]
 8055464: e7ff         	b	0x8055466 <HAL_GPIO_Init+0x264> @ imm = #-0x2
 8055466: 9805         	ldr	r0, [sp, #0x14]
 8055468: 9908         	ldr	r1, [sp, #0x20]
 805546a: f001 0103    	and	r1, r1, #0x3
 805546e: 00c9         	lsls	r1, r1, #0x3
 8055470: fa00 f101    	lsl.w	r1, r0, r1
 8055474: 9806         	ldr	r0, [sp, #0x18]
 8055476: 4308         	orrs	r0, r1
 8055478: 9006         	str	r0, [sp, #0x18]
;         EXTI->EXTICR[position >> 2U] = temp;
 805547a: 9806         	ldr	r0, [sp, #0x18]
 805547c: 9908         	ldr	r1, [sp, #0x20]
 805547e: f021 0103    	bic	r1, r1, #0x3
 8055482: f24f 4260    	movw	r2, #0xf460
 8055486: f2c4 0202    	movt	r2, #0x4002
 805548a: 5088         	str	r0, [r1, r2]
 805548c: f24f 4080    	movw	r0, #0xf480
 8055490: f2c4 0002    	movt	r0, #0x4002
;         temp = EXTI->IMR1;
 8055494: 6800         	ldr	r0, [r0]
 8055496: 9006         	str	r0, [sp, #0x18]
;         temp &= ~(iocurrent);
 8055498: 9907         	ldr	r1, [sp, #0x1c]
 805549a: 9806         	ldr	r0, [sp, #0x18]
 805549c: 4388         	bics	r0, r1
 805549e: 9006         	str	r0, [sp, #0x18]
;         if ((GPIO_Init->Mode & GPIO_MODE_IT) == GPIO_MODE_IT) {
 80554a0: 9809         	ldr	r0, [sp, #0x24]
 80554a2: 7980         	ldrb	r0, [r0, #0x6]
 80554a4: 07c0         	lsls	r0, r0, #0x1f
 80554a6: b128         	cbz	r0, 0x80554b4 <HAL_GPIO_Init+0x2b2> @ imm = #0xa
 80554a8: e7ff         	b	0x80554aa <HAL_GPIO_Init+0x2a8> @ imm = #-0x2
;           temp |= iocurrent;
 80554aa: 9907         	ldr	r1, [sp, #0x1c]
 80554ac: 9806         	ldr	r0, [sp, #0x18]
 80554ae: 4308         	orrs	r0, r1
 80554b0: 9006         	str	r0, [sp, #0x18]
;         }
 80554b2: e7ff         	b	0x80554b4 <HAL_GPIO_Init+0x2b2> @ imm = #-0x2
;         EXTI->IMR1 = temp;
 80554b4: 9806         	ldr	r0, [sp, #0x18]
 80554b6: f24f 4180    	movw	r1, #0xf480
 80554ba: f2c4 0102    	movt	r1, #0x4002
 80554be: 6008         	str	r0, [r1]
 80554c0: f24f 4084    	movw	r0, #0xf484
 80554c4: f2c4 0002    	movt	r0, #0x4002
;         temp = EXTI->EMR1;
 80554c8: 6800         	ldr	r0, [r0]
 80554ca: 9006         	str	r0, [sp, #0x18]
;         temp &= ~(iocurrent);
 80554cc: 9907         	ldr	r1, [sp, #0x1c]
 80554ce: 9806         	ldr	r0, [sp, #0x18]
 80554d0: 4388         	bics	r0, r1
 80554d2: 9006         	str	r0, [sp, #0x18]
;         if ((GPIO_Init->Mode & GPIO_MODE_EVT) == GPIO_MODE_EVT) {
 80554d4: 9809         	ldr	r0, [sp, #0x24]
 80554d6: 7980         	ldrb	r0, [r0, #0x6]
 80554d8: 0780         	lsls	r0, r0, #0x1e
 80554da: 2800         	cmp	r0, #0x0
 80554dc: d505         	bpl	0x80554ea <HAL_GPIO_Init+0x2e8> @ imm = #0xa
 80554de: e7ff         	b	0x80554e0 <HAL_GPIO_Init+0x2de> @ imm = #-0x2
;           temp |= iocurrent;
 80554e0: 9907         	ldr	r1, [sp, #0x1c]
 80554e2: 9806         	ldr	r0, [sp, #0x18]
 80554e4: 4308         	orrs	r0, r1
 80554e6: 9006         	str	r0, [sp, #0x18]
;         }
 80554e8: e7ff         	b	0x80554ea <HAL_GPIO_Init+0x2e8> @ imm = #-0x2
;         EXTI->EMR1 = temp;
 80554ea: 9806         	ldr	r0, [sp, #0x18]
 80554ec: f24f 4184    	movw	r1, #0xf484
 80554f0: f2c4 0102    	movt	r1, #0x4002
 80554f4: 6008         	str	r0, [r1]
 80554f6: f24f 4000    	movw	r0, #0xf400
 80554fa: f2c4 0002    	movt	r0, #0x4002
;         temp = EXTI->RTSR1;
 80554fe: 6800         	ldr	r0, [r0]
 8055500: 9006         	str	r0, [sp, #0x18]
;         temp &= ~(iocurrent);
 8055502: 9907         	ldr	r1, [sp, #0x1c]
 8055504: 9806         	ldr	r0, [sp, #0x18]
 8055506: 4388         	bics	r0, r1
 8055508: 9006         	str	r0, [sp, #0x18]
;         if ((GPIO_Init->Mode & RISING_EDGE) == RISING_EDGE) {
 805550a: 9809         	ldr	r0, [sp, #0x24]
 805550c: 7980         	ldrb	r0, [r0, #0x6]
 805550e: 06c0         	lsls	r0, r0, #0x1b
 8055510: 2800         	cmp	r0, #0x0
 8055512: d505         	bpl	0x8055520 <HAL_GPIO_Init+0x31e> @ imm = #0xa
 8055514: e7ff         	b	0x8055516 <HAL_GPIO_Init+0x314> @ imm = #-0x2
;           temp |= iocurrent;
 8055516: 9907         	ldr	r1, [sp, #0x1c]
 8055518: 9806         	ldr	r0, [sp, #0x18]
 805551a: 4308         	orrs	r0, r1
 805551c: 9006         	str	r0, [sp, #0x18]
;         }
 805551e: e7ff         	b	0x8055520 <HAL_GPIO_Init+0x31e> @ imm = #-0x2
;         EXTI->RTSR1 = temp;
 8055520: 9806         	ldr	r0, [sp, #0x18]
 8055522: f24f 4100    	movw	r1, #0xf400
 8055526: f2c4 0102    	movt	r1, #0x4002
 805552a: 6008         	str	r0, [r1]
 805552c: f24f 4004    	movw	r0, #0xf404
 8055530: f2c4 0002    	movt	r0, #0x4002
;         temp = EXTI->FTSR1;
 8055534: 6800         	ldr	r0, [r0]
 8055536: 9006         	str	r0, [sp, #0x18]
;         temp &= ~(iocurrent);
 8055538: 9907         	ldr	r1, [sp, #0x1c]
 805553a: 9806         	ldr	r0, [sp, #0x18]
 805553c: 4388         	bics	r0, r1
 805553e: 9006         	str	r0, [sp, #0x18]
;         if ((GPIO_Init->Mode & FALLING_EDGE) == FALLING_EDGE) {
 8055540: 9809         	ldr	r0, [sp, #0x24]
 8055542: 7980         	ldrb	r0, [r0, #0x6]
 8055544: 0680         	lsls	r0, r0, #0x1a
 8055546: 2800         	cmp	r0, #0x0
 8055548: d505         	bpl	0x8055556 <HAL_GPIO_Init+0x354> @ imm = #0xa
 805554a: e7ff         	b	0x805554c <HAL_GPIO_Init+0x34a> @ imm = #-0x2
;           temp |= iocurrent;
 805554c: 9907         	ldr	r1, [sp, #0x1c]
 805554e: 9806         	ldr	r0, [sp, #0x18]
 8055550: 4308         	orrs	r0, r1
 8055552: 9006         	str	r0, [sp, #0x18]
;         }
 8055554: e7ff         	b	0x8055556 <HAL_GPIO_Init+0x354> @ imm = #-0x2
;         EXTI->FTSR1 = temp;
 8055556: 9806         	ldr	r0, [sp, #0x18]
 8055558: f24f 4104    	movw	r1, #0xf404
 805555c: f2c4 0102    	movt	r1, #0x4002
 8055560: 6008         	str	r0, [r1]
;       }
 8055562: e7ff         	b	0x8055564 <HAL_GPIO_Init+0x362> @ imm = #-0x2
;     }
 8055564: e7ff         	b	0x8055566 <HAL_GPIO_Init+0x364> @ imm = #-0x2
;     position++;
 8055566: 9808         	ldr	r0, [sp, #0x20]
 8055568: 3001         	adds	r0, #0x1
 805556a: 9008         	str	r0, [sp, #0x20]
;   while (((GPIO_Init->Pin) >> position) != 0U) {
 805556c: e64f         	b	0x805520e <HAL_GPIO_Init+0xc> @ imm = #-0x362
; }
 805556e: b00b         	add	sp, #0x2c
 8055570: 4770         	bx	lr

08055572 <HAL_GPIO_WritePin>:
;                        GPIO_PinState PinState) {
 8055572: b082         	sub	sp, #0x8
 8055574: 9001         	str	r0, [sp, #0x4]
 8055576: f8ad 1002    	strh.w	r1, [sp, #0x2]
 805557a: f88d 2001    	strb.w	r2, [sp, #0x1]
;   if (PinState != GPIO_PIN_RESET) {
 805557e: f89d 0001    	ldrb.w	r0, [sp, #0x1]
 8055582: b128         	cbz	r0, 0x8055590 <HAL_GPIO_WritePin+0x1e> @ imm = #0xa
 8055584: e7ff         	b	0x8055586 <HAL_GPIO_WritePin+0x14> @ imm = #-0x2
;     GPIOx->BSRR = (uint32_t)GPIO_Pin;
 8055586: f8bd 0002    	ldrh.w	r0, [sp, #0x2]
 805558a: 9901         	ldr	r1, [sp, #0x4]
 805558c: 6188         	str	r0, [r1, #0x18]
;   } else {
 805558e: e004         	b	0x805559a <HAL_GPIO_WritePin+0x28> @ imm = #0x8
;     GPIOx->BRR = (uint32_t)GPIO_Pin;
 8055590: f8bd 0002    	ldrh.w	r0, [sp, #0x2]
 8055594: 9901         	ldr	r1, [sp, #0x4]
 8055596: 6288         	str	r0, [r1, #0x28]
 8055598: e7ff         	b	0x805559a <HAL_GPIO_WritePin+0x28> @ imm = #-0x2
; }
 805559a: b002         	add	sp, #0x8
 805559c: 4770         	bx	lr

0805559e <HAL_GPIO_TogglePin>:
; void HAL_GPIO_TogglePin(GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin) {
 805559e: b083         	sub	sp, #0xc
 80555a0: 9002         	str	r0, [sp, #0x8]
 80555a2: f8ad 1006    	strh.w	r1, [sp, #0x6]
;   odr = GPIOx->ODR;
 80555a6: 9802         	ldr	r0, [sp, #0x8]
 80555a8: 6940         	ldr	r0, [r0, #0x14]
 80555aa: 9000         	str	r0, [sp]
;   GPIOx->BSRR = ((odr & GPIO_Pin) << GPIO_NUMBER) | (~odr & GPIO_Pin);
 80555ac: 9a00         	ldr	r2, [sp]
 80555ae: f8bd 0006    	ldrh.w	r0, [sp, #0x6]
 80555b2: ea02 0100    	and.w	r1, r2, r0
 80555b6: 4390         	bics	r0, r2
 80555b8: ea40 4001    	orr.w	r0, r0, r1, lsl #16
 80555bc: 9902         	ldr	r1, [sp, #0x8]
 80555be: 6188         	str	r0, [r1, #0x18]
; }
 80555c0: b003         	add	sp, #0xc
 80555c2: 4770         	bx	lr

080555c4 <NMI_Handler>:
; DEFAULT_IRQ_HANDLER(NMI_Handler)
 80555c4: e7ff         	b	0x80555c6 <NMI_Handler+0x2> @ imm = #-0x2
 80555c6: e7fe         	b	0x80555c6 <NMI_Handler+0x2> @ imm = #-0x4

080555c8 <HardFault_Handler>:
; DEFAULT_IRQ_HANDLER(HardFault_Handler)
 80555c8: e7ff         	b	0x80555ca <HardFault_Handler+0x2> @ imm = #-0x2
 80555ca: e7fe         	b	0x80555ca <HardFault_Handler+0x2> @ imm = #-0x4

080555cc <MemManage_Handler>:
; DEFAULT_IRQ_HANDLER(MemManage_Handler)
 80555cc: e7ff         	b	0x80555ce <MemManage_Handler+0x2> @ imm = #-0x2
 80555ce: e7fe         	b	0x80555ce <MemManage_Handler+0x2> @ imm = #-0x4

080555d0 <BusFault_Handler>:
; DEFAULT_IRQ_HANDLER(BusFault_Handler)
 80555d0: e7ff         	b	0x80555d2 <BusFault_Handler+0x2> @ imm = #-0x2
 80555d2: e7fe         	b	0x80555d2 <BusFault_Handler+0x2> @ imm = #-0x4

080555d4 <UsageFault_Handler>:
; DEFAULT_IRQ_HANDLER(UsageFault_Handler)
 80555d4: e7ff         	b	0x80555d6 <UsageFault_Handler+0x2> @ imm = #-0x2
 80555d6: e7fe         	b	0x80555d6 <UsageFault_Handler+0x2> @ imm = #-0x4

080555d8 <SecureFault_Handler>:
; DEFAULT_IRQ_HANDLER(SecureFault_Handler)
 80555d8: e7ff         	b	0x80555da <SecureFault_Handler+0x2> @ imm = #-0x2
 80555da: e7fe         	b	0x80555da <SecureFault_Handler+0x2> @ imm = #-0x4

080555dc <SVC_Handler>:
; DEFAULT_IRQ_HANDLER(SVC_Handler)
 80555dc: e7ff         	b	0x80555de <SVC_Handler+0x2> @ imm = #-0x2
 80555de: e7fe         	b	0x80555de <SVC_Handler+0x2> @ imm = #-0x4

080555e0 <DebugMon_Handler>:
; DEFAULT_IRQ_HANDLER(DebugMon_Handler)
 80555e0: e7ff         	b	0x80555e2 <DebugMon_Handler+0x2> @ imm = #-0x2
 80555e2: e7fe         	b	0x80555e2 <DebugMon_Handler+0x2> @ imm = #-0x4

080555e4 <PendSV_Handler>:
; DEFAULT_IRQ_HANDLER(PendSV_Handler)
 80555e4: e7ff         	b	0x80555e6 <PendSV_Handler+0x2> @ imm = #-0x2
 80555e6: e7fe         	b	0x80555e6 <PendSV_Handler+0x2> @ imm = #-0x4

080555e8 <SysTick_Handler>:
; DEFAULT_IRQ_HANDLER(SysTick_Handler)
 80555e8: e7ff         	b	0x80555ea <SysTick_Handler+0x2> @ imm = #-0x2
 80555ea: e7fe         	b	0x80555ea <SysTick_Handler+0x2> @ imm = #-0x4

080555ec <WWDG_IRQHandler>:
; DEFAULT_IRQ_HANDLER(WWDG_IRQHandler)
 80555ec: e7ff         	b	0x80555ee <WWDG_IRQHandler+0x2> @ imm = #-0x2
 80555ee: e7fe         	b	0x80555ee <WWDG_IRQHandler+0x2> @ imm = #-0x4

080555f0 <PVD_PVM_IRQHandler>:
; DEFAULT_IRQ_HANDLER(PVD_PVM_IRQHandler)
 80555f0: e7ff         	b	0x80555f2 <PVD_PVM_IRQHandler+0x2> @ imm = #-0x2
 80555f2: e7fe         	b	0x80555f2 <PVD_PVM_IRQHandler+0x2> @ imm = #-0x4

080555f4 <RTC_IRQHandler>:
; DEFAULT_IRQ_HANDLER(RTC_IRQHandler)
 80555f4: e7ff         	b	0x80555f6 <RTC_IRQHandler+0x2> @ imm = #-0x2
 80555f6: e7fe         	b	0x80555f6 <RTC_IRQHandler+0x2> @ imm = #-0x4

080555f8 <RTC_IRQHandler_S>:
; DEFAULT_IRQ_HANDLER(RTC_IRQHandler_S)
 80555f8: e7ff         	b	0x80555fa <RTC_IRQHandler_S+0x2> @ imm = #-0x2
 80555fa: e7fe         	b	0x80555fa <RTC_IRQHandler_S+0x2> @ imm = #-0x4

080555fc <TAMP_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TAMP_IRQHandler)
 80555fc: e7ff         	b	0x80555fe <TAMP_IRQHandler+0x2> @ imm = #-0x2
 80555fe: e7fe         	b	0x80555fe <TAMP_IRQHandler+0x2> @ imm = #-0x4

08055600 <TAMP_IRQHandler_S>:
; DEFAULT_IRQ_HANDLER(TAMP_IRQHandler_S)
 8055600: e7ff         	b	0x8055602 <TAMP_IRQHandler_S+0x2> @ imm = #-0x2
 8055602: e7fe         	b	0x8055602 <TAMP_IRQHandler_S+0x2> @ imm = #-0x4

08055604 <FLASH_IRQHandler>:
; DEFAULT_IRQ_HANDLER(FLASH_IRQHandler)
 8055604: e7ff         	b	0x8055606 <FLASH_IRQHandler+0x2> @ imm = #-0x2
 8055606: e7fe         	b	0x8055606 <FLASH_IRQHandler+0x2> @ imm = #-0x4

08055608 <FLASH_IRQHandler_S>:
; DEFAULT_IRQ_HANDLER(FLASH_IRQHandler_S)
 8055608: e7ff         	b	0x805560a <FLASH_IRQHandler_S+0x2> @ imm = #-0x2
 805560a: e7fe         	b	0x805560a <FLASH_IRQHandler_S+0x2> @ imm = #-0x4

0805560c <SERR_IRQHandler>:
; DEFAULT_IRQ_HANDLER(SERR_IRQHandler)
 805560c: e7ff         	b	0x805560e <SERR_IRQHandler+0x2> @ imm = #-0x2
 805560e: e7fe         	b	0x805560e <SERR_IRQHandler+0x2> @ imm = #-0x4

08055610 <RCC_IRQHandler>:
; DEFAULT_IRQ_HANDLER(RCC_IRQHandler)
 8055610: e7ff         	b	0x8055612 <RCC_IRQHandler+0x2> @ imm = #-0x2
 8055612: e7fe         	b	0x8055612 <RCC_IRQHandler+0x2> @ imm = #-0x4

08055614 <RCC_IRQHandler_S>:
; DEFAULT_IRQ_HANDLER(RCC_IRQHandler_S)
 8055614: e7ff         	b	0x8055616 <RCC_IRQHandler_S+0x2> @ imm = #-0x2
 8055616: e7fe         	b	0x8055616 <RCC_IRQHandler_S+0x2> @ imm = #-0x4

08055618 <EXTI0_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI0_IRQHandler)
 8055618: e7ff         	b	0x805561a <EXTI0_IRQHandler+0x2> @ imm = #-0x2
 805561a: e7fe         	b	0x805561a <EXTI0_IRQHandler+0x2> @ imm = #-0x4

0805561c <EXTI1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI1_IRQHandler)
 805561c: e7ff         	b	0x805561e <EXTI1_IRQHandler+0x2> @ imm = #-0x2
 805561e: e7fe         	b	0x805561e <EXTI1_IRQHandler+0x2> @ imm = #-0x4

08055620 <EXTI2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI2_IRQHandler)
 8055620: e7ff         	b	0x8055622 <EXTI2_IRQHandler+0x2> @ imm = #-0x2
 8055622: e7fe         	b	0x8055622 <EXTI2_IRQHandler+0x2> @ imm = #-0x4

08055624 <EXTI3_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI3_IRQHandler)
 8055624: e7ff         	b	0x8055626 <EXTI3_IRQHandler+0x2> @ imm = #-0x2
 8055626: e7fe         	b	0x8055626 <EXTI3_IRQHandler+0x2> @ imm = #-0x4

08055628 <EXTI4_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI4_IRQHandler)
 8055628: e7ff         	b	0x805562a <EXTI4_IRQHandler+0x2> @ imm = #-0x2
 805562a: e7fe         	b	0x805562a <EXTI4_IRQHandler+0x2> @ imm = #-0x4

0805562c <EXTI5_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI5_IRQHandler)
 805562c: e7ff         	b	0x805562e <EXTI5_IRQHandler+0x2> @ imm = #-0x2
 805562e: e7fe         	b	0x805562e <EXTI5_IRQHandler+0x2> @ imm = #-0x4

08055630 <EXTI6_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI6_IRQHandler)
 8055630: e7ff         	b	0x8055632 <EXTI6_IRQHandler+0x2> @ imm = #-0x2
 8055632: e7fe         	b	0x8055632 <EXTI6_IRQHandler+0x2> @ imm = #-0x4

08055634 <EXTI7_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI7_IRQHandler)
 8055634: e7ff         	b	0x8055636 <EXTI7_IRQHandler+0x2> @ imm = #-0x2
 8055636: e7fe         	b	0x8055636 <EXTI7_IRQHandler+0x2> @ imm = #-0x4

08055638 <EXTI8_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI8_IRQHandler)
 8055638: e7ff         	b	0x805563a <EXTI8_IRQHandler+0x2> @ imm = #-0x2
 805563a: e7fe         	b	0x805563a <EXTI8_IRQHandler+0x2> @ imm = #-0x4

0805563c <EXTI9_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI9_IRQHandler)
 805563c: e7ff         	b	0x805563e <EXTI9_IRQHandler+0x2> @ imm = #-0x2
 805563e: e7fe         	b	0x805563e <EXTI9_IRQHandler+0x2> @ imm = #-0x4

08055640 <EXTI10_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI10_IRQHandler)
 8055640: e7ff         	b	0x8055642 <EXTI10_IRQHandler+0x2> @ imm = #-0x2
 8055642: e7fe         	b	0x8055642 <EXTI10_IRQHandler+0x2> @ imm = #-0x4

08055644 <EXTI11_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI11_IRQHandler)
 8055644: e7ff         	b	0x8055646 <EXTI11_IRQHandler+0x2> @ imm = #-0x2
 8055646: e7fe         	b	0x8055646 <EXTI11_IRQHandler+0x2> @ imm = #-0x4

08055648 <EXTI12_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI12_IRQHandler)
 8055648: e7ff         	b	0x805564a <EXTI12_IRQHandler+0x2> @ imm = #-0x2
 805564a: e7fe         	b	0x805564a <EXTI12_IRQHandler+0x2> @ imm = #-0x4

0805564c <EXTI13_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI13_IRQHandler)
 805564c: e7ff         	b	0x805564e <EXTI13_IRQHandler+0x2> @ imm = #-0x2
 805564e: e7fe         	b	0x805564e <EXTI13_IRQHandler+0x2> @ imm = #-0x4

08055650 <EXTI14_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI14_IRQHandler)
 8055650: e7ff         	b	0x8055652 <EXTI14_IRQHandler+0x2> @ imm = #-0x2
 8055652: e7fe         	b	0x8055652 <EXTI14_IRQHandler+0x2> @ imm = #-0x4

08055654 <EXTI15_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI15_IRQHandler)
 8055654: e7ff         	b	0x8055656 <EXTI15_IRQHandler+0x2> @ imm = #-0x2
 8055656: e7fe         	b	0x8055656 <EXTI15_IRQHandler+0x2> @ imm = #-0x4

08055658 <DMAMUX1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMAMUX1_IRQHandler)
 8055658: e7ff         	b	0x805565a <DMAMUX1_IRQHandler+0x2> @ imm = #-0x2
 805565a: e7fe         	b	0x805565a <DMAMUX1_IRQHandler+0x2> @ imm = #-0x4

0805565c <DMAMUX1_IRQHandler_S>:
; DEFAULT_IRQ_HANDLER(DMAMUX1_IRQHandler_S)
 805565c: e7ff         	b	0x805565e <DMAMUX1_IRQHandler_S+0x2> @ imm = #-0x2
 805565e: e7fe         	b	0x805565e <DMAMUX1_IRQHandler_S+0x2> @ imm = #-0x4

08055660 <DMA1_Channel1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA1_Channel1_IRQHandler)
 8055660: e7ff         	b	0x8055662 <DMA1_Channel1_IRQHandler+0x2> @ imm = #-0x2
 8055662: e7fe         	b	0x8055662 <DMA1_Channel1_IRQHandler+0x2> @ imm = #-0x4

08055664 <DMA1_Channel2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA1_Channel2_IRQHandler)
 8055664: e7ff         	b	0x8055666 <DMA1_Channel2_IRQHandler+0x2> @ imm = #-0x2
 8055666: e7fe         	b	0x8055666 <DMA1_Channel2_IRQHandler+0x2> @ imm = #-0x4

08055668 <DMA1_Channel3_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA1_Channel3_IRQHandler)
 8055668: e7ff         	b	0x805566a <DMA1_Channel3_IRQHandler+0x2> @ imm = #-0x2
 805566a: e7fe         	b	0x805566a <DMA1_Channel3_IRQHandler+0x2> @ imm = #-0x4

0805566c <DMA1_Channel4_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA1_Channel4_IRQHandler)
 805566c: e7ff         	b	0x805566e <DMA1_Channel4_IRQHandler+0x2> @ imm = #-0x2
 805566e: e7fe         	b	0x805566e <DMA1_Channel4_IRQHandler+0x2> @ imm = #-0x4

08055670 <DMA1_Channel5_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA1_Channel5_IRQHandler)
 8055670: e7ff         	b	0x8055672 <DMA1_Channel5_IRQHandler+0x2> @ imm = #-0x2
 8055672: e7fe         	b	0x8055672 <DMA1_Channel5_IRQHandler+0x2> @ imm = #-0x4

08055674 <DMA1_Channel6_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA1_Channel6_IRQHandler)
 8055674: e7ff         	b	0x8055676 <DMA1_Channel6_IRQHandler+0x2> @ imm = #-0x2
 8055676: e7fe         	b	0x8055676 <DMA1_Channel6_IRQHandler+0x2> @ imm = #-0x4

08055678 <DMA1_Channel7_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA1_Channel7_IRQHandler)
 8055678: e7ff         	b	0x805567a <DMA1_Channel7_IRQHandler+0x2> @ imm = #-0x2
 805567a: e7fe         	b	0x805567a <DMA1_Channel7_IRQHandler+0x2> @ imm = #-0x4

0805567c <DMA1_Channel8_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA1_Channel8_IRQHandler)
 805567c: e7ff         	b	0x805567e <DMA1_Channel8_IRQHandler+0x2> @ imm = #-0x2
 805567e: e7fe         	b	0x805567e <DMA1_Channel8_IRQHandler+0x2> @ imm = #-0x4

08055680 <ADC1_2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(ADC1_2_IRQHandler)
 8055680: e7ff         	b	0x8055682 <ADC1_2_IRQHandler+0x2> @ imm = #-0x2
 8055682: e7fe         	b	0x8055682 <ADC1_2_IRQHandler+0x2> @ imm = #-0x4

08055684 <DAC_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DAC_IRQHandler)
 8055684: e7ff         	b	0x8055686 <DAC_IRQHandler+0x2> @ imm = #-0x2
 8055686: e7fe         	b	0x8055686 <DAC_IRQHandler+0x2> @ imm = #-0x4

08055688 <FDCAN1_IT0_IRQHandler>:
; DEFAULT_IRQ_HANDLER(FDCAN1_IT0_IRQHandler)
 8055688: e7ff         	b	0x805568a <FDCAN1_IT0_IRQHandler+0x2> @ imm = #-0x2
 805568a: e7fe         	b	0x805568a <FDCAN1_IT0_IRQHandler+0x2> @ imm = #-0x4

0805568c <FDCAN1_IT1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(FDCAN1_IT1_IRQHandler)
 805568c: e7ff         	b	0x805568e <FDCAN1_IT1_IRQHandler+0x2> @ imm = #-0x2
 805568e: e7fe         	b	0x805568e <FDCAN1_IT1_IRQHandler+0x2> @ imm = #-0x4

08055690 <TIM1_BRK_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM1_BRK_IRQHandler)
 8055690: e7ff         	b	0x8055692 <TIM1_BRK_IRQHandler+0x2> @ imm = #-0x2
 8055692: e7fe         	b	0x8055692 <TIM1_BRK_IRQHandler+0x2> @ imm = #-0x4

08055694 <TIM1_UP_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM1_UP_IRQHandler)
 8055694: e7ff         	b	0x8055696 <TIM1_UP_IRQHandler+0x2> @ imm = #-0x2
 8055696: e7fe         	b	0x8055696 <TIM1_UP_IRQHandler+0x2> @ imm = #-0x4

08055698 <TIM1_TRG_COM_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM1_TRG_COM_IRQHandler)
 8055698: e7ff         	b	0x805569a <TIM1_TRG_COM_IRQHandler+0x2> @ imm = #-0x2
 805569a: e7fe         	b	0x805569a <TIM1_TRG_COM_IRQHandler+0x2> @ imm = #-0x4

0805569c <TIM1_CC_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM1_CC_IRQHandler)
 805569c: e7ff         	b	0x805569e <TIM1_CC_IRQHandler+0x2> @ imm = #-0x2
 805569e: e7fe         	b	0x805569e <TIM1_CC_IRQHandler+0x2> @ imm = #-0x4

080556a0 <TIM2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM2_IRQHandler)
 80556a0: e7ff         	b	0x80556a2 <TIM2_IRQHandler+0x2> @ imm = #-0x2
 80556a2: e7fe         	b	0x80556a2 <TIM2_IRQHandler+0x2> @ imm = #-0x4

080556a4 <TIM3_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM3_IRQHandler)
 80556a4: e7ff         	b	0x80556a6 <TIM3_IRQHandler+0x2> @ imm = #-0x2
 80556a6: e7fe         	b	0x80556a6 <TIM3_IRQHandler+0x2> @ imm = #-0x4

080556a8 <TIM4_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM4_IRQHandler)
 80556a8: e7ff         	b	0x80556aa <TIM4_IRQHandler+0x2> @ imm = #-0x2
 80556aa: e7fe         	b	0x80556aa <TIM4_IRQHandler+0x2> @ imm = #-0x4

080556ac <TIM5_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM5_IRQHandler)
 80556ac: e7ff         	b	0x80556ae <TIM5_IRQHandler+0x2> @ imm = #-0x2
 80556ae: e7fe         	b	0x80556ae <TIM5_IRQHandler+0x2> @ imm = #-0x4

080556b0 <TIM6_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM6_IRQHandler)
 80556b0: e7ff         	b	0x80556b2 <TIM6_IRQHandler+0x2> @ imm = #-0x2
 80556b2: e7fe         	b	0x80556b2 <TIM6_IRQHandler+0x2> @ imm = #-0x4

080556b4 <TIM7_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM7_IRQHandler)
 80556b4: e7ff         	b	0x80556b6 <TIM7_IRQHandler+0x2> @ imm = #-0x2
 80556b6: e7fe         	b	0x80556b6 <TIM7_IRQHandler+0x2> @ imm = #-0x4

080556b8 <TIM8_BRK_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM8_BRK_IRQHandler)
 80556b8: e7ff         	b	0x80556ba <TIM8_BRK_IRQHandler+0x2> @ imm = #-0x2
 80556ba: e7fe         	b	0x80556ba <TIM8_BRK_IRQHandler+0x2> @ imm = #-0x4

080556bc <TIM8_UP_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM8_UP_IRQHandler)
 80556bc: e7ff         	b	0x80556be <TIM8_UP_IRQHandler+0x2> @ imm = #-0x2
 80556be: e7fe         	b	0x80556be <TIM8_UP_IRQHandler+0x2> @ imm = #-0x4

080556c0 <TIM8_TRG_COM_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM8_TRG_COM_IRQHandler)
 80556c0: e7ff         	b	0x80556c2 <TIM8_TRG_COM_IRQHandler+0x2> @ imm = #-0x2
 80556c2: e7fe         	b	0x80556c2 <TIM8_TRG_COM_IRQHandler+0x2> @ imm = #-0x4

080556c4 <TIM8_CC_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM8_CC_IRQHandler)
 80556c4: e7ff         	b	0x80556c6 <TIM8_CC_IRQHandler+0x2> @ imm = #-0x2
 80556c6: e7fe         	b	0x80556c6 <TIM8_CC_IRQHandler+0x2> @ imm = #-0x4

080556c8 <I2C1_EV_IRQHandler>:
; DEFAULT_IRQ_HANDLER(I2C1_EV_IRQHandler)
 80556c8: e7ff         	b	0x80556ca <I2C1_EV_IRQHandler+0x2> @ imm = #-0x2
 80556ca: e7fe         	b	0x80556ca <I2C1_EV_IRQHandler+0x2> @ imm = #-0x4

080556cc <I2C1_ER_IRQHandler>:
; DEFAULT_IRQ_HANDLER(I2C1_ER_IRQHandler)
 80556cc: e7ff         	b	0x80556ce <I2C1_ER_IRQHandler+0x2> @ imm = #-0x2
 80556ce: e7fe         	b	0x80556ce <I2C1_ER_IRQHandler+0x2> @ imm = #-0x4

080556d0 <I2C2_EV_IRQHandler>:
; DEFAULT_IRQ_HANDLER(I2C2_EV_IRQHandler)
 80556d0: e7ff         	b	0x80556d2 <I2C2_EV_IRQHandler+0x2> @ imm = #-0x2
 80556d2: e7fe         	b	0x80556d2 <I2C2_EV_IRQHandler+0x2> @ imm = #-0x4

080556d4 <I2C2_ER_IRQHandler>:
; DEFAULT_IRQ_HANDLER(I2C2_ER_IRQHandler)
 80556d4: e7ff         	b	0x80556d6 <I2C2_ER_IRQHandler+0x2> @ imm = #-0x2
 80556d6: e7fe         	b	0x80556d6 <I2C2_ER_IRQHandler+0x2> @ imm = #-0x4

080556d8 <SPI1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(SPI1_IRQHandler)
 80556d8: e7ff         	b	0x80556da <SPI1_IRQHandler+0x2> @ imm = #-0x2
 80556da: e7fe         	b	0x80556da <SPI1_IRQHandler+0x2> @ imm = #-0x4

080556dc <SPI2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(SPI2_IRQHandler)
 80556dc: e7ff         	b	0x80556de <SPI2_IRQHandler+0x2> @ imm = #-0x2
 80556de: e7fe         	b	0x80556de <SPI2_IRQHandler+0x2> @ imm = #-0x4

080556e0 <USART1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(USART1_IRQHandler)
 80556e0: e7ff         	b	0x80556e2 <USART1_IRQHandler+0x2> @ imm = #-0x2
 80556e2: e7fe         	b	0x80556e2 <USART1_IRQHandler+0x2> @ imm = #-0x4

080556e4 <USART2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(USART2_IRQHandler)
 80556e4: e7ff         	b	0x80556e6 <USART2_IRQHandler+0x2> @ imm = #-0x2
 80556e6: e7fe         	b	0x80556e6 <USART2_IRQHandler+0x2> @ imm = #-0x4

080556e8 <USART3_IRQHandler>:
; DEFAULT_IRQ_HANDLER(USART3_IRQHandler)
 80556e8: e7ff         	b	0x80556ea <USART3_IRQHandler+0x2> @ imm = #-0x2
 80556ea: e7fe         	b	0x80556ea <USART3_IRQHandler+0x2> @ imm = #-0x4

080556ec <UART4_IRQHandler>:
; DEFAULT_IRQ_HANDLER(UART4_IRQHandler)
 80556ec: e7ff         	b	0x80556ee <UART4_IRQHandler+0x2> @ imm = #-0x2
 80556ee: e7fe         	b	0x80556ee <UART4_IRQHandler+0x2> @ imm = #-0x4

080556f0 <UART5_IRQHandler>:
; DEFAULT_IRQ_HANDLER(UART5_IRQHandler)
 80556f0: e7ff         	b	0x80556f2 <UART5_IRQHandler+0x2> @ imm = #-0x2
 80556f2: e7fe         	b	0x80556f2 <UART5_IRQHandler+0x2> @ imm = #-0x4

080556f4 <LPUART1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(LPUART1_IRQHandler)
 80556f4: e7ff         	b	0x80556f6 <LPUART1_IRQHandler+0x2> @ imm = #-0x2
 80556f6: e7fe         	b	0x80556f6 <LPUART1_IRQHandler+0x2> @ imm = #-0x4

080556f8 <LPTIM1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(LPTIM1_IRQHandler)
 80556f8: e7ff         	b	0x80556fa <LPTIM1_IRQHandler+0x2> @ imm = #-0x2
 80556fa: e7fe         	b	0x80556fa <LPTIM1_IRQHandler+0x2> @ imm = #-0x4

080556fc <LPTIM2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(LPTIM2_IRQHandler)
 80556fc: e7ff         	b	0x80556fe <LPTIM2_IRQHandler+0x2> @ imm = #-0x2
 80556fe: e7fe         	b	0x80556fe <LPTIM2_IRQHandler+0x2> @ imm = #-0x4

08055700 <TIM15_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM15_IRQHandler)
 8055700: e7ff         	b	0x8055702 <TIM15_IRQHandler+0x2> @ imm = #-0x2
 8055702: e7fe         	b	0x8055702 <TIM15_IRQHandler+0x2> @ imm = #-0x4

08055704 <TIM16_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM16_IRQHandler)
 8055704: e7ff         	b	0x8055706 <TIM16_IRQHandler+0x2> @ imm = #-0x2
 8055706: e7fe         	b	0x8055706 <TIM16_IRQHandler+0x2> @ imm = #-0x4

08055708 <TIM17_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM17_IRQHandler)
 8055708: e7ff         	b	0x805570a <TIM17_IRQHandler+0x2> @ imm = #-0x2
 805570a: e7fe         	b	0x805570a <TIM17_IRQHandler+0x2> @ imm = #-0x4

0805570c <COMP_IRQHandler>:
; DEFAULT_IRQ_HANDLER(COMP_IRQHandler)
 805570c: e7ff         	b	0x805570e <COMP_IRQHandler+0x2> @ imm = #-0x2
 805570e: e7fe         	b	0x805570e <COMP_IRQHandler+0x2> @ imm = #-0x4

08055710 <USB_FS_IRQHandler>:
; DEFAULT_IRQ_HANDLER(USB_FS_IRQHandler)
 8055710: e7ff         	b	0x8055712 <USB_FS_IRQHandler+0x2> @ imm = #-0x2
 8055712: e7fe         	b	0x8055712 <USB_FS_IRQHandler+0x2> @ imm = #-0x4

08055714 <CRS_IRQHandler>:
; DEFAULT_IRQ_HANDLER(CRS_IRQHandler)
 8055714: e7ff         	b	0x8055716 <CRS_IRQHandler+0x2> @ imm = #-0x2
 8055716: e7fe         	b	0x8055716 <CRS_IRQHandler+0x2> @ imm = #-0x4

08055718 <FMC_IRQHandler>:
; DEFAULT_IRQ_HANDLER(FMC_IRQHandler)
 8055718: e7ff         	b	0x805571a <FMC_IRQHandler+0x2> @ imm = #-0x2
 805571a: e7fe         	b	0x805571a <FMC_IRQHandler+0x2> @ imm = #-0x4

0805571c <OCTOSPI1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(OCTOSPI1_IRQHandler)
 805571c: e7ff         	b	0x805571e <OCTOSPI1_IRQHandler+0x2> @ imm = #-0x2
 805571e: e7fe         	b	0x805571e <OCTOSPI1_IRQHandler+0x2> @ imm = #-0x4

08055720 <SDMMC1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(SDMMC1_IRQHandler)
 8055720: e7ff         	b	0x8055722 <SDMMC1_IRQHandler+0x2> @ imm = #-0x2
 8055722: e7fe         	b	0x8055722 <SDMMC1_IRQHandler+0x2> @ imm = #-0x4

08055724 <DMA2_Channel1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA2_Channel1_IRQHandler)
 8055724: e7ff         	b	0x8055726 <DMA2_Channel1_IRQHandler+0x2> @ imm = #-0x2
 8055726: e7fe         	b	0x8055726 <DMA2_Channel1_IRQHandler+0x2> @ imm = #-0x4

08055728 <DMA2_Channel2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA2_Channel2_IRQHandler)
 8055728: e7ff         	b	0x805572a <DMA2_Channel2_IRQHandler+0x2> @ imm = #-0x2
 805572a: e7fe         	b	0x805572a <DMA2_Channel2_IRQHandler+0x2> @ imm = #-0x4

0805572c <DMA2_Channel3_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA2_Channel3_IRQHandler)
 805572c: e7ff         	b	0x805572e <DMA2_Channel3_IRQHandler+0x2> @ imm = #-0x2
 805572e: e7fe         	b	0x805572e <DMA2_Channel3_IRQHandler+0x2> @ imm = #-0x4

08055730 <DMA2_Channel4_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA2_Channel4_IRQHandler)
 8055730: e7ff         	b	0x8055732 <DMA2_Channel4_IRQHandler+0x2> @ imm = #-0x2
 8055732: e7fe         	b	0x8055732 <DMA2_Channel4_IRQHandler+0x2> @ imm = #-0x4

08055734 <DMA2_Channel5_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA2_Channel5_IRQHandler)
 8055734: e7ff         	b	0x8055736 <DMA2_Channel5_IRQHandler+0x2> @ imm = #-0x2
 8055736: e7fe         	b	0x8055736 <DMA2_Channel5_IRQHandler+0x2> @ imm = #-0x4

08055738 <DMA2_Channel6_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA2_Channel6_IRQHandler)
 8055738: e7ff         	b	0x805573a <DMA2_Channel6_IRQHandler+0x2> @ imm = #-0x2
 805573a: e7fe         	b	0x805573a <DMA2_Channel6_IRQHandler+0x2> @ imm = #-0x4

0805573c <DMA2_Channel7_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA2_Channel7_IRQHandler)
 805573c: e7ff         	b	0x805573e <DMA2_Channel7_IRQHandler+0x2> @ imm = #-0x2
 805573e: e7fe         	b	0x805573e <DMA2_Channel7_IRQHandler+0x2> @ imm = #-0x4

08055740 <DMA2_Channel8_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA2_Channel8_IRQHandler)
 8055740: e7ff         	b	0x8055742 <DMA2_Channel8_IRQHandler+0x2> @ imm = #-0x2
 8055742: e7fe         	b	0x8055742 <DMA2_Channel8_IRQHandler+0x2> @ imm = #-0x4

08055744 <I2C3_EV_IRQHandler>:
; DEFAULT_IRQ_HANDLER(I2C3_EV_IRQHandler)
 8055744: e7ff         	b	0x8055746 <I2C3_EV_IRQHandler+0x2> @ imm = #-0x2
 8055746: e7fe         	b	0x8055746 <I2C3_EV_IRQHandler+0x2> @ imm = #-0x4

08055748 <I2C3_ER_IRQHandler>:
; DEFAULT_IRQ_HANDLER(I2C3_ER_IRQHandler)
 8055748: e7ff         	b	0x805574a <I2C3_ER_IRQHandler+0x2> @ imm = #-0x2
 805574a: e7fe         	b	0x805574a <I2C3_ER_IRQHandler+0x2> @ imm = #-0x4

0805574c <SAI1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(SAI1_IRQHandler)
 805574c: e7ff         	b	0x805574e <SAI1_IRQHandler+0x2> @ imm = #-0x2
 805574e: e7fe         	b	0x805574e <SAI1_IRQHandler+0x2> @ imm = #-0x4

08055750 <SAI2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(SAI2_IRQHandler)
 8055750: e7ff         	b	0x8055752 <SAI2_IRQHandler+0x2> @ imm = #-0x2
 8055752: e7fe         	b	0x8055752 <SAI2_IRQHandler+0x2> @ imm = #-0x4

08055754 <TSC_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TSC_IRQHandler)
 8055754: e7ff         	b	0x8055756 <TSC_IRQHandler+0x2> @ imm = #-0x2
 8055756: e7fe         	b	0x8055756 <TSC_IRQHandler+0x2> @ imm = #-0x4

08055758 <AES_IRQHandler>:
; DEFAULT_IRQ_HANDLER(AES_IRQHandler)
 8055758: e7ff         	b	0x805575a <AES_IRQHandler+0x2> @ imm = #-0x2
 805575a: e7fe         	b	0x805575a <AES_IRQHandler+0x2> @ imm = #-0x4

0805575c <RNG_IRQHandler>:
; DEFAULT_IRQ_HANDLER(RNG_IRQHandler)
 805575c: e7ff         	b	0x805575e <RNG_IRQHandler+0x2> @ imm = #-0x2
 805575e: e7fe         	b	0x805575e <RNG_IRQHandler+0x2> @ imm = #-0x4

08055760 <FPU_IRQHandler>:
; DEFAULT_IRQ_HANDLER(FPU_IRQHandler)
 8055760: e7ff         	b	0x8055762 <FPU_IRQHandler+0x2> @ imm = #-0x2
 8055762: e7fe         	b	0x8055762 <FPU_IRQHandler+0x2> @ imm = #-0x4

08055764 <HASH_IRQHandler>:
; DEFAULT_IRQ_HANDLER(HASH_IRQHandler)
 8055764: e7ff         	b	0x8055766 <HASH_IRQHandler+0x2> @ imm = #-0x2
 8055766: e7fe         	b	0x8055766 <HASH_IRQHandler+0x2> @ imm = #-0x4

08055768 <PKA_IRQHandler>:
; DEFAULT_IRQ_HANDLER(PKA_IRQHandler)
 8055768: e7ff         	b	0x805576a <PKA_IRQHandler+0x2> @ imm = #-0x2
 805576a: e7fe         	b	0x805576a <PKA_IRQHandler+0x2> @ imm = #-0x4

0805576c <LPTIM3_IRQHandler>:
; DEFAULT_IRQ_HANDLER(LPTIM3_IRQHandler)
 805576c: e7ff         	b	0x805576e <LPTIM3_IRQHandler+0x2> @ imm = #-0x2
 805576e: e7fe         	b	0x805576e <LPTIM3_IRQHandler+0x2> @ imm = #-0x4

08055770 <SPI3_IRQHandler>:
; DEFAULT_IRQ_HANDLER(SPI3_IRQHandler)
 8055770: e7ff         	b	0x8055772 <SPI3_IRQHandler+0x2> @ imm = #-0x2
 8055772: e7fe         	b	0x8055772 <SPI3_IRQHandler+0x2> @ imm = #-0x4

08055774 <I2C4_ER_IRQHandler>:
; DEFAULT_IRQ_HANDLER(I2C4_ER_IRQHandler)
 8055774: e7ff         	b	0x8055776 <I2C4_ER_IRQHandler+0x2> @ imm = #-0x2
 8055776: e7fe         	b	0x8055776 <I2C4_ER_IRQHandler+0x2> @ imm = #-0x4

08055778 <I2C4_EV_IRQHandler>:
; DEFAULT_IRQ_HANDLER(I2C4_EV_IRQHandler)
 8055778: e7ff         	b	0x805577a <I2C4_EV_IRQHandler+0x2> @ imm = #-0x2
 805577a: e7fe         	b	0x805577a <I2C4_EV_IRQHandler+0x2> @ imm = #-0x4

0805577c <DFSDM1_FLT0_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DFSDM1_FLT0_IRQHandler)
 805577c: e7ff         	b	0x805577e <DFSDM1_FLT0_IRQHandler+0x2> @ imm = #-0x2
 805577e: e7fe         	b	0x805577e <DFSDM1_FLT0_IRQHandler+0x2> @ imm = #-0x4

08055780 <DFSDM1_FLT1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DFSDM1_FLT1_IRQHandler)
 8055780: e7ff         	b	0x8055782 <DFSDM1_FLT1_IRQHandler+0x2> @ imm = #-0x2
 8055782: e7fe         	b	0x8055782 <DFSDM1_FLT1_IRQHandler+0x2> @ imm = #-0x4

08055784 <DFSDM1_FLT2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DFSDM1_FLT2_IRQHandler)
 8055784: e7ff         	b	0x8055786 <DFSDM1_FLT2_IRQHandler+0x2> @ imm = #-0x2
 8055786: e7fe         	b	0x8055786 <DFSDM1_FLT2_IRQHandler+0x2> @ imm = #-0x4

08055788 <DFSDM1_FLT3_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DFSDM1_FLT3_IRQHandler)
 8055788: e7ff         	b	0x805578a <DFSDM1_FLT3_IRQHandler+0x2> @ imm = #-0x2
 805578a: e7fe         	b	0x805578a <DFSDM1_FLT3_IRQHandler+0x2> @ imm = #-0x4

0805578c <UCPD1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(UCPD1_IRQHandler)
 805578c: e7ff         	b	0x805578e <UCPD1_IRQHandler+0x2> @ imm = #-0x2
 805578e: e7fe         	b	0x805578e <UCPD1_IRQHandler+0x2> @ imm = #-0x4

08055790 <ICACHE_IRQHandler>:
; DEFAULT_IRQ_HANDLER(ICACHE_IRQHandler)
 8055790: e7ff         	b	0x8055792 <ICACHE_IRQHandler+0x2> @ imm = #-0x2
 8055792: e7fe         	b	0x8055792 <ICACHE_IRQHandler+0x2> @ imm = #-0x4

08055794 <OTFDEC1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(OTFDEC1_IRQHandler)
 8055794: e7ff         	b	0x8055796 <OTFDEC1_IRQHandler+0x2> @ imm = #-0x2
 8055796: e7fe         	b	0x8055796 <OTFDEC1_IRQHandler+0x2> @ imm = #-0x4

08055798 <Reset_Handler>:
; void Reset_Handler(void) {
 8055798: b580         	push	{r7, lr}
 805579a: 466f         	mov	r7, sp
 805579c: b088         	sub	sp, #0x20
 805579e: 482f         	ldr	r0, [pc, #0xbc]         @ 0x805585c <Reset_Handler+0xc4>
 80557a0: 4478         	add	r0, pc
 80557a2: 6800         	ldr	r0, [r0]
 80557a4: 9005         	str	r0, [sp, #0x14]
;   __ASM volatile("MSR msplim, %0" : : "r"(MainStackPtrLimit));
 80557a6: 9905         	ldr	r1, [sp, #0x14]
 80557a8: f381 880a    	msr	msplim, r1
 80557ac: 492c         	ldr	r1, [pc, #0xb0]         @ 0x8055860 <Reset_Handler+0xc8>
 80557ae: 4479         	add	r1, pc
 80557b0: 6809         	ldr	r1, [r1]
 80557b2: 9106         	str	r1, [sp, #0x18]
;   __ASM volatile("MSR psp, %0" : : "r"(topOfProcStack) :);
 80557b4: 9906         	ldr	r1, [sp, #0x18]
 80557b6: f381 8809    	msr	psp, r1
 80557ba: 9007         	str	r0, [sp, #0x1c]
;   __ASM volatile("MSR psplim, %0" : : "r"(ProcStackPtrLimit));
 80557bc: 9807         	ldr	r0, [sp, #0x1c]
 80557be: f380 880b    	msr	psplim, r0
;   SystemInit();      /* CMSIS System Initialization */
 80557c2: f7ff fd1d    	bl	0x8055200 <__unprivileged_flash_start__> @ imm = #-0x5c6
;   for (__copy_table_t const *pTable = &__copy_table_start__;
 80557c6: 4827         	ldr	r0, [pc, #0x9c]         @ 0x8055864 <Reset_Handler+0xcc>
 80557c8: 4478         	add	r0, pc
 80557ca: 6800         	ldr	r0, [r0]
 80557cc: 9004         	str	r0, [sp, #0x10]
 80557ce: e7ff         	b	0x80557d0 <Reset_Handler+0x38> @ imm = #-0x2
;        pTable < &__copy_table_end__; ++pTable) {
 80557d0: 9804         	ldr	r0, [sp, #0x10]
 80557d2: 4925         	ldr	r1, [pc, #0x94]         @ 0x8055868 <Reset_Handler+0xd0>
 80557d4: 4479         	add	r1, pc
 80557d6: 6809         	ldr	r1, [r1]
;   for (__copy_table_t const *pTable = &__copy_table_start__;
 80557d8: 4288         	cmp	r0, r1
 80557da: d219         	bhs	0x8055810 <Reset_Handler+0x78> @ imm = #0x32
 80557dc: e7ff         	b	0x80557de <Reset_Handler+0x46> @ imm = #-0x2
 80557de: 2000         	movs	r0, #0x0
;     for (uint32_t i = 0u; i < pTable->wlen; ++i) {
 80557e0: 9003         	str	r0, [sp, #0xc]
 80557e2: e7ff         	b	0x80557e4 <Reset_Handler+0x4c> @ imm = #-0x2
 80557e4: 9803         	ldr	r0, [sp, #0xc]
 80557e6: 9904         	ldr	r1, [sp, #0x10]
 80557e8: 6889         	ldr	r1, [r1, #0x8]
 80557ea: 4288         	cmp	r0, r1
 80557ec: d20c         	bhs	0x8055808 <Reset_Handler+0x70> @ imm = #0x18
 80557ee: e7ff         	b	0x80557f0 <Reset_Handler+0x58> @ imm = #-0x2
;       pTable->dest[i] = pTable->src[i];
 80557f0: 9904         	ldr	r1, [sp, #0x10]
 80557f2: 9a03         	ldr	r2, [sp, #0xc]
 80557f4: 6808         	ldr	r0, [r1]
 80557f6: 6849         	ldr	r1, [r1, #0x4]
 80557f8: f850 0022    	ldr.w	r0, [r0, r2, lsl #2]
 80557fc: f841 0022    	str.w	r0, [r1, r2, lsl #2]
;     for (uint32_t i = 0u; i < pTable->wlen; ++i) {
 8055800: 9803         	ldr	r0, [sp, #0xc]
 8055802: 3001         	adds	r0, #0x1
 8055804: 9003         	str	r0, [sp, #0xc]
 8055806: e7ed         	b	0x80557e4 <Reset_Handler+0x4c> @ imm = #-0x26
;        pTable < &__copy_table_end__; ++pTable) {
 8055808: 9804         	ldr	r0, [sp, #0x10]
 805580a: 300c         	adds	r0, #0xc
 805580c: 9004         	str	r0, [sp, #0x10]
;   for (__copy_table_t const *pTable = &__copy_table_start__;
 805580e: e7df         	b	0x80557d0 <Reset_Handler+0x38> @ imm = #-0x42
;   for (__zero_table_t const *pTable = &__zero_table_start__;
 8055810: 4816         	ldr	r0, [pc, #0x58]         @ 0x805586c <Reset_Handler+0xd4>
 8055812: 4478         	add	r0, pc
 8055814: 6800         	ldr	r0, [r0]
 8055816: 9002         	str	r0, [sp, #0x8]
 8055818: e7ff         	b	0x805581a <Reset_Handler+0x82> @ imm = #-0x2
;        pTable < &__zero_table_end__; ++pTable) {
 805581a: 9802         	ldr	r0, [sp, #0x8]
 805581c: 4914         	ldr	r1, [pc, #0x50]         @ 0x8055870 <Reset_Handler+0xd8>
 805581e: 4479         	add	r1, pc
 8055820: 6809         	ldr	r1, [r1]
;   for (__zero_table_t const *pTable = &__zero_table_start__;
 8055822: 4288         	cmp	r0, r1
 8055824: d217         	bhs	0x8055856 <Reset_Handler+0xbe> @ imm = #0x2e
 8055826: e7ff         	b	0x8055828 <Reset_Handler+0x90> @ imm = #-0x2
 8055828: 2000         	movs	r0, #0x0
;     for (uint32_t i = 0u; i < pTable->wlen; ++i) {
 805582a: 9001         	str	r0, [sp, #0x4]
 805582c: e7ff         	b	0x805582e <Reset_Handler+0x96> @ imm = #-0x2
 805582e: 9801         	ldr	r0, [sp, #0x4]
 8055830: 9902         	ldr	r1, [sp, #0x8]
 8055832: 6849         	ldr	r1, [r1, #0x4]
 8055834: 4288         	cmp	r0, r1
 8055836: d20a         	bhs	0x805584e <Reset_Handler+0xb6> @ imm = #0x14
 8055838: e7ff         	b	0x805583a <Reset_Handler+0xa2> @ imm = #-0x2
;       pTable->dest[i] = 0u;
 805583a: 9802         	ldr	r0, [sp, #0x8]
 805583c: 6801         	ldr	r1, [r0]
 805583e: 9a01         	ldr	r2, [sp, #0x4]
 8055840: 2000         	movs	r0, #0x0
 8055842: f841 0022    	str.w	r0, [r1, r2, lsl #2]
;     for (uint32_t i = 0u; i < pTable->wlen; ++i) {
 8055846: 9801         	ldr	r0, [sp, #0x4]
 8055848: 3001         	adds	r0, #0x1
 805584a: 9001         	str	r0, [sp, #0x4]
 805584c: e7ef         	b	0x805582e <Reset_Handler+0x96> @ imm = #-0x22
;        pTable < &__zero_table_end__; ++pTable) {
 805584e: 9802         	ldr	r0, [sp, #0x8]
 8055850: 3008         	adds	r0, #0x8
 8055852: 9002         	str	r0, [sp, #0x8]
;   for (__zero_table_t const *pTable = &__zero_table_start__;
 8055854: e7e1         	b	0x805581a <Reset_Handler+0x82> @ imm = #-0x3e
;   main();
 8055856: f000 f82b    	bl	0x80558b0 <main>        @ imm = #0x56
 805585a: bf00         	nop

0805585c <$d.118>:
 805585c: 74 a9 fa 17  	.word	0x17faa974
 8055860: 62 a9 fa 17  	.word	0x17faa962
 8055864: 3c a9 fa 17  	.word	0x17faa93c
 8055868: 48 a9 fa 17  	.word	0x17faa948
 805586c: fa a8 fa 17  	.word	0x17faa8fa
 8055870: ea a8 fa 17  	.word	0x17faa8ea

08055874 <spin_100000>:
; void spin_100000() {
 8055874: b081         	sub	sp, #0x4
 8055876: 2000         	movs	r0, #0x0
;   for (int i = 0; i < 100000; i++) {
 8055878: 9000         	str	r0, [sp]
 805587a: e7ff         	b	0x805587c <spin_100000+0x8> @ imm = #-0x2
 805587c: 9800         	ldr	r0, [sp]
 805587e: f248 619f    	movw	r1, #0x869f
 8055882: f2c0 0101    	movt	r1, #0x1
 8055886: 4288         	cmp	r0, r1
 8055888: dc06         	bgt	0x8055898 <spin_100000+0x24> @ imm = #0xc
 805588a: e7ff         	b	0x805588c <spin_100000+0x18> @ imm = #-0x2
;     __ASM volatile("nop");
 805588c: bf00         	nop
;   }
 805588e: e7ff         	b	0x8055890 <spin_100000+0x1c> @ imm = #-0x2
;   for (int i = 0; i < 100000; i++) {
 8055890: 9800         	ldr	r0, [sp]
 8055892: 3001         	adds	r0, #0x1
 8055894: 9000         	str	r0, [sp]
 8055896: e7f1         	b	0x805587c <spin_100000+0x8> @ imm = #-0x1e
; }
 8055898: b001         	add	sp, #0x4
 805589a: 4770         	bx	lr

0805589c <foo>:
; void foo() { a += 1; }
 805589c: 4803         	ldr	r0, [pc, #0xc]          @ 0x80558ac <foo+0x10>
 805589e: 4478         	add	r0, pc
 80558a0: 6801         	ldr	r1, [r0]
 80558a2: 6808         	ldr	r0, [r1]
 80558a4: 3001         	adds	r0, #0x1
 80558a6: 6008         	str	r0, [r1]
 80558a8: 4770         	bx	lr
 80558aa: bf00         	nop

080558ac <$d.6>:
 80558ac: 7a a8 fa 17  	.word	0x17faa87a

080558b0 <main>:
; int main() {
 80558b0: b580         	push	{r7, lr}
 80558b2: 466f         	mov	r7, sp
 80558b4: b082         	sub	sp, #0x8
 80558b6: 2000         	movs	r0, #0x0
 80558b8: 9001         	str	r0, [sp, #0x4]
;   foo();
 80558ba: f7ff ffef    	bl	0x805589c <foo>         @ imm = #-0x22
;   if (!entered) {
 80558be: 480e         	ldr	r0, [pc, #0x38]         @ 0x80558f8 <main+0x48>
 80558c0: 4478         	add	r0, pc
 80558c2: 6800         	ldr	r0, [r0]
 80558c4: b950         	cbnz	r0, 0x80558dc <main+0x2c> @ imm = #0x14
 80558c6: e7ff         	b	0x80558c8 <main+0x18>   @ imm = #-0x2
;     new_main();
 80558c8: 480c         	ldr	r0, [pc, #0x30]         @ 0x80558fc <main+0x4c>
 80558ca: 4478         	add	r0, pc
 80558cc: 6800         	ldr	r0, [r0]
 80558ce: 6800         	ldr	r0, [r0]
 80558d0: 4780         	blx	r0
;     entered = 1;
 80558d2: 490b         	ldr	r1, [pc, #0x2c]         @ 0x8055900 <main+0x50>
 80558d4: 4479         	add	r1, pc
 80558d6: 2001         	movs	r0, #0x1
 80558d8: 6008         	str	r0, [r1]
;   }
 80558da: e7ff         	b	0x80558dc <main+0x2c>   @ imm = #-0x2
;   MX_GPIO_Init();
 80558dc: f000 f812    	bl	0x8055904 <MX_GPIO_Init> @ imm = #0x24
;   while (1) {
 80558e0: e7ff         	b	0x80558e2 <main+0x32>   @ imm = #-0x2
 80558e2: f640 4000    	movw	r0, #0xc00
 80558e6: f2c4 2002    	movt	r0, #0x4202
 80558ea: 2108         	movs	r1, #0x8
;     HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_3);
 80558ec: f7ff fe57    	bl	0x805559e <HAL_GPIO_TogglePin> @ imm = #-0x352
;     spin_100000();
 80558f0: f7ff ffc0    	bl	0x8055874 <spin_100000> @ imm = #-0x80
;   while (1) {
 80558f4: e7f5         	b	0x80558e2 <main+0x32>   @ imm = #-0x16
 80558f6: bf00         	nop

080558f8 <$d.9>:
 80558f8: 70 a8 fa 17  	.word	0x17faa870
 80558fc: 36 a8 fa 17  	.word	0x17faa836
 8055900: 5c a8 fa 17  	.word	0x17faa85c

08055904 <MX_GPIO_Init>:
; static void MX_GPIO_Init(void) {
 8055904: b580         	push	{r7, lr}
 8055906: 466f         	mov	r7, sp
 8055908: b08a         	sub	sp, #0x28
 805590a: 2000         	movs	r0, #0x0
;   GPIO_InitTypeDef GPIO_InitStruct = {0};
 805590c: 9009         	str	r0, [sp, #0x24]
 805590e: 9008         	str	r0, [sp, #0x20]
 8055910: 9007         	str	r0, [sp, #0x1c]
 8055912: 9006         	str	r0, [sp, #0x18]
 8055914: 9005         	str	r0, [sp, #0x14]
;   __HAL_RCC_GPIOD_CLK_ENABLE();
 8055916: e7ff         	b	0x8055918 <MX_GPIO_Init+0x14> @ imm = #-0x2
 8055918: f241 004c    	movw	r0, #0x104c
 805591c: f2c4 0002    	movt	r0, #0x4002
;   __HAL_RCC_GPIOD_CLK_ENABLE();
 8055920: 6801         	ldr	r1, [r0]
 8055922: f041 0108    	orr	r1, r1, #0x8
 8055926: 6001         	str	r1, [r0]
 8055928: 6800         	ldr	r0, [r0]
 805592a: f000 0008    	and	r0, r0, #0x8
 805592e: 9004         	str	r0, [sp, #0x10]
 8055930: 9804         	ldr	r0, [sp, #0x10]
 8055932: e7ff         	b	0x8055934 <MX_GPIO_Init+0x30> @ imm = #-0x2
 8055934: f640 4000    	movw	r0, #0xc00
 8055938: f2c4 2002    	movt	r0, #0x4202
 805593c: 9003         	str	r0, [sp, #0xc]
 805593e: 2108         	movs	r1, #0x8
 8055940: 9101         	str	r1, [sp, #0x4]
 8055942: 2201         	movs	r2, #0x1
;   HAL_GPIO_WritePin(LED9_GPIO_Port, LED9_Pin, GPIO_PIN_SET);
 8055944: 9202         	str	r2, [sp, #0x8]
 8055946: f7ff fe14    	bl	0x8055572 <HAL_GPIO_WritePin> @ imm = #-0x3d8
 805594a: 9a01         	ldr	r2, [sp, #0x4]
 805594c: 9902         	ldr	r1, [sp, #0x8]
 805594e: 9803         	ldr	r0, [sp, #0xc]
;   GPIO_InitStruct.Pin = LED9_Pin;
 8055950: 9205         	str	r2, [sp, #0x14]
;   GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
 8055952: 9106         	str	r1, [sp, #0x18]
;   GPIO_InitStruct.Pull = GPIO_PULLUP;
 8055954: 9107         	str	r1, [sp, #0x1c]
 8055956: 2103         	movs	r1, #0x3
;   GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
 8055958: 9108         	str	r1, [sp, #0x20]
 805595a: a905         	add	r1, sp, #0x14
;   HAL_GPIO_Init(LED9_GPIO_Port, &GPIO_InitStruct);
 805595c: f7ff fc51    	bl	0x8055202 <HAL_GPIO_Init> @ imm = #-0x75e
; }
 8055960: b00a         	add	sp, #0x28
 8055962: bd80         	pop	{r7, pc}
		...
 805597c: 0000         	movs	r0, r0
 805597e: 0000         	movs	r0, r0

0805597f <__unprivileged_flash_end__>:
 805597f: 00           	<unknown>
