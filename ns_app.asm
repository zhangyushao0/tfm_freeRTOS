
ns_app.elf:	file format elf32-littlearm

Disassembly of section .text:

08055000 <__Vectors>:
 8055000: c0 11 00 20 8d 57 05 08         ... .W..
 8055008: b9 55 05 08 bd 55 05 08         .U...U..
 8055010: c1 55 05 08 c5 55 05 08         .U...U..
 8055018: c9 55 05 08 cd 55 05 08         .U...U..
 8055020: 00 00 00 00 00 00 00 00         ........
 8055028: 00 00 00 00 d1 55 05 08         .....U..
 8055030: d5 55 05 08 00 00 00 00         .U......
 8055038: d9 55 05 08 dd 55 05 08         .U...U..
 8055040: e1 55 05 08 e5 55 05 08         .U...U..
 8055048: e9 55 05 08 ed 55 05 08         .U...U..
 8055050: f1 55 05 08 f5 55 05 08         .U...U..
 8055058: f9 55 05 08 fd 55 05 08         .U...U..
 8055060: 01 56 05 08 05 56 05 08         .V...V..
 8055068: 09 56 05 08 0d 56 05 08         .V...V..
 8055070: 11 56 05 08 15 56 05 08         .V...V..
 8055078: 19 56 05 08 1d 56 05 08         .V...V..
 8055080: 21 56 05 08 25 56 05 08         !V..%V..
 8055088: 29 56 05 08 2d 56 05 08         )V..-V..
 8055090: 31 56 05 08 35 56 05 08         1V..5V..
 8055098: 39 56 05 08 3d 56 05 08         9V..=V..
 80550a0: 41 56 05 08 45 56 05 08         AV..EV..
 80550a8: 49 56 05 08 4d 56 05 08         IV..MV..
 80550b0: 51 56 05 08 55 56 05 08         QV..UV..
 80550b8: 59 56 05 08 5d 56 05 08         YV..]V..
 80550c0: 61 56 05 08 65 56 05 08         aV..eV..
 80550c8: 69 56 05 08 6d 56 05 08         iV..mV..
 80550d0: 71 56 05 08 75 56 05 08         qV..uV..
 80550d8: 79 56 05 08 7d 56 05 08         yV..}V..
 80550e0: 81 56 05 08 85 56 05 08         .V...V..
 80550e8: 89 56 05 08 8d 56 05 08         .V...V..
 80550f0: 91 56 05 08 95 56 05 08         .V...V..
 80550f8: 99 56 05 08 9d 56 05 08         .V...V..
 8055100: a1 56 05 08 a5 56 05 08         .V...V..
 8055108: a9 56 05 08 ad 56 05 08         .V...V..
 8055110: b1 56 05 08 b5 56 05 08         .V...V..
 8055118: b9 56 05 08 bd 56 05 08         .V...V..
 8055120: c1 56 05 08 c5 56 05 08         .V...V..
 8055128: c9 56 05 08 cd 56 05 08         .V...V..
 8055130: d1 56 05 08 d5 56 05 08         .V...V..
 8055138: d9 56 05 08 dd 56 05 08         .V...V..
 8055140: e1 56 05 08 e5 56 05 08         .V...V..
 8055148: e9 56 05 08 ed 56 05 08         .V...V..
 8055150: f1 56 05 08 f5 56 05 08         .V...V..
 8055158: f9 56 05 08 fd 56 05 08         .V...V..
 8055160: 01 57 05 08 05 57 05 08         .W...W..
 8055168: 09 57 05 08 0d 57 05 08         .W...W..
 8055170: 11 57 05 08 00 00 00 00         .W......
 8055178: 15 57 05 08 00 00 00 00         .W......
 8055180: 19 57 05 08 1d 57 05 08         .W...W..
 8055188: 21 57 05 08 25 57 05 08         !W..%W..
 8055190: 29 57 05 08 2d 57 05 08         )W..-W..
 8055198: 31 57 05 08 35 57 05 08         1W..5W..
 80551a0: 39 57 05 08 3d 57 05 08         9W..=W..
 80551a8: 41 57 05 08 45 57 05 08         AW..EW..
 80551b0: 49 57 05 08 4d 57 05 08         IW..MW..
 80551b8: 51 57 05 08 55 57 05 08         QW..UW..
 80551c0: 59 57 05 08 5d 57 05 08         YW..]W..
 80551c8: 61 57 05 08 65 57 05 08         aW..eW..
 80551d0: 69 57 05 08 6d 57 05 08         iW..mW..
 80551d8: 71 57 05 08 75 57 05 08         qW..uW..
 80551e0: 79 57 05 08 7d 57 05 08         yW..}W..
 80551e8: 81 57 05 08 85 57 05 08         .W...W..
 80551f0: 89 57 05 08                     .W..

080551f4 <__Vectors_Size>:
 80551f4: 70 47        	bx	lr

080551f6 <HAL_GPIO_Init>:
 80551f6: 8b b0        	sub	sp, #44
 80551f8: 0a 90        	str	r0, [sp, #40]
 80551fa: 09 91        	str	r1, [sp, #36]
 80551fc: 00 20        	movs	r0, #0
 80551fe: 08 90        	str	r0, [sp, #32]
 8055200: ff e7        	b	0x8055202 <HAL_GPIO_Init+0xc> @ imm = #-2
 8055202: 09 98        	ldr	r0, [sp, #36]
 8055204: 00 68        	ldr	r0, [r0]
 8055206: 08 99        	ldr	r1, [sp, #32]
 8055208: c8 40        	lsrs	r0, r1
 805520a: 00 28        	cmp	r0, #0
 805520c: 00 f0 a9 81  	beq.w	0x8055562 <HAL_GPIO_Init+0x36c> @ imm = #850
 8055210: ff e7        	b	0x8055212 <HAL_GPIO_Init+0x1c> @ imm = #-2
 8055212: 09 98        	ldr	r0, [sp, #36]
 8055214: 00 68        	ldr	r0, [r0]
 8055216: 08 9a        	ldr	r2, [sp, #32]
 8055218: 01 21        	movs	r1, #1
 805521a: 91 40        	lsls	r1, r2
 805521c: 08 40        	ands	r0, r1
 805521e: 07 90        	str	r0, [sp, #28]
 8055220: 07 98        	ldr	r0, [sp, #28]
 8055222: 00 28        	cmp	r0, #0
 8055224: 00 f0 99 81  	beq.w	0x805555a <HAL_GPIO_Init+0x364> @ imm = #818
 8055228: ff e7        	b	0x805522a <HAL_GPIO_Init+0x34> @ imm = #-2
 805522a: 09 98        	ldr	r0, [sp, #36]
 805522c: 40 68        	ldr	r0, [r0, #4]
 805522e: 01 28        	cmp	r0, #1
 8055230: 0f d0        	beq	0x8055252 <HAL_GPIO_Init+0x5c> @ imm = #30
 8055232: ff e7        	b	0x8055234 <HAL_GPIO_Init+0x3e> @ imm = #-2
 8055234: 09 98        	ldr	r0, [sp, #36]
 8055236: 40 68        	ldr	r0, [r0, #4]
 8055238: 02 28        	cmp	r0, #2
 805523a: 0a d0        	beq	0x8055252 <HAL_GPIO_Init+0x5c> @ imm = #20
 805523c: ff e7        	b	0x805523e <HAL_GPIO_Init+0x48> @ imm = #-2
 805523e: 09 98        	ldr	r0, [sp, #36]
 8055240: 40 68        	ldr	r0, [r0, #4]
 8055242: 11 28        	cmp	r0, #17
 8055244: 05 d0        	beq	0x8055252 <HAL_GPIO_Init+0x5c> @ imm = #10
 8055246: ff e7        	b	0x8055248 <HAL_GPIO_Init+0x52> @ imm = #-2
 8055248: 09 98        	ldr	r0, [sp, #36]
 805524a: 40 68        	ldr	r0, [r0, #4]
 805524c: 12 28        	cmp	r0, #18
 805524e: 2f d1        	bne	0x80552b0 <HAL_GPIO_Init+0xba> @ imm = #94
 8055250: ff e7        	b	0x8055252 <HAL_GPIO_Init+0x5c> @ imm = #-2
 8055252: 0a 98        	ldr	r0, [sp, #40]
 8055254: 80 68        	ldr	r0, [r0, #8]
 8055256: 06 90        	str	r0, [sp, #24]
 8055258: 08 98        	ldr	r0, [sp, #32]
 805525a: 41 00        	lsls	r1, r0, #1
 805525c: 03 20        	movs	r0, #3
 805525e: 00 fa 01 f1  	lsl.w	r1, r0, r1
 8055262: 06 98        	ldr	r0, [sp, #24]
 8055264: 88 43        	bics	r0, r1
 8055266: 06 90        	str	r0, [sp, #24]
 8055268: 09 98        	ldr	r0, [sp, #36]
 805526a: c0 68        	ldr	r0, [r0, #12]
 805526c: 08 99        	ldr	r1, [sp, #32]
 805526e: 49 00        	lsls	r1, r1, #1
 8055270: 00 fa 01 f1  	lsl.w	r1, r0, r1
 8055274: 06 98        	ldr	r0, [sp, #24]
 8055276: 08 43        	orrs	r0, r1
 8055278: 06 90        	str	r0, [sp, #24]
 805527a: 06 98        	ldr	r0, [sp, #24]
 805527c: 0a 99        	ldr	r1, [sp, #40]
 805527e: 88 60        	str	r0, [r1, #8]
 8055280: 0a 98        	ldr	r0, [sp, #40]
 8055282: 40 68        	ldr	r0, [r0, #4]
 8055284: 06 90        	str	r0, [sp, #24]
 8055286: 08 99        	ldr	r1, [sp, #32]
 8055288: 01 20        	movs	r0, #1
 805528a: 00 fa 01 f1  	lsl.w	r1, r0, r1
 805528e: 06 98        	ldr	r0, [sp, #24]
 8055290: 88 43        	bics	r0, r1
 8055292: 06 90        	str	r0, [sp, #24]
 8055294: 09 98        	ldr	r0, [sp, #36]
 8055296: 40 68        	ldr	r0, [r0, #4]
 8055298: c0 f3 00 10  	ubfx	r0, r0, #4, #1
 805529c: 08 99        	ldr	r1, [sp, #32]
 805529e: 00 fa 01 f1  	lsl.w	r1, r0, r1
 80552a2: 06 98        	ldr	r0, [sp, #24]
 80552a4: 08 43        	orrs	r0, r1
 80552a6: 06 90        	str	r0, [sp, #24]
 80552a8: 06 98        	ldr	r0, [sp, #24]
 80552aa: 0a 99        	ldr	r1, [sp, #40]
 80552ac: 48 60        	str	r0, [r1, #4]
 80552ae: ff e7        	b	0x80552b0 <HAL_GPIO_Init+0xba> @ imm = #-2
 80552b0: 0a 98        	ldr	r0, [sp, #40]
 80552b2: c0 68        	ldr	r0, [r0, #12]
 80552b4: 06 90        	str	r0, [sp, #24]
 80552b6: 08 98        	ldr	r0, [sp, #32]
 80552b8: 41 00        	lsls	r1, r0, #1
 80552ba: 03 20        	movs	r0, #3
 80552bc: 00 fa 01 f1  	lsl.w	r1, r0, r1
 80552c0: 06 98        	ldr	r0, [sp, #24]
 80552c2: 88 43        	bics	r0, r1
 80552c4: 06 90        	str	r0, [sp, #24]
 80552c6: 09 98        	ldr	r0, [sp, #36]
 80552c8: 80 68        	ldr	r0, [r0, #8]
 80552ca: 08 99        	ldr	r1, [sp, #32]
 80552cc: 49 00        	lsls	r1, r1, #1
 80552ce: 00 fa 01 f1  	lsl.w	r1, r0, r1
 80552d2: 06 98        	ldr	r0, [sp, #24]
 80552d4: 08 43        	orrs	r0, r1
 80552d6: 06 90        	str	r0, [sp, #24]
 80552d8: 06 98        	ldr	r0, [sp, #24]
 80552da: 0a 99        	ldr	r1, [sp, #40]
 80552dc: c8 60        	str	r0, [r1, #12]
 80552de: 09 98        	ldr	r0, [sp, #36]
 80552e0: 40 68        	ldr	r0, [r0, #4]
 80552e2: 02 28        	cmp	r0, #2
 80552e4: 05 d0        	beq	0x80552f2 <HAL_GPIO_Init+0xfc> @ imm = #10
 80552e6: ff e7        	b	0x80552e8 <HAL_GPIO_Init+0xf2> @ imm = #-2
 80552e8: 09 98        	ldr	r0, [sp, #36]
 80552ea: 40 68        	ldr	r0, [r0, #4]
 80552ec: 12 28        	cmp	r0, #18
 80552ee: 26 d1        	bne	0x805533e <HAL_GPIO_Init+0x148> @ imm = #76
 80552f0: ff e7        	b	0x80552f2 <HAL_GPIO_Init+0xfc> @ imm = #-2
 80552f2: 0a 98        	ldr	r0, [sp, #40]
 80552f4: 08 99        	ldr	r1, [sp, #32]
 80552f6: 6f f0 03 02  	mvn	r2, #3
 80552fa: 02 ea 51 01  	and.w	r1, r2, r1, lsr #1
 80552fe: 08 44        	add	r0, r1
 8055300: 00 6a        	ldr	r0, [r0, #32]
 8055302: 06 90        	str	r0, [sp, #24]
 8055304: 08 98        	ldr	r0, [sp, #32]
 8055306: 00 f0 07 00  	and	r0, r0, #7
 805530a: 81 00        	lsls	r1, r0, #2
 805530c: 0f 20        	movs	r0, #15
 805530e: 00 fa 01 f1  	lsl.w	r1, r0, r1
 8055312: 06 98        	ldr	r0, [sp, #24]
 8055314: 88 43        	bics	r0, r1
 8055316: 06 90        	str	r0, [sp, #24]
 8055318: 09 98        	ldr	r0, [sp, #36]
 805531a: 00 69        	ldr	r0, [r0, #16]
 805531c: 08 99        	ldr	r1, [sp, #32]
 805531e: 01 f0 07 01  	and	r1, r1, #7
 8055322: 89 00        	lsls	r1, r1, #2
 8055324: 00 fa 01 f1  	lsl.w	r1, r0, r1
 8055328: 06 98        	ldr	r0, [sp, #24]
 805532a: 08 43        	orrs	r0, r1
 805532c: 06 90        	str	r0, [sp, #24]
 805532e: 06 98        	ldr	r0, [sp, #24]
 8055330: 0a 99        	ldr	r1, [sp, #40]
 8055332: 08 9b        	ldr	r3, [sp, #32]
 8055334: 02 ea 53 02  	and.w	r2, r2, r3, lsr #1
 8055338: 11 44        	add	r1, r2
 805533a: 08 62        	str	r0, [r1, #32]
 805533c: ff e7        	b	0x805533e <HAL_GPIO_Init+0x148> @ imm = #-2
 805533e: 0a 98        	ldr	r0, [sp, #40]
 8055340: 00 68        	ldr	r0, [r0]
 8055342: 06 90        	str	r0, [sp, #24]
 8055344: 08 98        	ldr	r0, [sp, #32]
 8055346: 41 00        	lsls	r1, r0, #1
 8055348: 03 20        	movs	r0, #3
 805534a: 00 fa 01 f1  	lsl.w	r1, r0, r1
 805534e: 06 98        	ldr	r0, [sp, #24]
 8055350: 88 43        	bics	r0, r1
 8055352: 06 90        	str	r0, [sp, #24]
 8055354: 09 98        	ldr	r0, [sp, #36]
 8055356: 40 68        	ldr	r0, [r0, #4]
 8055358: 00 f0 03 00  	and	r0, r0, #3
 805535c: 08 99        	ldr	r1, [sp, #32]
 805535e: 49 00        	lsls	r1, r1, #1
 8055360: 00 fa 01 f1  	lsl.w	r1, r0, r1
 8055364: 06 98        	ldr	r0, [sp, #24]
 8055366: 08 43        	orrs	r0, r1
 8055368: 06 90        	str	r0, [sp, #24]
 805536a: 06 98        	ldr	r0, [sp, #24]
 805536c: 0a 99        	ldr	r1, [sp, #40]
 805536e: 08 60        	str	r0, [r1]
 8055370: 09 98        	ldr	r0, [sp, #36]
 8055372: c0 79        	ldrb	r0, [r0, #7]
 8055374: c0 06        	lsls	r0, r0, #27
 8055376: 00 28        	cmp	r0, #0
 8055378: 40 f1 ee 80  	bpl.w	0x8055558 <HAL_GPIO_Init+0x362> @ imm = #476
 805537c: ff e7        	b	0x805537e <HAL_GPIO_Init+0x188> @ imm = #-2
 805537e: 08 98        	ldr	r0, [sp, #32]
 8055380: 20 f0 03 00  	bic	r0, r0, #3
 8055384: 4f f2 60 41  	movw	r1, #62560
 8055388: c4 f2 02 01  	movt	r1, #16386
 805538c: 40 58        	ldr	r0, [r0, r1]
 805538e: 06 90        	str	r0, [sp, #24]
 8055390: 08 98        	ldr	r0, [sp, #32]
 8055392: 00 f0 03 00  	and	r0, r0, #3
 8055396: c1 00        	lsls	r1, r0, #3
 8055398: 0f 20        	movs	r0, #15
 805539a: 00 fa 01 f1  	lsl.w	r1, r0, r1
 805539e: 06 98        	ldr	r0, [sp, #24]
 80553a0: 88 43        	bics	r0, r1
 80553a2: 06 90        	str	r0, [sp, #24]
 80553a4: 0a 98        	ldr	r0, [sp, #40]
 80553a6: 00 21        	movs	r1, #0
 80553a8: c4 f2 02 21  	movt	r1, #16898
 80553ac: 88 42        	cmp	r0, r1
 80553ae: 03 d1        	bne	0x80553b8 <HAL_GPIO_Init+0x1c2> @ imm = #6
 80553b0: ff e7        	b	0x80553b2 <HAL_GPIO_Init+0x1bc> @ imm = #-2
 80553b2: 00 20        	movs	r0, #0
 80553b4: 05 90        	str	r0, [sp, #20]
 80553b6: 50 e0        	b	0x805545a <HAL_GPIO_Init+0x264> @ imm = #160
 80553b8: 0a 98        	ldr	r0, [sp, #40]
 80553ba: 40 f2 00 41  	movw	r1, #1024
 80553be: c4 f2 02 21  	movt	r1, #16898
 80553c2: 88 42        	cmp	r0, r1
 80553c4: 03 d1        	bne	0x80553ce <HAL_GPIO_Init+0x1d8> @ imm = #6
 80553c6: ff e7        	b	0x80553c8 <HAL_GPIO_Init+0x1d2> @ imm = #-2
 80553c8: 01 20        	movs	r0, #1
 80553ca: 04 90        	str	r0, [sp, #16]
 80553cc: 42 e0        	b	0x8055454 <HAL_GPIO_Init+0x25e> @ imm = #132
 80553ce: 0a 98        	ldr	r0, [sp, #40]
 80553d0: 40 f6 00 01  	movw	r1, #2048
 80553d4: c4 f2 02 21  	movt	r1, #16898
 80553d8: 88 42        	cmp	r0, r1
 80553da: 03 d1        	bne	0x80553e4 <HAL_GPIO_Init+0x1ee> @ imm = #6
 80553dc: ff e7        	b	0x80553de <HAL_GPIO_Init+0x1e8> @ imm = #-2
 80553de: 02 20        	movs	r0, #2
 80553e0: 03 90        	str	r0, [sp, #12]
 80553e2: 34 e0        	b	0x805544e <HAL_GPIO_Init+0x258> @ imm = #104
 80553e4: 0a 98        	ldr	r0, [sp, #40]
 80553e6: 40 f6 00 41  	movw	r1, #3072
 80553ea: c4 f2 02 21  	movt	r1, #16898
 80553ee: 88 42        	cmp	r0, r1
 80553f0: 03 d1        	bne	0x80553fa <HAL_GPIO_Init+0x204> @ imm = #6
 80553f2: ff e7        	b	0x80553f4 <HAL_GPIO_Init+0x1fe> @ imm = #-2
 80553f4: 03 20        	movs	r0, #3
 80553f6: 02 90        	str	r0, [sp, #8]
 80553f8: 26 e0        	b	0x8055448 <HAL_GPIO_Init+0x252> @ imm = #76
 80553fa: 0a 98        	ldr	r0, [sp, #40]
 80553fc: 41 f2 00 01  	movw	r1, #4096
 8055400: c4 f2 02 21  	movt	r1, #16898
 8055404: 88 42        	cmp	r0, r1
 8055406: 03 d1        	bne	0x8055410 <HAL_GPIO_Init+0x21a> @ imm = #6
 8055408: ff e7        	b	0x805540a <HAL_GPIO_Init+0x214> @ imm = #-2
 805540a: 04 20        	movs	r0, #4
 805540c: 01 90        	str	r0, [sp, #4]
 805540e: 18 e0        	b	0x8055442 <HAL_GPIO_Init+0x24c> @ imm = #48
 8055410: 0a 98        	ldr	r0, [sp, #40]
 8055412: 41 f2 00 41  	movw	r1, #5120
 8055416: c4 f2 02 21  	movt	r1, #16898
 805541a: 88 42        	cmp	r0, r1
 805541c: 03 d1        	bne	0x8055426 <HAL_GPIO_Init+0x230> @ imm = #6
 805541e: ff e7        	b	0x8055420 <HAL_GPIO_Init+0x22a> @ imm = #-2
 8055420: 05 20        	movs	r0, #5
 8055422: 00 90        	str	r0, [sp]
 8055424: 0a e0        	b	0x805543c <HAL_GPIO_Init+0x246> @ imm = #20
 8055426: 0a 99        	ldr	r1, [sp, #40]
 8055428: 41 f6 00 02  	movw	r2, #6144
 805542c: c4 f2 02 22  	movt	r2, #16898
 8055430: 07 20        	movs	r0, #7
 8055432: 91 42        	cmp	r1, r2
 8055434: 08 bf        	it	eq
 8055436: 06 20        	moveq	r0, #6
 8055438: 00 90        	str	r0, [sp]
 805543a: ff e7        	b	0x805543c <HAL_GPIO_Init+0x246> @ imm = #-2
 805543c: 00 98        	ldr	r0, [sp]
 805543e: 01 90        	str	r0, [sp, #4]
 8055440: ff e7        	b	0x8055442 <HAL_GPIO_Init+0x24c> @ imm = #-2
 8055442: 01 98        	ldr	r0, [sp, #4]
 8055444: 02 90        	str	r0, [sp, #8]
 8055446: ff e7        	b	0x8055448 <HAL_GPIO_Init+0x252> @ imm = #-2
 8055448: 02 98        	ldr	r0, [sp, #8]
 805544a: 03 90        	str	r0, [sp, #12]
 805544c: ff e7        	b	0x805544e <HAL_GPIO_Init+0x258> @ imm = #-2
 805544e: 03 98        	ldr	r0, [sp, #12]
 8055450: 04 90        	str	r0, [sp, #16]
 8055452: ff e7        	b	0x8055454 <HAL_GPIO_Init+0x25e> @ imm = #-2
 8055454: 04 98        	ldr	r0, [sp, #16]
 8055456: 05 90        	str	r0, [sp, #20]
 8055458: ff e7        	b	0x805545a <HAL_GPIO_Init+0x264> @ imm = #-2
 805545a: 05 98        	ldr	r0, [sp, #20]
 805545c: 08 99        	ldr	r1, [sp, #32]
 805545e: 01 f0 03 01  	and	r1, r1, #3
 8055462: c9 00        	lsls	r1, r1, #3
 8055464: 00 fa 01 f1  	lsl.w	r1, r0, r1
 8055468: 06 98        	ldr	r0, [sp, #24]
 805546a: 08 43        	orrs	r0, r1
 805546c: 06 90        	str	r0, [sp, #24]
 805546e: 06 98        	ldr	r0, [sp, #24]
 8055470: 08 99        	ldr	r1, [sp, #32]
 8055472: 21 f0 03 01  	bic	r1, r1, #3
 8055476: 4f f2 60 42  	movw	r2, #62560
 805547a: c4 f2 02 02  	movt	r2, #16386
 805547e: 88 50        	str	r0, [r1, r2]
 8055480: 4f f2 80 40  	movw	r0, #62592
 8055484: c4 f2 02 00  	movt	r0, #16386
 8055488: 00 68        	ldr	r0, [r0]
 805548a: 06 90        	str	r0, [sp, #24]
 805548c: 07 99        	ldr	r1, [sp, #28]
 805548e: 06 98        	ldr	r0, [sp, #24]
 8055490: 88 43        	bics	r0, r1
 8055492: 06 90        	str	r0, [sp, #24]
 8055494: 09 98        	ldr	r0, [sp, #36]
 8055496: 80 79        	ldrb	r0, [r0, #6]
 8055498: c0 07        	lsls	r0, r0, #31
 805549a: 28 b1        	cbz	r0, 0x80554a8 <HAL_GPIO_Init+0x2b2> @ imm = #10
 805549c: ff e7        	b	0x805549e <HAL_GPIO_Init+0x2a8> @ imm = #-2
 805549e: 07 99        	ldr	r1, [sp, #28]
 80554a0: 06 98        	ldr	r0, [sp, #24]
 80554a2: 08 43        	orrs	r0, r1
 80554a4: 06 90        	str	r0, [sp, #24]
 80554a6: ff e7        	b	0x80554a8 <HAL_GPIO_Init+0x2b2> @ imm = #-2
 80554a8: 06 98        	ldr	r0, [sp, #24]
 80554aa: 4f f2 80 41  	movw	r1, #62592
 80554ae: c4 f2 02 01  	movt	r1, #16386
 80554b2: 08 60        	str	r0, [r1]
 80554b4: 4f f2 84 40  	movw	r0, #62596
 80554b8: c4 f2 02 00  	movt	r0, #16386
 80554bc: 00 68        	ldr	r0, [r0]
 80554be: 06 90        	str	r0, [sp, #24]
 80554c0: 07 99        	ldr	r1, [sp, #28]
 80554c2: 06 98        	ldr	r0, [sp, #24]
 80554c4: 88 43        	bics	r0, r1
 80554c6: 06 90        	str	r0, [sp, #24]
 80554c8: 09 98        	ldr	r0, [sp, #36]
 80554ca: 80 79        	ldrb	r0, [r0, #6]
 80554cc: 80 07        	lsls	r0, r0, #30
 80554ce: 00 28        	cmp	r0, #0
 80554d0: 05 d5        	bpl	0x80554de <HAL_GPIO_Init+0x2e8> @ imm = #10
 80554d2: ff e7        	b	0x80554d4 <HAL_GPIO_Init+0x2de> @ imm = #-2
 80554d4: 07 99        	ldr	r1, [sp, #28]
 80554d6: 06 98        	ldr	r0, [sp, #24]
 80554d8: 08 43        	orrs	r0, r1
 80554da: 06 90        	str	r0, [sp, #24]
 80554dc: ff e7        	b	0x80554de <HAL_GPIO_Init+0x2e8> @ imm = #-2
 80554de: 06 98        	ldr	r0, [sp, #24]
 80554e0: 4f f2 84 41  	movw	r1, #62596
 80554e4: c4 f2 02 01  	movt	r1, #16386
 80554e8: 08 60        	str	r0, [r1]
 80554ea: 4f f2 00 40  	movw	r0, #62464
 80554ee: c4 f2 02 00  	movt	r0, #16386
 80554f2: 00 68        	ldr	r0, [r0]
 80554f4: 06 90        	str	r0, [sp, #24]
 80554f6: 07 99        	ldr	r1, [sp, #28]
 80554f8: 06 98        	ldr	r0, [sp, #24]
 80554fa: 88 43        	bics	r0, r1
 80554fc: 06 90        	str	r0, [sp, #24]
 80554fe: 09 98        	ldr	r0, [sp, #36]
 8055500: 80 79        	ldrb	r0, [r0, #6]
 8055502: c0 06        	lsls	r0, r0, #27
 8055504: 00 28        	cmp	r0, #0
 8055506: 05 d5        	bpl	0x8055514 <HAL_GPIO_Init+0x31e> @ imm = #10
 8055508: ff e7        	b	0x805550a <HAL_GPIO_Init+0x314> @ imm = #-2
 805550a: 07 99        	ldr	r1, [sp, #28]
 805550c: 06 98        	ldr	r0, [sp, #24]
 805550e: 08 43        	orrs	r0, r1
 8055510: 06 90        	str	r0, [sp, #24]
 8055512: ff e7        	b	0x8055514 <HAL_GPIO_Init+0x31e> @ imm = #-2
 8055514: 06 98        	ldr	r0, [sp, #24]
 8055516: 4f f2 00 41  	movw	r1, #62464
 805551a: c4 f2 02 01  	movt	r1, #16386
 805551e: 08 60        	str	r0, [r1]
 8055520: 4f f2 04 40  	movw	r0, #62468
 8055524: c4 f2 02 00  	movt	r0, #16386
 8055528: 00 68        	ldr	r0, [r0]
 805552a: 06 90        	str	r0, [sp, #24]
 805552c: 07 99        	ldr	r1, [sp, #28]
 805552e: 06 98        	ldr	r0, [sp, #24]
 8055530: 88 43        	bics	r0, r1
 8055532: 06 90        	str	r0, [sp, #24]
 8055534: 09 98        	ldr	r0, [sp, #36]
 8055536: 80 79        	ldrb	r0, [r0, #6]
 8055538: 80 06        	lsls	r0, r0, #26
 805553a: 00 28        	cmp	r0, #0
 805553c: 05 d5        	bpl	0x805554a <HAL_GPIO_Init+0x354> @ imm = #10
 805553e: ff e7        	b	0x8055540 <HAL_GPIO_Init+0x34a> @ imm = #-2
 8055540: 07 99        	ldr	r1, [sp, #28]
 8055542: 06 98        	ldr	r0, [sp, #24]
 8055544: 08 43        	orrs	r0, r1
 8055546: 06 90        	str	r0, [sp, #24]
 8055548: ff e7        	b	0x805554a <HAL_GPIO_Init+0x354> @ imm = #-2
 805554a: 06 98        	ldr	r0, [sp, #24]
 805554c: 4f f2 04 41  	movw	r1, #62468
 8055550: c4 f2 02 01  	movt	r1, #16386
 8055554: 08 60        	str	r0, [r1]
 8055556: ff e7        	b	0x8055558 <HAL_GPIO_Init+0x362> @ imm = #-2
 8055558: ff e7        	b	0x805555a <HAL_GPIO_Init+0x364> @ imm = #-2
 805555a: 08 98        	ldr	r0, [sp, #32]
 805555c: 01 30        	adds	r0, #1
 805555e: 08 90        	str	r0, [sp, #32]
 8055560: 4f e6        	b	0x8055202 <HAL_GPIO_Init+0xc> @ imm = #-866
 8055562: 0b b0        	add	sp, #44
 8055564: 70 47        	bx	lr

08055566 <HAL_GPIO_WritePin>:
 8055566: 82 b0        	sub	sp, #8
 8055568: 01 90        	str	r0, [sp, #4]
 805556a: ad f8 02 10  	strh.w	r1, [sp, #2]
 805556e: 8d f8 01 20  	strb.w	r2, [sp, #1]
 8055572: 9d f8 01 00  	ldrb.w	r0, [sp, #1]
 8055576: 28 b1        	cbz	r0, 0x8055584 <HAL_GPIO_WritePin+0x1e> @ imm = #10
 8055578: ff e7        	b	0x805557a <HAL_GPIO_WritePin+0x14> @ imm = #-2
 805557a: bd f8 02 00  	ldrh.w	r0, [sp, #2]
 805557e: 01 99        	ldr	r1, [sp, #4]
 8055580: 88 61        	str	r0, [r1, #24]
 8055582: 04 e0        	b	0x805558e <HAL_GPIO_WritePin+0x28> @ imm = #8
 8055584: bd f8 02 00  	ldrh.w	r0, [sp, #2]
 8055588: 01 99        	ldr	r1, [sp, #4]
 805558a: 88 62        	str	r0, [r1, #40]
 805558c: ff e7        	b	0x805558e <HAL_GPIO_WritePin+0x28> @ imm = #-2
 805558e: 02 b0        	add	sp, #8
 8055590: 70 47        	bx	lr

08055592 <HAL_GPIO_TogglePin>:
 8055592: 83 b0        	sub	sp, #12
 8055594: 02 90        	str	r0, [sp, #8]
 8055596: ad f8 06 10  	strh.w	r1, [sp, #6]
 805559a: 02 98        	ldr	r0, [sp, #8]
 805559c: 40 69        	ldr	r0, [r0, #20]
 805559e: 00 90        	str	r0, [sp]
 80555a0: 00 9a        	ldr	r2, [sp]
 80555a2: bd f8 06 00  	ldrh.w	r0, [sp, #6]
 80555a6: 02 ea 00 01  	and.w	r1, r2, r0
 80555aa: 90 43        	bics	r0, r2
 80555ac: 40 ea 01 40  	orr.w	r0, r0, r1, lsl #16
 80555b0: 02 99        	ldr	r1, [sp, #8]
 80555b2: 88 61        	str	r0, [r1, #24]
 80555b4: 03 b0        	add	sp, #12
 80555b6: 70 47        	bx	lr

080555b8 <NMI_Handler>:
 80555b8: ff e7        	b	0x80555ba <NMI_Handler+0x2> @ imm = #-2
 80555ba: fe e7        	b	0x80555ba <NMI_Handler+0x2> @ imm = #-4

080555bc <HardFault_Handler>:
 80555bc: ff e7        	b	0x80555be <HardFault_Handler+0x2> @ imm = #-2
 80555be: fe e7        	b	0x80555be <HardFault_Handler+0x2> @ imm = #-4

080555c0 <MemManage_Handler>:
 80555c0: ff e7        	b	0x80555c2 <MemManage_Handler+0x2> @ imm = #-2
 80555c2: fe e7        	b	0x80555c2 <MemManage_Handler+0x2> @ imm = #-4

080555c4 <BusFault_Handler>:
 80555c4: ff e7        	b	0x80555c6 <BusFault_Handler+0x2> @ imm = #-2
 80555c6: fe e7        	b	0x80555c6 <BusFault_Handler+0x2> @ imm = #-4

080555c8 <UsageFault_Handler>:
 80555c8: ff e7        	b	0x80555ca <UsageFault_Handler+0x2> @ imm = #-2
 80555ca: fe e7        	b	0x80555ca <UsageFault_Handler+0x2> @ imm = #-4

080555cc <SecureFault_Handler>:
 80555cc: ff e7        	b	0x80555ce <SecureFault_Handler+0x2> @ imm = #-2
 80555ce: fe e7        	b	0x80555ce <SecureFault_Handler+0x2> @ imm = #-4

080555d0 <SVC_Handler>:
 80555d0: ff e7        	b	0x80555d2 <SVC_Handler+0x2> @ imm = #-2
 80555d2: fe e7        	b	0x80555d2 <SVC_Handler+0x2> @ imm = #-4

080555d4 <DebugMon_Handler>:
 80555d4: ff e7        	b	0x80555d6 <DebugMon_Handler+0x2> @ imm = #-2
 80555d6: fe e7        	b	0x80555d6 <DebugMon_Handler+0x2> @ imm = #-4

080555d8 <PendSV_Handler>:
 80555d8: ff e7        	b	0x80555da <PendSV_Handler+0x2> @ imm = #-2
 80555da: fe e7        	b	0x80555da <PendSV_Handler+0x2> @ imm = #-4

080555dc <SysTick_Handler>:
 80555dc: ff e7        	b	0x80555de <SysTick_Handler+0x2> @ imm = #-2
 80555de: fe e7        	b	0x80555de <SysTick_Handler+0x2> @ imm = #-4

080555e0 <WWDG_IRQHandler>:
 80555e0: ff e7        	b	0x80555e2 <WWDG_IRQHandler+0x2> @ imm = #-2
 80555e2: fe e7        	b	0x80555e2 <WWDG_IRQHandler+0x2> @ imm = #-4

080555e4 <PVD_PVM_IRQHandler>:
 80555e4: ff e7        	b	0x80555e6 <PVD_PVM_IRQHandler+0x2> @ imm = #-2
 80555e6: fe e7        	b	0x80555e6 <PVD_PVM_IRQHandler+0x2> @ imm = #-4

080555e8 <RTC_IRQHandler>:
 80555e8: ff e7        	b	0x80555ea <RTC_IRQHandler+0x2> @ imm = #-2
 80555ea: fe e7        	b	0x80555ea <RTC_IRQHandler+0x2> @ imm = #-4

080555ec <RTC_IRQHandler_S>:
 80555ec: ff e7        	b	0x80555ee <RTC_IRQHandler_S+0x2> @ imm = #-2
 80555ee: fe e7        	b	0x80555ee <RTC_IRQHandler_S+0x2> @ imm = #-4

080555f0 <TAMP_IRQHandler>:
 80555f0: ff e7        	b	0x80555f2 <TAMP_IRQHandler+0x2> @ imm = #-2
 80555f2: fe e7        	b	0x80555f2 <TAMP_IRQHandler+0x2> @ imm = #-4

080555f4 <TAMP_IRQHandler_S>:
 80555f4: ff e7        	b	0x80555f6 <TAMP_IRQHandler_S+0x2> @ imm = #-2
 80555f6: fe e7        	b	0x80555f6 <TAMP_IRQHandler_S+0x2> @ imm = #-4

080555f8 <FLASH_IRQHandler>:
 80555f8: ff e7        	b	0x80555fa <FLASH_IRQHandler+0x2> @ imm = #-2
 80555fa: fe e7        	b	0x80555fa <FLASH_IRQHandler+0x2> @ imm = #-4

080555fc <FLASH_IRQHandler_S>:
 80555fc: ff e7        	b	0x80555fe <FLASH_IRQHandler_S+0x2> @ imm = #-2
 80555fe: fe e7        	b	0x80555fe <FLASH_IRQHandler_S+0x2> @ imm = #-4

08055600 <SERR_IRQHandler>:
 8055600: ff e7        	b	0x8055602 <SERR_IRQHandler+0x2> @ imm = #-2
 8055602: fe e7        	b	0x8055602 <SERR_IRQHandler+0x2> @ imm = #-4

08055604 <RCC_IRQHandler>:
 8055604: ff e7        	b	0x8055606 <RCC_IRQHandler+0x2> @ imm = #-2
 8055606: fe e7        	b	0x8055606 <RCC_IRQHandler+0x2> @ imm = #-4

08055608 <RCC_IRQHandler_S>:
 8055608: ff e7        	b	0x805560a <RCC_IRQHandler_S+0x2> @ imm = #-2
 805560a: fe e7        	b	0x805560a <RCC_IRQHandler_S+0x2> @ imm = #-4

0805560c <EXTI0_IRQHandler>:
 805560c: ff e7        	b	0x805560e <EXTI0_IRQHandler+0x2> @ imm = #-2
 805560e: fe e7        	b	0x805560e <EXTI0_IRQHandler+0x2> @ imm = #-4

08055610 <EXTI1_IRQHandler>:
 8055610: ff e7        	b	0x8055612 <EXTI1_IRQHandler+0x2> @ imm = #-2
 8055612: fe e7        	b	0x8055612 <EXTI1_IRQHandler+0x2> @ imm = #-4

08055614 <EXTI2_IRQHandler>:
 8055614: ff e7        	b	0x8055616 <EXTI2_IRQHandler+0x2> @ imm = #-2
 8055616: fe e7        	b	0x8055616 <EXTI2_IRQHandler+0x2> @ imm = #-4

08055618 <EXTI3_IRQHandler>:
 8055618: ff e7        	b	0x805561a <EXTI3_IRQHandler+0x2> @ imm = #-2
 805561a: fe e7        	b	0x805561a <EXTI3_IRQHandler+0x2> @ imm = #-4

0805561c <EXTI4_IRQHandler>:
 805561c: ff e7        	b	0x805561e <EXTI4_IRQHandler+0x2> @ imm = #-2
 805561e: fe e7        	b	0x805561e <EXTI4_IRQHandler+0x2> @ imm = #-4

08055620 <EXTI5_IRQHandler>:
 8055620: ff e7        	b	0x8055622 <EXTI5_IRQHandler+0x2> @ imm = #-2
 8055622: fe e7        	b	0x8055622 <EXTI5_IRQHandler+0x2> @ imm = #-4

08055624 <EXTI6_IRQHandler>:
 8055624: ff e7        	b	0x8055626 <EXTI6_IRQHandler+0x2> @ imm = #-2
 8055626: fe e7        	b	0x8055626 <EXTI6_IRQHandler+0x2> @ imm = #-4

08055628 <EXTI7_IRQHandler>:
 8055628: ff e7        	b	0x805562a <EXTI7_IRQHandler+0x2> @ imm = #-2
 805562a: fe e7        	b	0x805562a <EXTI7_IRQHandler+0x2> @ imm = #-4

0805562c <EXTI8_IRQHandler>:
 805562c: ff e7        	b	0x805562e <EXTI8_IRQHandler+0x2> @ imm = #-2
 805562e: fe e7        	b	0x805562e <EXTI8_IRQHandler+0x2> @ imm = #-4

08055630 <EXTI9_IRQHandler>:
 8055630: ff e7        	b	0x8055632 <EXTI9_IRQHandler+0x2> @ imm = #-2
 8055632: fe e7        	b	0x8055632 <EXTI9_IRQHandler+0x2> @ imm = #-4

08055634 <EXTI10_IRQHandler>:
 8055634: ff e7        	b	0x8055636 <EXTI10_IRQHandler+0x2> @ imm = #-2
 8055636: fe e7        	b	0x8055636 <EXTI10_IRQHandler+0x2> @ imm = #-4

08055638 <EXTI11_IRQHandler>:
 8055638: ff e7        	b	0x805563a <EXTI11_IRQHandler+0x2> @ imm = #-2
 805563a: fe e7        	b	0x805563a <EXTI11_IRQHandler+0x2> @ imm = #-4

0805563c <EXTI12_IRQHandler>:
 805563c: ff e7        	b	0x805563e <EXTI12_IRQHandler+0x2> @ imm = #-2
 805563e: fe e7        	b	0x805563e <EXTI12_IRQHandler+0x2> @ imm = #-4

08055640 <EXTI13_IRQHandler>:
 8055640: ff e7        	b	0x8055642 <EXTI13_IRQHandler+0x2> @ imm = #-2
 8055642: fe e7        	b	0x8055642 <EXTI13_IRQHandler+0x2> @ imm = #-4

08055644 <EXTI14_IRQHandler>:
 8055644: ff e7        	b	0x8055646 <EXTI14_IRQHandler+0x2> @ imm = #-2
 8055646: fe e7        	b	0x8055646 <EXTI14_IRQHandler+0x2> @ imm = #-4

08055648 <EXTI15_IRQHandler>:
 8055648: ff e7        	b	0x805564a <EXTI15_IRQHandler+0x2> @ imm = #-2
 805564a: fe e7        	b	0x805564a <EXTI15_IRQHandler+0x2> @ imm = #-4

0805564c <DMAMUX1_IRQHandler>:
 805564c: ff e7        	b	0x805564e <DMAMUX1_IRQHandler+0x2> @ imm = #-2
 805564e: fe e7        	b	0x805564e <DMAMUX1_IRQHandler+0x2> @ imm = #-4

08055650 <DMAMUX1_IRQHandler_S>:
 8055650: ff e7        	b	0x8055652 <DMAMUX1_IRQHandler_S+0x2> @ imm = #-2
 8055652: fe e7        	b	0x8055652 <DMAMUX1_IRQHandler_S+0x2> @ imm = #-4

08055654 <DMA1_Channel1_IRQHandler>:
 8055654: ff e7        	b	0x8055656 <DMA1_Channel1_IRQHandler+0x2> @ imm = #-2
 8055656: fe e7        	b	0x8055656 <DMA1_Channel1_IRQHandler+0x2> @ imm = #-4

08055658 <DMA1_Channel2_IRQHandler>:
 8055658: ff e7        	b	0x805565a <DMA1_Channel2_IRQHandler+0x2> @ imm = #-2
 805565a: fe e7        	b	0x805565a <DMA1_Channel2_IRQHandler+0x2> @ imm = #-4

0805565c <DMA1_Channel3_IRQHandler>:
 805565c: ff e7        	b	0x805565e <DMA1_Channel3_IRQHandler+0x2> @ imm = #-2
 805565e: fe e7        	b	0x805565e <DMA1_Channel3_IRQHandler+0x2> @ imm = #-4

08055660 <DMA1_Channel4_IRQHandler>:
 8055660: ff e7        	b	0x8055662 <DMA1_Channel4_IRQHandler+0x2> @ imm = #-2
 8055662: fe e7        	b	0x8055662 <DMA1_Channel4_IRQHandler+0x2> @ imm = #-4

08055664 <DMA1_Channel5_IRQHandler>:
 8055664: ff e7        	b	0x8055666 <DMA1_Channel5_IRQHandler+0x2> @ imm = #-2
 8055666: fe e7        	b	0x8055666 <DMA1_Channel5_IRQHandler+0x2> @ imm = #-4

08055668 <DMA1_Channel6_IRQHandler>:
 8055668: ff e7        	b	0x805566a <DMA1_Channel6_IRQHandler+0x2> @ imm = #-2
 805566a: fe e7        	b	0x805566a <DMA1_Channel6_IRQHandler+0x2> @ imm = #-4

0805566c <DMA1_Channel7_IRQHandler>:
 805566c: ff e7        	b	0x805566e <DMA1_Channel7_IRQHandler+0x2> @ imm = #-2
 805566e: fe e7        	b	0x805566e <DMA1_Channel7_IRQHandler+0x2> @ imm = #-4

08055670 <DMA1_Channel8_IRQHandler>:
 8055670: ff e7        	b	0x8055672 <DMA1_Channel8_IRQHandler+0x2> @ imm = #-2
 8055672: fe e7        	b	0x8055672 <DMA1_Channel8_IRQHandler+0x2> @ imm = #-4

08055674 <ADC1_2_IRQHandler>:
 8055674: ff e7        	b	0x8055676 <ADC1_2_IRQHandler+0x2> @ imm = #-2
 8055676: fe e7        	b	0x8055676 <ADC1_2_IRQHandler+0x2> @ imm = #-4

08055678 <DAC_IRQHandler>:
 8055678: ff e7        	b	0x805567a <DAC_IRQHandler+0x2> @ imm = #-2
 805567a: fe e7        	b	0x805567a <DAC_IRQHandler+0x2> @ imm = #-4

0805567c <FDCAN1_IT0_IRQHandler>:
 805567c: ff e7        	b	0x805567e <FDCAN1_IT0_IRQHandler+0x2> @ imm = #-2
 805567e: fe e7        	b	0x805567e <FDCAN1_IT0_IRQHandler+0x2> @ imm = #-4

08055680 <FDCAN1_IT1_IRQHandler>:
 8055680: ff e7        	b	0x8055682 <FDCAN1_IT1_IRQHandler+0x2> @ imm = #-2
 8055682: fe e7        	b	0x8055682 <FDCAN1_IT1_IRQHandler+0x2> @ imm = #-4

08055684 <TIM1_BRK_IRQHandler>:
 8055684: ff e7        	b	0x8055686 <TIM1_BRK_IRQHandler+0x2> @ imm = #-2
 8055686: fe e7        	b	0x8055686 <TIM1_BRK_IRQHandler+0x2> @ imm = #-4

08055688 <TIM1_UP_IRQHandler>:
 8055688: ff e7        	b	0x805568a <TIM1_UP_IRQHandler+0x2> @ imm = #-2
 805568a: fe e7        	b	0x805568a <TIM1_UP_IRQHandler+0x2> @ imm = #-4

0805568c <TIM1_TRG_COM_IRQHandler>:
 805568c: ff e7        	b	0x805568e <TIM1_TRG_COM_IRQHandler+0x2> @ imm = #-2
 805568e: fe e7        	b	0x805568e <TIM1_TRG_COM_IRQHandler+0x2> @ imm = #-4

08055690 <TIM1_CC_IRQHandler>:
 8055690: ff e7        	b	0x8055692 <TIM1_CC_IRQHandler+0x2> @ imm = #-2
 8055692: fe e7        	b	0x8055692 <TIM1_CC_IRQHandler+0x2> @ imm = #-4

08055694 <TIM2_IRQHandler>:
 8055694: ff e7        	b	0x8055696 <TIM2_IRQHandler+0x2> @ imm = #-2
 8055696: fe e7        	b	0x8055696 <TIM2_IRQHandler+0x2> @ imm = #-4

08055698 <TIM3_IRQHandler>:
 8055698: ff e7        	b	0x805569a <TIM3_IRQHandler+0x2> @ imm = #-2
 805569a: fe e7        	b	0x805569a <TIM3_IRQHandler+0x2> @ imm = #-4

0805569c <TIM4_IRQHandler>:
 805569c: ff e7        	b	0x805569e <TIM4_IRQHandler+0x2> @ imm = #-2
 805569e: fe e7        	b	0x805569e <TIM4_IRQHandler+0x2> @ imm = #-4

080556a0 <TIM5_IRQHandler>:
 80556a0: ff e7        	b	0x80556a2 <TIM5_IRQHandler+0x2> @ imm = #-2
 80556a2: fe e7        	b	0x80556a2 <TIM5_IRQHandler+0x2> @ imm = #-4

080556a4 <TIM6_IRQHandler>:
 80556a4: ff e7        	b	0x80556a6 <TIM6_IRQHandler+0x2> @ imm = #-2
 80556a6: fe e7        	b	0x80556a6 <TIM6_IRQHandler+0x2> @ imm = #-4

080556a8 <TIM7_IRQHandler>:
 80556a8: ff e7        	b	0x80556aa <TIM7_IRQHandler+0x2> @ imm = #-2
 80556aa: fe e7        	b	0x80556aa <TIM7_IRQHandler+0x2> @ imm = #-4

080556ac <TIM8_BRK_IRQHandler>:
 80556ac: ff e7        	b	0x80556ae <TIM8_BRK_IRQHandler+0x2> @ imm = #-2
 80556ae: fe e7        	b	0x80556ae <TIM8_BRK_IRQHandler+0x2> @ imm = #-4

080556b0 <TIM8_UP_IRQHandler>:
 80556b0: ff e7        	b	0x80556b2 <TIM8_UP_IRQHandler+0x2> @ imm = #-2
 80556b2: fe e7        	b	0x80556b2 <TIM8_UP_IRQHandler+0x2> @ imm = #-4

080556b4 <TIM8_TRG_COM_IRQHandler>:
 80556b4: ff e7        	b	0x80556b6 <TIM8_TRG_COM_IRQHandler+0x2> @ imm = #-2
 80556b6: fe e7        	b	0x80556b6 <TIM8_TRG_COM_IRQHandler+0x2> @ imm = #-4

080556b8 <TIM8_CC_IRQHandler>:
 80556b8: ff e7        	b	0x80556ba <TIM8_CC_IRQHandler+0x2> @ imm = #-2
 80556ba: fe e7        	b	0x80556ba <TIM8_CC_IRQHandler+0x2> @ imm = #-4

080556bc <I2C1_EV_IRQHandler>:
 80556bc: ff e7        	b	0x80556be <I2C1_EV_IRQHandler+0x2> @ imm = #-2
 80556be: fe e7        	b	0x80556be <I2C1_EV_IRQHandler+0x2> @ imm = #-4

080556c0 <I2C1_ER_IRQHandler>:
 80556c0: ff e7        	b	0x80556c2 <I2C1_ER_IRQHandler+0x2> @ imm = #-2
 80556c2: fe e7        	b	0x80556c2 <I2C1_ER_IRQHandler+0x2> @ imm = #-4

080556c4 <I2C2_EV_IRQHandler>:
 80556c4: ff e7        	b	0x80556c6 <I2C2_EV_IRQHandler+0x2> @ imm = #-2
 80556c6: fe e7        	b	0x80556c6 <I2C2_EV_IRQHandler+0x2> @ imm = #-4

080556c8 <I2C2_ER_IRQHandler>:
 80556c8: ff e7        	b	0x80556ca <I2C2_ER_IRQHandler+0x2> @ imm = #-2
 80556ca: fe e7        	b	0x80556ca <I2C2_ER_IRQHandler+0x2> @ imm = #-4

080556cc <SPI1_IRQHandler>:
 80556cc: ff e7        	b	0x80556ce <SPI1_IRQHandler+0x2> @ imm = #-2
 80556ce: fe e7        	b	0x80556ce <SPI1_IRQHandler+0x2> @ imm = #-4

080556d0 <SPI2_IRQHandler>:
 80556d0: ff e7        	b	0x80556d2 <SPI2_IRQHandler+0x2> @ imm = #-2
 80556d2: fe e7        	b	0x80556d2 <SPI2_IRQHandler+0x2> @ imm = #-4

080556d4 <USART1_IRQHandler>:
 80556d4: ff e7        	b	0x80556d6 <USART1_IRQHandler+0x2> @ imm = #-2
 80556d6: fe e7        	b	0x80556d6 <USART1_IRQHandler+0x2> @ imm = #-4

080556d8 <USART2_IRQHandler>:
 80556d8: ff e7        	b	0x80556da <USART2_IRQHandler+0x2> @ imm = #-2
 80556da: fe e7        	b	0x80556da <USART2_IRQHandler+0x2> @ imm = #-4

080556dc <USART3_IRQHandler>:
 80556dc: ff e7        	b	0x80556de <USART3_IRQHandler+0x2> @ imm = #-2
 80556de: fe e7        	b	0x80556de <USART3_IRQHandler+0x2> @ imm = #-4

080556e0 <UART4_IRQHandler>:
 80556e0: ff e7        	b	0x80556e2 <UART4_IRQHandler+0x2> @ imm = #-2
 80556e2: fe e7        	b	0x80556e2 <UART4_IRQHandler+0x2> @ imm = #-4

080556e4 <UART5_IRQHandler>:
 80556e4: ff e7        	b	0x80556e6 <UART5_IRQHandler+0x2> @ imm = #-2
 80556e6: fe e7        	b	0x80556e6 <UART5_IRQHandler+0x2> @ imm = #-4

080556e8 <LPUART1_IRQHandler>:
 80556e8: ff e7        	b	0x80556ea <LPUART1_IRQHandler+0x2> @ imm = #-2
 80556ea: fe e7        	b	0x80556ea <LPUART1_IRQHandler+0x2> @ imm = #-4

080556ec <LPTIM1_IRQHandler>:
 80556ec: ff e7        	b	0x80556ee <LPTIM1_IRQHandler+0x2> @ imm = #-2
 80556ee: fe e7        	b	0x80556ee <LPTIM1_IRQHandler+0x2> @ imm = #-4

080556f0 <LPTIM2_IRQHandler>:
 80556f0: ff e7        	b	0x80556f2 <LPTIM2_IRQHandler+0x2> @ imm = #-2
 80556f2: fe e7        	b	0x80556f2 <LPTIM2_IRQHandler+0x2> @ imm = #-4

080556f4 <TIM15_IRQHandler>:
 80556f4: ff e7        	b	0x80556f6 <TIM15_IRQHandler+0x2> @ imm = #-2
 80556f6: fe e7        	b	0x80556f6 <TIM15_IRQHandler+0x2> @ imm = #-4

080556f8 <TIM16_IRQHandler>:
 80556f8: ff e7        	b	0x80556fa <TIM16_IRQHandler+0x2> @ imm = #-2
 80556fa: fe e7        	b	0x80556fa <TIM16_IRQHandler+0x2> @ imm = #-4

080556fc <TIM17_IRQHandler>:
 80556fc: ff e7        	b	0x80556fe <TIM17_IRQHandler+0x2> @ imm = #-2
 80556fe: fe e7        	b	0x80556fe <TIM17_IRQHandler+0x2> @ imm = #-4

08055700 <COMP_IRQHandler>:
 8055700: ff e7        	b	0x8055702 <COMP_IRQHandler+0x2> @ imm = #-2
 8055702: fe e7        	b	0x8055702 <COMP_IRQHandler+0x2> @ imm = #-4

08055704 <USB_FS_IRQHandler>:
 8055704: ff e7        	b	0x8055706 <USB_FS_IRQHandler+0x2> @ imm = #-2
 8055706: fe e7        	b	0x8055706 <USB_FS_IRQHandler+0x2> @ imm = #-4

08055708 <CRS_IRQHandler>:
 8055708: ff e7        	b	0x805570a <CRS_IRQHandler+0x2> @ imm = #-2
 805570a: fe e7        	b	0x805570a <CRS_IRQHandler+0x2> @ imm = #-4

0805570c <FMC_IRQHandler>:
 805570c: ff e7        	b	0x805570e <FMC_IRQHandler+0x2> @ imm = #-2
 805570e: fe e7        	b	0x805570e <FMC_IRQHandler+0x2> @ imm = #-4

08055710 <OCTOSPI1_IRQHandler>:
 8055710: ff e7        	b	0x8055712 <OCTOSPI1_IRQHandler+0x2> @ imm = #-2
 8055712: fe e7        	b	0x8055712 <OCTOSPI1_IRQHandler+0x2> @ imm = #-4

08055714 <SDMMC1_IRQHandler>:
 8055714: ff e7        	b	0x8055716 <SDMMC1_IRQHandler+0x2> @ imm = #-2
 8055716: fe e7        	b	0x8055716 <SDMMC1_IRQHandler+0x2> @ imm = #-4

08055718 <DMA2_Channel1_IRQHandler>:
 8055718: ff e7        	b	0x805571a <DMA2_Channel1_IRQHandler+0x2> @ imm = #-2
 805571a: fe e7        	b	0x805571a <DMA2_Channel1_IRQHandler+0x2> @ imm = #-4

0805571c <DMA2_Channel2_IRQHandler>:
 805571c: ff e7        	b	0x805571e <DMA2_Channel2_IRQHandler+0x2> @ imm = #-2
 805571e: fe e7        	b	0x805571e <DMA2_Channel2_IRQHandler+0x2> @ imm = #-4

08055720 <DMA2_Channel3_IRQHandler>:
 8055720: ff e7        	b	0x8055722 <DMA2_Channel3_IRQHandler+0x2> @ imm = #-2
 8055722: fe e7        	b	0x8055722 <DMA2_Channel3_IRQHandler+0x2> @ imm = #-4

08055724 <DMA2_Channel4_IRQHandler>:
 8055724: ff e7        	b	0x8055726 <DMA2_Channel4_IRQHandler+0x2> @ imm = #-2
 8055726: fe e7        	b	0x8055726 <DMA2_Channel4_IRQHandler+0x2> @ imm = #-4

08055728 <DMA2_Channel5_IRQHandler>:
 8055728: ff e7        	b	0x805572a <DMA2_Channel5_IRQHandler+0x2> @ imm = #-2
 805572a: fe e7        	b	0x805572a <DMA2_Channel5_IRQHandler+0x2> @ imm = #-4

0805572c <DMA2_Channel6_IRQHandler>:
 805572c: ff e7        	b	0x805572e <DMA2_Channel6_IRQHandler+0x2> @ imm = #-2
 805572e: fe e7        	b	0x805572e <DMA2_Channel6_IRQHandler+0x2> @ imm = #-4

08055730 <DMA2_Channel7_IRQHandler>:
 8055730: ff e7        	b	0x8055732 <DMA2_Channel7_IRQHandler+0x2> @ imm = #-2
 8055732: fe e7        	b	0x8055732 <DMA2_Channel7_IRQHandler+0x2> @ imm = #-4

08055734 <DMA2_Channel8_IRQHandler>:
 8055734: ff e7        	b	0x8055736 <DMA2_Channel8_IRQHandler+0x2> @ imm = #-2
 8055736: fe e7        	b	0x8055736 <DMA2_Channel8_IRQHandler+0x2> @ imm = #-4

08055738 <I2C3_EV_IRQHandler>:
 8055738: ff e7        	b	0x805573a <I2C3_EV_IRQHandler+0x2> @ imm = #-2
 805573a: fe e7        	b	0x805573a <I2C3_EV_IRQHandler+0x2> @ imm = #-4

0805573c <I2C3_ER_IRQHandler>:
 805573c: ff e7        	b	0x805573e <I2C3_ER_IRQHandler+0x2> @ imm = #-2
 805573e: fe e7        	b	0x805573e <I2C3_ER_IRQHandler+0x2> @ imm = #-4

08055740 <SAI1_IRQHandler>:
 8055740: ff e7        	b	0x8055742 <SAI1_IRQHandler+0x2> @ imm = #-2
 8055742: fe e7        	b	0x8055742 <SAI1_IRQHandler+0x2> @ imm = #-4

08055744 <SAI2_IRQHandler>:
 8055744: ff e7        	b	0x8055746 <SAI2_IRQHandler+0x2> @ imm = #-2
 8055746: fe e7        	b	0x8055746 <SAI2_IRQHandler+0x2> @ imm = #-4

08055748 <TSC_IRQHandler>:
 8055748: ff e7        	b	0x805574a <TSC_IRQHandler+0x2> @ imm = #-2
 805574a: fe e7        	b	0x805574a <TSC_IRQHandler+0x2> @ imm = #-4

0805574c <AES_IRQHandler>:
 805574c: ff e7        	b	0x805574e <AES_IRQHandler+0x2> @ imm = #-2
 805574e: fe e7        	b	0x805574e <AES_IRQHandler+0x2> @ imm = #-4

08055750 <RNG_IRQHandler>:
 8055750: ff e7        	b	0x8055752 <RNG_IRQHandler+0x2> @ imm = #-2
 8055752: fe e7        	b	0x8055752 <RNG_IRQHandler+0x2> @ imm = #-4

08055754 <FPU_IRQHandler>:
 8055754: ff e7        	b	0x8055756 <FPU_IRQHandler+0x2> @ imm = #-2
 8055756: fe e7        	b	0x8055756 <FPU_IRQHandler+0x2> @ imm = #-4

08055758 <HASH_IRQHandler>:
 8055758: ff e7        	b	0x805575a <HASH_IRQHandler+0x2> @ imm = #-2
 805575a: fe e7        	b	0x805575a <HASH_IRQHandler+0x2> @ imm = #-4

0805575c <PKA_IRQHandler>:
 805575c: ff e7        	b	0x805575e <PKA_IRQHandler+0x2> @ imm = #-2
 805575e: fe e7        	b	0x805575e <PKA_IRQHandler+0x2> @ imm = #-4

08055760 <LPTIM3_IRQHandler>:
 8055760: ff e7        	b	0x8055762 <LPTIM3_IRQHandler+0x2> @ imm = #-2
 8055762: fe e7        	b	0x8055762 <LPTIM3_IRQHandler+0x2> @ imm = #-4

08055764 <SPI3_IRQHandler>:
 8055764: ff e7        	b	0x8055766 <SPI3_IRQHandler+0x2> @ imm = #-2
 8055766: fe e7        	b	0x8055766 <SPI3_IRQHandler+0x2> @ imm = #-4

08055768 <I2C4_ER_IRQHandler>:
 8055768: ff e7        	b	0x805576a <I2C4_ER_IRQHandler+0x2> @ imm = #-2
 805576a: fe e7        	b	0x805576a <I2C4_ER_IRQHandler+0x2> @ imm = #-4

0805576c <I2C4_EV_IRQHandler>:
 805576c: ff e7        	b	0x805576e <I2C4_EV_IRQHandler+0x2> @ imm = #-2
 805576e: fe e7        	b	0x805576e <I2C4_EV_IRQHandler+0x2> @ imm = #-4

08055770 <DFSDM1_FLT0_IRQHandler>:
 8055770: ff e7        	b	0x8055772 <DFSDM1_FLT0_IRQHandler+0x2> @ imm = #-2
 8055772: fe e7        	b	0x8055772 <DFSDM1_FLT0_IRQHandler+0x2> @ imm = #-4

08055774 <DFSDM1_FLT1_IRQHandler>:
 8055774: ff e7        	b	0x8055776 <DFSDM1_FLT1_IRQHandler+0x2> @ imm = #-2
 8055776: fe e7        	b	0x8055776 <DFSDM1_FLT1_IRQHandler+0x2> @ imm = #-4

08055778 <DFSDM1_FLT2_IRQHandler>:
 8055778: ff e7        	b	0x805577a <DFSDM1_FLT2_IRQHandler+0x2> @ imm = #-2
 805577a: fe e7        	b	0x805577a <DFSDM1_FLT2_IRQHandler+0x2> @ imm = #-4

0805577c <DFSDM1_FLT3_IRQHandler>:
 805577c: ff e7        	b	0x805577e <DFSDM1_FLT3_IRQHandler+0x2> @ imm = #-2
 805577e: fe e7        	b	0x805577e <DFSDM1_FLT3_IRQHandler+0x2> @ imm = #-4

08055780 <UCPD1_IRQHandler>:
 8055780: ff e7        	b	0x8055782 <UCPD1_IRQHandler+0x2> @ imm = #-2
 8055782: fe e7        	b	0x8055782 <UCPD1_IRQHandler+0x2> @ imm = #-4

08055784 <ICACHE_IRQHandler>:
 8055784: ff e7        	b	0x8055786 <ICACHE_IRQHandler+0x2> @ imm = #-2
 8055786: fe e7        	b	0x8055786 <ICACHE_IRQHandler+0x2> @ imm = #-4

08055788 <OTFDEC1_IRQHandler>:
 8055788: ff e7        	b	0x805578a <OTFDEC1_IRQHandler+0x2> @ imm = #-2
 805578a: fe e7        	b	0x805578a <OTFDEC1_IRQHandler+0x2> @ imm = #-4

0805578c <Reset_Handler>:
 805578c: 80 b5        	push	{r7, lr}
 805578e: 6f 46        	mov	r7, sp
 8055790: 88 b0        	sub	sp, #32
 8055792: 40 f2 c0 10  	movw	r0, #448
 8055796: c2 f2 00 00  	movt	r0, #8192
 805579a: 05 90        	str	r0, [sp, #20]
 805579c: 05 99        	ldr	r1, [sp, #20]
 805579e: 81 f3 0a 88  	msr	msplim, r1
 80557a2: 41 f2 c0 11  	movw	r1, #4544
 80557a6: c2 f2 00 01  	movt	r1, #8192
 80557aa: 06 91        	str	r1, [sp, #24]
 80557ac: 06 99        	ldr	r1, [sp, #24]
 80557ae: 81 f3 09 88  	msr	psp, r1
 80557b2: 07 90        	str	r0, [sp, #28]
 80557b4: 07 98        	ldr	r0, [sp, #28]
 80557b6: 80 f3 0b 88  	msr	psplim, r0
 80557ba: ff f7 1b fd  	bl	0x80551f4 <__Vectors_Size> @ imm = #-1482
 80557be: 00 f0 4e f8  	bl	0x805585e <r9Init>      @ imm = #156
 80557c2: 45 f6 30 30  	movw	r0, #23344
 80557c6: c0 f6 05 00  	movt	r0, #2053
 80557ca: 04 90        	str	r0, [sp, #16]
 80557cc: ff e7        	b	0x80557ce <Reset_Handler+0x42> @ imm = #-2
 80557ce: 04 98        	ldr	r0, [sp, #16]
 80557d0: 45 f6 48 31  	movw	r1, #23368
 80557d4: c0 f6 05 01  	movt	r1, #2053
 80557d8: 88 42        	cmp	r0, r1
 80557da: 19 d2        	bhs	0x8055810 <Reset_Handler+0x84> @ imm = #50
 80557dc: ff e7        	b	0x80557de <Reset_Handler+0x52> @ imm = #-2
 80557de: 00 20        	movs	r0, #0
 80557e0: 03 90        	str	r0, [sp, #12]
 80557e2: ff e7        	b	0x80557e4 <Reset_Handler+0x58> @ imm = #-2
 80557e4: 03 98        	ldr	r0, [sp, #12]
 80557e6: 04 99        	ldr	r1, [sp, #16]
 80557e8: 89 68        	ldr	r1, [r1, #8]
 80557ea: 88 42        	cmp	r0, r1
 80557ec: 0c d2        	bhs	0x8055808 <Reset_Handler+0x7c> @ imm = #24
 80557ee: ff e7        	b	0x80557f0 <Reset_Handler+0x64> @ imm = #-2
 80557f0: 04 99        	ldr	r1, [sp, #16]
 80557f2: 03 9a        	ldr	r2, [sp, #12]
 80557f4: 08 68        	ldr	r0, [r1]
 80557f6: 49 68        	ldr	r1, [r1, #4]
 80557f8: 50 f8 22 00  	ldr.w	r0, [r0, r2, lsl #2]
 80557fc: 41 f8 22 00  	str.w	r0, [r1, r2, lsl #2]
 8055800: 03 98        	ldr	r0, [sp, #12]
 8055802: 01 30        	adds	r0, #1
 8055804: 03 90        	str	r0, [sp, #12]
 8055806: ed e7        	b	0x80557e4 <Reset_Handler+0x58> @ imm = #-38
 8055808: 04 98        	ldr	r0, [sp, #16]
 805580a: 0c 30        	adds	r0, #12
 805580c: 04 90        	str	r0, [sp, #16]
 805580e: de e7        	b	0x80557ce <Reset_Handler+0x42> @ imm = #-68
 8055810: 45 f6 48 30  	movw	r0, #23368
 8055814: c0 f6 05 00  	movt	r0, #2053
 8055818: 02 90        	str	r0, [sp, #8]
 805581a: ff e7        	b	0x805581c <Reset_Handler+0x90> @ imm = #-2
 805581c: 02 98        	ldr	r0, [sp, #8]
 805581e: 45 f6 58 31  	movw	r1, #23384
 8055822: c0 f6 05 01  	movt	r1, #2053
 8055826: 88 42        	cmp	r0, r1
 8055828: 17 d2        	bhs	0x805585a <Reset_Handler+0xce> @ imm = #46
 805582a: ff e7        	b	0x805582c <Reset_Handler+0xa0> @ imm = #-2
 805582c: 00 20        	movs	r0, #0
 805582e: 01 90        	str	r0, [sp, #4]
 8055830: ff e7        	b	0x8055832 <Reset_Handler+0xa6> @ imm = #-2
 8055832: 01 98        	ldr	r0, [sp, #4]
 8055834: 02 99        	ldr	r1, [sp, #8]
 8055836: 49 68        	ldr	r1, [r1, #4]
 8055838: 88 42        	cmp	r0, r1
 805583a: 0a d2        	bhs	0x8055852 <Reset_Handler+0xc6> @ imm = #20
 805583c: ff e7        	b	0x805583e <Reset_Handler+0xb2> @ imm = #-2
 805583e: 02 98        	ldr	r0, [sp, #8]
 8055840: 01 68        	ldr	r1, [r0]
 8055842: 01 9a        	ldr	r2, [sp, #4]
 8055844: 00 20        	movs	r0, #0
 8055846: 41 f8 22 00  	str.w	r0, [r1, r2, lsl #2]
 805584a: 01 98        	ldr	r0, [sp, #4]
 805584c: 01 30        	adds	r0, #1
 805584e: 01 90        	str	r0, [sp, #4]
 8055850: ef e7        	b	0x8055832 <Reset_Handler+0xa6> @ imm = #-34
 8055852: 02 98        	ldr	r0, [sp, #8]
 8055854: 08 30        	adds	r0, #8
 8055856: 02 90        	str	r0, [sp, #8]
 8055858: e0 e7        	b	0x805581c <Reset_Handler+0x90> @ imm = #-64
 805585a: 00 f0 37 f8  	bl	0x80558cc <main>        @ imm = #110

0805585e <r9Init>:
 805585e: 4f f0 01 09  	mov.w	r9, #1
 8055862: 70 47        	bx	lr

08055864 <spin_100000>:
 8055864: 81 b0        	sub	sp, #4
 8055866: 00 20        	movs	r0, #0
 8055868: 00 90        	str	r0, [sp]
 805586a: ff e7        	b	0x805586c <spin_100000+0x8> @ imm = #-2
 805586c: 00 98        	ldr	r0, [sp]
 805586e: 48 f2 9f 61  	movw	r1, #34463
 8055872: c0 f2 01 01  	movt	r1, #1
 8055876: 88 42        	cmp	r0, r1
 8055878: 06 dc        	bgt	0x8055888 <spin_100000+0x24> @ imm = #12
 805587a: ff e7        	b	0x805587c <spin_100000+0x18> @ imm = #-2
 805587c: 00 bf        	nop
 805587e: ff e7        	b	0x8055880 <spin_100000+0x1c> @ imm = #-2
 8055880: 00 98        	ldr	r0, [sp]
 8055882: 01 30        	adds	r0, #1
 8055884: 00 90        	str	r0, [sp]
 8055886: f1 e7        	b	0x805586c <spin_100000+0x8> @ imm = #-30
 8055888: 01 b0        	add	sp, #4
 805588a: 70 47        	bx	lr

0805588c <foo2>:
 805588c: ff e7        	b	0x805588e <foo2+0x2>    @ imm = #-2
 805588e: fe e7        	b	0x805588e <foo2+0x2>    @ imm = #-4

08055890 <foo3>:
 8055890: ff e7        	b	0x8055892 <foo3+0x2>    @ imm = #-2
 8055892: fe e7        	b	0x8055892 <foo3+0x2>    @ imm = #-4

08055894 <foo>:
 8055894: 80 b5        	push	{r7, lr}
 8055896: 6f 46        	mov	r7, sp
 8055898: 82 b0        	sub	sp, #8
 805589a: 45 f6 8d 00  	movw	r0, #22669
 805589e: c0 f6 05 00  	movt	r0, #2053
 80558a2: 01 90        	str	r0, [sp, #4]
 80558a4: 45 f6 91 00  	movw	r0, #22673
 80558a8: c0 f6 05 00  	movt	r0, #2053
 80558ac: 00 90        	str	r0, [sp]
 80558ae: 01 98        	ldr	r0, [sp, #4]
 80558b0: 80 47        	blx	r0
 80558b2: 00 98        	ldr	r0, [sp]
 80558b4: 80 47        	blx	r0
 80558b6: ff f7 eb ff  	bl	0x8055890 <foo3>        @ imm = #-42
 80558ba: 40 f2 00 01  	movw	r1, #0
 80558be: c2 f2 00 01  	movt	r1, #8192
 80558c2: 08 68        	ldr	r0, [r1]
 80558c4: 01 30        	adds	r0, #1
 80558c6: 08 60        	str	r0, [r1]
 80558c8: 02 b0        	add	sp, #8
 80558ca: 80 bd        	pop	{r7, pc}

080558cc <main>:
 80558cc: 80 b5        	push	{r7, lr}
 80558ce: 6f 46        	mov	r7, sp
 80558d0: 82 b0        	sub	sp, #8
 80558d2: 00 20        	movs	r0, #0
 80558d4: 01 90        	str	r0, [sp, #4]
 80558d6: 00 f0 07 f9  	bl	0x8055ae8 <initialise_benchmark> @ imm = #526
 80558da: 00 f0 43 f8  	bl	0x8055964 <benchmark>   @ imm = #134
 80558de: 00 90        	str	r0, [sp]
 80558e0: 00 98        	ldr	r0, [sp]
 80558e2: 00 f0 0c f9  	bl	0x8055afe <verify_benchmark> @ imm = #536
 80558e6: 00 f0 0d f8  	bl	0x8055904 <MX_GPIO_Init> @ imm = #26
 80558ea: ff f7 d3 ff  	bl	0x8055894 <foo>         @ imm = #-90
 80558ee: ff e7        	b	0x80558f0 <main+0x24>   @ imm = #-2
 80558f0: 40 f6 00 40  	movw	r0, #3072
 80558f4: c4 f2 02 20  	movt	r0, #16898
 80558f8: 08 21        	movs	r1, #8
 80558fa: ff f7 4a fe  	bl	0x8055592 <HAL_GPIO_TogglePin> @ imm = #-876
 80558fe: ff f7 b1 ff  	bl	0x8055864 <spin_100000> @ imm = #-158
 8055902: f5 e7        	b	0x80558f0 <main+0x24>   @ imm = #-22

08055904 <MX_GPIO_Init>:
 8055904: 80 b5        	push	{r7, lr}
 8055906: 6f 46        	mov	r7, sp
 8055908: 8a b0        	sub	sp, #40
 805590a: 00 20        	movs	r0, #0
 805590c: 09 90        	str	r0, [sp, #36]
 805590e: 08 90        	str	r0, [sp, #32]
 8055910: 07 90        	str	r0, [sp, #28]
 8055912: 06 90        	str	r0, [sp, #24]
 8055914: 05 90        	str	r0, [sp, #20]
 8055916: ff e7        	b	0x8055918 <MX_GPIO_Init+0x14> @ imm = #-2
 8055918: 41 f2 4c 00  	movw	r0, #4172
 805591c: c4 f2 02 00  	movt	r0, #16386
 8055920: 01 68        	ldr	r1, [r0]
 8055922: 41 f0 08 01  	orr	r1, r1, #8
 8055926: 01 60        	str	r1, [r0]
 8055928: 00 68        	ldr	r0, [r0]
 805592a: 00 f0 08 00  	and	r0, r0, #8
 805592e: 04 90        	str	r0, [sp, #16]
 8055930: 04 98        	ldr	r0, [sp, #16]
 8055932: ff e7        	b	0x8055934 <MX_GPIO_Init+0x30> @ imm = #-2
 8055934: 40 f6 00 40  	movw	r0, #3072
 8055938: c4 f2 02 20  	movt	r0, #16898
 805593c: 03 90        	str	r0, [sp, #12]
 805593e: 08 21        	movs	r1, #8
 8055940: 01 91        	str	r1, [sp, #4]
 8055942: 01 22        	movs	r2, #1
 8055944: 02 92        	str	r2, [sp, #8]
 8055946: ff f7 0e fe  	bl	0x8055566 <HAL_GPIO_WritePin> @ imm = #-996
 805594a: 01 9a        	ldr	r2, [sp, #4]
 805594c: 02 99        	ldr	r1, [sp, #8]
 805594e: 03 98        	ldr	r0, [sp, #12]
 8055950: 05 92        	str	r2, [sp, #20]
 8055952: 06 91        	str	r1, [sp, #24]
 8055954: 07 91        	str	r1, [sp, #28]
 8055956: 03 21        	movs	r1, #3
 8055958: 08 91        	str	r1, [sp, #32]
 805595a: 05 a9        	add	r1, sp, #20
 805595c: ff f7 4b fc  	bl	0x80551f6 <HAL_GPIO_Init> @ imm = #-1898
 8055960: 0a b0        	add	sp, #40
 8055962: 80 bd        	pop	{r7, pc}

08055964 <benchmark>:
 8055964: 80 b5        	push	{r7, lr}
 8055966: 6f 46        	mov	r7, sp
 8055968: 40 f2 04 00  	movw	r0, #4
 805596c: c2 f2 00 00  	movt	r0, #8192
 8055970: 00 f0 01 f8  	bl	0x8055976 <Test>        @ imm = #2
 8055974: 80 bd        	pop	{r7, pc}

08055976 <Test>:
 8055976: 80 b5        	push	{r7, lr}
 8055978: 6f 46        	mov	r7, sp
 805597a: 82 b0        	sub	sp, #8
 805597c: 01 90        	str	r0, [sp, #4]
 805597e: 01 98        	ldr	r0, [sp, #4]
 8055980: 00 f0 02 f8  	bl	0x8055988 <Sum>         @ imm = #4
 8055984: 02 b0        	add	sp, #8
 8055986: 80 bd        	pop	{r7, pc}

08055988 <Sum>:
 8055988: 87 b0        	sub	sp, #28
 805598a: 06 90        	str	r0, [sp, #24]
 805598c: 00 20        	movs	r0, #0
 805598e: 03 90        	str	r0, [sp, #12]
 8055990: 02 90        	str	r0, [sp, #8]
 8055992: 01 90        	str	r0, [sp, #4]
 8055994: 00 90        	str	r0, [sp]
 8055996: 05 90        	str	r0, [sp, #20]
 8055998: ff e7        	b	0x805599a <Sum+0x12>    @ imm = #-2
 805599a: 05 98        	ldr	r0, [sp, #20]
 805599c: 09 28        	cmp	r0, #9
 805599e: 3e dc        	bgt	0x8055a1e <Sum+0x96>    @ imm = #124
 80559a0: ff e7        	b	0x80559a2 <Sum+0x1a>    @ imm = #-2
 80559a2: 00 20        	movs	r0, #0
 80559a4: 04 90        	str	r0, [sp, #16]
 80559a6: ff e7        	b	0x80559a8 <Sum+0x20>    @ imm = #-2
 80559a8: 04 98        	ldr	r0, [sp, #16]
 80559aa: 09 28        	cmp	r0, #9
 80559ac: 32 dc        	bgt	0x8055a14 <Sum+0x8c>    @ imm = #100
 80559ae: ff e7        	b	0x80559b0 <Sum+0x28>    @ imm = #-2
 80559b0: 06 98        	ldr	r0, [sp, #24]
 80559b2: 05 99        	ldr	r1, [sp, #20]
 80559b4: 01 eb 81 01  	add.w	r1, r1, r1, lsl #2
 80559b8: 00 eb c1 00  	add.w	r0, r0, r1, lsl #3
 80559bc: 04 99        	ldr	r1, [sp, #16]
 80559be: 50 f8 21 00  	ldr.w	r0, [r0, r1, lsl #2]
 80559c2: b0 f1 ff 3f  	cmp.w	r0, #4294967295
 80559c6: 10 dc        	bgt	0x80559ea <Sum+0x62>    @ imm = #32
 80559c8: ff e7        	b	0x80559ca <Sum+0x42>    @ imm = #-2
 80559ca: 06 98        	ldr	r0, [sp, #24]
 80559cc: 05 99        	ldr	r1, [sp, #20]
 80559ce: 01 eb 81 01  	add.w	r1, r1, r1, lsl #2
 80559d2: 00 eb c1 00  	add.w	r0, r0, r1, lsl #3
 80559d6: 04 99        	ldr	r1, [sp, #16]
 80559d8: 50 f8 21 10  	ldr.w	r1, [r0, r1, lsl #2]
 80559dc: 03 98        	ldr	r0, [sp, #12]
 80559de: 08 44        	add	r0, r1
 80559e0: 03 90        	str	r0, [sp, #12]
 80559e2: 01 98        	ldr	r0, [sp, #4]
 80559e4: 01 30        	adds	r0, #1
 80559e6: 01 90        	str	r0, [sp, #4]
 80559e8: 0f e0        	b	0x8055a0a <Sum+0x82>    @ imm = #30
 80559ea: 06 98        	ldr	r0, [sp, #24]
 80559ec: 05 99        	ldr	r1, [sp, #20]
 80559ee: 01 eb 81 01  	add.w	r1, r1, r1, lsl #2
 80559f2: 00 eb c1 00  	add.w	r0, r0, r1, lsl #3
 80559f6: 04 99        	ldr	r1, [sp, #16]
 80559f8: 50 f8 21 10  	ldr.w	r1, [r0, r1, lsl #2]
 80559fc: 02 98        	ldr	r0, [sp, #8]
 80559fe: 08 44        	add	r0, r1
 8055a00: 02 90        	str	r0, [sp, #8]
 8055a02: 00 98        	ldr	r0, [sp]
 8055a04: 01 30        	adds	r0, #1
 8055a06: 00 90        	str	r0, [sp]
 8055a08: ff e7        	b	0x8055a0a <Sum+0x82>    @ imm = #-2
 8055a0a: ff e7        	b	0x8055a0c <Sum+0x84>    @ imm = #-2
 8055a0c: 04 98        	ldr	r0, [sp, #16]
 8055a0e: 01 30        	adds	r0, #1
 8055a10: 04 90        	str	r0, [sp, #16]
 8055a12: c9 e7        	b	0x80559a8 <Sum+0x20>    @ imm = #-110
 8055a14: ff e7        	b	0x8055a16 <Sum+0x8e>    @ imm = #-2
 8055a16: 05 98        	ldr	r0, [sp, #20]
 8055a18: 01 30        	adds	r0, #1
 8055a1a: 05 90        	str	r0, [sp, #20]
 8055a1c: bd e7        	b	0x805599a <Sum+0x12>    @ imm = #-134
 8055a1e: 03 98        	ldr	r0, [sp, #12]
 8055a20: 40 f2 98 11  	movw	r1, #408
 8055a24: c2 f2 00 01  	movt	r1, #8192
 8055a28: 08 60        	str	r0, [r1]
 8055a2a: 01 98        	ldr	r0, [sp, #4]
 8055a2c: 40 f2 9c 11  	movw	r1, #412
 8055a30: c2 f2 00 01  	movt	r1, #8192
 8055a34: 08 60        	str	r0, [r1]
 8055a36: 02 99        	ldr	r1, [sp, #8]
 8055a38: 40 f2 a0 10  	movw	r0, #416
 8055a3c: c2 f2 00 00  	movt	r0, #8192
 8055a40: 01 60        	str	r1, [r0]
 8055a42: 00 99        	ldr	r1, [sp]
 8055a44: 40 f2 a4 12  	movw	r2, #420
 8055a48: c2 f2 00 02  	movt	r2, #8192
 8055a4c: 11 60        	str	r1, [r2]
 8055a4e: 00 68        	ldr	r0, [r0]
 8055a50: 07 b0        	add	sp, #28
 8055a52: 70 47        	bx	lr

08055a54 <Initialize>:
 8055a54: 80 b5        	push	{r7, lr}
 8055a56: 6f 46        	mov	r7, sp
 8055a58: 84 b0        	sub	sp, #16
 8055a5a: 03 90        	str	r0, [sp, #12]
 8055a5c: 00 20        	movs	r0, #0
 8055a5e: 02 90        	str	r0, [sp, #8]
 8055a60: ff e7        	b	0x8055a62 <Initialize+0xe> @ imm = #-2
 8055a62: 02 98        	ldr	r0, [sp, #8]
 8055a64: 09 28        	cmp	r0, #9
 8055a66: 1c dc        	bgt	0x8055aa2 <Initialize+0x4e> @ imm = #56
 8055a68: ff e7        	b	0x8055a6a <Initialize+0x16> @ imm = #-2
 8055a6a: 00 20        	movs	r0, #0
 8055a6c: 01 90        	str	r0, [sp, #4]
 8055a6e: ff e7        	b	0x8055a70 <Initialize+0x1c> @ imm = #-2
 8055a70: 01 98        	ldr	r0, [sp, #4]
 8055a72: 09 28        	cmp	r0, #9
 8055a74: 10 dc        	bgt	0x8055a98 <Initialize+0x44> @ imm = #32
 8055a76: ff e7        	b	0x8055a78 <Initialize+0x24> @ imm = #-2
 8055a78: 00 f0 16 f8  	bl	0x8055aa8 <RandomInteger> @ imm = #44
 8055a7c: 03 99        	ldr	r1, [sp, #12]
 8055a7e: 02 9a        	ldr	r2, [sp, #8]
 8055a80: 02 eb 82 02  	add.w	r2, r2, r2, lsl #2
 8055a84: 01 eb c2 01  	add.w	r1, r1, r2, lsl #3
 8055a88: 01 9a        	ldr	r2, [sp, #4]
 8055a8a: 41 f8 22 00  	str.w	r0, [r1, r2, lsl #2]
 8055a8e: ff e7        	b	0x8055a90 <Initialize+0x3c> @ imm = #-2
 8055a90: 01 98        	ldr	r0, [sp, #4]
 8055a92: 01 30        	adds	r0, #1
 8055a94: 01 90        	str	r0, [sp, #4]
 8055a96: eb e7        	b	0x8055a70 <Initialize+0x1c> @ imm = #-42
 8055a98: ff e7        	b	0x8055a9a <Initialize+0x46> @ imm = #-2
 8055a9a: 02 98        	ldr	r0, [sp, #8]
 8055a9c: 01 30        	adds	r0, #1
 8055a9e: 02 90        	str	r0, [sp, #8]
 8055aa0: df e7        	b	0x8055a62 <Initialize+0xe> @ imm = #-66
 8055aa2: 00 20        	movs	r0, #0
 8055aa4: 04 b0        	add	sp, #16
 8055aa6: 80 bd        	pop	{r7, pc}

08055aa8 <RandomInteger>:
 8055aa8: 40 f2 94 10  	movw	r0, #404
 8055aac: c2 f2 00 00  	movt	r0, #8192
 8055ab0: 01 68        	ldr	r1, [r0]
 8055ab2: 85 22        	movs	r2, #133
 8055ab4: 51 43        	muls	r1, r2, r1
 8055ab6: 01 f1 51 03  	add.w	r3, r1, #81
 8055aba: 41 f2 c7 41  	movw	r1, #5319
 8055abe: c1 f2 31 01  	movt	r1, #4145
 8055ac2: 53           	<unknown>
 8055ac3: fb 01        	lsls	r3, r7, #7
 8055ac5: f2 51        	str	r2, [r6, r7]
 8055ac7: 12 01        	lsls	r2, r2, #4
 8055ac9: eb d2        	bhs	0x8055aa3 <Initialize+0x4f> @ imm = #-42
 8055acb: 71 41        	adcs	r1, r6
 8055acd: f6 9f        	ldr	r7, [sp, #984]
 8055acf: 72 01        	lsls	r2, r6, #5
 8055ad1: fb 12        	asrs	r3, r7, #11
 8055ad3: 31 01        	lsls	r1, r6, #4
 8055ad5: 60 00        	lsls	r0, r4, #1
 8055ad7: 68 70        	strb	r0, [r5, #1]
 8055ad9: 47 40        	eors	r7, r0

08055ada <InitSeed>:
 8055ada: 40 f2 94 11  	movw	r1, #404
 8055ade: c2 f2 00 01  	movt	r1, #8192
 8055ae2: 00 20        	movs	r0, #0
 8055ae4: 08 60        	str	r0, [r1]
 8055ae6: 70 47        	bx	lr

08055ae8 <initialise_benchmark>:
 8055ae8: 80 b5        	push	{r7, lr}
 8055aea: 6f 46        	mov	r7, sp
 8055aec: ff f7 f5 ff  	bl	0x8055ada <InitSeed>    @ imm = #-22
 8055af0: 40 f2 04 00  	movw	r0, #4
 8055af4: c2 f2 00 00  	movt	r0, #8192
 8055af8: ff f7 ac ff  	bl	0x8055a54 <Initialize>  @ imm = #-168
 8055afc: 80 bd        	pop	{r7, pc}

08055afe <verify_benchmark>:
 8055afe: 83 b0        	sub	sp, #12
 8055b00: 01 90        	str	r0, [sp, #4]
 8055b02: 40 f6 83 50  	movw	r0, #3459
 8055b06: c0 f2 06 00  	movt	r0, #6
 8055b0a: 00 90        	str	r0, [sp]
 8055b0c: 00 98        	ldr	r0, [sp]
 8055b0e: 01 99        	ldr	r1, [sp, #4]
 8055b10: 88 42        	cmp	r0, r1
 8055b12: 03 d0        	beq	0x8055b1c <verify_benchmark+0x1e> @ imm = #6
 8055b14: ff e7        	b	0x8055b16 <verify_benchmark+0x18> @ imm = #-2
 8055b16: 00 20        	movs	r0, #0
 8055b18: 02 90        	str	r0, [sp, #8]
 8055b1a: 02 e0        	b	0x8055b22 <verify_benchmark+0x24> @ imm = #4
 8055b1c: 01 20        	movs	r0, #1
 8055b1e: 02 90        	str	r0, [sp, #8]
 8055b20: ff e7        	b	0x8055b22 <verify_benchmark+0x24> @ imm = #-2
 8055b22: 02 98        	ldr	r0, [sp, #8]
 8055b24: 03 b0        	add	sp, #12
 8055b26: 70 47        	bx	lr
