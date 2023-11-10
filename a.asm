
build/bin/ns_app.elf:     file format elf32-littlearm


Disassembly of section .text:

08055000 <__Vectors>:
 8055000:	c0 4e 00 20 51 05 06 08 a5 02 06 08 ab 02 06 08     .N. Q...........
 8055010:	b1 02 06 08 b7 02 06 08 bd 02 06 08 c3 02 06 08     ................
	...
 805502c:	a7 f2 05 08 c9 02 06 08 00 00 00 00 f1 f1 05 08     ................
 805503c:	29 ed 05 08 cf 02 06 08 d5 02 06 08 db 02 06 08     )...............
 805504c:	e1 02 06 08 e7 02 06 08 ed 02 06 08 f3 02 06 08     ................
 805505c:	f9 02 06 08 ff 02 06 08 05 03 06 08 0b 03 06 08     ................
 805506c:	11 03 06 08 17 03 06 08 1d 03 06 08 23 03 06 08     ............#...
 805507c:	29 03 06 08 2f 03 06 08 35 03 06 08 3b 03 06 08     ).../...5...;...
 805508c:	41 03 06 08 47 03 06 08 4d 03 06 08 53 03 06 08     A...G...M...S...
 805509c:	59 03 06 08 5f 03 06 08 65 03 06 08 6b 03 06 08     Y..._...e...k...
 80550ac:	71 03 06 08 77 03 06 08 7d 03 06 08 83 03 06 08     q...w...}.......
 80550bc:	89 03 06 08 8f 03 06 08 95 03 06 08 9b 03 06 08     ................
 80550cc:	a1 03 06 08 a7 03 06 08 ad 03 06 08 b3 03 06 08     ................
 80550dc:	b9 03 06 08 bf 03 06 08 c5 03 06 08 cb 03 06 08     ................
 80550ec:	d1 03 06 08 d7 03 06 08 dd 03 06 08 e3 03 06 08     ................
 80550fc:	e9 03 06 08 ef 03 06 08 f5 03 06 08 fb 03 06 08     ................
 805510c:	01 04 06 08 07 04 06 08 0d 04 06 08 13 04 06 08     ................
 805511c:	19 04 06 08 1f 04 06 08 25 04 06 08 2b 04 06 08     ........%...+...
 805512c:	31 04 06 08 37 04 06 08 3d 04 06 08 43 04 06 08     1...7...=...C...
 805513c:	49 04 06 08 4f 04 06 08 55 04 06 08 5b 04 06 08     I...O...U...[...
 805514c:	61 04 06 08 67 04 06 08 6d 04 06 08 73 04 06 08     a...g...m...s...
 805515c:	79 04 06 08 7f 04 06 08 85 04 06 08 8b 04 06 08     y...............
 805516c:	91 04 06 08 97 04 06 08 00 00 00 00 9d 04 06 08     ................
 805517c:	00 00 00 00 a3 04 06 08 a9 04 06 08 af 04 06 08     ................
 805518c:	b5 04 06 08 bb 04 06 08 c1 04 06 08 c7 04 06 08     ................
 805519c:	cd 04 06 08 d3 04 06 08 d9 04 06 08 df 04 06 08     ................
 80551ac:	e5 04 06 08 eb 04 06 08 f1 04 06 08 f7 04 06 08     ................
 80551bc:	fd 04 06 08 03 05 06 08 09 05 06 08 0f 05 06 08     ................
 80551cc:	15 05 06 08 1b 05 06 08 21 05 06 08 27 05 06 08     ........!...'...
 80551dc:	2d 05 06 08 33 05 06 08 39 05 06 08 3f 05 06 08     -...3...9...?...
 80551ec:	45 05 06 08 4b 05 06 08                             E...K...

080551f4 <_init>:
 80551f4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80551f6:	bf00      	nop
 80551f8:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80551fa:	bc08      	pop	{r3}
 80551fc:	469e      	mov	lr, r3
 80551fe:	4770      	bx	lr

08055200 <_fini>:
 8055200:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8055202:	bf00      	nop
 8055204:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8055206:	bc08      	pop	{r3}
 8055208:	469e      	mov	lr, r3
 805520a:	4770      	bx	lr

0805520c <__EH_FRAME_BEGIN__>:
 805520c:	0000 0000                                   ....

Disassembly of section .privileged_functions:

08055220 <xTaskCreate>:
 8055220:	b580      	push	{r7, lr}
 8055222:	b088      	sub	sp, #32
 8055224:	af02      	add	r7, sp, #8
 8055226:	60f8      	str	r0, [r7, #12]
 8055228:	60b9      	str	r1, [r7, #8]
 805522a:	603b      	str	r3, [r7, #0]
 805522c:	4613      	mov	r3, r2
 805522e:	80fb      	strh	r3, [r7, #6]
 8055230:	88fa      	ldrh	r2, [r7, #6]
 8055232:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8055234:	9301      	str	r3, [sp, #4]
 8055236:	6a3b      	ldr	r3, [r7, #32]
 8055238:	9300      	str	r3, [sp, #0]
 805523a:	683b      	ldr	r3, [r7, #0]
 805523c:	68b9      	ldr	r1, [r7, #8]
 805523e:	68f8      	ldr	r0, [r7, #12]
 8055240:	f002 ff9e 	bl	8058180 <prvCreateTask>
 8055244:	6138      	str	r0, [r7, #16]
 8055246:	693b      	ldr	r3, [r7, #16]
 8055248:	2b00      	cmp	r3, #0
 805524a:	d005      	beq.n	8055258 <xTaskCreate+0x38>
 805524c:	6938      	ldr	r0, [r7, #16]
 805524e:	f002 fea7 	bl	8057fa0 <prvAddNewTaskToReadyList>
 8055252:	2301      	movs	r3, #1
 8055254:	617b      	str	r3, [r7, #20]
 8055256:	e002      	b.n	805525e <xTaskCreate+0x3e>
 8055258:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 805525c:	617b      	str	r3, [r7, #20]
 805525e:	697b      	ldr	r3, [r7, #20]
 8055260:	4618      	mov	r0, r3
 8055262:	3718      	adds	r7, #24
 8055264:	46bd      	mov	sp, r7
 8055266:	bd80      	pop	{r7, pc}

08055268 <xTaskCreateRestricted>:
 8055268:	b580      	push	{r7, lr}
 805526a:	b084      	sub	sp, #16
 805526c:	af00      	add	r7, sp, #0
 805526e:	6078      	str	r0, [r7, #4]
 8055270:	6039      	str	r1, [r7, #0]
 8055272:	6839      	ldr	r1, [r7, #0]
 8055274:	6878      	ldr	r0, [r7, #4]
 8055276:	f002 ff37 	bl	80580e8 <prvCreateRestrictedTask>
 805527a:	60b8      	str	r0, [r7, #8]
 805527c:	68bb      	ldr	r3, [r7, #8]
 805527e:	2b00      	cmp	r3, #0
 8055280:	d005      	beq.n	805528e <xTaskCreateRestricted+0x26>
 8055282:	68b8      	ldr	r0, [r7, #8]
 8055284:	f002 fe8c 	bl	8057fa0 <prvAddNewTaskToReadyList>
 8055288:	2301      	movs	r3, #1
 805528a:	60fb      	str	r3, [r7, #12]
 805528c:	e002      	b.n	8055294 <xTaskCreateRestricted+0x2c>
 805528e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8055292:	60fb      	str	r3, [r7, #12]
 8055294:	68fb      	ldr	r3, [r7, #12]
 8055296:	4618      	mov	r0, r3
 8055298:	3710      	adds	r7, #16
 805529a:	46bd      	mov	sp, r7
 805529c:	bd80      	pop	{r7, pc}

0805529e <vTaskAllocateMPURegions>:
 805529e:	b590      	push	{r4, r7, lr}
 80552a0:	b085      	sub	sp, #20
 80552a2:	af00      	add	r7, sp, #0
 80552a4:	6078      	str	r0, [r7, #4]
 80552a6:	6039      	str	r1, [r7, #0]
 80552a8:	687b      	ldr	r3, [r7, #4]
 80552aa:	2b00      	cmp	r3, #0
 80552ac:	d102      	bne.n	80552b4 <vTaskAllocateMPURegions+0x16>
 80552ae:	4b08      	ldr	r3, [pc, #32]	; (80552d0 <vTaskAllocateMPURegions+0x32>)
 80552b0:	681b      	ldr	r3, [r3, #0]
 80552b2:	e000      	b.n	80552b6 <vTaskAllocateMPURegions+0x18>
 80552b4:	687b      	ldr	r3, [r7, #4]
 80552b6:	60fb      	str	r3, [r7, #12]
 80552b8:	68fb      	ldr	r3, [r7, #12]
 80552ba:	1d18      	adds	r0, r3, #4
 80552bc:	2300      	movs	r3, #0
 80552be:	2200      	movs	r2, #0
 80552c0:	6839      	ldr	r1, [r7, #0]
 80552c2:	4c04      	ldr	r4, [pc, #16]	; (80552d4 <vTaskAllocateMPURegions+0x36>)
 80552c4:	47a0      	blx	r4
 80552c6:	bf00      	nop
 80552c8:	3714      	adds	r7, #20
 80552ca:	46bd      	mov	sp, r7
 80552cc:	bd90      	pop	{r4, r7, pc}
 80552ce:	bf00      	nop
 80552d0:	20000100 	.word	0x20000100
 80552d4:	0805e801 	.word	0x0805e801

080552d8 <vTaskDelete>:
 80552d8:	b580      	push	{r7, lr}
 80552da:	b084      	sub	sp, #16
 80552dc:	af00      	add	r7, sp, #0
 80552de:	6078      	str	r0, [r7, #4]
 80552e0:	4b2c      	ldr	r3, [pc, #176]	; (8055394 <vTaskDelete+0xbc>)
 80552e2:	4798      	blx	r3
 80552e4:	687b      	ldr	r3, [r7, #4]
 80552e6:	2b00      	cmp	r3, #0
 80552e8:	d102      	bne.n	80552f0 <vTaskDelete+0x18>
 80552ea:	4b2b      	ldr	r3, [pc, #172]	; (8055398 <vTaskDelete+0xc0>)
 80552ec:	681b      	ldr	r3, [r3, #0]
 80552ee:	e000      	b.n	80552f2 <vTaskDelete+0x1a>
 80552f0:	687b      	ldr	r3, [r7, #4]
 80552f2:	60fb      	str	r3, [r7, #12]
 80552f4:	68fb      	ldr	r3, [r7, #12]
 80552f6:	f503 7325 	add.w	r3, r3, #660	; 0x294
 80552fa:	4618      	mov	r0, r3
 80552fc:	4b27      	ldr	r3, [pc, #156]	; (805539c <vTaskDelete+0xc4>)
 80552fe:	4798      	blx	r3
 8055300:	68fb      	ldr	r3, [r7, #12]
 8055302:	f8d3 32b8 	ldr.w	r3, [r3, #696]	; 0x2b8
 8055306:	2b00      	cmp	r3, #0
 8055308:	d005      	beq.n	8055316 <vTaskDelete+0x3e>
 805530a:	68fb      	ldr	r3, [r7, #12]
 805530c:	f503 732a 	add.w	r3, r3, #680	; 0x2a8
 8055310:	4618      	mov	r0, r3
 8055312:	4b22      	ldr	r3, [pc, #136]	; (805539c <vTaskDelete+0xc4>)
 8055314:	4798      	blx	r3
 8055316:	4b22      	ldr	r3, [pc, #136]	; (80553a0 <vTaskDelete+0xc8>)
 8055318:	681b      	ldr	r3, [r3, #0]
 805531a:	3301      	adds	r3, #1
 805531c:	4a20      	ldr	r2, [pc, #128]	; (80553a0 <vTaskDelete+0xc8>)
 805531e:	6013      	str	r3, [r2, #0]
 8055320:	4b1d      	ldr	r3, [pc, #116]	; (8055398 <vTaskDelete+0xc0>)
 8055322:	681b      	ldr	r3, [r3, #0]
 8055324:	68fa      	ldr	r2, [r7, #12]
 8055326:	429a      	cmp	r2, r3
 8055328:	d10c      	bne.n	8055344 <vTaskDelete+0x6c>
 805532a:	68fb      	ldr	r3, [r7, #12]
 805532c:	f503 7325 	add.w	r3, r3, #660	; 0x294
 8055330:	4619      	mov	r1, r3
 8055332:	481c      	ldr	r0, [pc, #112]	; (80553a4 <vTaskDelete+0xcc>)
 8055334:	4b1c      	ldr	r3, [pc, #112]	; (80553a8 <vTaskDelete+0xd0>)
 8055336:	4798      	blx	r3
 8055338:	4b1c      	ldr	r3, [pc, #112]	; (80553ac <vTaskDelete+0xd4>)
 805533a:	681b      	ldr	r3, [r3, #0]
 805533c:	3301      	adds	r3, #1
 805533e:	4a1b      	ldr	r2, [pc, #108]	; (80553ac <vTaskDelete+0xd4>)
 8055340:	6013      	str	r3, [r2, #0]
 8055342:	e006      	b.n	8055352 <vTaskDelete+0x7a>
 8055344:	4b1a      	ldr	r3, [pc, #104]	; (80553b0 <vTaskDelete+0xd8>)
 8055346:	681b      	ldr	r3, [r3, #0]
 8055348:	3b01      	subs	r3, #1
 805534a:	4a19      	ldr	r2, [pc, #100]	; (80553b0 <vTaskDelete+0xd8>)
 805534c:	6013      	str	r3, [r2, #0]
 805534e:	f002 fd5c 	bl	8057e0a <prvResetNextTaskUnblockTime>
 8055352:	4b18      	ldr	r3, [pc, #96]	; (80553b4 <vTaskDelete+0xdc>)
 8055354:	4798      	blx	r3
 8055356:	4b10      	ldr	r3, [pc, #64]	; (8055398 <vTaskDelete+0xc0>)
 8055358:	681b      	ldr	r3, [r3, #0]
 805535a:	68fa      	ldr	r2, [r7, #12]
 805535c:	429a      	cmp	r2, r3
 805535e:	d002      	beq.n	8055366 <vTaskDelete+0x8e>
 8055360:	68f8      	ldr	r0, [r7, #12]
 8055362:	f002 fc0b 	bl	8057b7c <prvDeleteTCB>
 8055366:	4b14      	ldr	r3, [pc, #80]	; (80553b8 <vTaskDelete+0xe0>)
 8055368:	681b      	ldr	r3, [r3, #0]
 805536a:	2b00      	cmp	r3, #0
 805536c:	d00d      	beq.n	805538a <vTaskDelete+0xb2>
 805536e:	4b0a      	ldr	r3, [pc, #40]	; (8055398 <vTaskDelete+0xc0>)
 8055370:	681b      	ldr	r3, [r3, #0]
 8055372:	68fa      	ldr	r2, [r7, #12]
 8055374:	429a      	cmp	r2, r3
 8055376:	d108      	bne.n	805538a <vTaskDelete+0xb2>
 8055378:	4b10      	ldr	r3, [pc, #64]	; (80553bc <vTaskDelete+0xe4>)
 805537a:	681b      	ldr	r3, [r3, #0]
 805537c:	2b00      	cmp	r3, #0
 805537e:	d002      	beq.n	8055386 <vTaskDelete+0xae>
 8055380:	4b0f      	ldr	r3, [pc, #60]	; (80553c0 <vTaskDelete+0xe8>)
 8055382:	4798      	blx	r3
 8055384:	e7fe      	b.n	8055384 <vTaskDelete+0xac>
 8055386:	4b0f      	ldr	r3, [pc, #60]	; (80553c4 <vTaskDelete+0xec>)
 8055388:	4798      	blx	r3
 805538a:	bf00      	nop
 805538c:	3710      	adds	r7, #16
 805538e:	46bd      	mov	sp, r7
 8055390:	bd80      	pop	{r7, pc}
 8055392:	bf00      	nop
 8055394:	0805ecc5 	.word	0x0805ecc5
 8055398:	20000100 	.word	0x20000100
 805539c:	0805c449 	.word	0x0805c449
 80553a0:	200002d0 	.word	0x200002d0
 80553a4:	20000288 	.word	0x20000288
 80553a8:	0805c403 	.word	0x0805c403
 80553ac:	2000029c 	.word	0x2000029c
 80553b0:	200002b4 	.word	0x200002b4
 80553b4:	0805eced 	.word	0x0805eced
 80553b8:	200002c0 	.word	0x200002c0
 80553bc:	200002dc 	.word	0x200002dc
 80553c0:	0805f1c7 	.word	0x0805f1c7
 80553c4:	0805eca5 	.word	0x0805eca5

080553c8 <vTaskDelay>:
 80553c8:	b580      	push	{r7, lr}
 80553ca:	b084      	sub	sp, #16
 80553cc:	af00      	add	r7, sp, #0
 80553ce:	6078      	str	r0, [r7, #4]
 80553d0:	2300      	movs	r3, #0
 80553d2:	60fb      	str	r3, [r7, #12]
 80553d4:	687b      	ldr	r3, [r7, #4]
 80553d6:	2b00      	cmp	r3, #0
 80553d8:	d00f      	beq.n	80553fa <vTaskDelay+0x32>
 80553da:	f000 fcef 	bl	8055dbc <vTaskSuspendAll>
 80553de:	4b0b      	ldr	r3, [pc, #44]	; (805540c <vTaskDelay+0x44>)
 80553e0:	681b      	ldr	r3, [r3, #0]
 80553e2:	2b01      	cmp	r3, #1
 80553e4:	d002      	beq.n	80553ec <vTaskDelay+0x24>
 80553e6:	4b0a      	ldr	r3, [pc, #40]	; (8055410 <vTaskDelay+0x48>)
 80553e8:	4798      	blx	r3
 80553ea:	e7fe      	b.n	80553ea <vTaskDelay+0x22>
 80553ec:	2100      	movs	r1, #0
 80553ee:	6878      	ldr	r0, [r7, #4]
 80553f0:	f002 fc24 	bl	8057c3c <prvAddCurrentTaskToDelayedList>
 80553f4:	f000 fcf0 	bl	8055dd8 <xTaskResumeAll>
 80553f8:	60f8      	str	r0, [r7, #12]
 80553fa:	68fb      	ldr	r3, [r7, #12]
 80553fc:	2b00      	cmp	r3, #0
 80553fe:	d101      	bne.n	8055404 <vTaskDelay+0x3c>
 8055400:	4b04      	ldr	r3, [pc, #16]	; (8055414 <vTaskDelay+0x4c>)
 8055402:	4798      	blx	r3
 8055404:	bf00      	nop
 8055406:	3710      	adds	r7, #16
 8055408:	46bd      	mov	sp, r7
 805540a:	bd80      	pop	{r7, pc}
 805540c:	200002dc 	.word	0x200002dc
 8055410:	0805f1c7 	.word	0x0805f1c7
 8055414:	0805eca5 	.word	0x0805eca5

08055418 <xTaskDelayUntil>:
 8055418:	b580      	push	{r7, lr}
 805541a:	b086      	sub	sp, #24
 805541c:	af00      	add	r7, sp, #0
 805541e:	6078      	str	r0, [r7, #4]
 8055420:	6039      	str	r1, [r7, #0]
 8055422:	2300      	movs	r3, #0
 8055424:	617b      	str	r3, [r7, #20]
 8055426:	687b      	ldr	r3, [r7, #4]
 8055428:	2b00      	cmp	r3, #0
 805542a:	d102      	bne.n	8055432 <xTaskDelayUntil+0x1a>
 805542c:	4b27      	ldr	r3, [pc, #156]	; (80554cc <xTaskDelayUntil+0xb4>)
 805542e:	4798      	blx	r3
 8055430:	e7fe      	b.n	8055430 <xTaskDelayUntil+0x18>
 8055432:	683b      	ldr	r3, [r7, #0]
 8055434:	2b00      	cmp	r3, #0
 8055436:	d102      	bne.n	805543e <xTaskDelayUntil+0x26>
 8055438:	4b24      	ldr	r3, [pc, #144]	; (80554cc <xTaskDelayUntil+0xb4>)
 805543a:	4798      	blx	r3
 805543c:	e7fe      	b.n	805543c <xTaskDelayUntil+0x24>
 805543e:	f000 fcbd 	bl	8055dbc <vTaskSuspendAll>
 8055442:	4b23      	ldr	r3, [pc, #140]	; (80554d0 <xTaskDelayUntil+0xb8>)
 8055444:	681b      	ldr	r3, [r3, #0]
 8055446:	613b      	str	r3, [r7, #16]
 8055448:	4b22      	ldr	r3, [pc, #136]	; (80554d4 <xTaskDelayUntil+0xbc>)
 805544a:	681b      	ldr	r3, [r3, #0]
 805544c:	2b01      	cmp	r3, #1
 805544e:	d002      	beq.n	8055456 <xTaskDelayUntil+0x3e>
 8055450:	4b1e      	ldr	r3, [pc, #120]	; (80554cc <xTaskDelayUntil+0xb4>)
 8055452:	4798      	blx	r3
 8055454:	e7fe      	b.n	8055454 <xTaskDelayUntil+0x3c>
 8055456:	687b      	ldr	r3, [r7, #4]
 8055458:	681b      	ldr	r3, [r3, #0]
 805545a:	683a      	ldr	r2, [r7, #0]
 805545c:	4413      	add	r3, r2
 805545e:	60fb      	str	r3, [r7, #12]
 8055460:	687b      	ldr	r3, [r7, #4]
 8055462:	681b      	ldr	r3, [r3, #0]
 8055464:	693a      	ldr	r2, [r7, #16]
 8055466:	429a      	cmp	r2, r3
 8055468:	d20b      	bcs.n	8055482 <xTaskDelayUntil+0x6a>
 805546a:	687b      	ldr	r3, [r7, #4]
 805546c:	681b      	ldr	r3, [r3, #0]
 805546e:	68fa      	ldr	r2, [r7, #12]
 8055470:	429a      	cmp	r2, r3
 8055472:	d211      	bcs.n	8055498 <xTaskDelayUntil+0x80>
 8055474:	68fa      	ldr	r2, [r7, #12]
 8055476:	693b      	ldr	r3, [r7, #16]
 8055478:	429a      	cmp	r2, r3
 805547a:	d90d      	bls.n	8055498 <xTaskDelayUntil+0x80>
 805547c:	2301      	movs	r3, #1
 805547e:	617b      	str	r3, [r7, #20]
 8055480:	e00a      	b.n	8055498 <xTaskDelayUntil+0x80>
 8055482:	687b      	ldr	r3, [r7, #4]
 8055484:	681b      	ldr	r3, [r3, #0]
 8055486:	68fa      	ldr	r2, [r7, #12]
 8055488:	429a      	cmp	r2, r3
 805548a:	d303      	bcc.n	8055494 <xTaskDelayUntil+0x7c>
 805548c:	68fa      	ldr	r2, [r7, #12]
 805548e:	693b      	ldr	r3, [r7, #16]
 8055490:	429a      	cmp	r2, r3
 8055492:	d901      	bls.n	8055498 <xTaskDelayUntil+0x80>
 8055494:	2301      	movs	r3, #1
 8055496:	617b      	str	r3, [r7, #20]
 8055498:	687b      	ldr	r3, [r7, #4]
 805549a:	68fa      	ldr	r2, [r7, #12]
 805549c:	601a      	str	r2, [r3, #0]
 805549e:	697b      	ldr	r3, [r7, #20]
 80554a0:	2b00      	cmp	r3, #0
 80554a2:	d006      	beq.n	80554b2 <xTaskDelayUntil+0x9a>
 80554a4:	68fa      	ldr	r2, [r7, #12]
 80554a6:	693b      	ldr	r3, [r7, #16]
 80554a8:	1ad3      	subs	r3, r2, r3
 80554aa:	2100      	movs	r1, #0
 80554ac:	4618      	mov	r0, r3
 80554ae:	f002 fbc5 	bl	8057c3c <prvAddCurrentTaskToDelayedList>
 80554b2:	f000 fc91 	bl	8055dd8 <xTaskResumeAll>
 80554b6:	60b8      	str	r0, [r7, #8]
 80554b8:	68bb      	ldr	r3, [r7, #8]
 80554ba:	2b00      	cmp	r3, #0
 80554bc:	d101      	bne.n	80554c2 <xTaskDelayUntil+0xaa>
 80554be:	4b06      	ldr	r3, [pc, #24]	; (80554d8 <xTaskDelayUntil+0xc0>)
 80554c0:	4798      	blx	r3
 80554c2:	697b      	ldr	r3, [r7, #20]
 80554c4:	4618      	mov	r0, r3
 80554c6:	3718      	adds	r7, #24
 80554c8:	46bd      	mov	sp, r7
 80554ca:	bd80      	pop	{r7, pc}
 80554cc:	0805f1c7 	.word	0x0805f1c7
 80554d0:	200002b8 	.word	0x200002b8
 80554d4:	200002dc 	.word	0x200002dc
 80554d8:	0805eca5 	.word	0x0805eca5

080554dc <uxTaskPriorityGet>:
 80554dc:	b580      	push	{r7, lr}
 80554de:	b084      	sub	sp, #16
 80554e0:	af00      	add	r7, sp, #0
 80554e2:	6078      	str	r0, [r7, #4]
 80554e4:	4b0a      	ldr	r3, [pc, #40]	; (8055510 <uxTaskPriorityGet+0x34>)
 80554e6:	4798      	blx	r3
 80554e8:	687b      	ldr	r3, [r7, #4]
 80554ea:	2b00      	cmp	r3, #0
 80554ec:	d102      	bne.n	80554f4 <uxTaskPriorityGet+0x18>
 80554ee:	4b09      	ldr	r3, [pc, #36]	; (8055514 <uxTaskPriorityGet+0x38>)
 80554f0:	681b      	ldr	r3, [r3, #0]
 80554f2:	e000      	b.n	80554f6 <uxTaskPriorityGet+0x1a>
 80554f4:	687b      	ldr	r3, [r7, #4]
 80554f6:	60fb      	str	r3, [r7, #12]
 80554f8:	68fb      	ldr	r3, [r7, #12]
 80554fa:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 80554fe:	60bb      	str	r3, [r7, #8]
 8055500:	4b05      	ldr	r3, [pc, #20]	; (8055518 <uxTaskPriorityGet+0x3c>)
 8055502:	4798      	blx	r3
 8055504:	68bb      	ldr	r3, [r7, #8]
 8055506:	4618      	mov	r0, r3
 8055508:	3710      	adds	r7, #16
 805550a:	46bd      	mov	sp, r7
 805550c:	bd80      	pop	{r7, pc}
 805550e:	bf00      	nop
 8055510:	0805ecc5 	.word	0x0805ecc5
 8055514:	20000100 	.word	0x20000100
 8055518:	0805eced 	.word	0x0805eced

0805551c <uxTaskPriorityGetFromISR>:
 805551c:	b580      	push	{r7, lr}
 805551e:	b086      	sub	sp, #24
 8055520:	af00      	add	r7, sp, #0
 8055522:	6078      	str	r0, [r7, #4]
 8055524:	4b0c      	ldr	r3, [pc, #48]	; (8055558 <uxTaskPriorityGetFromISR+0x3c>)
 8055526:	4798      	blx	r3
 8055528:	4b0c      	ldr	r3, [pc, #48]	; (805555c <uxTaskPriorityGetFromISR+0x40>)
 805552a:	4798      	blx	r3
 805552c:	6178      	str	r0, [r7, #20]
 805552e:	687b      	ldr	r3, [r7, #4]
 8055530:	2b00      	cmp	r3, #0
 8055532:	d102      	bne.n	805553a <uxTaskPriorityGetFromISR+0x1e>
 8055534:	4b0a      	ldr	r3, [pc, #40]	; (8055560 <uxTaskPriorityGetFromISR+0x44>)
 8055536:	681b      	ldr	r3, [r3, #0]
 8055538:	e000      	b.n	805553c <uxTaskPriorityGetFromISR+0x20>
 805553a:	687b      	ldr	r3, [r7, #4]
 805553c:	613b      	str	r3, [r7, #16]
 805553e:	693b      	ldr	r3, [r7, #16]
 8055540:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 8055544:	60fb      	str	r3, [r7, #12]
 8055546:	6978      	ldr	r0, [r7, #20]
 8055548:	4b06      	ldr	r3, [pc, #24]	; (8055564 <uxTaskPriorityGetFromISR+0x48>)
 805554a:	4798      	blx	r3
 805554c:	68fb      	ldr	r3, [r7, #12]
 805554e:	4618      	mov	r0, r3
 8055550:	3718      	adds	r7, #24
 8055552:	46bd      	mov	sp, r7
 8055554:	bd80      	pop	{r7, pc}
 8055556:	bf00      	nop
 8055558:	080607fd 	.word	0x080607fd
 805555c:	0805f1c7 	.word	0x0805f1c7
 8055560:	20000100 	.word	0x20000100
 8055564:	0805f1e1 	.word	0x0805f1e1

08055568 <uxTaskBasePriorityGet>:
 8055568:	b580      	push	{r7, lr}
 805556a:	b084      	sub	sp, #16
 805556c:	af00      	add	r7, sp, #0
 805556e:	6078      	str	r0, [r7, #4]
 8055570:	4b0a      	ldr	r3, [pc, #40]	; (805559c <uxTaskBasePriorityGet+0x34>)
 8055572:	4798      	blx	r3
 8055574:	687b      	ldr	r3, [r7, #4]
 8055576:	2b00      	cmp	r3, #0
 8055578:	d102      	bne.n	8055580 <uxTaskBasePriorityGet+0x18>
 805557a:	4b09      	ldr	r3, [pc, #36]	; (80555a0 <uxTaskBasePriorityGet+0x38>)
 805557c:	681b      	ldr	r3, [r3, #0]
 805557e:	e000      	b.n	8055582 <uxTaskBasePriorityGet+0x1a>
 8055580:	687b      	ldr	r3, [r7, #4]
 8055582:	60fb      	str	r3, [r7, #12]
 8055584:	68fb      	ldr	r3, [r7, #12]
 8055586:	f8d3 32dc 	ldr.w	r3, [r3, #732]	; 0x2dc
 805558a:	60bb      	str	r3, [r7, #8]
 805558c:	4b05      	ldr	r3, [pc, #20]	; (80555a4 <uxTaskBasePriorityGet+0x3c>)
 805558e:	4798      	blx	r3
 8055590:	68bb      	ldr	r3, [r7, #8]
 8055592:	4618      	mov	r0, r3
 8055594:	3710      	adds	r7, #16
 8055596:	46bd      	mov	sp, r7
 8055598:	bd80      	pop	{r7, pc}
 805559a:	bf00      	nop
 805559c:	0805ecc5 	.word	0x0805ecc5
 80555a0:	20000100 	.word	0x20000100
 80555a4:	0805eced 	.word	0x0805eced

080555a8 <uxTaskBasePriorityGetFromISR>:
 80555a8:	b580      	push	{r7, lr}
 80555aa:	b086      	sub	sp, #24
 80555ac:	af00      	add	r7, sp, #0
 80555ae:	6078      	str	r0, [r7, #4]
 80555b0:	4b0c      	ldr	r3, [pc, #48]	; (80555e4 <uxTaskBasePriorityGetFromISR+0x3c>)
 80555b2:	4798      	blx	r3
 80555b4:	4b0c      	ldr	r3, [pc, #48]	; (80555e8 <uxTaskBasePriorityGetFromISR+0x40>)
 80555b6:	4798      	blx	r3
 80555b8:	6178      	str	r0, [r7, #20]
 80555ba:	687b      	ldr	r3, [r7, #4]
 80555bc:	2b00      	cmp	r3, #0
 80555be:	d102      	bne.n	80555c6 <uxTaskBasePriorityGetFromISR+0x1e>
 80555c0:	4b0a      	ldr	r3, [pc, #40]	; (80555ec <uxTaskBasePriorityGetFromISR+0x44>)
 80555c2:	681b      	ldr	r3, [r3, #0]
 80555c4:	e000      	b.n	80555c8 <uxTaskBasePriorityGetFromISR+0x20>
 80555c6:	687b      	ldr	r3, [r7, #4]
 80555c8:	613b      	str	r3, [r7, #16]
 80555ca:	693b      	ldr	r3, [r7, #16]
 80555cc:	f8d3 32dc 	ldr.w	r3, [r3, #732]	; 0x2dc
 80555d0:	60fb      	str	r3, [r7, #12]
 80555d2:	6978      	ldr	r0, [r7, #20]
 80555d4:	4b06      	ldr	r3, [pc, #24]	; (80555f0 <uxTaskBasePriorityGetFromISR+0x48>)
 80555d6:	4798      	blx	r3
 80555d8:	68fb      	ldr	r3, [r7, #12]
 80555da:	4618      	mov	r0, r3
 80555dc:	3718      	adds	r7, #24
 80555de:	46bd      	mov	sp, r7
 80555e0:	bd80      	pop	{r7, pc}
 80555e2:	bf00      	nop
 80555e4:	080607fd 	.word	0x080607fd
 80555e8:	0805f1c7 	.word	0x0805f1c7
 80555ec:	20000100 	.word	0x20000100
 80555f0:	0805f1e1 	.word	0x0805f1e1

080555f4 <eTaskGetState>:
 80555f4:	b580      	push	{r7, lr}
 80555f6:	b08a      	sub	sp, #40	; 0x28
 80555f8:	af00      	add	r7, sp, #0
 80555fa:	6078      	str	r0, [r7, #4]
 80555fc:	687b      	ldr	r3, [r7, #4]
 80555fe:	61fb      	str	r3, [r7, #28]
 8055600:	69fb      	ldr	r3, [r7, #28]
 8055602:	2b00      	cmp	r3, #0
 8055604:	d102      	bne.n	805560c <eTaskGetState+0x18>
 8055606:	4b36      	ldr	r3, [pc, #216]	; (80556e0 <eTaskGetState+0xec>)
 8055608:	4798      	blx	r3
 805560a:	e7fe      	b.n	805560a <eTaskGetState+0x16>
 805560c:	4b35      	ldr	r3, [pc, #212]	; (80556e4 <eTaskGetState+0xf0>)
 805560e:	681b      	ldr	r3, [r3, #0]
 8055610:	69fa      	ldr	r2, [r7, #28]
 8055612:	429a      	cmp	r2, r3
 8055614:	d103      	bne.n	805561e <eTaskGetState+0x2a>
 8055616:	2300      	movs	r3, #0
 8055618:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
 805561c:	e05a      	b.n	80556d4 <eTaskGetState+0xe0>
 805561e:	4b32      	ldr	r3, [pc, #200]	; (80556e8 <eTaskGetState+0xf4>)
 8055620:	4798      	blx	r3
 8055622:	69fb      	ldr	r3, [r7, #28]
 8055624:	f8d3 32a4 	ldr.w	r3, [r3, #676]	; 0x2a4
 8055628:	61bb      	str	r3, [r7, #24]
 805562a:	69fb      	ldr	r3, [r7, #28]
 805562c:	f8d3 32b8 	ldr.w	r3, [r3, #696]	; 0x2b8
 8055630:	617b      	str	r3, [r7, #20]
 8055632:	4b2e      	ldr	r3, [pc, #184]	; (80556ec <eTaskGetState+0xf8>)
 8055634:	681b      	ldr	r3, [r3, #0]
 8055636:	613b      	str	r3, [r7, #16]
 8055638:	4b2d      	ldr	r3, [pc, #180]	; (80556f0 <eTaskGetState+0xfc>)
 805563a:	681b      	ldr	r3, [r3, #0]
 805563c:	60fb      	str	r3, [r7, #12]
 805563e:	4b2d      	ldr	r3, [pc, #180]	; (80556f4 <eTaskGetState+0x100>)
 8055640:	4798      	blx	r3
 8055642:	697b      	ldr	r3, [r7, #20]
 8055644:	4a2c      	ldr	r2, [pc, #176]	; (80556f8 <eTaskGetState+0x104>)
 8055646:	4293      	cmp	r3, r2
 8055648:	d103      	bne.n	8055652 <eTaskGetState+0x5e>
 805564a:	2301      	movs	r3, #1
 805564c:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
 8055650:	e040      	b.n	80556d4 <eTaskGetState+0xe0>
 8055652:	69ba      	ldr	r2, [r7, #24]
 8055654:	693b      	ldr	r3, [r7, #16]
 8055656:	429a      	cmp	r2, r3
 8055658:	d003      	beq.n	8055662 <eTaskGetState+0x6e>
 805565a:	69ba      	ldr	r2, [r7, #24]
 805565c:	68fb      	ldr	r3, [r7, #12]
 805565e:	429a      	cmp	r2, r3
 8055660:	d103      	bne.n	805566a <eTaskGetState+0x76>
 8055662:	2302      	movs	r3, #2
 8055664:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
 8055668:	e034      	b.n	80556d4 <eTaskGetState+0xe0>
 805566a:	69bb      	ldr	r3, [r7, #24]
 805566c:	4a23      	ldr	r2, [pc, #140]	; (80556fc <eTaskGetState+0x108>)
 805566e:	4293      	cmp	r3, r2
 8055670:	d122      	bne.n	80556b8 <eTaskGetState+0xc4>
 8055672:	69fb      	ldr	r3, [r7, #28]
 8055674:	f8d3 32b8 	ldr.w	r3, [r3, #696]	; 0x2b8
 8055678:	2b00      	cmp	r3, #0
 805567a:	d119      	bne.n	80556b0 <eTaskGetState+0xbc>
 805567c:	2303      	movs	r3, #3
 805567e:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
 8055682:	2300      	movs	r3, #0
 8055684:	623b      	str	r3, [r7, #32]
 8055686:	e00f      	b.n	80556a8 <eTaskGetState+0xb4>
 8055688:	69fa      	ldr	r2, [r7, #28]
 805568a:	6a3b      	ldr	r3, [r7, #32]
 805568c:	4413      	add	r3, r2
 805568e:	f503 733a 	add.w	r3, r3, #744	; 0x2e8
 8055692:	781b      	ldrb	r3, [r3, #0]
 8055694:	b2db      	uxtb	r3, r3
 8055696:	2b01      	cmp	r3, #1
 8055698:	d103      	bne.n	80556a2 <eTaskGetState+0xae>
 805569a:	2302      	movs	r3, #2
 805569c:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
 80556a0:	e018      	b.n	80556d4 <eTaskGetState+0xe0>
 80556a2:	6a3b      	ldr	r3, [r7, #32]
 80556a4:	3301      	adds	r3, #1
 80556a6:	623b      	str	r3, [r7, #32]
 80556a8:	6a3b      	ldr	r3, [r7, #32]
 80556aa:	2b00      	cmp	r3, #0
 80556ac:	ddec      	ble.n	8055688 <eTaskGetState+0x94>
 80556ae:	e011      	b.n	80556d4 <eTaskGetState+0xe0>
 80556b0:	2302      	movs	r3, #2
 80556b2:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
 80556b6:	e00d      	b.n	80556d4 <eTaskGetState+0xe0>
 80556b8:	69bb      	ldr	r3, [r7, #24]
 80556ba:	4a11      	ldr	r2, [pc, #68]	; (8055700 <eTaskGetState+0x10c>)
 80556bc:	4293      	cmp	r3, r2
 80556be:	d002      	beq.n	80556c6 <eTaskGetState+0xd2>
 80556c0:	69bb      	ldr	r3, [r7, #24]
 80556c2:	2b00      	cmp	r3, #0
 80556c4:	d103      	bne.n	80556ce <eTaskGetState+0xda>
 80556c6:	2304      	movs	r3, #4
 80556c8:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
 80556cc:	e002      	b.n	80556d4 <eTaskGetState+0xe0>
 80556ce:	2301      	movs	r3, #1
 80556d0:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
 80556d4:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
 80556d8:	4618      	mov	r0, r3
 80556da:	3728      	adds	r7, #40	; 0x28
 80556dc:	46bd      	mov	sp, r7
 80556de:	bd80      	pop	{r7, pc}
 80556e0:	0805f1c7 	.word	0x0805f1c7
 80556e4:	20000100 	.word	0x20000100
 80556e8:	0805ecc5 	.word	0x0805ecc5
 80556ec:	2000026c 	.word	0x2000026c
 80556f0:	20000270 	.word	0x20000270
 80556f4:	0805eced 	.word	0x0805eced
 80556f8:	20000274 	.word	0x20000274
 80556fc:	200002a0 	.word	0x200002a0
 8055700:	20000288 	.word	0x20000288

08055704 <vTaskGetInfo>:
 8055704:	b580      	push	{r7, lr}
 8055706:	b086      	sub	sp, #24
 8055708:	af00      	add	r7, sp, #0
 805570a:	60f8      	str	r0, [r7, #12]
 805570c:	60b9      	str	r1, [r7, #8]
 805570e:	607a      	str	r2, [r7, #4]
 8055710:	70fb      	strb	r3, [r7, #3]
 8055712:	68fb      	ldr	r3, [r7, #12]
 8055714:	2b00      	cmp	r3, #0
 8055716:	d102      	bne.n	805571e <vTaskGetInfo+0x1a>
 8055718:	4b35      	ldr	r3, [pc, #212]	; (80557f0 <vTaskGetInfo+0xec>)
 805571a:	681b      	ldr	r3, [r3, #0]
 805571c:	e000      	b.n	8055720 <vTaskGetInfo+0x1c>
 805571e:	68fb      	ldr	r3, [r7, #12]
 8055720:	617b      	str	r3, [r7, #20]
 8055722:	68bb      	ldr	r3, [r7, #8]
 8055724:	697a      	ldr	r2, [r7, #20]
 8055726:	601a      	str	r2, [r3, #0]
 8055728:	697b      	ldr	r3, [r7, #20]
 805572a:	f503 7231 	add.w	r2, r3, #708	; 0x2c4
 805572e:	68bb      	ldr	r3, [r7, #8]
 8055730:	605a      	str	r2, [r3, #4]
 8055732:	697b      	ldr	r3, [r7, #20]
 8055734:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8055738:	68bb      	ldr	r3, [r7, #8]
 805573a:	611a      	str	r2, [r3, #16]
 805573c:	697b      	ldr	r3, [r7, #20]
 805573e:	f8d3 22c0 	ldr.w	r2, [r3, #704]	; 0x2c0
 8055742:	68bb      	ldr	r3, [r7, #8]
 8055744:	61da      	str	r2, [r3, #28]
 8055746:	697b      	ldr	r3, [r7, #20]
 8055748:	f8d3 22d4 	ldr.w	r2, [r3, #724]	; 0x2d4
 805574c:	68bb      	ldr	r3, [r7, #8]
 805574e:	609a      	str	r2, [r3, #8]
 8055750:	697b      	ldr	r3, [r7, #20]
 8055752:	f8d3 22dc 	ldr.w	r2, [r3, #732]	; 0x2dc
 8055756:	68bb      	ldr	r3, [r7, #8]
 8055758:	615a      	str	r2, [r3, #20]
 805575a:	68bb      	ldr	r3, [r7, #8]
 805575c:	2200      	movs	r2, #0
 805575e:	619a      	str	r2, [r3, #24]
 8055760:	78fb      	ldrb	r3, [r7, #3]
 8055762:	2b05      	cmp	r3, #5
 8055764:	d028      	beq.n	80557b8 <vTaskGetInfo+0xb4>
 8055766:	4b22      	ldr	r3, [pc, #136]	; (80557f0 <vTaskGetInfo+0xec>)
 8055768:	681b      	ldr	r3, [r3, #0]
 805576a:	697a      	ldr	r2, [r7, #20]
 805576c:	429a      	cmp	r2, r3
 805576e:	d103      	bne.n	8055778 <vTaskGetInfo+0x74>
 8055770:	68bb      	ldr	r3, [r7, #8]
 8055772:	2200      	movs	r2, #0
 8055774:	731a      	strb	r2, [r3, #12]
 8055776:	e026      	b.n	80557c6 <vTaskGetInfo+0xc2>
 8055778:	68bb      	ldr	r3, [r7, #8]
 805577a:	78fa      	ldrb	r2, [r7, #3]
 805577c:	731a      	strb	r2, [r3, #12]
 805577e:	78fb      	ldrb	r3, [r7, #3]
 8055780:	2b03      	cmp	r3, #3
 8055782:	d10b      	bne.n	805579c <vTaskGetInfo+0x98>
 8055784:	f000 fb1a 	bl	8055dbc <vTaskSuspendAll>
 8055788:	697b      	ldr	r3, [r7, #20]
 805578a:	f8d3 32b8 	ldr.w	r3, [r3, #696]	; 0x2b8
 805578e:	2b00      	cmp	r3, #0
 8055790:	d002      	beq.n	8055798 <vTaskGetInfo+0x94>
 8055792:	68bb      	ldr	r3, [r7, #8]
 8055794:	2202      	movs	r2, #2
 8055796:	731a      	strb	r2, [r3, #12]
 8055798:	f000 fb1e 	bl	8055dd8 <xTaskResumeAll>
 805579c:	4b15      	ldr	r3, [pc, #84]	; (80557f4 <vTaskGetInfo+0xf0>)
 805579e:	4798      	blx	r3
 80557a0:	697b      	ldr	r3, [r7, #20]
 80557a2:	f8d3 32b8 	ldr.w	r3, [r3, #696]	; 0x2b8
 80557a6:	4a14      	ldr	r2, [pc, #80]	; (80557f8 <vTaskGetInfo+0xf4>)
 80557a8:	4293      	cmp	r3, r2
 80557aa:	d102      	bne.n	80557b2 <vTaskGetInfo+0xae>
 80557ac:	68bb      	ldr	r3, [r7, #8]
 80557ae:	2201      	movs	r2, #1
 80557b0:	731a      	strb	r2, [r3, #12]
 80557b2:	4b12      	ldr	r3, [pc, #72]	; (80557fc <vTaskGetInfo+0xf8>)
 80557b4:	4798      	blx	r3
 80557b6:	e006      	b.n	80557c6 <vTaskGetInfo+0xc2>
 80557b8:	6978      	ldr	r0, [r7, #20]
 80557ba:	f7ff ff1b 	bl	80555f4 <eTaskGetState>
 80557be:	4603      	mov	r3, r0
 80557c0:	461a      	mov	r2, r3
 80557c2:	68bb      	ldr	r3, [r7, #8]
 80557c4:	731a      	strb	r2, [r3, #12]
 80557c6:	687b      	ldr	r3, [r7, #4]
 80557c8:	2b00      	cmp	r3, #0
 80557ca:	d00a      	beq.n	80557e2 <vTaskGetInfo+0xde>
 80557cc:	697b      	ldr	r3, [r7, #20]
 80557ce:	f8d3 32c0 	ldr.w	r3, [r3, #704]	; 0x2c0
 80557d2:	4618      	mov	r0, r3
 80557d4:	f002 fafe 	bl	8057dd4 <prvTaskCheckFreeStackSpace>
 80557d8:	4603      	mov	r3, r0
 80557da:	461a      	mov	r2, r3
 80557dc:	68bb      	ldr	r3, [r7, #8]
 80557de:	841a      	strh	r2, [r3, #32]
 80557e0:	e002      	b.n	80557e8 <vTaskGetInfo+0xe4>
 80557e2:	68bb      	ldr	r3, [r7, #8]
 80557e4:	2200      	movs	r2, #0
 80557e6:	841a      	strh	r2, [r3, #32]
 80557e8:	bf00      	nop
 80557ea:	3718      	adds	r7, #24
 80557ec:	46bd      	mov	sp, r7
 80557ee:	bd80      	pop	{r7, pc}
 80557f0:	20000100 	.word	0x20000100
 80557f4:	0805ecc5 	.word	0x0805ecc5
 80557f8:	20000274 	.word	0x20000274
 80557fc:	0805eced 	.word	0x0805eced

08055800 <vTaskPrioritySet>:
 8055800:	b580      	push	{r7, lr}
 8055802:	b088      	sub	sp, #32
 8055804:	af00      	add	r7, sp, #0
 8055806:	6078      	str	r0, [r7, #4]
 8055808:	6039      	str	r1, [r7, #0]
 805580a:	2300      	movs	r3, #0
 805580c:	61fb      	str	r3, [r7, #28]
 805580e:	683b      	ldr	r3, [r7, #0]
 8055810:	2b0f      	cmp	r3, #15
 8055812:	d902      	bls.n	805581a <vTaskPrioritySet+0x1a>
 8055814:	4b60      	ldr	r3, [pc, #384]	; (8055998 <vTaskPrioritySet+0x198>)
 8055816:	4798      	blx	r3
 8055818:	e7fe      	b.n	8055818 <vTaskPrioritySet+0x18>
 805581a:	683b      	ldr	r3, [r7, #0]
 805581c:	2b0f      	cmp	r3, #15
 805581e:	d901      	bls.n	8055824 <vTaskPrioritySet+0x24>
 8055820:	230f      	movs	r3, #15
 8055822:	603b      	str	r3, [r7, #0]
 8055824:	4b5d      	ldr	r3, [pc, #372]	; (805599c <vTaskPrioritySet+0x19c>)
 8055826:	4798      	blx	r3
 8055828:	687b      	ldr	r3, [r7, #4]
 805582a:	2b00      	cmp	r3, #0
 805582c:	d102      	bne.n	8055834 <vTaskPrioritySet+0x34>
 805582e:	4b5c      	ldr	r3, [pc, #368]	; (80559a0 <vTaskPrioritySet+0x1a0>)
 8055830:	681b      	ldr	r3, [r3, #0]
 8055832:	e000      	b.n	8055836 <vTaskPrioritySet+0x36>
 8055834:	687b      	ldr	r3, [r7, #4]
 8055836:	61bb      	str	r3, [r7, #24]
 8055838:	69bb      	ldr	r3, [r7, #24]
 805583a:	f8d3 32dc 	ldr.w	r3, [r3, #732]	; 0x2dc
 805583e:	617b      	str	r3, [r7, #20]
 8055840:	697a      	ldr	r2, [r7, #20]
 8055842:	683b      	ldr	r3, [r7, #0]
 8055844:	429a      	cmp	r2, r3
 8055846:	f000 80a0 	beq.w	805598a <vTaskPrioritySet+0x18a>
 805584a:	683a      	ldr	r2, [r7, #0]
 805584c:	697b      	ldr	r3, [r7, #20]
 805584e:	429a      	cmp	r2, r3
 8055850:	d90e      	bls.n	8055870 <vTaskPrioritySet+0x70>
 8055852:	4b53      	ldr	r3, [pc, #332]	; (80559a0 <vTaskPrioritySet+0x1a0>)
 8055854:	681b      	ldr	r3, [r3, #0]
 8055856:	69ba      	ldr	r2, [r7, #24]
 8055858:	429a      	cmp	r2, r3
 805585a:	d010      	beq.n	805587e <vTaskPrioritySet+0x7e>
 805585c:	4b50      	ldr	r3, [pc, #320]	; (80559a0 <vTaskPrioritySet+0x1a0>)
 805585e:	681b      	ldr	r3, [r3, #0]
 8055860:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 8055864:	683a      	ldr	r2, [r7, #0]
 8055866:	429a      	cmp	r2, r3
 8055868:	d909      	bls.n	805587e <vTaskPrioritySet+0x7e>
 805586a:	2301      	movs	r3, #1
 805586c:	61fb      	str	r3, [r7, #28]
 805586e:	e006      	b.n	805587e <vTaskPrioritySet+0x7e>
 8055870:	4b4b      	ldr	r3, [pc, #300]	; (80559a0 <vTaskPrioritySet+0x1a0>)
 8055872:	681b      	ldr	r3, [r3, #0]
 8055874:	69ba      	ldr	r2, [r7, #24]
 8055876:	429a      	cmp	r2, r3
 8055878:	d101      	bne.n	805587e <vTaskPrioritySet+0x7e>
 805587a:	2301      	movs	r3, #1
 805587c:	61fb      	str	r3, [r7, #28]
 805587e:	69bb      	ldr	r3, [r7, #24]
 8055880:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 8055884:	613b      	str	r3, [r7, #16]
 8055886:	69bb      	ldr	r3, [r7, #24]
 8055888:	f8d3 22dc 	ldr.w	r2, [r3, #732]	; 0x2dc
 805588c:	69bb      	ldr	r3, [r7, #24]
 805588e:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 8055892:	429a      	cmp	r2, r3
 8055894:	d005      	beq.n	80558a2 <vTaskPrioritySet+0xa2>
 8055896:	69bb      	ldr	r3, [r7, #24]
 8055898:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 805589c:	683a      	ldr	r2, [r7, #0]
 805589e:	429a      	cmp	r2, r3
 80558a0:	d903      	bls.n	80558aa <vTaskPrioritySet+0xaa>
 80558a2:	69bb      	ldr	r3, [r7, #24]
 80558a4:	683a      	ldr	r2, [r7, #0]
 80558a6:	f8c3 22bc 	str.w	r2, [r3, #700]	; 0x2bc
 80558aa:	69bb      	ldr	r3, [r7, #24]
 80558ac:	683a      	ldr	r2, [r7, #0]
 80558ae:	f8c3 22dc 	str.w	r2, [r3, #732]	; 0x2dc
 80558b2:	69bb      	ldr	r3, [r7, #24]
 80558b4:	f8d3 32a8 	ldr.w	r3, [r3, #680]	; 0x2a8
 80558b8:	2b00      	cmp	r3, #0
 80558ba:	db05      	blt.n	80558c8 <vTaskPrioritySet+0xc8>
 80558bc:	683b      	ldr	r3, [r7, #0]
 80558be:	f1c3 0210 	rsb	r2, r3, #16
 80558c2:	69bb      	ldr	r3, [r7, #24]
 80558c4:	f8c3 22a8 	str.w	r2, [r3, #680]	; 0x2a8
 80558c8:	69bb      	ldr	r3, [r7, #24]
 80558ca:	f8d3 12a4 	ldr.w	r1, [r3, #676]	; 0x2a4
 80558ce:	693a      	ldr	r2, [r7, #16]
 80558d0:	4613      	mov	r3, r2
 80558d2:	009b      	lsls	r3, r3, #2
 80558d4:	4413      	add	r3, r2
 80558d6:	009b      	lsls	r3, r3, #2
 80558d8:	4a32      	ldr	r2, [pc, #200]	; (80559a4 <vTaskPrioritySet+0x1a4>)
 80558da:	4413      	add	r3, r2
 80558dc:	4299      	cmp	r1, r3
 80558de:	d14f      	bne.n	8055980 <vTaskPrioritySet+0x180>
 80558e0:	69bb      	ldr	r3, [r7, #24]
 80558e2:	f503 7325 	add.w	r3, r3, #660	; 0x294
 80558e6:	4618      	mov	r0, r3
 80558e8:	4b2f      	ldr	r3, [pc, #188]	; (80559a8 <vTaskPrioritySet+0x1a8>)
 80558ea:	4798      	blx	r3
 80558ec:	69bb      	ldr	r3, [r7, #24]
 80558ee:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 80558f2:	4b2e      	ldr	r3, [pc, #184]	; (80559ac <vTaskPrioritySet+0x1ac>)
 80558f4:	681b      	ldr	r3, [r3, #0]
 80558f6:	429a      	cmp	r2, r3
 80558f8:	d904      	bls.n	8055904 <vTaskPrioritySet+0x104>
 80558fa:	69bb      	ldr	r3, [r7, #24]
 80558fc:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 8055900:	4a2a      	ldr	r2, [pc, #168]	; (80559ac <vTaskPrioritySet+0x1ac>)
 8055902:	6013      	str	r3, [r2, #0]
 8055904:	69bb      	ldr	r3, [r7, #24]
 8055906:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 805590a:	4926      	ldr	r1, [pc, #152]	; (80559a4 <vTaskPrioritySet+0x1a4>)
 805590c:	4613      	mov	r3, r2
 805590e:	009b      	lsls	r3, r3, #2
 8055910:	4413      	add	r3, r2
 8055912:	009b      	lsls	r3, r3, #2
 8055914:	440b      	add	r3, r1
 8055916:	3304      	adds	r3, #4
 8055918:	681b      	ldr	r3, [r3, #0]
 805591a:	60fb      	str	r3, [r7, #12]
 805591c:	69bb      	ldr	r3, [r7, #24]
 805591e:	68fa      	ldr	r2, [r7, #12]
 8055920:	f8c3 2298 	str.w	r2, [r3, #664]	; 0x298
 8055924:	68fb      	ldr	r3, [r7, #12]
 8055926:	689a      	ldr	r2, [r3, #8]
 8055928:	69bb      	ldr	r3, [r7, #24]
 805592a:	f8c3 229c 	str.w	r2, [r3, #668]	; 0x29c
 805592e:	68fb      	ldr	r3, [r7, #12]
 8055930:	689b      	ldr	r3, [r3, #8]
 8055932:	69ba      	ldr	r2, [r7, #24]
 8055934:	f502 7225 	add.w	r2, r2, #660	; 0x294
 8055938:	605a      	str	r2, [r3, #4]
 805593a:	69bb      	ldr	r3, [r7, #24]
 805593c:	f503 7225 	add.w	r2, r3, #660	; 0x294
 8055940:	68fb      	ldr	r3, [r7, #12]
 8055942:	609a      	str	r2, [r3, #8]
 8055944:	69bb      	ldr	r3, [r7, #24]
 8055946:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 805594a:	4613      	mov	r3, r2
 805594c:	009b      	lsls	r3, r3, #2
 805594e:	4413      	add	r3, r2
 8055950:	009b      	lsls	r3, r3, #2
 8055952:	4a14      	ldr	r2, [pc, #80]	; (80559a4 <vTaskPrioritySet+0x1a4>)
 8055954:	441a      	add	r2, r3
 8055956:	69bb      	ldr	r3, [r7, #24]
 8055958:	f8c3 22a4 	str.w	r2, [r3, #676]	; 0x2a4
 805595c:	69bb      	ldr	r3, [r7, #24]
 805595e:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8055962:	4910      	ldr	r1, [pc, #64]	; (80559a4 <vTaskPrioritySet+0x1a4>)
 8055964:	4613      	mov	r3, r2
 8055966:	009b      	lsls	r3, r3, #2
 8055968:	4413      	add	r3, r2
 805596a:	009b      	lsls	r3, r3, #2
 805596c:	440b      	add	r3, r1
 805596e:	681b      	ldr	r3, [r3, #0]
 8055970:	1c59      	adds	r1, r3, #1
 8055972:	480c      	ldr	r0, [pc, #48]	; (80559a4 <vTaskPrioritySet+0x1a4>)
 8055974:	4613      	mov	r3, r2
 8055976:	009b      	lsls	r3, r3, #2
 8055978:	4413      	add	r3, r2
 805597a:	009b      	lsls	r3, r3, #2
 805597c:	4403      	add	r3, r0
 805597e:	6019      	str	r1, [r3, #0]
 8055980:	69fb      	ldr	r3, [r7, #28]
 8055982:	2b00      	cmp	r3, #0
 8055984:	d001      	beq.n	805598a <vTaskPrioritySet+0x18a>
 8055986:	4b0a      	ldr	r3, [pc, #40]	; (80559b0 <vTaskPrioritySet+0x1b0>)
 8055988:	4798      	blx	r3
 805598a:	4b0a      	ldr	r3, [pc, #40]	; (80559b4 <vTaskPrioritySet+0x1b4>)
 805598c:	4798      	blx	r3
 805598e:	bf00      	nop
 8055990:	3720      	adds	r7, #32
 8055992:	46bd      	mov	sp, r7
 8055994:	bd80      	pop	{r7, pc}
 8055996:	bf00      	nop
 8055998:	0805f1c7 	.word	0x0805f1c7
 805599c:	0805ecc5 	.word	0x0805ecc5
 80559a0:	20000100 	.word	0x20000100
 80559a4:	20000104 	.word	0x20000104
 80559a8:	0805c449 	.word	0x0805c449
 80559ac:	200002bc 	.word	0x200002bc
 80559b0:	0805eca5 	.word	0x0805eca5
 80559b4:	0805eced 	.word	0x0805eced

080559b8 <vTaskSuspend>:
 80559b8:	b580      	push	{r7, lr}
 80559ba:	b084      	sub	sp, #16
 80559bc:	af00      	add	r7, sp, #0
 80559be:	6078      	str	r0, [r7, #4]
 80559c0:	4b34      	ldr	r3, [pc, #208]	; (8055a94 <vTaskSuspend+0xdc>)
 80559c2:	4798      	blx	r3
 80559c4:	687b      	ldr	r3, [r7, #4]
 80559c6:	2b00      	cmp	r3, #0
 80559c8:	d102      	bne.n	80559d0 <vTaskSuspend+0x18>
 80559ca:	4b33      	ldr	r3, [pc, #204]	; (8055a98 <vTaskSuspend+0xe0>)
 80559cc:	681b      	ldr	r3, [r3, #0]
 80559ce:	e000      	b.n	80559d2 <vTaskSuspend+0x1a>
 80559d0:	687b      	ldr	r3, [r7, #4]
 80559d2:	60bb      	str	r3, [r7, #8]
 80559d4:	68bb      	ldr	r3, [r7, #8]
 80559d6:	f503 7325 	add.w	r3, r3, #660	; 0x294
 80559da:	4618      	mov	r0, r3
 80559dc:	4b2f      	ldr	r3, [pc, #188]	; (8055a9c <vTaskSuspend+0xe4>)
 80559de:	4798      	blx	r3
 80559e0:	68bb      	ldr	r3, [r7, #8]
 80559e2:	f8d3 32b8 	ldr.w	r3, [r3, #696]	; 0x2b8
 80559e6:	2b00      	cmp	r3, #0
 80559e8:	d005      	beq.n	80559f6 <vTaskSuspend+0x3e>
 80559ea:	68bb      	ldr	r3, [r7, #8]
 80559ec:	f503 732a 	add.w	r3, r3, #680	; 0x2a8
 80559f0:	4618      	mov	r0, r3
 80559f2:	4b2a      	ldr	r3, [pc, #168]	; (8055a9c <vTaskSuspend+0xe4>)
 80559f4:	4798      	blx	r3
 80559f6:	68bb      	ldr	r3, [r7, #8]
 80559f8:	f503 7325 	add.w	r3, r3, #660	; 0x294
 80559fc:	4619      	mov	r1, r3
 80559fe:	4828      	ldr	r0, [pc, #160]	; (8055aa0 <vTaskSuspend+0xe8>)
 8055a00:	4b28      	ldr	r3, [pc, #160]	; (8055aa4 <vTaskSuspend+0xec>)
 8055a02:	4798      	blx	r3
 8055a04:	2300      	movs	r3, #0
 8055a06:	60fb      	str	r3, [r7, #12]
 8055a08:	e012      	b.n	8055a30 <vTaskSuspend+0x78>
 8055a0a:	68ba      	ldr	r2, [r7, #8]
 8055a0c:	68fb      	ldr	r3, [r7, #12]
 8055a0e:	4413      	add	r3, r2
 8055a10:	f503 733a 	add.w	r3, r3, #744	; 0x2e8
 8055a14:	781b      	ldrb	r3, [r3, #0]
 8055a16:	b2db      	uxtb	r3, r3
 8055a18:	2b01      	cmp	r3, #1
 8055a1a:	d106      	bne.n	8055a2a <vTaskSuspend+0x72>
 8055a1c:	68ba      	ldr	r2, [r7, #8]
 8055a1e:	68fb      	ldr	r3, [r7, #12]
 8055a20:	4413      	add	r3, r2
 8055a22:	f503 733a 	add.w	r3, r3, #744	; 0x2e8
 8055a26:	2200      	movs	r2, #0
 8055a28:	701a      	strb	r2, [r3, #0]
 8055a2a:	68fb      	ldr	r3, [r7, #12]
 8055a2c:	3301      	adds	r3, #1
 8055a2e:	60fb      	str	r3, [r7, #12]
 8055a30:	68fb      	ldr	r3, [r7, #12]
 8055a32:	2b00      	cmp	r3, #0
 8055a34:	dde9      	ble.n	8055a0a <vTaskSuspend+0x52>
 8055a36:	4b1c      	ldr	r3, [pc, #112]	; (8055aa8 <vTaskSuspend+0xf0>)
 8055a38:	4798      	blx	r3
 8055a3a:	4b1c      	ldr	r3, [pc, #112]	; (8055aac <vTaskSuspend+0xf4>)
 8055a3c:	681b      	ldr	r3, [r3, #0]
 8055a3e:	2b00      	cmp	r3, #0
 8055a40:	d005      	beq.n	8055a4e <vTaskSuspend+0x96>
 8055a42:	4b14      	ldr	r3, [pc, #80]	; (8055a94 <vTaskSuspend+0xdc>)
 8055a44:	4798      	blx	r3
 8055a46:	f002 f9e0 	bl	8057e0a <prvResetNextTaskUnblockTime>
 8055a4a:	4b17      	ldr	r3, [pc, #92]	; (8055aa8 <vTaskSuspend+0xf0>)
 8055a4c:	4798      	blx	r3
 8055a4e:	4b12      	ldr	r3, [pc, #72]	; (8055a98 <vTaskSuspend+0xe0>)
 8055a50:	681b      	ldr	r3, [r3, #0]
 8055a52:	68ba      	ldr	r2, [r7, #8]
 8055a54:	429a      	cmp	r2, r3
 8055a56:	d119      	bne.n	8055a8c <vTaskSuspend+0xd4>
 8055a58:	4b14      	ldr	r3, [pc, #80]	; (8055aac <vTaskSuspend+0xf4>)
 8055a5a:	681b      	ldr	r3, [r3, #0]
 8055a5c:	2b00      	cmp	r3, #0
 8055a5e:	d009      	beq.n	8055a74 <vTaskSuspend+0xbc>
 8055a60:	4b13      	ldr	r3, [pc, #76]	; (8055ab0 <vTaskSuspend+0xf8>)
 8055a62:	681b      	ldr	r3, [r3, #0]
 8055a64:	2b00      	cmp	r3, #0
 8055a66:	d002      	beq.n	8055a6e <vTaskSuspend+0xb6>
 8055a68:	4b12      	ldr	r3, [pc, #72]	; (8055ab4 <vTaskSuspend+0xfc>)
 8055a6a:	4798      	blx	r3
 8055a6c:	e7fe      	b.n	8055a6c <vTaskSuspend+0xb4>
 8055a6e:	4b12      	ldr	r3, [pc, #72]	; (8055ab8 <vTaskSuspend+0x100>)
 8055a70:	4798      	blx	r3
 8055a72:	e00b      	b.n	8055a8c <vTaskSuspend+0xd4>
 8055a74:	4b0a      	ldr	r3, [pc, #40]	; (8055aa0 <vTaskSuspend+0xe8>)
 8055a76:	681a      	ldr	r2, [r3, #0]
 8055a78:	4b10      	ldr	r3, [pc, #64]	; (8055abc <vTaskSuspend+0x104>)
 8055a7a:	681b      	ldr	r3, [r3, #0]
 8055a7c:	429a      	cmp	r2, r3
 8055a7e:	d103      	bne.n	8055a88 <vTaskSuspend+0xd0>
 8055a80:	4b05      	ldr	r3, [pc, #20]	; (8055a98 <vTaskSuspend+0xe0>)
 8055a82:	2200      	movs	r2, #0
 8055a84:	601a      	str	r2, [r3, #0]
 8055a86:	e001      	b.n	8055a8c <vTaskSuspend+0xd4>
 8055a88:	f001 fce8 	bl	805745c <vTaskSwitchContext>
 8055a8c:	bf00      	nop
 8055a8e:	3710      	adds	r7, #16
 8055a90:	46bd      	mov	sp, r7
 8055a92:	bd80      	pop	{r7, pc}
 8055a94:	0805ecc5 	.word	0x0805ecc5
 8055a98:	20000100 	.word	0x20000100
 8055a9c:	0805c449 	.word	0x0805c449
 8055aa0:	200002a0 	.word	0x200002a0
 8055aa4:	0805c403 	.word	0x0805c403
 8055aa8:	0805eced 	.word	0x0805eced
 8055aac:	200002c0 	.word	0x200002c0
 8055ab0:	200002dc 	.word	0x200002dc
 8055ab4:	0805f1c7 	.word	0x0805f1c7
 8055ab8:	0805eca5 	.word	0x0805eca5
 8055abc:	200002b4 	.word	0x200002b4

08055ac0 <vTaskResume>:
 8055ac0:	b580      	push	{r7, lr}
 8055ac2:	b084      	sub	sp, #16
 8055ac4:	af00      	add	r7, sp, #0
 8055ac6:	6078      	str	r0, [r7, #4]
 8055ac8:	687b      	ldr	r3, [r7, #4]
 8055aca:	60fb      	str	r3, [r7, #12]
 8055acc:	687b      	ldr	r3, [r7, #4]
 8055ace:	2b00      	cmp	r3, #0
 8055ad0:	d102      	bne.n	8055ad8 <vTaskResume+0x18>
 8055ad2:	4b3a      	ldr	r3, [pc, #232]	; (8055bbc <vTaskResume+0xfc>)
 8055ad4:	4798      	blx	r3
 8055ad6:	e7fe      	b.n	8055ad6 <vTaskResume+0x16>
 8055ad8:	4b39      	ldr	r3, [pc, #228]	; (8055bc0 <vTaskResume+0x100>)
 8055ada:	681b      	ldr	r3, [r3, #0]
 8055adc:	68fa      	ldr	r2, [r7, #12]
 8055ade:	429a      	cmp	r2, r3
 8055ae0:	d067      	beq.n	8055bb2 <vTaskResume+0xf2>
 8055ae2:	68fb      	ldr	r3, [r7, #12]
 8055ae4:	2b00      	cmp	r3, #0
 8055ae6:	d064      	beq.n	8055bb2 <vTaskResume+0xf2>
 8055ae8:	4b36      	ldr	r3, [pc, #216]	; (8055bc4 <vTaskResume+0x104>)
 8055aea:	4798      	blx	r3
 8055aec:	68f8      	ldr	r0, [r7, #12]
 8055aee:	f001 ffc9 	bl	8057a84 <prvTaskIsTaskSuspended>
 8055af2:	4603      	mov	r3, r0
 8055af4:	2b00      	cmp	r3, #0
 8055af6:	d05a      	beq.n	8055bae <vTaskResume+0xee>
 8055af8:	68fb      	ldr	r3, [r7, #12]
 8055afa:	f503 7325 	add.w	r3, r3, #660	; 0x294
 8055afe:	4618      	mov	r0, r3
 8055b00:	4b31      	ldr	r3, [pc, #196]	; (8055bc8 <vTaskResume+0x108>)
 8055b02:	4798      	blx	r3
 8055b04:	68fb      	ldr	r3, [r7, #12]
 8055b06:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8055b0a:	4b30      	ldr	r3, [pc, #192]	; (8055bcc <vTaskResume+0x10c>)
 8055b0c:	681b      	ldr	r3, [r3, #0]
 8055b0e:	429a      	cmp	r2, r3
 8055b10:	d904      	bls.n	8055b1c <vTaskResume+0x5c>
 8055b12:	68fb      	ldr	r3, [r7, #12]
 8055b14:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 8055b18:	4a2c      	ldr	r2, [pc, #176]	; (8055bcc <vTaskResume+0x10c>)
 8055b1a:	6013      	str	r3, [r2, #0]
 8055b1c:	68fb      	ldr	r3, [r7, #12]
 8055b1e:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8055b22:	492b      	ldr	r1, [pc, #172]	; (8055bd0 <vTaskResume+0x110>)
 8055b24:	4613      	mov	r3, r2
 8055b26:	009b      	lsls	r3, r3, #2
 8055b28:	4413      	add	r3, r2
 8055b2a:	009b      	lsls	r3, r3, #2
 8055b2c:	440b      	add	r3, r1
 8055b2e:	3304      	adds	r3, #4
 8055b30:	681b      	ldr	r3, [r3, #0]
 8055b32:	60bb      	str	r3, [r7, #8]
 8055b34:	68fb      	ldr	r3, [r7, #12]
 8055b36:	68ba      	ldr	r2, [r7, #8]
 8055b38:	f8c3 2298 	str.w	r2, [r3, #664]	; 0x298
 8055b3c:	68bb      	ldr	r3, [r7, #8]
 8055b3e:	689a      	ldr	r2, [r3, #8]
 8055b40:	68fb      	ldr	r3, [r7, #12]
 8055b42:	f8c3 229c 	str.w	r2, [r3, #668]	; 0x29c
 8055b46:	68bb      	ldr	r3, [r7, #8]
 8055b48:	689b      	ldr	r3, [r3, #8]
 8055b4a:	68fa      	ldr	r2, [r7, #12]
 8055b4c:	f502 7225 	add.w	r2, r2, #660	; 0x294
 8055b50:	605a      	str	r2, [r3, #4]
 8055b52:	68fb      	ldr	r3, [r7, #12]
 8055b54:	f503 7225 	add.w	r2, r3, #660	; 0x294
 8055b58:	68bb      	ldr	r3, [r7, #8]
 8055b5a:	609a      	str	r2, [r3, #8]
 8055b5c:	68fb      	ldr	r3, [r7, #12]
 8055b5e:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8055b62:	4613      	mov	r3, r2
 8055b64:	009b      	lsls	r3, r3, #2
 8055b66:	4413      	add	r3, r2
 8055b68:	009b      	lsls	r3, r3, #2
 8055b6a:	4a19      	ldr	r2, [pc, #100]	; (8055bd0 <vTaskResume+0x110>)
 8055b6c:	441a      	add	r2, r3
 8055b6e:	68fb      	ldr	r3, [r7, #12]
 8055b70:	f8c3 22a4 	str.w	r2, [r3, #676]	; 0x2a4
 8055b74:	68fb      	ldr	r3, [r7, #12]
 8055b76:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8055b7a:	4915      	ldr	r1, [pc, #84]	; (8055bd0 <vTaskResume+0x110>)
 8055b7c:	4613      	mov	r3, r2
 8055b7e:	009b      	lsls	r3, r3, #2
 8055b80:	4413      	add	r3, r2
 8055b82:	009b      	lsls	r3, r3, #2
 8055b84:	440b      	add	r3, r1
 8055b86:	681b      	ldr	r3, [r3, #0]
 8055b88:	1c59      	adds	r1, r3, #1
 8055b8a:	4811      	ldr	r0, [pc, #68]	; (8055bd0 <vTaskResume+0x110>)
 8055b8c:	4613      	mov	r3, r2
 8055b8e:	009b      	lsls	r3, r3, #2
 8055b90:	4413      	add	r3, r2
 8055b92:	009b      	lsls	r3, r3, #2
 8055b94:	4403      	add	r3, r0
 8055b96:	6019      	str	r1, [r3, #0]
 8055b98:	4b09      	ldr	r3, [pc, #36]	; (8055bc0 <vTaskResume+0x100>)
 8055b9a:	681b      	ldr	r3, [r3, #0]
 8055b9c:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8055ba0:	68fb      	ldr	r3, [r7, #12]
 8055ba2:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 8055ba6:	429a      	cmp	r2, r3
 8055ba8:	d201      	bcs.n	8055bae <vTaskResume+0xee>
 8055baa:	4b0a      	ldr	r3, [pc, #40]	; (8055bd4 <vTaskResume+0x114>)
 8055bac:	4798      	blx	r3
 8055bae:	4b0a      	ldr	r3, [pc, #40]	; (8055bd8 <vTaskResume+0x118>)
 8055bb0:	4798      	blx	r3
 8055bb2:	bf00      	nop
 8055bb4:	3710      	adds	r7, #16
 8055bb6:	46bd      	mov	sp, r7
 8055bb8:	bd80      	pop	{r7, pc}
 8055bba:	bf00      	nop
 8055bbc:	0805f1c7 	.word	0x0805f1c7
 8055bc0:	20000100 	.word	0x20000100
 8055bc4:	0805ecc5 	.word	0x0805ecc5
 8055bc8:	0805c449 	.word	0x0805c449
 8055bcc:	200002bc 	.word	0x200002bc
 8055bd0:	20000104 	.word	0x20000104
 8055bd4:	0805eca5 	.word	0x0805eca5
 8055bd8:	0805eced 	.word	0x0805eced

08055bdc <xTaskResumeFromISR>:
 8055bdc:	b580      	push	{r7, lr}
 8055bde:	b086      	sub	sp, #24
 8055be0:	af00      	add	r7, sp, #0
 8055be2:	6078      	str	r0, [r7, #4]
 8055be4:	2300      	movs	r3, #0
 8055be6:	617b      	str	r3, [r7, #20]
 8055be8:	687b      	ldr	r3, [r7, #4]
 8055bea:	613b      	str	r3, [r7, #16]
 8055bec:	687b      	ldr	r3, [r7, #4]
 8055bee:	2b00      	cmp	r3, #0
 8055bf0:	d102      	bne.n	8055bf8 <xTaskResumeFromISR+0x1c>
 8055bf2:	4b40      	ldr	r3, [pc, #256]	; (8055cf4 <xTaskResumeFromISR+0x118>)
 8055bf4:	4798      	blx	r3
 8055bf6:	e7fe      	b.n	8055bf6 <xTaskResumeFromISR+0x1a>
 8055bf8:	4b3f      	ldr	r3, [pc, #252]	; (8055cf8 <xTaskResumeFromISR+0x11c>)
 8055bfa:	4798      	blx	r3
 8055bfc:	4b3d      	ldr	r3, [pc, #244]	; (8055cf4 <xTaskResumeFromISR+0x118>)
 8055bfe:	4798      	blx	r3
 8055c00:	60f8      	str	r0, [r7, #12]
 8055c02:	6938      	ldr	r0, [r7, #16]
 8055c04:	f001 ff3e 	bl	8057a84 <prvTaskIsTaskSuspended>
 8055c08:	4603      	mov	r3, r0
 8055c0a:	2b00      	cmp	r3, #0
 8055c0c:	d069      	beq.n	8055ce2 <xTaskResumeFromISR+0x106>
 8055c0e:	4b3b      	ldr	r3, [pc, #236]	; (8055cfc <xTaskResumeFromISR+0x120>)
 8055c10:	681b      	ldr	r3, [r3, #0]
 8055c12:	2b00      	cmp	r3, #0
 8055c14:	d15e      	bne.n	8055cd4 <xTaskResumeFromISR+0xf8>
 8055c16:	693b      	ldr	r3, [r7, #16]
 8055c18:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8055c1c:	4b38      	ldr	r3, [pc, #224]	; (8055d00 <xTaskResumeFromISR+0x124>)
 8055c1e:	681b      	ldr	r3, [r3, #0]
 8055c20:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 8055c24:	429a      	cmp	r2, r3
 8055c26:	d904      	bls.n	8055c32 <xTaskResumeFromISR+0x56>
 8055c28:	2301      	movs	r3, #1
 8055c2a:	617b      	str	r3, [r7, #20]
 8055c2c:	4b35      	ldr	r3, [pc, #212]	; (8055d04 <xTaskResumeFromISR+0x128>)
 8055c2e:	2201      	movs	r2, #1
 8055c30:	601a      	str	r2, [r3, #0]
 8055c32:	693b      	ldr	r3, [r7, #16]
 8055c34:	f503 7325 	add.w	r3, r3, #660	; 0x294
 8055c38:	4618      	mov	r0, r3
 8055c3a:	4b33      	ldr	r3, [pc, #204]	; (8055d08 <xTaskResumeFromISR+0x12c>)
 8055c3c:	4798      	blx	r3
 8055c3e:	693b      	ldr	r3, [r7, #16]
 8055c40:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8055c44:	4b31      	ldr	r3, [pc, #196]	; (8055d0c <xTaskResumeFromISR+0x130>)
 8055c46:	681b      	ldr	r3, [r3, #0]
 8055c48:	429a      	cmp	r2, r3
 8055c4a:	d904      	bls.n	8055c56 <xTaskResumeFromISR+0x7a>
 8055c4c:	693b      	ldr	r3, [r7, #16]
 8055c4e:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 8055c52:	4a2e      	ldr	r2, [pc, #184]	; (8055d0c <xTaskResumeFromISR+0x130>)
 8055c54:	6013      	str	r3, [r2, #0]
 8055c56:	693b      	ldr	r3, [r7, #16]
 8055c58:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8055c5c:	492c      	ldr	r1, [pc, #176]	; (8055d10 <xTaskResumeFromISR+0x134>)
 8055c5e:	4613      	mov	r3, r2
 8055c60:	009b      	lsls	r3, r3, #2
 8055c62:	4413      	add	r3, r2
 8055c64:	009b      	lsls	r3, r3, #2
 8055c66:	440b      	add	r3, r1
 8055c68:	3304      	adds	r3, #4
 8055c6a:	681b      	ldr	r3, [r3, #0]
 8055c6c:	60bb      	str	r3, [r7, #8]
 8055c6e:	693b      	ldr	r3, [r7, #16]
 8055c70:	68ba      	ldr	r2, [r7, #8]
 8055c72:	f8c3 2298 	str.w	r2, [r3, #664]	; 0x298
 8055c76:	68bb      	ldr	r3, [r7, #8]
 8055c78:	689a      	ldr	r2, [r3, #8]
 8055c7a:	693b      	ldr	r3, [r7, #16]
 8055c7c:	f8c3 229c 	str.w	r2, [r3, #668]	; 0x29c
 8055c80:	68bb      	ldr	r3, [r7, #8]
 8055c82:	689b      	ldr	r3, [r3, #8]
 8055c84:	693a      	ldr	r2, [r7, #16]
 8055c86:	f502 7225 	add.w	r2, r2, #660	; 0x294
 8055c8a:	605a      	str	r2, [r3, #4]
 8055c8c:	693b      	ldr	r3, [r7, #16]
 8055c8e:	f503 7225 	add.w	r2, r3, #660	; 0x294
 8055c92:	68bb      	ldr	r3, [r7, #8]
 8055c94:	609a      	str	r2, [r3, #8]
 8055c96:	693b      	ldr	r3, [r7, #16]
 8055c98:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8055c9c:	4613      	mov	r3, r2
 8055c9e:	009b      	lsls	r3, r3, #2
 8055ca0:	4413      	add	r3, r2
 8055ca2:	009b      	lsls	r3, r3, #2
 8055ca4:	4a1a      	ldr	r2, [pc, #104]	; (8055d10 <xTaskResumeFromISR+0x134>)
 8055ca6:	441a      	add	r2, r3
 8055ca8:	693b      	ldr	r3, [r7, #16]
 8055caa:	f8c3 22a4 	str.w	r2, [r3, #676]	; 0x2a4
 8055cae:	693b      	ldr	r3, [r7, #16]
 8055cb0:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8055cb4:	4916      	ldr	r1, [pc, #88]	; (8055d10 <xTaskResumeFromISR+0x134>)
 8055cb6:	4613      	mov	r3, r2
 8055cb8:	009b      	lsls	r3, r3, #2
 8055cba:	4413      	add	r3, r2
 8055cbc:	009b      	lsls	r3, r3, #2
 8055cbe:	440b      	add	r3, r1
 8055cc0:	681b      	ldr	r3, [r3, #0]
 8055cc2:	1c59      	adds	r1, r3, #1
 8055cc4:	4812      	ldr	r0, [pc, #72]	; (8055d10 <xTaskResumeFromISR+0x134>)
 8055cc6:	4613      	mov	r3, r2
 8055cc8:	009b      	lsls	r3, r3, #2
 8055cca:	4413      	add	r3, r2
 8055ccc:	009b      	lsls	r3, r3, #2
 8055cce:	4403      	add	r3, r0
 8055cd0:	6019      	str	r1, [r3, #0]
 8055cd2:	e006      	b.n	8055ce2 <xTaskResumeFromISR+0x106>
 8055cd4:	693b      	ldr	r3, [r7, #16]
 8055cd6:	f503 732a 	add.w	r3, r3, #680	; 0x2a8
 8055cda:	4619      	mov	r1, r3
 8055cdc:	480d      	ldr	r0, [pc, #52]	; (8055d14 <xTaskResumeFromISR+0x138>)
 8055cde:	4b0e      	ldr	r3, [pc, #56]	; (8055d18 <xTaskResumeFromISR+0x13c>)
 8055ce0:	4798      	blx	r3
 8055ce2:	68f8      	ldr	r0, [r7, #12]
 8055ce4:	4b0d      	ldr	r3, [pc, #52]	; (8055d1c <xTaskResumeFromISR+0x140>)
 8055ce6:	4798      	blx	r3
 8055ce8:	697b      	ldr	r3, [r7, #20]
 8055cea:	4618      	mov	r0, r3
 8055cec:	3718      	adds	r7, #24
 8055cee:	46bd      	mov	sp, r7
 8055cf0:	bd80      	pop	{r7, pc}
 8055cf2:	bf00      	nop
 8055cf4:	0805f1c7 	.word	0x0805f1c7
 8055cf8:	080607fd 	.word	0x080607fd
 8055cfc:	200002dc 	.word	0x200002dc
 8055d00:	20000100 	.word	0x20000100
 8055d04:	200002c8 	.word	0x200002c8
 8055d08:	0805c449 	.word	0x0805c449
 8055d0c:	200002bc 	.word	0x200002bc
 8055d10:	20000104 	.word	0x20000104
 8055d14:	20000274 	.word	0x20000274
 8055d18:	0805c403 	.word	0x0805c403
 8055d1c:	0805f1e1 	.word	0x0805f1e1

08055d20 <vTaskStartScheduler>:
 8055d20:	b580      	push	{r7, lr}
 8055d22:	b082      	sub	sp, #8
 8055d24:	af00      	add	r7, sp, #0
 8055d26:	4b14      	ldr	r3, [pc, #80]	; (8055d78 <vTaskStartScheduler+0x58>)
 8055d28:	4798      	blx	r3
 8055d2a:	6078      	str	r0, [r7, #4]
 8055d2c:	687b      	ldr	r3, [r7, #4]
 8055d2e:	2b01      	cmp	r3, #1
 8055d30:	d102      	bne.n	8055d38 <vTaskStartScheduler+0x18>
 8055d32:	4b12      	ldr	r3, [pc, #72]	; (8055d7c <vTaskStartScheduler+0x5c>)
 8055d34:	4798      	blx	r3
 8055d36:	6078      	str	r0, [r7, #4]
 8055d38:	687b      	ldr	r3, [r7, #4]
 8055d3a:	2b01      	cmp	r3, #1
 8055d3c:	d10e      	bne.n	8055d5c <vTaskStartScheduler+0x3c>
 8055d3e:	4b10      	ldr	r3, [pc, #64]	; (8055d80 <vTaskStartScheduler+0x60>)
 8055d40:	4798      	blx	r3
 8055d42:	4b10      	ldr	r3, [pc, #64]	; (8055d84 <vTaskStartScheduler+0x64>)
 8055d44:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8055d48:	601a      	str	r2, [r3, #0]
 8055d4a:	4b0f      	ldr	r3, [pc, #60]	; (8055d88 <vTaskStartScheduler+0x68>)
 8055d4c:	2201      	movs	r2, #1
 8055d4e:	601a      	str	r2, [r3, #0]
 8055d50:	4b0e      	ldr	r3, [pc, #56]	; (8055d8c <vTaskStartScheduler+0x6c>)
 8055d52:	2200      	movs	r2, #0
 8055d54:	601a      	str	r2, [r3, #0]
 8055d56:	4b0e      	ldr	r3, [pc, #56]	; (8055d90 <vTaskStartScheduler+0x70>)
 8055d58:	4798      	blx	r3
 8055d5a:	e006      	b.n	8055d6a <vTaskStartScheduler+0x4a>
 8055d5c:	687b      	ldr	r3, [r7, #4]
 8055d5e:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 8055d62:	d102      	bne.n	8055d6a <vTaskStartScheduler+0x4a>
 8055d64:	4b06      	ldr	r3, [pc, #24]	; (8055d80 <vTaskStartScheduler+0x60>)
 8055d66:	4798      	blx	r3
 8055d68:	e7fe      	b.n	8055d68 <vTaskStartScheduler+0x48>
 8055d6a:	4b0a      	ldr	r3, [pc, #40]	; (8055d94 <vTaskStartScheduler+0x74>)
 8055d6c:	681b      	ldr	r3, [r3, #0]
 8055d6e:	bf00      	nop
 8055d70:	3708      	adds	r7, #8
 8055d72:	46bd      	mov	sp, r7
 8055d74:	bd80      	pop	{r7, pc}
 8055d76:	bf00      	nop
 8055d78:	08060729 	.word	0x08060729
 8055d7c:	08058531 	.word	0x08058531
 8055d80:	0805f1c7 	.word	0x0805f1c7
 8055d84:	200002d4 	.word	0x200002d4
 8055d88:	200002c0 	.word	0x200002c0
 8055d8c:	200002b8 	.word	0x200002b8
 8055d90:	0805e6d5 	.word	0x0805e6d5
 8055d94:	20003b8c 	.word	0x20003b8c

08055d98 <vTaskEndScheduler>:
 8055d98:	b580      	push	{r7, lr}
 8055d9a:	af00      	add	r7, sp, #0
 8055d9c:	4b04      	ldr	r3, [pc, #16]	; (8055db0 <vTaskEndScheduler+0x18>)
 8055d9e:	4798      	blx	r3
 8055da0:	4b04      	ldr	r3, [pc, #16]	; (8055db4 <vTaskEndScheduler+0x1c>)
 8055da2:	2200      	movs	r2, #0
 8055da4:	601a      	str	r2, [r3, #0]
 8055da6:	4b04      	ldr	r3, [pc, #16]	; (8055db8 <vTaskEndScheduler+0x20>)
 8055da8:	4798      	blx	r3
 8055daa:	bf00      	nop
 8055dac:	bd80      	pop	{r7, pc}
 8055dae:	bf00      	nop
 8055db0:	0805f1c7 	.word	0x0805f1c7
 8055db4:	200002c0 	.word	0x200002c0
 8055db8:	0805e7e1 	.word	0x0805e7e1

08055dbc <vTaskSuspendAll>:
 8055dbc:	b480      	push	{r7}
 8055dbe:	af00      	add	r7, sp, #0
 8055dc0:	4b04      	ldr	r3, [pc, #16]	; (8055dd4 <vTaskSuspendAll+0x18>)
 8055dc2:	681b      	ldr	r3, [r3, #0]
 8055dc4:	3301      	adds	r3, #1
 8055dc6:	4a03      	ldr	r2, [pc, #12]	; (8055dd4 <vTaskSuspendAll+0x18>)
 8055dc8:	6013      	str	r3, [r2, #0]
 8055dca:	bf00      	nop
 8055dcc:	46bd      	mov	sp, r7
 8055dce:	bc80      	pop	{r7}
 8055dd0:	4770      	bx	lr
 8055dd2:	bf00      	nop
 8055dd4:	200002dc 	.word	0x200002dc

08055dd8 <xTaskResumeAll>:
 8055dd8:	b580      	push	{r7, lr}
 8055dda:	b088      	sub	sp, #32
 8055ddc:	af00      	add	r7, sp, #0
 8055dde:	2300      	movs	r3, #0
 8055de0:	61fb      	str	r3, [r7, #28]
 8055de2:	2300      	movs	r3, #0
 8055de4:	61bb      	str	r3, [r7, #24]
 8055de6:	4b7d      	ldr	r3, [pc, #500]	; (8055fdc <xTaskResumeAll+0x204>)
 8055de8:	4798      	blx	r3
 8055dea:	2300      	movs	r3, #0
 8055dec:	613b      	str	r3, [r7, #16]
 8055dee:	4b7c      	ldr	r3, [pc, #496]	; (8055fe0 <xTaskResumeAll+0x208>)
 8055df0:	681b      	ldr	r3, [r3, #0]
 8055df2:	2b00      	cmp	r3, #0
 8055df4:	d102      	bne.n	8055dfc <xTaskResumeAll+0x24>
 8055df6:	4b7b      	ldr	r3, [pc, #492]	; (8055fe4 <xTaskResumeAll+0x20c>)
 8055df8:	4798      	blx	r3
 8055dfa:	e7fe      	b.n	8055dfa <xTaskResumeAll+0x22>
 8055dfc:	4b78      	ldr	r3, [pc, #480]	; (8055fe0 <xTaskResumeAll+0x208>)
 8055dfe:	681b      	ldr	r3, [r3, #0]
 8055e00:	3b01      	subs	r3, #1
 8055e02:	4a77      	ldr	r2, [pc, #476]	; (8055fe0 <xTaskResumeAll+0x208>)
 8055e04:	6013      	str	r3, [r2, #0]
 8055e06:	4b76      	ldr	r3, [pc, #472]	; (8055fe0 <xTaskResumeAll+0x208>)
 8055e08:	681b      	ldr	r3, [r3, #0]
 8055e0a:	2b00      	cmp	r3, #0
 8055e0c:	f040 80df 	bne.w	8055fce <xTaskResumeAll+0x1f6>
 8055e10:	4b75      	ldr	r3, [pc, #468]	; (8055fe8 <xTaskResumeAll+0x210>)
 8055e12:	681b      	ldr	r3, [r3, #0]
 8055e14:	2b00      	cmp	r3, #0
 8055e16:	f000 80da 	beq.w	8055fce <xTaskResumeAll+0x1f6>
 8055e1a:	e0a9      	b.n	8055f70 <xTaskResumeAll+0x198>
 8055e1c:	4b73      	ldr	r3, [pc, #460]	; (8055fec <xTaskResumeAll+0x214>)
 8055e1e:	68db      	ldr	r3, [r3, #12]
 8055e20:	68db      	ldr	r3, [r3, #12]
 8055e22:	61fb      	str	r3, [r7, #28]
 8055e24:	69fb      	ldr	r3, [r7, #28]
 8055e26:	f8d3 32b8 	ldr.w	r3, [r3, #696]	; 0x2b8
 8055e2a:	60fb      	str	r3, [r7, #12]
 8055e2c:	69fb      	ldr	r3, [r7, #28]
 8055e2e:	f8d3 32ac 	ldr.w	r3, [r3, #684]	; 0x2ac
 8055e32:	69fa      	ldr	r2, [r7, #28]
 8055e34:	f8d2 22b0 	ldr.w	r2, [r2, #688]	; 0x2b0
 8055e38:	609a      	str	r2, [r3, #8]
 8055e3a:	69fb      	ldr	r3, [r7, #28]
 8055e3c:	f8d3 32b0 	ldr.w	r3, [r3, #688]	; 0x2b0
 8055e40:	69fa      	ldr	r2, [r7, #28]
 8055e42:	f8d2 22ac 	ldr.w	r2, [r2, #684]	; 0x2ac
 8055e46:	605a      	str	r2, [r3, #4]
 8055e48:	68fb      	ldr	r3, [r7, #12]
 8055e4a:	685a      	ldr	r2, [r3, #4]
 8055e4c:	69fb      	ldr	r3, [r7, #28]
 8055e4e:	f503 732a 	add.w	r3, r3, #680	; 0x2a8
 8055e52:	429a      	cmp	r2, r3
 8055e54:	d104      	bne.n	8055e60 <xTaskResumeAll+0x88>
 8055e56:	69fb      	ldr	r3, [r7, #28]
 8055e58:	f8d3 22b0 	ldr.w	r2, [r3, #688]	; 0x2b0
 8055e5c:	68fb      	ldr	r3, [r7, #12]
 8055e5e:	605a      	str	r2, [r3, #4]
 8055e60:	69fb      	ldr	r3, [r7, #28]
 8055e62:	2200      	movs	r2, #0
 8055e64:	f8c3 22b8 	str.w	r2, [r3, #696]	; 0x2b8
 8055e68:	68fb      	ldr	r3, [r7, #12]
 8055e6a:	681b      	ldr	r3, [r3, #0]
 8055e6c:	1e5a      	subs	r2, r3, #1
 8055e6e:	68fb      	ldr	r3, [r7, #12]
 8055e70:	601a      	str	r2, [r3, #0]
 8055e72:	69fb      	ldr	r3, [r7, #28]
 8055e74:	f8d3 32a4 	ldr.w	r3, [r3, #676]	; 0x2a4
 8055e78:	60bb      	str	r3, [r7, #8]
 8055e7a:	69fb      	ldr	r3, [r7, #28]
 8055e7c:	f8d3 3298 	ldr.w	r3, [r3, #664]	; 0x298
 8055e80:	69fa      	ldr	r2, [r7, #28]
 8055e82:	f8d2 229c 	ldr.w	r2, [r2, #668]	; 0x29c
 8055e86:	609a      	str	r2, [r3, #8]
 8055e88:	69fb      	ldr	r3, [r7, #28]
 8055e8a:	f8d3 329c 	ldr.w	r3, [r3, #668]	; 0x29c
 8055e8e:	69fa      	ldr	r2, [r7, #28]
 8055e90:	f8d2 2298 	ldr.w	r2, [r2, #664]	; 0x298
 8055e94:	605a      	str	r2, [r3, #4]
 8055e96:	68bb      	ldr	r3, [r7, #8]
 8055e98:	685a      	ldr	r2, [r3, #4]
 8055e9a:	69fb      	ldr	r3, [r7, #28]
 8055e9c:	f503 7325 	add.w	r3, r3, #660	; 0x294
 8055ea0:	429a      	cmp	r2, r3
 8055ea2:	d104      	bne.n	8055eae <xTaskResumeAll+0xd6>
 8055ea4:	69fb      	ldr	r3, [r7, #28]
 8055ea6:	f8d3 229c 	ldr.w	r2, [r3, #668]	; 0x29c
 8055eaa:	68bb      	ldr	r3, [r7, #8]
 8055eac:	605a      	str	r2, [r3, #4]
 8055eae:	69fb      	ldr	r3, [r7, #28]
 8055eb0:	2200      	movs	r2, #0
 8055eb2:	f8c3 22a4 	str.w	r2, [r3, #676]	; 0x2a4
 8055eb6:	68bb      	ldr	r3, [r7, #8]
 8055eb8:	681b      	ldr	r3, [r3, #0]
 8055eba:	1e5a      	subs	r2, r3, #1
 8055ebc:	68bb      	ldr	r3, [r7, #8]
 8055ebe:	601a      	str	r2, [r3, #0]
 8055ec0:	69fb      	ldr	r3, [r7, #28]
 8055ec2:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8055ec6:	4b4a      	ldr	r3, [pc, #296]	; (8055ff0 <xTaskResumeAll+0x218>)
 8055ec8:	681b      	ldr	r3, [r3, #0]
 8055eca:	429a      	cmp	r2, r3
 8055ecc:	d904      	bls.n	8055ed8 <xTaskResumeAll+0x100>
 8055ece:	69fb      	ldr	r3, [r7, #28]
 8055ed0:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 8055ed4:	4a46      	ldr	r2, [pc, #280]	; (8055ff0 <xTaskResumeAll+0x218>)
 8055ed6:	6013      	str	r3, [r2, #0]
 8055ed8:	69fb      	ldr	r3, [r7, #28]
 8055eda:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8055ede:	4945      	ldr	r1, [pc, #276]	; (8055ff4 <xTaskResumeAll+0x21c>)
 8055ee0:	4613      	mov	r3, r2
 8055ee2:	009b      	lsls	r3, r3, #2
 8055ee4:	4413      	add	r3, r2
 8055ee6:	009b      	lsls	r3, r3, #2
 8055ee8:	440b      	add	r3, r1
 8055eea:	3304      	adds	r3, #4
 8055eec:	681b      	ldr	r3, [r3, #0]
 8055eee:	607b      	str	r3, [r7, #4]
 8055ef0:	69fb      	ldr	r3, [r7, #28]
 8055ef2:	687a      	ldr	r2, [r7, #4]
 8055ef4:	f8c3 2298 	str.w	r2, [r3, #664]	; 0x298
 8055ef8:	687b      	ldr	r3, [r7, #4]
 8055efa:	689a      	ldr	r2, [r3, #8]
 8055efc:	69fb      	ldr	r3, [r7, #28]
 8055efe:	f8c3 229c 	str.w	r2, [r3, #668]	; 0x29c
 8055f02:	687b      	ldr	r3, [r7, #4]
 8055f04:	689b      	ldr	r3, [r3, #8]
 8055f06:	69fa      	ldr	r2, [r7, #28]
 8055f08:	f502 7225 	add.w	r2, r2, #660	; 0x294
 8055f0c:	605a      	str	r2, [r3, #4]
 8055f0e:	69fb      	ldr	r3, [r7, #28]
 8055f10:	f503 7225 	add.w	r2, r3, #660	; 0x294
 8055f14:	687b      	ldr	r3, [r7, #4]
 8055f16:	609a      	str	r2, [r3, #8]
 8055f18:	69fb      	ldr	r3, [r7, #28]
 8055f1a:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8055f1e:	4613      	mov	r3, r2
 8055f20:	009b      	lsls	r3, r3, #2
 8055f22:	4413      	add	r3, r2
 8055f24:	009b      	lsls	r3, r3, #2
 8055f26:	4a33      	ldr	r2, [pc, #204]	; (8055ff4 <xTaskResumeAll+0x21c>)
 8055f28:	441a      	add	r2, r3
 8055f2a:	69fb      	ldr	r3, [r7, #28]
 8055f2c:	f8c3 22a4 	str.w	r2, [r3, #676]	; 0x2a4
 8055f30:	69fb      	ldr	r3, [r7, #28]
 8055f32:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8055f36:	492f      	ldr	r1, [pc, #188]	; (8055ff4 <xTaskResumeAll+0x21c>)
 8055f38:	4613      	mov	r3, r2
 8055f3a:	009b      	lsls	r3, r3, #2
 8055f3c:	4413      	add	r3, r2
 8055f3e:	009b      	lsls	r3, r3, #2
 8055f40:	440b      	add	r3, r1
 8055f42:	681b      	ldr	r3, [r3, #0]
 8055f44:	1c59      	adds	r1, r3, #1
 8055f46:	482b      	ldr	r0, [pc, #172]	; (8055ff4 <xTaskResumeAll+0x21c>)
 8055f48:	4613      	mov	r3, r2
 8055f4a:	009b      	lsls	r3, r3, #2
 8055f4c:	4413      	add	r3, r2
 8055f4e:	009b      	lsls	r3, r3, #2
 8055f50:	4403      	add	r3, r0
 8055f52:	6019      	str	r1, [r3, #0]
 8055f54:	69fb      	ldr	r3, [r7, #28]
 8055f56:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8055f5a:	4b27      	ldr	r3, [pc, #156]	; (8055ff8 <xTaskResumeAll+0x220>)
 8055f5c:	681b      	ldr	r3, [r3, #0]
 8055f5e:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 8055f62:	429a      	cmp	r2, r3
 8055f64:	d904      	bls.n	8055f70 <xTaskResumeAll+0x198>
 8055f66:	4a25      	ldr	r2, [pc, #148]	; (8055ffc <xTaskResumeAll+0x224>)
 8055f68:	693b      	ldr	r3, [r7, #16]
 8055f6a:	2101      	movs	r1, #1
 8055f6c:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8055f70:	4b1e      	ldr	r3, [pc, #120]	; (8055fec <xTaskResumeAll+0x214>)
 8055f72:	681b      	ldr	r3, [r3, #0]
 8055f74:	2b00      	cmp	r3, #0
 8055f76:	f47f af51 	bne.w	8055e1c <xTaskResumeAll+0x44>
 8055f7a:	69fb      	ldr	r3, [r7, #28]
 8055f7c:	2b00      	cmp	r3, #0
 8055f7e:	d001      	beq.n	8055f84 <xTaskResumeAll+0x1ac>
 8055f80:	f001 ff43 	bl	8057e0a <prvResetNextTaskUnblockTime>
 8055f84:	4b1e      	ldr	r3, [pc, #120]	; (8056000 <xTaskResumeAll+0x228>)
 8055f86:	681b      	ldr	r3, [r3, #0]
 8055f88:	617b      	str	r3, [r7, #20]
 8055f8a:	697b      	ldr	r3, [r7, #20]
 8055f8c:	2b00      	cmp	r3, #0
 8055f8e:	d012      	beq.n	8055fb6 <xTaskResumeAll+0x1de>
 8055f90:	f000 feca 	bl	8056d28 <xTaskIncrementTick>
 8055f94:	4603      	mov	r3, r0
 8055f96:	2b00      	cmp	r3, #0
 8055f98:	d004      	beq.n	8055fa4 <xTaskResumeAll+0x1cc>
 8055f9a:	4a18      	ldr	r2, [pc, #96]	; (8055ffc <xTaskResumeAll+0x224>)
 8055f9c:	693b      	ldr	r3, [r7, #16]
 8055f9e:	2101      	movs	r1, #1
 8055fa0:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8055fa4:	697b      	ldr	r3, [r7, #20]
 8055fa6:	3b01      	subs	r3, #1
 8055fa8:	617b      	str	r3, [r7, #20]
 8055faa:	697b      	ldr	r3, [r7, #20]
 8055fac:	2b00      	cmp	r3, #0
 8055fae:	d1ef      	bne.n	8055f90 <xTaskResumeAll+0x1b8>
 8055fb0:	4b13      	ldr	r3, [pc, #76]	; (8056000 <xTaskResumeAll+0x228>)
 8055fb2:	2200      	movs	r2, #0
 8055fb4:	601a      	str	r2, [r3, #0]
 8055fb6:	4a11      	ldr	r2, [pc, #68]	; (8055ffc <xTaskResumeAll+0x224>)
 8055fb8:	693b      	ldr	r3, [r7, #16]
 8055fba:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8055fbe:	2b00      	cmp	r3, #0
 8055fc0:	d005      	beq.n	8055fce <xTaskResumeAll+0x1f6>
 8055fc2:	2301      	movs	r3, #1
 8055fc4:	61bb      	str	r3, [r7, #24]
 8055fc6:	4b0c      	ldr	r3, [pc, #48]	; (8055ff8 <xTaskResumeAll+0x220>)
 8055fc8:	681b      	ldr	r3, [r3, #0]
 8055fca:	4b0e      	ldr	r3, [pc, #56]	; (8056004 <xTaskResumeAll+0x22c>)
 8055fcc:	4798      	blx	r3
 8055fce:	4b0e      	ldr	r3, [pc, #56]	; (8056008 <xTaskResumeAll+0x230>)
 8055fd0:	4798      	blx	r3
 8055fd2:	69bb      	ldr	r3, [r7, #24]
 8055fd4:	4618      	mov	r0, r3
 8055fd6:	3720      	adds	r7, #32
 8055fd8:	46bd      	mov	sp, r7
 8055fda:	bd80      	pop	{r7, pc}
 8055fdc:	0805ecc5 	.word	0x0805ecc5
 8055fe0:	200002dc 	.word	0x200002dc
 8055fe4:	0805f1c7 	.word	0x0805f1c7
 8055fe8:	200002b4 	.word	0x200002b4
 8055fec:	20000274 	.word	0x20000274
 8055ff0:	200002bc 	.word	0x200002bc
 8055ff4:	20000104 	.word	0x20000104
 8055ff8:	20000100 	.word	0x20000100
 8055ffc:	200002c8 	.word	0x200002c8
 8056000:	200002c4 	.word	0x200002c4
 8056004:	0805eca5 	.word	0x0805eca5
 8056008:	0805eced 	.word	0x0805eced

0805600c <xTaskGetTickCount>:
 805600c:	b480      	push	{r7}
 805600e:	b083      	sub	sp, #12
 8056010:	af00      	add	r7, sp, #0
 8056012:	4b04      	ldr	r3, [pc, #16]	; (8056024 <xTaskGetTickCount+0x18>)
 8056014:	681b      	ldr	r3, [r3, #0]
 8056016:	607b      	str	r3, [r7, #4]
 8056018:	687b      	ldr	r3, [r7, #4]
 805601a:	4618      	mov	r0, r3
 805601c:	370c      	adds	r7, #12
 805601e:	46bd      	mov	sp, r7
 8056020:	bc80      	pop	{r7}
 8056022:	4770      	bx	lr
 8056024:	200002b8 	.word	0x200002b8

08056028 <xTaskGetTickCountFromISR>:
 8056028:	b580      	push	{r7, lr}
 805602a:	b082      	sub	sp, #8
 805602c:	af00      	add	r7, sp, #0
 805602e:	4b06      	ldr	r3, [pc, #24]	; (8056048 <xTaskGetTickCountFromISR+0x20>)
 8056030:	4798      	blx	r3
 8056032:	2300      	movs	r3, #0
 8056034:	607b      	str	r3, [r7, #4]
 8056036:	4b05      	ldr	r3, [pc, #20]	; (805604c <xTaskGetTickCountFromISR+0x24>)
 8056038:	681b      	ldr	r3, [r3, #0]
 805603a:	603b      	str	r3, [r7, #0]
 805603c:	683b      	ldr	r3, [r7, #0]
 805603e:	4618      	mov	r0, r3
 8056040:	3708      	adds	r7, #8
 8056042:	46bd      	mov	sp, r7
 8056044:	bd80      	pop	{r7, pc}
 8056046:	bf00      	nop
 8056048:	080607fd 	.word	0x080607fd
 805604c:	200002b8 	.word	0x200002b8

08056050 <uxTaskGetNumberOfTasks>:
 8056050:	b480      	push	{r7}
 8056052:	af00      	add	r7, sp, #0
 8056054:	4b02      	ldr	r3, [pc, #8]	; (8056060 <uxTaskGetNumberOfTasks+0x10>)
 8056056:	681b      	ldr	r3, [r3, #0]
 8056058:	4618      	mov	r0, r3
 805605a:	46bd      	mov	sp, r7
 805605c:	bc80      	pop	{r7}
 805605e:	4770      	bx	lr
 8056060:	200002b4 	.word	0x200002b4

08056064 <pcTaskGetName>:
 8056064:	b580      	push	{r7, lr}
 8056066:	b084      	sub	sp, #16
 8056068:	af00      	add	r7, sp, #0
 805606a:	6078      	str	r0, [r7, #4]
 805606c:	687b      	ldr	r3, [r7, #4]
 805606e:	2b00      	cmp	r3, #0
 8056070:	d102      	bne.n	8056078 <pcTaskGetName+0x14>
 8056072:	4b09      	ldr	r3, [pc, #36]	; (8056098 <pcTaskGetName+0x34>)
 8056074:	681b      	ldr	r3, [r3, #0]
 8056076:	e000      	b.n	805607a <pcTaskGetName+0x16>
 8056078:	687b      	ldr	r3, [r7, #4]
 805607a:	60fb      	str	r3, [r7, #12]
 805607c:	68fb      	ldr	r3, [r7, #12]
 805607e:	2b00      	cmp	r3, #0
 8056080:	d102      	bne.n	8056088 <pcTaskGetName+0x24>
 8056082:	4b06      	ldr	r3, [pc, #24]	; (805609c <pcTaskGetName+0x38>)
 8056084:	4798      	blx	r3
 8056086:	e7fe      	b.n	8056086 <pcTaskGetName+0x22>
 8056088:	68fb      	ldr	r3, [r7, #12]
 805608a:	f503 7331 	add.w	r3, r3, #708	; 0x2c4
 805608e:	4618      	mov	r0, r3
 8056090:	3710      	adds	r7, #16
 8056092:	46bd      	mov	sp, r7
 8056094:	bd80      	pop	{r7, pc}
 8056096:	bf00      	nop
 8056098:	20000100 	.word	0x20000100
 805609c:	0805f1c7 	.word	0x0805f1c7

080560a0 <uxTaskGetStackHighWaterMark>:
 80560a0:	b580      	push	{r7, lr}
 80560a2:	b086      	sub	sp, #24
 80560a4:	af00      	add	r7, sp, #0
 80560a6:	6078      	str	r0, [r7, #4]
 80560a8:	687b      	ldr	r3, [r7, #4]
 80560aa:	2b00      	cmp	r3, #0
 80560ac:	d102      	bne.n	80560b4 <uxTaskGetStackHighWaterMark+0x14>
 80560ae:	4b09      	ldr	r3, [pc, #36]	; (80560d4 <uxTaskGetStackHighWaterMark+0x34>)
 80560b0:	681b      	ldr	r3, [r3, #0]
 80560b2:	e000      	b.n	80560b6 <uxTaskGetStackHighWaterMark+0x16>
 80560b4:	687b      	ldr	r3, [r7, #4]
 80560b6:	617b      	str	r3, [r7, #20]
 80560b8:	697b      	ldr	r3, [r7, #20]
 80560ba:	f8d3 32c0 	ldr.w	r3, [r3, #704]	; 0x2c0
 80560be:	613b      	str	r3, [r7, #16]
 80560c0:	6938      	ldr	r0, [r7, #16]
 80560c2:	f001 fe87 	bl	8057dd4 <prvTaskCheckFreeStackSpace>
 80560c6:	4603      	mov	r3, r0
 80560c8:	60fb      	str	r3, [r7, #12]
 80560ca:	68fb      	ldr	r3, [r7, #12]
 80560cc:	4618      	mov	r0, r3
 80560ce:	3718      	adds	r7, #24
 80560d0:	46bd      	mov	sp, r7
 80560d2:	bd80      	pop	{r7, pc}
 80560d4:	20000100 	.word	0x20000100

080560d8 <uxTaskGetSystemState>:
 80560d8:	b580      	push	{r7, lr}
 80560da:	b086      	sub	sp, #24
 80560dc:	af00      	add	r7, sp, #0
 80560de:	60f8      	str	r0, [r7, #12]
 80560e0:	60b9      	str	r1, [r7, #8]
 80560e2:	607a      	str	r2, [r7, #4]
 80560e4:	2300      	movs	r3, #0
 80560e6:	617b      	str	r3, [r7, #20]
 80560e8:	2310      	movs	r3, #16
 80560ea:	613b      	str	r3, [r7, #16]
 80560ec:	f7ff fe66 	bl	8055dbc <vTaskSuspendAll>
 80560f0:	4b3a      	ldr	r3, [pc, #232]	; (80561dc <uxTaskGetSystemState+0x104>)
 80560f2:	681b      	ldr	r3, [r3, #0]
 80560f4:	68ba      	ldr	r2, [r7, #8]
 80560f6:	429a      	cmp	r2, r3
 80560f8:	d368      	bcc.n	80561cc <uxTaskGetSystemState+0xf4>
 80560fa:	693b      	ldr	r3, [r7, #16]
 80560fc:	3b01      	subs	r3, #1
 80560fe:	613b      	str	r3, [r7, #16]
 8056100:	697a      	ldr	r2, [r7, #20]
 8056102:	4613      	mov	r3, r2
 8056104:	00db      	lsls	r3, r3, #3
 8056106:	4413      	add	r3, r2
 8056108:	009b      	lsls	r3, r3, #2
 805610a:	461a      	mov	r2, r3
 805610c:	68fb      	ldr	r3, [r7, #12]
 805610e:	1898      	adds	r0, r3, r2
 8056110:	693a      	ldr	r2, [r7, #16]
 8056112:	4613      	mov	r3, r2
 8056114:	009b      	lsls	r3, r3, #2
 8056116:	4413      	add	r3, r2
 8056118:	009b      	lsls	r3, r3, #2
 805611a:	4a31      	ldr	r2, [pc, #196]	; (80561e0 <uxTaskGetSystemState+0x108>)
 805611c:	4413      	add	r3, r2
 805611e:	2201      	movs	r2, #1
 8056120:	4619      	mov	r1, r3
 8056122:	f001 fe07 	bl	8057d34 <prvListTasksWithinSingleList>
 8056126:	4602      	mov	r2, r0
 8056128:	697b      	ldr	r3, [r7, #20]
 805612a:	4413      	add	r3, r2
 805612c:	617b      	str	r3, [r7, #20]
 805612e:	693b      	ldr	r3, [r7, #16]
 8056130:	2b00      	cmp	r3, #0
 8056132:	d1e2      	bne.n	80560fa <uxTaskGetSystemState+0x22>
 8056134:	697a      	ldr	r2, [r7, #20]
 8056136:	4613      	mov	r3, r2
 8056138:	00db      	lsls	r3, r3, #3
 805613a:	4413      	add	r3, r2
 805613c:	009b      	lsls	r3, r3, #2
 805613e:	461a      	mov	r2, r3
 8056140:	68fb      	ldr	r3, [r7, #12]
 8056142:	4413      	add	r3, r2
 8056144:	4a27      	ldr	r2, [pc, #156]	; (80561e4 <uxTaskGetSystemState+0x10c>)
 8056146:	6811      	ldr	r1, [r2, #0]
 8056148:	2202      	movs	r2, #2
 805614a:	4618      	mov	r0, r3
 805614c:	f001 fdf2 	bl	8057d34 <prvListTasksWithinSingleList>
 8056150:	4602      	mov	r2, r0
 8056152:	697b      	ldr	r3, [r7, #20]
 8056154:	4413      	add	r3, r2
 8056156:	617b      	str	r3, [r7, #20]
 8056158:	697a      	ldr	r2, [r7, #20]
 805615a:	4613      	mov	r3, r2
 805615c:	00db      	lsls	r3, r3, #3
 805615e:	4413      	add	r3, r2
 8056160:	009b      	lsls	r3, r3, #2
 8056162:	461a      	mov	r2, r3
 8056164:	68fb      	ldr	r3, [r7, #12]
 8056166:	4413      	add	r3, r2
 8056168:	4a1f      	ldr	r2, [pc, #124]	; (80561e8 <uxTaskGetSystemState+0x110>)
 805616a:	6811      	ldr	r1, [r2, #0]
 805616c:	2202      	movs	r2, #2
 805616e:	4618      	mov	r0, r3
 8056170:	f001 fde0 	bl	8057d34 <prvListTasksWithinSingleList>
 8056174:	4602      	mov	r2, r0
 8056176:	697b      	ldr	r3, [r7, #20]
 8056178:	4413      	add	r3, r2
 805617a:	617b      	str	r3, [r7, #20]
 805617c:	697a      	ldr	r2, [r7, #20]
 805617e:	4613      	mov	r3, r2
 8056180:	00db      	lsls	r3, r3, #3
 8056182:	4413      	add	r3, r2
 8056184:	009b      	lsls	r3, r3, #2
 8056186:	461a      	mov	r2, r3
 8056188:	68fb      	ldr	r3, [r7, #12]
 805618a:	4413      	add	r3, r2
 805618c:	2204      	movs	r2, #4
 805618e:	4917      	ldr	r1, [pc, #92]	; (80561ec <uxTaskGetSystemState+0x114>)
 8056190:	4618      	mov	r0, r3
 8056192:	f001 fdcf 	bl	8057d34 <prvListTasksWithinSingleList>
 8056196:	4602      	mov	r2, r0
 8056198:	697b      	ldr	r3, [r7, #20]
 805619a:	4413      	add	r3, r2
 805619c:	617b      	str	r3, [r7, #20]
 805619e:	697a      	ldr	r2, [r7, #20]
 80561a0:	4613      	mov	r3, r2
 80561a2:	00db      	lsls	r3, r3, #3
 80561a4:	4413      	add	r3, r2
 80561a6:	009b      	lsls	r3, r3, #2
 80561a8:	461a      	mov	r2, r3
 80561aa:	68fb      	ldr	r3, [r7, #12]
 80561ac:	4413      	add	r3, r2
 80561ae:	2203      	movs	r2, #3
 80561b0:	490f      	ldr	r1, [pc, #60]	; (80561f0 <uxTaskGetSystemState+0x118>)
 80561b2:	4618      	mov	r0, r3
 80561b4:	f001 fdbe 	bl	8057d34 <prvListTasksWithinSingleList>
 80561b8:	4602      	mov	r2, r0
 80561ba:	697b      	ldr	r3, [r7, #20]
 80561bc:	4413      	add	r3, r2
 80561be:	617b      	str	r3, [r7, #20]
 80561c0:	687b      	ldr	r3, [r7, #4]
 80561c2:	2b00      	cmp	r3, #0
 80561c4:	d002      	beq.n	80561cc <uxTaskGetSystemState+0xf4>
 80561c6:	687b      	ldr	r3, [r7, #4]
 80561c8:	2200      	movs	r2, #0
 80561ca:	601a      	str	r2, [r3, #0]
 80561cc:	f7ff fe04 	bl	8055dd8 <xTaskResumeAll>
 80561d0:	697b      	ldr	r3, [r7, #20]
 80561d2:	4618      	mov	r0, r3
 80561d4:	3718      	adds	r7, #24
 80561d6:	46bd      	mov	sp, r7
 80561d8:	bd80      	pop	{r7, pc}
 80561da:	bf00      	nop
 80561dc:	200002b4 	.word	0x200002b4
 80561e0:	20000104 	.word	0x20000104
 80561e4:	2000026c 	.word	0x2000026c
 80561e8:	20000270 	.word	0x20000270
 80561ec:	20000288 	.word	0x20000288
 80561f0:	200002a0 	.word	0x200002a0

080561f4 <xTaskGenericNotify>:
 80561f4:	b580      	push	{r7, lr}
 80561f6:	b08a      	sub	sp, #40	; 0x28
 80561f8:	af00      	add	r7, sp, #0
 80561fa:	60f8      	str	r0, [r7, #12]
 80561fc:	60b9      	str	r1, [r7, #8]
 80561fe:	607a      	str	r2, [r7, #4]
 8056200:	70fb      	strb	r3, [r7, #3]
 8056202:	2301      	movs	r3, #1
 8056204:	627b      	str	r3, [r7, #36]	; 0x24
 8056206:	68bb      	ldr	r3, [r7, #8]
 8056208:	2b00      	cmp	r3, #0
 805620a:	d002      	beq.n	8056212 <xTaskGenericNotify+0x1e>
 805620c:	4b81      	ldr	r3, [pc, #516]	; (8056414 <xTaskGenericNotify+0x220>)
 805620e:	4798      	blx	r3
 8056210:	e7fe      	b.n	8056210 <xTaskGenericNotify+0x1c>
 8056212:	68fb      	ldr	r3, [r7, #12]
 8056214:	2b00      	cmp	r3, #0
 8056216:	d102      	bne.n	805621e <xTaskGenericNotify+0x2a>
 8056218:	4b7e      	ldr	r3, [pc, #504]	; (8056414 <xTaskGenericNotify+0x220>)
 805621a:	4798      	blx	r3
 805621c:	e7fe      	b.n	805621c <xTaskGenericNotify+0x28>
 805621e:	68fb      	ldr	r3, [r7, #12]
 8056220:	623b      	str	r3, [r7, #32]
 8056222:	4b7d      	ldr	r3, [pc, #500]	; (8056418 <xTaskGenericNotify+0x224>)
 8056224:	4798      	blx	r3
 8056226:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8056228:	2b00      	cmp	r3, #0
 805622a:	d007      	beq.n	805623c <xTaskGenericNotify+0x48>
 805622c:	6a3a      	ldr	r2, [r7, #32]
 805622e:	68bb      	ldr	r3, [r7, #8]
 8056230:	33b8      	adds	r3, #184	; 0xb8
 8056232:	009b      	lsls	r3, r3, #2
 8056234:	4413      	add	r3, r2
 8056236:	685a      	ldr	r2, [r3, #4]
 8056238:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 805623a:	601a      	str	r2, [r3, #0]
 805623c:	6a3a      	ldr	r2, [r7, #32]
 805623e:	68bb      	ldr	r3, [r7, #8]
 8056240:	4413      	add	r3, r2
 8056242:	f503 733a 	add.w	r3, r3, #744	; 0x2e8
 8056246:	781b      	ldrb	r3, [r3, #0]
 8056248:	77fb      	strb	r3, [r7, #31]
 805624a:	6a3a      	ldr	r2, [r7, #32]
 805624c:	68bb      	ldr	r3, [r7, #8]
 805624e:	4413      	add	r3, r2
 8056250:	f503 733a 	add.w	r3, r3, #744	; 0x2e8
 8056254:	2202      	movs	r2, #2
 8056256:	701a      	strb	r2, [r3, #0]
 8056258:	78fb      	ldrb	r3, [r7, #3]
 805625a:	2b04      	cmp	r3, #4
 805625c:	d032      	beq.n	80562c4 <xTaskGenericNotify+0xd0>
 805625e:	2b04      	cmp	r3, #4
 8056260:	dc3e      	bgt.n	80562e0 <xTaskGenericNotify+0xec>
 8056262:	2b03      	cmp	r3, #3
 8056264:	d026      	beq.n	80562b4 <xTaskGenericNotify+0xc0>
 8056266:	2b03      	cmp	r3, #3
 8056268:	dc3a      	bgt.n	80562e0 <xTaskGenericNotify+0xec>
 805626a:	2b02      	cmp	r3, #2
 805626c:	d014      	beq.n	8056298 <xTaskGenericNotify+0xa4>
 805626e:	2b02      	cmp	r3, #2
 8056270:	dc36      	bgt.n	80562e0 <xTaskGenericNotify+0xec>
 8056272:	2b00      	cmp	r3, #0
 8056274:	d03b      	beq.n	80562ee <xTaskGenericNotify+0xfa>
 8056276:	2b01      	cmp	r3, #1
 8056278:	d132      	bne.n	80562e0 <xTaskGenericNotify+0xec>
 805627a:	6a3a      	ldr	r2, [r7, #32]
 805627c:	68bb      	ldr	r3, [r7, #8]
 805627e:	33b8      	adds	r3, #184	; 0xb8
 8056280:	009b      	lsls	r3, r3, #2
 8056282:	4413      	add	r3, r2
 8056284:	685a      	ldr	r2, [r3, #4]
 8056286:	687b      	ldr	r3, [r7, #4]
 8056288:	431a      	orrs	r2, r3
 805628a:	6a39      	ldr	r1, [r7, #32]
 805628c:	68bb      	ldr	r3, [r7, #8]
 805628e:	33b8      	adds	r3, #184	; 0xb8
 8056290:	009b      	lsls	r3, r3, #2
 8056292:	440b      	add	r3, r1
 8056294:	605a      	str	r2, [r3, #4]
 8056296:	e02d      	b.n	80562f4 <xTaskGenericNotify+0x100>
 8056298:	6a3a      	ldr	r2, [r7, #32]
 805629a:	68bb      	ldr	r3, [r7, #8]
 805629c:	33b8      	adds	r3, #184	; 0xb8
 805629e:	009b      	lsls	r3, r3, #2
 80562a0:	4413      	add	r3, r2
 80562a2:	685b      	ldr	r3, [r3, #4]
 80562a4:	1c5a      	adds	r2, r3, #1
 80562a6:	6a39      	ldr	r1, [r7, #32]
 80562a8:	68bb      	ldr	r3, [r7, #8]
 80562aa:	33b8      	adds	r3, #184	; 0xb8
 80562ac:	009b      	lsls	r3, r3, #2
 80562ae:	440b      	add	r3, r1
 80562b0:	605a      	str	r2, [r3, #4]
 80562b2:	e01f      	b.n	80562f4 <xTaskGenericNotify+0x100>
 80562b4:	6a3a      	ldr	r2, [r7, #32]
 80562b6:	68bb      	ldr	r3, [r7, #8]
 80562b8:	33b8      	adds	r3, #184	; 0xb8
 80562ba:	009b      	lsls	r3, r3, #2
 80562bc:	4413      	add	r3, r2
 80562be:	687a      	ldr	r2, [r7, #4]
 80562c0:	605a      	str	r2, [r3, #4]
 80562c2:	e017      	b.n	80562f4 <xTaskGenericNotify+0x100>
 80562c4:	7ffb      	ldrb	r3, [r7, #31]
 80562c6:	2b02      	cmp	r3, #2
 80562c8:	d007      	beq.n	80562da <xTaskGenericNotify+0xe6>
 80562ca:	6a3a      	ldr	r2, [r7, #32]
 80562cc:	68bb      	ldr	r3, [r7, #8]
 80562ce:	33b8      	adds	r3, #184	; 0xb8
 80562d0:	009b      	lsls	r3, r3, #2
 80562d2:	4413      	add	r3, r2
 80562d4:	687a      	ldr	r2, [r7, #4]
 80562d6:	605a      	str	r2, [r3, #4]
 80562d8:	e00c      	b.n	80562f4 <xTaskGenericNotify+0x100>
 80562da:	2300      	movs	r3, #0
 80562dc:	627b      	str	r3, [r7, #36]	; 0x24
 80562de:	e009      	b.n	80562f4 <xTaskGenericNotify+0x100>
 80562e0:	4b4e      	ldr	r3, [pc, #312]	; (805641c <xTaskGenericNotify+0x228>)
 80562e2:	681b      	ldr	r3, [r3, #0]
 80562e4:	2b00      	cmp	r3, #0
 80562e6:	d004      	beq.n	80562f2 <xTaskGenericNotify+0xfe>
 80562e8:	4b4a      	ldr	r3, [pc, #296]	; (8056414 <xTaskGenericNotify+0x220>)
 80562ea:	4798      	blx	r3
 80562ec:	e7fe      	b.n	80562ec <xTaskGenericNotify+0xf8>
 80562ee:	bf00      	nop
 80562f0:	e000      	b.n	80562f4 <xTaskGenericNotify+0x100>
 80562f2:	bf00      	nop
 80562f4:	7ffb      	ldrb	r3, [r7, #31]
 80562f6:	2b01      	cmp	r3, #1
 80562f8:	f040 8084 	bne.w	8056404 <xTaskGenericNotify+0x210>
 80562fc:	6a3b      	ldr	r3, [r7, #32]
 80562fe:	f8d3 32a4 	ldr.w	r3, [r3, #676]	; 0x2a4
 8056302:	61bb      	str	r3, [r7, #24]
 8056304:	6a3b      	ldr	r3, [r7, #32]
 8056306:	f8d3 3298 	ldr.w	r3, [r3, #664]	; 0x298
 805630a:	6a3a      	ldr	r2, [r7, #32]
 805630c:	f8d2 229c 	ldr.w	r2, [r2, #668]	; 0x29c
 8056310:	609a      	str	r2, [r3, #8]
 8056312:	6a3b      	ldr	r3, [r7, #32]
 8056314:	f8d3 329c 	ldr.w	r3, [r3, #668]	; 0x29c
 8056318:	6a3a      	ldr	r2, [r7, #32]
 805631a:	f8d2 2298 	ldr.w	r2, [r2, #664]	; 0x298
 805631e:	605a      	str	r2, [r3, #4]
 8056320:	69bb      	ldr	r3, [r7, #24]
 8056322:	685a      	ldr	r2, [r3, #4]
 8056324:	6a3b      	ldr	r3, [r7, #32]
 8056326:	f503 7325 	add.w	r3, r3, #660	; 0x294
 805632a:	429a      	cmp	r2, r3
 805632c:	d104      	bne.n	8056338 <xTaskGenericNotify+0x144>
 805632e:	6a3b      	ldr	r3, [r7, #32]
 8056330:	f8d3 229c 	ldr.w	r2, [r3, #668]	; 0x29c
 8056334:	69bb      	ldr	r3, [r7, #24]
 8056336:	605a      	str	r2, [r3, #4]
 8056338:	6a3b      	ldr	r3, [r7, #32]
 805633a:	2200      	movs	r2, #0
 805633c:	f8c3 22a4 	str.w	r2, [r3, #676]	; 0x2a4
 8056340:	69bb      	ldr	r3, [r7, #24]
 8056342:	681b      	ldr	r3, [r3, #0]
 8056344:	1e5a      	subs	r2, r3, #1
 8056346:	69bb      	ldr	r3, [r7, #24]
 8056348:	601a      	str	r2, [r3, #0]
 805634a:	6a3b      	ldr	r3, [r7, #32]
 805634c:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8056350:	4b33      	ldr	r3, [pc, #204]	; (8056420 <xTaskGenericNotify+0x22c>)
 8056352:	681b      	ldr	r3, [r3, #0]
 8056354:	429a      	cmp	r2, r3
 8056356:	d904      	bls.n	8056362 <xTaskGenericNotify+0x16e>
 8056358:	6a3b      	ldr	r3, [r7, #32]
 805635a:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 805635e:	4a30      	ldr	r2, [pc, #192]	; (8056420 <xTaskGenericNotify+0x22c>)
 8056360:	6013      	str	r3, [r2, #0]
 8056362:	6a3b      	ldr	r3, [r7, #32]
 8056364:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8056368:	492e      	ldr	r1, [pc, #184]	; (8056424 <xTaskGenericNotify+0x230>)
 805636a:	4613      	mov	r3, r2
 805636c:	009b      	lsls	r3, r3, #2
 805636e:	4413      	add	r3, r2
 8056370:	009b      	lsls	r3, r3, #2
 8056372:	440b      	add	r3, r1
 8056374:	3304      	adds	r3, #4
 8056376:	681b      	ldr	r3, [r3, #0]
 8056378:	617b      	str	r3, [r7, #20]
 805637a:	6a3b      	ldr	r3, [r7, #32]
 805637c:	697a      	ldr	r2, [r7, #20]
 805637e:	f8c3 2298 	str.w	r2, [r3, #664]	; 0x298
 8056382:	697b      	ldr	r3, [r7, #20]
 8056384:	689a      	ldr	r2, [r3, #8]
 8056386:	6a3b      	ldr	r3, [r7, #32]
 8056388:	f8c3 229c 	str.w	r2, [r3, #668]	; 0x29c
 805638c:	697b      	ldr	r3, [r7, #20]
 805638e:	689b      	ldr	r3, [r3, #8]
 8056390:	6a3a      	ldr	r2, [r7, #32]
 8056392:	f502 7225 	add.w	r2, r2, #660	; 0x294
 8056396:	605a      	str	r2, [r3, #4]
 8056398:	6a3b      	ldr	r3, [r7, #32]
 805639a:	f503 7225 	add.w	r2, r3, #660	; 0x294
 805639e:	697b      	ldr	r3, [r7, #20]
 80563a0:	609a      	str	r2, [r3, #8]
 80563a2:	6a3b      	ldr	r3, [r7, #32]
 80563a4:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 80563a8:	4613      	mov	r3, r2
 80563aa:	009b      	lsls	r3, r3, #2
 80563ac:	4413      	add	r3, r2
 80563ae:	009b      	lsls	r3, r3, #2
 80563b0:	4a1c      	ldr	r2, [pc, #112]	; (8056424 <xTaskGenericNotify+0x230>)
 80563b2:	441a      	add	r2, r3
 80563b4:	6a3b      	ldr	r3, [r7, #32]
 80563b6:	f8c3 22a4 	str.w	r2, [r3, #676]	; 0x2a4
 80563ba:	6a3b      	ldr	r3, [r7, #32]
 80563bc:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 80563c0:	4918      	ldr	r1, [pc, #96]	; (8056424 <xTaskGenericNotify+0x230>)
 80563c2:	4613      	mov	r3, r2
 80563c4:	009b      	lsls	r3, r3, #2
 80563c6:	4413      	add	r3, r2
 80563c8:	009b      	lsls	r3, r3, #2
 80563ca:	440b      	add	r3, r1
 80563cc:	681b      	ldr	r3, [r3, #0]
 80563ce:	1c59      	adds	r1, r3, #1
 80563d0:	4814      	ldr	r0, [pc, #80]	; (8056424 <xTaskGenericNotify+0x230>)
 80563d2:	4613      	mov	r3, r2
 80563d4:	009b      	lsls	r3, r3, #2
 80563d6:	4413      	add	r3, r2
 80563d8:	009b      	lsls	r3, r3, #2
 80563da:	4403      	add	r3, r0
 80563dc:	6019      	str	r1, [r3, #0]
 80563de:	6a3b      	ldr	r3, [r7, #32]
 80563e0:	f8d3 32b8 	ldr.w	r3, [r3, #696]	; 0x2b8
 80563e4:	2b00      	cmp	r3, #0
 80563e6:	d002      	beq.n	80563ee <xTaskGenericNotify+0x1fa>
 80563e8:	4b0a      	ldr	r3, [pc, #40]	; (8056414 <xTaskGenericNotify+0x220>)
 80563ea:	4798      	blx	r3
 80563ec:	e7fe      	b.n	80563ec <xTaskGenericNotify+0x1f8>
 80563ee:	4b0e      	ldr	r3, [pc, #56]	; (8056428 <xTaskGenericNotify+0x234>)
 80563f0:	681b      	ldr	r3, [r3, #0]
 80563f2:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 80563f6:	6a3b      	ldr	r3, [r7, #32]
 80563f8:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 80563fc:	429a      	cmp	r2, r3
 80563fe:	d201      	bcs.n	8056404 <xTaskGenericNotify+0x210>
 8056400:	4b0a      	ldr	r3, [pc, #40]	; (805642c <xTaskGenericNotify+0x238>)
 8056402:	4798      	blx	r3
 8056404:	4b0a      	ldr	r3, [pc, #40]	; (8056430 <xTaskGenericNotify+0x23c>)
 8056406:	4798      	blx	r3
 8056408:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805640a:	4618      	mov	r0, r3
 805640c:	3728      	adds	r7, #40	; 0x28
 805640e:	46bd      	mov	sp, r7
 8056410:	bd80      	pop	{r7, pc}
 8056412:	bf00      	nop
 8056414:	0805f1c7 	.word	0x0805f1c7
 8056418:	0805ecc5 	.word	0x0805ecc5
 805641c:	200002b8 	.word	0x200002b8
 8056420:	200002bc 	.word	0x200002bc
 8056424:	20000104 	.word	0x20000104
 8056428:	20000100 	.word	0x20000100
 805642c:	0805eca5 	.word	0x0805eca5
 8056430:	0805eced 	.word	0x0805eced

08056434 <xTaskGenericNotifyFromISR>:
 8056434:	b580      	push	{r7, lr}
 8056436:	b08c      	sub	sp, #48	; 0x30
 8056438:	af00      	add	r7, sp, #0
 805643a:	60f8      	str	r0, [r7, #12]
 805643c:	60b9      	str	r1, [r7, #8]
 805643e:	607a      	str	r2, [r7, #4]
 8056440:	70fb      	strb	r3, [r7, #3]
 8056442:	2301      	movs	r3, #1
 8056444:	62fb      	str	r3, [r7, #44]	; 0x2c
 8056446:	68fb      	ldr	r3, [r7, #12]
 8056448:	2b00      	cmp	r3, #0
 805644a:	d102      	bne.n	8056452 <xTaskGenericNotifyFromISR+0x1e>
 805644c:	4b9a      	ldr	r3, [pc, #616]	; (80566b8 <xTaskGenericNotifyFromISR+0x284>)
 805644e:	4798      	blx	r3
 8056450:	e7fe      	b.n	8056450 <xTaskGenericNotifyFromISR+0x1c>
 8056452:	68bb      	ldr	r3, [r7, #8]
 8056454:	2b00      	cmp	r3, #0
 8056456:	d002      	beq.n	805645e <xTaskGenericNotifyFromISR+0x2a>
 8056458:	4b97      	ldr	r3, [pc, #604]	; (80566b8 <xTaskGenericNotifyFromISR+0x284>)
 805645a:	4798      	blx	r3
 805645c:	e7fe      	b.n	805645c <xTaskGenericNotifyFromISR+0x28>
 805645e:	4b97      	ldr	r3, [pc, #604]	; (80566bc <xTaskGenericNotifyFromISR+0x288>)
 8056460:	4798      	blx	r3
 8056462:	68fb      	ldr	r3, [r7, #12]
 8056464:	62bb      	str	r3, [r7, #40]	; 0x28
 8056466:	4b94      	ldr	r3, [pc, #592]	; (80566b8 <xTaskGenericNotifyFromISR+0x284>)
 8056468:	4798      	blx	r3
 805646a:	6278      	str	r0, [r7, #36]	; 0x24
 805646c:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 805646e:	2b00      	cmp	r3, #0
 8056470:	d007      	beq.n	8056482 <xTaskGenericNotifyFromISR+0x4e>
 8056472:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8056474:	68bb      	ldr	r3, [r7, #8]
 8056476:	33b8      	adds	r3, #184	; 0xb8
 8056478:	009b      	lsls	r3, r3, #2
 805647a:	4413      	add	r3, r2
 805647c:	685a      	ldr	r2, [r3, #4]
 805647e:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8056480:	601a      	str	r2, [r3, #0]
 8056482:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8056484:	68bb      	ldr	r3, [r7, #8]
 8056486:	4413      	add	r3, r2
 8056488:	f503 733a 	add.w	r3, r3, #744	; 0x2e8
 805648c:	781b      	ldrb	r3, [r3, #0]
 805648e:	f887 3023 	strb.w	r3, [r7, #35]	; 0x23
 8056492:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8056494:	68bb      	ldr	r3, [r7, #8]
 8056496:	4413      	add	r3, r2
 8056498:	f503 733a 	add.w	r3, r3, #744	; 0x2e8
 805649c:	2202      	movs	r2, #2
 805649e:	701a      	strb	r2, [r3, #0]
 80564a0:	78fb      	ldrb	r3, [r7, #3]
 80564a2:	2b04      	cmp	r3, #4
 80564a4:	d032      	beq.n	805650c <xTaskGenericNotifyFromISR+0xd8>
 80564a6:	2b04      	cmp	r3, #4
 80564a8:	dc3f      	bgt.n	805652a <xTaskGenericNotifyFromISR+0xf6>
 80564aa:	2b03      	cmp	r3, #3
 80564ac:	d026      	beq.n	80564fc <xTaskGenericNotifyFromISR+0xc8>
 80564ae:	2b03      	cmp	r3, #3
 80564b0:	dc3b      	bgt.n	805652a <xTaskGenericNotifyFromISR+0xf6>
 80564b2:	2b02      	cmp	r3, #2
 80564b4:	d014      	beq.n	80564e0 <xTaskGenericNotifyFromISR+0xac>
 80564b6:	2b02      	cmp	r3, #2
 80564b8:	dc37      	bgt.n	805652a <xTaskGenericNotifyFromISR+0xf6>
 80564ba:	2b00      	cmp	r3, #0
 80564bc:	d03c      	beq.n	8056538 <xTaskGenericNotifyFromISR+0x104>
 80564be:	2b01      	cmp	r3, #1
 80564c0:	d133      	bne.n	805652a <xTaskGenericNotifyFromISR+0xf6>
 80564c2:	6aba      	ldr	r2, [r7, #40]	; 0x28
 80564c4:	68bb      	ldr	r3, [r7, #8]
 80564c6:	33b8      	adds	r3, #184	; 0xb8
 80564c8:	009b      	lsls	r3, r3, #2
 80564ca:	4413      	add	r3, r2
 80564cc:	685a      	ldr	r2, [r3, #4]
 80564ce:	687b      	ldr	r3, [r7, #4]
 80564d0:	431a      	orrs	r2, r3
 80564d2:	6ab9      	ldr	r1, [r7, #40]	; 0x28
 80564d4:	68bb      	ldr	r3, [r7, #8]
 80564d6:	33b8      	adds	r3, #184	; 0xb8
 80564d8:	009b      	lsls	r3, r3, #2
 80564da:	440b      	add	r3, r1
 80564dc:	605a      	str	r2, [r3, #4]
 80564de:	e02e      	b.n	805653e <xTaskGenericNotifyFromISR+0x10a>
 80564e0:	6aba      	ldr	r2, [r7, #40]	; 0x28
 80564e2:	68bb      	ldr	r3, [r7, #8]
 80564e4:	33b8      	adds	r3, #184	; 0xb8
 80564e6:	009b      	lsls	r3, r3, #2
 80564e8:	4413      	add	r3, r2
 80564ea:	685b      	ldr	r3, [r3, #4]
 80564ec:	1c5a      	adds	r2, r3, #1
 80564ee:	6ab9      	ldr	r1, [r7, #40]	; 0x28
 80564f0:	68bb      	ldr	r3, [r7, #8]
 80564f2:	33b8      	adds	r3, #184	; 0xb8
 80564f4:	009b      	lsls	r3, r3, #2
 80564f6:	440b      	add	r3, r1
 80564f8:	605a      	str	r2, [r3, #4]
 80564fa:	e020      	b.n	805653e <xTaskGenericNotifyFromISR+0x10a>
 80564fc:	6aba      	ldr	r2, [r7, #40]	; 0x28
 80564fe:	68bb      	ldr	r3, [r7, #8]
 8056500:	33b8      	adds	r3, #184	; 0xb8
 8056502:	009b      	lsls	r3, r3, #2
 8056504:	4413      	add	r3, r2
 8056506:	687a      	ldr	r2, [r7, #4]
 8056508:	605a      	str	r2, [r3, #4]
 805650a:	e018      	b.n	805653e <xTaskGenericNotifyFromISR+0x10a>
 805650c:	f897 3023 	ldrb.w	r3, [r7, #35]	; 0x23
 8056510:	2b02      	cmp	r3, #2
 8056512:	d007      	beq.n	8056524 <xTaskGenericNotifyFromISR+0xf0>
 8056514:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8056516:	68bb      	ldr	r3, [r7, #8]
 8056518:	33b8      	adds	r3, #184	; 0xb8
 805651a:	009b      	lsls	r3, r3, #2
 805651c:	4413      	add	r3, r2
 805651e:	687a      	ldr	r2, [r7, #4]
 8056520:	605a      	str	r2, [r3, #4]
 8056522:	e00c      	b.n	805653e <xTaskGenericNotifyFromISR+0x10a>
 8056524:	2300      	movs	r3, #0
 8056526:	62fb      	str	r3, [r7, #44]	; 0x2c
 8056528:	e009      	b.n	805653e <xTaskGenericNotifyFromISR+0x10a>
 805652a:	4b65      	ldr	r3, [pc, #404]	; (80566c0 <xTaskGenericNotifyFromISR+0x28c>)
 805652c:	681b      	ldr	r3, [r3, #0]
 805652e:	2b00      	cmp	r3, #0
 8056530:	d004      	beq.n	805653c <xTaskGenericNotifyFromISR+0x108>
 8056532:	4b61      	ldr	r3, [pc, #388]	; (80566b8 <xTaskGenericNotifyFromISR+0x284>)
 8056534:	4798      	blx	r3
 8056536:	e7fe      	b.n	8056536 <xTaskGenericNotifyFromISR+0x102>
 8056538:	bf00      	nop
 805653a:	e000      	b.n	805653e <xTaskGenericNotifyFromISR+0x10a>
 805653c:	bf00      	nop
 805653e:	f897 3023 	ldrb.w	r3, [r7, #35]	; 0x23
 8056542:	2b01      	cmp	r3, #1
 8056544:	f040 80b0 	bne.w	80566a8 <xTaskGenericNotifyFromISR+0x274>
 8056548:	6abb      	ldr	r3, [r7, #40]	; 0x28
 805654a:	f8d3 32b8 	ldr.w	r3, [r3, #696]	; 0x2b8
 805654e:	2b00      	cmp	r3, #0
 8056550:	d002      	beq.n	8056558 <xTaskGenericNotifyFromISR+0x124>
 8056552:	4b59      	ldr	r3, [pc, #356]	; (80566b8 <xTaskGenericNotifyFromISR+0x284>)
 8056554:	4798      	blx	r3
 8056556:	e7fe      	b.n	8056556 <xTaskGenericNotifyFromISR+0x122>
 8056558:	4b5a      	ldr	r3, [pc, #360]	; (80566c4 <xTaskGenericNotifyFromISR+0x290>)
 805655a:	681b      	ldr	r3, [r3, #0]
 805655c:	2b00      	cmp	r3, #0
 805655e:	d171      	bne.n	8056644 <xTaskGenericNotifyFromISR+0x210>
 8056560:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8056562:	f8d3 32a4 	ldr.w	r3, [r3, #676]	; 0x2a4
 8056566:	61bb      	str	r3, [r7, #24]
 8056568:	6abb      	ldr	r3, [r7, #40]	; 0x28
 805656a:	f8d3 3298 	ldr.w	r3, [r3, #664]	; 0x298
 805656e:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8056570:	f8d2 229c 	ldr.w	r2, [r2, #668]	; 0x29c
 8056574:	609a      	str	r2, [r3, #8]
 8056576:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8056578:	f8d3 329c 	ldr.w	r3, [r3, #668]	; 0x29c
 805657c:	6aba      	ldr	r2, [r7, #40]	; 0x28
 805657e:	f8d2 2298 	ldr.w	r2, [r2, #664]	; 0x298
 8056582:	605a      	str	r2, [r3, #4]
 8056584:	69bb      	ldr	r3, [r7, #24]
 8056586:	685a      	ldr	r2, [r3, #4]
 8056588:	6abb      	ldr	r3, [r7, #40]	; 0x28
 805658a:	f503 7325 	add.w	r3, r3, #660	; 0x294
 805658e:	429a      	cmp	r2, r3
 8056590:	d104      	bne.n	805659c <xTaskGenericNotifyFromISR+0x168>
 8056592:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8056594:	f8d3 229c 	ldr.w	r2, [r3, #668]	; 0x29c
 8056598:	69bb      	ldr	r3, [r7, #24]
 805659a:	605a      	str	r2, [r3, #4]
 805659c:	6abb      	ldr	r3, [r7, #40]	; 0x28
 805659e:	2200      	movs	r2, #0
 80565a0:	f8c3 22a4 	str.w	r2, [r3, #676]	; 0x2a4
 80565a4:	69bb      	ldr	r3, [r7, #24]
 80565a6:	681b      	ldr	r3, [r3, #0]
 80565a8:	1e5a      	subs	r2, r3, #1
 80565aa:	69bb      	ldr	r3, [r7, #24]
 80565ac:	601a      	str	r2, [r3, #0]
 80565ae:	6abb      	ldr	r3, [r7, #40]	; 0x28
 80565b0:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 80565b4:	4b44      	ldr	r3, [pc, #272]	; (80566c8 <xTaskGenericNotifyFromISR+0x294>)
 80565b6:	681b      	ldr	r3, [r3, #0]
 80565b8:	429a      	cmp	r2, r3
 80565ba:	d904      	bls.n	80565c6 <xTaskGenericNotifyFromISR+0x192>
 80565bc:	6abb      	ldr	r3, [r7, #40]	; 0x28
 80565be:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 80565c2:	4a41      	ldr	r2, [pc, #260]	; (80566c8 <xTaskGenericNotifyFromISR+0x294>)
 80565c4:	6013      	str	r3, [r2, #0]
 80565c6:	6abb      	ldr	r3, [r7, #40]	; 0x28
 80565c8:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 80565cc:	493f      	ldr	r1, [pc, #252]	; (80566cc <xTaskGenericNotifyFromISR+0x298>)
 80565ce:	4613      	mov	r3, r2
 80565d0:	009b      	lsls	r3, r3, #2
 80565d2:	4413      	add	r3, r2
 80565d4:	009b      	lsls	r3, r3, #2
 80565d6:	440b      	add	r3, r1
 80565d8:	3304      	adds	r3, #4
 80565da:	681b      	ldr	r3, [r3, #0]
 80565dc:	617b      	str	r3, [r7, #20]
 80565de:	6abb      	ldr	r3, [r7, #40]	; 0x28
 80565e0:	697a      	ldr	r2, [r7, #20]
 80565e2:	f8c3 2298 	str.w	r2, [r3, #664]	; 0x298
 80565e6:	697b      	ldr	r3, [r7, #20]
 80565e8:	689a      	ldr	r2, [r3, #8]
 80565ea:	6abb      	ldr	r3, [r7, #40]	; 0x28
 80565ec:	f8c3 229c 	str.w	r2, [r3, #668]	; 0x29c
 80565f0:	697b      	ldr	r3, [r7, #20]
 80565f2:	689b      	ldr	r3, [r3, #8]
 80565f4:	6aba      	ldr	r2, [r7, #40]	; 0x28
 80565f6:	f502 7225 	add.w	r2, r2, #660	; 0x294
 80565fa:	605a      	str	r2, [r3, #4]
 80565fc:	6abb      	ldr	r3, [r7, #40]	; 0x28
 80565fe:	f503 7225 	add.w	r2, r3, #660	; 0x294
 8056602:	697b      	ldr	r3, [r7, #20]
 8056604:	609a      	str	r2, [r3, #8]
 8056606:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8056608:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 805660c:	4613      	mov	r3, r2
 805660e:	009b      	lsls	r3, r3, #2
 8056610:	4413      	add	r3, r2
 8056612:	009b      	lsls	r3, r3, #2
 8056614:	4a2d      	ldr	r2, [pc, #180]	; (80566cc <xTaskGenericNotifyFromISR+0x298>)
 8056616:	441a      	add	r2, r3
 8056618:	6abb      	ldr	r3, [r7, #40]	; 0x28
 805661a:	f8c3 22a4 	str.w	r2, [r3, #676]	; 0x2a4
 805661e:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8056620:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8056624:	4929      	ldr	r1, [pc, #164]	; (80566cc <xTaskGenericNotifyFromISR+0x298>)
 8056626:	4613      	mov	r3, r2
 8056628:	009b      	lsls	r3, r3, #2
 805662a:	4413      	add	r3, r2
 805662c:	009b      	lsls	r3, r3, #2
 805662e:	440b      	add	r3, r1
 8056630:	681b      	ldr	r3, [r3, #0]
 8056632:	1c59      	adds	r1, r3, #1
 8056634:	4825      	ldr	r0, [pc, #148]	; (80566cc <xTaskGenericNotifyFromISR+0x298>)
 8056636:	4613      	mov	r3, r2
 8056638:	009b      	lsls	r3, r3, #2
 805663a:	4413      	add	r3, r2
 805663c:	009b      	lsls	r3, r3, #2
 805663e:	4403      	add	r3, r0
 8056640:	6019      	str	r1, [r3, #0]
 8056642:	e01f      	b.n	8056684 <xTaskGenericNotifyFromISR+0x250>
 8056644:	4b22      	ldr	r3, [pc, #136]	; (80566d0 <xTaskGenericNotifyFromISR+0x29c>)
 8056646:	685b      	ldr	r3, [r3, #4]
 8056648:	61fb      	str	r3, [r7, #28]
 805664a:	6abb      	ldr	r3, [r7, #40]	; 0x28
 805664c:	69fa      	ldr	r2, [r7, #28]
 805664e:	f8c3 22ac 	str.w	r2, [r3, #684]	; 0x2ac
 8056652:	69fb      	ldr	r3, [r7, #28]
 8056654:	689a      	ldr	r2, [r3, #8]
 8056656:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8056658:	f8c3 22b0 	str.w	r2, [r3, #688]	; 0x2b0
 805665c:	69fb      	ldr	r3, [r7, #28]
 805665e:	689b      	ldr	r3, [r3, #8]
 8056660:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8056662:	f502 722a 	add.w	r2, r2, #680	; 0x2a8
 8056666:	605a      	str	r2, [r3, #4]
 8056668:	6abb      	ldr	r3, [r7, #40]	; 0x28
 805666a:	f503 722a 	add.w	r2, r3, #680	; 0x2a8
 805666e:	69fb      	ldr	r3, [r7, #28]
 8056670:	609a      	str	r2, [r3, #8]
 8056672:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8056674:	4a16      	ldr	r2, [pc, #88]	; (80566d0 <xTaskGenericNotifyFromISR+0x29c>)
 8056676:	f8c3 22b8 	str.w	r2, [r3, #696]	; 0x2b8
 805667a:	4b15      	ldr	r3, [pc, #84]	; (80566d0 <xTaskGenericNotifyFromISR+0x29c>)
 805667c:	681b      	ldr	r3, [r3, #0]
 805667e:	3301      	adds	r3, #1
 8056680:	4a13      	ldr	r2, [pc, #76]	; (80566d0 <xTaskGenericNotifyFromISR+0x29c>)
 8056682:	6013      	str	r3, [r2, #0]
 8056684:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8056686:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 805668a:	4b12      	ldr	r3, [pc, #72]	; (80566d4 <xTaskGenericNotifyFromISR+0x2a0>)
 805668c:	681b      	ldr	r3, [r3, #0]
 805668e:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 8056692:	429a      	cmp	r2, r3
 8056694:	d908      	bls.n	80566a8 <xTaskGenericNotifyFromISR+0x274>
 8056696:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8056698:	2b00      	cmp	r3, #0
 805669a:	d002      	beq.n	80566a2 <xTaskGenericNotifyFromISR+0x26e>
 805669c:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 805669e:	2201      	movs	r2, #1
 80566a0:	601a      	str	r2, [r3, #0]
 80566a2:	4b0d      	ldr	r3, [pc, #52]	; (80566d8 <xTaskGenericNotifyFromISR+0x2a4>)
 80566a4:	2201      	movs	r2, #1
 80566a6:	601a      	str	r2, [r3, #0]
 80566a8:	6a78      	ldr	r0, [r7, #36]	; 0x24
 80566aa:	4b0c      	ldr	r3, [pc, #48]	; (80566dc <xTaskGenericNotifyFromISR+0x2a8>)
 80566ac:	4798      	blx	r3
 80566ae:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80566b0:	4618      	mov	r0, r3
 80566b2:	3730      	adds	r7, #48	; 0x30
 80566b4:	46bd      	mov	sp, r7
 80566b6:	bd80      	pop	{r7, pc}
 80566b8:	0805f1c7 	.word	0x0805f1c7
 80566bc:	080607fd 	.word	0x080607fd
 80566c0:	200002b8 	.word	0x200002b8
 80566c4:	200002dc 	.word	0x200002dc
 80566c8:	200002bc 	.word	0x200002bc
 80566cc:	20000104 	.word	0x20000104
 80566d0:	20000274 	.word	0x20000274
 80566d4:	20000100 	.word	0x20000100
 80566d8:	200002c8 	.word	0x200002c8
 80566dc:	0805f1e1 	.word	0x0805f1e1

080566e0 <xTaskGenericNotifyWait>:
 80566e0:	b580      	push	{r7, lr}
 80566e2:	b086      	sub	sp, #24
 80566e4:	af00      	add	r7, sp, #0
 80566e6:	60f8      	str	r0, [r7, #12]
 80566e8:	60b9      	str	r1, [r7, #8]
 80566ea:	607a      	str	r2, [r7, #4]
 80566ec:	603b      	str	r3, [r7, #0]
 80566ee:	68fb      	ldr	r3, [r7, #12]
 80566f0:	2b00      	cmp	r3, #0
 80566f2:	d002      	beq.n	80566fa <xTaskGenericNotifyWait+0x1a>
 80566f4:	4b3c      	ldr	r3, [pc, #240]	; (80567e8 <xTaskGenericNotifyWait+0x108>)
 80566f6:	4798      	blx	r3
 80566f8:	e7fe      	b.n	80566f8 <xTaskGenericNotifyWait+0x18>
 80566fa:	4b3c      	ldr	r3, [pc, #240]	; (80567ec <xTaskGenericNotifyWait+0x10c>)
 80566fc:	4798      	blx	r3
 80566fe:	4b3c      	ldr	r3, [pc, #240]	; (80567f0 <xTaskGenericNotifyWait+0x110>)
 8056700:	681a      	ldr	r2, [r3, #0]
 8056702:	68fb      	ldr	r3, [r7, #12]
 8056704:	4413      	add	r3, r2
 8056706:	f503 733a 	add.w	r3, r3, #744	; 0x2e8
 805670a:	781b      	ldrb	r3, [r3, #0]
 805670c:	b2db      	uxtb	r3, r3
 805670e:	2b02      	cmp	r3, #2
 8056710:	d02d      	beq.n	805676e <xTaskGenericNotifyWait+0x8e>
 8056712:	4b37      	ldr	r3, [pc, #220]	; (80567f0 <xTaskGenericNotifyWait+0x110>)
 8056714:	681a      	ldr	r2, [r3, #0]
 8056716:	68fb      	ldr	r3, [r7, #12]
 8056718:	33b8      	adds	r3, #184	; 0xb8
 805671a:	009b      	lsls	r3, r3, #2
 805671c:	4413      	add	r3, r2
 805671e:	6859      	ldr	r1, [r3, #4]
 8056720:	68bb      	ldr	r3, [r7, #8]
 8056722:	43db      	mvns	r3, r3
 8056724:	4019      	ands	r1, r3
 8056726:	68fb      	ldr	r3, [r7, #12]
 8056728:	33b8      	adds	r3, #184	; 0xb8
 805672a:	009b      	lsls	r3, r3, #2
 805672c:	4413      	add	r3, r2
 805672e:	6059      	str	r1, [r3, #4]
 8056730:	4b2f      	ldr	r3, [pc, #188]	; (80567f0 <xTaskGenericNotifyWait+0x110>)
 8056732:	681a      	ldr	r2, [r3, #0]
 8056734:	68fb      	ldr	r3, [r7, #12]
 8056736:	4413      	add	r3, r2
 8056738:	f503 733a 	add.w	r3, r3, #744	; 0x2e8
 805673c:	2201      	movs	r2, #1
 805673e:	701a      	strb	r2, [r3, #0]
 8056740:	6a3b      	ldr	r3, [r7, #32]
 8056742:	2b00      	cmp	r3, #0
 8056744:	d010      	beq.n	8056768 <xTaskGenericNotifyWait+0x88>
 8056746:	f7ff fb39 	bl	8055dbc <vTaskSuspendAll>
 805674a:	4b2a      	ldr	r3, [pc, #168]	; (80567f4 <xTaskGenericNotifyWait+0x114>)
 805674c:	4798      	blx	r3
 805674e:	2101      	movs	r1, #1
 8056750:	6a38      	ldr	r0, [r7, #32]
 8056752:	f001 fa73 	bl	8057c3c <prvAddCurrentTaskToDelayedList>
 8056756:	f7ff fb3f 	bl	8055dd8 <xTaskResumeAll>
 805675a:	6138      	str	r0, [r7, #16]
 805675c:	693b      	ldr	r3, [r7, #16]
 805675e:	2b00      	cmp	r3, #0
 8056760:	d107      	bne.n	8056772 <xTaskGenericNotifyWait+0x92>
 8056762:	4b25      	ldr	r3, [pc, #148]	; (80567f8 <xTaskGenericNotifyWait+0x118>)
 8056764:	4798      	blx	r3
 8056766:	e004      	b.n	8056772 <xTaskGenericNotifyWait+0x92>
 8056768:	4b22      	ldr	r3, [pc, #136]	; (80567f4 <xTaskGenericNotifyWait+0x114>)
 805676a:	4798      	blx	r3
 805676c:	e001      	b.n	8056772 <xTaskGenericNotifyWait+0x92>
 805676e:	4b21      	ldr	r3, [pc, #132]	; (80567f4 <xTaskGenericNotifyWait+0x114>)
 8056770:	4798      	blx	r3
 8056772:	4b1e      	ldr	r3, [pc, #120]	; (80567ec <xTaskGenericNotifyWait+0x10c>)
 8056774:	4798      	blx	r3
 8056776:	683b      	ldr	r3, [r7, #0]
 8056778:	2b00      	cmp	r3, #0
 805677a:	d008      	beq.n	805678e <xTaskGenericNotifyWait+0xae>
 805677c:	4b1c      	ldr	r3, [pc, #112]	; (80567f0 <xTaskGenericNotifyWait+0x110>)
 805677e:	681a      	ldr	r2, [r3, #0]
 8056780:	68fb      	ldr	r3, [r7, #12]
 8056782:	33b8      	adds	r3, #184	; 0xb8
 8056784:	009b      	lsls	r3, r3, #2
 8056786:	4413      	add	r3, r2
 8056788:	685a      	ldr	r2, [r3, #4]
 805678a:	683b      	ldr	r3, [r7, #0]
 805678c:	601a      	str	r2, [r3, #0]
 805678e:	4b18      	ldr	r3, [pc, #96]	; (80567f0 <xTaskGenericNotifyWait+0x110>)
 8056790:	681a      	ldr	r2, [r3, #0]
 8056792:	68fb      	ldr	r3, [r7, #12]
 8056794:	4413      	add	r3, r2
 8056796:	f503 733a 	add.w	r3, r3, #744	; 0x2e8
 805679a:	781b      	ldrb	r3, [r3, #0]
 805679c:	b2db      	uxtb	r3, r3
 805679e:	2b02      	cmp	r3, #2
 80567a0:	d002      	beq.n	80567a8 <xTaskGenericNotifyWait+0xc8>
 80567a2:	2300      	movs	r3, #0
 80567a4:	617b      	str	r3, [r7, #20]
 80567a6:	e010      	b.n	80567ca <xTaskGenericNotifyWait+0xea>
 80567a8:	4b11      	ldr	r3, [pc, #68]	; (80567f0 <xTaskGenericNotifyWait+0x110>)
 80567aa:	681a      	ldr	r2, [r3, #0]
 80567ac:	68fb      	ldr	r3, [r7, #12]
 80567ae:	33b8      	adds	r3, #184	; 0xb8
 80567b0:	009b      	lsls	r3, r3, #2
 80567b2:	4413      	add	r3, r2
 80567b4:	6859      	ldr	r1, [r3, #4]
 80567b6:	687b      	ldr	r3, [r7, #4]
 80567b8:	43db      	mvns	r3, r3
 80567ba:	4019      	ands	r1, r3
 80567bc:	68fb      	ldr	r3, [r7, #12]
 80567be:	33b8      	adds	r3, #184	; 0xb8
 80567c0:	009b      	lsls	r3, r3, #2
 80567c2:	4413      	add	r3, r2
 80567c4:	6059      	str	r1, [r3, #4]
 80567c6:	2301      	movs	r3, #1
 80567c8:	617b      	str	r3, [r7, #20]
 80567ca:	4b09      	ldr	r3, [pc, #36]	; (80567f0 <xTaskGenericNotifyWait+0x110>)
 80567cc:	681a      	ldr	r2, [r3, #0]
 80567ce:	68fb      	ldr	r3, [r7, #12]
 80567d0:	4413      	add	r3, r2
 80567d2:	f503 733a 	add.w	r3, r3, #744	; 0x2e8
 80567d6:	2200      	movs	r2, #0
 80567d8:	701a      	strb	r2, [r3, #0]
 80567da:	4b06      	ldr	r3, [pc, #24]	; (80567f4 <xTaskGenericNotifyWait+0x114>)
 80567dc:	4798      	blx	r3
 80567de:	697b      	ldr	r3, [r7, #20]
 80567e0:	4618      	mov	r0, r3
 80567e2:	3718      	adds	r7, #24
 80567e4:	46bd      	mov	sp, r7
 80567e6:	bd80      	pop	{r7, pc}
 80567e8:	0805f1c7 	.word	0x0805f1c7
 80567ec:	0805ecc5 	.word	0x0805ecc5
 80567f0:	20000100 	.word	0x20000100
 80567f4:	0805eced 	.word	0x0805eced
 80567f8:	0805eca5 	.word	0x0805eca5

080567fc <vTaskGenericNotifyGiveFromISR>:
 80567fc:	b580      	push	{r7, lr}
 80567fe:	b08a      	sub	sp, #40	; 0x28
 8056800:	af00      	add	r7, sp, #0
 8056802:	60f8      	str	r0, [r7, #12]
 8056804:	60b9      	str	r1, [r7, #8]
 8056806:	607a      	str	r2, [r7, #4]
 8056808:	68fb      	ldr	r3, [r7, #12]
 805680a:	2b00      	cmp	r3, #0
 805680c:	d102      	bne.n	8056814 <vTaskGenericNotifyGiveFromISR+0x18>
 805680e:	4b73      	ldr	r3, [pc, #460]	; (80569dc <vTaskGenericNotifyGiveFromISR+0x1e0>)
 8056810:	4798      	blx	r3
 8056812:	e7fe      	b.n	8056812 <vTaskGenericNotifyGiveFromISR+0x16>
 8056814:	68bb      	ldr	r3, [r7, #8]
 8056816:	2b00      	cmp	r3, #0
 8056818:	d002      	beq.n	8056820 <vTaskGenericNotifyGiveFromISR+0x24>
 805681a:	4b70      	ldr	r3, [pc, #448]	; (80569dc <vTaskGenericNotifyGiveFromISR+0x1e0>)
 805681c:	4798      	blx	r3
 805681e:	e7fe      	b.n	805681e <vTaskGenericNotifyGiveFromISR+0x22>
 8056820:	4b6f      	ldr	r3, [pc, #444]	; (80569e0 <vTaskGenericNotifyGiveFromISR+0x1e4>)
 8056822:	4798      	blx	r3
 8056824:	68fb      	ldr	r3, [r7, #12]
 8056826:	627b      	str	r3, [r7, #36]	; 0x24
 8056828:	4b6c      	ldr	r3, [pc, #432]	; (80569dc <vTaskGenericNotifyGiveFromISR+0x1e0>)
 805682a:	4798      	blx	r3
 805682c:	6238      	str	r0, [r7, #32]
 805682e:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 8056830:	68bb      	ldr	r3, [r7, #8]
 8056832:	4413      	add	r3, r2
 8056834:	f503 733a 	add.w	r3, r3, #744	; 0x2e8
 8056838:	781b      	ldrb	r3, [r3, #0]
 805683a:	77fb      	strb	r3, [r7, #31]
 805683c:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 805683e:	68bb      	ldr	r3, [r7, #8]
 8056840:	4413      	add	r3, r2
 8056842:	f503 733a 	add.w	r3, r3, #744	; 0x2e8
 8056846:	2202      	movs	r2, #2
 8056848:	701a      	strb	r2, [r3, #0]
 805684a:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 805684c:	68bb      	ldr	r3, [r7, #8]
 805684e:	33b8      	adds	r3, #184	; 0xb8
 8056850:	009b      	lsls	r3, r3, #2
 8056852:	4413      	add	r3, r2
 8056854:	685b      	ldr	r3, [r3, #4]
 8056856:	1c5a      	adds	r2, r3, #1
 8056858:	6a79      	ldr	r1, [r7, #36]	; 0x24
 805685a:	68bb      	ldr	r3, [r7, #8]
 805685c:	33b8      	adds	r3, #184	; 0xb8
 805685e:	009b      	lsls	r3, r3, #2
 8056860:	440b      	add	r3, r1
 8056862:	605a      	str	r2, [r3, #4]
 8056864:	7ffb      	ldrb	r3, [r7, #31]
 8056866:	2b01      	cmp	r3, #1
 8056868:	f040 80b0 	bne.w	80569cc <vTaskGenericNotifyGiveFromISR+0x1d0>
 805686c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805686e:	f8d3 32b8 	ldr.w	r3, [r3, #696]	; 0x2b8
 8056872:	2b00      	cmp	r3, #0
 8056874:	d002      	beq.n	805687c <vTaskGenericNotifyGiveFromISR+0x80>
 8056876:	4b59      	ldr	r3, [pc, #356]	; (80569dc <vTaskGenericNotifyGiveFromISR+0x1e0>)
 8056878:	4798      	blx	r3
 805687a:	e7fe      	b.n	805687a <vTaskGenericNotifyGiveFromISR+0x7e>
 805687c:	4b59      	ldr	r3, [pc, #356]	; (80569e4 <vTaskGenericNotifyGiveFromISR+0x1e8>)
 805687e:	681b      	ldr	r3, [r3, #0]
 8056880:	2b00      	cmp	r3, #0
 8056882:	d171      	bne.n	8056968 <vTaskGenericNotifyGiveFromISR+0x16c>
 8056884:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8056886:	f8d3 32a4 	ldr.w	r3, [r3, #676]	; 0x2a4
 805688a:	617b      	str	r3, [r7, #20]
 805688c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805688e:	f8d3 3298 	ldr.w	r3, [r3, #664]	; 0x298
 8056892:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 8056894:	f8d2 229c 	ldr.w	r2, [r2, #668]	; 0x29c
 8056898:	609a      	str	r2, [r3, #8]
 805689a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805689c:	f8d3 329c 	ldr.w	r3, [r3, #668]	; 0x29c
 80568a0:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 80568a2:	f8d2 2298 	ldr.w	r2, [r2, #664]	; 0x298
 80568a6:	605a      	str	r2, [r3, #4]
 80568a8:	697b      	ldr	r3, [r7, #20]
 80568aa:	685a      	ldr	r2, [r3, #4]
 80568ac:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80568ae:	f503 7325 	add.w	r3, r3, #660	; 0x294
 80568b2:	429a      	cmp	r2, r3
 80568b4:	d104      	bne.n	80568c0 <vTaskGenericNotifyGiveFromISR+0xc4>
 80568b6:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80568b8:	f8d3 229c 	ldr.w	r2, [r3, #668]	; 0x29c
 80568bc:	697b      	ldr	r3, [r7, #20]
 80568be:	605a      	str	r2, [r3, #4]
 80568c0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80568c2:	2200      	movs	r2, #0
 80568c4:	f8c3 22a4 	str.w	r2, [r3, #676]	; 0x2a4
 80568c8:	697b      	ldr	r3, [r7, #20]
 80568ca:	681b      	ldr	r3, [r3, #0]
 80568cc:	1e5a      	subs	r2, r3, #1
 80568ce:	697b      	ldr	r3, [r7, #20]
 80568d0:	601a      	str	r2, [r3, #0]
 80568d2:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80568d4:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 80568d8:	4b43      	ldr	r3, [pc, #268]	; (80569e8 <vTaskGenericNotifyGiveFromISR+0x1ec>)
 80568da:	681b      	ldr	r3, [r3, #0]
 80568dc:	429a      	cmp	r2, r3
 80568de:	d904      	bls.n	80568ea <vTaskGenericNotifyGiveFromISR+0xee>
 80568e0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80568e2:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 80568e6:	4a40      	ldr	r2, [pc, #256]	; (80569e8 <vTaskGenericNotifyGiveFromISR+0x1ec>)
 80568e8:	6013      	str	r3, [r2, #0]
 80568ea:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80568ec:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 80568f0:	493e      	ldr	r1, [pc, #248]	; (80569ec <vTaskGenericNotifyGiveFromISR+0x1f0>)
 80568f2:	4613      	mov	r3, r2
 80568f4:	009b      	lsls	r3, r3, #2
 80568f6:	4413      	add	r3, r2
 80568f8:	009b      	lsls	r3, r3, #2
 80568fa:	440b      	add	r3, r1
 80568fc:	3304      	adds	r3, #4
 80568fe:	681b      	ldr	r3, [r3, #0]
 8056900:	613b      	str	r3, [r7, #16]
 8056902:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8056904:	693a      	ldr	r2, [r7, #16]
 8056906:	f8c3 2298 	str.w	r2, [r3, #664]	; 0x298
 805690a:	693b      	ldr	r3, [r7, #16]
 805690c:	689a      	ldr	r2, [r3, #8]
 805690e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8056910:	f8c3 229c 	str.w	r2, [r3, #668]	; 0x29c
 8056914:	693b      	ldr	r3, [r7, #16]
 8056916:	689b      	ldr	r3, [r3, #8]
 8056918:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 805691a:	f502 7225 	add.w	r2, r2, #660	; 0x294
 805691e:	605a      	str	r2, [r3, #4]
 8056920:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8056922:	f503 7225 	add.w	r2, r3, #660	; 0x294
 8056926:	693b      	ldr	r3, [r7, #16]
 8056928:	609a      	str	r2, [r3, #8]
 805692a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805692c:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8056930:	4613      	mov	r3, r2
 8056932:	009b      	lsls	r3, r3, #2
 8056934:	4413      	add	r3, r2
 8056936:	009b      	lsls	r3, r3, #2
 8056938:	4a2c      	ldr	r2, [pc, #176]	; (80569ec <vTaskGenericNotifyGiveFromISR+0x1f0>)
 805693a:	441a      	add	r2, r3
 805693c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805693e:	f8c3 22a4 	str.w	r2, [r3, #676]	; 0x2a4
 8056942:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8056944:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8056948:	4928      	ldr	r1, [pc, #160]	; (80569ec <vTaskGenericNotifyGiveFromISR+0x1f0>)
 805694a:	4613      	mov	r3, r2
 805694c:	009b      	lsls	r3, r3, #2
 805694e:	4413      	add	r3, r2
 8056950:	009b      	lsls	r3, r3, #2
 8056952:	440b      	add	r3, r1
 8056954:	681b      	ldr	r3, [r3, #0]
 8056956:	1c59      	adds	r1, r3, #1
 8056958:	4824      	ldr	r0, [pc, #144]	; (80569ec <vTaskGenericNotifyGiveFromISR+0x1f0>)
 805695a:	4613      	mov	r3, r2
 805695c:	009b      	lsls	r3, r3, #2
 805695e:	4413      	add	r3, r2
 8056960:	009b      	lsls	r3, r3, #2
 8056962:	4403      	add	r3, r0
 8056964:	6019      	str	r1, [r3, #0]
 8056966:	e01f      	b.n	80569a8 <vTaskGenericNotifyGiveFromISR+0x1ac>
 8056968:	4b21      	ldr	r3, [pc, #132]	; (80569f0 <vTaskGenericNotifyGiveFromISR+0x1f4>)
 805696a:	685b      	ldr	r3, [r3, #4]
 805696c:	61bb      	str	r3, [r7, #24]
 805696e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8056970:	69ba      	ldr	r2, [r7, #24]
 8056972:	f8c3 22ac 	str.w	r2, [r3, #684]	; 0x2ac
 8056976:	69bb      	ldr	r3, [r7, #24]
 8056978:	689a      	ldr	r2, [r3, #8]
 805697a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805697c:	f8c3 22b0 	str.w	r2, [r3, #688]	; 0x2b0
 8056980:	69bb      	ldr	r3, [r7, #24]
 8056982:	689b      	ldr	r3, [r3, #8]
 8056984:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 8056986:	f502 722a 	add.w	r2, r2, #680	; 0x2a8
 805698a:	605a      	str	r2, [r3, #4]
 805698c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805698e:	f503 722a 	add.w	r2, r3, #680	; 0x2a8
 8056992:	69bb      	ldr	r3, [r7, #24]
 8056994:	609a      	str	r2, [r3, #8]
 8056996:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8056998:	4a15      	ldr	r2, [pc, #84]	; (80569f0 <vTaskGenericNotifyGiveFromISR+0x1f4>)
 805699a:	f8c3 22b8 	str.w	r2, [r3, #696]	; 0x2b8
 805699e:	4b14      	ldr	r3, [pc, #80]	; (80569f0 <vTaskGenericNotifyGiveFromISR+0x1f4>)
 80569a0:	681b      	ldr	r3, [r3, #0]
 80569a2:	3301      	adds	r3, #1
 80569a4:	4a12      	ldr	r2, [pc, #72]	; (80569f0 <vTaskGenericNotifyGiveFromISR+0x1f4>)
 80569a6:	6013      	str	r3, [r2, #0]
 80569a8:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80569aa:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 80569ae:	4b11      	ldr	r3, [pc, #68]	; (80569f4 <vTaskGenericNotifyGiveFromISR+0x1f8>)
 80569b0:	681b      	ldr	r3, [r3, #0]
 80569b2:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 80569b6:	429a      	cmp	r2, r3
 80569b8:	d908      	bls.n	80569cc <vTaskGenericNotifyGiveFromISR+0x1d0>
 80569ba:	687b      	ldr	r3, [r7, #4]
 80569bc:	2b00      	cmp	r3, #0
 80569be:	d002      	beq.n	80569c6 <vTaskGenericNotifyGiveFromISR+0x1ca>
 80569c0:	687b      	ldr	r3, [r7, #4]
 80569c2:	2201      	movs	r2, #1
 80569c4:	601a      	str	r2, [r3, #0]
 80569c6:	4b0c      	ldr	r3, [pc, #48]	; (80569f8 <vTaskGenericNotifyGiveFromISR+0x1fc>)
 80569c8:	2201      	movs	r2, #1
 80569ca:	601a      	str	r2, [r3, #0]
 80569cc:	6a38      	ldr	r0, [r7, #32]
 80569ce:	4b0b      	ldr	r3, [pc, #44]	; (80569fc <vTaskGenericNotifyGiveFromISR+0x200>)
 80569d0:	4798      	blx	r3
 80569d2:	bf00      	nop
 80569d4:	3728      	adds	r7, #40	; 0x28
 80569d6:	46bd      	mov	sp, r7
 80569d8:	bd80      	pop	{r7, pc}
 80569da:	bf00      	nop
 80569dc:	0805f1c7 	.word	0x0805f1c7
 80569e0:	080607fd 	.word	0x080607fd
 80569e4:	200002dc 	.word	0x200002dc
 80569e8:	200002bc 	.word	0x200002bc
 80569ec:	20000104 	.word	0x20000104
 80569f0:	20000274 	.word	0x20000274
 80569f4:	20000100 	.word	0x20000100
 80569f8:	200002c8 	.word	0x200002c8
 80569fc:	0805f1e1 	.word	0x0805f1e1

08056a00 <ulTaskGenericNotifyTake>:
 8056a00:	b580      	push	{r7, lr}
 8056a02:	b086      	sub	sp, #24
 8056a04:	af00      	add	r7, sp, #0
 8056a06:	60f8      	str	r0, [r7, #12]
 8056a08:	60b9      	str	r1, [r7, #8]
 8056a0a:	607a      	str	r2, [r7, #4]
 8056a0c:	68fb      	ldr	r3, [r7, #12]
 8056a0e:	2b00      	cmp	r3, #0
 8056a10:	d002      	beq.n	8056a18 <ulTaskGenericNotifyTake+0x18>
 8056a12:	4b30      	ldr	r3, [pc, #192]	; (8056ad4 <ulTaskGenericNotifyTake+0xd4>)
 8056a14:	4798      	blx	r3
 8056a16:	e7fe      	b.n	8056a16 <ulTaskGenericNotifyTake+0x16>
 8056a18:	4b2f      	ldr	r3, [pc, #188]	; (8056ad8 <ulTaskGenericNotifyTake+0xd8>)
 8056a1a:	4798      	blx	r3
 8056a1c:	4b2f      	ldr	r3, [pc, #188]	; (8056adc <ulTaskGenericNotifyTake+0xdc>)
 8056a1e:	681a      	ldr	r2, [r3, #0]
 8056a20:	68fb      	ldr	r3, [r7, #12]
 8056a22:	33b8      	adds	r3, #184	; 0xb8
 8056a24:	009b      	lsls	r3, r3, #2
 8056a26:	4413      	add	r3, r2
 8056a28:	685b      	ldr	r3, [r3, #4]
 8056a2a:	2b00      	cmp	r3, #0
 8056a2c:	d11e      	bne.n	8056a6c <ulTaskGenericNotifyTake+0x6c>
 8056a2e:	4b2b      	ldr	r3, [pc, #172]	; (8056adc <ulTaskGenericNotifyTake+0xdc>)
 8056a30:	681a      	ldr	r2, [r3, #0]
 8056a32:	68fb      	ldr	r3, [r7, #12]
 8056a34:	4413      	add	r3, r2
 8056a36:	f503 733a 	add.w	r3, r3, #744	; 0x2e8
 8056a3a:	2201      	movs	r2, #1
 8056a3c:	701a      	strb	r2, [r3, #0]
 8056a3e:	687b      	ldr	r3, [r7, #4]
 8056a40:	2b00      	cmp	r3, #0
 8056a42:	d010      	beq.n	8056a66 <ulTaskGenericNotifyTake+0x66>
 8056a44:	f7ff f9ba 	bl	8055dbc <vTaskSuspendAll>
 8056a48:	4b25      	ldr	r3, [pc, #148]	; (8056ae0 <ulTaskGenericNotifyTake+0xe0>)
 8056a4a:	4798      	blx	r3
 8056a4c:	2101      	movs	r1, #1
 8056a4e:	6878      	ldr	r0, [r7, #4]
 8056a50:	f001 f8f4 	bl	8057c3c <prvAddCurrentTaskToDelayedList>
 8056a54:	f7ff f9c0 	bl	8055dd8 <xTaskResumeAll>
 8056a58:	6178      	str	r0, [r7, #20]
 8056a5a:	697b      	ldr	r3, [r7, #20]
 8056a5c:	2b00      	cmp	r3, #0
 8056a5e:	d107      	bne.n	8056a70 <ulTaskGenericNotifyTake+0x70>
 8056a60:	4b20      	ldr	r3, [pc, #128]	; (8056ae4 <ulTaskGenericNotifyTake+0xe4>)
 8056a62:	4798      	blx	r3
 8056a64:	e004      	b.n	8056a70 <ulTaskGenericNotifyTake+0x70>
 8056a66:	4b1e      	ldr	r3, [pc, #120]	; (8056ae0 <ulTaskGenericNotifyTake+0xe0>)
 8056a68:	4798      	blx	r3
 8056a6a:	e001      	b.n	8056a70 <ulTaskGenericNotifyTake+0x70>
 8056a6c:	4b1c      	ldr	r3, [pc, #112]	; (8056ae0 <ulTaskGenericNotifyTake+0xe0>)
 8056a6e:	4798      	blx	r3
 8056a70:	4b19      	ldr	r3, [pc, #100]	; (8056ad8 <ulTaskGenericNotifyTake+0xd8>)
 8056a72:	4798      	blx	r3
 8056a74:	4b19      	ldr	r3, [pc, #100]	; (8056adc <ulTaskGenericNotifyTake+0xdc>)
 8056a76:	681a      	ldr	r2, [r3, #0]
 8056a78:	68fb      	ldr	r3, [r7, #12]
 8056a7a:	33b8      	adds	r3, #184	; 0xb8
 8056a7c:	009b      	lsls	r3, r3, #2
 8056a7e:	4413      	add	r3, r2
 8056a80:	685b      	ldr	r3, [r3, #4]
 8056a82:	613b      	str	r3, [r7, #16]
 8056a84:	693b      	ldr	r3, [r7, #16]
 8056a86:	2b00      	cmp	r3, #0
 8056a88:	d014      	beq.n	8056ab4 <ulTaskGenericNotifyTake+0xb4>
 8056a8a:	68bb      	ldr	r3, [r7, #8]
 8056a8c:	2b00      	cmp	r3, #0
 8056a8e:	d008      	beq.n	8056aa2 <ulTaskGenericNotifyTake+0xa2>
 8056a90:	4b12      	ldr	r3, [pc, #72]	; (8056adc <ulTaskGenericNotifyTake+0xdc>)
 8056a92:	681a      	ldr	r2, [r3, #0]
 8056a94:	68fb      	ldr	r3, [r7, #12]
 8056a96:	33b8      	adds	r3, #184	; 0xb8
 8056a98:	009b      	lsls	r3, r3, #2
 8056a9a:	4413      	add	r3, r2
 8056a9c:	2200      	movs	r2, #0
 8056a9e:	605a      	str	r2, [r3, #4]
 8056aa0:	e008      	b.n	8056ab4 <ulTaskGenericNotifyTake+0xb4>
 8056aa2:	4b0e      	ldr	r3, [pc, #56]	; (8056adc <ulTaskGenericNotifyTake+0xdc>)
 8056aa4:	6819      	ldr	r1, [r3, #0]
 8056aa6:	693b      	ldr	r3, [r7, #16]
 8056aa8:	1e5a      	subs	r2, r3, #1
 8056aaa:	68fb      	ldr	r3, [r7, #12]
 8056aac:	33b8      	adds	r3, #184	; 0xb8
 8056aae:	009b      	lsls	r3, r3, #2
 8056ab0:	440b      	add	r3, r1
 8056ab2:	605a      	str	r2, [r3, #4]
 8056ab4:	4b09      	ldr	r3, [pc, #36]	; (8056adc <ulTaskGenericNotifyTake+0xdc>)
 8056ab6:	681a      	ldr	r2, [r3, #0]
 8056ab8:	68fb      	ldr	r3, [r7, #12]
 8056aba:	4413      	add	r3, r2
 8056abc:	f503 733a 	add.w	r3, r3, #744	; 0x2e8
 8056ac0:	2200      	movs	r2, #0
 8056ac2:	701a      	strb	r2, [r3, #0]
 8056ac4:	4b06      	ldr	r3, [pc, #24]	; (8056ae0 <ulTaskGenericNotifyTake+0xe0>)
 8056ac6:	4798      	blx	r3
 8056ac8:	693b      	ldr	r3, [r7, #16]
 8056aca:	4618      	mov	r0, r3
 8056acc:	3718      	adds	r7, #24
 8056ace:	46bd      	mov	sp, r7
 8056ad0:	bd80      	pop	{r7, pc}
 8056ad2:	bf00      	nop
 8056ad4:	0805f1c7 	.word	0x0805f1c7
 8056ad8:	0805ecc5 	.word	0x0805ecc5
 8056adc:	20000100 	.word	0x20000100
 8056ae0:	0805eced 	.word	0x0805eced
 8056ae4:	0805eca5 	.word	0x0805eca5

08056ae8 <xTaskGenericNotifyStateClear>:
 8056ae8:	b580      	push	{r7, lr}
 8056aea:	b084      	sub	sp, #16
 8056aec:	af00      	add	r7, sp, #0
 8056aee:	6078      	str	r0, [r7, #4]
 8056af0:	6039      	str	r1, [r7, #0]
 8056af2:	683b      	ldr	r3, [r7, #0]
 8056af4:	2b00      	cmp	r3, #0
 8056af6:	d002      	beq.n	8056afe <xTaskGenericNotifyStateClear+0x16>
 8056af8:	4b14      	ldr	r3, [pc, #80]	; (8056b4c <xTaskGenericNotifyStateClear+0x64>)
 8056afa:	4798      	blx	r3
 8056afc:	e7fe      	b.n	8056afc <xTaskGenericNotifyStateClear+0x14>
 8056afe:	687b      	ldr	r3, [r7, #4]
 8056b00:	2b00      	cmp	r3, #0
 8056b02:	d102      	bne.n	8056b0a <xTaskGenericNotifyStateClear+0x22>
 8056b04:	4b12      	ldr	r3, [pc, #72]	; (8056b50 <xTaskGenericNotifyStateClear+0x68>)
 8056b06:	681b      	ldr	r3, [r3, #0]
 8056b08:	e000      	b.n	8056b0c <xTaskGenericNotifyStateClear+0x24>
 8056b0a:	687b      	ldr	r3, [r7, #4]
 8056b0c:	60bb      	str	r3, [r7, #8]
 8056b0e:	4b11      	ldr	r3, [pc, #68]	; (8056b54 <xTaskGenericNotifyStateClear+0x6c>)
 8056b10:	4798      	blx	r3
 8056b12:	68ba      	ldr	r2, [r7, #8]
 8056b14:	683b      	ldr	r3, [r7, #0]
 8056b16:	4413      	add	r3, r2
 8056b18:	f503 733a 	add.w	r3, r3, #744	; 0x2e8
 8056b1c:	781b      	ldrb	r3, [r3, #0]
 8056b1e:	b2db      	uxtb	r3, r3
 8056b20:	2b02      	cmp	r3, #2
 8056b22:	d109      	bne.n	8056b38 <xTaskGenericNotifyStateClear+0x50>
 8056b24:	68ba      	ldr	r2, [r7, #8]
 8056b26:	683b      	ldr	r3, [r7, #0]
 8056b28:	4413      	add	r3, r2
 8056b2a:	f503 733a 	add.w	r3, r3, #744	; 0x2e8
 8056b2e:	2200      	movs	r2, #0
 8056b30:	701a      	strb	r2, [r3, #0]
 8056b32:	2301      	movs	r3, #1
 8056b34:	60fb      	str	r3, [r7, #12]
 8056b36:	e001      	b.n	8056b3c <xTaskGenericNotifyStateClear+0x54>
 8056b38:	2300      	movs	r3, #0
 8056b3a:	60fb      	str	r3, [r7, #12]
 8056b3c:	4b06      	ldr	r3, [pc, #24]	; (8056b58 <xTaskGenericNotifyStateClear+0x70>)
 8056b3e:	4798      	blx	r3
 8056b40:	68fb      	ldr	r3, [r7, #12]
 8056b42:	4618      	mov	r0, r3
 8056b44:	3710      	adds	r7, #16
 8056b46:	46bd      	mov	sp, r7
 8056b48:	bd80      	pop	{r7, pc}
 8056b4a:	bf00      	nop
 8056b4c:	0805f1c7 	.word	0x0805f1c7
 8056b50:	20000100 	.word	0x20000100
 8056b54:	0805ecc5 	.word	0x0805ecc5
 8056b58:	0805eced 	.word	0x0805eced

08056b5c <ulTaskGenericNotifyValueClear>:
 8056b5c:	b580      	push	{r7, lr}
 8056b5e:	b086      	sub	sp, #24
 8056b60:	af00      	add	r7, sp, #0
 8056b62:	60f8      	str	r0, [r7, #12]
 8056b64:	60b9      	str	r1, [r7, #8]
 8056b66:	607a      	str	r2, [r7, #4]
 8056b68:	68bb      	ldr	r3, [r7, #8]
 8056b6a:	2b00      	cmp	r3, #0
 8056b6c:	d002      	beq.n	8056b74 <ulTaskGenericNotifyValueClear+0x18>
 8056b6e:	4b15      	ldr	r3, [pc, #84]	; (8056bc4 <ulTaskGenericNotifyValueClear+0x68>)
 8056b70:	4798      	blx	r3
 8056b72:	e7fe      	b.n	8056b72 <ulTaskGenericNotifyValueClear+0x16>
 8056b74:	68fb      	ldr	r3, [r7, #12]
 8056b76:	2b00      	cmp	r3, #0
 8056b78:	d102      	bne.n	8056b80 <ulTaskGenericNotifyValueClear+0x24>
 8056b7a:	4b13      	ldr	r3, [pc, #76]	; (8056bc8 <ulTaskGenericNotifyValueClear+0x6c>)
 8056b7c:	681b      	ldr	r3, [r3, #0]
 8056b7e:	e000      	b.n	8056b82 <ulTaskGenericNotifyValueClear+0x26>
 8056b80:	68fb      	ldr	r3, [r7, #12]
 8056b82:	617b      	str	r3, [r7, #20]
 8056b84:	4b11      	ldr	r3, [pc, #68]	; (8056bcc <ulTaskGenericNotifyValueClear+0x70>)
 8056b86:	4798      	blx	r3
 8056b88:	697a      	ldr	r2, [r7, #20]
 8056b8a:	68bb      	ldr	r3, [r7, #8]
 8056b8c:	33b8      	adds	r3, #184	; 0xb8
 8056b8e:	009b      	lsls	r3, r3, #2
 8056b90:	4413      	add	r3, r2
 8056b92:	685b      	ldr	r3, [r3, #4]
 8056b94:	613b      	str	r3, [r7, #16]
 8056b96:	697a      	ldr	r2, [r7, #20]
 8056b98:	68bb      	ldr	r3, [r7, #8]
 8056b9a:	33b8      	adds	r3, #184	; 0xb8
 8056b9c:	009b      	lsls	r3, r3, #2
 8056b9e:	4413      	add	r3, r2
 8056ba0:	685a      	ldr	r2, [r3, #4]
 8056ba2:	687b      	ldr	r3, [r7, #4]
 8056ba4:	43db      	mvns	r3, r3
 8056ba6:	401a      	ands	r2, r3
 8056ba8:	6979      	ldr	r1, [r7, #20]
 8056baa:	68bb      	ldr	r3, [r7, #8]
 8056bac:	33b8      	adds	r3, #184	; 0xb8
 8056bae:	009b      	lsls	r3, r3, #2
 8056bb0:	440b      	add	r3, r1
 8056bb2:	605a      	str	r2, [r3, #4]
 8056bb4:	4b06      	ldr	r3, [pc, #24]	; (8056bd0 <ulTaskGenericNotifyValueClear+0x74>)
 8056bb6:	4798      	blx	r3
 8056bb8:	693b      	ldr	r3, [r7, #16]
 8056bba:	4618      	mov	r0, r3
 8056bbc:	3718      	adds	r7, #24
 8056bbe:	46bd      	mov	sp, r7
 8056bc0:	bd80      	pop	{r7, pc}
 8056bc2:	bf00      	nop
 8056bc4:	0805f1c7 	.word	0x0805f1c7
 8056bc8:	20000100 	.word	0x20000100
 8056bcc:	0805ecc5 	.word	0x0805ecc5
 8056bd0:	0805eced 	.word	0x0805eced

08056bd4 <vTaskSetTimeOutState>:
 8056bd4:	b580      	push	{r7, lr}
 8056bd6:	b082      	sub	sp, #8
 8056bd8:	af00      	add	r7, sp, #0
 8056bda:	6078      	str	r0, [r7, #4]
 8056bdc:	687b      	ldr	r3, [r7, #4]
 8056bde:	2b00      	cmp	r3, #0
 8056be0:	d102      	bne.n	8056be8 <vTaskSetTimeOutState+0x14>
 8056be2:	4b09      	ldr	r3, [pc, #36]	; (8056c08 <vTaskSetTimeOutState+0x34>)
 8056be4:	4798      	blx	r3
 8056be6:	e7fe      	b.n	8056be6 <vTaskSetTimeOutState+0x12>
 8056be8:	4b08      	ldr	r3, [pc, #32]	; (8056c0c <vTaskSetTimeOutState+0x38>)
 8056bea:	4798      	blx	r3
 8056bec:	4b08      	ldr	r3, [pc, #32]	; (8056c10 <vTaskSetTimeOutState+0x3c>)
 8056bee:	681a      	ldr	r2, [r3, #0]
 8056bf0:	687b      	ldr	r3, [r7, #4]
 8056bf2:	601a      	str	r2, [r3, #0]
 8056bf4:	4b07      	ldr	r3, [pc, #28]	; (8056c14 <vTaskSetTimeOutState+0x40>)
 8056bf6:	681a      	ldr	r2, [r3, #0]
 8056bf8:	687b      	ldr	r3, [r7, #4]
 8056bfa:	605a      	str	r2, [r3, #4]
 8056bfc:	4b06      	ldr	r3, [pc, #24]	; (8056c18 <vTaskSetTimeOutState+0x44>)
 8056bfe:	4798      	blx	r3
 8056c00:	bf00      	nop
 8056c02:	3708      	adds	r7, #8
 8056c04:	46bd      	mov	sp, r7
 8056c06:	bd80      	pop	{r7, pc}
 8056c08:	0805f1c7 	.word	0x0805f1c7
 8056c0c:	0805ecc5 	.word	0x0805ecc5
 8056c10:	200002cc 	.word	0x200002cc
 8056c14:	200002b8 	.word	0x200002b8
 8056c18:	0805eced 	.word	0x0805eced

08056c1c <xTaskCheckForTimeOut>:
 8056c1c:	b580      	push	{r7, lr}
 8056c1e:	b086      	sub	sp, #24
 8056c20:	af00      	add	r7, sp, #0
 8056c22:	6078      	str	r0, [r7, #4]
 8056c24:	6039      	str	r1, [r7, #0]
 8056c26:	687b      	ldr	r3, [r7, #4]
 8056c28:	2b00      	cmp	r3, #0
 8056c2a:	d102      	bne.n	8056c32 <xTaskCheckForTimeOut+0x16>
 8056c2c:	4b24      	ldr	r3, [pc, #144]	; (8056cc0 <xTaskCheckForTimeOut+0xa4>)
 8056c2e:	4798      	blx	r3
 8056c30:	e7fe      	b.n	8056c30 <xTaskCheckForTimeOut+0x14>
 8056c32:	683b      	ldr	r3, [r7, #0]
 8056c34:	2b00      	cmp	r3, #0
 8056c36:	d102      	bne.n	8056c3e <xTaskCheckForTimeOut+0x22>
 8056c38:	4b21      	ldr	r3, [pc, #132]	; (8056cc0 <xTaskCheckForTimeOut+0xa4>)
 8056c3a:	4798      	blx	r3
 8056c3c:	e7fe      	b.n	8056c3c <xTaskCheckForTimeOut+0x20>
 8056c3e:	4b21      	ldr	r3, [pc, #132]	; (8056cc4 <xTaskCheckForTimeOut+0xa8>)
 8056c40:	4798      	blx	r3
 8056c42:	4b21      	ldr	r3, [pc, #132]	; (8056cc8 <xTaskCheckForTimeOut+0xac>)
 8056c44:	681b      	ldr	r3, [r3, #0]
 8056c46:	613b      	str	r3, [r7, #16]
 8056c48:	687b      	ldr	r3, [r7, #4]
 8056c4a:	685b      	ldr	r3, [r3, #4]
 8056c4c:	693a      	ldr	r2, [r7, #16]
 8056c4e:	1ad3      	subs	r3, r2, r3
 8056c50:	60fb      	str	r3, [r7, #12]
 8056c52:	683b      	ldr	r3, [r7, #0]
 8056c54:	681b      	ldr	r3, [r3, #0]
 8056c56:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 8056c5a:	d102      	bne.n	8056c62 <xTaskCheckForTimeOut+0x46>
 8056c5c:	2300      	movs	r3, #0
 8056c5e:	617b      	str	r3, [r7, #20]
 8056c60:	e026      	b.n	8056cb0 <xTaskCheckForTimeOut+0x94>
 8056c62:	687b      	ldr	r3, [r7, #4]
 8056c64:	681a      	ldr	r2, [r3, #0]
 8056c66:	4b19      	ldr	r3, [pc, #100]	; (8056ccc <xTaskCheckForTimeOut+0xb0>)
 8056c68:	681b      	ldr	r3, [r3, #0]
 8056c6a:	429a      	cmp	r2, r3
 8056c6c:	d00a      	beq.n	8056c84 <xTaskCheckForTimeOut+0x68>
 8056c6e:	687b      	ldr	r3, [r7, #4]
 8056c70:	685b      	ldr	r3, [r3, #4]
 8056c72:	693a      	ldr	r2, [r7, #16]
 8056c74:	429a      	cmp	r2, r3
 8056c76:	d305      	bcc.n	8056c84 <xTaskCheckForTimeOut+0x68>
 8056c78:	2301      	movs	r3, #1
 8056c7a:	617b      	str	r3, [r7, #20]
 8056c7c:	683b      	ldr	r3, [r7, #0]
 8056c7e:	2200      	movs	r2, #0
 8056c80:	601a      	str	r2, [r3, #0]
 8056c82:	e015      	b.n	8056cb0 <xTaskCheckForTimeOut+0x94>
 8056c84:	683b      	ldr	r3, [r7, #0]
 8056c86:	681b      	ldr	r3, [r3, #0]
 8056c88:	68fa      	ldr	r2, [r7, #12]
 8056c8a:	429a      	cmp	r2, r3
 8056c8c:	d20b      	bcs.n	8056ca6 <xTaskCheckForTimeOut+0x8a>
 8056c8e:	683b      	ldr	r3, [r7, #0]
 8056c90:	681a      	ldr	r2, [r3, #0]
 8056c92:	68fb      	ldr	r3, [r7, #12]
 8056c94:	1ad2      	subs	r2, r2, r3
 8056c96:	683b      	ldr	r3, [r7, #0]
 8056c98:	601a      	str	r2, [r3, #0]
 8056c9a:	6878      	ldr	r0, [r7, #4]
 8056c9c:	f000 fec6 	bl	8057a2c <vTaskInternalSetTimeOutState>
 8056ca0:	2300      	movs	r3, #0
 8056ca2:	617b      	str	r3, [r7, #20]
 8056ca4:	e004      	b.n	8056cb0 <xTaskCheckForTimeOut+0x94>
 8056ca6:	683b      	ldr	r3, [r7, #0]
 8056ca8:	2200      	movs	r2, #0
 8056caa:	601a      	str	r2, [r3, #0]
 8056cac:	2301      	movs	r3, #1
 8056cae:	617b      	str	r3, [r7, #20]
 8056cb0:	4b07      	ldr	r3, [pc, #28]	; (8056cd0 <xTaskCheckForTimeOut+0xb4>)
 8056cb2:	4798      	blx	r3
 8056cb4:	697b      	ldr	r3, [r7, #20]
 8056cb6:	4618      	mov	r0, r3
 8056cb8:	3718      	adds	r7, #24
 8056cba:	46bd      	mov	sp, r7
 8056cbc:	bd80      	pop	{r7, pc}
 8056cbe:	bf00      	nop
 8056cc0:	0805f1c7 	.word	0x0805f1c7
 8056cc4:	0805ecc5 	.word	0x0805ecc5
 8056cc8:	200002b8 	.word	0x200002b8
 8056ccc:	200002cc 	.word	0x200002cc
 8056cd0:	0805eced 	.word	0x0805eced

08056cd4 <xTaskCatchUpTicks>:
 8056cd4:	b580      	push	{r7, lr}
 8056cd6:	b084      	sub	sp, #16
 8056cd8:	af00      	add	r7, sp, #0
 8056cda:	6078      	str	r0, [r7, #4]
 8056cdc:	4b0d      	ldr	r3, [pc, #52]	; (8056d14 <xTaskCatchUpTicks+0x40>)
 8056cde:	681b      	ldr	r3, [r3, #0]
 8056ce0:	2b00      	cmp	r3, #0
 8056ce2:	d002      	beq.n	8056cea <xTaskCatchUpTicks+0x16>
 8056ce4:	4b0c      	ldr	r3, [pc, #48]	; (8056d18 <xTaskCatchUpTicks+0x44>)
 8056ce6:	4798      	blx	r3
 8056ce8:	e7fe      	b.n	8056ce8 <xTaskCatchUpTicks+0x14>
 8056cea:	f7ff f867 	bl	8055dbc <vTaskSuspendAll>
 8056cee:	4b0b      	ldr	r3, [pc, #44]	; (8056d1c <xTaskCatchUpTicks+0x48>)
 8056cf0:	4798      	blx	r3
 8056cf2:	4b0b      	ldr	r3, [pc, #44]	; (8056d20 <xTaskCatchUpTicks+0x4c>)
 8056cf4:	681a      	ldr	r2, [r3, #0]
 8056cf6:	687b      	ldr	r3, [r7, #4]
 8056cf8:	4413      	add	r3, r2
 8056cfa:	4a09      	ldr	r2, [pc, #36]	; (8056d20 <xTaskCatchUpTicks+0x4c>)
 8056cfc:	6013      	str	r3, [r2, #0]
 8056cfe:	4b09      	ldr	r3, [pc, #36]	; (8056d24 <xTaskCatchUpTicks+0x50>)
 8056d00:	4798      	blx	r3
 8056d02:	f7ff f869 	bl	8055dd8 <xTaskResumeAll>
 8056d06:	60f8      	str	r0, [r7, #12]
 8056d08:	68fb      	ldr	r3, [r7, #12]
 8056d0a:	4618      	mov	r0, r3
 8056d0c:	3710      	adds	r7, #16
 8056d0e:	46bd      	mov	sp, r7
 8056d10:	bd80      	pop	{r7, pc}
 8056d12:	bf00      	nop
 8056d14:	200002dc 	.word	0x200002dc
 8056d18:	0805f1c7 	.word	0x0805f1c7
 8056d1c:	0805ecc5 	.word	0x0805ecc5
 8056d20:	200002c4 	.word	0x200002c4
 8056d24:	0805eced 	.word	0x0805eced

08056d28 <xTaskIncrementTick>:
 8056d28:	b580      	push	{r7, lr}
 8056d2a:	b088      	sub	sp, #32
 8056d2c:	af00      	add	r7, sp, #0
 8056d2e:	2300      	movs	r3, #0
 8056d30:	61fb      	str	r3, [r7, #28]
 8056d32:	4b89      	ldr	r3, [pc, #548]	; (8056f58 <xTaskIncrementTick+0x230>)
 8056d34:	681b      	ldr	r3, [r3, #0]
 8056d36:	2b00      	cmp	r3, #0
 8056d38:	f040 8104 	bne.w	8056f44 <xTaskIncrementTick+0x21c>
 8056d3c:	4b87      	ldr	r3, [pc, #540]	; (8056f5c <xTaskIncrementTick+0x234>)
 8056d3e:	681b      	ldr	r3, [r3, #0]
 8056d40:	3301      	adds	r3, #1
 8056d42:	61bb      	str	r3, [r7, #24]
 8056d44:	4a85      	ldr	r2, [pc, #532]	; (8056f5c <xTaskIncrementTick+0x234>)
 8056d46:	69bb      	ldr	r3, [r7, #24]
 8056d48:	6013      	str	r3, [r2, #0]
 8056d4a:	69bb      	ldr	r3, [r7, #24]
 8056d4c:	2b00      	cmp	r3, #0
 8056d4e:	d118      	bne.n	8056d82 <xTaskIncrementTick+0x5a>
 8056d50:	4b83      	ldr	r3, [pc, #524]	; (8056f60 <xTaskIncrementTick+0x238>)
 8056d52:	681b      	ldr	r3, [r3, #0]
 8056d54:	681b      	ldr	r3, [r3, #0]
 8056d56:	2b00      	cmp	r3, #0
 8056d58:	d002      	beq.n	8056d60 <xTaskIncrementTick+0x38>
 8056d5a:	4b82      	ldr	r3, [pc, #520]	; (8056f64 <xTaskIncrementTick+0x23c>)
 8056d5c:	4798      	blx	r3
 8056d5e:	e7fe      	b.n	8056d5e <xTaskIncrementTick+0x36>
 8056d60:	4b7f      	ldr	r3, [pc, #508]	; (8056f60 <xTaskIncrementTick+0x238>)
 8056d62:	681b      	ldr	r3, [r3, #0]
 8056d64:	617b      	str	r3, [r7, #20]
 8056d66:	4b80      	ldr	r3, [pc, #512]	; (8056f68 <xTaskIncrementTick+0x240>)
 8056d68:	681b      	ldr	r3, [r3, #0]
 8056d6a:	4a7d      	ldr	r2, [pc, #500]	; (8056f60 <xTaskIncrementTick+0x238>)
 8056d6c:	6013      	str	r3, [r2, #0]
 8056d6e:	4a7e      	ldr	r2, [pc, #504]	; (8056f68 <xTaskIncrementTick+0x240>)
 8056d70:	697b      	ldr	r3, [r7, #20]
 8056d72:	6013      	str	r3, [r2, #0]
 8056d74:	4b7d      	ldr	r3, [pc, #500]	; (8056f6c <xTaskIncrementTick+0x244>)
 8056d76:	681b      	ldr	r3, [r3, #0]
 8056d78:	3301      	adds	r3, #1
 8056d7a:	4a7c      	ldr	r2, [pc, #496]	; (8056f6c <xTaskIncrementTick+0x244>)
 8056d7c:	6013      	str	r3, [r2, #0]
 8056d7e:	f001 f844 	bl	8057e0a <prvResetNextTaskUnblockTime>
 8056d82:	4b7b      	ldr	r3, [pc, #492]	; (8056f70 <xTaskIncrementTick+0x248>)
 8056d84:	681b      	ldr	r3, [r3, #0]
 8056d86:	69ba      	ldr	r2, [r7, #24]
 8056d88:	429a      	cmp	r2, r3
 8056d8a:	f0c0 80c5 	bcc.w	8056f18 <xTaskIncrementTick+0x1f0>
 8056d8e:	4b74      	ldr	r3, [pc, #464]	; (8056f60 <xTaskIncrementTick+0x238>)
 8056d90:	681b      	ldr	r3, [r3, #0]
 8056d92:	681b      	ldr	r3, [r3, #0]
 8056d94:	2b00      	cmp	r3, #0
 8056d96:	d104      	bne.n	8056da2 <xTaskIncrementTick+0x7a>
 8056d98:	4b75      	ldr	r3, [pc, #468]	; (8056f70 <xTaskIncrementTick+0x248>)
 8056d9a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8056d9e:	601a      	str	r2, [r3, #0]
 8056da0:	e0ba      	b.n	8056f18 <xTaskIncrementTick+0x1f0>
 8056da2:	4b6f      	ldr	r3, [pc, #444]	; (8056f60 <xTaskIncrementTick+0x238>)
 8056da4:	681b      	ldr	r3, [r3, #0]
 8056da6:	68db      	ldr	r3, [r3, #12]
 8056da8:	68db      	ldr	r3, [r3, #12]
 8056daa:	613b      	str	r3, [r7, #16]
 8056dac:	693b      	ldr	r3, [r7, #16]
 8056dae:	f8d3 3294 	ldr.w	r3, [r3, #660]	; 0x294
 8056db2:	60fb      	str	r3, [r7, #12]
 8056db4:	69ba      	ldr	r2, [r7, #24]
 8056db6:	68fb      	ldr	r3, [r7, #12]
 8056db8:	429a      	cmp	r2, r3
 8056dba:	d203      	bcs.n	8056dc4 <xTaskIncrementTick+0x9c>
 8056dbc:	4a6c      	ldr	r2, [pc, #432]	; (8056f70 <xTaskIncrementTick+0x248>)
 8056dbe:	68fb      	ldr	r3, [r7, #12]
 8056dc0:	6013      	str	r3, [r2, #0]
 8056dc2:	e0a9      	b.n	8056f18 <xTaskIncrementTick+0x1f0>
 8056dc4:	693b      	ldr	r3, [r7, #16]
 8056dc6:	f8d3 32a4 	ldr.w	r3, [r3, #676]	; 0x2a4
 8056dca:	60bb      	str	r3, [r7, #8]
 8056dcc:	693b      	ldr	r3, [r7, #16]
 8056dce:	f8d3 3298 	ldr.w	r3, [r3, #664]	; 0x298
 8056dd2:	693a      	ldr	r2, [r7, #16]
 8056dd4:	f8d2 229c 	ldr.w	r2, [r2, #668]	; 0x29c
 8056dd8:	609a      	str	r2, [r3, #8]
 8056dda:	693b      	ldr	r3, [r7, #16]
 8056ddc:	f8d3 329c 	ldr.w	r3, [r3, #668]	; 0x29c
 8056de0:	693a      	ldr	r2, [r7, #16]
 8056de2:	f8d2 2298 	ldr.w	r2, [r2, #664]	; 0x298
 8056de6:	605a      	str	r2, [r3, #4]
 8056de8:	68bb      	ldr	r3, [r7, #8]
 8056dea:	685a      	ldr	r2, [r3, #4]
 8056dec:	693b      	ldr	r3, [r7, #16]
 8056dee:	f503 7325 	add.w	r3, r3, #660	; 0x294
 8056df2:	429a      	cmp	r2, r3
 8056df4:	d104      	bne.n	8056e00 <xTaskIncrementTick+0xd8>
 8056df6:	693b      	ldr	r3, [r7, #16]
 8056df8:	f8d3 229c 	ldr.w	r2, [r3, #668]	; 0x29c
 8056dfc:	68bb      	ldr	r3, [r7, #8]
 8056dfe:	605a      	str	r2, [r3, #4]
 8056e00:	693b      	ldr	r3, [r7, #16]
 8056e02:	2200      	movs	r2, #0
 8056e04:	f8c3 22a4 	str.w	r2, [r3, #676]	; 0x2a4
 8056e08:	68bb      	ldr	r3, [r7, #8]
 8056e0a:	681b      	ldr	r3, [r3, #0]
 8056e0c:	1e5a      	subs	r2, r3, #1
 8056e0e:	68bb      	ldr	r3, [r7, #8]
 8056e10:	601a      	str	r2, [r3, #0]
 8056e12:	693b      	ldr	r3, [r7, #16]
 8056e14:	f8d3 32b8 	ldr.w	r3, [r3, #696]	; 0x2b8
 8056e18:	2b00      	cmp	r3, #0
 8056e1a:	d026      	beq.n	8056e6a <xTaskIncrementTick+0x142>
 8056e1c:	693b      	ldr	r3, [r7, #16]
 8056e1e:	f8d3 32b8 	ldr.w	r3, [r3, #696]	; 0x2b8
 8056e22:	607b      	str	r3, [r7, #4]
 8056e24:	693b      	ldr	r3, [r7, #16]
 8056e26:	f8d3 32ac 	ldr.w	r3, [r3, #684]	; 0x2ac
 8056e2a:	693a      	ldr	r2, [r7, #16]
 8056e2c:	f8d2 22b0 	ldr.w	r2, [r2, #688]	; 0x2b0
 8056e30:	609a      	str	r2, [r3, #8]
 8056e32:	693b      	ldr	r3, [r7, #16]
 8056e34:	f8d3 32b0 	ldr.w	r3, [r3, #688]	; 0x2b0
 8056e38:	693a      	ldr	r2, [r7, #16]
 8056e3a:	f8d2 22ac 	ldr.w	r2, [r2, #684]	; 0x2ac
 8056e3e:	605a      	str	r2, [r3, #4]
 8056e40:	687b      	ldr	r3, [r7, #4]
 8056e42:	685a      	ldr	r2, [r3, #4]
 8056e44:	693b      	ldr	r3, [r7, #16]
 8056e46:	f503 732a 	add.w	r3, r3, #680	; 0x2a8
 8056e4a:	429a      	cmp	r2, r3
 8056e4c:	d104      	bne.n	8056e58 <xTaskIncrementTick+0x130>
 8056e4e:	693b      	ldr	r3, [r7, #16]
 8056e50:	f8d3 22b0 	ldr.w	r2, [r3, #688]	; 0x2b0
 8056e54:	687b      	ldr	r3, [r7, #4]
 8056e56:	605a      	str	r2, [r3, #4]
 8056e58:	693b      	ldr	r3, [r7, #16]
 8056e5a:	2200      	movs	r2, #0
 8056e5c:	f8c3 22b8 	str.w	r2, [r3, #696]	; 0x2b8
 8056e60:	687b      	ldr	r3, [r7, #4]
 8056e62:	681b      	ldr	r3, [r3, #0]
 8056e64:	1e5a      	subs	r2, r3, #1
 8056e66:	687b      	ldr	r3, [r7, #4]
 8056e68:	601a      	str	r2, [r3, #0]
 8056e6a:	693b      	ldr	r3, [r7, #16]
 8056e6c:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8056e70:	4b40      	ldr	r3, [pc, #256]	; (8056f74 <xTaskIncrementTick+0x24c>)
 8056e72:	681b      	ldr	r3, [r3, #0]
 8056e74:	429a      	cmp	r2, r3
 8056e76:	d904      	bls.n	8056e82 <xTaskIncrementTick+0x15a>
 8056e78:	693b      	ldr	r3, [r7, #16]
 8056e7a:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 8056e7e:	4a3d      	ldr	r2, [pc, #244]	; (8056f74 <xTaskIncrementTick+0x24c>)
 8056e80:	6013      	str	r3, [r2, #0]
 8056e82:	693b      	ldr	r3, [r7, #16]
 8056e84:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8056e88:	493b      	ldr	r1, [pc, #236]	; (8056f78 <xTaskIncrementTick+0x250>)
 8056e8a:	4613      	mov	r3, r2
 8056e8c:	009b      	lsls	r3, r3, #2
 8056e8e:	4413      	add	r3, r2
 8056e90:	009b      	lsls	r3, r3, #2
 8056e92:	440b      	add	r3, r1
 8056e94:	3304      	adds	r3, #4
 8056e96:	681b      	ldr	r3, [r3, #0]
 8056e98:	603b      	str	r3, [r7, #0]
 8056e9a:	693b      	ldr	r3, [r7, #16]
 8056e9c:	683a      	ldr	r2, [r7, #0]
 8056e9e:	f8c3 2298 	str.w	r2, [r3, #664]	; 0x298
 8056ea2:	683b      	ldr	r3, [r7, #0]
 8056ea4:	689a      	ldr	r2, [r3, #8]
 8056ea6:	693b      	ldr	r3, [r7, #16]
 8056ea8:	f8c3 229c 	str.w	r2, [r3, #668]	; 0x29c
 8056eac:	683b      	ldr	r3, [r7, #0]
 8056eae:	689b      	ldr	r3, [r3, #8]
 8056eb0:	693a      	ldr	r2, [r7, #16]
 8056eb2:	f502 7225 	add.w	r2, r2, #660	; 0x294
 8056eb6:	605a      	str	r2, [r3, #4]
 8056eb8:	693b      	ldr	r3, [r7, #16]
 8056eba:	f503 7225 	add.w	r2, r3, #660	; 0x294
 8056ebe:	683b      	ldr	r3, [r7, #0]
 8056ec0:	609a      	str	r2, [r3, #8]
 8056ec2:	693b      	ldr	r3, [r7, #16]
 8056ec4:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8056ec8:	4613      	mov	r3, r2
 8056eca:	009b      	lsls	r3, r3, #2
 8056ecc:	4413      	add	r3, r2
 8056ece:	009b      	lsls	r3, r3, #2
 8056ed0:	4a29      	ldr	r2, [pc, #164]	; (8056f78 <xTaskIncrementTick+0x250>)
 8056ed2:	441a      	add	r2, r3
 8056ed4:	693b      	ldr	r3, [r7, #16]
 8056ed6:	f8c3 22a4 	str.w	r2, [r3, #676]	; 0x2a4
 8056eda:	693b      	ldr	r3, [r7, #16]
 8056edc:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8056ee0:	4925      	ldr	r1, [pc, #148]	; (8056f78 <xTaskIncrementTick+0x250>)
 8056ee2:	4613      	mov	r3, r2
 8056ee4:	009b      	lsls	r3, r3, #2
 8056ee6:	4413      	add	r3, r2
 8056ee8:	009b      	lsls	r3, r3, #2
 8056eea:	440b      	add	r3, r1
 8056eec:	681b      	ldr	r3, [r3, #0]
 8056eee:	1c59      	adds	r1, r3, #1
 8056ef0:	4821      	ldr	r0, [pc, #132]	; (8056f78 <xTaskIncrementTick+0x250>)
 8056ef2:	4613      	mov	r3, r2
 8056ef4:	009b      	lsls	r3, r3, #2
 8056ef6:	4413      	add	r3, r2
 8056ef8:	009b      	lsls	r3, r3, #2
 8056efa:	4403      	add	r3, r0
 8056efc:	6019      	str	r1, [r3, #0]
 8056efe:	693b      	ldr	r3, [r7, #16]
 8056f00:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8056f04:	4b1d      	ldr	r3, [pc, #116]	; (8056f7c <xTaskIncrementTick+0x254>)
 8056f06:	681b      	ldr	r3, [r3, #0]
 8056f08:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 8056f0c:	429a      	cmp	r2, r3
 8056f0e:	f67f af3e 	bls.w	8056d8e <xTaskIncrementTick+0x66>
 8056f12:	2301      	movs	r3, #1
 8056f14:	61fb      	str	r3, [r7, #28]
 8056f16:	e73a      	b.n	8056d8e <xTaskIncrementTick+0x66>
 8056f18:	4b18      	ldr	r3, [pc, #96]	; (8056f7c <xTaskIncrementTick+0x254>)
 8056f1a:	681b      	ldr	r3, [r3, #0]
 8056f1c:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8056f20:	4915      	ldr	r1, [pc, #84]	; (8056f78 <xTaskIncrementTick+0x250>)
 8056f22:	4613      	mov	r3, r2
 8056f24:	009b      	lsls	r3, r3, #2
 8056f26:	4413      	add	r3, r2
 8056f28:	009b      	lsls	r3, r3, #2
 8056f2a:	440b      	add	r3, r1
 8056f2c:	681b      	ldr	r3, [r3, #0]
 8056f2e:	2b01      	cmp	r3, #1
 8056f30:	d901      	bls.n	8056f36 <xTaskIncrementTick+0x20e>
 8056f32:	2301      	movs	r3, #1
 8056f34:	61fb      	str	r3, [r7, #28]
 8056f36:	4b12      	ldr	r3, [pc, #72]	; (8056f80 <xTaskIncrementTick+0x258>)
 8056f38:	681b      	ldr	r3, [r3, #0]
 8056f3a:	2b00      	cmp	r3, #0
 8056f3c:	d007      	beq.n	8056f4e <xTaskIncrementTick+0x226>
 8056f3e:	2301      	movs	r3, #1
 8056f40:	61fb      	str	r3, [r7, #28]
 8056f42:	e004      	b.n	8056f4e <xTaskIncrementTick+0x226>
 8056f44:	4b0f      	ldr	r3, [pc, #60]	; (8056f84 <xTaskIncrementTick+0x25c>)
 8056f46:	681b      	ldr	r3, [r3, #0]
 8056f48:	3301      	adds	r3, #1
 8056f4a:	4a0e      	ldr	r2, [pc, #56]	; (8056f84 <xTaskIncrementTick+0x25c>)
 8056f4c:	6013      	str	r3, [r2, #0]
 8056f4e:	69fb      	ldr	r3, [r7, #28]
 8056f50:	4618      	mov	r0, r3
 8056f52:	3720      	adds	r7, #32
 8056f54:	46bd      	mov	sp, r7
 8056f56:	bd80      	pop	{r7, pc}
 8056f58:	200002dc 	.word	0x200002dc
 8056f5c:	200002b8 	.word	0x200002b8
 8056f60:	2000026c 	.word	0x2000026c
 8056f64:	0805f1c7 	.word	0x0805f1c7
 8056f68:	20000270 	.word	0x20000270
 8056f6c:	200002cc 	.word	0x200002cc
 8056f70:	200002d4 	.word	0x200002d4
 8056f74:	200002bc 	.word	0x200002bc
 8056f78:	20000104 	.word	0x20000104
 8056f7c:	20000100 	.word	0x20000100
 8056f80:	200002c8 	.word	0x200002c8
 8056f84:	200002c4 	.word	0x200002c4

08056f88 <vTaskPlaceOnEventList>:
 8056f88:	b580      	push	{r7, lr}
 8056f8a:	b082      	sub	sp, #8
 8056f8c:	af00      	add	r7, sp, #0
 8056f8e:	6078      	str	r0, [r7, #4]
 8056f90:	6039      	str	r1, [r7, #0]
 8056f92:	687b      	ldr	r3, [r7, #4]
 8056f94:	2b00      	cmp	r3, #0
 8056f96:	d102      	bne.n	8056f9e <vTaskPlaceOnEventList+0x16>
 8056f98:	4b09      	ldr	r3, [pc, #36]	; (8056fc0 <vTaskPlaceOnEventList+0x38>)
 8056f9a:	4798      	blx	r3
 8056f9c:	e7fe      	b.n	8056f9c <vTaskPlaceOnEventList+0x14>
 8056f9e:	4b09      	ldr	r3, [pc, #36]	; (8056fc4 <vTaskPlaceOnEventList+0x3c>)
 8056fa0:	681b      	ldr	r3, [r3, #0]
 8056fa2:	f503 732a 	add.w	r3, r3, #680	; 0x2a8
 8056fa6:	4619      	mov	r1, r3
 8056fa8:	6878      	ldr	r0, [r7, #4]
 8056faa:	4b07      	ldr	r3, [pc, #28]	; (8056fc8 <vTaskPlaceOnEventList+0x40>)
 8056fac:	4798      	blx	r3
 8056fae:	2101      	movs	r1, #1
 8056fb0:	6838      	ldr	r0, [r7, #0]
 8056fb2:	f000 fe43 	bl	8057c3c <prvAddCurrentTaskToDelayedList>
 8056fb6:	bf00      	nop
 8056fb8:	3708      	adds	r7, #8
 8056fba:	46bd      	mov	sp, r7
 8056fbc:	bd80      	pop	{r7, pc}
 8056fbe:	bf00      	nop
 8056fc0:	0805f1c7 	.word	0x0805f1c7
 8056fc4:	20000100 	.word	0x20000100
 8056fc8:	0805c393 	.word	0x0805c393

08056fcc <vTaskPlaceOnUnorderedEventList>:
 8056fcc:	b580      	push	{r7, lr}
 8056fce:	b086      	sub	sp, #24
 8056fd0:	af00      	add	r7, sp, #0
 8056fd2:	60f8      	str	r0, [r7, #12]
 8056fd4:	60b9      	str	r1, [r7, #8]
 8056fd6:	607a      	str	r2, [r7, #4]
 8056fd8:	68fb      	ldr	r3, [r7, #12]
 8056fda:	2b00      	cmp	r3, #0
 8056fdc:	d102      	bne.n	8056fe4 <vTaskPlaceOnUnorderedEventList+0x18>
 8056fde:	4b1f      	ldr	r3, [pc, #124]	; (805705c <vTaskPlaceOnUnorderedEventList+0x90>)
 8056fe0:	4798      	blx	r3
 8056fe2:	e7fe      	b.n	8056fe2 <vTaskPlaceOnUnorderedEventList+0x16>
 8056fe4:	4b1e      	ldr	r3, [pc, #120]	; (8057060 <vTaskPlaceOnUnorderedEventList+0x94>)
 8056fe6:	681b      	ldr	r3, [r3, #0]
 8056fe8:	2b00      	cmp	r3, #0
 8056fea:	d102      	bne.n	8056ff2 <vTaskPlaceOnUnorderedEventList+0x26>
 8056fec:	4b1b      	ldr	r3, [pc, #108]	; (805705c <vTaskPlaceOnUnorderedEventList+0x90>)
 8056fee:	4798      	blx	r3
 8056ff0:	e7fe      	b.n	8056ff0 <vTaskPlaceOnUnorderedEventList+0x24>
 8056ff2:	4b1c      	ldr	r3, [pc, #112]	; (8057064 <vTaskPlaceOnUnorderedEventList+0x98>)
 8056ff4:	681b      	ldr	r3, [r3, #0]
 8056ff6:	68ba      	ldr	r2, [r7, #8]
 8056ff8:	f042 4200 	orr.w	r2, r2, #2147483648	; 0x80000000
 8056ffc:	f8c3 22a8 	str.w	r2, [r3, #680]	; 0x2a8
 8057000:	68fb      	ldr	r3, [r7, #12]
 8057002:	685b      	ldr	r3, [r3, #4]
 8057004:	617b      	str	r3, [r7, #20]
 8057006:	4b17      	ldr	r3, [pc, #92]	; (8057064 <vTaskPlaceOnUnorderedEventList+0x98>)
 8057008:	681b      	ldr	r3, [r3, #0]
 805700a:	697a      	ldr	r2, [r7, #20]
 805700c:	f8c3 22ac 	str.w	r2, [r3, #684]	; 0x2ac
 8057010:	4b14      	ldr	r3, [pc, #80]	; (8057064 <vTaskPlaceOnUnorderedEventList+0x98>)
 8057012:	681b      	ldr	r3, [r3, #0]
 8057014:	697a      	ldr	r2, [r7, #20]
 8057016:	6892      	ldr	r2, [r2, #8]
 8057018:	f8c3 22b0 	str.w	r2, [r3, #688]	; 0x2b0
 805701c:	4b11      	ldr	r3, [pc, #68]	; (8057064 <vTaskPlaceOnUnorderedEventList+0x98>)
 805701e:	681a      	ldr	r2, [r3, #0]
 8057020:	697b      	ldr	r3, [r7, #20]
 8057022:	689b      	ldr	r3, [r3, #8]
 8057024:	f502 722a 	add.w	r2, r2, #680	; 0x2a8
 8057028:	605a      	str	r2, [r3, #4]
 805702a:	4b0e      	ldr	r3, [pc, #56]	; (8057064 <vTaskPlaceOnUnorderedEventList+0x98>)
 805702c:	681b      	ldr	r3, [r3, #0]
 805702e:	f503 722a 	add.w	r2, r3, #680	; 0x2a8
 8057032:	697b      	ldr	r3, [r7, #20]
 8057034:	609a      	str	r2, [r3, #8]
 8057036:	4b0b      	ldr	r3, [pc, #44]	; (8057064 <vTaskPlaceOnUnorderedEventList+0x98>)
 8057038:	681b      	ldr	r3, [r3, #0]
 805703a:	68fa      	ldr	r2, [r7, #12]
 805703c:	f8c3 22b8 	str.w	r2, [r3, #696]	; 0x2b8
 8057040:	68fb      	ldr	r3, [r7, #12]
 8057042:	681b      	ldr	r3, [r3, #0]
 8057044:	1c5a      	adds	r2, r3, #1
 8057046:	68fb      	ldr	r3, [r7, #12]
 8057048:	601a      	str	r2, [r3, #0]
 805704a:	2101      	movs	r1, #1
 805704c:	6878      	ldr	r0, [r7, #4]
 805704e:	f000 fdf5 	bl	8057c3c <prvAddCurrentTaskToDelayedList>
 8057052:	bf00      	nop
 8057054:	3718      	adds	r7, #24
 8057056:	46bd      	mov	sp, r7
 8057058:	bd80      	pop	{r7, pc}
 805705a:	bf00      	nop
 805705c:	0805f1c7 	.word	0x0805f1c7
 8057060:	200002dc 	.word	0x200002dc
 8057064:	20000100 	.word	0x20000100

08057068 <vTaskPlaceOnEventListRestricted>:
 8057068:	b580      	push	{r7, lr}
 805706a:	b086      	sub	sp, #24
 805706c:	af00      	add	r7, sp, #0
 805706e:	60f8      	str	r0, [r7, #12]
 8057070:	60b9      	str	r1, [r7, #8]
 8057072:	607a      	str	r2, [r7, #4]
 8057074:	68fb      	ldr	r3, [r7, #12]
 8057076:	2b00      	cmp	r3, #0
 8057078:	d102      	bne.n	8057080 <vTaskPlaceOnEventListRestricted+0x18>
 805707a:	4b1b      	ldr	r3, [pc, #108]	; (80570e8 <vTaskPlaceOnEventListRestricted+0x80>)
 805707c:	4798      	blx	r3
 805707e:	e7fe      	b.n	805707e <vTaskPlaceOnEventListRestricted+0x16>
 8057080:	68fb      	ldr	r3, [r7, #12]
 8057082:	685b      	ldr	r3, [r3, #4]
 8057084:	617b      	str	r3, [r7, #20]
 8057086:	4b19      	ldr	r3, [pc, #100]	; (80570ec <vTaskPlaceOnEventListRestricted+0x84>)
 8057088:	681b      	ldr	r3, [r3, #0]
 805708a:	697a      	ldr	r2, [r7, #20]
 805708c:	f8c3 22ac 	str.w	r2, [r3, #684]	; 0x2ac
 8057090:	4b16      	ldr	r3, [pc, #88]	; (80570ec <vTaskPlaceOnEventListRestricted+0x84>)
 8057092:	681b      	ldr	r3, [r3, #0]
 8057094:	697a      	ldr	r2, [r7, #20]
 8057096:	6892      	ldr	r2, [r2, #8]
 8057098:	f8c3 22b0 	str.w	r2, [r3, #688]	; 0x2b0
 805709c:	4b13      	ldr	r3, [pc, #76]	; (80570ec <vTaskPlaceOnEventListRestricted+0x84>)
 805709e:	681a      	ldr	r2, [r3, #0]
 80570a0:	697b      	ldr	r3, [r7, #20]
 80570a2:	689b      	ldr	r3, [r3, #8]
 80570a4:	f502 722a 	add.w	r2, r2, #680	; 0x2a8
 80570a8:	605a      	str	r2, [r3, #4]
 80570aa:	4b10      	ldr	r3, [pc, #64]	; (80570ec <vTaskPlaceOnEventListRestricted+0x84>)
 80570ac:	681b      	ldr	r3, [r3, #0]
 80570ae:	f503 722a 	add.w	r2, r3, #680	; 0x2a8
 80570b2:	697b      	ldr	r3, [r7, #20]
 80570b4:	609a      	str	r2, [r3, #8]
 80570b6:	4b0d      	ldr	r3, [pc, #52]	; (80570ec <vTaskPlaceOnEventListRestricted+0x84>)
 80570b8:	681b      	ldr	r3, [r3, #0]
 80570ba:	68fa      	ldr	r2, [r7, #12]
 80570bc:	f8c3 22b8 	str.w	r2, [r3, #696]	; 0x2b8
 80570c0:	68fb      	ldr	r3, [r7, #12]
 80570c2:	681b      	ldr	r3, [r3, #0]
 80570c4:	1c5a      	adds	r2, r3, #1
 80570c6:	68fb      	ldr	r3, [r7, #12]
 80570c8:	601a      	str	r2, [r3, #0]
 80570ca:	687b      	ldr	r3, [r7, #4]
 80570cc:	2b00      	cmp	r3, #0
 80570ce:	d002      	beq.n	80570d6 <vTaskPlaceOnEventListRestricted+0x6e>
 80570d0:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80570d4:	60bb      	str	r3, [r7, #8]
 80570d6:	6879      	ldr	r1, [r7, #4]
 80570d8:	68b8      	ldr	r0, [r7, #8]
 80570da:	f000 fdaf 	bl	8057c3c <prvAddCurrentTaskToDelayedList>
 80570de:	bf00      	nop
 80570e0:	3718      	adds	r7, #24
 80570e2:	46bd      	mov	sp, r7
 80570e4:	bd80      	pop	{r7, pc}
 80570e6:	bf00      	nop
 80570e8:	0805f1c7 	.word	0x0805f1c7
 80570ec:	20000100 	.word	0x20000100

080570f0 <xTaskRemoveFromEventList>:
 80570f0:	b580      	push	{r7, lr}
 80570f2:	b088      	sub	sp, #32
 80570f4:	af00      	add	r7, sp, #0
 80570f6:	6078      	str	r0, [r7, #4]
 80570f8:	687b      	ldr	r3, [r7, #4]
 80570fa:	68db      	ldr	r3, [r3, #12]
 80570fc:	68db      	ldr	r3, [r3, #12]
 80570fe:	61bb      	str	r3, [r7, #24]
 8057100:	69bb      	ldr	r3, [r7, #24]
 8057102:	2b00      	cmp	r3, #0
 8057104:	d102      	bne.n	805710c <xTaskRemoveFromEventList+0x1c>
 8057106:	4b6b      	ldr	r3, [pc, #428]	; (80572b4 <xTaskRemoveFromEventList+0x1c4>)
 8057108:	4798      	blx	r3
 805710a:	e7fe      	b.n	805710a <xTaskRemoveFromEventList+0x1a>
 805710c:	69bb      	ldr	r3, [r7, #24]
 805710e:	f8d3 32b8 	ldr.w	r3, [r3, #696]	; 0x2b8
 8057112:	617b      	str	r3, [r7, #20]
 8057114:	69bb      	ldr	r3, [r7, #24]
 8057116:	f8d3 32ac 	ldr.w	r3, [r3, #684]	; 0x2ac
 805711a:	69ba      	ldr	r2, [r7, #24]
 805711c:	f8d2 22b0 	ldr.w	r2, [r2, #688]	; 0x2b0
 8057120:	609a      	str	r2, [r3, #8]
 8057122:	69bb      	ldr	r3, [r7, #24]
 8057124:	f8d3 32b0 	ldr.w	r3, [r3, #688]	; 0x2b0
 8057128:	69ba      	ldr	r2, [r7, #24]
 805712a:	f8d2 22ac 	ldr.w	r2, [r2, #684]	; 0x2ac
 805712e:	605a      	str	r2, [r3, #4]
 8057130:	697b      	ldr	r3, [r7, #20]
 8057132:	685a      	ldr	r2, [r3, #4]
 8057134:	69bb      	ldr	r3, [r7, #24]
 8057136:	f503 732a 	add.w	r3, r3, #680	; 0x2a8
 805713a:	429a      	cmp	r2, r3
 805713c:	d104      	bne.n	8057148 <xTaskRemoveFromEventList+0x58>
 805713e:	69bb      	ldr	r3, [r7, #24]
 8057140:	f8d3 22b0 	ldr.w	r2, [r3, #688]	; 0x2b0
 8057144:	697b      	ldr	r3, [r7, #20]
 8057146:	605a      	str	r2, [r3, #4]
 8057148:	69bb      	ldr	r3, [r7, #24]
 805714a:	2200      	movs	r2, #0
 805714c:	f8c3 22b8 	str.w	r2, [r3, #696]	; 0x2b8
 8057150:	697b      	ldr	r3, [r7, #20]
 8057152:	681b      	ldr	r3, [r3, #0]
 8057154:	1e5a      	subs	r2, r3, #1
 8057156:	697b      	ldr	r3, [r7, #20]
 8057158:	601a      	str	r2, [r3, #0]
 805715a:	4b57      	ldr	r3, [pc, #348]	; (80572b8 <xTaskRemoveFromEventList+0x1c8>)
 805715c:	681b      	ldr	r3, [r3, #0]
 805715e:	2b00      	cmp	r3, #0
 8057160:	d171      	bne.n	8057246 <xTaskRemoveFromEventList+0x156>
 8057162:	69bb      	ldr	r3, [r7, #24]
 8057164:	f8d3 32a4 	ldr.w	r3, [r3, #676]	; 0x2a4
 8057168:	60fb      	str	r3, [r7, #12]
 805716a:	69bb      	ldr	r3, [r7, #24]
 805716c:	f8d3 3298 	ldr.w	r3, [r3, #664]	; 0x298
 8057170:	69ba      	ldr	r2, [r7, #24]
 8057172:	f8d2 229c 	ldr.w	r2, [r2, #668]	; 0x29c
 8057176:	609a      	str	r2, [r3, #8]
 8057178:	69bb      	ldr	r3, [r7, #24]
 805717a:	f8d3 329c 	ldr.w	r3, [r3, #668]	; 0x29c
 805717e:	69ba      	ldr	r2, [r7, #24]
 8057180:	f8d2 2298 	ldr.w	r2, [r2, #664]	; 0x298
 8057184:	605a      	str	r2, [r3, #4]
 8057186:	68fb      	ldr	r3, [r7, #12]
 8057188:	685a      	ldr	r2, [r3, #4]
 805718a:	69bb      	ldr	r3, [r7, #24]
 805718c:	f503 7325 	add.w	r3, r3, #660	; 0x294
 8057190:	429a      	cmp	r2, r3
 8057192:	d104      	bne.n	805719e <xTaskRemoveFromEventList+0xae>
 8057194:	69bb      	ldr	r3, [r7, #24]
 8057196:	f8d3 229c 	ldr.w	r2, [r3, #668]	; 0x29c
 805719a:	68fb      	ldr	r3, [r7, #12]
 805719c:	605a      	str	r2, [r3, #4]
 805719e:	69bb      	ldr	r3, [r7, #24]
 80571a0:	2200      	movs	r2, #0
 80571a2:	f8c3 22a4 	str.w	r2, [r3, #676]	; 0x2a4
 80571a6:	68fb      	ldr	r3, [r7, #12]
 80571a8:	681b      	ldr	r3, [r3, #0]
 80571aa:	1e5a      	subs	r2, r3, #1
 80571ac:	68fb      	ldr	r3, [r7, #12]
 80571ae:	601a      	str	r2, [r3, #0]
 80571b0:	69bb      	ldr	r3, [r7, #24]
 80571b2:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 80571b6:	4b41      	ldr	r3, [pc, #260]	; (80572bc <xTaskRemoveFromEventList+0x1cc>)
 80571b8:	681b      	ldr	r3, [r3, #0]
 80571ba:	429a      	cmp	r2, r3
 80571bc:	d904      	bls.n	80571c8 <xTaskRemoveFromEventList+0xd8>
 80571be:	69bb      	ldr	r3, [r7, #24]
 80571c0:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 80571c4:	4a3d      	ldr	r2, [pc, #244]	; (80572bc <xTaskRemoveFromEventList+0x1cc>)
 80571c6:	6013      	str	r3, [r2, #0]
 80571c8:	69bb      	ldr	r3, [r7, #24]
 80571ca:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 80571ce:	493c      	ldr	r1, [pc, #240]	; (80572c0 <xTaskRemoveFromEventList+0x1d0>)
 80571d0:	4613      	mov	r3, r2
 80571d2:	009b      	lsls	r3, r3, #2
 80571d4:	4413      	add	r3, r2
 80571d6:	009b      	lsls	r3, r3, #2
 80571d8:	440b      	add	r3, r1
 80571da:	3304      	adds	r3, #4
 80571dc:	681b      	ldr	r3, [r3, #0]
 80571de:	60bb      	str	r3, [r7, #8]
 80571e0:	69bb      	ldr	r3, [r7, #24]
 80571e2:	68ba      	ldr	r2, [r7, #8]
 80571e4:	f8c3 2298 	str.w	r2, [r3, #664]	; 0x298
 80571e8:	68bb      	ldr	r3, [r7, #8]
 80571ea:	689a      	ldr	r2, [r3, #8]
 80571ec:	69bb      	ldr	r3, [r7, #24]
 80571ee:	f8c3 229c 	str.w	r2, [r3, #668]	; 0x29c
 80571f2:	68bb      	ldr	r3, [r7, #8]
 80571f4:	689b      	ldr	r3, [r3, #8]
 80571f6:	69ba      	ldr	r2, [r7, #24]
 80571f8:	f502 7225 	add.w	r2, r2, #660	; 0x294
 80571fc:	605a      	str	r2, [r3, #4]
 80571fe:	69bb      	ldr	r3, [r7, #24]
 8057200:	f503 7225 	add.w	r2, r3, #660	; 0x294
 8057204:	68bb      	ldr	r3, [r7, #8]
 8057206:	609a      	str	r2, [r3, #8]
 8057208:	69bb      	ldr	r3, [r7, #24]
 805720a:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 805720e:	4613      	mov	r3, r2
 8057210:	009b      	lsls	r3, r3, #2
 8057212:	4413      	add	r3, r2
 8057214:	009b      	lsls	r3, r3, #2
 8057216:	4a2a      	ldr	r2, [pc, #168]	; (80572c0 <xTaskRemoveFromEventList+0x1d0>)
 8057218:	441a      	add	r2, r3
 805721a:	69bb      	ldr	r3, [r7, #24]
 805721c:	f8c3 22a4 	str.w	r2, [r3, #676]	; 0x2a4
 8057220:	69bb      	ldr	r3, [r7, #24]
 8057222:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8057226:	4926      	ldr	r1, [pc, #152]	; (80572c0 <xTaskRemoveFromEventList+0x1d0>)
 8057228:	4613      	mov	r3, r2
 805722a:	009b      	lsls	r3, r3, #2
 805722c:	4413      	add	r3, r2
 805722e:	009b      	lsls	r3, r3, #2
 8057230:	440b      	add	r3, r1
 8057232:	681b      	ldr	r3, [r3, #0]
 8057234:	1c59      	adds	r1, r3, #1
 8057236:	4822      	ldr	r0, [pc, #136]	; (80572c0 <xTaskRemoveFromEventList+0x1d0>)
 8057238:	4613      	mov	r3, r2
 805723a:	009b      	lsls	r3, r3, #2
 805723c:	4413      	add	r3, r2
 805723e:	009b      	lsls	r3, r3, #2
 8057240:	4403      	add	r3, r0
 8057242:	6019      	str	r1, [r3, #0]
 8057244:	e01f      	b.n	8057286 <xTaskRemoveFromEventList+0x196>
 8057246:	4b1f      	ldr	r3, [pc, #124]	; (80572c4 <xTaskRemoveFromEventList+0x1d4>)
 8057248:	685b      	ldr	r3, [r3, #4]
 805724a:	613b      	str	r3, [r7, #16]
 805724c:	69bb      	ldr	r3, [r7, #24]
 805724e:	693a      	ldr	r2, [r7, #16]
 8057250:	f8c3 22ac 	str.w	r2, [r3, #684]	; 0x2ac
 8057254:	693b      	ldr	r3, [r7, #16]
 8057256:	689a      	ldr	r2, [r3, #8]
 8057258:	69bb      	ldr	r3, [r7, #24]
 805725a:	f8c3 22b0 	str.w	r2, [r3, #688]	; 0x2b0
 805725e:	693b      	ldr	r3, [r7, #16]
 8057260:	689b      	ldr	r3, [r3, #8]
 8057262:	69ba      	ldr	r2, [r7, #24]
 8057264:	f502 722a 	add.w	r2, r2, #680	; 0x2a8
 8057268:	605a      	str	r2, [r3, #4]
 805726a:	69bb      	ldr	r3, [r7, #24]
 805726c:	f503 722a 	add.w	r2, r3, #680	; 0x2a8
 8057270:	693b      	ldr	r3, [r7, #16]
 8057272:	609a      	str	r2, [r3, #8]
 8057274:	69bb      	ldr	r3, [r7, #24]
 8057276:	4a13      	ldr	r2, [pc, #76]	; (80572c4 <xTaskRemoveFromEventList+0x1d4>)
 8057278:	f8c3 22b8 	str.w	r2, [r3, #696]	; 0x2b8
 805727c:	4b11      	ldr	r3, [pc, #68]	; (80572c4 <xTaskRemoveFromEventList+0x1d4>)
 805727e:	681b      	ldr	r3, [r3, #0]
 8057280:	3301      	adds	r3, #1
 8057282:	4a10      	ldr	r2, [pc, #64]	; (80572c4 <xTaskRemoveFromEventList+0x1d4>)
 8057284:	6013      	str	r3, [r2, #0]
 8057286:	69bb      	ldr	r3, [r7, #24]
 8057288:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 805728c:	4b0e      	ldr	r3, [pc, #56]	; (80572c8 <xTaskRemoveFromEventList+0x1d8>)
 805728e:	681b      	ldr	r3, [r3, #0]
 8057290:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 8057294:	429a      	cmp	r2, r3
 8057296:	d905      	bls.n	80572a4 <xTaskRemoveFromEventList+0x1b4>
 8057298:	2301      	movs	r3, #1
 805729a:	61fb      	str	r3, [r7, #28]
 805729c:	4b0b      	ldr	r3, [pc, #44]	; (80572cc <xTaskRemoveFromEventList+0x1dc>)
 805729e:	2201      	movs	r2, #1
 80572a0:	601a      	str	r2, [r3, #0]
 80572a2:	e001      	b.n	80572a8 <xTaskRemoveFromEventList+0x1b8>
 80572a4:	2300      	movs	r3, #0
 80572a6:	61fb      	str	r3, [r7, #28]
 80572a8:	69fb      	ldr	r3, [r7, #28]
 80572aa:	4618      	mov	r0, r3
 80572ac:	3720      	adds	r7, #32
 80572ae:	46bd      	mov	sp, r7
 80572b0:	bd80      	pop	{r7, pc}
 80572b2:	bf00      	nop
 80572b4:	0805f1c7 	.word	0x0805f1c7
 80572b8:	200002dc 	.word	0x200002dc
 80572bc:	200002bc 	.word	0x200002bc
 80572c0:	20000104 	.word	0x20000104
 80572c4:	20000274 	.word	0x20000274
 80572c8:	20000100 	.word	0x20000100
 80572cc:	200002c8 	.word	0x200002c8

080572d0 <vTaskRemoveFromUnorderedEventList>:
 80572d0:	b580      	push	{r7, lr}
 80572d2:	b086      	sub	sp, #24
 80572d4:	af00      	add	r7, sp, #0
 80572d6:	6078      	str	r0, [r7, #4]
 80572d8:	6039      	str	r1, [r7, #0]
 80572da:	4b5a      	ldr	r3, [pc, #360]	; (8057444 <vTaskRemoveFromUnorderedEventList+0x174>)
 80572dc:	681b      	ldr	r3, [r3, #0]
 80572de:	2b00      	cmp	r3, #0
 80572e0:	d102      	bne.n	80572e8 <vTaskRemoveFromUnorderedEventList+0x18>
 80572e2:	4b59      	ldr	r3, [pc, #356]	; (8057448 <vTaskRemoveFromUnorderedEventList+0x178>)
 80572e4:	4798      	blx	r3
 80572e6:	e7fe      	b.n	80572e6 <vTaskRemoveFromUnorderedEventList+0x16>
 80572e8:	683b      	ldr	r3, [r7, #0]
 80572ea:	f043 4200 	orr.w	r2, r3, #2147483648	; 0x80000000
 80572ee:	687b      	ldr	r3, [r7, #4]
 80572f0:	601a      	str	r2, [r3, #0]
 80572f2:	687b      	ldr	r3, [r7, #4]
 80572f4:	68db      	ldr	r3, [r3, #12]
 80572f6:	617b      	str	r3, [r7, #20]
 80572f8:	697b      	ldr	r3, [r7, #20]
 80572fa:	2b00      	cmp	r3, #0
 80572fc:	d102      	bne.n	8057304 <vTaskRemoveFromUnorderedEventList+0x34>
 80572fe:	4b52      	ldr	r3, [pc, #328]	; (8057448 <vTaskRemoveFromUnorderedEventList+0x178>)
 8057300:	4798      	blx	r3
 8057302:	e7fe      	b.n	8057302 <vTaskRemoveFromUnorderedEventList+0x32>
 8057304:	687b      	ldr	r3, [r7, #4]
 8057306:	691b      	ldr	r3, [r3, #16]
 8057308:	613b      	str	r3, [r7, #16]
 805730a:	687b      	ldr	r3, [r7, #4]
 805730c:	685b      	ldr	r3, [r3, #4]
 805730e:	687a      	ldr	r2, [r7, #4]
 8057310:	6892      	ldr	r2, [r2, #8]
 8057312:	609a      	str	r2, [r3, #8]
 8057314:	687b      	ldr	r3, [r7, #4]
 8057316:	689b      	ldr	r3, [r3, #8]
 8057318:	687a      	ldr	r2, [r7, #4]
 805731a:	6852      	ldr	r2, [r2, #4]
 805731c:	605a      	str	r2, [r3, #4]
 805731e:	693b      	ldr	r3, [r7, #16]
 8057320:	685b      	ldr	r3, [r3, #4]
 8057322:	687a      	ldr	r2, [r7, #4]
 8057324:	429a      	cmp	r2, r3
 8057326:	d103      	bne.n	8057330 <vTaskRemoveFromUnorderedEventList+0x60>
 8057328:	687b      	ldr	r3, [r7, #4]
 805732a:	689a      	ldr	r2, [r3, #8]
 805732c:	693b      	ldr	r3, [r7, #16]
 805732e:	605a      	str	r2, [r3, #4]
 8057330:	687b      	ldr	r3, [r7, #4]
 8057332:	2200      	movs	r2, #0
 8057334:	611a      	str	r2, [r3, #16]
 8057336:	693b      	ldr	r3, [r7, #16]
 8057338:	681b      	ldr	r3, [r3, #0]
 805733a:	1e5a      	subs	r2, r3, #1
 805733c:	693b      	ldr	r3, [r7, #16]
 805733e:	601a      	str	r2, [r3, #0]
 8057340:	697b      	ldr	r3, [r7, #20]
 8057342:	f8d3 32a4 	ldr.w	r3, [r3, #676]	; 0x2a4
 8057346:	60fb      	str	r3, [r7, #12]
 8057348:	697b      	ldr	r3, [r7, #20]
 805734a:	f8d3 3298 	ldr.w	r3, [r3, #664]	; 0x298
 805734e:	697a      	ldr	r2, [r7, #20]
 8057350:	f8d2 229c 	ldr.w	r2, [r2, #668]	; 0x29c
 8057354:	609a      	str	r2, [r3, #8]
 8057356:	697b      	ldr	r3, [r7, #20]
 8057358:	f8d3 329c 	ldr.w	r3, [r3, #668]	; 0x29c
 805735c:	697a      	ldr	r2, [r7, #20]
 805735e:	f8d2 2298 	ldr.w	r2, [r2, #664]	; 0x298
 8057362:	605a      	str	r2, [r3, #4]
 8057364:	68fb      	ldr	r3, [r7, #12]
 8057366:	685a      	ldr	r2, [r3, #4]
 8057368:	697b      	ldr	r3, [r7, #20]
 805736a:	f503 7325 	add.w	r3, r3, #660	; 0x294
 805736e:	429a      	cmp	r2, r3
 8057370:	d104      	bne.n	805737c <vTaskRemoveFromUnorderedEventList+0xac>
 8057372:	697b      	ldr	r3, [r7, #20]
 8057374:	f8d3 229c 	ldr.w	r2, [r3, #668]	; 0x29c
 8057378:	68fb      	ldr	r3, [r7, #12]
 805737a:	605a      	str	r2, [r3, #4]
 805737c:	697b      	ldr	r3, [r7, #20]
 805737e:	2200      	movs	r2, #0
 8057380:	f8c3 22a4 	str.w	r2, [r3, #676]	; 0x2a4
 8057384:	68fb      	ldr	r3, [r7, #12]
 8057386:	681b      	ldr	r3, [r3, #0]
 8057388:	1e5a      	subs	r2, r3, #1
 805738a:	68fb      	ldr	r3, [r7, #12]
 805738c:	601a      	str	r2, [r3, #0]
 805738e:	697b      	ldr	r3, [r7, #20]
 8057390:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8057394:	4b2d      	ldr	r3, [pc, #180]	; (805744c <vTaskRemoveFromUnorderedEventList+0x17c>)
 8057396:	681b      	ldr	r3, [r3, #0]
 8057398:	429a      	cmp	r2, r3
 805739a:	d904      	bls.n	80573a6 <vTaskRemoveFromUnorderedEventList+0xd6>
 805739c:	697b      	ldr	r3, [r7, #20]
 805739e:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 80573a2:	4a2a      	ldr	r2, [pc, #168]	; (805744c <vTaskRemoveFromUnorderedEventList+0x17c>)
 80573a4:	6013      	str	r3, [r2, #0]
 80573a6:	697b      	ldr	r3, [r7, #20]
 80573a8:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 80573ac:	4928      	ldr	r1, [pc, #160]	; (8057450 <vTaskRemoveFromUnorderedEventList+0x180>)
 80573ae:	4613      	mov	r3, r2
 80573b0:	009b      	lsls	r3, r3, #2
 80573b2:	4413      	add	r3, r2
 80573b4:	009b      	lsls	r3, r3, #2
 80573b6:	440b      	add	r3, r1
 80573b8:	3304      	adds	r3, #4
 80573ba:	681b      	ldr	r3, [r3, #0]
 80573bc:	60bb      	str	r3, [r7, #8]
 80573be:	697b      	ldr	r3, [r7, #20]
 80573c0:	68ba      	ldr	r2, [r7, #8]
 80573c2:	f8c3 2298 	str.w	r2, [r3, #664]	; 0x298
 80573c6:	68bb      	ldr	r3, [r7, #8]
 80573c8:	689a      	ldr	r2, [r3, #8]
 80573ca:	697b      	ldr	r3, [r7, #20]
 80573cc:	f8c3 229c 	str.w	r2, [r3, #668]	; 0x29c
 80573d0:	68bb      	ldr	r3, [r7, #8]
 80573d2:	689b      	ldr	r3, [r3, #8]
 80573d4:	697a      	ldr	r2, [r7, #20]
 80573d6:	f502 7225 	add.w	r2, r2, #660	; 0x294
 80573da:	605a      	str	r2, [r3, #4]
 80573dc:	697b      	ldr	r3, [r7, #20]
 80573de:	f503 7225 	add.w	r2, r3, #660	; 0x294
 80573e2:	68bb      	ldr	r3, [r7, #8]
 80573e4:	609a      	str	r2, [r3, #8]
 80573e6:	697b      	ldr	r3, [r7, #20]
 80573e8:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 80573ec:	4613      	mov	r3, r2
 80573ee:	009b      	lsls	r3, r3, #2
 80573f0:	4413      	add	r3, r2
 80573f2:	009b      	lsls	r3, r3, #2
 80573f4:	4a16      	ldr	r2, [pc, #88]	; (8057450 <vTaskRemoveFromUnorderedEventList+0x180>)
 80573f6:	441a      	add	r2, r3
 80573f8:	697b      	ldr	r3, [r7, #20]
 80573fa:	f8c3 22a4 	str.w	r2, [r3, #676]	; 0x2a4
 80573fe:	697b      	ldr	r3, [r7, #20]
 8057400:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8057404:	4912      	ldr	r1, [pc, #72]	; (8057450 <vTaskRemoveFromUnorderedEventList+0x180>)
 8057406:	4613      	mov	r3, r2
 8057408:	009b      	lsls	r3, r3, #2
 805740a:	4413      	add	r3, r2
 805740c:	009b      	lsls	r3, r3, #2
 805740e:	440b      	add	r3, r1
 8057410:	681b      	ldr	r3, [r3, #0]
 8057412:	1c59      	adds	r1, r3, #1
 8057414:	480e      	ldr	r0, [pc, #56]	; (8057450 <vTaskRemoveFromUnorderedEventList+0x180>)
 8057416:	4613      	mov	r3, r2
 8057418:	009b      	lsls	r3, r3, #2
 805741a:	4413      	add	r3, r2
 805741c:	009b      	lsls	r3, r3, #2
 805741e:	4403      	add	r3, r0
 8057420:	6019      	str	r1, [r3, #0]
 8057422:	697b      	ldr	r3, [r7, #20]
 8057424:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8057428:	4b0a      	ldr	r3, [pc, #40]	; (8057454 <vTaskRemoveFromUnorderedEventList+0x184>)
 805742a:	681b      	ldr	r3, [r3, #0]
 805742c:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 8057430:	429a      	cmp	r2, r3
 8057432:	d902      	bls.n	805743a <vTaskRemoveFromUnorderedEventList+0x16a>
 8057434:	4b08      	ldr	r3, [pc, #32]	; (8057458 <vTaskRemoveFromUnorderedEventList+0x188>)
 8057436:	2201      	movs	r2, #1
 8057438:	601a      	str	r2, [r3, #0]
 805743a:	bf00      	nop
 805743c:	3718      	adds	r7, #24
 805743e:	46bd      	mov	sp, r7
 8057440:	bd80      	pop	{r7, pc}
 8057442:	bf00      	nop
 8057444:	200002dc 	.word	0x200002dc
 8057448:	0805f1c7 	.word	0x0805f1c7
 805744c:	200002bc 	.word	0x200002bc
 8057450:	20000104 	.word	0x20000104
 8057454:	20000100 	.word	0x20000100
 8057458:	200002c8 	.word	0x200002c8

0805745c <vTaskSwitchContext>:
 805745c:	b580      	push	{r7, lr}
 805745e:	b082      	sub	sp, #8
 8057460:	af00      	add	r7, sp, #0
 8057462:	4b22      	ldr	r3, [pc, #136]	; (80574ec <vTaskSwitchContext+0x90>)
 8057464:	681b      	ldr	r3, [r3, #0]
 8057466:	2b00      	cmp	r3, #0
 8057468:	d003      	beq.n	8057472 <vTaskSwitchContext+0x16>
 805746a:	4b21      	ldr	r3, [pc, #132]	; (80574f0 <vTaskSwitchContext+0x94>)
 805746c:	2201      	movs	r2, #1
 805746e:	601a      	str	r2, [r3, #0]
 8057470:	e038      	b.n	80574e4 <vTaskSwitchContext+0x88>
 8057472:	4b1f      	ldr	r3, [pc, #124]	; (80574f0 <vTaskSwitchContext+0x94>)
 8057474:	2200      	movs	r2, #0
 8057476:	601a      	str	r2, [r3, #0]
 8057478:	4b1e      	ldr	r3, [pc, #120]	; (80574f4 <vTaskSwitchContext+0x98>)
 805747a:	681b      	ldr	r3, [r3, #0]
 805747c:	607b      	str	r3, [r7, #4]
 805747e:	e008      	b.n	8057492 <vTaskSwitchContext+0x36>
 8057480:	687b      	ldr	r3, [r7, #4]
 8057482:	2b00      	cmp	r3, #0
 8057484:	d102      	bne.n	805748c <vTaskSwitchContext+0x30>
 8057486:	4b1c      	ldr	r3, [pc, #112]	; (80574f8 <vTaskSwitchContext+0x9c>)
 8057488:	4798      	blx	r3
 805748a:	e7fe      	b.n	805748a <vTaskSwitchContext+0x2e>
 805748c:	687b      	ldr	r3, [r7, #4]
 805748e:	3b01      	subs	r3, #1
 8057490:	607b      	str	r3, [r7, #4]
 8057492:	491a      	ldr	r1, [pc, #104]	; (80574fc <vTaskSwitchContext+0xa0>)
 8057494:	687a      	ldr	r2, [r7, #4]
 8057496:	4613      	mov	r3, r2
 8057498:	009b      	lsls	r3, r3, #2
 805749a:	4413      	add	r3, r2
 805749c:	009b      	lsls	r3, r3, #2
 805749e:	440b      	add	r3, r1
 80574a0:	681b      	ldr	r3, [r3, #0]
 80574a2:	2b00      	cmp	r3, #0
 80574a4:	d0ec      	beq.n	8057480 <vTaskSwitchContext+0x24>
 80574a6:	687a      	ldr	r2, [r7, #4]
 80574a8:	4613      	mov	r3, r2
 80574aa:	009b      	lsls	r3, r3, #2
 80574ac:	4413      	add	r3, r2
 80574ae:	009b      	lsls	r3, r3, #2
 80574b0:	4a12      	ldr	r2, [pc, #72]	; (80574fc <vTaskSwitchContext+0xa0>)
 80574b2:	4413      	add	r3, r2
 80574b4:	603b      	str	r3, [r7, #0]
 80574b6:	683b      	ldr	r3, [r7, #0]
 80574b8:	685b      	ldr	r3, [r3, #4]
 80574ba:	685a      	ldr	r2, [r3, #4]
 80574bc:	683b      	ldr	r3, [r7, #0]
 80574be:	605a      	str	r2, [r3, #4]
 80574c0:	683b      	ldr	r3, [r7, #0]
 80574c2:	685a      	ldr	r2, [r3, #4]
 80574c4:	683b      	ldr	r3, [r7, #0]
 80574c6:	3308      	adds	r3, #8
 80574c8:	429a      	cmp	r2, r3
 80574ca:	d103      	bne.n	80574d4 <vTaskSwitchContext+0x78>
 80574cc:	683b      	ldr	r3, [r7, #0]
 80574ce:	68da      	ldr	r2, [r3, #12]
 80574d0:	683b      	ldr	r3, [r7, #0]
 80574d2:	605a      	str	r2, [r3, #4]
 80574d4:	683b      	ldr	r3, [r7, #0]
 80574d6:	685b      	ldr	r3, [r3, #4]
 80574d8:	68db      	ldr	r3, [r3, #12]
 80574da:	4a09      	ldr	r2, [pc, #36]	; (8057500 <vTaskSwitchContext+0xa4>)
 80574dc:	6013      	str	r3, [r2, #0]
 80574de:	4a05      	ldr	r2, [pc, #20]	; (80574f4 <vTaskSwitchContext+0x98>)
 80574e0:	687b      	ldr	r3, [r7, #4]
 80574e2:	6013      	str	r3, [r2, #0]
 80574e4:	bf00      	nop
 80574e6:	3708      	adds	r7, #8
 80574e8:	46bd      	mov	sp, r7
 80574ea:	bd80      	pop	{r7, pc}
 80574ec:	200002dc 	.word	0x200002dc
 80574f0:	200002c8 	.word	0x200002c8
 80574f4:	200002bc 	.word	0x200002bc
 80574f8:	0805f1c7 	.word	0x0805f1c7
 80574fc:	20000104 	.word	0x20000104
 8057500:	20000100 	.word	0x20000100

08057504 <uxTaskResetEventItemValue>:
 8057504:	b480      	push	{r7}
 8057506:	b083      	sub	sp, #12
 8057508:	af00      	add	r7, sp, #0
 805750a:	4b0a      	ldr	r3, [pc, #40]	; (8057534 <uxTaskResetEventItemValue+0x30>)
 805750c:	681b      	ldr	r3, [r3, #0]
 805750e:	f8d3 32a8 	ldr.w	r3, [r3, #680]	; 0x2a8
 8057512:	607b      	str	r3, [r7, #4]
 8057514:	4b07      	ldr	r3, [pc, #28]	; (8057534 <uxTaskResetEventItemValue+0x30>)
 8057516:	681b      	ldr	r3, [r3, #0]
 8057518:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 805751c:	4b05      	ldr	r3, [pc, #20]	; (8057534 <uxTaskResetEventItemValue+0x30>)
 805751e:	681b      	ldr	r3, [r3, #0]
 8057520:	f1c2 0210 	rsb	r2, r2, #16
 8057524:	f8c3 22a8 	str.w	r2, [r3, #680]	; 0x2a8
 8057528:	687b      	ldr	r3, [r7, #4]
 805752a:	4618      	mov	r0, r3
 805752c:	370c      	adds	r7, #12
 805752e:	46bd      	mov	sp, r7
 8057530:	bc80      	pop	{r7}
 8057532:	4770      	bx	lr
 8057534:	20000100 	.word	0x20000100

08057538 <xTaskGetCurrentTaskHandle>:
 8057538:	b480      	push	{r7}
 805753a:	b083      	sub	sp, #12
 805753c:	af00      	add	r7, sp, #0
 805753e:	4b04      	ldr	r3, [pc, #16]	; (8057550 <xTaskGetCurrentTaskHandle+0x18>)
 8057540:	681b      	ldr	r3, [r3, #0]
 8057542:	607b      	str	r3, [r7, #4]
 8057544:	687b      	ldr	r3, [r7, #4]
 8057546:	4618      	mov	r0, r3
 8057548:	370c      	adds	r7, #12
 805754a:	46bd      	mov	sp, r7
 805754c:	bc80      	pop	{r7}
 805754e:	4770      	bx	lr
 8057550:	20000100 	.word	0x20000100

08057554 <vTaskMissedYield>:
 8057554:	b480      	push	{r7}
 8057556:	af00      	add	r7, sp, #0
 8057558:	4b03      	ldr	r3, [pc, #12]	; (8057568 <vTaskMissedYield+0x14>)
 805755a:	2201      	movs	r2, #1
 805755c:	601a      	str	r2, [r3, #0]
 805755e:	bf00      	nop
 8057560:	46bd      	mov	sp, r7
 8057562:	bc80      	pop	{r7}
 8057564:	4770      	bx	lr
 8057566:	bf00      	nop
 8057568:	200002c8 	.word	0x200002c8

0805756c <xTaskGetSchedulerState>:
 805756c:	b480      	push	{r7}
 805756e:	b083      	sub	sp, #12
 8057570:	af00      	add	r7, sp, #0
 8057572:	4b0b      	ldr	r3, [pc, #44]	; (80575a0 <xTaskGetSchedulerState+0x34>)
 8057574:	681b      	ldr	r3, [r3, #0]
 8057576:	2b00      	cmp	r3, #0
 8057578:	d102      	bne.n	8057580 <xTaskGetSchedulerState+0x14>
 805757a:	2301      	movs	r3, #1
 805757c:	607b      	str	r3, [r7, #4]
 805757e:	e008      	b.n	8057592 <xTaskGetSchedulerState+0x26>
 8057580:	4b08      	ldr	r3, [pc, #32]	; (80575a4 <xTaskGetSchedulerState+0x38>)
 8057582:	681b      	ldr	r3, [r3, #0]
 8057584:	2b00      	cmp	r3, #0
 8057586:	d102      	bne.n	805758e <xTaskGetSchedulerState+0x22>
 8057588:	2302      	movs	r3, #2
 805758a:	607b      	str	r3, [r7, #4]
 805758c:	e001      	b.n	8057592 <xTaskGetSchedulerState+0x26>
 805758e:	2300      	movs	r3, #0
 8057590:	607b      	str	r3, [r7, #4]
 8057592:	687b      	ldr	r3, [r7, #4]
 8057594:	4618      	mov	r0, r3
 8057596:	370c      	adds	r7, #12
 8057598:	46bd      	mov	sp, r7
 805759a:	bc80      	pop	{r7}
 805759c:	4770      	bx	lr
 805759e:	bf00      	nop
 80575a0:	200002c0 	.word	0x200002c0
 80575a4:	200002dc 	.word	0x200002dc

080575a8 <xTaskPriorityInherit>:
 80575a8:	b580      	push	{r7, lr}
 80575aa:	b086      	sub	sp, #24
 80575ac:	af00      	add	r7, sp, #0
 80575ae:	6078      	str	r0, [r7, #4]
 80575b0:	687b      	ldr	r3, [r7, #4]
 80575b2:	613b      	str	r3, [r7, #16]
 80575b4:	2300      	movs	r3, #0
 80575b6:	617b      	str	r3, [r7, #20]
 80575b8:	687b      	ldr	r3, [r7, #4]
 80575ba:	2b00      	cmp	r3, #0
 80575bc:	f000 8092 	beq.w	80576e4 <xTaskPriorityInherit+0x13c>
 80575c0:	693b      	ldr	r3, [r7, #16]
 80575c2:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 80575c6:	4b4a      	ldr	r3, [pc, #296]	; (80576f0 <xTaskPriorityInherit+0x148>)
 80575c8:	681b      	ldr	r3, [r3, #0]
 80575ca:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 80575ce:	429a      	cmp	r2, r3
 80575d0:	d27d      	bcs.n	80576ce <xTaskPriorityInherit+0x126>
 80575d2:	693b      	ldr	r3, [r7, #16]
 80575d4:	f8d3 32a8 	ldr.w	r3, [r3, #680]	; 0x2a8
 80575d8:	2b00      	cmp	r3, #0
 80575da:	db08      	blt.n	80575ee <xTaskPriorityInherit+0x46>
 80575dc:	4b44      	ldr	r3, [pc, #272]	; (80576f0 <xTaskPriorityInherit+0x148>)
 80575de:	681b      	ldr	r3, [r3, #0]
 80575e0:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 80575e4:	f1c3 0210 	rsb	r2, r3, #16
 80575e8:	693b      	ldr	r3, [r7, #16]
 80575ea:	f8c3 22a8 	str.w	r2, [r3, #680]	; 0x2a8
 80575ee:	693b      	ldr	r3, [r7, #16]
 80575f0:	f8d3 12a4 	ldr.w	r1, [r3, #676]	; 0x2a4
 80575f4:	693b      	ldr	r3, [r7, #16]
 80575f6:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 80575fa:	4613      	mov	r3, r2
 80575fc:	009b      	lsls	r3, r3, #2
 80575fe:	4413      	add	r3, r2
 8057600:	009b      	lsls	r3, r3, #2
 8057602:	4a3c      	ldr	r2, [pc, #240]	; (80576f4 <xTaskPriorityInherit+0x14c>)
 8057604:	4413      	add	r3, r2
 8057606:	4299      	cmp	r1, r3
 8057608:	d157      	bne.n	80576ba <xTaskPriorityInherit+0x112>
 805760a:	693b      	ldr	r3, [r7, #16]
 805760c:	f503 7325 	add.w	r3, r3, #660	; 0x294
 8057610:	4618      	mov	r0, r3
 8057612:	4b39      	ldr	r3, [pc, #228]	; (80576f8 <xTaskPriorityInherit+0x150>)
 8057614:	4798      	blx	r3
 8057616:	4b36      	ldr	r3, [pc, #216]	; (80576f0 <xTaskPriorityInherit+0x148>)
 8057618:	681b      	ldr	r3, [r3, #0]
 805761a:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 805761e:	693b      	ldr	r3, [r7, #16]
 8057620:	f8c3 22bc 	str.w	r2, [r3, #700]	; 0x2bc
 8057624:	693b      	ldr	r3, [r7, #16]
 8057626:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 805762a:	4b34      	ldr	r3, [pc, #208]	; (80576fc <xTaskPriorityInherit+0x154>)
 805762c:	681b      	ldr	r3, [r3, #0]
 805762e:	429a      	cmp	r2, r3
 8057630:	d904      	bls.n	805763c <xTaskPriorityInherit+0x94>
 8057632:	693b      	ldr	r3, [r7, #16]
 8057634:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 8057638:	4a30      	ldr	r2, [pc, #192]	; (80576fc <xTaskPriorityInherit+0x154>)
 805763a:	6013      	str	r3, [r2, #0]
 805763c:	693b      	ldr	r3, [r7, #16]
 805763e:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8057642:	492c      	ldr	r1, [pc, #176]	; (80576f4 <xTaskPriorityInherit+0x14c>)
 8057644:	4613      	mov	r3, r2
 8057646:	009b      	lsls	r3, r3, #2
 8057648:	4413      	add	r3, r2
 805764a:	009b      	lsls	r3, r3, #2
 805764c:	440b      	add	r3, r1
 805764e:	3304      	adds	r3, #4
 8057650:	681b      	ldr	r3, [r3, #0]
 8057652:	60fb      	str	r3, [r7, #12]
 8057654:	693b      	ldr	r3, [r7, #16]
 8057656:	68fa      	ldr	r2, [r7, #12]
 8057658:	f8c3 2298 	str.w	r2, [r3, #664]	; 0x298
 805765c:	68fb      	ldr	r3, [r7, #12]
 805765e:	689a      	ldr	r2, [r3, #8]
 8057660:	693b      	ldr	r3, [r7, #16]
 8057662:	f8c3 229c 	str.w	r2, [r3, #668]	; 0x29c
 8057666:	68fb      	ldr	r3, [r7, #12]
 8057668:	689b      	ldr	r3, [r3, #8]
 805766a:	693a      	ldr	r2, [r7, #16]
 805766c:	f502 7225 	add.w	r2, r2, #660	; 0x294
 8057670:	605a      	str	r2, [r3, #4]
 8057672:	693b      	ldr	r3, [r7, #16]
 8057674:	f503 7225 	add.w	r2, r3, #660	; 0x294
 8057678:	68fb      	ldr	r3, [r7, #12]
 805767a:	609a      	str	r2, [r3, #8]
 805767c:	693b      	ldr	r3, [r7, #16]
 805767e:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8057682:	4613      	mov	r3, r2
 8057684:	009b      	lsls	r3, r3, #2
 8057686:	4413      	add	r3, r2
 8057688:	009b      	lsls	r3, r3, #2
 805768a:	4a1a      	ldr	r2, [pc, #104]	; (80576f4 <xTaskPriorityInherit+0x14c>)
 805768c:	441a      	add	r2, r3
 805768e:	693b      	ldr	r3, [r7, #16]
 8057690:	f8c3 22a4 	str.w	r2, [r3, #676]	; 0x2a4
 8057694:	693b      	ldr	r3, [r7, #16]
 8057696:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 805769a:	4916      	ldr	r1, [pc, #88]	; (80576f4 <xTaskPriorityInherit+0x14c>)
 805769c:	4613      	mov	r3, r2
 805769e:	009b      	lsls	r3, r3, #2
 80576a0:	4413      	add	r3, r2
 80576a2:	009b      	lsls	r3, r3, #2
 80576a4:	440b      	add	r3, r1
 80576a6:	681b      	ldr	r3, [r3, #0]
 80576a8:	1c59      	adds	r1, r3, #1
 80576aa:	4812      	ldr	r0, [pc, #72]	; (80576f4 <xTaskPriorityInherit+0x14c>)
 80576ac:	4613      	mov	r3, r2
 80576ae:	009b      	lsls	r3, r3, #2
 80576b0:	4413      	add	r3, r2
 80576b2:	009b      	lsls	r3, r3, #2
 80576b4:	4403      	add	r3, r0
 80576b6:	6019      	str	r1, [r3, #0]
 80576b8:	e006      	b.n	80576c8 <xTaskPriorityInherit+0x120>
 80576ba:	4b0d      	ldr	r3, [pc, #52]	; (80576f0 <xTaskPriorityInherit+0x148>)
 80576bc:	681b      	ldr	r3, [r3, #0]
 80576be:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 80576c2:	693b      	ldr	r3, [r7, #16]
 80576c4:	f8c3 22bc 	str.w	r2, [r3, #700]	; 0x2bc
 80576c8:	2301      	movs	r3, #1
 80576ca:	617b      	str	r3, [r7, #20]
 80576cc:	e00a      	b.n	80576e4 <xTaskPriorityInherit+0x13c>
 80576ce:	693b      	ldr	r3, [r7, #16]
 80576d0:	f8d3 22dc 	ldr.w	r2, [r3, #732]	; 0x2dc
 80576d4:	4b06      	ldr	r3, [pc, #24]	; (80576f0 <xTaskPriorityInherit+0x148>)
 80576d6:	681b      	ldr	r3, [r3, #0]
 80576d8:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 80576dc:	429a      	cmp	r2, r3
 80576de:	d201      	bcs.n	80576e4 <xTaskPriorityInherit+0x13c>
 80576e0:	2301      	movs	r3, #1
 80576e2:	617b      	str	r3, [r7, #20]
 80576e4:	697b      	ldr	r3, [r7, #20]
 80576e6:	4618      	mov	r0, r3
 80576e8:	3718      	adds	r7, #24
 80576ea:	46bd      	mov	sp, r7
 80576ec:	bd80      	pop	{r7, pc}
 80576ee:	bf00      	nop
 80576f0:	20000100 	.word	0x20000100
 80576f4:	20000104 	.word	0x20000104
 80576f8:	0805c449 	.word	0x0805c449
 80576fc:	200002bc 	.word	0x200002bc

08057700 <xTaskPriorityDisinherit>:
 8057700:	b580      	push	{r7, lr}
 8057702:	b086      	sub	sp, #24
 8057704:	af00      	add	r7, sp, #0
 8057706:	6078      	str	r0, [r7, #4]
 8057708:	687b      	ldr	r3, [r7, #4]
 805770a:	613b      	str	r3, [r7, #16]
 805770c:	2300      	movs	r3, #0
 805770e:	617b      	str	r3, [r7, #20]
 8057710:	687b      	ldr	r3, [r7, #4]
 8057712:	2b00      	cmp	r3, #0
 8057714:	f000 8084 	beq.w	8057820 <xTaskPriorityDisinherit+0x120>
 8057718:	4b44      	ldr	r3, [pc, #272]	; (805782c <xTaskPriorityDisinherit+0x12c>)
 805771a:	681b      	ldr	r3, [r3, #0]
 805771c:	693a      	ldr	r2, [r7, #16]
 805771e:	429a      	cmp	r2, r3
 8057720:	d002      	beq.n	8057728 <xTaskPriorityDisinherit+0x28>
 8057722:	4b43      	ldr	r3, [pc, #268]	; (8057830 <xTaskPriorityDisinherit+0x130>)
 8057724:	4798      	blx	r3
 8057726:	e7fe      	b.n	8057726 <xTaskPriorityDisinherit+0x26>
 8057728:	693b      	ldr	r3, [r7, #16]
 805772a:	f8d3 32e0 	ldr.w	r3, [r3, #736]	; 0x2e0
 805772e:	2b00      	cmp	r3, #0
 8057730:	d102      	bne.n	8057738 <xTaskPriorityDisinherit+0x38>
 8057732:	4b3f      	ldr	r3, [pc, #252]	; (8057830 <xTaskPriorityDisinherit+0x130>)
 8057734:	4798      	blx	r3
 8057736:	e7fe      	b.n	8057736 <xTaskPriorityDisinherit+0x36>
 8057738:	693b      	ldr	r3, [r7, #16]
 805773a:	f8d3 32e0 	ldr.w	r3, [r3, #736]	; 0x2e0
 805773e:	1e5a      	subs	r2, r3, #1
 8057740:	693b      	ldr	r3, [r7, #16]
 8057742:	f8c3 22e0 	str.w	r2, [r3, #736]	; 0x2e0
 8057746:	693b      	ldr	r3, [r7, #16]
 8057748:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 805774c:	693b      	ldr	r3, [r7, #16]
 805774e:	f8d3 32dc 	ldr.w	r3, [r3, #732]	; 0x2dc
 8057752:	429a      	cmp	r2, r3
 8057754:	d064      	beq.n	8057820 <xTaskPriorityDisinherit+0x120>
 8057756:	693b      	ldr	r3, [r7, #16]
 8057758:	f8d3 32e0 	ldr.w	r3, [r3, #736]	; 0x2e0
 805775c:	2b00      	cmp	r3, #0
 805775e:	d15f      	bne.n	8057820 <xTaskPriorityDisinherit+0x120>
 8057760:	693b      	ldr	r3, [r7, #16]
 8057762:	f503 7325 	add.w	r3, r3, #660	; 0x294
 8057766:	4618      	mov	r0, r3
 8057768:	4b32      	ldr	r3, [pc, #200]	; (8057834 <xTaskPriorityDisinherit+0x134>)
 805776a:	4798      	blx	r3
 805776c:	693b      	ldr	r3, [r7, #16]
 805776e:	f8d3 22dc 	ldr.w	r2, [r3, #732]	; 0x2dc
 8057772:	693b      	ldr	r3, [r7, #16]
 8057774:	f8c3 22bc 	str.w	r2, [r3, #700]	; 0x2bc
 8057778:	693b      	ldr	r3, [r7, #16]
 805777a:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 805777e:	f1c3 0210 	rsb	r2, r3, #16
 8057782:	693b      	ldr	r3, [r7, #16]
 8057784:	f8c3 22a8 	str.w	r2, [r3, #680]	; 0x2a8
 8057788:	693b      	ldr	r3, [r7, #16]
 805778a:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 805778e:	4b2a      	ldr	r3, [pc, #168]	; (8057838 <xTaskPriorityDisinherit+0x138>)
 8057790:	681b      	ldr	r3, [r3, #0]
 8057792:	429a      	cmp	r2, r3
 8057794:	d904      	bls.n	80577a0 <xTaskPriorityDisinherit+0xa0>
 8057796:	693b      	ldr	r3, [r7, #16]
 8057798:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 805779c:	4a26      	ldr	r2, [pc, #152]	; (8057838 <xTaskPriorityDisinherit+0x138>)
 805779e:	6013      	str	r3, [r2, #0]
 80577a0:	693b      	ldr	r3, [r7, #16]
 80577a2:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 80577a6:	4925      	ldr	r1, [pc, #148]	; (805783c <xTaskPriorityDisinherit+0x13c>)
 80577a8:	4613      	mov	r3, r2
 80577aa:	009b      	lsls	r3, r3, #2
 80577ac:	4413      	add	r3, r2
 80577ae:	009b      	lsls	r3, r3, #2
 80577b0:	440b      	add	r3, r1
 80577b2:	3304      	adds	r3, #4
 80577b4:	681b      	ldr	r3, [r3, #0]
 80577b6:	60fb      	str	r3, [r7, #12]
 80577b8:	693b      	ldr	r3, [r7, #16]
 80577ba:	68fa      	ldr	r2, [r7, #12]
 80577bc:	f8c3 2298 	str.w	r2, [r3, #664]	; 0x298
 80577c0:	68fb      	ldr	r3, [r7, #12]
 80577c2:	689a      	ldr	r2, [r3, #8]
 80577c4:	693b      	ldr	r3, [r7, #16]
 80577c6:	f8c3 229c 	str.w	r2, [r3, #668]	; 0x29c
 80577ca:	68fb      	ldr	r3, [r7, #12]
 80577cc:	689b      	ldr	r3, [r3, #8]
 80577ce:	693a      	ldr	r2, [r7, #16]
 80577d0:	f502 7225 	add.w	r2, r2, #660	; 0x294
 80577d4:	605a      	str	r2, [r3, #4]
 80577d6:	693b      	ldr	r3, [r7, #16]
 80577d8:	f503 7225 	add.w	r2, r3, #660	; 0x294
 80577dc:	68fb      	ldr	r3, [r7, #12]
 80577de:	609a      	str	r2, [r3, #8]
 80577e0:	693b      	ldr	r3, [r7, #16]
 80577e2:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 80577e6:	4613      	mov	r3, r2
 80577e8:	009b      	lsls	r3, r3, #2
 80577ea:	4413      	add	r3, r2
 80577ec:	009b      	lsls	r3, r3, #2
 80577ee:	4a13      	ldr	r2, [pc, #76]	; (805783c <xTaskPriorityDisinherit+0x13c>)
 80577f0:	441a      	add	r2, r3
 80577f2:	693b      	ldr	r3, [r7, #16]
 80577f4:	f8c3 22a4 	str.w	r2, [r3, #676]	; 0x2a4
 80577f8:	693b      	ldr	r3, [r7, #16]
 80577fa:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 80577fe:	490f      	ldr	r1, [pc, #60]	; (805783c <xTaskPriorityDisinherit+0x13c>)
 8057800:	4613      	mov	r3, r2
 8057802:	009b      	lsls	r3, r3, #2
 8057804:	4413      	add	r3, r2
 8057806:	009b      	lsls	r3, r3, #2
 8057808:	440b      	add	r3, r1
 805780a:	681b      	ldr	r3, [r3, #0]
 805780c:	1c59      	adds	r1, r3, #1
 805780e:	480b      	ldr	r0, [pc, #44]	; (805783c <xTaskPriorityDisinherit+0x13c>)
 8057810:	4613      	mov	r3, r2
 8057812:	009b      	lsls	r3, r3, #2
 8057814:	4413      	add	r3, r2
 8057816:	009b      	lsls	r3, r3, #2
 8057818:	4403      	add	r3, r0
 805781a:	6019      	str	r1, [r3, #0]
 805781c:	2301      	movs	r3, #1
 805781e:	617b      	str	r3, [r7, #20]
 8057820:	697b      	ldr	r3, [r7, #20]
 8057822:	4618      	mov	r0, r3
 8057824:	3718      	adds	r7, #24
 8057826:	46bd      	mov	sp, r7
 8057828:	bd80      	pop	{r7, pc}
 805782a:	bf00      	nop
 805782c:	20000100 	.word	0x20000100
 8057830:	0805f1c7 	.word	0x0805f1c7
 8057834:	0805c449 	.word	0x0805c449
 8057838:	200002bc 	.word	0x200002bc
 805783c:	20000104 	.word	0x20000104

08057840 <vTaskPriorityDisinheritAfterTimeout>:
 8057840:	b580      	push	{r7, lr}
 8057842:	b088      	sub	sp, #32
 8057844:	af00      	add	r7, sp, #0
 8057846:	6078      	str	r0, [r7, #4]
 8057848:	6039      	str	r1, [r7, #0]
 805784a:	687b      	ldr	r3, [r7, #4]
 805784c:	61bb      	str	r3, [r7, #24]
 805784e:	2301      	movs	r3, #1
 8057850:	617b      	str	r3, [r7, #20]
 8057852:	687b      	ldr	r3, [r7, #4]
 8057854:	2b00      	cmp	r3, #0
 8057856:	f000 8098 	beq.w	805798a <vTaskPriorityDisinheritAfterTimeout+0x14a>
 805785a:	69bb      	ldr	r3, [r7, #24]
 805785c:	f8d3 32e0 	ldr.w	r3, [r3, #736]	; 0x2e0
 8057860:	2b00      	cmp	r3, #0
 8057862:	d102      	bne.n	805786a <vTaskPriorityDisinheritAfterTimeout+0x2a>
 8057864:	4b4b      	ldr	r3, [pc, #300]	; (8057994 <vTaskPriorityDisinheritAfterTimeout+0x154>)
 8057866:	4798      	blx	r3
 8057868:	e7fe      	b.n	8057868 <vTaskPriorityDisinheritAfterTimeout+0x28>
 805786a:	69bb      	ldr	r3, [r7, #24]
 805786c:	f8d3 32dc 	ldr.w	r3, [r3, #732]	; 0x2dc
 8057870:	683a      	ldr	r2, [r7, #0]
 8057872:	429a      	cmp	r2, r3
 8057874:	d902      	bls.n	805787c <vTaskPriorityDisinheritAfterTimeout+0x3c>
 8057876:	683b      	ldr	r3, [r7, #0]
 8057878:	61fb      	str	r3, [r7, #28]
 805787a:	e003      	b.n	8057884 <vTaskPriorityDisinheritAfterTimeout+0x44>
 805787c:	69bb      	ldr	r3, [r7, #24]
 805787e:	f8d3 32dc 	ldr.w	r3, [r3, #732]	; 0x2dc
 8057882:	61fb      	str	r3, [r7, #28]
 8057884:	69bb      	ldr	r3, [r7, #24]
 8057886:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 805788a:	69fa      	ldr	r2, [r7, #28]
 805788c:	429a      	cmp	r2, r3
 805788e:	d07c      	beq.n	805798a <vTaskPriorityDisinheritAfterTimeout+0x14a>
 8057890:	69bb      	ldr	r3, [r7, #24]
 8057892:	f8d3 32e0 	ldr.w	r3, [r3, #736]	; 0x2e0
 8057896:	697a      	ldr	r2, [r7, #20]
 8057898:	429a      	cmp	r2, r3
 805789a:	d176      	bne.n	805798a <vTaskPriorityDisinheritAfterTimeout+0x14a>
 805789c:	4b3e      	ldr	r3, [pc, #248]	; (8057998 <vTaskPriorityDisinheritAfterTimeout+0x158>)
 805789e:	681b      	ldr	r3, [r3, #0]
 80578a0:	69ba      	ldr	r2, [r7, #24]
 80578a2:	429a      	cmp	r2, r3
 80578a4:	d102      	bne.n	80578ac <vTaskPriorityDisinheritAfterTimeout+0x6c>
 80578a6:	4b3b      	ldr	r3, [pc, #236]	; (8057994 <vTaskPriorityDisinheritAfterTimeout+0x154>)
 80578a8:	4798      	blx	r3
 80578aa:	e7fe      	b.n	80578aa <vTaskPriorityDisinheritAfterTimeout+0x6a>
 80578ac:	69bb      	ldr	r3, [r7, #24]
 80578ae:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 80578b2:	613b      	str	r3, [r7, #16]
 80578b4:	69bb      	ldr	r3, [r7, #24]
 80578b6:	69fa      	ldr	r2, [r7, #28]
 80578b8:	f8c3 22bc 	str.w	r2, [r3, #700]	; 0x2bc
 80578bc:	69bb      	ldr	r3, [r7, #24]
 80578be:	f8d3 32a8 	ldr.w	r3, [r3, #680]	; 0x2a8
 80578c2:	2b00      	cmp	r3, #0
 80578c4:	db05      	blt.n	80578d2 <vTaskPriorityDisinheritAfterTimeout+0x92>
 80578c6:	69fb      	ldr	r3, [r7, #28]
 80578c8:	f1c3 0210 	rsb	r2, r3, #16
 80578cc:	69bb      	ldr	r3, [r7, #24]
 80578ce:	f8c3 22a8 	str.w	r2, [r3, #680]	; 0x2a8
 80578d2:	69bb      	ldr	r3, [r7, #24]
 80578d4:	f8d3 12a4 	ldr.w	r1, [r3, #676]	; 0x2a4
 80578d8:	693a      	ldr	r2, [r7, #16]
 80578da:	4613      	mov	r3, r2
 80578dc:	009b      	lsls	r3, r3, #2
 80578de:	4413      	add	r3, r2
 80578e0:	009b      	lsls	r3, r3, #2
 80578e2:	4a2e      	ldr	r2, [pc, #184]	; (805799c <vTaskPriorityDisinheritAfterTimeout+0x15c>)
 80578e4:	4413      	add	r3, r2
 80578e6:	4299      	cmp	r1, r3
 80578e8:	d14f      	bne.n	805798a <vTaskPriorityDisinheritAfterTimeout+0x14a>
 80578ea:	69bb      	ldr	r3, [r7, #24]
 80578ec:	f503 7325 	add.w	r3, r3, #660	; 0x294
 80578f0:	4618      	mov	r0, r3
 80578f2:	4b2b      	ldr	r3, [pc, #172]	; (80579a0 <vTaskPriorityDisinheritAfterTimeout+0x160>)
 80578f4:	4798      	blx	r3
 80578f6:	69bb      	ldr	r3, [r7, #24]
 80578f8:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 80578fc:	4b29      	ldr	r3, [pc, #164]	; (80579a4 <vTaskPriorityDisinheritAfterTimeout+0x164>)
 80578fe:	681b      	ldr	r3, [r3, #0]
 8057900:	429a      	cmp	r2, r3
 8057902:	d904      	bls.n	805790e <vTaskPriorityDisinheritAfterTimeout+0xce>
 8057904:	69bb      	ldr	r3, [r7, #24]
 8057906:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 805790a:	4a26      	ldr	r2, [pc, #152]	; (80579a4 <vTaskPriorityDisinheritAfterTimeout+0x164>)
 805790c:	6013      	str	r3, [r2, #0]
 805790e:	69bb      	ldr	r3, [r7, #24]
 8057910:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8057914:	4921      	ldr	r1, [pc, #132]	; (805799c <vTaskPriorityDisinheritAfterTimeout+0x15c>)
 8057916:	4613      	mov	r3, r2
 8057918:	009b      	lsls	r3, r3, #2
 805791a:	4413      	add	r3, r2
 805791c:	009b      	lsls	r3, r3, #2
 805791e:	440b      	add	r3, r1
 8057920:	3304      	adds	r3, #4
 8057922:	681b      	ldr	r3, [r3, #0]
 8057924:	60fb      	str	r3, [r7, #12]
 8057926:	69bb      	ldr	r3, [r7, #24]
 8057928:	68fa      	ldr	r2, [r7, #12]
 805792a:	f8c3 2298 	str.w	r2, [r3, #664]	; 0x298
 805792e:	68fb      	ldr	r3, [r7, #12]
 8057930:	689a      	ldr	r2, [r3, #8]
 8057932:	69bb      	ldr	r3, [r7, #24]
 8057934:	f8c3 229c 	str.w	r2, [r3, #668]	; 0x29c
 8057938:	68fb      	ldr	r3, [r7, #12]
 805793a:	689b      	ldr	r3, [r3, #8]
 805793c:	69ba      	ldr	r2, [r7, #24]
 805793e:	f502 7225 	add.w	r2, r2, #660	; 0x294
 8057942:	605a      	str	r2, [r3, #4]
 8057944:	69bb      	ldr	r3, [r7, #24]
 8057946:	f503 7225 	add.w	r2, r3, #660	; 0x294
 805794a:	68fb      	ldr	r3, [r7, #12]
 805794c:	609a      	str	r2, [r3, #8]
 805794e:	69bb      	ldr	r3, [r7, #24]
 8057950:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8057954:	4613      	mov	r3, r2
 8057956:	009b      	lsls	r3, r3, #2
 8057958:	4413      	add	r3, r2
 805795a:	009b      	lsls	r3, r3, #2
 805795c:	4a0f      	ldr	r2, [pc, #60]	; (805799c <vTaskPriorityDisinheritAfterTimeout+0x15c>)
 805795e:	441a      	add	r2, r3
 8057960:	69bb      	ldr	r3, [r7, #24]
 8057962:	f8c3 22a4 	str.w	r2, [r3, #676]	; 0x2a4
 8057966:	69bb      	ldr	r3, [r7, #24]
 8057968:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 805796c:	490b      	ldr	r1, [pc, #44]	; (805799c <vTaskPriorityDisinheritAfterTimeout+0x15c>)
 805796e:	4613      	mov	r3, r2
 8057970:	009b      	lsls	r3, r3, #2
 8057972:	4413      	add	r3, r2
 8057974:	009b      	lsls	r3, r3, #2
 8057976:	440b      	add	r3, r1
 8057978:	681b      	ldr	r3, [r3, #0]
 805797a:	1c59      	adds	r1, r3, #1
 805797c:	4807      	ldr	r0, [pc, #28]	; (805799c <vTaskPriorityDisinheritAfterTimeout+0x15c>)
 805797e:	4613      	mov	r3, r2
 8057980:	009b      	lsls	r3, r3, #2
 8057982:	4413      	add	r3, r2
 8057984:	009b      	lsls	r3, r3, #2
 8057986:	4403      	add	r3, r0
 8057988:	6019      	str	r1, [r3, #0]
 805798a:	bf00      	nop
 805798c:	3720      	adds	r7, #32
 805798e:	46bd      	mov	sp, r7
 8057990:	bd80      	pop	{r7, pc}
 8057992:	bf00      	nop
 8057994:	0805f1c7 	.word	0x0805f1c7
 8057998:	20000100 	.word	0x20000100
 805799c:	20000104 	.word	0x20000104
 80579a0:	0805c449 	.word	0x0805c449
 80579a4:	200002bc 	.word	0x200002bc

080579a8 <uxTaskGetTaskNumber>:
 80579a8:	b480      	push	{r7}
 80579aa:	b085      	sub	sp, #20
 80579ac:	af00      	add	r7, sp, #0
 80579ae:	6078      	str	r0, [r7, #4]
 80579b0:	687b      	ldr	r3, [r7, #4]
 80579b2:	2b00      	cmp	r3, #0
 80579b4:	d006      	beq.n	80579c4 <uxTaskGetTaskNumber+0x1c>
 80579b6:	687b      	ldr	r3, [r7, #4]
 80579b8:	60bb      	str	r3, [r7, #8]
 80579ba:	68bb      	ldr	r3, [r7, #8]
 80579bc:	f8d3 32d8 	ldr.w	r3, [r3, #728]	; 0x2d8
 80579c0:	60fb      	str	r3, [r7, #12]
 80579c2:	e001      	b.n	80579c8 <uxTaskGetTaskNumber+0x20>
 80579c4:	2300      	movs	r3, #0
 80579c6:	60fb      	str	r3, [r7, #12]
 80579c8:	68fb      	ldr	r3, [r7, #12]
 80579ca:	4618      	mov	r0, r3
 80579cc:	3714      	adds	r7, #20
 80579ce:	46bd      	mov	sp, r7
 80579d0:	bc80      	pop	{r7}
 80579d2:	4770      	bx	lr

080579d4 <vTaskSetTaskNumber>:
 80579d4:	b480      	push	{r7}
 80579d6:	b085      	sub	sp, #20
 80579d8:	af00      	add	r7, sp, #0
 80579da:	6078      	str	r0, [r7, #4]
 80579dc:	6039      	str	r1, [r7, #0]
 80579de:	687b      	ldr	r3, [r7, #4]
 80579e0:	2b00      	cmp	r3, #0
 80579e2:	d005      	beq.n	80579f0 <vTaskSetTaskNumber+0x1c>
 80579e4:	687b      	ldr	r3, [r7, #4]
 80579e6:	60fb      	str	r3, [r7, #12]
 80579e8:	68fb      	ldr	r3, [r7, #12]
 80579ea:	683a      	ldr	r2, [r7, #0]
 80579ec:	f8c3 22d8 	str.w	r2, [r3, #728]	; 0x2d8
 80579f0:	bf00      	nop
 80579f2:	3714      	adds	r7, #20
 80579f4:	46bd      	mov	sp, r7
 80579f6:	bc80      	pop	{r7}
 80579f8:	4770      	bx	lr

080579fa <pvTaskIncrementMutexHeldCount>:
 80579fa:	b480      	push	{r7}
 80579fc:	b083      	sub	sp, #12
 80579fe:	af00      	add	r7, sp, #0
 8057a00:	4b09      	ldr	r3, [pc, #36]	; (8057a28 <pvTaskIncrementMutexHeldCount+0x2e>)
 8057a02:	681b      	ldr	r3, [r3, #0]
 8057a04:	607b      	str	r3, [r7, #4]
 8057a06:	687b      	ldr	r3, [r7, #4]
 8057a08:	2b00      	cmp	r3, #0
 8057a0a:	d006      	beq.n	8057a1a <pvTaskIncrementMutexHeldCount+0x20>
 8057a0c:	687b      	ldr	r3, [r7, #4]
 8057a0e:	f8d3 32e0 	ldr.w	r3, [r3, #736]	; 0x2e0
 8057a12:	1c5a      	adds	r2, r3, #1
 8057a14:	687b      	ldr	r3, [r7, #4]
 8057a16:	f8c3 22e0 	str.w	r2, [r3, #736]	; 0x2e0
 8057a1a:	687b      	ldr	r3, [r7, #4]
 8057a1c:	4618      	mov	r0, r3
 8057a1e:	370c      	adds	r7, #12
 8057a20:	46bd      	mov	sp, r7
 8057a22:	bc80      	pop	{r7}
 8057a24:	4770      	bx	lr
 8057a26:	bf00      	nop
 8057a28:	20000100 	.word	0x20000100

08057a2c <vTaskInternalSetTimeOutState>:
 8057a2c:	b480      	push	{r7}
 8057a2e:	b083      	sub	sp, #12
 8057a30:	af00      	add	r7, sp, #0
 8057a32:	6078      	str	r0, [r7, #4]
 8057a34:	4b06      	ldr	r3, [pc, #24]	; (8057a50 <vTaskInternalSetTimeOutState+0x24>)
 8057a36:	681a      	ldr	r2, [r3, #0]
 8057a38:	687b      	ldr	r3, [r7, #4]
 8057a3a:	601a      	str	r2, [r3, #0]
 8057a3c:	4b05      	ldr	r3, [pc, #20]	; (8057a54 <vTaskInternalSetTimeOutState+0x28>)
 8057a3e:	681a      	ldr	r2, [r3, #0]
 8057a40:	687b      	ldr	r3, [r7, #4]
 8057a42:	605a      	str	r2, [r3, #4]
 8057a44:	bf00      	nop
 8057a46:	370c      	adds	r7, #12
 8057a48:	46bd      	mov	sp, r7
 8057a4a:	bc80      	pop	{r7}
 8057a4c:	4770      	bx	lr
 8057a4e:	bf00      	nop
 8057a50:	200002cc 	.word	0x200002cc
 8057a54:	200002b8 	.word	0x200002b8

08057a58 <xTaskGetMPUSettings>:
 8057a58:	b480      	push	{r7}
 8057a5a:	b085      	sub	sp, #20
 8057a5c:	af00      	add	r7, sp, #0
 8057a5e:	6078      	str	r0, [r7, #4]
 8057a60:	687b      	ldr	r3, [r7, #4]
 8057a62:	2b00      	cmp	r3, #0
 8057a64:	d102      	bne.n	8057a6c <xTaskGetMPUSettings+0x14>
 8057a66:	4b06      	ldr	r3, [pc, #24]	; (8057a80 <xTaskGetMPUSettings+0x28>)
 8057a68:	681b      	ldr	r3, [r3, #0]
 8057a6a:	e000      	b.n	8057a6e <xTaskGetMPUSettings+0x16>
 8057a6c:	687b      	ldr	r3, [r7, #4]
 8057a6e:	60fb      	str	r3, [r7, #12]
 8057a70:	68fb      	ldr	r3, [r7, #12]
 8057a72:	3304      	adds	r3, #4
 8057a74:	4618      	mov	r0, r3
 8057a76:	3714      	adds	r7, #20
 8057a78:	46bd      	mov	sp, r7
 8057a7a:	bc80      	pop	{r7}
 8057a7c:	4770      	bx	lr
 8057a7e:	bf00      	nop
 8057a80:	20000100 	.word	0x20000100

08057a84 <prvTaskIsTaskSuspended>:
 8057a84:	b580      	push	{r7, lr}
 8057a86:	b084      	sub	sp, #16
 8057a88:	af00      	add	r7, sp, #0
 8057a8a:	6078      	str	r0, [r7, #4]
 8057a8c:	2300      	movs	r3, #0
 8057a8e:	60fb      	str	r3, [r7, #12]
 8057a90:	687b      	ldr	r3, [r7, #4]
 8057a92:	60bb      	str	r3, [r7, #8]
 8057a94:	687b      	ldr	r3, [r7, #4]
 8057a96:	2b00      	cmp	r3, #0
 8057a98:	d102      	bne.n	8057aa0 <prvTaskIsTaskSuspended+0x1c>
 8057a9a:	4b0d      	ldr	r3, [pc, #52]	; (8057ad0 <prvTaskIsTaskSuspended+0x4c>)
 8057a9c:	4798      	blx	r3
 8057a9e:	e7fe      	b.n	8057a9e <prvTaskIsTaskSuspended+0x1a>
 8057aa0:	68bb      	ldr	r3, [r7, #8]
 8057aa2:	f8d3 32a4 	ldr.w	r3, [r3, #676]	; 0x2a4
 8057aa6:	4a0b      	ldr	r2, [pc, #44]	; (8057ad4 <prvTaskIsTaskSuspended+0x50>)
 8057aa8:	4293      	cmp	r3, r2
 8057aaa:	d10c      	bne.n	8057ac6 <prvTaskIsTaskSuspended+0x42>
 8057aac:	68bb      	ldr	r3, [r7, #8]
 8057aae:	f8d3 32b8 	ldr.w	r3, [r3, #696]	; 0x2b8
 8057ab2:	4a09      	ldr	r2, [pc, #36]	; (8057ad8 <prvTaskIsTaskSuspended+0x54>)
 8057ab4:	4293      	cmp	r3, r2
 8057ab6:	d006      	beq.n	8057ac6 <prvTaskIsTaskSuspended+0x42>
 8057ab8:	68bb      	ldr	r3, [r7, #8]
 8057aba:	f8d3 32b8 	ldr.w	r3, [r3, #696]	; 0x2b8
 8057abe:	2b00      	cmp	r3, #0
 8057ac0:	d101      	bne.n	8057ac6 <prvTaskIsTaskSuspended+0x42>
 8057ac2:	2301      	movs	r3, #1
 8057ac4:	60fb      	str	r3, [r7, #12]
 8057ac6:	68fb      	ldr	r3, [r7, #12]
 8057ac8:	4618      	mov	r0, r3
 8057aca:	3710      	adds	r7, #16
 8057acc:	46bd      	mov	sp, r7
 8057ace:	bd80      	pop	{r7, pc}
 8057ad0:	0805f1c7 	.word	0x0805f1c7
 8057ad4:	200002a0 	.word	0x200002a0
 8057ad8:	20000274 	.word	0x20000274

08057adc <prvInitialiseTaskLists>:
 8057adc:	b580      	push	{r7, lr}
 8057ade:	b082      	sub	sp, #8
 8057ae0:	af00      	add	r7, sp, #0
 8057ae2:	2300      	movs	r3, #0
 8057ae4:	607b      	str	r3, [r7, #4]
 8057ae6:	e00c      	b.n	8057b02 <prvInitialiseTaskLists+0x26>
 8057ae8:	687a      	ldr	r2, [r7, #4]
 8057aea:	4613      	mov	r3, r2
 8057aec:	009b      	lsls	r3, r3, #2
 8057aee:	4413      	add	r3, r2
 8057af0:	009b      	lsls	r3, r3, #2
 8057af2:	4a12      	ldr	r2, [pc, #72]	; (8057b3c <prvInitialiseTaskLists+0x60>)
 8057af4:	4413      	add	r3, r2
 8057af6:	4618      	mov	r0, r3
 8057af8:	4b11      	ldr	r3, [pc, #68]	; (8057b40 <prvInitialiseTaskLists+0x64>)
 8057afa:	4798      	blx	r3
 8057afc:	687b      	ldr	r3, [r7, #4]
 8057afe:	3301      	adds	r3, #1
 8057b00:	607b      	str	r3, [r7, #4]
 8057b02:	687b      	ldr	r3, [r7, #4]
 8057b04:	2b0f      	cmp	r3, #15
 8057b06:	d9ef      	bls.n	8057ae8 <prvInitialiseTaskLists+0xc>
 8057b08:	480e      	ldr	r0, [pc, #56]	; (8057b44 <prvInitialiseTaskLists+0x68>)
 8057b0a:	4b0d      	ldr	r3, [pc, #52]	; (8057b40 <prvInitialiseTaskLists+0x64>)
 8057b0c:	4798      	blx	r3
 8057b0e:	480e      	ldr	r0, [pc, #56]	; (8057b48 <prvInitialiseTaskLists+0x6c>)
 8057b10:	4b0b      	ldr	r3, [pc, #44]	; (8057b40 <prvInitialiseTaskLists+0x64>)
 8057b12:	4798      	blx	r3
 8057b14:	480d      	ldr	r0, [pc, #52]	; (8057b4c <prvInitialiseTaskLists+0x70>)
 8057b16:	4b0a      	ldr	r3, [pc, #40]	; (8057b40 <prvInitialiseTaskLists+0x64>)
 8057b18:	4798      	blx	r3
 8057b1a:	480d      	ldr	r0, [pc, #52]	; (8057b50 <prvInitialiseTaskLists+0x74>)
 8057b1c:	4b08      	ldr	r3, [pc, #32]	; (8057b40 <prvInitialiseTaskLists+0x64>)
 8057b1e:	4798      	blx	r3
 8057b20:	480c      	ldr	r0, [pc, #48]	; (8057b54 <prvInitialiseTaskLists+0x78>)
 8057b22:	4b07      	ldr	r3, [pc, #28]	; (8057b40 <prvInitialiseTaskLists+0x64>)
 8057b24:	4798      	blx	r3
 8057b26:	4b0c      	ldr	r3, [pc, #48]	; (8057b58 <prvInitialiseTaskLists+0x7c>)
 8057b28:	4a06      	ldr	r2, [pc, #24]	; (8057b44 <prvInitialiseTaskLists+0x68>)
 8057b2a:	601a      	str	r2, [r3, #0]
 8057b2c:	4b0b      	ldr	r3, [pc, #44]	; (8057b5c <prvInitialiseTaskLists+0x80>)
 8057b2e:	4a06      	ldr	r2, [pc, #24]	; (8057b48 <prvInitialiseTaskLists+0x6c>)
 8057b30:	601a      	str	r2, [r3, #0]
 8057b32:	bf00      	nop
 8057b34:	3708      	adds	r7, #8
 8057b36:	46bd      	mov	sp, r7
 8057b38:	bd80      	pop	{r7, pc}
 8057b3a:	bf00      	nop
 8057b3c:	20000104 	.word	0x20000104
 8057b40:	0805c33d 	.word	0x0805c33d
 8057b44:	20000244 	.word	0x20000244
 8057b48:	20000258 	.word	0x20000258
 8057b4c:	20000274 	.word	0x20000274
 8057b50:	20000288 	.word	0x20000288
 8057b54:	200002a0 	.word	0x200002a0
 8057b58:	2000026c 	.word	0x2000026c
 8057b5c:	20000270 	.word	0x20000270

08057b60 <prvIdleTask>:
 8057b60:	b580      	push	{r7, lr}
 8057b62:	b082      	sub	sp, #8
 8057b64:	af00      	add	r7, sp, #0
 8057b66:	6078      	str	r0, [r7, #4]
 8057b68:	f000 f834 	bl	8057bd4 <prvCheckTasksWaitingTermination>
 8057b6c:	4b02      	ldr	r3, [pc, #8]	; (8057b78 <prvIdleTask+0x18>)
 8057b6e:	681b      	ldr	r3, [r3, #0]
 8057b70:	2b01      	cmp	r3, #1
 8057b72:	d9f9      	bls.n	8057b68 <prvIdleTask+0x8>
 8057b74:	df07      	svc	7
 8057b76:	e7f7      	b.n	8057b68 <prvIdleTask+0x8>
 8057b78:	20000104 	.word	0x20000104

08057b7c <prvDeleteTCB>:
 8057b7c:	b580      	push	{r7, lr}
 8057b7e:	b082      	sub	sp, #8
 8057b80:	af00      	add	r7, sp, #0
 8057b82:	6078      	str	r0, [r7, #4]
 8057b84:	687b      	ldr	r3, [r7, #4]
 8057b86:	f893 32e9 	ldrb.w	r3, [r3, #745]	; 0x2e9
 8057b8a:	2b00      	cmp	r3, #0
 8057b8c:	d109      	bne.n	8057ba2 <prvDeleteTCB+0x26>
 8057b8e:	687b      	ldr	r3, [r7, #4]
 8057b90:	f8d3 32c0 	ldr.w	r3, [r3, #704]	; 0x2c0
 8057b94:	4618      	mov	r0, r3
 8057b96:	4b0d      	ldr	r3, [pc, #52]	; (8057bcc <prvDeleteTCB+0x50>)
 8057b98:	4798      	blx	r3
 8057b9a:	6878      	ldr	r0, [r7, #4]
 8057b9c:	4b0b      	ldr	r3, [pc, #44]	; (8057bcc <prvDeleteTCB+0x50>)
 8057b9e:	4798      	blx	r3
 8057ba0:	e010      	b.n	8057bc4 <prvDeleteTCB+0x48>
 8057ba2:	687b      	ldr	r3, [r7, #4]
 8057ba4:	f893 32e9 	ldrb.w	r3, [r3, #745]	; 0x2e9
 8057ba8:	2b01      	cmp	r3, #1
 8057baa:	d103      	bne.n	8057bb4 <prvDeleteTCB+0x38>
 8057bac:	6878      	ldr	r0, [r7, #4]
 8057bae:	4b07      	ldr	r3, [pc, #28]	; (8057bcc <prvDeleteTCB+0x50>)
 8057bb0:	4798      	blx	r3
 8057bb2:	e007      	b.n	8057bc4 <prvDeleteTCB+0x48>
 8057bb4:	687b      	ldr	r3, [r7, #4]
 8057bb6:	f893 32e9 	ldrb.w	r3, [r3, #745]	; 0x2e9
 8057bba:	2b02      	cmp	r3, #2
 8057bbc:	d002      	beq.n	8057bc4 <prvDeleteTCB+0x48>
 8057bbe:	4b04      	ldr	r3, [pc, #16]	; (8057bd0 <prvDeleteTCB+0x54>)
 8057bc0:	4798      	blx	r3
 8057bc2:	e7fe      	b.n	8057bc2 <prvDeleteTCB+0x46>
 8057bc4:	bf00      	nop
 8057bc6:	3708      	adds	r7, #8
 8057bc8:	46bd      	mov	sp, r7
 8057bca:	bd80      	pop	{r7, pc}
 8057bcc:	0805baa1 	.word	0x0805baa1
 8057bd0:	0805f1c7 	.word	0x0805f1c7

08057bd4 <prvCheckTasksWaitingTermination>:
 8057bd4:	b580      	push	{r7, lr}
 8057bd6:	b082      	sub	sp, #8
 8057bd8:	af00      	add	r7, sp, #0
 8057bda:	e01a      	b.n	8057c12 <prvCheckTasksWaitingTermination+0x3e>
 8057bdc:	4b11      	ldr	r3, [pc, #68]	; (8057c24 <prvCheckTasksWaitingTermination+0x50>)
 8057bde:	4798      	blx	r3
 8057be0:	4b11      	ldr	r3, [pc, #68]	; (8057c28 <prvCheckTasksWaitingTermination+0x54>)
 8057be2:	68db      	ldr	r3, [r3, #12]
 8057be4:	68db      	ldr	r3, [r3, #12]
 8057be6:	607b      	str	r3, [r7, #4]
 8057be8:	687b      	ldr	r3, [r7, #4]
 8057bea:	f503 7325 	add.w	r3, r3, #660	; 0x294
 8057bee:	4618      	mov	r0, r3
 8057bf0:	4b0e      	ldr	r3, [pc, #56]	; (8057c2c <prvCheckTasksWaitingTermination+0x58>)
 8057bf2:	4798      	blx	r3
 8057bf4:	4b0e      	ldr	r3, [pc, #56]	; (8057c30 <prvCheckTasksWaitingTermination+0x5c>)
 8057bf6:	681b      	ldr	r3, [r3, #0]
 8057bf8:	3b01      	subs	r3, #1
 8057bfa:	4a0d      	ldr	r2, [pc, #52]	; (8057c30 <prvCheckTasksWaitingTermination+0x5c>)
 8057bfc:	6013      	str	r3, [r2, #0]
 8057bfe:	4b0d      	ldr	r3, [pc, #52]	; (8057c34 <prvCheckTasksWaitingTermination+0x60>)
 8057c00:	681b      	ldr	r3, [r3, #0]
 8057c02:	3b01      	subs	r3, #1
 8057c04:	4a0b      	ldr	r2, [pc, #44]	; (8057c34 <prvCheckTasksWaitingTermination+0x60>)
 8057c06:	6013      	str	r3, [r2, #0]
 8057c08:	4b0b      	ldr	r3, [pc, #44]	; (8057c38 <prvCheckTasksWaitingTermination+0x64>)
 8057c0a:	4798      	blx	r3
 8057c0c:	6878      	ldr	r0, [r7, #4]
 8057c0e:	f7ff ffb5 	bl	8057b7c <prvDeleteTCB>
 8057c12:	4b08      	ldr	r3, [pc, #32]	; (8057c34 <prvCheckTasksWaitingTermination+0x60>)
 8057c14:	681b      	ldr	r3, [r3, #0]
 8057c16:	2b00      	cmp	r3, #0
 8057c18:	d1e0      	bne.n	8057bdc <prvCheckTasksWaitingTermination+0x8>
 8057c1a:	bf00      	nop
 8057c1c:	bf00      	nop
 8057c1e:	3708      	adds	r7, #8
 8057c20:	46bd      	mov	sp, r7
 8057c22:	bd80      	pop	{r7, pc}
 8057c24:	0805ecc5 	.word	0x0805ecc5
 8057c28:	20000288 	.word	0x20000288
 8057c2c:	0805c449 	.word	0x0805c449
 8057c30:	200002b4 	.word	0x200002b4
 8057c34:	2000029c 	.word	0x2000029c
 8057c38:	0805eced 	.word	0x0805eced

08057c3c <prvAddCurrentTaskToDelayedList>:
 8057c3c:	b580      	push	{r7, lr}
 8057c3e:	b086      	sub	sp, #24
 8057c40:	af00      	add	r7, sp, #0
 8057c42:	6078      	str	r0, [r7, #4]
 8057c44:	6039      	str	r1, [r7, #0]
 8057c46:	4b33      	ldr	r3, [pc, #204]	; (8057d14 <prvAddCurrentTaskToDelayedList+0xd8>)
 8057c48:	681b      	ldr	r3, [r3, #0]
 8057c4a:	617b      	str	r3, [r7, #20]
 8057c4c:	4b32      	ldr	r3, [pc, #200]	; (8057d18 <prvAddCurrentTaskToDelayedList+0xdc>)
 8057c4e:	681b      	ldr	r3, [r3, #0]
 8057c50:	f503 7325 	add.w	r3, r3, #660	; 0x294
 8057c54:	4618      	mov	r0, r3
 8057c56:	4b31      	ldr	r3, [pc, #196]	; (8057d1c <prvAddCurrentTaskToDelayedList+0xe0>)
 8057c58:	4798      	blx	r3
 8057c5a:	687b      	ldr	r3, [r7, #4]
 8057c5c:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 8057c60:	d129      	bne.n	8057cb6 <prvAddCurrentTaskToDelayedList+0x7a>
 8057c62:	683b      	ldr	r3, [r7, #0]
 8057c64:	2b00      	cmp	r3, #0
 8057c66:	d026      	beq.n	8057cb6 <prvAddCurrentTaskToDelayedList+0x7a>
 8057c68:	4b2d      	ldr	r3, [pc, #180]	; (8057d20 <prvAddCurrentTaskToDelayedList+0xe4>)
 8057c6a:	685b      	ldr	r3, [r3, #4]
 8057c6c:	613b      	str	r3, [r7, #16]
 8057c6e:	4b2a      	ldr	r3, [pc, #168]	; (8057d18 <prvAddCurrentTaskToDelayedList+0xdc>)
 8057c70:	681b      	ldr	r3, [r3, #0]
 8057c72:	693a      	ldr	r2, [r7, #16]
 8057c74:	f8c3 2298 	str.w	r2, [r3, #664]	; 0x298
 8057c78:	4b27      	ldr	r3, [pc, #156]	; (8057d18 <prvAddCurrentTaskToDelayedList+0xdc>)
 8057c7a:	681b      	ldr	r3, [r3, #0]
 8057c7c:	693a      	ldr	r2, [r7, #16]
 8057c7e:	6892      	ldr	r2, [r2, #8]
 8057c80:	f8c3 229c 	str.w	r2, [r3, #668]	; 0x29c
 8057c84:	4b24      	ldr	r3, [pc, #144]	; (8057d18 <prvAddCurrentTaskToDelayedList+0xdc>)
 8057c86:	681a      	ldr	r2, [r3, #0]
 8057c88:	693b      	ldr	r3, [r7, #16]
 8057c8a:	689b      	ldr	r3, [r3, #8]
 8057c8c:	f502 7225 	add.w	r2, r2, #660	; 0x294
 8057c90:	605a      	str	r2, [r3, #4]
 8057c92:	4b21      	ldr	r3, [pc, #132]	; (8057d18 <prvAddCurrentTaskToDelayedList+0xdc>)
 8057c94:	681b      	ldr	r3, [r3, #0]
 8057c96:	f503 7225 	add.w	r2, r3, #660	; 0x294
 8057c9a:	693b      	ldr	r3, [r7, #16]
 8057c9c:	609a      	str	r2, [r3, #8]
 8057c9e:	4b1e      	ldr	r3, [pc, #120]	; (8057d18 <prvAddCurrentTaskToDelayedList+0xdc>)
 8057ca0:	681b      	ldr	r3, [r3, #0]
 8057ca2:	4a1f      	ldr	r2, [pc, #124]	; (8057d20 <prvAddCurrentTaskToDelayedList+0xe4>)
 8057ca4:	f8c3 22a4 	str.w	r2, [r3, #676]	; 0x2a4
 8057ca8:	4b1d      	ldr	r3, [pc, #116]	; (8057d20 <prvAddCurrentTaskToDelayedList+0xe4>)
 8057caa:	681b      	ldr	r3, [r3, #0]
 8057cac:	3301      	adds	r3, #1
 8057cae:	4a1c      	ldr	r2, [pc, #112]	; (8057d20 <prvAddCurrentTaskToDelayedList+0xe4>)
 8057cb0:	6013      	str	r3, [r2, #0]
 8057cb2:	bf00      	nop
 8057cb4:	e029      	b.n	8057d0a <prvAddCurrentTaskToDelayedList+0xce>
 8057cb6:	697a      	ldr	r2, [r7, #20]
 8057cb8:	687b      	ldr	r3, [r7, #4]
 8057cba:	4413      	add	r3, r2
 8057cbc:	60fb      	str	r3, [r7, #12]
 8057cbe:	4b16      	ldr	r3, [pc, #88]	; (8057d18 <prvAddCurrentTaskToDelayedList+0xdc>)
 8057cc0:	681b      	ldr	r3, [r3, #0]
 8057cc2:	68fa      	ldr	r2, [r7, #12]
 8057cc4:	f8c3 2294 	str.w	r2, [r3, #660]	; 0x294
 8057cc8:	68fa      	ldr	r2, [r7, #12]
 8057cca:	697b      	ldr	r3, [r7, #20]
 8057ccc:	429a      	cmp	r2, r3
 8057cce:	d20a      	bcs.n	8057ce6 <prvAddCurrentTaskToDelayedList+0xaa>
 8057cd0:	4b14      	ldr	r3, [pc, #80]	; (8057d24 <prvAddCurrentTaskToDelayedList+0xe8>)
 8057cd2:	681a      	ldr	r2, [r3, #0]
 8057cd4:	4b10      	ldr	r3, [pc, #64]	; (8057d18 <prvAddCurrentTaskToDelayedList+0xdc>)
 8057cd6:	681b      	ldr	r3, [r3, #0]
 8057cd8:	f503 7325 	add.w	r3, r3, #660	; 0x294
 8057cdc:	4619      	mov	r1, r3
 8057cde:	4610      	mov	r0, r2
 8057ce0:	4b11      	ldr	r3, [pc, #68]	; (8057d28 <prvAddCurrentTaskToDelayedList+0xec>)
 8057ce2:	4798      	blx	r3
 8057ce4:	e011      	b.n	8057d0a <prvAddCurrentTaskToDelayedList+0xce>
 8057ce6:	4b11      	ldr	r3, [pc, #68]	; (8057d2c <prvAddCurrentTaskToDelayedList+0xf0>)
 8057ce8:	681a      	ldr	r2, [r3, #0]
 8057cea:	4b0b      	ldr	r3, [pc, #44]	; (8057d18 <prvAddCurrentTaskToDelayedList+0xdc>)
 8057cec:	681b      	ldr	r3, [r3, #0]
 8057cee:	f503 7325 	add.w	r3, r3, #660	; 0x294
 8057cf2:	4619      	mov	r1, r3
 8057cf4:	4610      	mov	r0, r2
 8057cf6:	4b0c      	ldr	r3, [pc, #48]	; (8057d28 <prvAddCurrentTaskToDelayedList+0xec>)
 8057cf8:	4798      	blx	r3
 8057cfa:	4b0d      	ldr	r3, [pc, #52]	; (8057d30 <prvAddCurrentTaskToDelayedList+0xf4>)
 8057cfc:	681b      	ldr	r3, [r3, #0]
 8057cfe:	68fa      	ldr	r2, [r7, #12]
 8057d00:	429a      	cmp	r2, r3
 8057d02:	d202      	bcs.n	8057d0a <prvAddCurrentTaskToDelayedList+0xce>
 8057d04:	4a0a      	ldr	r2, [pc, #40]	; (8057d30 <prvAddCurrentTaskToDelayedList+0xf4>)
 8057d06:	68fb      	ldr	r3, [r7, #12]
 8057d08:	6013      	str	r3, [r2, #0]
 8057d0a:	bf00      	nop
 8057d0c:	3718      	adds	r7, #24
 8057d0e:	46bd      	mov	sp, r7
 8057d10:	bd80      	pop	{r7, pc}
 8057d12:	bf00      	nop
 8057d14:	200002b8 	.word	0x200002b8
 8057d18:	20000100 	.word	0x20000100
 8057d1c:	0805c449 	.word	0x0805c449
 8057d20:	200002a0 	.word	0x200002a0
 8057d24:	20000270 	.word	0x20000270
 8057d28:	0805c393 	.word	0x0805c393
 8057d2c:	2000026c 	.word	0x2000026c
 8057d30:	200002d4 	.word	0x200002d4

08057d34 <prvListTasksWithinSingleList>:
 8057d34:	b580      	push	{r7, lr}
 8057d36:	b08a      	sub	sp, #40	; 0x28
 8057d38:	af00      	add	r7, sp, #0
 8057d3a:	60f8      	str	r0, [r7, #12]
 8057d3c:	60b9      	str	r1, [r7, #8]
 8057d3e:	4613      	mov	r3, r2
 8057d40:	71fb      	strb	r3, [r7, #7]
 8057d42:	2300      	movs	r3, #0
 8057d44:	627b      	str	r3, [r7, #36]	; 0x24
 8057d46:	68bb      	ldr	r3, [r7, #8]
 8057d48:	681b      	ldr	r3, [r3, #0]
 8057d4a:	2b00      	cmp	r3, #0
 8057d4c:	d03d      	beq.n	8057dca <prvListTasksWithinSingleList+0x96>
 8057d4e:	68bb      	ldr	r3, [r7, #8]
 8057d50:	623b      	str	r3, [r7, #32]
 8057d52:	6a3b      	ldr	r3, [r7, #32]
 8057d54:	685b      	ldr	r3, [r3, #4]
 8057d56:	685a      	ldr	r2, [r3, #4]
 8057d58:	6a3b      	ldr	r3, [r7, #32]
 8057d5a:	605a      	str	r2, [r3, #4]
 8057d5c:	6a3b      	ldr	r3, [r7, #32]
 8057d5e:	685a      	ldr	r2, [r3, #4]
 8057d60:	6a3b      	ldr	r3, [r7, #32]
 8057d62:	3308      	adds	r3, #8
 8057d64:	429a      	cmp	r2, r3
 8057d66:	d103      	bne.n	8057d70 <prvListTasksWithinSingleList+0x3c>
 8057d68:	6a3b      	ldr	r3, [r7, #32]
 8057d6a:	68da      	ldr	r2, [r3, #12]
 8057d6c:	6a3b      	ldr	r3, [r7, #32]
 8057d6e:	605a      	str	r2, [r3, #4]
 8057d70:	6a3b      	ldr	r3, [r7, #32]
 8057d72:	685b      	ldr	r3, [r3, #4]
 8057d74:	68db      	ldr	r3, [r3, #12]
 8057d76:	61fb      	str	r3, [r7, #28]
 8057d78:	68bb      	ldr	r3, [r7, #8]
 8057d7a:	61bb      	str	r3, [r7, #24]
 8057d7c:	69bb      	ldr	r3, [r7, #24]
 8057d7e:	685b      	ldr	r3, [r3, #4]
 8057d80:	685a      	ldr	r2, [r3, #4]
 8057d82:	69bb      	ldr	r3, [r7, #24]
 8057d84:	605a      	str	r2, [r3, #4]
 8057d86:	69bb      	ldr	r3, [r7, #24]
 8057d88:	685a      	ldr	r2, [r3, #4]
 8057d8a:	69bb      	ldr	r3, [r7, #24]
 8057d8c:	3308      	adds	r3, #8
 8057d8e:	429a      	cmp	r2, r3
 8057d90:	d103      	bne.n	8057d9a <prvListTasksWithinSingleList+0x66>
 8057d92:	69bb      	ldr	r3, [r7, #24]
 8057d94:	68da      	ldr	r2, [r3, #12]
 8057d96:	69bb      	ldr	r3, [r7, #24]
 8057d98:	605a      	str	r2, [r3, #4]
 8057d9a:	69bb      	ldr	r3, [r7, #24]
 8057d9c:	685b      	ldr	r3, [r3, #4]
 8057d9e:	68db      	ldr	r3, [r3, #12]
 8057da0:	617b      	str	r3, [r7, #20]
 8057da2:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 8057da4:	4613      	mov	r3, r2
 8057da6:	00db      	lsls	r3, r3, #3
 8057da8:	4413      	add	r3, r2
 8057daa:	009b      	lsls	r3, r3, #2
 8057dac:	461a      	mov	r2, r3
 8057dae:	68fb      	ldr	r3, [r7, #12]
 8057db0:	1899      	adds	r1, r3, r2
 8057db2:	79fb      	ldrb	r3, [r7, #7]
 8057db4:	2201      	movs	r2, #1
 8057db6:	6978      	ldr	r0, [r7, #20]
 8057db8:	f7fd fca4 	bl	8055704 <vTaskGetInfo>
 8057dbc:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8057dbe:	3301      	adds	r3, #1
 8057dc0:	627b      	str	r3, [r7, #36]	; 0x24
 8057dc2:	697a      	ldr	r2, [r7, #20]
 8057dc4:	69fb      	ldr	r3, [r7, #28]
 8057dc6:	429a      	cmp	r2, r3
 8057dc8:	d1d6      	bne.n	8057d78 <prvListTasksWithinSingleList+0x44>
 8057dca:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8057dcc:	4618      	mov	r0, r3
 8057dce:	3728      	adds	r7, #40	; 0x28
 8057dd0:	46bd      	mov	sp, r7
 8057dd2:	bd80      	pop	{r7, pc}

08057dd4 <prvTaskCheckFreeStackSpace>:
 8057dd4:	b480      	push	{r7}
 8057dd6:	b085      	sub	sp, #20
 8057dd8:	af00      	add	r7, sp, #0
 8057dda:	6078      	str	r0, [r7, #4]
 8057ddc:	2300      	movs	r3, #0
 8057dde:	60fb      	str	r3, [r7, #12]
 8057de0:	e005      	b.n	8057dee <prvTaskCheckFreeStackSpace+0x1a>
 8057de2:	687b      	ldr	r3, [r7, #4]
 8057de4:	3301      	adds	r3, #1
 8057de6:	607b      	str	r3, [r7, #4]
 8057de8:	68fb      	ldr	r3, [r7, #12]
 8057dea:	3301      	adds	r3, #1
 8057dec:	60fb      	str	r3, [r7, #12]
 8057dee:	687b      	ldr	r3, [r7, #4]
 8057df0:	781b      	ldrb	r3, [r3, #0]
 8057df2:	2ba5      	cmp	r3, #165	; 0xa5
 8057df4:	d0f5      	beq.n	8057de2 <prvTaskCheckFreeStackSpace+0xe>
 8057df6:	68fb      	ldr	r3, [r7, #12]
 8057df8:	089b      	lsrs	r3, r3, #2
 8057dfa:	60fb      	str	r3, [r7, #12]
 8057dfc:	68fb      	ldr	r3, [r7, #12]
 8057dfe:	b29b      	uxth	r3, r3
 8057e00:	4618      	mov	r0, r3
 8057e02:	3714      	adds	r7, #20
 8057e04:	46bd      	mov	sp, r7
 8057e06:	bc80      	pop	{r7}
 8057e08:	4770      	bx	lr

08057e0a <prvResetNextTaskUnblockTime>:
 8057e0a:	b480      	push	{r7}
 8057e0c:	af00      	add	r7, sp, #0
 8057e0e:	4b0a      	ldr	r3, [pc, #40]	; (8057e38 <prvResetNextTaskUnblockTime+0x2e>)
 8057e10:	681b      	ldr	r3, [r3, #0]
 8057e12:	681b      	ldr	r3, [r3, #0]
 8057e14:	2b00      	cmp	r3, #0
 8057e16:	d104      	bne.n	8057e22 <prvResetNextTaskUnblockTime+0x18>
 8057e18:	4b08      	ldr	r3, [pc, #32]	; (8057e3c <prvResetNextTaskUnblockTime+0x32>)
 8057e1a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8057e1e:	601a      	str	r2, [r3, #0]
 8057e20:	e005      	b.n	8057e2e <prvResetNextTaskUnblockTime+0x24>
 8057e22:	4b05      	ldr	r3, [pc, #20]	; (8057e38 <prvResetNextTaskUnblockTime+0x2e>)
 8057e24:	681b      	ldr	r3, [r3, #0]
 8057e26:	68db      	ldr	r3, [r3, #12]
 8057e28:	681b      	ldr	r3, [r3, #0]
 8057e2a:	4a04      	ldr	r2, [pc, #16]	; (8057e3c <prvResetNextTaskUnblockTime+0x32>)
 8057e2c:	6013      	str	r3, [r2, #0]
 8057e2e:	bf00      	nop
 8057e30:	46bd      	mov	sp, r7
 8057e32:	bc80      	pop	{r7}
 8057e34:	4770      	bx	lr
 8057e36:	bf00      	nop
 8057e38:	2000026c 	.word	0x2000026c
 8057e3c:	200002d4 	.word	0x200002d4

08057e40 <prvInitialiseNewTask>:
 8057e40:	b590      	push	{r4, r7, lr}
 8057e42:	b08b      	sub	sp, #44	; 0x2c
 8057e44:	af02      	add	r7, sp, #8
 8057e46:	60f8      	str	r0, [r7, #12]
 8057e48:	60b9      	str	r1, [r7, #8]
 8057e4a:	607a      	str	r2, [r7, #4]
 8057e4c:	603b      	str	r3, [r7, #0]
 8057e4e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8057e50:	2b00      	cmp	r3, #0
 8057e52:	da02      	bge.n	8057e5a <prvInitialiseNewTask+0x1a>
 8057e54:	2301      	movs	r3, #1
 8057e56:	61bb      	str	r3, [r7, #24]
 8057e58:	e001      	b.n	8057e5e <prvInitialiseNewTask+0x1e>
 8057e5a:	2300      	movs	r3, #0
 8057e5c:	61bb      	str	r3, [r7, #24]
 8057e5e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8057e60:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
 8057e64:	633b      	str	r3, [r7, #48]	; 0x30
 8057e66:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8057e68:	f8d3 02c0 	ldr.w	r0, [r3, #704]	; 0x2c0
 8057e6c:	687b      	ldr	r3, [r7, #4]
 8057e6e:	009b      	lsls	r3, r3, #2
 8057e70:	461a      	mov	r2, r3
 8057e72:	21a5      	movs	r1, #165	; 0xa5
 8057e74:	4b45      	ldr	r3, [pc, #276]	; (8057f8c <prvInitialiseNewTask+0x14c>)
 8057e76:	4798      	blx	r3
 8057e78:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8057e7a:	f8d3 22c0 	ldr.w	r2, [r3, #704]	; 0x2c0
 8057e7e:	687b      	ldr	r3, [r7, #4]
 8057e80:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8057e84:	3b01      	subs	r3, #1
 8057e86:	009b      	lsls	r3, r3, #2
 8057e88:	4413      	add	r3, r2
 8057e8a:	617b      	str	r3, [r7, #20]
 8057e8c:	697b      	ldr	r3, [r7, #20]
 8057e8e:	f023 0307 	bic.w	r3, r3, #7
 8057e92:	617b      	str	r3, [r7, #20]
 8057e94:	697b      	ldr	r3, [r7, #20]
 8057e96:	f003 0307 	and.w	r3, r3, #7
 8057e9a:	2b00      	cmp	r3, #0
 8057e9c:	d002      	beq.n	8057ea4 <prvInitialiseNewTask+0x64>
 8057e9e:	4b3c      	ldr	r3, [pc, #240]	; (8057f90 <prvInitialiseNewTask+0x150>)
 8057ea0:	4798      	blx	r3
 8057ea2:	e7fe      	b.n	8057ea2 <prvInitialiseNewTask+0x62>
 8057ea4:	68bb      	ldr	r3, [r7, #8]
 8057ea6:	2b00      	cmp	r3, #0
 8057ea8:	d01f      	beq.n	8057eea <prvInitialiseNewTask+0xaa>
 8057eaa:	2300      	movs	r3, #0
 8057eac:	61fb      	str	r3, [r7, #28]
 8057eae:	e013      	b.n	8057ed8 <prvInitialiseNewTask+0x98>
 8057eb0:	68ba      	ldr	r2, [r7, #8]
 8057eb2:	69fb      	ldr	r3, [r7, #28]
 8057eb4:	4413      	add	r3, r2
 8057eb6:	7819      	ldrb	r1, [r3, #0]
 8057eb8:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8057eba:	69fb      	ldr	r3, [r7, #28]
 8057ebc:	4413      	add	r3, r2
 8057ebe:	f503 7331 	add.w	r3, r3, #708	; 0x2c4
 8057ec2:	460a      	mov	r2, r1
 8057ec4:	701a      	strb	r2, [r3, #0]
 8057ec6:	68ba      	ldr	r2, [r7, #8]
 8057ec8:	69fb      	ldr	r3, [r7, #28]
 8057eca:	4413      	add	r3, r2
 8057ecc:	781b      	ldrb	r3, [r3, #0]
 8057ece:	2b00      	cmp	r3, #0
 8057ed0:	d006      	beq.n	8057ee0 <prvInitialiseNewTask+0xa0>
 8057ed2:	69fb      	ldr	r3, [r7, #28]
 8057ed4:	3301      	adds	r3, #1
 8057ed6:	61fb      	str	r3, [r7, #28]
 8057ed8:	69fb      	ldr	r3, [r7, #28]
 8057eda:	2b0f      	cmp	r3, #15
 8057edc:	d9e8      	bls.n	8057eb0 <prvInitialiseNewTask+0x70>
 8057ede:	e000      	b.n	8057ee2 <prvInitialiseNewTask+0xa2>
 8057ee0:	bf00      	nop
 8057ee2:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8057ee4:	2200      	movs	r2, #0
 8057ee6:	f883 22d3 	strb.w	r2, [r3, #723]	; 0x2d3
 8057eea:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8057eec:	2b0f      	cmp	r3, #15
 8057eee:	d902      	bls.n	8057ef6 <prvInitialiseNewTask+0xb6>
 8057ef0:	4b27      	ldr	r3, [pc, #156]	; (8057f90 <prvInitialiseNewTask+0x150>)
 8057ef2:	4798      	blx	r3
 8057ef4:	e7fe      	b.n	8057ef4 <prvInitialiseNewTask+0xb4>
 8057ef6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8057ef8:	2b0f      	cmp	r3, #15
 8057efa:	d901      	bls.n	8057f00 <prvInitialiseNewTask+0xc0>
 8057efc:	230f      	movs	r3, #15
 8057efe:	633b      	str	r3, [r7, #48]	; 0x30
 8057f00:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8057f02:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 8057f04:	f8c3 22bc 	str.w	r2, [r3, #700]	; 0x2bc
 8057f08:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8057f0a:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 8057f0c:	f8c3 22dc 	str.w	r2, [r3, #732]	; 0x2dc
 8057f10:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8057f12:	f503 7325 	add.w	r3, r3, #660	; 0x294
 8057f16:	4618      	mov	r0, r3
 8057f18:	4b1e      	ldr	r3, [pc, #120]	; (8057f94 <prvInitialiseNewTask+0x154>)
 8057f1a:	4798      	blx	r3
 8057f1c:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8057f1e:	f503 732a 	add.w	r3, r3, #680	; 0x2a8
 8057f22:	4618      	mov	r0, r3
 8057f24:	4b1b      	ldr	r3, [pc, #108]	; (8057f94 <prvInitialiseNewTask+0x154>)
 8057f26:	4798      	blx	r3
 8057f28:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8057f2a:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8057f2c:	f8c3 22a0 	str.w	r2, [r3, #672]	; 0x2a0
 8057f30:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8057f32:	f1c3 0210 	rsb	r2, r3, #16
 8057f36:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8057f38:	f8c3 22a8 	str.w	r2, [r3, #680]	; 0x2a8
 8057f3c:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8057f3e:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8057f40:	f8c3 22b4 	str.w	r2, [r3, #692]	; 0x2b4
 8057f44:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8057f46:	1d18      	adds	r0, r3, #4
 8057f48:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8057f4a:	f8d3 22c0 	ldr.w	r2, [r3, #704]	; 0x2c0
 8057f4e:	687b      	ldr	r3, [r7, #4]
 8057f50:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
 8057f52:	4c11      	ldr	r4, [pc, #68]	; (8057f98 <prvInitialiseNewTask+0x158>)
 8057f54:	47a0      	blx	r4
 8057f56:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8057f58:	f8d3 12c0 	ldr.w	r1, [r3, #704]	; 0x2c0
 8057f5c:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8057f5e:	3304      	adds	r3, #4
 8057f60:	9301      	str	r3, [sp, #4]
 8057f62:	69bb      	ldr	r3, [r7, #24]
 8057f64:	9300      	str	r3, [sp, #0]
 8057f66:	683b      	ldr	r3, [r7, #0]
 8057f68:	68fa      	ldr	r2, [r7, #12]
 8057f6a:	6978      	ldr	r0, [r7, #20]
 8057f6c:	4c0b      	ldr	r4, [pc, #44]	; (8057f9c <prvInitialiseNewTask+0x15c>)
 8057f6e:	47a0      	blx	r4
 8057f70:	4602      	mov	r2, r0
 8057f72:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8057f74:	601a      	str	r2, [r3, #0]
 8057f76:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8057f78:	2b00      	cmp	r3, #0
 8057f7a:	d002      	beq.n	8057f82 <prvInitialiseNewTask+0x142>
 8057f7c:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8057f7e:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8057f80:	601a      	str	r2, [r3, #0]
 8057f82:	bf00      	nop
 8057f84:	3724      	adds	r7, #36	; 0x24
 8057f86:	46bd      	mov	sp, r7
 8057f88:	bd90      	pop	{r4, r7, pc}
 8057f8a:	bf00      	nop
 8057f8c:	080609f1 	.word	0x080609f1
 8057f90:	0805f1c7 	.word	0x0805f1c7
 8057f94:	0805c37b 	.word	0x0805c37b
 8057f98:	0805e801 	.word	0x0805e801
 8057f9c:	0805e47d 	.word	0x0805e47d

08057fa0 <prvAddNewTaskToReadyList>:
 8057fa0:	b580      	push	{r7, lr}
 8057fa2:	b084      	sub	sp, #16
 8057fa4:	af00      	add	r7, sp, #0
 8057fa6:	6078      	str	r0, [r7, #4]
 8057fa8:	4b46      	ldr	r3, [pc, #280]	; (80580c4 <prvAddNewTaskToReadyList+0x124>)
 8057faa:	4798      	blx	r3
 8057fac:	4b46      	ldr	r3, [pc, #280]	; (80580c8 <prvAddNewTaskToReadyList+0x128>)
 8057fae:	681b      	ldr	r3, [r3, #0]
 8057fb0:	3301      	adds	r3, #1
 8057fb2:	4a45      	ldr	r2, [pc, #276]	; (80580c8 <prvAddNewTaskToReadyList+0x128>)
 8057fb4:	6013      	str	r3, [r2, #0]
 8057fb6:	4b45      	ldr	r3, [pc, #276]	; (80580cc <prvAddNewTaskToReadyList+0x12c>)
 8057fb8:	681b      	ldr	r3, [r3, #0]
 8057fba:	2b00      	cmp	r3, #0
 8057fbc:	d109      	bne.n	8057fd2 <prvAddNewTaskToReadyList+0x32>
 8057fbe:	4a43      	ldr	r2, [pc, #268]	; (80580cc <prvAddNewTaskToReadyList+0x12c>)
 8057fc0:	687b      	ldr	r3, [r7, #4]
 8057fc2:	6013      	str	r3, [r2, #0]
 8057fc4:	4b40      	ldr	r3, [pc, #256]	; (80580c8 <prvAddNewTaskToReadyList+0x128>)
 8057fc6:	681b      	ldr	r3, [r3, #0]
 8057fc8:	2b01      	cmp	r3, #1
 8057fca:	d112      	bne.n	8057ff2 <prvAddNewTaskToReadyList+0x52>
 8057fcc:	f7ff fd86 	bl	8057adc <prvInitialiseTaskLists>
 8057fd0:	e00f      	b.n	8057ff2 <prvAddNewTaskToReadyList+0x52>
 8057fd2:	4b3f      	ldr	r3, [pc, #252]	; (80580d0 <prvAddNewTaskToReadyList+0x130>)
 8057fd4:	681b      	ldr	r3, [r3, #0]
 8057fd6:	2b00      	cmp	r3, #0
 8057fd8:	d10b      	bne.n	8057ff2 <prvAddNewTaskToReadyList+0x52>
 8057fda:	4b3c      	ldr	r3, [pc, #240]	; (80580cc <prvAddNewTaskToReadyList+0x12c>)
 8057fdc:	681b      	ldr	r3, [r3, #0]
 8057fde:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8057fe2:	687b      	ldr	r3, [r7, #4]
 8057fe4:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 8057fe8:	429a      	cmp	r2, r3
 8057fea:	d802      	bhi.n	8057ff2 <prvAddNewTaskToReadyList+0x52>
 8057fec:	4a37      	ldr	r2, [pc, #220]	; (80580cc <prvAddNewTaskToReadyList+0x12c>)
 8057fee:	687b      	ldr	r3, [r7, #4]
 8057ff0:	6013      	str	r3, [r2, #0]
 8057ff2:	4b38      	ldr	r3, [pc, #224]	; (80580d4 <prvAddNewTaskToReadyList+0x134>)
 8057ff4:	681b      	ldr	r3, [r3, #0]
 8057ff6:	3301      	adds	r3, #1
 8057ff8:	4a36      	ldr	r2, [pc, #216]	; (80580d4 <prvAddNewTaskToReadyList+0x134>)
 8057ffa:	6013      	str	r3, [r2, #0]
 8057ffc:	4b35      	ldr	r3, [pc, #212]	; (80580d4 <prvAddNewTaskToReadyList+0x134>)
 8057ffe:	681a      	ldr	r2, [r3, #0]
 8058000:	687b      	ldr	r3, [r7, #4]
 8058002:	f8c3 22d4 	str.w	r2, [r3, #724]	; 0x2d4
 8058006:	687b      	ldr	r3, [r7, #4]
 8058008:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 805800c:	4b32      	ldr	r3, [pc, #200]	; (80580d8 <prvAddNewTaskToReadyList+0x138>)
 805800e:	681b      	ldr	r3, [r3, #0]
 8058010:	429a      	cmp	r2, r3
 8058012:	d904      	bls.n	805801e <prvAddNewTaskToReadyList+0x7e>
 8058014:	687b      	ldr	r3, [r7, #4]
 8058016:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 805801a:	4a2f      	ldr	r2, [pc, #188]	; (80580d8 <prvAddNewTaskToReadyList+0x138>)
 805801c:	6013      	str	r3, [r2, #0]
 805801e:	687b      	ldr	r3, [r7, #4]
 8058020:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8058024:	492d      	ldr	r1, [pc, #180]	; (80580dc <prvAddNewTaskToReadyList+0x13c>)
 8058026:	4613      	mov	r3, r2
 8058028:	009b      	lsls	r3, r3, #2
 805802a:	4413      	add	r3, r2
 805802c:	009b      	lsls	r3, r3, #2
 805802e:	440b      	add	r3, r1
 8058030:	3304      	adds	r3, #4
 8058032:	681b      	ldr	r3, [r3, #0]
 8058034:	60fb      	str	r3, [r7, #12]
 8058036:	687b      	ldr	r3, [r7, #4]
 8058038:	68fa      	ldr	r2, [r7, #12]
 805803a:	f8c3 2298 	str.w	r2, [r3, #664]	; 0x298
 805803e:	68fb      	ldr	r3, [r7, #12]
 8058040:	689a      	ldr	r2, [r3, #8]
 8058042:	687b      	ldr	r3, [r7, #4]
 8058044:	f8c3 229c 	str.w	r2, [r3, #668]	; 0x29c
 8058048:	68fb      	ldr	r3, [r7, #12]
 805804a:	689b      	ldr	r3, [r3, #8]
 805804c:	687a      	ldr	r2, [r7, #4]
 805804e:	f502 7225 	add.w	r2, r2, #660	; 0x294
 8058052:	605a      	str	r2, [r3, #4]
 8058054:	687b      	ldr	r3, [r7, #4]
 8058056:	f503 7225 	add.w	r2, r3, #660	; 0x294
 805805a:	68fb      	ldr	r3, [r7, #12]
 805805c:	609a      	str	r2, [r3, #8]
 805805e:	687b      	ldr	r3, [r7, #4]
 8058060:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 8058064:	4613      	mov	r3, r2
 8058066:	009b      	lsls	r3, r3, #2
 8058068:	4413      	add	r3, r2
 805806a:	009b      	lsls	r3, r3, #2
 805806c:	4a1b      	ldr	r2, [pc, #108]	; (80580dc <prvAddNewTaskToReadyList+0x13c>)
 805806e:	441a      	add	r2, r3
 8058070:	687b      	ldr	r3, [r7, #4]
 8058072:	f8c3 22a4 	str.w	r2, [r3, #676]	; 0x2a4
 8058076:	687b      	ldr	r3, [r7, #4]
 8058078:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 805807c:	4917      	ldr	r1, [pc, #92]	; (80580dc <prvAddNewTaskToReadyList+0x13c>)
 805807e:	4613      	mov	r3, r2
 8058080:	009b      	lsls	r3, r3, #2
 8058082:	4413      	add	r3, r2
 8058084:	009b      	lsls	r3, r3, #2
 8058086:	440b      	add	r3, r1
 8058088:	681b      	ldr	r3, [r3, #0]
 805808a:	1c59      	adds	r1, r3, #1
 805808c:	4813      	ldr	r0, [pc, #76]	; (80580dc <prvAddNewTaskToReadyList+0x13c>)
 805808e:	4613      	mov	r3, r2
 8058090:	009b      	lsls	r3, r3, #2
 8058092:	4413      	add	r3, r2
 8058094:	009b      	lsls	r3, r3, #2
 8058096:	4403      	add	r3, r0
 8058098:	6019      	str	r1, [r3, #0]
 805809a:	4b11      	ldr	r3, [pc, #68]	; (80580e0 <prvAddNewTaskToReadyList+0x140>)
 805809c:	4798      	blx	r3
 805809e:	4b0c      	ldr	r3, [pc, #48]	; (80580d0 <prvAddNewTaskToReadyList+0x130>)
 80580a0:	681b      	ldr	r3, [r3, #0]
 80580a2:	2b00      	cmp	r3, #0
 80580a4:	d00a      	beq.n	80580bc <prvAddNewTaskToReadyList+0x11c>
 80580a6:	4b09      	ldr	r3, [pc, #36]	; (80580cc <prvAddNewTaskToReadyList+0x12c>)
 80580a8:	681b      	ldr	r3, [r3, #0]
 80580aa:	f8d3 22bc 	ldr.w	r2, [r3, #700]	; 0x2bc
 80580ae:	687b      	ldr	r3, [r7, #4]
 80580b0:	f8d3 32bc 	ldr.w	r3, [r3, #700]	; 0x2bc
 80580b4:	429a      	cmp	r2, r3
 80580b6:	d201      	bcs.n	80580bc <prvAddNewTaskToReadyList+0x11c>
 80580b8:	4b0a      	ldr	r3, [pc, #40]	; (80580e4 <prvAddNewTaskToReadyList+0x144>)
 80580ba:	4798      	blx	r3
 80580bc:	bf00      	nop
 80580be:	3710      	adds	r7, #16
 80580c0:	46bd      	mov	sp, r7
 80580c2:	bd80      	pop	{r7, pc}
 80580c4:	0805ecc5 	.word	0x0805ecc5
 80580c8:	200002b4 	.word	0x200002b4
 80580cc:	20000100 	.word	0x20000100
 80580d0:	200002c0 	.word	0x200002c0
 80580d4:	200002d0 	.word	0x200002d0
 80580d8:	200002bc 	.word	0x200002bc
 80580dc:	20000104 	.word	0x20000104
 80580e0:	0805eced 	.word	0x0805eced
 80580e4:	0805eca5 	.word	0x0805eca5

080580e8 <prvCreateRestrictedTask>:
 80580e8:	b5b0      	push	{r4, r5, r7, lr}
 80580ea:	b088      	sub	sp, #32
 80580ec:	af04      	add	r7, sp, #16
 80580ee:	6078      	str	r0, [r7, #4]
 80580f0:	6039      	str	r1, [r7, #0]
 80580f2:	687b      	ldr	r3, [r7, #4]
 80580f4:	695b      	ldr	r3, [r3, #20]
 80580f6:	2b00      	cmp	r3, #0
 80580f8:	d102      	bne.n	8058100 <prvCreateRestrictedTask+0x18>
 80580fa:	4b1e      	ldr	r3, [pc, #120]	; (8058174 <prvCreateRestrictedTask+0x8c>)
 80580fc:	4798      	blx	r3
 80580fe:	e7fe      	b.n	80580fe <prvCreateRestrictedTask+0x16>
 8058100:	687b      	ldr	r3, [r7, #4]
 8058102:	695b      	ldr	r3, [r3, #20]
 8058104:	2b00      	cmp	r3, #0
 8058106:	d02e      	beq.n	8058166 <prvCreateRestrictedTask+0x7e>
 8058108:	f44f 703b 	mov.w	r0, #748	; 0x2ec
 805810c:	4b1a      	ldr	r3, [pc, #104]	; (8058178 <prvCreateRestrictedTask+0x90>)
 805810e:	4798      	blx	r3
 8058110:	60f8      	str	r0, [r7, #12]
 8058112:	68fb      	ldr	r3, [r7, #12]
 8058114:	2b00      	cmp	r3, #0
 8058116:	d028      	beq.n	805816a <prvCreateRestrictedTask+0x82>
 8058118:	f44f 723b 	mov.w	r2, #748	; 0x2ec
 805811c:	2100      	movs	r1, #0
 805811e:	68f8      	ldr	r0, [r7, #12]
 8058120:	4b16      	ldr	r3, [pc, #88]	; (805817c <prvCreateRestrictedTask+0x94>)
 8058122:	4798      	blx	r3
 8058124:	687b      	ldr	r3, [r7, #4]
 8058126:	695a      	ldr	r2, [r3, #20]
 8058128:	68fb      	ldr	r3, [r7, #12]
 805812a:	f8c3 22c0 	str.w	r2, [r3, #704]	; 0x2c0
 805812e:	68fb      	ldr	r3, [r7, #12]
 8058130:	2201      	movs	r2, #1
 8058132:	f883 22e9 	strb.w	r2, [r3, #745]	; 0x2e9
 8058136:	687b      	ldr	r3, [r7, #4]
 8058138:	6818      	ldr	r0, [r3, #0]
 805813a:	687b      	ldr	r3, [r7, #4]
 805813c:	6859      	ldr	r1, [r3, #4]
 805813e:	687b      	ldr	r3, [r7, #4]
 8058140:	891b      	ldrh	r3, [r3, #8]
 8058142:	461d      	mov	r5, r3
 8058144:	687b      	ldr	r3, [r7, #4]
 8058146:	68dc      	ldr	r4, [r3, #12]
 8058148:	687b      	ldr	r3, [r7, #4]
 805814a:	691b      	ldr	r3, [r3, #16]
 805814c:	687a      	ldr	r2, [r7, #4]
 805814e:	3218      	adds	r2, #24
 8058150:	9203      	str	r2, [sp, #12]
 8058152:	68fa      	ldr	r2, [r7, #12]
 8058154:	9202      	str	r2, [sp, #8]
 8058156:	683a      	ldr	r2, [r7, #0]
 8058158:	9201      	str	r2, [sp, #4]
 805815a:	9300      	str	r3, [sp, #0]
 805815c:	4623      	mov	r3, r4
 805815e:	462a      	mov	r2, r5
 8058160:	f7ff fe6e 	bl	8057e40 <prvInitialiseNewTask>
 8058164:	e001      	b.n	805816a <prvCreateRestrictedTask+0x82>
 8058166:	2300      	movs	r3, #0
 8058168:	60fb      	str	r3, [r7, #12]
 805816a:	68fb      	ldr	r3, [r7, #12]
 805816c:	4618      	mov	r0, r3
 805816e:	3710      	adds	r7, #16
 8058170:	46bd      	mov	sp, r7
 8058172:	bdb0      	pop	{r4, r5, r7, pc}
 8058174:	0805f1c7 	.word	0x0805f1c7
 8058178:	0805b839 	.word	0x0805b839
 805817c:	080609f1 	.word	0x080609f1

08058180 <prvCreateTask>:
 8058180:	b580      	push	{r7, lr}
 8058182:	b08a      	sub	sp, #40	; 0x28
 8058184:	af04      	add	r7, sp, #16
 8058186:	60f8      	str	r0, [r7, #12]
 8058188:	60b9      	str	r1, [r7, #8]
 805818a:	603b      	str	r3, [r7, #0]
 805818c:	4613      	mov	r3, r2
 805818e:	80fb      	strh	r3, [r7, #6]
 8058190:	88fb      	ldrh	r3, [r7, #6]
 8058192:	009b      	lsls	r3, r3, #2
 8058194:	4618      	mov	r0, r3
 8058196:	4b1c      	ldr	r3, [pc, #112]	; (8058208 <prvCreateTask+0x88>)
 8058198:	4798      	blx	r3
 805819a:	6138      	str	r0, [r7, #16]
 805819c:	693b      	ldr	r3, [r7, #16]
 805819e:	2b00      	cmp	r3, #0
 80581a0:	d016      	beq.n	80581d0 <prvCreateTask+0x50>
 80581a2:	f44f 703b 	mov.w	r0, #748	; 0x2ec
 80581a6:	4b18      	ldr	r3, [pc, #96]	; (8058208 <prvCreateTask+0x88>)
 80581a8:	4798      	blx	r3
 80581aa:	6178      	str	r0, [r7, #20]
 80581ac:	697b      	ldr	r3, [r7, #20]
 80581ae:	2b00      	cmp	r3, #0
 80581b0:	d00a      	beq.n	80581c8 <prvCreateTask+0x48>
 80581b2:	f44f 723b 	mov.w	r2, #748	; 0x2ec
 80581b6:	2100      	movs	r1, #0
 80581b8:	6978      	ldr	r0, [r7, #20]
 80581ba:	4b14      	ldr	r3, [pc, #80]	; (805820c <prvCreateTask+0x8c>)
 80581bc:	4798      	blx	r3
 80581be:	697b      	ldr	r3, [r7, #20]
 80581c0:	693a      	ldr	r2, [r7, #16]
 80581c2:	f8c3 22c0 	str.w	r2, [r3, #704]	; 0x2c0
 80581c6:	e005      	b.n	80581d4 <prvCreateTask+0x54>
 80581c8:	6938      	ldr	r0, [r7, #16]
 80581ca:	4b11      	ldr	r3, [pc, #68]	; (8058210 <prvCreateTask+0x90>)
 80581cc:	4798      	blx	r3
 80581ce:	e001      	b.n	80581d4 <prvCreateTask+0x54>
 80581d0:	2300      	movs	r3, #0
 80581d2:	617b      	str	r3, [r7, #20]
 80581d4:	697b      	ldr	r3, [r7, #20]
 80581d6:	2b00      	cmp	r3, #0
 80581d8:	d011      	beq.n	80581fe <prvCreateTask+0x7e>
 80581da:	697b      	ldr	r3, [r7, #20]
 80581dc:	2200      	movs	r2, #0
 80581de:	f883 22e9 	strb.w	r2, [r3, #745]	; 0x2e9
 80581e2:	88fa      	ldrh	r2, [r7, #6]
 80581e4:	2300      	movs	r3, #0
 80581e6:	9303      	str	r3, [sp, #12]
 80581e8:	697b      	ldr	r3, [r7, #20]
 80581ea:	9302      	str	r3, [sp, #8]
 80581ec:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80581ee:	9301      	str	r3, [sp, #4]
 80581f0:	6a3b      	ldr	r3, [r7, #32]
 80581f2:	9300      	str	r3, [sp, #0]
 80581f4:	683b      	ldr	r3, [r7, #0]
 80581f6:	68b9      	ldr	r1, [r7, #8]
 80581f8:	68f8      	ldr	r0, [r7, #12]
 80581fa:	f7ff fe21 	bl	8057e40 <prvInitialiseNewTask>
 80581fe:	697b      	ldr	r3, [r7, #20]
 8058200:	4618      	mov	r0, r3
 8058202:	3718      	adds	r7, #24
 8058204:	46bd      	mov	sp, r7
 8058206:	bd80      	pop	{r7, pc}
 8058208:	0805b839 	.word	0x0805b839
 805820c:	080609f1 	.word	0x080609f1
 8058210:	0805baa1 	.word	0x0805baa1

08058214 <xTimerCreate>:
 8058214:	b580      	push	{r7, lr}
 8058216:	b088      	sub	sp, #32
 8058218:	af02      	add	r7, sp, #8
 805821a:	60f8      	str	r0, [r7, #12]
 805821c:	60b9      	str	r1, [r7, #8]
 805821e:	607a      	str	r2, [r7, #4]
 8058220:	603b      	str	r3, [r7, #0]
 8058222:	202c      	movs	r0, #44	; 0x2c
 8058224:	4b0c      	ldr	r3, [pc, #48]	; (8058258 <xTimerCreate+0x44>)
 8058226:	4798      	blx	r3
 8058228:	6178      	str	r0, [r7, #20]
 805822a:	697b      	ldr	r3, [r7, #20]
 805822c:	2b00      	cmp	r3, #0
 805822e:	d00d      	beq.n	805824c <xTimerCreate+0x38>
 8058230:	697b      	ldr	r3, [r7, #20]
 8058232:	2200      	movs	r2, #0
 8058234:	f883 2028 	strb.w	r2, [r3, #40]	; 0x28
 8058238:	697b      	ldr	r3, [r7, #20]
 805823a:	9301      	str	r3, [sp, #4]
 805823c:	6a3b      	ldr	r3, [r7, #32]
 805823e:	9300      	str	r3, [sp, #0]
 8058240:	683b      	ldr	r3, [r7, #0]
 8058242:	687a      	ldr	r2, [r7, #4]
 8058244:	68b9      	ldr	r1, [r7, #8]
 8058246:	68f8      	ldr	r0, [r7, #12]
 8058248:	f000 fcb0 	bl	8058bac <prvInitialiseNewTimer>
 805824c:	697b      	ldr	r3, [r7, #20]
 805824e:	4618      	mov	r0, r3
 8058250:	3718      	adds	r7, #24
 8058252:	46bd      	mov	sp, r7
 8058254:	bd80      	pop	{r7, pc}
 8058256:	bf00      	nop
 8058258:	0805b839 	.word	0x0805b839

0805825c <pvTimerGetTimerID>:
 805825c:	b580      	push	{r7, lr}
 805825e:	b084      	sub	sp, #16
 8058260:	af00      	add	r7, sp, #0
 8058262:	6078      	str	r0, [r7, #4]
 8058264:	687b      	ldr	r3, [r7, #4]
 8058266:	60fb      	str	r3, [r7, #12]
 8058268:	687b      	ldr	r3, [r7, #4]
 805826a:	2b00      	cmp	r3, #0
 805826c:	d102      	bne.n	8058274 <pvTimerGetTimerID+0x18>
 805826e:	4b07      	ldr	r3, [pc, #28]	; (805828c <pvTimerGetTimerID+0x30>)
 8058270:	4798      	blx	r3
 8058272:	e7fe      	b.n	8058272 <pvTimerGetTimerID+0x16>
 8058274:	4b06      	ldr	r3, [pc, #24]	; (8058290 <pvTimerGetTimerID+0x34>)
 8058276:	4798      	blx	r3
 8058278:	68fb      	ldr	r3, [r7, #12]
 805827a:	69db      	ldr	r3, [r3, #28]
 805827c:	60bb      	str	r3, [r7, #8]
 805827e:	4b05      	ldr	r3, [pc, #20]	; (8058294 <pvTimerGetTimerID+0x38>)
 8058280:	4798      	blx	r3
 8058282:	68bb      	ldr	r3, [r7, #8]
 8058284:	4618      	mov	r0, r3
 8058286:	3710      	adds	r7, #16
 8058288:	46bd      	mov	sp, r7
 805828a:	bd80      	pop	{r7, pc}
 805828c:	0805f1c7 	.word	0x0805f1c7
 8058290:	0805ecc5 	.word	0x0805ecc5
 8058294:	0805eced 	.word	0x0805eced

08058298 <vTimerSetTimerID>:
 8058298:	b580      	push	{r7, lr}
 805829a:	b084      	sub	sp, #16
 805829c:	af00      	add	r7, sp, #0
 805829e:	6078      	str	r0, [r7, #4]
 80582a0:	6039      	str	r1, [r7, #0]
 80582a2:	687b      	ldr	r3, [r7, #4]
 80582a4:	60fb      	str	r3, [r7, #12]
 80582a6:	687b      	ldr	r3, [r7, #4]
 80582a8:	2b00      	cmp	r3, #0
 80582aa:	d102      	bne.n	80582b2 <vTimerSetTimerID+0x1a>
 80582ac:	4b06      	ldr	r3, [pc, #24]	; (80582c8 <vTimerSetTimerID+0x30>)
 80582ae:	4798      	blx	r3
 80582b0:	e7fe      	b.n	80582b0 <vTimerSetTimerID+0x18>
 80582b2:	4b06      	ldr	r3, [pc, #24]	; (80582cc <vTimerSetTimerID+0x34>)
 80582b4:	4798      	blx	r3
 80582b6:	68fb      	ldr	r3, [r7, #12]
 80582b8:	683a      	ldr	r2, [r7, #0]
 80582ba:	61da      	str	r2, [r3, #28]
 80582bc:	4b04      	ldr	r3, [pc, #16]	; (80582d0 <vTimerSetTimerID+0x38>)
 80582be:	4798      	blx	r3
 80582c0:	bf00      	nop
 80582c2:	3710      	adds	r7, #16
 80582c4:	46bd      	mov	sp, r7
 80582c6:	bd80      	pop	{r7, pc}
 80582c8:	0805f1c7 	.word	0x0805f1c7
 80582cc:	0805ecc5 	.word	0x0805ecc5
 80582d0:	0805eced 	.word	0x0805eced

080582d4 <xTimerIsTimerActive>:
 80582d4:	b580      	push	{r7, lr}
 80582d6:	b084      	sub	sp, #16
 80582d8:	af00      	add	r7, sp, #0
 80582da:	6078      	str	r0, [r7, #4]
 80582dc:	687b      	ldr	r3, [r7, #4]
 80582de:	60bb      	str	r3, [r7, #8]
 80582e0:	687b      	ldr	r3, [r7, #4]
 80582e2:	2b00      	cmp	r3, #0
 80582e4:	d102      	bne.n	80582ec <xTimerIsTimerActive+0x18>
 80582e6:	4b0c      	ldr	r3, [pc, #48]	; (8058318 <xTimerIsTimerActive+0x44>)
 80582e8:	4798      	blx	r3
 80582ea:	e7fe      	b.n	80582ea <xTimerIsTimerActive+0x16>
 80582ec:	4b0b      	ldr	r3, [pc, #44]	; (805831c <xTimerIsTimerActive+0x48>)
 80582ee:	4798      	blx	r3
 80582f0:	68bb      	ldr	r3, [r7, #8]
 80582f2:	f893 3028 	ldrb.w	r3, [r3, #40]	; 0x28
 80582f6:	f003 0301 	and.w	r3, r3, #1
 80582fa:	2b00      	cmp	r3, #0
 80582fc:	d102      	bne.n	8058304 <xTimerIsTimerActive+0x30>
 80582fe:	2300      	movs	r3, #0
 8058300:	60fb      	str	r3, [r7, #12]
 8058302:	e001      	b.n	8058308 <xTimerIsTimerActive+0x34>
 8058304:	2301      	movs	r3, #1
 8058306:	60fb      	str	r3, [r7, #12]
 8058308:	4b05      	ldr	r3, [pc, #20]	; (8058320 <xTimerIsTimerActive+0x4c>)
 805830a:	4798      	blx	r3
 805830c:	68fb      	ldr	r3, [r7, #12]
 805830e:	4618      	mov	r0, r3
 8058310:	3710      	adds	r7, #16
 8058312:	46bd      	mov	sp, r7
 8058314:	bd80      	pop	{r7, pc}
 8058316:	bf00      	nop
 8058318:	0805f1c7 	.word	0x0805f1c7
 805831c:	0805ecc5 	.word	0x0805ecc5
 8058320:	0805eced 	.word	0x0805eced

08058324 <xTimerGetTimerDaemonTaskHandle>:
 8058324:	b580      	push	{r7, lr}
 8058326:	af00      	add	r7, sp, #0
 8058328:	4b05      	ldr	r3, [pc, #20]	; (8058340 <xTimerGetTimerDaemonTaskHandle+0x1c>)
 805832a:	681b      	ldr	r3, [r3, #0]
 805832c:	2b00      	cmp	r3, #0
 805832e:	d102      	bne.n	8058336 <xTimerGetTimerDaemonTaskHandle+0x12>
 8058330:	4b04      	ldr	r3, [pc, #16]	; (8058344 <xTimerGetTimerDaemonTaskHandle+0x20>)
 8058332:	4798      	blx	r3
 8058334:	e7fe      	b.n	8058334 <xTimerGetTimerDaemonTaskHandle+0x10>
 8058336:	4b02      	ldr	r3, [pc, #8]	; (8058340 <xTimerGetTimerDaemonTaskHandle+0x1c>)
 8058338:	681b      	ldr	r3, [r3, #0]
 805833a:	4618      	mov	r0, r3
 805833c:	bd80      	pop	{r7, pc}
 805833e:	bf00      	nop
 8058340:	20000314 	.word	0x20000314
 8058344:	0805f1c7 	.word	0x0805f1c7

08058348 <xTimerPendFunctionCallFromISR>:
 8058348:	b590      	push	{r4, r7, lr}
 805834a:	b08b      	sub	sp, #44	; 0x2c
 805834c:	af00      	add	r7, sp, #0
 805834e:	60f8      	str	r0, [r7, #12]
 8058350:	60b9      	str	r1, [r7, #8]
 8058352:	607a      	str	r2, [r7, #4]
 8058354:	603b      	str	r3, [r7, #0]
 8058356:	f06f 0301 	mvn.w	r3, #1
 805835a:	617b      	str	r3, [r7, #20]
 805835c:	68fb      	ldr	r3, [r7, #12]
 805835e:	61bb      	str	r3, [r7, #24]
 8058360:	68bb      	ldr	r3, [r7, #8]
 8058362:	61fb      	str	r3, [r7, #28]
 8058364:	687b      	ldr	r3, [r7, #4]
 8058366:	623b      	str	r3, [r7, #32]
 8058368:	4b06      	ldr	r3, [pc, #24]	; (8058384 <xTimerPendFunctionCallFromISR+0x3c>)
 805836a:	6818      	ldr	r0, [r3, #0]
 805836c:	f107 0114 	add.w	r1, r7, #20
 8058370:	2300      	movs	r3, #0
 8058372:	683a      	ldr	r2, [r7, #0]
 8058374:	4c04      	ldr	r4, [pc, #16]	; (8058388 <xTimerPendFunctionCallFromISR+0x40>)
 8058376:	47a0      	blx	r4
 8058378:	6278      	str	r0, [r7, #36]	; 0x24
 805837a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805837c:	4618      	mov	r0, r3
 805837e:	372c      	adds	r7, #44	; 0x2c
 8058380:	46bd      	mov	sp, r7
 8058382:	bd90      	pop	{r4, r7, pc}
 8058384:	20000310 	.word	0x20000310
 8058388:	0805cae5 	.word	0x0805cae5

0805838c <xTimerPendFunctionCall>:
 805838c:	b590      	push	{r4, r7, lr}
 805838e:	b08b      	sub	sp, #44	; 0x2c
 8058390:	af00      	add	r7, sp, #0
 8058392:	60f8      	str	r0, [r7, #12]
 8058394:	60b9      	str	r1, [r7, #8]
 8058396:	607a      	str	r2, [r7, #4]
 8058398:	603b      	str	r3, [r7, #0]
 805839a:	4b0f      	ldr	r3, [pc, #60]	; (80583d8 <xTimerPendFunctionCall+0x4c>)
 805839c:	681b      	ldr	r3, [r3, #0]
 805839e:	2b00      	cmp	r3, #0
 80583a0:	d102      	bne.n	80583a8 <xTimerPendFunctionCall+0x1c>
 80583a2:	4b0e      	ldr	r3, [pc, #56]	; (80583dc <xTimerPendFunctionCall+0x50>)
 80583a4:	4798      	blx	r3
 80583a6:	e7fe      	b.n	80583a6 <xTimerPendFunctionCall+0x1a>
 80583a8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80583ac:	617b      	str	r3, [r7, #20]
 80583ae:	68fb      	ldr	r3, [r7, #12]
 80583b0:	61bb      	str	r3, [r7, #24]
 80583b2:	68bb      	ldr	r3, [r7, #8]
 80583b4:	61fb      	str	r3, [r7, #28]
 80583b6:	687b      	ldr	r3, [r7, #4]
 80583b8:	623b      	str	r3, [r7, #32]
 80583ba:	4b07      	ldr	r3, [pc, #28]	; (80583d8 <xTimerPendFunctionCall+0x4c>)
 80583bc:	6818      	ldr	r0, [r3, #0]
 80583be:	f107 0114 	add.w	r1, r7, #20
 80583c2:	2300      	movs	r3, #0
 80583c4:	683a      	ldr	r2, [r7, #0]
 80583c6:	4c06      	ldr	r4, [pc, #24]	; (80583e0 <xTimerPendFunctionCall+0x54>)
 80583c8:	47a0      	blx	r4
 80583ca:	6278      	str	r0, [r7, #36]	; 0x24
 80583cc:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80583ce:	4618      	mov	r0, r3
 80583d0:	372c      	adds	r7, #44	; 0x2c
 80583d2:	46bd      	mov	sp, r7
 80583d4:	bd90      	pop	{r4, r7, pc}
 80583d6:	bf00      	nop
 80583d8:	20000310 	.word	0x20000310
 80583dc:	0805f1c7 	.word	0x0805f1c7
 80583e0:	0805c49d 	.word	0x0805c49d

080583e4 <pcTimerGetName>:
 80583e4:	b580      	push	{r7, lr}
 80583e6:	b084      	sub	sp, #16
 80583e8:	af00      	add	r7, sp, #0
 80583ea:	6078      	str	r0, [r7, #4]
 80583ec:	687b      	ldr	r3, [r7, #4]
 80583ee:	60fb      	str	r3, [r7, #12]
 80583f0:	687b      	ldr	r3, [r7, #4]
 80583f2:	2b00      	cmp	r3, #0
 80583f4:	d102      	bne.n	80583fc <pcTimerGetName+0x18>
 80583f6:	4b04      	ldr	r3, [pc, #16]	; (8058408 <pcTimerGetName+0x24>)
 80583f8:	4798      	blx	r3
 80583fa:	e7fe      	b.n	80583fa <pcTimerGetName+0x16>
 80583fc:	68fb      	ldr	r3, [r7, #12]
 80583fe:	681b      	ldr	r3, [r3, #0]
 8058400:	4618      	mov	r0, r3
 8058402:	3710      	adds	r7, #16
 8058404:	46bd      	mov	sp, r7
 8058406:	bd80      	pop	{r7, pc}
 8058408:	0805f1c7 	.word	0x0805f1c7

0805840c <vTimerSetReloadMode>:
 805840c:	b580      	push	{r7, lr}
 805840e:	b084      	sub	sp, #16
 8058410:	af00      	add	r7, sp, #0
 8058412:	6078      	str	r0, [r7, #4]
 8058414:	6039      	str	r1, [r7, #0]
 8058416:	687b      	ldr	r3, [r7, #4]
 8058418:	60fb      	str	r3, [r7, #12]
 805841a:	687b      	ldr	r3, [r7, #4]
 805841c:	2b00      	cmp	r3, #0
 805841e:	d102      	bne.n	8058426 <vTimerSetReloadMode+0x1a>
 8058420:	4b10      	ldr	r3, [pc, #64]	; (8058464 <vTimerSetReloadMode+0x58>)
 8058422:	4798      	blx	r3
 8058424:	e7fe      	b.n	8058424 <vTimerSetReloadMode+0x18>
 8058426:	4b10      	ldr	r3, [pc, #64]	; (8058468 <vTimerSetReloadMode+0x5c>)
 8058428:	4798      	blx	r3
 805842a:	683b      	ldr	r3, [r7, #0]
 805842c:	2b00      	cmp	r3, #0
 805842e:	d009      	beq.n	8058444 <vTimerSetReloadMode+0x38>
 8058430:	68fb      	ldr	r3, [r7, #12]
 8058432:	f893 3028 	ldrb.w	r3, [r3, #40]	; 0x28
 8058436:	f043 0304 	orr.w	r3, r3, #4
 805843a:	b2da      	uxtb	r2, r3
 805843c:	68fb      	ldr	r3, [r7, #12]
 805843e:	f883 2028 	strb.w	r2, [r3, #40]	; 0x28
 8058442:	e008      	b.n	8058456 <vTimerSetReloadMode+0x4a>
 8058444:	68fb      	ldr	r3, [r7, #12]
 8058446:	f893 3028 	ldrb.w	r3, [r3, #40]	; 0x28
 805844a:	f023 0304 	bic.w	r3, r3, #4
 805844e:	b2da      	uxtb	r2, r3
 8058450:	68fb      	ldr	r3, [r7, #12]
 8058452:	f883 2028 	strb.w	r2, [r3, #40]	; 0x28
 8058456:	4b05      	ldr	r3, [pc, #20]	; (805846c <vTimerSetReloadMode+0x60>)
 8058458:	4798      	blx	r3
 805845a:	bf00      	nop
 805845c:	3710      	adds	r7, #16
 805845e:	46bd      	mov	sp, r7
 8058460:	bd80      	pop	{r7, pc}
 8058462:	bf00      	nop
 8058464:	0805f1c7 	.word	0x0805f1c7
 8058468:	0805ecc5 	.word	0x0805ecc5
 805846c:	0805eced 	.word	0x0805eced

08058470 <xTimerGetReloadMode>:
 8058470:	b580      	push	{r7, lr}
 8058472:	b084      	sub	sp, #16
 8058474:	af00      	add	r7, sp, #0
 8058476:	6078      	str	r0, [r7, #4]
 8058478:	687b      	ldr	r3, [r7, #4]
 805847a:	60bb      	str	r3, [r7, #8]
 805847c:	687b      	ldr	r3, [r7, #4]
 805847e:	2b00      	cmp	r3, #0
 8058480:	d102      	bne.n	8058488 <xTimerGetReloadMode+0x18>
 8058482:	4b0c      	ldr	r3, [pc, #48]	; (80584b4 <xTimerGetReloadMode+0x44>)
 8058484:	4798      	blx	r3
 8058486:	e7fe      	b.n	8058486 <xTimerGetReloadMode+0x16>
 8058488:	4b0b      	ldr	r3, [pc, #44]	; (80584b8 <xTimerGetReloadMode+0x48>)
 805848a:	4798      	blx	r3
 805848c:	68bb      	ldr	r3, [r7, #8]
 805848e:	f893 3028 	ldrb.w	r3, [r3, #40]	; 0x28
 8058492:	f003 0304 	and.w	r3, r3, #4
 8058496:	2b00      	cmp	r3, #0
 8058498:	d102      	bne.n	80584a0 <xTimerGetReloadMode+0x30>
 805849a:	2300      	movs	r3, #0
 805849c:	60fb      	str	r3, [r7, #12]
 805849e:	e001      	b.n	80584a4 <xTimerGetReloadMode+0x34>
 80584a0:	2301      	movs	r3, #1
 80584a2:	60fb      	str	r3, [r7, #12]
 80584a4:	4b05      	ldr	r3, [pc, #20]	; (80584bc <xTimerGetReloadMode+0x4c>)
 80584a6:	4798      	blx	r3
 80584a8:	68fb      	ldr	r3, [r7, #12]
 80584aa:	4618      	mov	r0, r3
 80584ac:	3710      	adds	r7, #16
 80584ae:	46bd      	mov	sp, r7
 80584b0:	bd80      	pop	{r7, pc}
 80584b2:	bf00      	nop
 80584b4:	0805f1c7 	.word	0x0805f1c7
 80584b8:	0805ecc5 	.word	0x0805ecc5
 80584bc:	0805eced 	.word	0x0805eced

080584c0 <uxTimerGetReloadMode>:
 80584c0:	b580      	push	{r7, lr}
 80584c2:	b084      	sub	sp, #16
 80584c4:	af00      	add	r7, sp, #0
 80584c6:	6078      	str	r0, [r7, #4]
 80584c8:	6878      	ldr	r0, [r7, #4]
 80584ca:	f7ff ffd1 	bl	8058470 <xTimerGetReloadMode>
 80584ce:	4603      	mov	r3, r0
 80584d0:	60fb      	str	r3, [r7, #12]
 80584d2:	68fb      	ldr	r3, [r7, #12]
 80584d4:	4618      	mov	r0, r3
 80584d6:	3710      	adds	r7, #16
 80584d8:	46bd      	mov	sp, r7
 80584da:	bd80      	pop	{r7, pc}

080584dc <xTimerGetPeriod>:
 80584dc:	b580      	push	{r7, lr}
 80584de:	b084      	sub	sp, #16
 80584e0:	af00      	add	r7, sp, #0
 80584e2:	6078      	str	r0, [r7, #4]
 80584e4:	687b      	ldr	r3, [r7, #4]
 80584e6:	60fb      	str	r3, [r7, #12]
 80584e8:	687b      	ldr	r3, [r7, #4]
 80584ea:	2b00      	cmp	r3, #0
 80584ec:	d102      	bne.n	80584f4 <xTimerGetPeriod+0x18>
 80584ee:	4b04      	ldr	r3, [pc, #16]	; (8058500 <xTimerGetPeriod+0x24>)
 80584f0:	4798      	blx	r3
 80584f2:	e7fe      	b.n	80584f2 <xTimerGetPeriod+0x16>
 80584f4:	68fb      	ldr	r3, [r7, #12]
 80584f6:	699b      	ldr	r3, [r3, #24]
 80584f8:	4618      	mov	r0, r3
 80584fa:	3710      	adds	r7, #16
 80584fc:	46bd      	mov	sp, r7
 80584fe:	bd80      	pop	{r7, pc}
 8058500:	0805f1c7 	.word	0x0805f1c7

08058504 <xTimerGetExpiryTime>:
 8058504:	b580      	push	{r7, lr}
 8058506:	b084      	sub	sp, #16
 8058508:	af00      	add	r7, sp, #0
 805850a:	6078      	str	r0, [r7, #4]
 805850c:	687b      	ldr	r3, [r7, #4]
 805850e:	60fb      	str	r3, [r7, #12]
 8058510:	687b      	ldr	r3, [r7, #4]
 8058512:	2b00      	cmp	r3, #0
 8058514:	d102      	bne.n	805851c <xTimerGetExpiryTime+0x18>
 8058516:	4b05      	ldr	r3, [pc, #20]	; (805852c <xTimerGetExpiryTime+0x28>)
 8058518:	4798      	blx	r3
 805851a:	e7fe      	b.n	805851a <xTimerGetExpiryTime+0x16>
 805851c:	68fb      	ldr	r3, [r7, #12]
 805851e:	685b      	ldr	r3, [r3, #4]
 8058520:	60bb      	str	r3, [r7, #8]
 8058522:	68bb      	ldr	r3, [r7, #8]
 8058524:	4618      	mov	r0, r3
 8058526:	3710      	adds	r7, #16
 8058528:	46bd      	mov	sp, r7
 805852a:	bd80      	pop	{r7, pc}
 805852c:	0805f1c7 	.word	0x0805f1c7

08058530 <xTimerCreateTimerTask>:
 8058530:	b590      	push	{r4, r7, lr}
 8058532:	b085      	sub	sp, #20
 8058534:	af02      	add	r7, sp, #8
 8058536:	2300      	movs	r3, #0
 8058538:	607b      	str	r3, [r7, #4]
 805853a:	f000 f8bf 	bl	80586bc <prvCheckForValidListAndQueue>
 805853e:	4b0d      	ldr	r3, [pc, #52]	; (8058574 <xTimerCreateTimerTask+0x44>)
 8058540:	681b      	ldr	r3, [r3, #0]
 8058542:	2b00      	cmp	r3, #0
 8058544:	d00b      	beq.n	805855e <xTimerCreateTimerTask+0x2e>
 8058546:	4b0c      	ldr	r3, [pc, #48]	; (8058578 <xTimerCreateTimerTask+0x48>)
 8058548:	9301      	str	r3, [sp, #4]
 805854a:	4b0c      	ldr	r3, [pc, #48]	; (805857c <xTimerCreateTimerTask+0x4c>)
 805854c:	9300      	str	r3, [sp, #0]
 805854e:	2300      	movs	r3, #0
 8058550:	f44f 7280 	mov.w	r2, #256	; 0x100
 8058554:	490a      	ldr	r1, [pc, #40]	; (8058580 <xTimerCreateTimerTask+0x50>)
 8058556:	480b      	ldr	r0, [pc, #44]	; (8058584 <xTimerCreateTimerTask+0x54>)
 8058558:	4c0b      	ldr	r4, [pc, #44]	; (8058588 <xTimerCreateTimerTask+0x58>)
 805855a:	47a0      	blx	r4
 805855c:	6078      	str	r0, [r7, #4]
 805855e:	687b      	ldr	r3, [r7, #4]
 8058560:	2b00      	cmp	r3, #0
 8058562:	d102      	bne.n	805856a <xTimerCreateTimerTask+0x3a>
 8058564:	4b09      	ldr	r3, [pc, #36]	; (805858c <xTimerCreateTimerTask+0x5c>)
 8058566:	4798      	blx	r3
 8058568:	e7fe      	b.n	8058568 <xTimerCreateTimerTask+0x38>
 805856a:	687b      	ldr	r3, [r7, #4]
 805856c:	4618      	mov	r0, r3
 805856e:	370c      	adds	r7, #12
 8058570:	46bd      	mov	sp, r7
 8058572:	bd90      	pop	{r4, r7, pc}
 8058574:	20000310 	.word	0x20000310
 8058578:	20000314 	.word	0x20000314
 805857c:	80000002 	.word	0x80000002
 8058580:	08060ca0 	.word	0x08060ca0
 8058584:	0805873d 	.word	0x0805873d
 8058588:	08055221 	.word	0x08055221
 805858c:	0805f1c7 	.word	0x0805f1c7

08058590 <xTimerGenericCommandFromTask>:
 8058590:	b590      	push	{r4, r7, lr}
 8058592:	b08b      	sub	sp, #44	; 0x2c
 8058594:	af00      	add	r7, sp, #0
 8058596:	60f8      	str	r0, [r7, #12]
 8058598:	60b9      	str	r1, [r7, #8]
 805859a:	607a      	str	r2, [r7, #4]
 805859c:	603b      	str	r3, [r7, #0]
 805859e:	2300      	movs	r3, #0
 80585a0:	627b      	str	r3, [r7, #36]	; 0x24
 80585a2:	68fb      	ldr	r3, [r7, #12]
 80585a4:	2b00      	cmp	r3, #0
 80585a6:	d102      	bne.n	80585ae <xTimerGenericCommandFromTask+0x1e>
 80585a8:	4b19      	ldr	r3, [pc, #100]	; (8058610 <xTimerGenericCommandFromTask+0x80>)
 80585aa:	4798      	blx	r3
 80585ac:	e7fe      	b.n	80585ac <xTimerGenericCommandFromTask+0x1c>
 80585ae:	4b19      	ldr	r3, [pc, #100]	; (8058614 <xTimerGenericCommandFromTask+0x84>)
 80585b0:	681b      	ldr	r3, [r3, #0]
 80585b2:	2b00      	cmp	r3, #0
 80585b4:	d026      	beq.n	8058604 <xTimerGenericCommandFromTask+0x74>
 80585b6:	68bb      	ldr	r3, [r7, #8]
 80585b8:	617b      	str	r3, [r7, #20]
 80585ba:	687b      	ldr	r3, [r7, #4]
 80585bc:	61bb      	str	r3, [r7, #24]
 80585be:	68fb      	ldr	r3, [r7, #12]
 80585c0:	61fb      	str	r3, [r7, #28]
 80585c2:	68bb      	ldr	r3, [r7, #8]
 80585c4:	2b05      	cmp	r3, #5
 80585c6:	dd02      	ble.n	80585ce <xTimerGenericCommandFromTask+0x3e>
 80585c8:	4b11      	ldr	r3, [pc, #68]	; (8058610 <xTimerGenericCommandFromTask+0x80>)
 80585ca:	4798      	blx	r3
 80585cc:	e7fe      	b.n	80585cc <xTimerGenericCommandFromTask+0x3c>
 80585ce:	68bb      	ldr	r3, [r7, #8]
 80585d0:	2b05      	cmp	r3, #5
 80585d2:	dc17      	bgt.n	8058604 <xTimerGenericCommandFromTask+0x74>
 80585d4:	4b10      	ldr	r3, [pc, #64]	; (8058618 <xTimerGenericCommandFromTask+0x88>)
 80585d6:	4798      	blx	r3
 80585d8:	4603      	mov	r3, r0
 80585da:	2b02      	cmp	r3, #2
 80585dc:	d109      	bne.n	80585f2 <xTimerGenericCommandFromTask+0x62>
 80585de:	4b0d      	ldr	r3, [pc, #52]	; (8058614 <xTimerGenericCommandFromTask+0x84>)
 80585e0:	6818      	ldr	r0, [r3, #0]
 80585e2:	f107 0114 	add.w	r1, r7, #20
 80585e6:	2300      	movs	r3, #0
 80585e8:	6bba      	ldr	r2, [r7, #56]	; 0x38
 80585ea:	4c0c      	ldr	r4, [pc, #48]	; (805861c <xTimerGenericCommandFromTask+0x8c>)
 80585ec:	47a0      	blx	r4
 80585ee:	6278      	str	r0, [r7, #36]	; 0x24
 80585f0:	e008      	b.n	8058604 <xTimerGenericCommandFromTask+0x74>
 80585f2:	4b08      	ldr	r3, [pc, #32]	; (8058614 <xTimerGenericCommandFromTask+0x84>)
 80585f4:	6818      	ldr	r0, [r3, #0]
 80585f6:	f107 0114 	add.w	r1, r7, #20
 80585fa:	2300      	movs	r3, #0
 80585fc:	2200      	movs	r2, #0
 80585fe:	4c07      	ldr	r4, [pc, #28]	; (805861c <xTimerGenericCommandFromTask+0x8c>)
 8058600:	47a0      	blx	r4
 8058602:	6278      	str	r0, [r7, #36]	; 0x24
 8058604:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8058606:	4618      	mov	r0, r3
 8058608:	372c      	adds	r7, #44	; 0x2c
 805860a:	46bd      	mov	sp, r7
 805860c:	bd90      	pop	{r4, r7, pc}
 805860e:	bf00      	nop
 8058610:	0805f1c7 	.word	0x0805f1c7
 8058614:	20000310 	.word	0x20000310
 8058618:	0805756d 	.word	0x0805756d
 805861c:	0805c49d 	.word	0x0805c49d

08058620 <xTimerGenericCommandFromISR>:
 8058620:	b590      	push	{r4, r7, lr}
 8058622:	b08b      	sub	sp, #44	; 0x2c
 8058624:	af00      	add	r7, sp, #0
 8058626:	60f8      	str	r0, [r7, #12]
 8058628:	60b9      	str	r1, [r7, #8]
 805862a:	607a      	str	r2, [r7, #4]
 805862c:	603b      	str	r3, [r7, #0]
 805862e:	2300      	movs	r3, #0
 8058630:	627b      	str	r3, [r7, #36]	; 0x24
 8058632:	68fb      	ldr	r3, [r7, #12]
 8058634:	2b00      	cmp	r3, #0
 8058636:	d102      	bne.n	805863e <xTimerGenericCommandFromISR+0x1e>
 8058638:	4b11      	ldr	r3, [pc, #68]	; (8058680 <xTimerGenericCommandFromISR+0x60>)
 805863a:	4798      	blx	r3
 805863c:	e7fe      	b.n	805863c <xTimerGenericCommandFromISR+0x1c>
 805863e:	4b11      	ldr	r3, [pc, #68]	; (8058684 <xTimerGenericCommandFromISR+0x64>)
 8058640:	681b      	ldr	r3, [r3, #0]
 8058642:	2b00      	cmp	r3, #0
 8058644:	d017      	beq.n	8058676 <xTimerGenericCommandFromISR+0x56>
 8058646:	68bb      	ldr	r3, [r7, #8]
 8058648:	617b      	str	r3, [r7, #20]
 805864a:	687b      	ldr	r3, [r7, #4]
 805864c:	61bb      	str	r3, [r7, #24]
 805864e:	68fb      	ldr	r3, [r7, #12]
 8058650:	61fb      	str	r3, [r7, #28]
 8058652:	68bb      	ldr	r3, [r7, #8]
 8058654:	2b05      	cmp	r3, #5
 8058656:	dc02      	bgt.n	805865e <xTimerGenericCommandFromISR+0x3e>
 8058658:	4b09      	ldr	r3, [pc, #36]	; (8058680 <xTimerGenericCommandFromISR+0x60>)
 805865a:	4798      	blx	r3
 805865c:	e7fe      	b.n	805865c <xTimerGenericCommandFromISR+0x3c>
 805865e:	68bb      	ldr	r3, [r7, #8]
 8058660:	2b05      	cmp	r3, #5
 8058662:	dd08      	ble.n	8058676 <xTimerGenericCommandFromISR+0x56>
 8058664:	4b07      	ldr	r3, [pc, #28]	; (8058684 <xTimerGenericCommandFromISR+0x64>)
 8058666:	6818      	ldr	r0, [r3, #0]
 8058668:	f107 0114 	add.w	r1, r7, #20
 805866c:	2300      	movs	r3, #0
 805866e:	683a      	ldr	r2, [r7, #0]
 8058670:	4c05      	ldr	r4, [pc, #20]	; (8058688 <xTimerGenericCommandFromISR+0x68>)
 8058672:	47a0      	blx	r4
 8058674:	6278      	str	r0, [r7, #36]	; 0x24
 8058676:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8058678:	4618      	mov	r0, r3
 805867a:	372c      	adds	r7, #44	; 0x2c
 805867c:	46bd      	mov	sp, r7
 805867e:	bd90      	pop	{r4, r7, pc}
 8058680:	0805f1c7 	.word	0x0805f1c7
 8058684:	20000310 	.word	0x20000310
 8058688:	0805cae5 	.word	0x0805cae5

0805868c <vTimerSetTimerNumber>:
 805868c:	b480      	push	{r7}
 805868e:	b083      	sub	sp, #12
 8058690:	af00      	add	r7, sp, #0
 8058692:	6078      	str	r0, [r7, #4]
 8058694:	6039      	str	r1, [r7, #0]
 8058696:	687b      	ldr	r3, [r7, #4]
 8058698:	683a      	ldr	r2, [r7, #0]
 805869a:	625a      	str	r2, [r3, #36]	; 0x24
 805869c:	bf00      	nop
 805869e:	370c      	adds	r7, #12
 80586a0:	46bd      	mov	sp, r7
 80586a2:	bc80      	pop	{r7}
 80586a4:	4770      	bx	lr

080586a6 <uxTimerGetTimerNumber>:
 80586a6:	b480      	push	{r7}
 80586a8:	b083      	sub	sp, #12
 80586aa:	af00      	add	r7, sp, #0
 80586ac:	6078      	str	r0, [r7, #4]
 80586ae:	687b      	ldr	r3, [r7, #4]
 80586b0:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80586b2:	4618      	mov	r0, r3
 80586b4:	370c      	adds	r7, #12
 80586b6:	46bd      	mov	sp, r7
 80586b8:	bc80      	pop	{r7}
 80586ba:	4770      	bx	lr

080586bc <prvCheckForValidListAndQueue>:
 80586bc:	b580      	push	{r7, lr}
 80586be:	af00      	add	r7, sp, #0
 80586c0:	4b13      	ldr	r3, [pc, #76]	; (8058710 <prvCheckForValidListAndQueue+0x54>)
 80586c2:	4798      	blx	r3
 80586c4:	4b13      	ldr	r3, [pc, #76]	; (8058714 <prvCheckForValidListAndQueue+0x58>)
 80586c6:	681b      	ldr	r3, [r3, #0]
 80586c8:	2b00      	cmp	r3, #0
 80586ca:	d11d      	bne.n	8058708 <prvCheckForValidListAndQueue+0x4c>
 80586cc:	4812      	ldr	r0, [pc, #72]	; (8058718 <prvCheckForValidListAndQueue+0x5c>)
 80586ce:	4b13      	ldr	r3, [pc, #76]	; (805871c <prvCheckForValidListAndQueue+0x60>)
 80586d0:	4798      	blx	r3
 80586d2:	4813      	ldr	r0, [pc, #76]	; (8058720 <prvCheckForValidListAndQueue+0x64>)
 80586d4:	4b11      	ldr	r3, [pc, #68]	; (805871c <prvCheckForValidListAndQueue+0x60>)
 80586d6:	4798      	blx	r3
 80586d8:	4b12      	ldr	r3, [pc, #72]	; (8058724 <prvCheckForValidListAndQueue+0x68>)
 80586da:	4a0f      	ldr	r2, [pc, #60]	; (8058718 <prvCheckForValidListAndQueue+0x5c>)
 80586dc:	601a      	str	r2, [r3, #0]
 80586de:	4b12      	ldr	r3, [pc, #72]	; (8058728 <prvCheckForValidListAndQueue+0x6c>)
 80586e0:	4a0f      	ldr	r2, [pc, #60]	; (8058720 <prvCheckForValidListAndQueue+0x64>)
 80586e2:	601a      	str	r2, [r3, #0]
 80586e4:	2200      	movs	r2, #0
 80586e6:	2110      	movs	r1, #16
 80586e8:	200a      	movs	r0, #10
 80586ea:	4b10      	ldr	r3, [pc, #64]	; (805872c <prvCheckForValidListAndQueue+0x70>)
 80586ec:	4798      	blx	r3
 80586ee:	4603      	mov	r3, r0
 80586f0:	4a08      	ldr	r2, [pc, #32]	; (8058714 <prvCheckForValidListAndQueue+0x58>)
 80586f2:	6013      	str	r3, [r2, #0]
 80586f4:	4b07      	ldr	r3, [pc, #28]	; (8058714 <prvCheckForValidListAndQueue+0x58>)
 80586f6:	681b      	ldr	r3, [r3, #0]
 80586f8:	2b00      	cmp	r3, #0
 80586fa:	d005      	beq.n	8058708 <prvCheckForValidListAndQueue+0x4c>
 80586fc:	4b05      	ldr	r3, [pc, #20]	; (8058714 <prvCheckForValidListAndQueue+0x58>)
 80586fe:	681b      	ldr	r3, [r3, #0]
 8058700:	490b      	ldr	r1, [pc, #44]	; (8058730 <prvCheckForValidListAndQueue+0x74>)
 8058702:	4618      	mov	r0, r3
 8058704:	4b0b      	ldr	r3, [pc, #44]	; (8058734 <prvCheckForValidListAndQueue+0x78>)
 8058706:	4798      	blx	r3
 8058708:	4b0b      	ldr	r3, [pc, #44]	; (8058738 <prvCheckForValidListAndQueue+0x7c>)
 805870a:	4798      	blx	r3
 805870c:	bf00      	nop
 805870e:	bd80      	pop	{r7, pc}
 8058710:	0805ecc5 	.word	0x0805ecc5
 8058714:	20000310 	.word	0x20000310
 8058718:	200002e0 	.word	0x200002e0
 805871c:	0805c33d 	.word	0x0805c33d
 8058720:	200002f4 	.word	0x200002f4
 8058724:	20000308 	.word	0x20000308
 8058728:	2000030c 	.word	0x2000030c
 805872c:	0805d381 	.word	0x0805d381
 8058730:	08060ca8 	.word	0x08060ca8
 8058734:	0805d23d 	.word	0x0805d23d
 8058738:	0805eced 	.word	0x0805eced

0805873c <prvTimerTask>:
 805873c:	b580      	push	{r7, lr}
 805873e:	b084      	sub	sp, #16
 8058740:	af00      	add	r7, sp, #0
 8058742:	6078      	str	r0, [r7, #4]
 8058744:	f107 0308 	add.w	r3, r7, #8
 8058748:	4618      	mov	r0, r3
 805874a:	f000 f9bf 	bl	8058acc <prvGetNextExpireTime>
 805874e:	60f8      	str	r0, [r7, #12]
 8058750:	68bb      	ldr	r3, [r7, #8]
 8058752:	4619      	mov	r1, r3
 8058754:	68f8      	ldr	r0, [r7, #12]
 8058756:	f000 f9db 	bl	8058b10 <prvProcessTimerOrBlockTask>
 805875a:	f000 f801 	bl	8058760 <prvProcessReceivedCommands>
 805875e:	e7f1      	b.n	8058744 <prvTimerTask+0x8>

08058760 <prvProcessReceivedCommands>:
 8058760:	b580      	push	{r7, lr}
 8058762:	b088      	sub	sp, #32
 8058764:	af00      	add	r7, sp, #0
 8058766:	e0b9      	b.n	80588dc <prvProcessReceivedCommands+0x17c>
 8058768:	687b      	ldr	r3, [r7, #4]
 805876a:	2b00      	cmp	r3, #0
 805876c:	da10      	bge.n	8058790 <prvProcessReceivedCommands+0x30>
 805876e:	1d3b      	adds	r3, r7, #4
 8058770:	3304      	adds	r3, #4
 8058772:	61fb      	str	r3, [r7, #28]
 8058774:	69fb      	ldr	r3, [r7, #28]
 8058776:	2b00      	cmp	r3, #0
 8058778:	d102      	bne.n	8058780 <prvProcessReceivedCommands+0x20>
 805877a:	4b60      	ldr	r3, [pc, #384]	; (80588fc <prvProcessReceivedCommands+0x19c>)
 805877c:	4798      	blx	r3
 805877e:	e7fe      	b.n	805877e <prvProcessReceivedCommands+0x1e>
 8058780:	69fb      	ldr	r3, [r7, #28]
 8058782:	681b      	ldr	r3, [r3, #0]
 8058784:	69fa      	ldr	r2, [r7, #28]
 8058786:	6850      	ldr	r0, [r2, #4]
 8058788:	69fa      	ldr	r2, [r7, #28]
 805878a:	6892      	ldr	r2, [r2, #8]
 805878c:	4611      	mov	r1, r2
 805878e:	4798      	blx	r3
 8058790:	687b      	ldr	r3, [r7, #4]
 8058792:	2b00      	cmp	r3, #0
 8058794:	f2c0 80a1 	blt.w	80588da <prvProcessReceivedCommands+0x17a>
 8058798:	68fb      	ldr	r3, [r7, #12]
 805879a:	61bb      	str	r3, [r7, #24]
 805879c:	69bb      	ldr	r3, [r7, #24]
 805879e:	695b      	ldr	r3, [r3, #20]
 80587a0:	2b00      	cmp	r3, #0
 80587a2:	d004      	beq.n	80587ae <prvProcessReceivedCommands+0x4e>
 80587a4:	69bb      	ldr	r3, [r7, #24]
 80587a6:	3304      	adds	r3, #4
 80587a8:	4618      	mov	r0, r3
 80587aa:	4b55      	ldr	r3, [pc, #340]	; (8058900 <prvProcessReceivedCommands+0x1a0>)
 80587ac:	4798      	blx	r3
 80587ae:	463b      	mov	r3, r7
 80587b0:	4618      	mov	r0, r3
 80587b2:	f000 f969 	bl	8058a88 <prvSampleTimeNow>
 80587b6:	6178      	str	r0, [r7, #20]
 80587b8:	687b      	ldr	r3, [r7, #4]
 80587ba:	2b09      	cmp	r3, #9
 80587bc:	d05a      	beq.n	8058874 <prvProcessReceivedCommands+0x114>
 80587be:	2b09      	cmp	r3, #9
 80587c0:	f300 808c 	bgt.w	80588dc <prvProcessReceivedCommands+0x17c>
 80587c4:	2b08      	cmp	r3, #8
 80587c6:	d04b      	beq.n	8058860 <prvProcessReceivedCommands+0x100>
 80587c8:	2b08      	cmp	r3, #8
 80587ca:	f300 8087 	bgt.w	80588dc <prvProcessReceivedCommands+0x17c>
 80587ce:	2b07      	cmp	r3, #7
 80587d0:	f300 8084 	bgt.w	80588dc <prvProcessReceivedCommands+0x17c>
 80587d4:	2b06      	cmp	r3, #6
 80587d6:	da0f      	bge.n	80587f8 <prvProcessReceivedCommands+0x98>
 80587d8:	2b05      	cmp	r3, #5
 80587da:	d068      	beq.n	80588ae <prvProcessReceivedCommands+0x14e>
 80587dc:	2b05      	cmp	r3, #5
 80587de:	dc7d      	bgt.n	80588dc <prvProcessReceivedCommands+0x17c>
 80587e0:	2b04      	cmp	r3, #4
 80587e2:	d047      	beq.n	8058874 <prvProcessReceivedCommands+0x114>
 80587e4:	2b04      	cmp	r3, #4
 80587e6:	dc79      	bgt.n	80588dc <prvProcessReceivedCommands+0x17c>
 80587e8:	2b02      	cmp	r3, #2
 80587ea:	dc02      	bgt.n	80587f2 <prvProcessReceivedCommands+0x92>
 80587ec:	2b00      	cmp	r3, #0
 80587ee:	dc03      	bgt.n	80587f8 <prvProcessReceivedCommands+0x98>
 80587f0:	e072      	b.n	80588d8 <prvProcessReceivedCommands+0x178>
 80587f2:	2b03      	cmp	r3, #3
 80587f4:	d034      	beq.n	8058860 <prvProcessReceivedCommands+0x100>
 80587f6:	e06f      	b.n	80588d8 <prvProcessReceivedCommands+0x178>
 80587f8:	69bb      	ldr	r3, [r7, #24]
 80587fa:	f893 3028 	ldrb.w	r3, [r3, #40]	; 0x28
 80587fe:	f043 0301 	orr.w	r3, r3, #1
 8058802:	b2da      	uxtb	r2, r3
 8058804:	69bb      	ldr	r3, [r7, #24]
 8058806:	f883 2028 	strb.w	r2, [r3, #40]	; 0x28
 805880a:	68ba      	ldr	r2, [r7, #8]
 805880c:	69bb      	ldr	r3, [r7, #24]
 805880e:	699b      	ldr	r3, [r3, #24]
 8058810:	18d1      	adds	r1, r2, r3
 8058812:	68bb      	ldr	r3, [r7, #8]
 8058814:	697a      	ldr	r2, [r7, #20]
 8058816:	69b8      	ldr	r0, [r7, #24]
 8058818:	f000 f87a 	bl	8058910 <prvInsertTimerInActiveList>
 805881c:	4603      	mov	r3, r0
 805881e:	2b00      	cmp	r3, #0
 8058820:	d05c      	beq.n	80588dc <prvProcessReceivedCommands+0x17c>
 8058822:	69bb      	ldr	r3, [r7, #24]
 8058824:	f893 3028 	ldrb.w	r3, [r3, #40]	; 0x28
 8058828:	f003 0304 	and.w	r3, r3, #4
 805882c:	2b00      	cmp	r3, #0
 805882e:	d009      	beq.n	8058844 <prvProcessReceivedCommands+0xe4>
 8058830:	68ba      	ldr	r2, [r7, #8]
 8058832:	69bb      	ldr	r3, [r7, #24]
 8058834:	699b      	ldr	r3, [r3, #24]
 8058836:	4413      	add	r3, r2
 8058838:	697a      	ldr	r2, [r7, #20]
 805883a:	4619      	mov	r1, r3
 805883c:	69b8      	ldr	r0, [r7, #24]
 805883e:	f000 f8ab 	bl	8058998 <prvReloadTimer>
 8058842:	e008      	b.n	8058856 <prvProcessReceivedCommands+0xf6>
 8058844:	69bb      	ldr	r3, [r7, #24]
 8058846:	f893 3028 	ldrb.w	r3, [r3, #40]	; 0x28
 805884a:	f023 0301 	bic.w	r3, r3, #1
 805884e:	b2da      	uxtb	r2, r3
 8058850:	69bb      	ldr	r3, [r7, #24]
 8058852:	f883 2028 	strb.w	r2, [r3, #40]	; 0x28
 8058856:	69bb      	ldr	r3, [r7, #24]
 8058858:	6a1b      	ldr	r3, [r3, #32]
 805885a:	69b8      	ldr	r0, [r7, #24]
 805885c:	4798      	blx	r3
 805885e:	e03d      	b.n	80588dc <prvProcessReceivedCommands+0x17c>
 8058860:	69bb      	ldr	r3, [r7, #24]
 8058862:	f893 3028 	ldrb.w	r3, [r3, #40]	; 0x28
 8058866:	f023 0301 	bic.w	r3, r3, #1
 805886a:	b2da      	uxtb	r2, r3
 805886c:	69bb      	ldr	r3, [r7, #24]
 805886e:	f883 2028 	strb.w	r2, [r3, #40]	; 0x28
 8058872:	e033      	b.n	80588dc <prvProcessReceivedCommands+0x17c>
 8058874:	69bb      	ldr	r3, [r7, #24]
 8058876:	f893 3028 	ldrb.w	r3, [r3, #40]	; 0x28
 805887a:	f043 0301 	orr.w	r3, r3, #1
 805887e:	b2da      	uxtb	r2, r3
 8058880:	69bb      	ldr	r3, [r7, #24]
 8058882:	f883 2028 	strb.w	r2, [r3, #40]	; 0x28
 8058886:	68ba      	ldr	r2, [r7, #8]
 8058888:	69bb      	ldr	r3, [r7, #24]
 805888a:	619a      	str	r2, [r3, #24]
 805888c:	69bb      	ldr	r3, [r7, #24]
 805888e:	699b      	ldr	r3, [r3, #24]
 8058890:	2b00      	cmp	r3, #0
 8058892:	d102      	bne.n	805889a <prvProcessReceivedCommands+0x13a>
 8058894:	4b19      	ldr	r3, [pc, #100]	; (80588fc <prvProcessReceivedCommands+0x19c>)
 8058896:	4798      	blx	r3
 8058898:	e7fe      	b.n	8058898 <prvProcessReceivedCommands+0x138>
 805889a:	69bb      	ldr	r3, [r7, #24]
 805889c:	699a      	ldr	r2, [r3, #24]
 805889e:	697b      	ldr	r3, [r7, #20]
 80588a0:	18d1      	adds	r1, r2, r3
 80588a2:	697b      	ldr	r3, [r7, #20]
 80588a4:	697a      	ldr	r2, [r7, #20]
 80588a6:	69b8      	ldr	r0, [r7, #24]
 80588a8:	f000 f832 	bl	8058910 <prvInsertTimerInActiveList>
 80588ac:	e016      	b.n	80588dc <prvProcessReceivedCommands+0x17c>
 80588ae:	69bb      	ldr	r3, [r7, #24]
 80588b0:	f893 3028 	ldrb.w	r3, [r3, #40]	; 0x28
 80588b4:	f003 0302 	and.w	r3, r3, #2
 80588b8:	2b00      	cmp	r3, #0
 80588ba:	d103      	bne.n	80588c4 <prvProcessReceivedCommands+0x164>
 80588bc:	69b8      	ldr	r0, [r7, #24]
 80588be:	4b11      	ldr	r3, [pc, #68]	; (8058904 <prvProcessReceivedCommands+0x1a4>)
 80588c0:	4798      	blx	r3
 80588c2:	e00b      	b.n	80588dc <prvProcessReceivedCommands+0x17c>
 80588c4:	69bb      	ldr	r3, [r7, #24]
 80588c6:	f893 3028 	ldrb.w	r3, [r3, #40]	; 0x28
 80588ca:	f023 0301 	bic.w	r3, r3, #1
 80588ce:	b2da      	uxtb	r2, r3
 80588d0:	69bb      	ldr	r3, [r7, #24]
 80588d2:	f883 2028 	strb.w	r2, [r3, #40]	; 0x28
 80588d6:	e001      	b.n	80588dc <prvProcessReceivedCommands+0x17c>
 80588d8:	e000      	b.n	80588dc <prvProcessReceivedCommands+0x17c>
 80588da:	bf00      	nop
 80588dc:	4b0a      	ldr	r3, [pc, #40]	; (8058908 <prvProcessReceivedCommands+0x1a8>)
 80588de:	681b      	ldr	r3, [r3, #0]
 80588e0:	1d39      	adds	r1, r7, #4
 80588e2:	2200      	movs	r2, #0
 80588e4:	4618      	mov	r0, r3
 80588e6:	4b09      	ldr	r3, [pc, #36]	; (805890c <prvProcessReceivedCommands+0x1ac>)
 80588e8:	4798      	blx	r3
 80588ea:	4603      	mov	r3, r0
 80588ec:	2b00      	cmp	r3, #0
 80588ee:	f47f af3b 	bne.w	8058768 <prvProcessReceivedCommands+0x8>
 80588f2:	bf00      	nop
 80588f4:	bf00      	nop
 80588f6:	3720      	adds	r7, #32
 80588f8:	46bd      	mov	sp, r7
 80588fa:	bd80      	pop	{r7, pc}
 80588fc:	0805f1c7 	.word	0x0805f1c7
 8058900:	0805c449 	.word	0x0805c449
 8058904:	0805baa1 	.word	0x0805baa1
 8058908:	20000310 	.word	0x20000310
 805890c:	0805c895 	.word	0x0805c895

08058910 <prvInsertTimerInActiveList>:
 8058910:	b580      	push	{r7, lr}
 8058912:	b086      	sub	sp, #24
 8058914:	af00      	add	r7, sp, #0
 8058916:	60f8      	str	r0, [r7, #12]
 8058918:	60b9      	str	r1, [r7, #8]
 805891a:	607a      	str	r2, [r7, #4]
 805891c:	603b      	str	r3, [r7, #0]
 805891e:	2300      	movs	r3, #0
 8058920:	617b      	str	r3, [r7, #20]
 8058922:	68fb      	ldr	r3, [r7, #12]
 8058924:	68ba      	ldr	r2, [r7, #8]
 8058926:	605a      	str	r2, [r3, #4]
 8058928:	68fb      	ldr	r3, [r7, #12]
 805892a:	68fa      	ldr	r2, [r7, #12]
 805892c:	611a      	str	r2, [r3, #16]
 805892e:	68ba      	ldr	r2, [r7, #8]
 8058930:	687b      	ldr	r3, [r7, #4]
 8058932:	429a      	cmp	r2, r3
 8058934:	d812      	bhi.n	805895c <prvInsertTimerInActiveList+0x4c>
 8058936:	687a      	ldr	r2, [r7, #4]
 8058938:	683b      	ldr	r3, [r7, #0]
 805893a:	1ad2      	subs	r2, r2, r3
 805893c:	68fb      	ldr	r3, [r7, #12]
 805893e:	699b      	ldr	r3, [r3, #24]
 8058940:	429a      	cmp	r2, r3
 8058942:	d302      	bcc.n	805894a <prvInsertTimerInActiveList+0x3a>
 8058944:	2301      	movs	r3, #1
 8058946:	617b      	str	r3, [r7, #20]
 8058948:	e01b      	b.n	8058982 <prvInsertTimerInActiveList+0x72>
 805894a:	4b10      	ldr	r3, [pc, #64]	; (805898c <prvInsertTimerInActiveList+0x7c>)
 805894c:	681a      	ldr	r2, [r3, #0]
 805894e:	68fb      	ldr	r3, [r7, #12]
 8058950:	3304      	adds	r3, #4
 8058952:	4619      	mov	r1, r3
 8058954:	4610      	mov	r0, r2
 8058956:	4b0e      	ldr	r3, [pc, #56]	; (8058990 <prvInsertTimerInActiveList+0x80>)
 8058958:	4798      	blx	r3
 805895a:	e012      	b.n	8058982 <prvInsertTimerInActiveList+0x72>
 805895c:	687a      	ldr	r2, [r7, #4]
 805895e:	683b      	ldr	r3, [r7, #0]
 8058960:	429a      	cmp	r2, r3
 8058962:	d206      	bcs.n	8058972 <prvInsertTimerInActiveList+0x62>
 8058964:	68ba      	ldr	r2, [r7, #8]
 8058966:	683b      	ldr	r3, [r7, #0]
 8058968:	429a      	cmp	r2, r3
 805896a:	d302      	bcc.n	8058972 <prvInsertTimerInActiveList+0x62>
 805896c:	2301      	movs	r3, #1
 805896e:	617b      	str	r3, [r7, #20]
 8058970:	e007      	b.n	8058982 <prvInsertTimerInActiveList+0x72>
 8058972:	4b08      	ldr	r3, [pc, #32]	; (8058994 <prvInsertTimerInActiveList+0x84>)
 8058974:	681a      	ldr	r2, [r3, #0]
 8058976:	68fb      	ldr	r3, [r7, #12]
 8058978:	3304      	adds	r3, #4
 805897a:	4619      	mov	r1, r3
 805897c:	4610      	mov	r0, r2
 805897e:	4b04      	ldr	r3, [pc, #16]	; (8058990 <prvInsertTimerInActiveList+0x80>)
 8058980:	4798      	blx	r3
 8058982:	697b      	ldr	r3, [r7, #20]
 8058984:	4618      	mov	r0, r3
 8058986:	3718      	adds	r7, #24
 8058988:	46bd      	mov	sp, r7
 805898a:	bd80      	pop	{r7, pc}
 805898c:	2000030c 	.word	0x2000030c
 8058990:	0805c393 	.word	0x0805c393
 8058994:	20000308 	.word	0x20000308

08058998 <prvReloadTimer>:
 8058998:	b580      	push	{r7, lr}
 805899a:	b084      	sub	sp, #16
 805899c:	af00      	add	r7, sp, #0
 805899e:	60f8      	str	r0, [r7, #12]
 80589a0:	60b9      	str	r1, [r7, #8]
 80589a2:	607a      	str	r2, [r7, #4]
 80589a4:	e008      	b.n	80589b8 <prvReloadTimer+0x20>
 80589a6:	68fb      	ldr	r3, [r7, #12]
 80589a8:	699b      	ldr	r3, [r3, #24]
 80589aa:	68ba      	ldr	r2, [r7, #8]
 80589ac:	4413      	add	r3, r2
 80589ae:	60bb      	str	r3, [r7, #8]
 80589b0:	68fb      	ldr	r3, [r7, #12]
 80589b2:	6a1b      	ldr	r3, [r3, #32]
 80589b4:	68f8      	ldr	r0, [r7, #12]
 80589b6:	4798      	blx	r3
 80589b8:	68fb      	ldr	r3, [r7, #12]
 80589ba:	699a      	ldr	r2, [r3, #24]
 80589bc:	68bb      	ldr	r3, [r7, #8]
 80589be:	18d1      	adds	r1, r2, r3
 80589c0:	68bb      	ldr	r3, [r7, #8]
 80589c2:	687a      	ldr	r2, [r7, #4]
 80589c4:	68f8      	ldr	r0, [r7, #12]
 80589c6:	f7ff ffa3 	bl	8058910 <prvInsertTimerInActiveList>
 80589ca:	4603      	mov	r3, r0
 80589cc:	2b00      	cmp	r3, #0
 80589ce:	d1ea      	bne.n	80589a6 <prvReloadTimer+0xe>
 80589d0:	bf00      	nop
 80589d2:	bf00      	nop
 80589d4:	3710      	adds	r7, #16
 80589d6:	46bd      	mov	sp, r7
 80589d8:	bd80      	pop	{r7, pc}

080589da <prvProcessExpiredTimer>:
 80589da:	b580      	push	{r7, lr}
 80589dc:	b084      	sub	sp, #16
 80589de:	af00      	add	r7, sp, #0
 80589e0:	6078      	str	r0, [r7, #4]
 80589e2:	6039      	str	r1, [r7, #0]
 80589e4:	4b13      	ldr	r3, [pc, #76]	; (8058a34 <prvProcessExpiredTimer+0x5a>)
 80589e6:	681b      	ldr	r3, [r3, #0]
 80589e8:	68db      	ldr	r3, [r3, #12]
 80589ea:	68db      	ldr	r3, [r3, #12]
 80589ec:	60fb      	str	r3, [r7, #12]
 80589ee:	68fb      	ldr	r3, [r7, #12]
 80589f0:	3304      	adds	r3, #4
 80589f2:	4618      	mov	r0, r3
 80589f4:	4b10      	ldr	r3, [pc, #64]	; (8058a38 <prvProcessExpiredTimer+0x5e>)
 80589f6:	4798      	blx	r3
 80589f8:	68fb      	ldr	r3, [r7, #12]
 80589fa:	f893 3028 	ldrb.w	r3, [r3, #40]	; 0x28
 80589fe:	f003 0304 	and.w	r3, r3, #4
 8058a02:	2b00      	cmp	r3, #0
 8058a04:	d005      	beq.n	8058a12 <prvProcessExpiredTimer+0x38>
 8058a06:	683a      	ldr	r2, [r7, #0]
 8058a08:	6879      	ldr	r1, [r7, #4]
 8058a0a:	68f8      	ldr	r0, [r7, #12]
 8058a0c:	f7ff ffc4 	bl	8058998 <prvReloadTimer>
 8058a10:	e008      	b.n	8058a24 <prvProcessExpiredTimer+0x4a>
 8058a12:	68fb      	ldr	r3, [r7, #12]
 8058a14:	f893 3028 	ldrb.w	r3, [r3, #40]	; 0x28
 8058a18:	f023 0301 	bic.w	r3, r3, #1
 8058a1c:	b2da      	uxtb	r2, r3
 8058a1e:	68fb      	ldr	r3, [r7, #12]
 8058a20:	f883 2028 	strb.w	r2, [r3, #40]	; 0x28
 8058a24:	68fb      	ldr	r3, [r7, #12]
 8058a26:	6a1b      	ldr	r3, [r3, #32]
 8058a28:	68f8      	ldr	r0, [r7, #12]
 8058a2a:	4798      	blx	r3
 8058a2c:	bf00      	nop
 8058a2e:	3710      	adds	r7, #16
 8058a30:	46bd      	mov	sp, r7
 8058a32:	bd80      	pop	{r7, pc}
 8058a34:	20000308 	.word	0x20000308
 8058a38:	0805c449 	.word	0x0805c449

08058a3c <prvSwitchTimerLists>:
 8058a3c:	b580      	push	{r7, lr}
 8058a3e:	b082      	sub	sp, #8
 8058a40:	af00      	add	r7, sp, #0
 8058a42:	e009      	b.n	8058a58 <prvSwitchTimerLists+0x1c>
 8058a44:	4b0e      	ldr	r3, [pc, #56]	; (8058a80 <prvSwitchTimerLists+0x44>)
 8058a46:	681b      	ldr	r3, [r3, #0]
 8058a48:	68db      	ldr	r3, [r3, #12]
 8058a4a:	681b      	ldr	r3, [r3, #0]
 8058a4c:	603b      	str	r3, [r7, #0]
 8058a4e:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 8058a52:	6838      	ldr	r0, [r7, #0]
 8058a54:	f7ff ffc1 	bl	80589da <prvProcessExpiredTimer>
 8058a58:	4b09      	ldr	r3, [pc, #36]	; (8058a80 <prvSwitchTimerLists+0x44>)
 8058a5a:	681b      	ldr	r3, [r3, #0]
 8058a5c:	681b      	ldr	r3, [r3, #0]
 8058a5e:	2b00      	cmp	r3, #0
 8058a60:	d1f0      	bne.n	8058a44 <prvSwitchTimerLists+0x8>
 8058a62:	4b07      	ldr	r3, [pc, #28]	; (8058a80 <prvSwitchTimerLists+0x44>)
 8058a64:	681b      	ldr	r3, [r3, #0]
 8058a66:	607b      	str	r3, [r7, #4]
 8058a68:	4b06      	ldr	r3, [pc, #24]	; (8058a84 <prvSwitchTimerLists+0x48>)
 8058a6a:	681b      	ldr	r3, [r3, #0]
 8058a6c:	4a04      	ldr	r2, [pc, #16]	; (8058a80 <prvSwitchTimerLists+0x44>)
 8058a6e:	6013      	str	r3, [r2, #0]
 8058a70:	4a04      	ldr	r2, [pc, #16]	; (8058a84 <prvSwitchTimerLists+0x48>)
 8058a72:	687b      	ldr	r3, [r7, #4]
 8058a74:	6013      	str	r3, [r2, #0]
 8058a76:	bf00      	nop
 8058a78:	3708      	adds	r7, #8
 8058a7a:	46bd      	mov	sp, r7
 8058a7c:	bd80      	pop	{r7, pc}
 8058a7e:	bf00      	nop
 8058a80:	20000308 	.word	0x20000308
 8058a84:	2000030c 	.word	0x2000030c

08058a88 <prvSampleTimeNow>:
 8058a88:	b580      	push	{r7, lr}
 8058a8a:	b084      	sub	sp, #16
 8058a8c:	af00      	add	r7, sp, #0
 8058a8e:	6078      	str	r0, [r7, #4]
 8058a90:	4b0c      	ldr	r3, [pc, #48]	; (8058ac4 <prvSampleTimeNow+0x3c>)
 8058a92:	4798      	blx	r3
 8058a94:	60f8      	str	r0, [r7, #12]
 8058a96:	4b0c      	ldr	r3, [pc, #48]	; (8058ac8 <prvSampleTimeNow+0x40>)
 8058a98:	681b      	ldr	r3, [r3, #0]
 8058a9a:	68fa      	ldr	r2, [r7, #12]
 8058a9c:	429a      	cmp	r2, r3
 8058a9e:	d205      	bcs.n	8058aac <prvSampleTimeNow+0x24>
 8058aa0:	f7ff ffcc 	bl	8058a3c <prvSwitchTimerLists>
 8058aa4:	687b      	ldr	r3, [r7, #4]
 8058aa6:	2201      	movs	r2, #1
 8058aa8:	601a      	str	r2, [r3, #0]
 8058aaa:	e002      	b.n	8058ab2 <prvSampleTimeNow+0x2a>
 8058aac:	687b      	ldr	r3, [r7, #4]
 8058aae:	2200      	movs	r2, #0
 8058ab0:	601a      	str	r2, [r3, #0]
 8058ab2:	4a05      	ldr	r2, [pc, #20]	; (8058ac8 <prvSampleTimeNow+0x40>)
 8058ab4:	68fb      	ldr	r3, [r7, #12]
 8058ab6:	6013      	str	r3, [r2, #0]
 8058ab8:	68fb      	ldr	r3, [r7, #12]
 8058aba:	4618      	mov	r0, r3
 8058abc:	3710      	adds	r7, #16
 8058abe:	46bd      	mov	sp, r7
 8058ac0:	bd80      	pop	{r7, pc}
 8058ac2:	bf00      	nop
 8058ac4:	0805600d 	.word	0x0805600d
 8058ac8:	20000318 	.word	0x20000318

08058acc <prvGetNextExpireTime>:
 8058acc:	b480      	push	{r7}
 8058ace:	b085      	sub	sp, #20
 8058ad0:	af00      	add	r7, sp, #0
 8058ad2:	6078      	str	r0, [r7, #4]
 8058ad4:	4b0d      	ldr	r3, [pc, #52]	; (8058b0c <prvGetNextExpireTime+0x40>)
 8058ad6:	681b      	ldr	r3, [r3, #0]
 8058ad8:	681b      	ldr	r3, [r3, #0]
 8058ada:	2b00      	cmp	r3, #0
 8058adc:	d101      	bne.n	8058ae2 <prvGetNextExpireTime+0x16>
 8058ade:	2201      	movs	r2, #1
 8058ae0:	e000      	b.n	8058ae4 <prvGetNextExpireTime+0x18>
 8058ae2:	2200      	movs	r2, #0
 8058ae4:	687b      	ldr	r3, [r7, #4]
 8058ae6:	601a      	str	r2, [r3, #0]
 8058ae8:	687b      	ldr	r3, [r7, #4]
 8058aea:	681b      	ldr	r3, [r3, #0]
 8058aec:	2b00      	cmp	r3, #0
 8058aee:	d105      	bne.n	8058afc <prvGetNextExpireTime+0x30>
 8058af0:	4b06      	ldr	r3, [pc, #24]	; (8058b0c <prvGetNextExpireTime+0x40>)
 8058af2:	681b      	ldr	r3, [r3, #0]
 8058af4:	68db      	ldr	r3, [r3, #12]
 8058af6:	681b      	ldr	r3, [r3, #0]
 8058af8:	60fb      	str	r3, [r7, #12]
 8058afa:	e001      	b.n	8058b00 <prvGetNextExpireTime+0x34>
 8058afc:	2300      	movs	r3, #0
 8058afe:	60fb      	str	r3, [r7, #12]
 8058b00:	68fb      	ldr	r3, [r7, #12]
 8058b02:	4618      	mov	r0, r3
 8058b04:	3714      	adds	r7, #20
 8058b06:	46bd      	mov	sp, r7
 8058b08:	bc80      	pop	{r7}
 8058b0a:	4770      	bx	lr
 8058b0c:	20000308 	.word	0x20000308

08058b10 <prvProcessTimerOrBlockTask>:
 8058b10:	b580      	push	{r7, lr}
 8058b12:	b084      	sub	sp, #16
 8058b14:	af00      	add	r7, sp, #0
 8058b16:	6078      	str	r0, [r7, #4]
 8058b18:	6039      	str	r1, [r7, #0]
 8058b1a:	4b1e      	ldr	r3, [pc, #120]	; (8058b94 <prvProcessTimerOrBlockTask+0x84>)
 8058b1c:	4798      	blx	r3
 8058b1e:	f107 0308 	add.w	r3, r7, #8
 8058b22:	4618      	mov	r0, r3
 8058b24:	f7ff ffb0 	bl	8058a88 <prvSampleTimeNow>
 8058b28:	60f8      	str	r0, [r7, #12]
 8058b2a:	68bb      	ldr	r3, [r7, #8]
 8058b2c:	2b00      	cmp	r3, #0
 8058b2e:	d12a      	bne.n	8058b86 <prvProcessTimerOrBlockTask+0x76>
 8058b30:	683b      	ldr	r3, [r7, #0]
 8058b32:	2b00      	cmp	r3, #0
 8058b34:	d10a      	bne.n	8058b4c <prvProcessTimerOrBlockTask+0x3c>
 8058b36:	687a      	ldr	r2, [r7, #4]
 8058b38:	68fb      	ldr	r3, [r7, #12]
 8058b3a:	429a      	cmp	r2, r3
 8058b3c:	d806      	bhi.n	8058b4c <prvProcessTimerOrBlockTask+0x3c>
 8058b3e:	4b16      	ldr	r3, [pc, #88]	; (8058b98 <prvProcessTimerOrBlockTask+0x88>)
 8058b40:	4798      	blx	r3
 8058b42:	68f9      	ldr	r1, [r7, #12]
 8058b44:	6878      	ldr	r0, [r7, #4]
 8058b46:	f7ff ff48 	bl	80589da <prvProcessExpiredTimer>
 8058b4a:	e01e      	b.n	8058b8a <prvProcessTimerOrBlockTask+0x7a>
 8058b4c:	683b      	ldr	r3, [r7, #0]
 8058b4e:	2b00      	cmp	r3, #0
 8058b50:	d008      	beq.n	8058b64 <prvProcessTimerOrBlockTask+0x54>
 8058b52:	4b12      	ldr	r3, [pc, #72]	; (8058b9c <prvProcessTimerOrBlockTask+0x8c>)
 8058b54:	681b      	ldr	r3, [r3, #0]
 8058b56:	681b      	ldr	r3, [r3, #0]
 8058b58:	2b00      	cmp	r3, #0
 8058b5a:	d101      	bne.n	8058b60 <prvProcessTimerOrBlockTask+0x50>
 8058b5c:	2301      	movs	r3, #1
 8058b5e:	e000      	b.n	8058b62 <prvProcessTimerOrBlockTask+0x52>
 8058b60:	2300      	movs	r3, #0
 8058b62:	603b      	str	r3, [r7, #0]
 8058b64:	4b0e      	ldr	r3, [pc, #56]	; (8058ba0 <prvProcessTimerOrBlockTask+0x90>)
 8058b66:	6818      	ldr	r0, [r3, #0]
 8058b68:	687a      	ldr	r2, [r7, #4]
 8058b6a:	68fb      	ldr	r3, [r7, #12]
 8058b6c:	1ad3      	subs	r3, r2, r3
 8058b6e:	683a      	ldr	r2, [r7, #0]
 8058b70:	4619      	mov	r1, r3
 8058b72:	4b0c      	ldr	r3, [pc, #48]	; (8058ba4 <prvProcessTimerOrBlockTask+0x94>)
 8058b74:	4798      	blx	r3
 8058b76:	4b08      	ldr	r3, [pc, #32]	; (8058b98 <prvProcessTimerOrBlockTask+0x88>)
 8058b78:	4798      	blx	r3
 8058b7a:	4603      	mov	r3, r0
 8058b7c:	2b00      	cmp	r3, #0
 8058b7e:	d104      	bne.n	8058b8a <prvProcessTimerOrBlockTask+0x7a>
 8058b80:	4b09      	ldr	r3, [pc, #36]	; (8058ba8 <prvProcessTimerOrBlockTask+0x98>)
 8058b82:	4798      	blx	r3
 8058b84:	e001      	b.n	8058b8a <prvProcessTimerOrBlockTask+0x7a>
 8058b86:	4b04      	ldr	r3, [pc, #16]	; (8058b98 <prvProcessTimerOrBlockTask+0x88>)
 8058b88:	4798      	blx	r3
 8058b8a:	bf00      	nop
 8058b8c:	3710      	adds	r7, #16
 8058b8e:	46bd      	mov	sp, r7
 8058b90:	bd80      	pop	{r7, pc}
 8058b92:	bf00      	nop
 8058b94:	08055dbd 	.word	0x08055dbd
 8058b98:	08055dd9 	.word	0x08055dd9
 8058b9c:	2000030c 	.word	0x2000030c
 8058ba0:	20000310 	.word	0x20000310
 8058ba4:	0805d415 	.word	0x0805d415
 8058ba8:	0805eca5 	.word	0x0805eca5

08058bac <prvInitialiseNewTimer>:
 8058bac:	b580      	push	{r7, lr}
 8058bae:	b084      	sub	sp, #16
 8058bb0:	af00      	add	r7, sp, #0
 8058bb2:	60f8      	str	r0, [r7, #12]
 8058bb4:	60b9      	str	r1, [r7, #8]
 8058bb6:	607a      	str	r2, [r7, #4]
 8058bb8:	603b      	str	r3, [r7, #0]
 8058bba:	68bb      	ldr	r3, [r7, #8]
 8058bbc:	2b00      	cmp	r3, #0
 8058bbe:	d102      	bne.n	8058bc6 <prvInitialiseNewTimer+0x1a>
 8058bc0:	4b12      	ldr	r3, [pc, #72]	; (8058c0c <prvInitialiseNewTimer+0x60>)
 8058bc2:	4798      	blx	r3
 8058bc4:	e7fe      	b.n	8058bc4 <prvInitialiseNewTimer+0x18>
 8058bc6:	f7ff fd79 	bl	80586bc <prvCheckForValidListAndQueue>
 8058bca:	69fb      	ldr	r3, [r7, #28]
 8058bcc:	68fa      	ldr	r2, [r7, #12]
 8058bce:	601a      	str	r2, [r3, #0]
 8058bd0:	69fb      	ldr	r3, [r7, #28]
 8058bd2:	68ba      	ldr	r2, [r7, #8]
 8058bd4:	619a      	str	r2, [r3, #24]
 8058bd6:	69fb      	ldr	r3, [r7, #28]
 8058bd8:	683a      	ldr	r2, [r7, #0]
 8058bda:	61da      	str	r2, [r3, #28]
 8058bdc:	69fb      	ldr	r3, [r7, #28]
 8058bde:	69ba      	ldr	r2, [r7, #24]
 8058be0:	621a      	str	r2, [r3, #32]
 8058be2:	69fb      	ldr	r3, [r7, #28]
 8058be4:	3304      	adds	r3, #4
 8058be6:	4618      	mov	r0, r3
 8058be8:	4b09      	ldr	r3, [pc, #36]	; (8058c10 <prvInitialiseNewTimer+0x64>)
 8058bea:	4798      	blx	r3
 8058bec:	687b      	ldr	r3, [r7, #4]
 8058bee:	2b00      	cmp	r3, #0
 8058bf0:	d008      	beq.n	8058c04 <prvInitialiseNewTimer+0x58>
 8058bf2:	69fb      	ldr	r3, [r7, #28]
 8058bf4:	f893 3028 	ldrb.w	r3, [r3, #40]	; 0x28
 8058bf8:	f043 0304 	orr.w	r3, r3, #4
 8058bfc:	b2da      	uxtb	r2, r3
 8058bfe:	69fb      	ldr	r3, [r7, #28]
 8058c00:	f883 2028 	strb.w	r2, [r3, #40]	; 0x28
 8058c04:	bf00      	nop
 8058c06:	3710      	adds	r7, #16
 8058c08:	46bd      	mov	sp, r7
 8058c0a:	bd80      	pop	{r7, pc}
 8058c0c:	0805f1c7 	.word	0x0805f1c7
 8058c10:	0805c37b 	.word	0x0805c37b

08058c14 <MPU_xTaskCreate>:
 8058c14:	b590      	push	{r4, r7, lr}
 8058c16:	b08b      	sub	sp, #44	; 0x2c
 8058c18:	af02      	add	r7, sp, #8
 8058c1a:	60f8      	str	r0, [r7, #12]
 8058c1c:	60b9      	str	r1, [r7, #8]
 8058c1e:	603b      	str	r3, [r7, #0]
 8058c20:	4613      	mov	r3, r2
 8058c22:	80fb      	strh	r3, [r7, #6]
 8058c24:	2300      	movs	r3, #0
 8058c26:	61fb      	str	r3, [r7, #28]
 8058c28:	2300      	movs	r3, #0
 8058c2a:	617b      	str	r3, [r7, #20]
 8058c2c:	f000 ff8c 	bl	8059b48 <MPU_GetFreeIndexInKernelObjectPool>
 8058c30:	61b8      	str	r0, [r7, #24]
 8058c32:	69bb      	ldr	r3, [r7, #24]
 8058c34:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 8058c38:	d026      	beq.n	8058c88 <MPU_xTaskCreate+0x74>
 8058c3a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8058c3c:	2b00      	cmp	r3, #0
 8058c3e:	da23      	bge.n	8058c88 <MPU_xTaskCreate+0x74>
 8058c40:	88fa      	ldrh	r2, [r7, #6]
 8058c42:	f107 0314 	add.w	r3, r7, #20
 8058c46:	9301      	str	r3, [sp, #4]
 8058c48:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8058c4a:	9300      	str	r3, [sp, #0]
 8058c4c:	683b      	ldr	r3, [r7, #0]
 8058c4e:	68b9      	ldr	r1, [r7, #8]
 8058c50:	68f8      	ldr	r0, [r7, #12]
 8058c52:	4c10      	ldr	r4, [pc, #64]	; (8058c94 <MPU_xTaskCreate+0x80>)
 8058c54:	47a0      	blx	r4
 8058c56:	61f8      	str	r0, [r7, #28]
 8058c58:	69fb      	ldr	r3, [r7, #28]
 8058c5a:	2b01      	cmp	r3, #1
 8058c5c:	d111      	bne.n	8058c82 <MPU_xTaskCreate+0x6e>
 8058c5e:	697b      	ldr	r3, [r7, #20]
 8058c60:	2b00      	cmp	r3, #0
 8058c62:	d00e      	beq.n	8058c82 <MPU_xTaskCreate+0x6e>
 8058c64:	6979      	ldr	r1, [r7, #20]
 8058c66:	2302      	movs	r3, #2
 8058c68:	2200      	movs	r2, #0
 8058c6a:	69b8      	ldr	r0, [r7, #24]
 8058c6c:	f001 f81e 	bl	8059cac <MPU_StoreHandleAndDataAtIndex>
 8058c70:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8058c72:	2b00      	cmp	r3, #0
 8058c74:	d008      	beq.n	8058c88 <MPU_xTaskCreate+0x74>
 8058c76:	69bb      	ldr	r3, [r7, #24]
 8058c78:	3301      	adds	r3, #1
 8058c7a:	461a      	mov	r2, r3
 8058c7c:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8058c7e:	601a      	str	r2, [r3, #0]
 8058c80:	e002      	b.n	8058c88 <MPU_xTaskCreate+0x74>
 8058c82:	69b8      	ldr	r0, [r7, #24]
 8058c84:	f000 ff96 	bl	8059bb4 <MPU_SetIndexFreeInKernelObjectPool>
 8058c88:	69fb      	ldr	r3, [r7, #28]
 8058c8a:	4618      	mov	r0, r3
 8058c8c:	3724      	adds	r7, #36	; 0x24
 8058c8e:	46bd      	mov	sp, r7
 8058c90:	bd90      	pop	{r4, r7, pc}
 8058c92:	bf00      	nop
 8058c94:	08055221 	.word	0x08055221

08058c98 <MPU_vTaskDelete>:
 8058c98:	b580      	push	{r7, lr}
 8058c9a:	b084      	sub	sp, #16
 8058c9c:	af00      	add	r7, sp, #0
 8058c9e:	6078      	str	r0, [r7, #4]
 8058ca0:	2300      	movs	r3, #0
 8058ca2:	60fb      	str	r3, [r7, #12]
 8058ca4:	687b      	ldr	r3, [r7, #4]
 8058ca6:	2b00      	cmp	r3, #0
 8058ca8:	d112      	bne.n	8058cd0 <MPU_vTaskDelete+0x38>
 8058caa:	4b1b      	ldr	r3, [pc, #108]	; (8058d18 <MPU_vTaskDelete+0x80>)
 8058cac:	4798      	blx	r3
 8058cae:	60f8      	str	r0, [r7, #12]
 8058cb0:	2102      	movs	r1, #2
 8058cb2:	68f8      	ldr	r0, [r7, #12]
 8058cb4:	f000 ffbe 	bl	8059c34 <MPU_GetIndexForHandle>
 8058cb8:	60b8      	str	r0, [r7, #8]
 8058cba:	68bb      	ldr	r3, [r7, #8]
 8058cbc:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 8058cc0:	d002      	beq.n	8058cc8 <MPU_vTaskDelete+0x30>
 8058cc2:	68b8      	ldr	r0, [r7, #8]
 8058cc4:	f000 ff76 	bl	8059bb4 <MPU_SetIndexFreeInKernelObjectPool>
 8058cc8:	68f8      	ldr	r0, [r7, #12]
 8058cca:	4b14      	ldr	r3, [pc, #80]	; (8058d1c <MPU_vTaskDelete+0x84>)
 8058ccc:	4798      	blx	r3
 8058cce:	e01f      	b.n	8058d10 <MPU_vTaskDelete+0x78>
 8058cd0:	687b      	ldr	r3, [r7, #4]
 8058cd2:	60bb      	str	r3, [r7, #8]
 8058cd4:	68bb      	ldr	r3, [r7, #8]
 8058cd6:	2b00      	cmp	r3, #0
 8058cd8:	dd05      	ble.n	8058ce6 <MPU_vTaskDelete+0x4e>
 8058cda:	68bb      	ldr	r3, [r7, #8]
 8058cdc:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8058ce0:	dc01      	bgt.n	8058ce6 <MPU_vTaskDelete+0x4e>
 8058ce2:	2301      	movs	r3, #1
 8058ce4:	e000      	b.n	8058ce8 <MPU_vTaskDelete+0x50>
 8058ce6:	2300      	movs	r3, #0
 8058ce8:	2b00      	cmp	r3, #0
 8058cea:	d011      	beq.n	8058d10 <MPU_vTaskDelete+0x78>
 8058cec:	68bb      	ldr	r3, [r7, #8]
 8058cee:	3b01      	subs	r3, #1
 8058cf0:	2102      	movs	r1, #2
 8058cf2:	4618      	mov	r0, r3
 8058cf4:	f001 f816 	bl	8059d24 <MPU_GetHandleAtIndex>
 8058cf8:	60f8      	str	r0, [r7, #12]
 8058cfa:	68fb      	ldr	r3, [r7, #12]
 8058cfc:	2b00      	cmp	r3, #0
 8058cfe:	d007      	beq.n	8058d10 <MPU_vTaskDelete+0x78>
 8058d00:	68bb      	ldr	r3, [r7, #8]
 8058d02:	3b01      	subs	r3, #1
 8058d04:	4618      	mov	r0, r3
 8058d06:	f000 ff55 	bl	8059bb4 <MPU_SetIndexFreeInKernelObjectPool>
 8058d0a:	68f8      	ldr	r0, [r7, #12]
 8058d0c:	4b03      	ldr	r3, [pc, #12]	; (8058d1c <MPU_vTaskDelete+0x84>)
 8058d0e:	4798      	blx	r3
 8058d10:	bf00      	nop
 8058d12:	3710      	adds	r7, #16
 8058d14:	46bd      	mov	sp, r7
 8058d16:	bd80      	pop	{r7, pc}
 8058d18:	08057539 	.word	0x08057539
 8058d1c:	080552d9 	.word	0x080552d9

08058d20 <MPU_vTaskPrioritySet>:
 8058d20:	b580      	push	{r7, lr}
 8058d22:	b084      	sub	sp, #16
 8058d24:	af00      	add	r7, sp, #0
 8058d26:	6078      	str	r0, [r7, #4]
 8058d28:	6039      	str	r1, [r7, #0]
 8058d2a:	2300      	movs	r3, #0
 8058d2c:	60fb      	str	r3, [r7, #12]
 8058d2e:	687b      	ldr	r3, [r7, #4]
 8058d30:	2b00      	cmp	r3, #0
 8058d32:	d104      	bne.n	8058d3e <MPU_vTaskPrioritySet+0x1e>
 8058d34:	6839      	ldr	r1, [r7, #0]
 8058d36:	6878      	ldr	r0, [r7, #4]
 8058d38:	4b11      	ldr	r3, [pc, #68]	; (8058d80 <MPU_vTaskPrioritySet+0x60>)
 8058d3a:	4798      	blx	r3
 8058d3c:	e01b      	b.n	8058d76 <MPU_vTaskPrioritySet+0x56>
 8058d3e:	687b      	ldr	r3, [r7, #4]
 8058d40:	60bb      	str	r3, [r7, #8]
 8058d42:	68bb      	ldr	r3, [r7, #8]
 8058d44:	2b00      	cmp	r3, #0
 8058d46:	dd05      	ble.n	8058d54 <MPU_vTaskPrioritySet+0x34>
 8058d48:	68bb      	ldr	r3, [r7, #8]
 8058d4a:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8058d4e:	dc01      	bgt.n	8058d54 <MPU_vTaskPrioritySet+0x34>
 8058d50:	2301      	movs	r3, #1
 8058d52:	e000      	b.n	8058d56 <MPU_vTaskPrioritySet+0x36>
 8058d54:	2300      	movs	r3, #0
 8058d56:	2b00      	cmp	r3, #0
 8058d58:	d00d      	beq.n	8058d76 <MPU_vTaskPrioritySet+0x56>
 8058d5a:	68bb      	ldr	r3, [r7, #8]
 8058d5c:	3b01      	subs	r3, #1
 8058d5e:	2102      	movs	r1, #2
 8058d60:	4618      	mov	r0, r3
 8058d62:	f000 ffdf 	bl	8059d24 <MPU_GetHandleAtIndex>
 8058d66:	60f8      	str	r0, [r7, #12]
 8058d68:	68fb      	ldr	r3, [r7, #12]
 8058d6a:	2b00      	cmp	r3, #0
 8058d6c:	d003      	beq.n	8058d76 <MPU_vTaskPrioritySet+0x56>
 8058d6e:	6839      	ldr	r1, [r7, #0]
 8058d70:	68f8      	ldr	r0, [r7, #12]
 8058d72:	4b03      	ldr	r3, [pc, #12]	; (8058d80 <MPU_vTaskPrioritySet+0x60>)
 8058d74:	4798      	blx	r3
 8058d76:	bf00      	nop
 8058d78:	3710      	adds	r7, #16
 8058d7a:	46bd      	mov	sp, r7
 8058d7c:	bd80      	pop	{r7, pc}
 8058d7e:	bf00      	nop
 8058d80:	08055801 	.word	0x08055801

08058d84 <MPU_pcTaskGetName>:
 8058d84:	b580      	push	{r7, lr}
 8058d86:	b086      	sub	sp, #24
 8058d88:	af00      	add	r7, sp, #0
 8058d8a:	6078      	str	r0, [r7, #4]
 8058d8c:	2300      	movs	r3, #0
 8058d8e:	617b      	str	r3, [r7, #20]
 8058d90:	2300      	movs	r3, #0
 8058d92:	613b      	str	r3, [r7, #16]
 8058d94:	687b      	ldr	r3, [r7, #4]
 8058d96:	2b00      	cmp	r3, #0
 8058d98:	d104      	bne.n	8058da4 <MPU_pcTaskGetName+0x20>
 8058d9a:	6878      	ldr	r0, [r7, #4]
 8058d9c:	4b12      	ldr	r3, [pc, #72]	; (8058de8 <MPU_pcTaskGetName+0x64>)
 8058d9e:	4798      	blx	r3
 8058da0:	6178      	str	r0, [r7, #20]
 8058da2:	e01b      	b.n	8058ddc <MPU_pcTaskGetName+0x58>
 8058da4:	687b      	ldr	r3, [r7, #4]
 8058da6:	60fb      	str	r3, [r7, #12]
 8058da8:	68fb      	ldr	r3, [r7, #12]
 8058daa:	2b00      	cmp	r3, #0
 8058dac:	dd05      	ble.n	8058dba <MPU_pcTaskGetName+0x36>
 8058dae:	68fb      	ldr	r3, [r7, #12]
 8058db0:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8058db4:	dc01      	bgt.n	8058dba <MPU_pcTaskGetName+0x36>
 8058db6:	2301      	movs	r3, #1
 8058db8:	e000      	b.n	8058dbc <MPU_pcTaskGetName+0x38>
 8058dba:	2300      	movs	r3, #0
 8058dbc:	2b00      	cmp	r3, #0
 8058dbe:	d00d      	beq.n	8058ddc <MPU_pcTaskGetName+0x58>
 8058dc0:	68fb      	ldr	r3, [r7, #12]
 8058dc2:	3b01      	subs	r3, #1
 8058dc4:	2102      	movs	r1, #2
 8058dc6:	4618      	mov	r0, r3
 8058dc8:	f000 ffac 	bl	8059d24 <MPU_GetHandleAtIndex>
 8058dcc:	6138      	str	r0, [r7, #16]
 8058dce:	693b      	ldr	r3, [r7, #16]
 8058dd0:	2b00      	cmp	r3, #0
 8058dd2:	d003      	beq.n	8058ddc <MPU_pcTaskGetName+0x58>
 8058dd4:	6938      	ldr	r0, [r7, #16]
 8058dd6:	4b04      	ldr	r3, [pc, #16]	; (8058de8 <MPU_pcTaskGetName+0x64>)
 8058dd8:	4798      	blx	r3
 8058dda:	6178      	str	r0, [r7, #20]
 8058ddc:	697b      	ldr	r3, [r7, #20]
 8058dde:	4618      	mov	r0, r3
 8058de0:	3718      	adds	r7, #24
 8058de2:	46bd      	mov	sp, r7
 8058de4:	bd80      	pop	{r7, pc}
 8058de6:	bf00      	nop
 8058de8:	08056065 	.word	0x08056065

08058dec <MPU_xTaskCreateRestricted>:
 8058dec:	b580      	push	{r7, lr}
 8058dee:	b086      	sub	sp, #24
 8058df0:	af00      	add	r7, sp, #0
 8058df2:	6078      	str	r0, [r7, #4]
 8058df4:	6039      	str	r1, [r7, #0]
 8058df6:	2300      	movs	r3, #0
 8058df8:	617b      	str	r3, [r7, #20]
 8058dfa:	2300      	movs	r3, #0
 8058dfc:	60fb      	str	r3, [r7, #12]
 8058dfe:	f000 fea3 	bl	8059b48 <MPU_GetFreeIndexInKernelObjectPool>
 8058e02:	6138      	str	r0, [r7, #16]
 8058e04:	693b      	ldr	r3, [r7, #16]
 8058e06:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 8058e0a:	d01e      	beq.n	8058e4a <MPU_xTaskCreateRestricted+0x5e>
 8058e0c:	f107 030c 	add.w	r3, r7, #12
 8058e10:	4619      	mov	r1, r3
 8058e12:	6878      	ldr	r0, [r7, #4]
 8058e14:	4b0f      	ldr	r3, [pc, #60]	; (8058e54 <MPU_xTaskCreateRestricted+0x68>)
 8058e16:	4798      	blx	r3
 8058e18:	6178      	str	r0, [r7, #20]
 8058e1a:	697b      	ldr	r3, [r7, #20]
 8058e1c:	2b01      	cmp	r3, #1
 8058e1e:	d111      	bne.n	8058e44 <MPU_xTaskCreateRestricted+0x58>
 8058e20:	68fb      	ldr	r3, [r7, #12]
 8058e22:	2b00      	cmp	r3, #0
 8058e24:	d00e      	beq.n	8058e44 <MPU_xTaskCreateRestricted+0x58>
 8058e26:	68f9      	ldr	r1, [r7, #12]
 8058e28:	2302      	movs	r3, #2
 8058e2a:	2200      	movs	r2, #0
 8058e2c:	6938      	ldr	r0, [r7, #16]
 8058e2e:	f000 ff3d 	bl	8059cac <MPU_StoreHandleAndDataAtIndex>
 8058e32:	683b      	ldr	r3, [r7, #0]
 8058e34:	2b00      	cmp	r3, #0
 8058e36:	d008      	beq.n	8058e4a <MPU_xTaskCreateRestricted+0x5e>
 8058e38:	693b      	ldr	r3, [r7, #16]
 8058e3a:	3301      	adds	r3, #1
 8058e3c:	461a      	mov	r2, r3
 8058e3e:	683b      	ldr	r3, [r7, #0]
 8058e40:	601a      	str	r2, [r3, #0]
 8058e42:	e002      	b.n	8058e4a <MPU_xTaskCreateRestricted+0x5e>
 8058e44:	6938      	ldr	r0, [r7, #16]
 8058e46:	f000 feb5 	bl	8059bb4 <MPU_SetIndexFreeInKernelObjectPool>
 8058e4a:	697b      	ldr	r3, [r7, #20]
 8058e4c:	4618      	mov	r0, r3
 8058e4e:	3718      	adds	r7, #24
 8058e50:	46bd      	mov	sp, r7
 8058e52:	bd80      	pop	{r7, pc}
 8058e54:	08055269 	.word	0x08055269

08058e58 <MPU_vTaskAllocateMPURegions>:
 8058e58:	b580      	push	{r7, lr}
 8058e5a:	b084      	sub	sp, #16
 8058e5c:	af00      	add	r7, sp, #0
 8058e5e:	6078      	str	r0, [r7, #4]
 8058e60:	6039      	str	r1, [r7, #0]
 8058e62:	2300      	movs	r3, #0
 8058e64:	60fb      	str	r3, [r7, #12]
 8058e66:	687b      	ldr	r3, [r7, #4]
 8058e68:	2b00      	cmp	r3, #0
 8058e6a:	d104      	bne.n	8058e76 <MPU_vTaskAllocateMPURegions+0x1e>
 8058e6c:	6839      	ldr	r1, [r7, #0]
 8058e6e:	6878      	ldr	r0, [r7, #4]
 8058e70:	4b11      	ldr	r3, [pc, #68]	; (8058eb8 <MPU_vTaskAllocateMPURegions+0x60>)
 8058e72:	4798      	blx	r3
 8058e74:	e01b      	b.n	8058eae <MPU_vTaskAllocateMPURegions+0x56>
 8058e76:	687b      	ldr	r3, [r7, #4]
 8058e78:	60bb      	str	r3, [r7, #8]
 8058e7a:	68bb      	ldr	r3, [r7, #8]
 8058e7c:	2b00      	cmp	r3, #0
 8058e7e:	dd05      	ble.n	8058e8c <MPU_vTaskAllocateMPURegions+0x34>
 8058e80:	68bb      	ldr	r3, [r7, #8]
 8058e82:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8058e86:	dc01      	bgt.n	8058e8c <MPU_vTaskAllocateMPURegions+0x34>
 8058e88:	2301      	movs	r3, #1
 8058e8a:	e000      	b.n	8058e8e <MPU_vTaskAllocateMPURegions+0x36>
 8058e8c:	2300      	movs	r3, #0
 8058e8e:	2b00      	cmp	r3, #0
 8058e90:	d00d      	beq.n	8058eae <MPU_vTaskAllocateMPURegions+0x56>
 8058e92:	68bb      	ldr	r3, [r7, #8]
 8058e94:	3b01      	subs	r3, #1
 8058e96:	2102      	movs	r1, #2
 8058e98:	4618      	mov	r0, r3
 8058e9a:	f000 ff43 	bl	8059d24 <MPU_GetHandleAtIndex>
 8058e9e:	60f8      	str	r0, [r7, #12]
 8058ea0:	68fb      	ldr	r3, [r7, #12]
 8058ea2:	2b00      	cmp	r3, #0
 8058ea4:	d003      	beq.n	8058eae <MPU_vTaskAllocateMPURegions+0x56>
 8058ea6:	6839      	ldr	r1, [r7, #0]
 8058ea8:	68f8      	ldr	r0, [r7, #12]
 8058eaa:	4b03      	ldr	r3, [pc, #12]	; (8058eb8 <MPU_vTaskAllocateMPURegions+0x60>)
 8058eac:	4798      	blx	r3
 8058eae:	bf00      	nop
 8058eb0:	3710      	adds	r7, #16
 8058eb2:	46bd      	mov	sp, r7
 8058eb4:	bd80      	pop	{r7, pc}
 8058eb6:	bf00      	nop
 8058eb8:	0805529f 	.word	0x0805529f

08058ebc <MPU_uxTaskPriorityGetFromISR>:
 8058ebc:	b580      	push	{r7, lr}
 8058ebe:	b086      	sub	sp, #24
 8058ec0:	af00      	add	r7, sp, #0
 8058ec2:	6078      	str	r0, [r7, #4]
 8058ec4:	2310      	movs	r3, #16
 8058ec6:	617b      	str	r3, [r7, #20]
 8058ec8:	2300      	movs	r3, #0
 8058eca:	613b      	str	r3, [r7, #16]
 8058ecc:	687b      	ldr	r3, [r7, #4]
 8058ece:	2b00      	cmp	r3, #0
 8058ed0:	d104      	bne.n	8058edc <MPU_uxTaskPriorityGetFromISR+0x20>
 8058ed2:	6878      	ldr	r0, [r7, #4]
 8058ed4:	4b12      	ldr	r3, [pc, #72]	; (8058f20 <MPU_uxTaskPriorityGetFromISR+0x64>)
 8058ed6:	4798      	blx	r3
 8058ed8:	6178      	str	r0, [r7, #20]
 8058eda:	e01b      	b.n	8058f14 <MPU_uxTaskPriorityGetFromISR+0x58>
 8058edc:	687b      	ldr	r3, [r7, #4]
 8058ede:	60fb      	str	r3, [r7, #12]
 8058ee0:	68fb      	ldr	r3, [r7, #12]
 8058ee2:	2b00      	cmp	r3, #0
 8058ee4:	dd05      	ble.n	8058ef2 <MPU_uxTaskPriorityGetFromISR+0x36>
 8058ee6:	68fb      	ldr	r3, [r7, #12]
 8058ee8:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8058eec:	dc01      	bgt.n	8058ef2 <MPU_uxTaskPriorityGetFromISR+0x36>
 8058eee:	2301      	movs	r3, #1
 8058ef0:	e000      	b.n	8058ef4 <MPU_uxTaskPriorityGetFromISR+0x38>
 8058ef2:	2300      	movs	r3, #0
 8058ef4:	2b00      	cmp	r3, #0
 8058ef6:	d00d      	beq.n	8058f14 <MPU_uxTaskPriorityGetFromISR+0x58>
 8058ef8:	68fb      	ldr	r3, [r7, #12]
 8058efa:	3b01      	subs	r3, #1
 8058efc:	2102      	movs	r1, #2
 8058efe:	4618      	mov	r0, r3
 8058f00:	f000 ff10 	bl	8059d24 <MPU_GetHandleAtIndex>
 8058f04:	6138      	str	r0, [r7, #16]
 8058f06:	693b      	ldr	r3, [r7, #16]
 8058f08:	2b00      	cmp	r3, #0
 8058f0a:	d003      	beq.n	8058f14 <MPU_uxTaskPriorityGetFromISR+0x58>
 8058f0c:	6938      	ldr	r0, [r7, #16]
 8058f0e:	4b04      	ldr	r3, [pc, #16]	; (8058f20 <MPU_uxTaskPriorityGetFromISR+0x64>)
 8058f10:	4798      	blx	r3
 8058f12:	6178      	str	r0, [r7, #20]
 8058f14:	697b      	ldr	r3, [r7, #20]
 8058f16:	4618      	mov	r0, r3
 8058f18:	3718      	adds	r7, #24
 8058f1a:	46bd      	mov	sp, r7
 8058f1c:	bd80      	pop	{r7, pc}
 8058f1e:	bf00      	nop
 8058f20:	0805551d 	.word	0x0805551d

08058f24 <MPU_uxTaskBasePriorityGet>:
 8058f24:	b580      	push	{r7, lr}
 8058f26:	b086      	sub	sp, #24
 8058f28:	af00      	add	r7, sp, #0
 8058f2a:	6078      	str	r0, [r7, #4]
 8058f2c:	2310      	movs	r3, #16
 8058f2e:	617b      	str	r3, [r7, #20]
 8058f30:	2300      	movs	r3, #0
 8058f32:	613b      	str	r3, [r7, #16]
 8058f34:	687b      	ldr	r3, [r7, #4]
 8058f36:	2b00      	cmp	r3, #0
 8058f38:	d104      	bne.n	8058f44 <MPU_uxTaskBasePriorityGet+0x20>
 8058f3a:	6878      	ldr	r0, [r7, #4]
 8058f3c:	4b12      	ldr	r3, [pc, #72]	; (8058f88 <MPU_uxTaskBasePriorityGet+0x64>)
 8058f3e:	4798      	blx	r3
 8058f40:	6178      	str	r0, [r7, #20]
 8058f42:	e01b      	b.n	8058f7c <MPU_uxTaskBasePriorityGet+0x58>
 8058f44:	687b      	ldr	r3, [r7, #4]
 8058f46:	60fb      	str	r3, [r7, #12]
 8058f48:	68fb      	ldr	r3, [r7, #12]
 8058f4a:	2b00      	cmp	r3, #0
 8058f4c:	dd05      	ble.n	8058f5a <MPU_uxTaskBasePriorityGet+0x36>
 8058f4e:	68fb      	ldr	r3, [r7, #12]
 8058f50:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8058f54:	dc01      	bgt.n	8058f5a <MPU_uxTaskBasePriorityGet+0x36>
 8058f56:	2301      	movs	r3, #1
 8058f58:	e000      	b.n	8058f5c <MPU_uxTaskBasePriorityGet+0x38>
 8058f5a:	2300      	movs	r3, #0
 8058f5c:	2b00      	cmp	r3, #0
 8058f5e:	d00d      	beq.n	8058f7c <MPU_uxTaskBasePriorityGet+0x58>
 8058f60:	68fb      	ldr	r3, [r7, #12]
 8058f62:	3b01      	subs	r3, #1
 8058f64:	2102      	movs	r1, #2
 8058f66:	4618      	mov	r0, r3
 8058f68:	f000 fedc 	bl	8059d24 <MPU_GetHandleAtIndex>
 8058f6c:	6138      	str	r0, [r7, #16]
 8058f6e:	693b      	ldr	r3, [r7, #16]
 8058f70:	2b00      	cmp	r3, #0
 8058f72:	d003      	beq.n	8058f7c <MPU_uxTaskBasePriorityGet+0x58>
 8058f74:	6938      	ldr	r0, [r7, #16]
 8058f76:	4b04      	ldr	r3, [pc, #16]	; (8058f88 <MPU_uxTaskBasePriorityGet+0x64>)
 8058f78:	4798      	blx	r3
 8058f7a:	6178      	str	r0, [r7, #20]
 8058f7c:	697b      	ldr	r3, [r7, #20]
 8058f7e:	4618      	mov	r0, r3
 8058f80:	3718      	adds	r7, #24
 8058f82:	46bd      	mov	sp, r7
 8058f84:	bd80      	pop	{r7, pc}
 8058f86:	bf00      	nop
 8058f88:	08055569 	.word	0x08055569

08058f8c <MPU_uxTaskBasePriorityGetFromISR>:
 8058f8c:	b580      	push	{r7, lr}
 8058f8e:	b086      	sub	sp, #24
 8058f90:	af00      	add	r7, sp, #0
 8058f92:	6078      	str	r0, [r7, #4]
 8058f94:	2310      	movs	r3, #16
 8058f96:	617b      	str	r3, [r7, #20]
 8058f98:	2300      	movs	r3, #0
 8058f9a:	613b      	str	r3, [r7, #16]
 8058f9c:	687b      	ldr	r3, [r7, #4]
 8058f9e:	2b00      	cmp	r3, #0
 8058fa0:	d104      	bne.n	8058fac <MPU_uxTaskBasePriorityGetFromISR+0x20>
 8058fa2:	6878      	ldr	r0, [r7, #4]
 8058fa4:	4b12      	ldr	r3, [pc, #72]	; (8058ff0 <MPU_uxTaskBasePriorityGetFromISR+0x64>)
 8058fa6:	4798      	blx	r3
 8058fa8:	6178      	str	r0, [r7, #20]
 8058faa:	e01b      	b.n	8058fe4 <MPU_uxTaskBasePriorityGetFromISR+0x58>
 8058fac:	687b      	ldr	r3, [r7, #4]
 8058fae:	60fb      	str	r3, [r7, #12]
 8058fb0:	68fb      	ldr	r3, [r7, #12]
 8058fb2:	2b00      	cmp	r3, #0
 8058fb4:	dd05      	ble.n	8058fc2 <MPU_uxTaskBasePriorityGetFromISR+0x36>
 8058fb6:	68fb      	ldr	r3, [r7, #12]
 8058fb8:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8058fbc:	dc01      	bgt.n	8058fc2 <MPU_uxTaskBasePriorityGetFromISR+0x36>
 8058fbe:	2301      	movs	r3, #1
 8058fc0:	e000      	b.n	8058fc4 <MPU_uxTaskBasePriorityGetFromISR+0x38>
 8058fc2:	2300      	movs	r3, #0
 8058fc4:	2b00      	cmp	r3, #0
 8058fc6:	d00d      	beq.n	8058fe4 <MPU_uxTaskBasePriorityGetFromISR+0x58>
 8058fc8:	68fb      	ldr	r3, [r7, #12]
 8058fca:	3b01      	subs	r3, #1
 8058fcc:	2102      	movs	r1, #2
 8058fce:	4618      	mov	r0, r3
 8058fd0:	f000 fea8 	bl	8059d24 <MPU_GetHandleAtIndex>
 8058fd4:	6138      	str	r0, [r7, #16]
 8058fd6:	693b      	ldr	r3, [r7, #16]
 8058fd8:	2b00      	cmp	r3, #0
 8058fda:	d003      	beq.n	8058fe4 <MPU_uxTaskBasePriorityGetFromISR+0x58>
 8058fdc:	6938      	ldr	r0, [r7, #16]
 8058fde:	4b04      	ldr	r3, [pc, #16]	; (8058ff0 <MPU_uxTaskBasePriorityGetFromISR+0x64>)
 8058fe0:	4798      	blx	r3
 8058fe2:	6178      	str	r0, [r7, #20]
 8058fe4:	697b      	ldr	r3, [r7, #20]
 8058fe6:	4618      	mov	r0, r3
 8058fe8:	3718      	adds	r7, #24
 8058fea:	46bd      	mov	sp, r7
 8058fec:	bd80      	pop	{r7, pc}
 8058fee:	bf00      	nop
 8058ff0:	080555a9 	.word	0x080555a9

08058ff4 <MPU_xTaskResumeFromISR>:
 8058ff4:	b580      	push	{r7, lr}
 8058ff6:	b086      	sub	sp, #24
 8058ff8:	af00      	add	r7, sp, #0
 8058ffa:	6078      	str	r0, [r7, #4]
 8058ffc:	2300      	movs	r3, #0
 8058ffe:	617b      	str	r3, [r7, #20]
 8059000:	2300      	movs	r3, #0
 8059002:	613b      	str	r3, [r7, #16]
 8059004:	687b      	ldr	r3, [r7, #4]
 8059006:	60fb      	str	r3, [r7, #12]
 8059008:	68fb      	ldr	r3, [r7, #12]
 805900a:	2b00      	cmp	r3, #0
 805900c:	dd05      	ble.n	805901a <MPU_xTaskResumeFromISR+0x26>
 805900e:	68fb      	ldr	r3, [r7, #12]
 8059010:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8059014:	dc01      	bgt.n	805901a <MPU_xTaskResumeFromISR+0x26>
 8059016:	2301      	movs	r3, #1
 8059018:	e000      	b.n	805901c <MPU_xTaskResumeFromISR+0x28>
 805901a:	2300      	movs	r3, #0
 805901c:	2b00      	cmp	r3, #0
 805901e:	d00d      	beq.n	805903c <MPU_xTaskResumeFromISR+0x48>
 8059020:	68fb      	ldr	r3, [r7, #12]
 8059022:	3b01      	subs	r3, #1
 8059024:	2102      	movs	r1, #2
 8059026:	4618      	mov	r0, r3
 8059028:	f000 fe7c 	bl	8059d24 <MPU_GetHandleAtIndex>
 805902c:	6138      	str	r0, [r7, #16]
 805902e:	693b      	ldr	r3, [r7, #16]
 8059030:	2b00      	cmp	r3, #0
 8059032:	d003      	beq.n	805903c <MPU_xTaskResumeFromISR+0x48>
 8059034:	6938      	ldr	r0, [r7, #16]
 8059036:	4b04      	ldr	r3, [pc, #16]	; (8059048 <MPU_xTaskResumeFromISR+0x54>)
 8059038:	4798      	blx	r3
 805903a:	6178      	str	r0, [r7, #20]
 805903c:	697b      	ldr	r3, [r7, #20]
 805903e:	4618      	mov	r0, r3
 8059040:	3718      	adds	r7, #24
 8059042:	46bd      	mov	sp, r7
 8059044:	bd80      	pop	{r7, pc}
 8059046:	bf00      	nop
 8059048:	08055bdd 	.word	0x08055bdd

0805904c <MPU_xTaskGenericNotifyFromISR>:
 805904c:	b590      	push	{r4, r7, lr}
 805904e:	b08b      	sub	sp, #44	; 0x2c
 8059050:	af02      	add	r7, sp, #8
 8059052:	60f8      	str	r0, [r7, #12]
 8059054:	60b9      	str	r1, [r7, #8]
 8059056:	607a      	str	r2, [r7, #4]
 8059058:	70fb      	strb	r3, [r7, #3]
 805905a:	2300      	movs	r3, #0
 805905c:	61fb      	str	r3, [r7, #28]
 805905e:	2300      	movs	r3, #0
 8059060:	61bb      	str	r3, [r7, #24]
 8059062:	68fb      	ldr	r3, [r7, #12]
 8059064:	617b      	str	r3, [r7, #20]
 8059066:	697b      	ldr	r3, [r7, #20]
 8059068:	2b00      	cmp	r3, #0
 805906a:	dd05      	ble.n	8059078 <MPU_xTaskGenericNotifyFromISR+0x2c>
 805906c:	697b      	ldr	r3, [r7, #20]
 805906e:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8059072:	dc01      	bgt.n	8059078 <MPU_xTaskGenericNotifyFromISR+0x2c>
 8059074:	2301      	movs	r3, #1
 8059076:	e000      	b.n	805907a <MPU_xTaskGenericNotifyFromISR+0x2e>
 8059078:	2300      	movs	r3, #0
 805907a:	2b00      	cmp	r3, #0
 805907c:	d015      	beq.n	80590aa <MPU_xTaskGenericNotifyFromISR+0x5e>
 805907e:	697b      	ldr	r3, [r7, #20]
 8059080:	3b01      	subs	r3, #1
 8059082:	2102      	movs	r1, #2
 8059084:	4618      	mov	r0, r3
 8059086:	f000 fe4d 	bl	8059d24 <MPU_GetHandleAtIndex>
 805908a:	61b8      	str	r0, [r7, #24]
 805908c:	69bb      	ldr	r3, [r7, #24]
 805908e:	2b00      	cmp	r3, #0
 8059090:	d00b      	beq.n	80590aa <MPU_xTaskGenericNotifyFromISR+0x5e>
 8059092:	78fa      	ldrb	r2, [r7, #3]
 8059094:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8059096:	9301      	str	r3, [sp, #4]
 8059098:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 805909a:	9300      	str	r3, [sp, #0]
 805909c:	4613      	mov	r3, r2
 805909e:	687a      	ldr	r2, [r7, #4]
 80590a0:	68b9      	ldr	r1, [r7, #8]
 80590a2:	69b8      	ldr	r0, [r7, #24]
 80590a4:	4c03      	ldr	r4, [pc, #12]	; (80590b4 <MPU_xTaskGenericNotifyFromISR+0x68>)
 80590a6:	47a0      	blx	r4
 80590a8:	61f8      	str	r0, [r7, #28]
 80590aa:	69fb      	ldr	r3, [r7, #28]
 80590ac:	4618      	mov	r0, r3
 80590ae:	3724      	adds	r7, #36	; 0x24
 80590b0:	46bd      	mov	sp, r7
 80590b2:	bd90      	pop	{r4, r7, pc}
 80590b4:	08056435 	.word	0x08056435

080590b8 <MPU_vTaskGenericNotifyGiveFromISR>:
 80590b8:	b580      	push	{r7, lr}
 80590ba:	b086      	sub	sp, #24
 80590bc:	af00      	add	r7, sp, #0
 80590be:	60f8      	str	r0, [r7, #12]
 80590c0:	60b9      	str	r1, [r7, #8]
 80590c2:	607a      	str	r2, [r7, #4]
 80590c4:	2300      	movs	r3, #0
 80590c6:	617b      	str	r3, [r7, #20]
 80590c8:	68fb      	ldr	r3, [r7, #12]
 80590ca:	613b      	str	r3, [r7, #16]
 80590cc:	693b      	ldr	r3, [r7, #16]
 80590ce:	2b00      	cmp	r3, #0
 80590d0:	dd05      	ble.n	80590de <MPU_vTaskGenericNotifyGiveFromISR+0x26>
 80590d2:	693b      	ldr	r3, [r7, #16]
 80590d4:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 80590d8:	dc01      	bgt.n	80590de <MPU_vTaskGenericNotifyGiveFromISR+0x26>
 80590da:	2301      	movs	r3, #1
 80590dc:	e000      	b.n	80590e0 <MPU_vTaskGenericNotifyGiveFromISR+0x28>
 80590de:	2300      	movs	r3, #0
 80590e0:	2b00      	cmp	r3, #0
 80590e2:	d00e      	beq.n	8059102 <MPU_vTaskGenericNotifyGiveFromISR+0x4a>
 80590e4:	693b      	ldr	r3, [r7, #16]
 80590e6:	3b01      	subs	r3, #1
 80590e8:	2102      	movs	r1, #2
 80590ea:	4618      	mov	r0, r3
 80590ec:	f000 fe1a 	bl	8059d24 <MPU_GetHandleAtIndex>
 80590f0:	6178      	str	r0, [r7, #20]
 80590f2:	697b      	ldr	r3, [r7, #20]
 80590f4:	2b00      	cmp	r3, #0
 80590f6:	d004      	beq.n	8059102 <MPU_vTaskGenericNotifyGiveFromISR+0x4a>
 80590f8:	687a      	ldr	r2, [r7, #4]
 80590fa:	68b9      	ldr	r1, [r7, #8]
 80590fc:	6978      	ldr	r0, [r7, #20]
 80590fe:	4b03      	ldr	r3, [pc, #12]	; (805910c <MPU_vTaskGenericNotifyGiveFromISR+0x54>)
 8059100:	4798      	blx	r3
 8059102:	bf00      	nop
 8059104:	3718      	adds	r7, #24
 8059106:	46bd      	mov	sp, r7
 8059108:	bd80      	pop	{r7, pc}
 805910a:	bf00      	nop
 805910c:	080567fd 	.word	0x080567fd

08059110 <MPU_vQueueDelete>:
 8059110:	b580      	push	{r7, lr}
 8059112:	b084      	sub	sp, #16
 8059114:	af00      	add	r7, sp, #0
 8059116:	6078      	str	r0, [r7, #4]
 8059118:	2300      	movs	r3, #0
 805911a:	60fb      	str	r3, [r7, #12]
 805911c:	687b      	ldr	r3, [r7, #4]
 805911e:	60bb      	str	r3, [r7, #8]
 8059120:	68bb      	ldr	r3, [r7, #8]
 8059122:	2b00      	cmp	r3, #0
 8059124:	dd05      	ble.n	8059132 <MPU_vQueueDelete+0x22>
 8059126:	68bb      	ldr	r3, [r7, #8]
 8059128:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805912c:	dc01      	bgt.n	8059132 <MPU_vQueueDelete+0x22>
 805912e:	2301      	movs	r3, #1
 8059130:	e000      	b.n	8059134 <MPU_vQueueDelete+0x24>
 8059132:	2300      	movs	r3, #0
 8059134:	2b00      	cmp	r3, #0
 8059136:	d011      	beq.n	805915c <MPU_vQueueDelete+0x4c>
 8059138:	68bb      	ldr	r3, [r7, #8]
 805913a:	3b01      	subs	r3, #1
 805913c:	2101      	movs	r1, #1
 805913e:	4618      	mov	r0, r3
 8059140:	f000 fdf0 	bl	8059d24 <MPU_GetHandleAtIndex>
 8059144:	60f8      	str	r0, [r7, #12]
 8059146:	68fb      	ldr	r3, [r7, #12]
 8059148:	2b00      	cmp	r3, #0
 805914a:	d007      	beq.n	805915c <MPU_vQueueDelete+0x4c>
 805914c:	68f8      	ldr	r0, [r7, #12]
 805914e:	4b05      	ldr	r3, [pc, #20]	; (8059164 <MPU_vQueueDelete+0x54>)
 8059150:	4798      	blx	r3
 8059152:	68bb      	ldr	r3, [r7, #8]
 8059154:	3b01      	subs	r3, #1
 8059156:	4618      	mov	r0, r3
 8059158:	f000 fd2c 	bl	8059bb4 <MPU_SetIndexFreeInKernelObjectPool>
 805915c:	bf00      	nop
 805915e:	3710      	adds	r7, #16
 8059160:	46bd      	mov	sp, r7
 8059162:	bd80      	pop	{r7, pc}
 8059164:	0805cab1 	.word	0x0805cab1

08059168 <MPU_xQueueCreateMutex>:
 8059168:	b580      	push	{r7, lr}
 805916a:	b086      	sub	sp, #24
 805916c:	af00      	add	r7, sp, #0
 805916e:	4603      	mov	r3, r0
 8059170:	71fb      	strb	r3, [r7, #7]
 8059172:	2300      	movs	r3, #0
 8059174:	613b      	str	r3, [r7, #16]
 8059176:	2300      	movs	r3, #0
 8059178:	617b      	str	r3, [r7, #20]
 805917a:	f000 fce5 	bl	8059b48 <MPU_GetFreeIndexInKernelObjectPool>
 805917e:	60f8      	str	r0, [r7, #12]
 8059180:	68fb      	ldr	r3, [r7, #12]
 8059182:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 8059186:	d014      	beq.n	80591b2 <MPU_xQueueCreateMutex+0x4a>
 8059188:	79fb      	ldrb	r3, [r7, #7]
 805918a:	4618      	mov	r0, r3
 805918c:	4b0b      	ldr	r3, [pc, #44]	; (80591bc <MPU_xQueueCreateMutex+0x54>)
 805918e:	4798      	blx	r3
 8059190:	6138      	str	r0, [r7, #16]
 8059192:	693b      	ldr	r3, [r7, #16]
 8059194:	2b00      	cmp	r3, #0
 8059196:	d009      	beq.n	80591ac <MPU_xQueueCreateMutex+0x44>
 8059198:	2301      	movs	r3, #1
 805919a:	2200      	movs	r2, #0
 805919c:	6939      	ldr	r1, [r7, #16]
 805919e:	68f8      	ldr	r0, [r7, #12]
 80591a0:	f000 fd84 	bl	8059cac <MPU_StoreHandleAndDataAtIndex>
 80591a4:	68fb      	ldr	r3, [r7, #12]
 80591a6:	3301      	adds	r3, #1
 80591a8:	617b      	str	r3, [r7, #20]
 80591aa:	e002      	b.n	80591b2 <MPU_xQueueCreateMutex+0x4a>
 80591ac:	68f8      	ldr	r0, [r7, #12]
 80591ae:	f000 fd01 	bl	8059bb4 <MPU_SetIndexFreeInKernelObjectPool>
 80591b2:	697b      	ldr	r3, [r7, #20]
 80591b4:	4618      	mov	r0, r3
 80591b6:	3718      	adds	r7, #24
 80591b8:	46bd      	mov	sp, r7
 80591ba:	bd80      	pop	{r7, pc}
 80591bc:	0805ce8d 	.word	0x0805ce8d

080591c0 <MPU_xQueueCreateCountingSemaphore>:
 80591c0:	b580      	push	{r7, lr}
 80591c2:	b086      	sub	sp, #24
 80591c4:	af00      	add	r7, sp, #0
 80591c6:	6078      	str	r0, [r7, #4]
 80591c8:	6039      	str	r1, [r7, #0]
 80591ca:	2300      	movs	r3, #0
 80591cc:	613b      	str	r3, [r7, #16]
 80591ce:	2300      	movs	r3, #0
 80591d0:	617b      	str	r3, [r7, #20]
 80591d2:	f000 fcb9 	bl	8059b48 <MPU_GetFreeIndexInKernelObjectPool>
 80591d6:	60f8      	str	r0, [r7, #12]
 80591d8:	68fb      	ldr	r3, [r7, #12]
 80591da:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 80591de:	d014      	beq.n	805920a <MPU_xQueueCreateCountingSemaphore+0x4a>
 80591e0:	6839      	ldr	r1, [r7, #0]
 80591e2:	6878      	ldr	r0, [r7, #4]
 80591e4:	4b0b      	ldr	r3, [pc, #44]	; (8059214 <MPU_xQueueCreateCountingSemaphore+0x54>)
 80591e6:	4798      	blx	r3
 80591e8:	6138      	str	r0, [r7, #16]
 80591ea:	693b      	ldr	r3, [r7, #16]
 80591ec:	2b00      	cmp	r3, #0
 80591ee:	d009      	beq.n	8059204 <MPU_xQueueCreateCountingSemaphore+0x44>
 80591f0:	2301      	movs	r3, #1
 80591f2:	2200      	movs	r2, #0
 80591f4:	6939      	ldr	r1, [r7, #16]
 80591f6:	68f8      	ldr	r0, [r7, #12]
 80591f8:	f000 fd58 	bl	8059cac <MPU_StoreHandleAndDataAtIndex>
 80591fc:	68fb      	ldr	r3, [r7, #12]
 80591fe:	3301      	adds	r3, #1
 8059200:	617b      	str	r3, [r7, #20]
 8059202:	e002      	b.n	805920a <MPU_xQueueCreateCountingSemaphore+0x4a>
 8059204:	68f8      	ldr	r0, [r7, #12]
 8059206:	f000 fcd5 	bl	8059bb4 <MPU_SetIndexFreeInKernelObjectPool>
 805920a:	697b      	ldr	r3, [r7, #20]
 805920c:	4618      	mov	r0, r3
 805920e:	3718      	adds	r7, #24
 8059210:	46bd      	mov	sp, r7
 8059212:	bd80      	pop	{r7, pc}
 8059214:	0805cebd 	.word	0x0805cebd

08059218 <MPU_xQueueGenericCreate>:
 8059218:	b580      	push	{r7, lr}
 805921a:	b088      	sub	sp, #32
 805921c:	af00      	add	r7, sp, #0
 805921e:	60f8      	str	r0, [r7, #12]
 8059220:	60b9      	str	r1, [r7, #8]
 8059222:	4613      	mov	r3, r2
 8059224:	71fb      	strb	r3, [r7, #7]
 8059226:	2300      	movs	r3, #0
 8059228:	61bb      	str	r3, [r7, #24]
 805922a:	2300      	movs	r3, #0
 805922c:	61fb      	str	r3, [r7, #28]
 805922e:	f000 fc8b 	bl	8059b48 <MPU_GetFreeIndexInKernelObjectPool>
 8059232:	6178      	str	r0, [r7, #20]
 8059234:	697b      	ldr	r3, [r7, #20]
 8059236:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 805923a:	d016      	beq.n	805926a <MPU_xQueueGenericCreate+0x52>
 805923c:	79fb      	ldrb	r3, [r7, #7]
 805923e:	461a      	mov	r2, r3
 8059240:	68b9      	ldr	r1, [r7, #8]
 8059242:	68f8      	ldr	r0, [r7, #12]
 8059244:	4b0b      	ldr	r3, [pc, #44]	; (8059274 <MPU_xQueueGenericCreate+0x5c>)
 8059246:	4798      	blx	r3
 8059248:	61b8      	str	r0, [r7, #24]
 805924a:	69bb      	ldr	r3, [r7, #24]
 805924c:	2b00      	cmp	r3, #0
 805924e:	d009      	beq.n	8059264 <MPU_xQueueGenericCreate+0x4c>
 8059250:	2301      	movs	r3, #1
 8059252:	2200      	movs	r2, #0
 8059254:	69b9      	ldr	r1, [r7, #24]
 8059256:	6978      	ldr	r0, [r7, #20]
 8059258:	f000 fd28 	bl	8059cac <MPU_StoreHandleAndDataAtIndex>
 805925c:	697b      	ldr	r3, [r7, #20]
 805925e:	3301      	adds	r3, #1
 8059260:	61fb      	str	r3, [r7, #28]
 8059262:	e002      	b.n	805926a <MPU_xQueueGenericCreate+0x52>
 8059264:	6978      	ldr	r0, [r7, #20]
 8059266:	f000 fca5 	bl	8059bb4 <MPU_SetIndexFreeInKernelObjectPool>
 805926a:	69fb      	ldr	r3, [r7, #28]
 805926c:	4618      	mov	r0, r3
 805926e:	3720      	adds	r7, #32
 8059270:	46bd      	mov	sp, r7
 8059272:	bd80      	pop	{r7, pc}
 8059274:	0805d381 	.word	0x0805d381

08059278 <MPU_xQueueGenericReset>:
 8059278:	b580      	push	{r7, lr}
 805927a:	b086      	sub	sp, #24
 805927c:	af00      	add	r7, sp, #0
 805927e:	6078      	str	r0, [r7, #4]
 8059280:	6039      	str	r1, [r7, #0]
 8059282:	2300      	movs	r3, #0
 8059284:	613b      	str	r3, [r7, #16]
 8059286:	2300      	movs	r3, #0
 8059288:	617b      	str	r3, [r7, #20]
 805928a:	687b      	ldr	r3, [r7, #4]
 805928c:	60fb      	str	r3, [r7, #12]
 805928e:	68fb      	ldr	r3, [r7, #12]
 8059290:	2b00      	cmp	r3, #0
 8059292:	dd05      	ble.n	80592a0 <MPU_xQueueGenericReset+0x28>
 8059294:	68fb      	ldr	r3, [r7, #12]
 8059296:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805929a:	dc01      	bgt.n	80592a0 <MPU_xQueueGenericReset+0x28>
 805929c:	2301      	movs	r3, #1
 805929e:	e000      	b.n	80592a2 <MPU_xQueueGenericReset+0x2a>
 80592a0:	2300      	movs	r3, #0
 80592a2:	2b00      	cmp	r3, #0
 80592a4:	d00e      	beq.n	80592c4 <MPU_xQueueGenericReset+0x4c>
 80592a6:	68fb      	ldr	r3, [r7, #12]
 80592a8:	3b01      	subs	r3, #1
 80592aa:	2101      	movs	r1, #1
 80592ac:	4618      	mov	r0, r3
 80592ae:	f000 fd39 	bl	8059d24 <MPU_GetHandleAtIndex>
 80592b2:	6138      	str	r0, [r7, #16]
 80592b4:	693b      	ldr	r3, [r7, #16]
 80592b6:	2b00      	cmp	r3, #0
 80592b8:	d004      	beq.n	80592c4 <MPU_xQueueGenericReset+0x4c>
 80592ba:	6839      	ldr	r1, [r7, #0]
 80592bc:	6938      	ldr	r0, [r7, #16]
 80592be:	4b04      	ldr	r3, [pc, #16]	; (80592d0 <MPU_xQueueGenericReset+0x58>)
 80592c0:	4798      	blx	r3
 80592c2:	6178      	str	r0, [r7, #20]
 80592c4:	697b      	ldr	r3, [r7, #20]
 80592c6:	4618      	mov	r0, r3
 80592c8:	3718      	adds	r7, #24
 80592ca:	46bd      	mov	sp, r7
 80592cc:	bd80      	pop	{r7, pc}
 80592ce:	bf00      	nop
 80592d0:	0805d489 	.word	0x0805d489

080592d4 <MPU_xQueueGenericSendFromISR>:
 80592d4:	b590      	push	{r4, r7, lr}
 80592d6:	b089      	sub	sp, #36	; 0x24
 80592d8:	af00      	add	r7, sp, #0
 80592da:	60f8      	str	r0, [r7, #12]
 80592dc:	60b9      	str	r1, [r7, #8]
 80592de:	607a      	str	r2, [r7, #4]
 80592e0:	603b      	str	r3, [r7, #0]
 80592e2:	2300      	movs	r3, #0
 80592e4:	61fb      	str	r3, [r7, #28]
 80592e6:	2300      	movs	r3, #0
 80592e8:	61bb      	str	r3, [r7, #24]
 80592ea:	68fb      	ldr	r3, [r7, #12]
 80592ec:	617b      	str	r3, [r7, #20]
 80592ee:	697b      	ldr	r3, [r7, #20]
 80592f0:	2b00      	cmp	r3, #0
 80592f2:	dd05      	ble.n	8059300 <MPU_xQueueGenericSendFromISR+0x2c>
 80592f4:	697b      	ldr	r3, [r7, #20]
 80592f6:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 80592fa:	dc01      	bgt.n	8059300 <MPU_xQueueGenericSendFromISR+0x2c>
 80592fc:	2301      	movs	r3, #1
 80592fe:	e000      	b.n	8059302 <MPU_xQueueGenericSendFromISR+0x2e>
 8059300:	2300      	movs	r3, #0
 8059302:	2b00      	cmp	r3, #0
 8059304:	d010      	beq.n	8059328 <MPU_xQueueGenericSendFromISR+0x54>
 8059306:	697b      	ldr	r3, [r7, #20]
 8059308:	3b01      	subs	r3, #1
 805930a:	2101      	movs	r1, #1
 805930c:	4618      	mov	r0, r3
 805930e:	f000 fd09 	bl	8059d24 <MPU_GetHandleAtIndex>
 8059312:	61b8      	str	r0, [r7, #24]
 8059314:	69bb      	ldr	r3, [r7, #24]
 8059316:	2b00      	cmp	r3, #0
 8059318:	d006      	beq.n	8059328 <MPU_xQueueGenericSendFromISR+0x54>
 805931a:	683b      	ldr	r3, [r7, #0]
 805931c:	687a      	ldr	r2, [r7, #4]
 805931e:	68b9      	ldr	r1, [r7, #8]
 8059320:	69b8      	ldr	r0, [r7, #24]
 8059322:	4c04      	ldr	r4, [pc, #16]	; (8059334 <MPU_xQueueGenericSendFromISR+0x60>)
 8059324:	47a0      	blx	r4
 8059326:	61f8      	str	r0, [r7, #28]
 8059328:	69fb      	ldr	r3, [r7, #28]
 805932a:	4618      	mov	r0, r3
 805932c:	3724      	adds	r7, #36	; 0x24
 805932e:	46bd      	mov	sp, r7
 8059330:	bd90      	pop	{r4, r7, pc}
 8059332:	bf00      	nop
 8059334:	0805cae5 	.word	0x0805cae5

08059338 <MPU_xQueueGiveFromISR>:
 8059338:	b580      	push	{r7, lr}
 805933a:	b086      	sub	sp, #24
 805933c:	af00      	add	r7, sp, #0
 805933e:	6078      	str	r0, [r7, #4]
 8059340:	6039      	str	r1, [r7, #0]
 8059342:	2300      	movs	r3, #0
 8059344:	617b      	str	r3, [r7, #20]
 8059346:	2300      	movs	r3, #0
 8059348:	613b      	str	r3, [r7, #16]
 805934a:	687b      	ldr	r3, [r7, #4]
 805934c:	60fb      	str	r3, [r7, #12]
 805934e:	68fb      	ldr	r3, [r7, #12]
 8059350:	2b00      	cmp	r3, #0
 8059352:	dd05      	ble.n	8059360 <MPU_xQueueGiveFromISR+0x28>
 8059354:	68fb      	ldr	r3, [r7, #12]
 8059356:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805935a:	dc01      	bgt.n	8059360 <MPU_xQueueGiveFromISR+0x28>
 805935c:	2301      	movs	r3, #1
 805935e:	e000      	b.n	8059362 <MPU_xQueueGiveFromISR+0x2a>
 8059360:	2300      	movs	r3, #0
 8059362:	2b00      	cmp	r3, #0
 8059364:	d00e      	beq.n	8059384 <MPU_xQueueGiveFromISR+0x4c>
 8059366:	68fb      	ldr	r3, [r7, #12]
 8059368:	3b01      	subs	r3, #1
 805936a:	2101      	movs	r1, #1
 805936c:	4618      	mov	r0, r3
 805936e:	f000 fcd9 	bl	8059d24 <MPU_GetHandleAtIndex>
 8059372:	6138      	str	r0, [r7, #16]
 8059374:	693b      	ldr	r3, [r7, #16]
 8059376:	2b00      	cmp	r3, #0
 8059378:	d004      	beq.n	8059384 <MPU_xQueueGiveFromISR+0x4c>
 805937a:	6839      	ldr	r1, [r7, #0]
 805937c:	6938      	ldr	r0, [r7, #16]
 805937e:	4b04      	ldr	r3, [pc, #16]	; (8059390 <MPU_xQueueGiveFromISR+0x58>)
 8059380:	4798      	blx	r3
 8059382:	6178      	str	r0, [r7, #20]
 8059384:	697b      	ldr	r3, [r7, #20]
 8059386:	4618      	mov	r0, r3
 8059388:	3718      	adds	r7, #24
 805938a:	46bd      	mov	sp, r7
 805938c:	bd80      	pop	{r7, pc}
 805938e:	bf00      	nop
 8059390:	0805cbfd 	.word	0x0805cbfd

08059394 <MPU_xQueuePeekFromISR>:
 8059394:	b580      	push	{r7, lr}
 8059396:	b086      	sub	sp, #24
 8059398:	af00      	add	r7, sp, #0
 805939a:	6078      	str	r0, [r7, #4]
 805939c:	6039      	str	r1, [r7, #0]
 805939e:	2300      	movs	r3, #0
 80593a0:	617b      	str	r3, [r7, #20]
 80593a2:	2300      	movs	r3, #0
 80593a4:	613b      	str	r3, [r7, #16]
 80593a6:	687b      	ldr	r3, [r7, #4]
 80593a8:	60fb      	str	r3, [r7, #12]
 80593aa:	68fb      	ldr	r3, [r7, #12]
 80593ac:	2b00      	cmp	r3, #0
 80593ae:	dd05      	ble.n	80593bc <MPU_xQueuePeekFromISR+0x28>
 80593b0:	68fb      	ldr	r3, [r7, #12]
 80593b2:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 80593b6:	dc01      	bgt.n	80593bc <MPU_xQueuePeekFromISR+0x28>
 80593b8:	2301      	movs	r3, #1
 80593ba:	e000      	b.n	80593be <MPU_xQueuePeekFromISR+0x2a>
 80593bc:	2300      	movs	r3, #0
 80593be:	2b00      	cmp	r3, #0
 80593c0:	d00e      	beq.n	80593e0 <MPU_xQueuePeekFromISR+0x4c>
 80593c2:	68fb      	ldr	r3, [r7, #12]
 80593c4:	3b01      	subs	r3, #1
 80593c6:	2101      	movs	r1, #1
 80593c8:	4618      	mov	r0, r3
 80593ca:	f000 fcab 	bl	8059d24 <MPU_GetHandleAtIndex>
 80593ce:	6138      	str	r0, [r7, #16]
 80593d0:	693b      	ldr	r3, [r7, #16]
 80593d2:	2b00      	cmp	r3, #0
 80593d4:	d004      	beq.n	80593e0 <MPU_xQueuePeekFromISR+0x4c>
 80593d6:	6839      	ldr	r1, [r7, #0]
 80593d8:	6938      	ldr	r0, [r7, #16]
 80593da:	4b04      	ldr	r3, [pc, #16]	; (80593ec <MPU_xQueuePeekFromISR+0x58>)
 80593dc:	4798      	blx	r3
 80593de:	6178      	str	r0, [r7, #20]
 80593e0:	697b      	ldr	r3, [r7, #20]
 80593e2:	4618      	mov	r0, r3
 80593e4:	3718      	adds	r7, #24
 80593e6:	46bd      	mov	sp, r7
 80593e8:	bd80      	pop	{r7, pc}
 80593ea:	bf00      	nop
 80593ec:	0805c801 	.word	0x0805c801

080593f0 <MPU_xQueueReceiveFromISR>:
 80593f0:	b580      	push	{r7, lr}
 80593f2:	b088      	sub	sp, #32
 80593f4:	af00      	add	r7, sp, #0
 80593f6:	60f8      	str	r0, [r7, #12]
 80593f8:	60b9      	str	r1, [r7, #8]
 80593fa:	607a      	str	r2, [r7, #4]
 80593fc:	2300      	movs	r3, #0
 80593fe:	61fb      	str	r3, [r7, #28]
 8059400:	2300      	movs	r3, #0
 8059402:	61bb      	str	r3, [r7, #24]
 8059404:	68fb      	ldr	r3, [r7, #12]
 8059406:	617b      	str	r3, [r7, #20]
 8059408:	697b      	ldr	r3, [r7, #20]
 805940a:	2b00      	cmp	r3, #0
 805940c:	dd05      	ble.n	805941a <MPU_xQueueReceiveFromISR+0x2a>
 805940e:	697b      	ldr	r3, [r7, #20]
 8059410:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8059414:	dc01      	bgt.n	805941a <MPU_xQueueReceiveFromISR+0x2a>
 8059416:	2301      	movs	r3, #1
 8059418:	e000      	b.n	805941c <MPU_xQueueReceiveFromISR+0x2c>
 805941a:	2300      	movs	r3, #0
 805941c:	2b00      	cmp	r3, #0
 805941e:	d00f      	beq.n	8059440 <MPU_xQueueReceiveFromISR+0x50>
 8059420:	697b      	ldr	r3, [r7, #20]
 8059422:	3b01      	subs	r3, #1
 8059424:	2101      	movs	r1, #1
 8059426:	4618      	mov	r0, r3
 8059428:	f000 fc7c 	bl	8059d24 <MPU_GetHandleAtIndex>
 805942c:	61b8      	str	r0, [r7, #24]
 805942e:	69bb      	ldr	r3, [r7, #24]
 8059430:	2b00      	cmp	r3, #0
 8059432:	d005      	beq.n	8059440 <MPU_xQueueReceiveFromISR+0x50>
 8059434:	687a      	ldr	r2, [r7, #4]
 8059436:	68b9      	ldr	r1, [r7, #8]
 8059438:	69b8      	ldr	r0, [r7, #24]
 805943a:	4b04      	ldr	r3, [pc, #16]	; (805944c <MPU_xQueueReceiveFromISR+0x5c>)
 805943c:	4798      	blx	r3
 805943e:	61f8      	str	r0, [r7, #28]
 8059440:	69fb      	ldr	r3, [r7, #28]
 8059442:	4618      	mov	r0, r3
 8059444:	3720      	adds	r7, #32
 8059446:	46bd      	mov	sp, r7
 8059448:	bd80      	pop	{r7, pc}
 805944a:	bf00      	nop
 805944c:	0805ccf9 	.word	0x0805ccf9

08059450 <MPU_xQueueIsQueueEmptyFromISR>:
 8059450:	b580      	push	{r7, lr}
 8059452:	b086      	sub	sp, #24
 8059454:	af00      	add	r7, sp, #0
 8059456:	6078      	str	r0, [r7, #4]
 8059458:	2300      	movs	r3, #0
 805945a:	617b      	str	r3, [r7, #20]
 805945c:	2300      	movs	r3, #0
 805945e:	613b      	str	r3, [r7, #16]
 8059460:	687b      	ldr	r3, [r7, #4]
 8059462:	60fb      	str	r3, [r7, #12]
 8059464:	68fb      	ldr	r3, [r7, #12]
 8059466:	2b00      	cmp	r3, #0
 8059468:	dd05      	ble.n	8059476 <MPU_xQueueIsQueueEmptyFromISR+0x26>
 805946a:	68fb      	ldr	r3, [r7, #12]
 805946c:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8059470:	dc01      	bgt.n	8059476 <MPU_xQueueIsQueueEmptyFromISR+0x26>
 8059472:	2301      	movs	r3, #1
 8059474:	e000      	b.n	8059478 <MPU_xQueueIsQueueEmptyFromISR+0x28>
 8059476:	2300      	movs	r3, #0
 8059478:	2b00      	cmp	r3, #0
 805947a:	d00d      	beq.n	8059498 <MPU_xQueueIsQueueEmptyFromISR+0x48>
 805947c:	68fb      	ldr	r3, [r7, #12]
 805947e:	3b01      	subs	r3, #1
 8059480:	2101      	movs	r1, #1
 8059482:	4618      	mov	r0, r3
 8059484:	f000 fc4e 	bl	8059d24 <MPU_GetHandleAtIndex>
 8059488:	6138      	str	r0, [r7, #16]
 805948a:	693b      	ldr	r3, [r7, #16]
 805948c:	2b00      	cmp	r3, #0
 805948e:	d003      	beq.n	8059498 <MPU_xQueueIsQueueEmptyFromISR+0x48>
 8059490:	6938      	ldr	r0, [r7, #16]
 8059492:	4b04      	ldr	r3, [pc, #16]	; (80594a4 <MPU_xQueueIsQueueEmptyFromISR+0x54>)
 8059494:	4798      	blx	r3
 8059496:	6178      	str	r0, [r7, #20]
 8059498:	697b      	ldr	r3, [r7, #20]
 805949a:	4618      	mov	r0, r3
 805949c:	3718      	adds	r7, #24
 805949e:	46bd      	mov	sp, r7
 80594a0:	bd80      	pop	{r7, pc}
 80594a2:	bf00      	nop
 80594a4:	0805cded 	.word	0x0805cded

080594a8 <MPU_xQueueIsQueueFullFromISR>:
 80594a8:	b580      	push	{r7, lr}
 80594aa:	b086      	sub	sp, #24
 80594ac:	af00      	add	r7, sp, #0
 80594ae:	6078      	str	r0, [r7, #4]
 80594b0:	2300      	movs	r3, #0
 80594b2:	617b      	str	r3, [r7, #20]
 80594b4:	2300      	movs	r3, #0
 80594b6:	613b      	str	r3, [r7, #16]
 80594b8:	687b      	ldr	r3, [r7, #4]
 80594ba:	60fb      	str	r3, [r7, #12]
 80594bc:	68fb      	ldr	r3, [r7, #12]
 80594be:	2b00      	cmp	r3, #0
 80594c0:	dd05      	ble.n	80594ce <MPU_xQueueIsQueueFullFromISR+0x26>
 80594c2:	68fb      	ldr	r3, [r7, #12]
 80594c4:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 80594c8:	dc01      	bgt.n	80594ce <MPU_xQueueIsQueueFullFromISR+0x26>
 80594ca:	2301      	movs	r3, #1
 80594cc:	e000      	b.n	80594d0 <MPU_xQueueIsQueueFullFromISR+0x28>
 80594ce:	2300      	movs	r3, #0
 80594d0:	2b00      	cmp	r3, #0
 80594d2:	d00d      	beq.n	80594f0 <MPU_xQueueIsQueueFullFromISR+0x48>
 80594d4:	68fb      	ldr	r3, [r7, #12]
 80594d6:	3b01      	subs	r3, #1
 80594d8:	2101      	movs	r1, #1
 80594da:	4618      	mov	r0, r3
 80594dc:	f000 fc22 	bl	8059d24 <MPU_GetHandleAtIndex>
 80594e0:	6138      	str	r0, [r7, #16]
 80594e2:	693b      	ldr	r3, [r7, #16]
 80594e4:	2b00      	cmp	r3, #0
 80594e6:	d003      	beq.n	80594f0 <MPU_xQueueIsQueueFullFromISR+0x48>
 80594e8:	6938      	ldr	r0, [r7, #16]
 80594ea:	4b04      	ldr	r3, [pc, #16]	; (80594fc <MPU_xQueueIsQueueFullFromISR+0x54>)
 80594ec:	4798      	blx	r3
 80594ee:	6178      	str	r0, [r7, #20]
 80594f0:	697b      	ldr	r3, [r7, #20]
 80594f2:	4618      	mov	r0, r3
 80594f4:	3718      	adds	r7, #24
 80594f6:	46bd      	mov	sp, r7
 80594f8:	bd80      	pop	{r7, pc}
 80594fa:	bf00      	nop
 80594fc:	0805ce25 	.word	0x0805ce25

08059500 <MPU_uxQueueMessagesWaitingFromISR>:
 8059500:	b580      	push	{r7, lr}
 8059502:	b086      	sub	sp, #24
 8059504:	af00      	add	r7, sp, #0
 8059506:	6078      	str	r0, [r7, #4]
 8059508:	2300      	movs	r3, #0
 805950a:	617b      	str	r3, [r7, #20]
 805950c:	2300      	movs	r3, #0
 805950e:	613b      	str	r3, [r7, #16]
 8059510:	687b      	ldr	r3, [r7, #4]
 8059512:	60fb      	str	r3, [r7, #12]
 8059514:	68fb      	ldr	r3, [r7, #12]
 8059516:	2b00      	cmp	r3, #0
 8059518:	dd05      	ble.n	8059526 <MPU_uxQueueMessagesWaitingFromISR+0x26>
 805951a:	68fb      	ldr	r3, [r7, #12]
 805951c:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8059520:	dc01      	bgt.n	8059526 <MPU_uxQueueMessagesWaitingFromISR+0x26>
 8059522:	2301      	movs	r3, #1
 8059524:	e000      	b.n	8059528 <MPU_uxQueueMessagesWaitingFromISR+0x28>
 8059526:	2300      	movs	r3, #0
 8059528:	2b00      	cmp	r3, #0
 805952a:	d00d      	beq.n	8059548 <MPU_uxQueueMessagesWaitingFromISR+0x48>
 805952c:	68fb      	ldr	r3, [r7, #12]
 805952e:	3b01      	subs	r3, #1
 8059530:	2101      	movs	r1, #1
 8059532:	4618      	mov	r0, r3
 8059534:	f000 fbf6 	bl	8059d24 <MPU_GetHandleAtIndex>
 8059538:	6138      	str	r0, [r7, #16]
 805953a:	693b      	ldr	r3, [r7, #16]
 805953c:	2b00      	cmp	r3, #0
 805953e:	d003      	beq.n	8059548 <MPU_uxQueueMessagesWaitingFromISR+0x48>
 8059540:	6938      	ldr	r0, [r7, #16]
 8059542:	4b04      	ldr	r3, [pc, #16]	; (8059554 <MPU_uxQueueMessagesWaitingFromISR+0x54>)
 8059544:	4798      	blx	r3
 8059546:	6178      	str	r0, [r7, #20]
 8059548:	697b      	ldr	r3, [r7, #20]
 805954a:	4618      	mov	r0, r3
 805954c:	3718      	adds	r7, #24
 805954e:	46bd      	mov	sp, r7
 8059550:	bd80      	pop	{r7, pc}
 8059552:	bf00      	nop
 8059554:	0805ce61 	.word	0x0805ce61

08059558 <MPU_xQueueGetMutexHolderFromISR>:
 8059558:	b580      	push	{r7, lr}
 805955a:	b088      	sub	sp, #32
 805955c:	af00      	add	r7, sp, #0
 805955e:	6078      	str	r0, [r7, #4]
 8059560:	2300      	movs	r3, #0
 8059562:	61bb      	str	r3, [r7, #24]
 8059564:	2300      	movs	r3, #0
 8059566:	61fb      	str	r3, [r7, #28]
 8059568:	2300      	movs	r3, #0
 805956a:	617b      	str	r3, [r7, #20]
 805956c:	687b      	ldr	r3, [r7, #4]
 805956e:	613b      	str	r3, [r7, #16]
 8059570:	693b      	ldr	r3, [r7, #16]
 8059572:	2b00      	cmp	r3, #0
 8059574:	dd05      	ble.n	8059582 <MPU_xQueueGetMutexHolderFromISR+0x2a>
 8059576:	693b      	ldr	r3, [r7, #16]
 8059578:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805957c:	dc01      	bgt.n	8059582 <MPU_xQueueGetMutexHolderFromISR+0x2a>
 805957e:	2301      	movs	r3, #1
 8059580:	e000      	b.n	8059584 <MPU_xQueueGetMutexHolderFromISR+0x2c>
 8059582:	2300      	movs	r3, #0
 8059584:	2b00      	cmp	r3, #0
 8059586:	d01c      	beq.n	80595c2 <MPU_xQueueGetMutexHolderFromISR+0x6a>
 8059588:	693b      	ldr	r3, [r7, #16]
 805958a:	3b01      	subs	r3, #1
 805958c:	2101      	movs	r1, #1
 805958e:	4618      	mov	r0, r3
 8059590:	f000 fbc8 	bl	8059d24 <MPU_GetHandleAtIndex>
 8059594:	6178      	str	r0, [r7, #20]
 8059596:	697b      	ldr	r3, [r7, #20]
 8059598:	2b00      	cmp	r3, #0
 805959a:	d012      	beq.n	80595c2 <MPU_xQueueGetMutexHolderFromISR+0x6a>
 805959c:	6978      	ldr	r0, [r7, #20]
 805959e:	4b0b      	ldr	r3, [pc, #44]	; (80595cc <MPU_xQueueGetMutexHolderFromISR+0x74>)
 80595a0:	4798      	blx	r3
 80595a2:	61b8      	str	r0, [r7, #24]
 80595a4:	69bb      	ldr	r3, [r7, #24]
 80595a6:	2b00      	cmp	r3, #0
 80595a8:	d00b      	beq.n	80595c2 <MPU_xQueueGetMutexHolderFromISR+0x6a>
 80595aa:	2102      	movs	r1, #2
 80595ac:	69b8      	ldr	r0, [r7, #24]
 80595ae:	f000 fb41 	bl	8059c34 <MPU_GetIndexForHandle>
 80595b2:	60f8      	str	r0, [r7, #12]
 80595b4:	68fb      	ldr	r3, [r7, #12]
 80595b6:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 80595ba:	d002      	beq.n	80595c2 <MPU_xQueueGetMutexHolderFromISR+0x6a>
 80595bc:	68fb      	ldr	r3, [r7, #12]
 80595be:	3301      	adds	r3, #1
 80595c0:	61fb      	str	r3, [r7, #28]
 80595c2:	69fb      	ldr	r3, [r7, #28]
 80595c4:	4618      	mov	r0, r3
 80595c6:	3720      	adds	r7, #32
 80595c8:	46bd      	mov	sp, r7
 80595ca:	bd80      	pop	{r7, pc}
 80595cc:	0805d0f5 	.word	0x0805d0f5

080595d0 <MPU_xTimerCreate>:
 80595d0:	b590      	push	{r4, r7, lr}
 80595d2:	b08b      	sub	sp, #44	; 0x2c
 80595d4:	af02      	add	r7, sp, #8
 80595d6:	60f8      	str	r0, [r7, #12]
 80595d8:	60b9      	str	r1, [r7, #8]
 80595da:	607a      	str	r2, [r7, #4]
 80595dc:	603b      	str	r3, [r7, #0]
 80595de:	2300      	movs	r3, #0
 80595e0:	61bb      	str	r3, [r7, #24]
 80595e2:	2300      	movs	r3, #0
 80595e4:	61fb      	str	r3, [r7, #28]
 80595e6:	f000 faaf 	bl	8059b48 <MPU_GetFreeIndexInKernelObjectPool>
 80595ea:	6178      	str	r0, [r7, #20]
 80595ec:	697b      	ldr	r3, [r7, #20]
 80595ee:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 80595f2:	d018      	beq.n	8059626 <MPU_xTimerCreate+0x56>
 80595f4:	687a      	ldr	r2, [r7, #4]
 80595f6:	4b0e      	ldr	r3, [pc, #56]	; (8059630 <MPU_xTimerCreate+0x60>)
 80595f8:	9300      	str	r3, [sp, #0]
 80595fa:	683b      	ldr	r3, [r7, #0]
 80595fc:	68b9      	ldr	r1, [r7, #8]
 80595fe:	68f8      	ldr	r0, [r7, #12]
 8059600:	4c0c      	ldr	r4, [pc, #48]	; (8059634 <MPU_xTimerCreate+0x64>)
 8059602:	47a0      	blx	r4
 8059604:	61b8      	str	r0, [r7, #24]
 8059606:	69bb      	ldr	r3, [r7, #24]
 8059608:	2b00      	cmp	r3, #0
 805960a:	d009      	beq.n	8059620 <MPU_xTimerCreate+0x50>
 805960c:	2305      	movs	r3, #5
 805960e:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 8059610:	69b9      	ldr	r1, [r7, #24]
 8059612:	6978      	ldr	r0, [r7, #20]
 8059614:	f000 fb4a 	bl	8059cac <MPU_StoreHandleAndDataAtIndex>
 8059618:	697b      	ldr	r3, [r7, #20]
 805961a:	3301      	adds	r3, #1
 805961c:	61fb      	str	r3, [r7, #28]
 805961e:	e002      	b.n	8059626 <MPU_xTimerCreate+0x56>
 8059620:	6978      	ldr	r0, [r7, #20]
 8059622:	f000 fac7 	bl	8059bb4 <MPU_SetIndexFreeInKernelObjectPool>
 8059626:	69fb      	ldr	r3, [r7, #28]
 8059628:	4618      	mov	r0, r3
 805962a:	3724      	adds	r7, #36	; 0x24
 805962c:	46bd      	mov	sp, r7
 805962e:	bd90      	pop	{r4, r7, pc}
 8059630:	08059d8d 	.word	0x08059d8d
 8059634:	08058215 	.word	0x08058215

08059638 <MPU_xTimerGenericCommandFromISR>:
 8059638:	b590      	push	{r4, r7, lr}
 805963a:	b08b      	sub	sp, #44	; 0x2c
 805963c:	af02      	add	r7, sp, #8
 805963e:	60f8      	str	r0, [r7, #12]
 8059640:	60b9      	str	r1, [r7, #8]
 8059642:	607a      	str	r2, [r7, #4]
 8059644:	603b      	str	r3, [r7, #0]
 8059646:	2300      	movs	r3, #0
 8059648:	61fb      	str	r3, [r7, #28]
 805964a:	2300      	movs	r3, #0
 805964c:	617b      	str	r3, [r7, #20]
 805964e:	2300      	movs	r3, #0
 8059650:	61bb      	str	r3, [r7, #24]
 8059652:	683b      	ldr	r3, [r7, #0]
 8059654:	2b00      	cmp	r3, #0
 8059656:	d005      	beq.n	8059664 <MPU_xTimerGenericCommandFromISR+0x2c>
 8059658:	2202      	movs	r2, #2
 805965a:	2104      	movs	r1, #4
 805965c:	6838      	ldr	r0, [r7, #0]
 805965e:	4b17      	ldr	r3, [pc, #92]	; (80596bc <MPU_xTimerGenericCommandFromISR+0x84>)
 8059660:	4798      	blx	r3
 8059662:	61b8      	str	r0, [r7, #24]
 8059664:	683b      	ldr	r3, [r7, #0]
 8059666:	2b00      	cmp	r3, #0
 8059668:	d002      	beq.n	8059670 <MPU_xTimerGenericCommandFromISR+0x38>
 805966a:	69bb      	ldr	r3, [r7, #24]
 805966c:	2b01      	cmp	r3, #1
 805966e:	d120      	bne.n	80596b2 <MPU_xTimerGenericCommandFromISR+0x7a>
 8059670:	68fb      	ldr	r3, [r7, #12]
 8059672:	613b      	str	r3, [r7, #16]
 8059674:	693b      	ldr	r3, [r7, #16]
 8059676:	2b00      	cmp	r3, #0
 8059678:	dd05      	ble.n	8059686 <MPU_xTimerGenericCommandFromISR+0x4e>
 805967a:	693b      	ldr	r3, [r7, #16]
 805967c:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8059680:	dc01      	bgt.n	8059686 <MPU_xTimerGenericCommandFromISR+0x4e>
 8059682:	2301      	movs	r3, #1
 8059684:	e000      	b.n	8059688 <MPU_xTimerGenericCommandFromISR+0x50>
 8059686:	2300      	movs	r3, #0
 8059688:	2b00      	cmp	r3, #0
 805968a:	d012      	beq.n	80596b2 <MPU_xTimerGenericCommandFromISR+0x7a>
 805968c:	693b      	ldr	r3, [r7, #16]
 805968e:	3b01      	subs	r3, #1
 8059690:	2105      	movs	r1, #5
 8059692:	4618      	mov	r0, r3
 8059694:	f000 fb46 	bl	8059d24 <MPU_GetHandleAtIndex>
 8059698:	6178      	str	r0, [r7, #20]
 805969a:	697b      	ldr	r3, [r7, #20]
 805969c:	2b00      	cmp	r3, #0
 805969e:	d008      	beq.n	80596b2 <MPU_xTimerGenericCommandFromISR+0x7a>
 80596a0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80596a2:	9300      	str	r3, [sp, #0]
 80596a4:	683b      	ldr	r3, [r7, #0]
 80596a6:	687a      	ldr	r2, [r7, #4]
 80596a8:	68b9      	ldr	r1, [r7, #8]
 80596aa:	6978      	ldr	r0, [r7, #20]
 80596ac:	4c04      	ldr	r4, [pc, #16]	; (80596c0 <MPU_xTimerGenericCommandFromISR+0x88>)
 80596ae:	47a0      	blx	r4
 80596b0:	61f8      	str	r0, [r7, #28]
 80596b2:	69fb      	ldr	r3, [r7, #28]
 80596b4:	4618      	mov	r0, r3
 80596b6:	3724      	adds	r7, #36	; 0x24
 80596b8:	46bd      	mov	sp, r7
 80596ba:	bd90      	pop	{r4, r7, pc}
 80596bc:	0805ea15 	.word	0x0805ea15
 80596c0:	08058621 	.word	0x08058621

080596c4 <MPU_xEventGroupCreate>:
 80596c4:	b580      	push	{r7, lr}
 80596c6:	b084      	sub	sp, #16
 80596c8:	af00      	add	r7, sp, #0
 80596ca:	2300      	movs	r3, #0
 80596cc:	60bb      	str	r3, [r7, #8]
 80596ce:	2300      	movs	r3, #0
 80596d0:	60fb      	str	r3, [r7, #12]
 80596d2:	f000 fa39 	bl	8059b48 <MPU_GetFreeIndexInKernelObjectPool>
 80596d6:	6078      	str	r0, [r7, #4]
 80596d8:	687b      	ldr	r3, [r7, #4]
 80596da:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 80596de:	d012      	beq.n	8059706 <MPU_xEventGroupCreate+0x42>
 80596e0:	4b0b      	ldr	r3, [pc, #44]	; (8059710 <MPU_xEventGroupCreate+0x4c>)
 80596e2:	4798      	blx	r3
 80596e4:	60b8      	str	r0, [r7, #8]
 80596e6:	68bb      	ldr	r3, [r7, #8]
 80596e8:	2b00      	cmp	r3, #0
 80596ea:	d009      	beq.n	8059700 <MPU_xEventGroupCreate+0x3c>
 80596ec:	2304      	movs	r3, #4
 80596ee:	2200      	movs	r2, #0
 80596f0:	68b9      	ldr	r1, [r7, #8]
 80596f2:	6878      	ldr	r0, [r7, #4]
 80596f4:	f000 fada 	bl	8059cac <MPU_StoreHandleAndDataAtIndex>
 80596f8:	687b      	ldr	r3, [r7, #4]
 80596fa:	3301      	adds	r3, #1
 80596fc:	60fb      	str	r3, [r7, #12]
 80596fe:	e002      	b.n	8059706 <MPU_xEventGroupCreate+0x42>
 8059700:	6878      	ldr	r0, [r7, #4]
 8059702:	f000 fa57 	bl	8059bb4 <MPU_SetIndexFreeInKernelObjectPool>
 8059706:	68fb      	ldr	r3, [r7, #12]
 8059708:	4618      	mov	r0, r3
 805970a:	3710      	adds	r7, #16
 805970c:	46bd      	mov	sp, r7
 805970e:	bd80      	pop	{r7, pc}
 8059710:	0805bd39 	.word	0x0805bd39

08059714 <MPU_vEventGroupDelete>:
 8059714:	b580      	push	{r7, lr}
 8059716:	b084      	sub	sp, #16
 8059718:	af00      	add	r7, sp, #0
 805971a:	6078      	str	r0, [r7, #4]
 805971c:	2300      	movs	r3, #0
 805971e:	60fb      	str	r3, [r7, #12]
 8059720:	687b      	ldr	r3, [r7, #4]
 8059722:	60bb      	str	r3, [r7, #8]
 8059724:	68bb      	ldr	r3, [r7, #8]
 8059726:	2b00      	cmp	r3, #0
 8059728:	dd05      	ble.n	8059736 <MPU_vEventGroupDelete+0x22>
 805972a:	68bb      	ldr	r3, [r7, #8]
 805972c:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8059730:	dc01      	bgt.n	8059736 <MPU_vEventGroupDelete+0x22>
 8059732:	2301      	movs	r3, #1
 8059734:	e000      	b.n	8059738 <MPU_vEventGroupDelete+0x24>
 8059736:	2300      	movs	r3, #0
 8059738:	2b00      	cmp	r3, #0
 805973a:	d011      	beq.n	8059760 <MPU_vEventGroupDelete+0x4c>
 805973c:	68bb      	ldr	r3, [r7, #8]
 805973e:	3b01      	subs	r3, #1
 8059740:	2104      	movs	r1, #4
 8059742:	4618      	mov	r0, r3
 8059744:	f000 faee 	bl	8059d24 <MPU_GetHandleAtIndex>
 8059748:	60f8      	str	r0, [r7, #12]
 805974a:	68fb      	ldr	r3, [r7, #12]
 805974c:	2b00      	cmp	r3, #0
 805974e:	d007      	beq.n	8059760 <MPU_vEventGroupDelete+0x4c>
 8059750:	68f8      	ldr	r0, [r7, #12]
 8059752:	4b05      	ldr	r3, [pc, #20]	; (8059768 <MPU_vEventGroupDelete+0x54>)
 8059754:	4798      	blx	r3
 8059756:	68bb      	ldr	r3, [r7, #8]
 8059758:	3b01      	subs	r3, #1
 805975a:	4618      	mov	r0, r3
 805975c:	f000 fa2a 	bl	8059bb4 <MPU_SetIndexFreeInKernelObjectPool>
 8059760:	bf00      	nop
 8059762:	3710      	adds	r7, #16
 8059764:	46bd      	mov	sp, r7
 8059766:	bd80      	pop	{r7, pc}
 8059768:	0805c20d 	.word	0x0805c20d

0805976c <MPU_xEventGroupClearBitsFromISR>:
 805976c:	b580      	push	{r7, lr}
 805976e:	b086      	sub	sp, #24
 8059770:	af00      	add	r7, sp, #0
 8059772:	6078      	str	r0, [r7, #4]
 8059774:	6039      	str	r1, [r7, #0]
 8059776:	2300      	movs	r3, #0
 8059778:	617b      	str	r3, [r7, #20]
 805977a:	2300      	movs	r3, #0
 805977c:	613b      	str	r3, [r7, #16]
 805977e:	687b      	ldr	r3, [r7, #4]
 8059780:	60fb      	str	r3, [r7, #12]
 8059782:	68fb      	ldr	r3, [r7, #12]
 8059784:	2b00      	cmp	r3, #0
 8059786:	dd05      	ble.n	8059794 <MPU_xEventGroupClearBitsFromISR+0x28>
 8059788:	68fb      	ldr	r3, [r7, #12]
 805978a:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805978e:	dc01      	bgt.n	8059794 <MPU_xEventGroupClearBitsFromISR+0x28>
 8059790:	2301      	movs	r3, #1
 8059792:	e000      	b.n	8059796 <MPU_xEventGroupClearBitsFromISR+0x2a>
 8059794:	2300      	movs	r3, #0
 8059796:	2b00      	cmp	r3, #0
 8059798:	d00e      	beq.n	80597b8 <MPU_xEventGroupClearBitsFromISR+0x4c>
 805979a:	68fb      	ldr	r3, [r7, #12]
 805979c:	3b01      	subs	r3, #1
 805979e:	2104      	movs	r1, #4
 80597a0:	4618      	mov	r0, r3
 80597a2:	f000 fabf 	bl	8059d24 <MPU_GetHandleAtIndex>
 80597a6:	6138      	str	r0, [r7, #16]
 80597a8:	693b      	ldr	r3, [r7, #16]
 80597aa:	2b00      	cmp	r3, #0
 80597ac:	d004      	beq.n	80597b8 <MPU_xEventGroupClearBitsFromISR+0x4c>
 80597ae:	6839      	ldr	r1, [r7, #0]
 80597b0:	6938      	ldr	r0, [r7, #16]
 80597b2:	4b04      	ldr	r3, [pc, #16]	; (80597c4 <MPU_xEventGroupClearBitsFromISR+0x58>)
 80597b4:	4798      	blx	r3
 80597b6:	6178      	str	r0, [r7, #20]
 80597b8:	697b      	ldr	r3, [r7, #20]
 80597ba:	4618      	mov	r0, r3
 80597bc:	3718      	adds	r7, #24
 80597be:	46bd      	mov	sp, r7
 80597c0:	bd80      	pop	{r7, pc}
 80597c2:	bf00      	nop
 80597c4:	0805bf3d 	.word	0x0805bf3d

080597c8 <MPU_xEventGroupSetBitsFromISR>:
 80597c8:	b580      	push	{r7, lr}
 80597ca:	b088      	sub	sp, #32
 80597cc:	af00      	add	r7, sp, #0
 80597ce:	60f8      	str	r0, [r7, #12]
 80597d0:	60b9      	str	r1, [r7, #8]
 80597d2:	607a      	str	r2, [r7, #4]
 80597d4:	2300      	movs	r3, #0
 80597d6:	61fb      	str	r3, [r7, #28]
 80597d8:	2300      	movs	r3, #0
 80597da:	61bb      	str	r3, [r7, #24]
 80597dc:	68fb      	ldr	r3, [r7, #12]
 80597de:	617b      	str	r3, [r7, #20]
 80597e0:	697b      	ldr	r3, [r7, #20]
 80597e2:	2b00      	cmp	r3, #0
 80597e4:	dd05      	ble.n	80597f2 <MPU_xEventGroupSetBitsFromISR+0x2a>
 80597e6:	697b      	ldr	r3, [r7, #20]
 80597e8:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 80597ec:	dc01      	bgt.n	80597f2 <MPU_xEventGroupSetBitsFromISR+0x2a>
 80597ee:	2301      	movs	r3, #1
 80597f0:	e000      	b.n	80597f4 <MPU_xEventGroupSetBitsFromISR+0x2c>
 80597f2:	2300      	movs	r3, #0
 80597f4:	2b00      	cmp	r3, #0
 80597f6:	d00f      	beq.n	8059818 <MPU_xEventGroupSetBitsFromISR+0x50>
 80597f8:	697b      	ldr	r3, [r7, #20]
 80597fa:	3b01      	subs	r3, #1
 80597fc:	2104      	movs	r1, #4
 80597fe:	4618      	mov	r0, r3
 8059800:	f000 fa90 	bl	8059d24 <MPU_GetHandleAtIndex>
 8059804:	61b8      	str	r0, [r7, #24]
 8059806:	69bb      	ldr	r3, [r7, #24]
 8059808:	2b00      	cmp	r3, #0
 805980a:	d005      	beq.n	8059818 <MPU_xEventGroupSetBitsFromISR+0x50>
 805980c:	687a      	ldr	r2, [r7, #4]
 805980e:	68b9      	ldr	r1, [r7, #8]
 8059810:	69b8      	ldr	r0, [r7, #24]
 8059812:	4b04      	ldr	r3, [pc, #16]	; (8059824 <MPU_xEventGroupSetBitsFromISR+0x5c>)
 8059814:	4798      	blx	r3
 8059816:	61f8      	str	r0, [r7, #28]
 8059818:	69fb      	ldr	r3, [r7, #28]
 805981a:	4618      	mov	r0, r3
 805981c:	3720      	adds	r7, #32
 805981e:	46bd      	mov	sp, r7
 8059820:	bd80      	pop	{r7, pc}
 8059822:	bf00      	nop
 8059824:	0805c071 	.word	0x0805c071

08059828 <MPU_xEventGroupGetBitsFromISR>:
 8059828:	b580      	push	{r7, lr}
 805982a:	b086      	sub	sp, #24
 805982c:	af00      	add	r7, sp, #0
 805982e:	6078      	str	r0, [r7, #4]
 8059830:	2300      	movs	r3, #0
 8059832:	617b      	str	r3, [r7, #20]
 8059834:	2300      	movs	r3, #0
 8059836:	613b      	str	r3, [r7, #16]
 8059838:	687b      	ldr	r3, [r7, #4]
 805983a:	60fb      	str	r3, [r7, #12]
 805983c:	68fb      	ldr	r3, [r7, #12]
 805983e:	2b00      	cmp	r3, #0
 8059840:	dd05      	ble.n	805984e <MPU_xEventGroupGetBitsFromISR+0x26>
 8059842:	68fb      	ldr	r3, [r7, #12]
 8059844:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8059848:	dc01      	bgt.n	805984e <MPU_xEventGroupGetBitsFromISR+0x26>
 805984a:	2301      	movs	r3, #1
 805984c:	e000      	b.n	8059850 <MPU_xEventGroupGetBitsFromISR+0x28>
 805984e:	2300      	movs	r3, #0
 8059850:	2b00      	cmp	r3, #0
 8059852:	d00d      	beq.n	8059870 <MPU_xEventGroupGetBitsFromISR+0x48>
 8059854:	68fb      	ldr	r3, [r7, #12]
 8059856:	3b01      	subs	r3, #1
 8059858:	2104      	movs	r1, #4
 805985a:	4618      	mov	r0, r3
 805985c:	f000 fa62 	bl	8059d24 <MPU_GetHandleAtIndex>
 8059860:	6138      	str	r0, [r7, #16]
 8059862:	693b      	ldr	r3, [r7, #16]
 8059864:	2b00      	cmp	r3, #0
 8059866:	d003      	beq.n	8059870 <MPU_xEventGroupGetBitsFromISR+0x48>
 8059868:	6938      	ldr	r0, [r7, #16]
 805986a:	4b04      	ldr	r3, [pc, #16]	; (805987c <MPU_xEventGroupGetBitsFromISR+0x54>)
 805986c:	4798      	blx	r3
 805986e:	6178      	str	r0, [r7, #20]
 8059870:	697b      	ldr	r3, [r7, #20]
 8059872:	4618      	mov	r0, r3
 8059874:	3718      	adds	r7, #24
 8059876:	46bd      	mov	sp, r7
 8059878:	bd80      	pop	{r7, pc}
 805987a:	bf00      	nop
 805987c:	0805c1dd 	.word	0x0805c1dd

08059880 <MPU_xStreamBufferGenericCreate>:
 8059880:	b590      	push	{r4, r7, lr}
 8059882:	b08b      	sub	sp, #44	; 0x2c
 8059884:	af02      	add	r7, sp, #8
 8059886:	60f8      	str	r0, [r7, #12]
 8059888:	60b9      	str	r1, [r7, #8]
 805988a:	607a      	str	r2, [r7, #4]
 805988c:	603b      	str	r3, [r7, #0]
 805988e:	2300      	movs	r3, #0
 8059890:	61bb      	str	r3, [r7, #24]
 8059892:	2300      	movs	r3, #0
 8059894:	61fb      	str	r3, [r7, #28]
 8059896:	683b      	ldr	r3, [r7, #0]
 8059898:	2b00      	cmp	r3, #0
 805989a:	d104      	bne.n	80598a6 <MPU_xStreamBufferGenericCreate+0x26>
 805989c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 805989e:	2b00      	cmp	r3, #0
 80598a0:	d101      	bne.n	80598a6 <MPU_xStreamBufferGenericCreate+0x26>
 80598a2:	2301      	movs	r3, #1
 80598a4:	e000      	b.n	80598a8 <MPU_xStreamBufferGenericCreate+0x28>
 80598a6:	2300      	movs	r3, #0
 80598a8:	2b00      	cmp	r3, #0
 80598aa:	d102      	bne.n	80598b2 <MPU_xStreamBufferGenericCreate+0x32>
 80598ac:	4b18      	ldr	r3, [pc, #96]	; (8059910 <MPU_xStreamBufferGenericCreate+0x90>)
 80598ae:	4798      	blx	r3
 80598b0:	e7fe      	b.n	80598b0 <MPU_xStreamBufferGenericCreate+0x30>
 80598b2:	683b      	ldr	r3, [r7, #0]
 80598b4:	2b00      	cmp	r3, #0
 80598b6:	d123      	bne.n	8059900 <MPU_xStreamBufferGenericCreate+0x80>
 80598b8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80598ba:	2b00      	cmp	r3, #0
 80598bc:	d120      	bne.n	8059900 <MPU_xStreamBufferGenericCreate+0x80>
 80598be:	f000 f943 	bl	8059b48 <MPU_GetFreeIndexInKernelObjectPool>
 80598c2:	6178      	str	r0, [r7, #20]
 80598c4:	697b      	ldr	r3, [r7, #20]
 80598c6:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 80598ca:	d01b      	beq.n	8059904 <MPU_xStreamBufferGenericCreate+0x84>
 80598cc:	2300      	movs	r3, #0
 80598ce:	9300      	str	r3, [sp, #0]
 80598d0:	2300      	movs	r3, #0
 80598d2:	687a      	ldr	r2, [r7, #4]
 80598d4:	68b9      	ldr	r1, [r7, #8]
 80598d6:	68f8      	ldr	r0, [r7, #12]
 80598d8:	4c0e      	ldr	r4, [pc, #56]	; (8059914 <MPU_xStreamBufferGenericCreate+0x94>)
 80598da:	47a0      	blx	r4
 80598dc:	61b8      	str	r0, [r7, #24]
 80598de:	69bb      	ldr	r3, [r7, #24]
 80598e0:	2b00      	cmp	r3, #0
 80598e2:	d009      	beq.n	80598f8 <MPU_xStreamBufferGenericCreate+0x78>
 80598e4:	2303      	movs	r3, #3
 80598e6:	2200      	movs	r2, #0
 80598e8:	69b9      	ldr	r1, [r7, #24]
 80598ea:	6978      	ldr	r0, [r7, #20]
 80598ec:	f000 f9de 	bl	8059cac <MPU_StoreHandleAndDataAtIndex>
 80598f0:	697b      	ldr	r3, [r7, #20]
 80598f2:	3301      	adds	r3, #1
 80598f4:	61fb      	str	r3, [r7, #28]
 80598f6:	e005      	b.n	8059904 <MPU_xStreamBufferGenericCreate+0x84>
 80598f8:	6978      	ldr	r0, [r7, #20]
 80598fa:	f000 f95b 	bl	8059bb4 <MPU_SetIndexFreeInKernelObjectPool>
 80598fe:	e001      	b.n	8059904 <MPU_xStreamBufferGenericCreate+0x84>
 8059900:	2300      	movs	r3, #0
 8059902:	61fb      	str	r3, [r7, #28]
 8059904:	69fb      	ldr	r3, [r7, #28]
 8059906:	4618      	mov	r0, r3
 8059908:	3724      	adds	r7, #36	; 0x24
 805990a:	46bd      	mov	sp, r7
 805990c:	bd90      	pop	{r4, r7, pc}
 805990e:	bf00      	nop
 8059910:	0805f1c7 	.word	0x0805f1c7
 8059914:	0805e031 	.word	0x0805e031

08059918 <MPU_vStreamBufferDelete>:
 8059918:	b580      	push	{r7, lr}
 805991a:	b084      	sub	sp, #16
 805991c:	af00      	add	r7, sp, #0
 805991e:	6078      	str	r0, [r7, #4]
 8059920:	2300      	movs	r3, #0
 8059922:	60fb      	str	r3, [r7, #12]
 8059924:	687b      	ldr	r3, [r7, #4]
 8059926:	60bb      	str	r3, [r7, #8]
 8059928:	68bb      	ldr	r3, [r7, #8]
 805992a:	2b00      	cmp	r3, #0
 805992c:	dd05      	ble.n	805993a <MPU_vStreamBufferDelete+0x22>
 805992e:	68bb      	ldr	r3, [r7, #8]
 8059930:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8059934:	dc01      	bgt.n	805993a <MPU_vStreamBufferDelete+0x22>
 8059936:	2301      	movs	r3, #1
 8059938:	e000      	b.n	805993c <MPU_vStreamBufferDelete+0x24>
 805993a:	2300      	movs	r3, #0
 805993c:	2b00      	cmp	r3, #0
 805993e:	d011      	beq.n	8059964 <MPU_vStreamBufferDelete+0x4c>
 8059940:	68bb      	ldr	r3, [r7, #8]
 8059942:	3b01      	subs	r3, #1
 8059944:	2103      	movs	r1, #3
 8059946:	4618      	mov	r0, r3
 8059948:	f000 f9ec 	bl	8059d24 <MPU_GetHandleAtIndex>
 805994c:	60f8      	str	r0, [r7, #12]
 805994e:	68fb      	ldr	r3, [r7, #12]
 8059950:	2b00      	cmp	r3, #0
 8059952:	d002      	beq.n	805995a <MPU_vStreamBufferDelete+0x42>
 8059954:	68f8      	ldr	r0, [r7, #12]
 8059956:	4b05      	ldr	r3, [pc, #20]	; (805996c <MPU_vStreamBufferDelete+0x54>)
 8059958:	4798      	blx	r3
 805995a:	68bb      	ldr	r3, [r7, #8]
 805995c:	3b01      	subs	r3, #1
 805995e:	4618      	mov	r0, r3
 8059960:	f000 f928 	bl	8059bb4 <MPU_SetIndexFreeInKernelObjectPool>
 8059964:	bf00      	nop
 8059966:	3710      	adds	r7, #16
 8059968:	46bd      	mov	sp, r7
 805996a:	bd80      	pop	{r7, pc}
 805996c:	0805dd0d 	.word	0x0805dd0d

08059970 <MPU_xStreamBufferReset>:
 8059970:	b580      	push	{r7, lr}
 8059972:	b086      	sub	sp, #24
 8059974:	af00      	add	r7, sp, #0
 8059976:	6078      	str	r0, [r7, #4]
 8059978:	2300      	movs	r3, #0
 805997a:	617b      	str	r3, [r7, #20]
 805997c:	2300      	movs	r3, #0
 805997e:	613b      	str	r3, [r7, #16]
 8059980:	687b      	ldr	r3, [r7, #4]
 8059982:	60fb      	str	r3, [r7, #12]
 8059984:	68fb      	ldr	r3, [r7, #12]
 8059986:	2b00      	cmp	r3, #0
 8059988:	dd05      	ble.n	8059996 <MPU_xStreamBufferReset+0x26>
 805998a:	68fb      	ldr	r3, [r7, #12]
 805998c:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8059990:	dc01      	bgt.n	8059996 <MPU_xStreamBufferReset+0x26>
 8059992:	2301      	movs	r3, #1
 8059994:	e000      	b.n	8059998 <MPU_xStreamBufferReset+0x28>
 8059996:	2300      	movs	r3, #0
 8059998:	2b00      	cmp	r3, #0
 805999a:	d00d      	beq.n	80599b8 <MPU_xStreamBufferReset+0x48>
 805999c:	68fb      	ldr	r3, [r7, #12]
 805999e:	3b01      	subs	r3, #1
 80599a0:	2103      	movs	r1, #3
 80599a2:	4618      	mov	r0, r3
 80599a4:	f000 f9be 	bl	8059d24 <MPU_GetHandleAtIndex>
 80599a8:	6138      	str	r0, [r7, #16]
 80599aa:	693b      	ldr	r3, [r7, #16]
 80599ac:	2b00      	cmp	r3, #0
 80599ae:	d003      	beq.n	80599b8 <MPU_xStreamBufferReset+0x48>
 80599b0:	6938      	ldr	r0, [r7, #16]
 80599b2:	4b04      	ldr	r3, [pc, #16]	; (80599c4 <MPU_xStreamBufferReset+0x54>)
 80599b4:	4798      	blx	r3
 80599b6:	6178      	str	r0, [r7, #20]
 80599b8:	697b      	ldr	r3, [r7, #20]
 80599ba:	4618      	mov	r0, r3
 80599bc:	3718      	adds	r7, #24
 80599be:	46bd      	mov	sp, r7
 80599c0:	bd80      	pop	{r7, pc}
 80599c2:	bf00      	nop
 80599c4:	0805dded 	.word	0x0805dded

080599c8 <MPU_xStreamBufferSendFromISR>:
 80599c8:	b590      	push	{r4, r7, lr}
 80599ca:	b089      	sub	sp, #36	; 0x24
 80599cc:	af00      	add	r7, sp, #0
 80599ce:	60f8      	str	r0, [r7, #12]
 80599d0:	60b9      	str	r1, [r7, #8]
 80599d2:	607a      	str	r2, [r7, #4]
 80599d4:	603b      	str	r3, [r7, #0]
 80599d6:	2300      	movs	r3, #0
 80599d8:	61fb      	str	r3, [r7, #28]
 80599da:	2300      	movs	r3, #0
 80599dc:	61bb      	str	r3, [r7, #24]
 80599de:	68fb      	ldr	r3, [r7, #12]
 80599e0:	617b      	str	r3, [r7, #20]
 80599e2:	697b      	ldr	r3, [r7, #20]
 80599e4:	2b00      	cmp	r3, #0
 80599e6:	dd05      	ble.n	80599f4 <MPU_xStreamBufferSendFromISR+0x2c>
 80599e8:	697b      	ldr	r3, [r7, #20]
 80599ea:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 80599ee:	dc01      	bgt.n	80599f4 <MPU_xStreamBufferSendFromISR+0x2c>
 80599f0:	2301      	movs	r3, #1
 80599f2:	e000      	b.n	80599f6 <MPU_xStreamBufferSendFromISR+0x2e>
 80599f4:	2300      	movs	r3, #0
 80599f6:	2b00      	cmp	r3, #0
 80599f8:	d010      	beq.n	8059a1c <MPU_xStreamBufferSendFromISR+0x54>
 80599fa:	697b      	ldr	r3, [r7, #20]
 80599fc:	3b01      	subs	r3, #1
 80599fe:	2103      	movs	r1, #3
 8059a00:	4618      	mov	r0, r3
 8059a02:	f000 f98f 	bl	8059d24 <MPU_GetHandleAtIndex>
 8059a06:	61b8      	str	r0, [r7, #24]
 8059a08:	69bb      	ldr	r3, [r7, #24]
 8059a0a:	2b00      	cmp	r3, #0
 8059a0c:	d006      	beq.n	8059a1c <MPU_xStreamBufferSendFromISR+0x54>
 8059a0e:	683b      	ldr	r3, [r7, #0]
 8059a10:	687a      	ldr	r2, [r7, #4]
 8059a12:	68b9      	ldr	r1, [r7, #8]
 8059a14:	69b8      	ldr	r0, [r7, #24]
 8059a16:	4c04      	ldr	r4, [pc, #16]	; (8059a28 <MPU_xStreamBufferSendFromISR+0x60>)
 8059a18:	47a0      	blx	r4
 8059a1a:	61f8      	str	r0, [r7, #28]
 8059a1c:	69fb      	ldr	r3, [r7, #28]
 8059a1e:	4618      	mov	r0, r3
 8059a20:	3724      	adds	r7, #36	; 0x24
 8059a22:	46bd      	mov	sp, r7
 8059a24:	bd90      	pop	{r4, r7, pc}
 8059a26:	bf00      	nop
 8059a28:	0805da81 	.word	0x0805da81

08059a2c <MPU_xStreamBufferReceiveFromISR>:
 8059a2c:	b590      	push	{r4, r7, lr}
 8059a2e:	b089      	sub	sp, #36	; 0x24
 8059a30:	af00      	add	r7, sp, #0
 8059a32:	60f8      	str	r0, [r7, #12]
 8059a34:	60b9      	str	r1, [r7, #8]
 8059a36:	607a      	str	r2, [r7, #4]
 8059a38:	603b      	str	r3, [r7, #0]
 8059a3a:	2300      	movs	r3, #0
 8059a3c:	61fb      	str	r3, [r7, #28]
 8059a3e:	2300      	movs	r3, #0
 8059a40:	61bb      	str	r3, [r7, #24]
 8059a42:	68fb      	ldr	r3, [r7, #12]
 8059a44:	617b      	str	r3, [r7, #20]
 8059a46:	697b      	ldr	r3, [r7, #20]
 8059a48:	2b00      	cmp	r3, #0
 8059a4a:	dd05      	ble.n	8059a58 <MPU_xStreamBufferReceiveFromISR+0x2c>
 8059a4c:	697b      	ldr	r3, [r7, #20]
 8059a4e:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8059a52:	dc01      	bgt.n	8059a58 <MPU_xStreamBufferReceiveFromISR+0x2c>
 8059a54:	2301      	movs	r3, #1
 8059a56:	e000      	b.n	8059a5a <MPU_xStreamBufferReceiveFromISR+0x2e>
 8059a58:	2300      	movs	r3, #0
 8059a5a:	2b00      	cmp	r3, #0
 8059a5c:	d010      	beq.n	8059a80 <MPU_xStreamBufferReceiveFromISR+0x54>
 8059a5e:	697b      	ldr	r3, [r7, #20]
 8059a60:	3b01      	subs	r3, #1
 8059a62:	2103      	movs	r1, #3
 8059a64:	4618      	mov	r0, r3
 8059a66:	f000 f95d 	bl	8059d24 <MPU_GetHandleAtIndex>
 8059a6a:	61b8      	str	r0, [r7, #24]
 8059a6c:	69bb      	ldr	r3, [r7, #24]
 8059a6e:	2b00      	cmp	r3, #0
 8059a70:	d006      	beq.n	8059a80 <MPU_xStreamBufferReceiveFromISR+0x54>
 8059a72:	683b      	ldr	r3, [r7, #0]
 8059a74:	687a      	ldr	r2, [r7, #4]
 8059a76:	68b9      	ldr	r1, [r7, #8]
 8059a78:	69b8      	ldr	r0, [r7, #24]
 8059a7a:	4c04      	ldr	r4, [pc, #16]	; (8059a8c <MPU_xStreamBufferReceiveFromISR+0x60>)
 8059a7c:	47a0      	blx	r4
 8059a7e:	61f8      	str	r0, [r7, #28]
 8059a80:	69fb      	ldr	r3, [r7, #28]
 8059a82:	4618      	mov	r0, r3
 8059a84:	3724      	adds	r7, #36	; 0x24
 8059a86:	46bd      	mov	sp, r7
 8059a88:	bd90      	pop	{r4, r7, pc}
 8059a8a:	bf00      	nop
 8059a8c:	0805dc5d 	.word	0x0805dc5d

08059a90 <MPU_xStreamBufferSendCompletedFromISR>:
 8059a90:	b580      	push	{r7, lr}
 8059a92:	b086      	sub	sp, #24
 8059a94:	af00      	add	r7, sp, #0
 8059a96:	6078      	str	r0, [r7, #4]
 8059a98:	6039      	str	r1, [r7, #0]
 8059a9a:	2300      	movs	r3, #0
 8059a9c:	617b      	str	r3, [r7, #20]
 8059a9e:	2300      	movs	r3, #0
 8059aa0:	613b      	str	r3, [r7, #16]
 8059aa2:	687b      	ldr	r3, [r7, #4]
 8059aa4:	60fb      	str	r3, [r7, #12]
 8059aa6:	68fb      	ldr	r3, [r7, #12]
 8059aa8:	2b00      	cmp	r3, #0
 8059aaa:	dd05      	ble.n	8059ab8 <MPU_xStreamBufferSendCompletedFromISR+0x28>
 8059aac:	68fb      	ldr	r3, [r7, #12]
 8059aae:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8059ab2:	dc01      	bgt.n	8059ab8 <MPU_xStreamBufferSendCompletedFromISR+0x28>
 8059ab4:	2301      	movs	r3, #1
 8059ab6:	e000      	b.n	8059aba <MPU_xStreamBufferSendCompletedFromISR+0x2a>
 8059ab8:	2300      	movs	r3, #0
 8059aba:	2b00      	cmp	r3, #0
 8059abc:	d00e      	beq.n	8059adc <MPU_xStreamBufferSendCompletedFromISR+0x4c>
 8059abe:	68fb      	ldr	r3, [r7, #12]
 8059ac0:	3b01      	subs	r3, #1
 8059ac2:	2103      	movs	r1, #3
 8059ac4:	4618      	mov	r0, r3
 8059ac6:	f000 f92d 	bl	8059d24 <MPU_GetHandleAtIndex>
 8059aca:	6138      	str	r0, [r7, #16]
 8059acc:	693b      	ldr	r3, [r7, #16]
 8059ace:	2b00      	cmp	r3, #0
 8059ad0:	d004      	beq.n	8059adc <MPU_xStreamBufferSendCompletedFromISR+0x4c>
 8059ad2:	6839      	ldr	r1, [r7, #0]
 8059ad4:	6938      	ldr	r0, [r7, #16]
 8059ad6:	4b04      	ldr	r3, [pc, #16]	; (8059ae8 <MPU_xStreamBufferSendCompletedFromISR+0x58>)
 8059ad8:	4798      	blx	r3
 8059ada:	6178      	str	r0, [r7, #20]
 8059adc:	697b      	ldr	r3, [r7, #20]
 8059ade:	4618      	mov	r0, r3
 8059ae0:	3718      	adds	r7, #24
 8059ae2:	46bd      	mov	sp, r7
 8059ae4:	bd80      	pop	{r7, pc}
 8059ae6:	bf00      	nop
 8059ae8:	0805df59 	.word	0x0805df59

08059aec <MPU_xStreamBufferReceiveCompletedFromISR>:
 8059aec:	b580      	push	{r7, lr}
 8059aee:	b086      	sub	sp, #24
 8059af0:	af00      	add	r7, sp, #0
 8059af2:	6078      	str	r0, [r7, #4]
 8059af4:	6039      	str	r1, [r7, #0]
 8059af6:	2300      	movs	r3, #0
 8059af8:	617b      	str	r3, [r7, #20]
 8059afa:	2300      	movs	r3, #0
 8059afc:	613b      	str	r3, [r7, #16]
 8059afe:	687b      	ldr	r3, [r7, #4]
 8059b00:	60fb      	str	r3, [r7, #12]
 8059b02:	68fb      	ldr	r3, [r7, #12]
 8059b04:	2b00      	cmp	r3, #0
 8059b06:	dd05      	ble.n	8059b14 <MPU_xStreamBufferReceiveCompletedFromISR+0x28>
 8059b08:	68fb      	ldr	r3, [r7, #12]
 8059b0a:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8059b0e:	dc01      	bgt.n	8059b14 <MPU_xStreamBufferReceiveCompletedFromISR+0x28>
 8059b10:	2301      	movs	r3, #1
 8059b12:	e000      	b.n	8059b16 <MPU_xStreamBufferReceiveCompletedFromISR+0x2a>
 8059b14:	2300      	movs	r3, #0
 8059b16:	2b00      	cmp	r3, #0
 8059b18:	d00e      	beq.n	8059b38 <MPU_xStreamBufferReceiveCompletedFromISR+0x4c>
 8059b1a:	68fb      	ldr	r3, [r7, #12]
 8059b1c:	3b01      	subs	r3, #1
 8059b1e:	2103      	movs	r1, #3
 8059b20:	4618      	mov	r0, r3
 8059b22:	f000 f8ff 	bl	8059d24 <MPU_GetHandleAtIndex>
 8059b26:	6138      	str	r0, [r7, #16]
 8059b28:	693b      	ldr	r3, [r7, #16]
 8059b2a:	2b00      	cmp	r3, #0
 8059b2c:	d004      	beq.n	8059b38 <MPU_xStreamBufferReceiveCompletedFromISR+0x4c>
 8059b2e:	6839      	ldr	r1, [r7, #0]
 8059b30:	6938      	ldr	r0, [r7, #16]
 8059b32:	4b04      	ldr	r3, [pc, #16]	; (8059b44 <MPU_xStreamBufferReceiveCompletedFromISR+0x58>)
 8059b34:	4798      	blx	r3
 8059b36:	6178      	str	r0, [r7, #20]
 8059b38:	697b      	ldr	r3, [r7, #20]
 8059b3a:	4618      	mov	r0, r3
 8059b3c:	3718      	adds	r7, #24
 8059b3e:	46bd      	mov	sp, r7
 8059b40:	bd80      	pop	{r7, pc}
 8059b42:	bf00      	nop
 8059b44:	0805dfc5 	.word	0x0805dfc5

08059b48 <MPU_GetFreeIndexInKernelObjectPool>:
 8059b48:	b580      	push	{r7, lr}
 8059b4a:	b082      	sub	sp, #8
 8059b4c:	af00      	add	r7, sp, #0
 8059b4e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8059b52:	603b      	str	r3, [r7, #0]
 8059b54:	4b14      	ldr	r3, [pc, #80]	; (8059ba8 <MPU_GetFreeIndexInKernelObjectPool+0x60>)
 8059b56:	4798      	blx	r3
 8059b58:	2300      	movs	r3, #0
 8059b5a:	607b      	str	r3, [r7, #4]
 8059b5c:	e019      	b.n	8059b92 <MPU_GetFreeIndexInKernelObjectPool+0x4a>
 8059b5e:	4913      	ldr	r1, [pc, #76]	; (8059bac <MPU_GetFreeIndexInKernelObjectPool+0x64>)
 8059b60:	687a      	ldr	r2, [r7, #4]
 8059b62:	4613      	mov	r3, r2
 8059b64:	005b      	lsls	r3, r3, #1
 8059b66:	4413      	add	r3, r2
 8059b68:	009b      	lsls	r3, r3, #2
 8059b6a:	440b      	add	r3, r1
 8059b6c:	681b      	ldr	r3, [r3, #0]
 8059b6e:	2b00      	cmp	r3, #0
 8059b70:	d10c      	bne.n	8059b8c <MPU_GetFreeIndexInKernelObjectPool+0x44>
 8059b72:	490e      	ldr	r1, [pc, #56]	; (8059bac <MPU_GetFreeIndexInKernelObjectPool+0x64>)
 8059b74:	687a      	ldr	r2, [r7, #4]
 8059b76:	4613      	mov	r3, r2
 8059b78:	005b      	lsls	r3, r3, #1
 8059b7a:	4413      	add	r3, r2
 8059b7c:	009b      	lsls	r3, r3, #2
 8059b7e:	440b      	add	r3, r1
 8059b80:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8059b84:	601a      	str	r2, [r3, #0]
 8059b86:	687b      	ldr	r3, [r7, #4]
 8059b88:	603b      	str	r3, [r7, #0]
 8059b8a:	e006      	b.n	8059b9a <MPU_GetFreeIndexInKernelObjectPool+0x52>
 8059b8c:	687b      	ldr	r3, [r7, #4]
 8059b8e:	3301      	adds	r3, #1
 8059b90:	607b      	str	r3, [r7, #4]
 8059b92:	687b      	ldr	r3, [r7, #4]
 8059b94:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8059b98:	dbe1      	blt.n	8059b5e <MPU_GetFreeIndexInKernelObjectPool+0x16>
 8059b9a:	4b05      	ldr	r3, [pc, #20]	; (8059bb0 <MPU_GetFreeIndexInKernelObjectPool+0x68>)
 8059b9c:	4798      	blx	r3
 8059b9e:	683b      	ldr	r3, [r7, #0]
 8059ba0:	4618      	mov	r0, r3
 8059ba2:	3708      	adds	r7, #8
 8059ba4:	46bd      	mov	sp, r7
 8059ba6:	bd80      	pop	{r7, pc}
 8059ba8:	08055dbd 	.word	0x08055dbd
 8059bac:	2000031c 	.word	0x2000031c
 8059bb0:	08055dd9 	.word	0x08055dd9

08059bb4 <MPU_SetIndexFreeInKernelObjectPool>:
 8059bb4:	b580      	push	{r7, lr}
 8059bb6:	b082      	sub	sp, #8
 8059bb8:	af00      	add	r7, sp, #0
 8059bba:	6078      	str	r0, [r7, #4]
 8059bbc:	687b      	ldr	r3, [r7, #4]
 8059bbe:	2b00      	cmp	r3, #0
 8059bc0:	db05      	blt.n	8059bce <MPU_SetIndexFreeInKernelObjectPool+0x1a>
 8059bc2:	687b      	ldr	r3, [r7, #4]
 8059bc4:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8059bc8:	da01      	bge.n	8059bce <MPU_SetIndexFreeInKernelObjectPool+0x1a>
 8059bca:	2301      	movs	r3, #1
 8059bcc:	e000      	b.n	8059bd0 <MPU_SetIndexFreeInKernelObjectPool+0x1c>
 8059bce:	2300      	movs	r3, #0
 8059bd0:	2b00      	cmp	r3, #0
 8059bd2:	d102      	bne.n	8059bda <MPU_SetIndexFreeInKernelObjectPool+0x26>
 8059bd4:	4b13      	ldr	r3, [pc, #76]	; (8059c24 <MPU_SetIndexFreeInKernelObjectPool+0x70>)
 8059bd6:	4798      	blx	r3
 8059bd8:	e7fe      	b.n	8059bd8 <MPU_SetIndexFreeInKernelObjectPool+0x24>
 8059bda:	4b13      	ldr	r3, [pc, #76]	; (8059c28 <MPU_SetIndexFreeInKernelObjectPool+0x74>)
 8059bdc:	4798      	blx	r3
 8059bde:	4913      	ldr	r1, [pc, #76]	; (8059c2c <MPU_SetIndexFreeInKernelObjectPool+0x78>)
 8059be0:	687a      	ldr	r2, [r7, #4]
 8059be2:	4613      	mov	r3, r2
 8059be4:	005b      	lsls	r3, r3, #1
 8059be6:	4413      	add	r3, r2
 8059be8:	009b      	lsls	r3, r3, #2
 8059bea:	440b      	add	r3, r1
 8059bec:	2200      	movs	r2, #0
 8059bee:	601a      	str	r2, [r3, #0]
 8059bf0:	490e      	ldr	r1, [pc, #56]	; (8059c2c <MPU_SetIndexFreeInKernelObjectPool+0x78>)
 8059bf2:	687a      	ldr	r2, [r7, #4]
 8059bf4:	4613      	mov	r3, r2
 8059bf6:	005b      	lsls	r3, r3, #1
 8059bf8:	4413      	add	r3, r2
 8059bfa:	009b      	lsls	r3, r3, #2
 8059bfc:	440b      	add	r3, r1
 8059bfe:	3304      	adds	r3, #4
 8059c00:	2200      	movs	r2, #0
 8059c02:	601a      	str	r2, [r3, #0]
 8059c04:	4909      	ldr	r1, [pc, #36]	; (8059c2c <MPU_SetIndexFreeInKernelObjectPool+0x78>)
 8059c06:	687a      	ldr	r2, [r7, #4]
 8059c08:	4613      	mov	r3, r2
 8059c0a:	005b      	lsls	r3, r3, #1
 8059c0c:	4413      	add	r3, r2
 8059c0e:	009b      	lsls	r3, r3, #2
 8059c10:	440b      	add	r3, r1
 8059c12:	3308      	adds	r3, #8
 8059c14:	2200      	movs	r2, #0
 8059c16:	601a      	str	r2, [r3, #0]
 8059c18:	4b05      	ldr	r3, [pc, #20]	; (8059c30 <MPU_SetIndexFreeInKernelObjectPool+0x7c>)
 8059c1a:	4798      	blx	r3
 8059c1c:	bf00      	nop
 8059c1e:	3708      	adds	r7, #8
 8059c20:	46bd      	mov	sp, r7
 8059c22:	bd80      	pop	{r7, pc}
 8059c24:	0805f1c7 	.word	0x0805f1c7
 8059c28:	0805ecc5 	.word	0x0805ecc5
 8059c2c:	2000031c 	.word	0x2000031c
 8059c30:	0805eced 	.word	0x0805eced

08059c34 <MPU_GetIndexForHandle>:
 8059c34:	b580      	push	{r7, lr}
 8059c36:	b084      	sub	sp, #16
 8059c38:	af00      	add	r7, sp, #0
 8059c3a:	6078      	str	r0, [r7, #4]
 8059c3c:	6039      	str	r1, [r7, #0]
 8059c3e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8059c42:	60bb      	str	r3, [r7, #8]
 8059c44:	687b      	ldr	r3, [r7, #4]
 8059c46:	2b00      	cmp	r3, #0
 8059c48:	d102      	bne.n	8059c50 <MPU_GetIndexForHandle+0x1c>
 8059c4a:	4b16      	ldr	r3, [pc, #88]	; (8059ca4 <MPU_GetIndexForHandle+0x70>)
 8059c4c:	4798      	blx	r3
 8059c4e:	e7fe      	b.n	8059c4e <MPU_GetIndexForHandle+0x1a>
 8059c50:	2300      	movs	r3, #0
 8059c52:	60fb      	str	r3, [r7, #12]
 8059c54:	e01c      	b.n	8059c90 <MPU_GetIndexForHandle+0x5c>
 8059c56:	4914      	ldr	r1, [pc, #80]	; (8059ca8 <MPU_GetIndexForHandle+0x74>)
 8059c58:	68fa      	ldr	r2, [r7, #12]
 8059c5a:	4613      	mov	r3, r2
 8059c5c:	005b      	lsls	r3, r3, #1
 8059c5e:	4413      	add	r3, r2
 8059c60:	009b      	lsls	r3, r3, #2
 8059c62:	440b      	add	r3, r1
 8059c64:	681b      	ldr	r3, [r3, #0]
 8059c66:	687a      	ldr	r2, [r7, #4]
 8059c68:	429a      	cmp	r2, r3
 8059c6a:	d10e      	bne.n	8059c8a <MPU_GetIndexForHandle+0x56>
 8059c6c:	490e      	ldr	r1, [pc, #56]	; (8059ca8 <MPU_GetIndexForHandle+0x74>)
 8059c6e:	68fa      	ldr	r2, [r7, #12]
 8059c70:	4613      	mov	r3, r2
 8059c72:	005b      	lsls	r3, r3, #1
 8059c74:	4413      	add	r3, r2
 8059c76:	009b      	lsls	r3, r3, #2
 8059c78:	440b      	add	r3, r1
 8059c7a:	3304      	adds	r3, #4
 8059c7c:	681b      	ldr	r3, [r3, #0]
 8059c7e:	683a      	ldr	r2, [r7, #0]
 8059c80:	429a      	cmp	r2, r3
 8059c82:	d102      	bne.n	8059c8a <MPU_GetIndexForHandle+0x56>
 8059c84:	68fb      	ldr	r3, [r7, #12]
 8059c86:	60bb      	str	r3, [r7, #8]
 8059c88:	e006      	b.n	8059c98 <MPU_GetIndexForHandle+0x64>
 8059c8a:	68fb      	ldr	r3, [r7, #12]
 8059c8c:	3301      	adds	r3, #1
 8059c8e:	60fb      	str	r3, [r7, #12]
 8059c90:	68fb      	ldr	r3, [r7, #12]
 8059c92:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8059c96:	dbde      	blt.n	8059c56 <MPU_GetIndexForHandle+0x22>
 8059c98:	68bb      	ldr	r3, [r7, #8]
 8059c9a:	4618      	mov	r0, r3
 8059c9c:	3710      	adds	r7, #16
 8059c9e:	46bd      	mov	sp, r7
 8059ca0:	bd80      	pop	{r7, pc}
 8059ca2:	bf00      	nop
 8059ca4:	0805f1c7 	.word	0x0805f1c7
 8059ca8:	2000031c 	.word	0x2000031c

08059cac <MPU_StoreHandleAndDataAtIndex>:
 8059cac:	b580      	push	{r7, lr}
 8059cae:	b084      	sub	sp, #16
 8059cb0:	af00      	add	r7, sp, #0
 8059cb2:	60f8      	str	r0, [r7, #12]
 8059cb4:	60b9      	str	r1, [r7, #8]
 8059cb6:	607a      	str	r2, [r7, #4]
 8059cb8:	603b      	str	r3, [r7, #0]
 8059cba:	68fb      	ldr	r3, [r7, #12]
 8059cbc:	2b00      	cmp	r3, #0
 8059cbe:	db05      	blt.n	8059ccc <MPU_StoreHandleAndDataAtIndex+0x20>
 8059cc0:	68fb      	ldr	r3, [r7, #12]
 8059cc2:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8059cc6:	da01      	bge.n	8059ccc <MPU_StoreHandleAndDataAtIndex+0x20>
 8059cc8:	2301      	movs	r3, #1
 8059cca:	e000      	b.n	8059cce <MPU_StoreHandleAndDataAtIndex+0x22>
 8059ccc:	2300      	movs	r3, #0
 8059cce:	2b00      	cmp	r3, #0
 8059cd0:	d102      	bne.n	8059cd8 <MPU_StoreHandleAndDataAtIndex+0x2c>
 8059cd2:	4b12      	ldr	r3, [pc, #72]	; (8059d1c <MPU_StoreHandleAndDataAtIndex+0x70>)
 8059cd4:	4798      	blx	r3
 8059cd6:	e7fe      	b.n	8059cd6 <MPU_StoreHandleAndDataAtIndex+0x2a>
 8059cd8:	4911      	ldr	r1, [pc, #68]	; (8059d20 <MPU_StoreHandleAndDataAtIndex+0x74>)
 8059cda:	68fa      	ldr	r2, [r7, #12]
 8059cdc:	4613      	mov	r3, r2
 8059cde:	005b      	lsls	r3, r3, #1
 8059ce0:	4413      	add	r3, r2
 8059ce2:	009b      	lsls	r3, r3, #2
 8059ce4:	440b      	add	r3, r1
 8059ce6:	68ba      	ldr	r2, [r7, #8]
 8059ce8:	601a      	str	r2, [r3, #0]
 8059cea:	490d      	ldr	r1, [pc, #52]	; (8059d20 <MPU_StoreHandleAndDataAtIndex+0x74>)
 8059cec:	68fa      	ldr	r2, [r7, #12]
 8059cee:	4613      	mov	r3, r2
 8059cf0:	005b      	lsls	r3, r3, #1
 8059cf2:	4413      	add	r3, r2
 8059cf4:	009b      	lsls	r3, r3, #2
 8059cf6:	440b      	add	r3, r1
 8059cf8:	3304      	adds	r3, #4
 8059cfa:	683a      	ldr	r2, [r7, #0]
 8059cfc:	601a      	str	r2, [r3, #0]
 8059cfe:	4908      	ldr	r1, [pc, #32]	; (8059d20 <MPU_StoreHandleAndDataAtIndex+0x74>)
 8059d00:	68fa      	ldr	r2, [r7, #12]
 8059d02:	4613      	mov	r3, r2
 8059d04:	005b      	lsls	r3, r3, #1
 8059d06:	4413      	add	r3, r2
 8059d08:	009b      	lsls	r3, r3, #2
 8059d0a:	440b      	add	r3, r1
 8059d0c:	3308      	adds	r3, #8
 8059d0e:	687a      	ldr	r2, [r7, #4]
 8059d10:	601a      	str	r2, [r3, #0]
 8059d12:	bf00      	nop
 8059d14:	3710      	adds	r7, #16
 8059d16:	46bd      	mov	sp, r7
 8059d18:	bd80      	pop	{r7, pc}
 8059d1a:	bf00      	nop
 8059d1c:	0805f1c7 	.word	0x0805f1c7
 8059d20:	2000031c 	.word	0x2000031c

08059d24 <MPU_GetHandleAtIndex>:
 8059d24:	b580      	push	{r7, lr}
 8059d26:	b084      	sub	sp, #16
 8059d28:	af00      	add	r7, sp, #0
 8059d2a:	6078      	str	r0, [r7, #4]
 8059d2c:	6039      	str	r1, [r7, #0]
 8059d2e:	2300      	movs	r3, #0
 8059d30:	60fb      	str	r3, [r7, #12]
 8059d32:	687b      	ldr	r3, [r7, #4]
 8059d34:	2b00      	cmp	r3, #0
 8059d36:	db05      	blt.n	8059d44 <MPU_GetHandleAtIndex+0x20>
 8059d38:	687b      	ldr	r3, [r7, #4]
 8059d3a:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8059d3e:	da01      	bge.n	8059d44 <MPU_GetHandleAtIndex+0x20>
 8059d40:	2301      	movs	r3, #1
 8059d42:	e000      	b.n	8059d46 <MPU_GetHandleAtIndex+0x22>
 8059d44:	2300      	movs	r3, #0
 8059d46:	2b00      	cmp	r3, #0
 8059d48:	d102      	bne.n	8059d50 <MPU_GetHandleAtIndex+0x2c>
 8059d4a:	4b0e      	ldr	r3, [pc, #56]	; (8059d84 <MPU_GetHandleAtIndex+0x60>)
 8059d4c:	4798      	blx	r3
 8059d4e:	e7fe      	b.n	8059d4e <MPU_GetHandleAtIndex+0x2a>
 8059d50:	490d      	ldr	r1, [pc, #52]	; (8059d88 <MPU_GetHandleAtIndex+0x64>)
 8059d52:	687a      	ldr	r2, [r7, #4]
 8059d54:	4613      	mov	r3, r2
 8059d56:	005b      	lsls	r3, r3, #1
 8059d58:	4413      	add	r3, r2
 8059d5a:	009b      	lsls	r3, r3, #2
 8059d5c:	440b      	add	r3, r1
 8059d5e:	3304      	adds	r3, #4
 8059d60:	681b      	ldr	r3, [r3, #0]
 8059d62:	683a      	ldr	r2, [r7, #0]
 8059d64:	429a      	cmp	r2, r3
 8059d66:	d108      	bne.n	8059d7a <MPU_GetHandleAtIndex+0x56>
 8059d68:	4907      	ldr	r1, [pc, #28]	; (8059d88 <MPU_GetHandleAtIndex+0x64>)
 8059d6a:	687a      	ldr	r2, [r7, #4]
 8059d6c:	4613      	mov	r3, r2
 8059d6e:	005b      	lsls	r3, r3, #1
 8059d70:	4413      	add	r3, r2
 8059d72:	009b      	lsls	r3, r3, #2
 8059d74:	440b      	add	r3, r1
 8059d76:	681b      	ldr	r3, [r3, #0]
 8059d78:	60fb      	str	r3, [r7, #12]
 8059d7a:	68fb      	ldr	r3, [r7, #12]
 8059d7c:	4618      	mov	r0, r3
 8059d7e:	3710      	adds	r7, #16
 8059d80:	46bd      	mov	sp, r7
 8059d82:	bd80      	pop	{r7, pc}
 8059d84:	0805f1c7 	.word	0x0805f1c7
 8059d88:	2000031c 	.word	0x2000031c

08059d8c <MPU_TimerCallback>:
 8059d8c:	b580      	push	{r7, lr}
 8059d8e:	b086      	sub	sp, #24
 8059d90:	af00      	add	r7, sp, #0
 8059d92:	6078      	str	r0, [r7, #4]
 8059d94:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8059d98:	613b      	str	r3, [r7, #16]
 8059d9a:	2300      	movs	r3, #0
 8059d9c:	60fb      	str	r3, [r7, #12]
 8059d9e:	2300      	movs	r3, #0
 8059da0:	60bb      	str	r3, [r7, #8]
 8059da2:	687b      	ldr	r3, [r7, #4]
 8059da4:	2b00      	cmp	r3, #0
 8059da6:	d102      	bne.n	8059dae <MPU_TimerCallback+0x22>
 8059da8:	4b20      	ldr	r3, [pc, #128]	; (8059e2c <MPU_TimerCallback+0xa0>)
 8059daa:	4798      	blx	r3
 8059dac:	e7fe      	b.n	8059dac <MPU_TimerCallback+0x20>
 8059dae:	2300      	movs	r3, #0
 8059db0:	617b      	str	r3, [r7, #20]
 8059db2:	e01b      	b.n	8059dec <MPU_TimerCallback+0x60>
 8059db4:	491e      	ldr	r1, [pc, #120]	; (8059e30 <MPU_TimerCallback+0xa4>)
 8059db6:	697a      	ldr	r2, [r7, #20]
 8059db8:	4613      	mov	r3, r2
 8059dba:	005b      	lsls	r3, r3, #1
 8059dbc:	4413      	add	r3, r2
 8059dbe:	009b      	lsls	r3, r3, #2
 8059dc0:	440b      	add	r3, r1
 8059dc2:	681b      	ldr	r3, [r3, #0]
 8059dc4:	687a      	ldr	r2, [r7, #4]
 8059dc6:	429a      	cmp	r2, r3
 8059dc8:	d10d      	bne.n	8059de6 <MPU_TimerCallback+0x5a>
 8059dca:	4919      	ldr	r1, [pc, #100]	; (8059e30 <MPU_TimerCallback+0xa4>)
 8059dcc:	697a      	ldr	r2, [r7, #20]
 8059dce:	4613      	mov	r3, r2
 8059dd0:	005b      	lsls	r3, r3, #1
 8059dd2:	4413      	add	r3, r2
 8059dd4:	009b      	lsls	r3, r3, #2
 8059dd6:	440b      	add	r3, r1
 8059dd8:	3304      	adds	r3, #4
 8059dda:	681b      	ldr	r3, [r3, #0]
 8059ddc:	2b05      	cmp	r3, #5
 8059dde:	d102      	bne.n	8059de6 <MPU_TimerCallback+0x5a>
 8059de0:	697b      	ldr	r3, [r7, #20]
 8059de2:	613b      	str	r3, [r7, #16]
 8059de4:	e006      	b.n	8059df4 <MPU_TimerCallback+0x68>
 8059de6:	697b      	ldr	r3, [r7, #20]
 8059de8:	3301      	adds	r3, #1
 8059dea:	617b      	str	r3, [r7, #20]
 8059dec:	697b      	ldr	r3, [r7, #20]
 8059dee:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8059df2:	dbdf      	blt.n	8059db4 <MPU_TimerCallback+0x28>
 8059df4:	693b      	ldr	r3, [r7, #16]
 8059df6:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 8059dfa:	d102      	bne.n	8059e02 <MPU_TimerCallback+0x76>
 8059dfc:	4b0b      	ldr	r3, [pc, #44]	; (8059e2c <MPU_TimerCallback+0xa0>)
 8059dfe:	4798      	blx	r3
 8059e00:	e7fe      	b.n	8059e00 <MPU_TimerCallback+0x74>
 8059e02:	693b      	ldr	r3, [r7, #16]
 8059e04:	3301      	adds	r3, #1
 8059e06:	60fb      	str	r3, [r7, #12]
 8059e08:	4909      	ldr	r1, [pc, #36]	; (8059e30 <MPU_TimerCallback+0xa4>)
 8059e0a:	693a      	ldr	r2, [r7, #16]
 8059e0c:	4613      	mov	r3, r2
 8059e0e:	005b      	lsls	r3, r3, #1
 8059e10:	4413      	add	r3, r2
 8059e12:	009b      	lsls	r3, r3, #2
 8059e14:	440b      	add	r3, r1
 8059e16:	3308      	adds	r3, #8
 8059e18:	681b      	ldr	r3, [r3, #0]
 8059e1a:	60bb      	str	r3, [r7, #8]
 8059e1c:	68bb      	ldr	r3, [r7, #8]
 8059e1e:	68f8      	ldr	r0, [r7, #12]
 8059e20:	4798      	blx	r3
 8059e22:	bf00      	nop
 8059e24:	3718      	adds	r7, #24
 8059e26:	46bd      	mov	sp, r7
 8059e28:	bd80      	pop	{r7, pc}
 8059e2a:	bf00      	nop
 8059e2c:	0805f1c7 	.word	0x0805f1c7
 8059e30:	2000031c 	.word	0x2000031c

08059e34 <MPU_xTaskDelayUntilImpl>:
 8059e34:	b580      	push	{r7, lr}
 8059e36:	b084      	sub	sp, #16
 8059e38:	af00      	add	r7, sp, #0
 8059e3a:	6078      	str	r0, [r7, #4]
 8059e3c:	6039      	str	r1, [r7, #0]
 8059e3e:	2300      	movs	r3, #0
 8059e40:	60fb      	str	r3, [r7, #12]
 8059e42:	2300      	movs	r3, #0
 8059e44:	60bb      	str	r3, [r7, #8]
 8059e46:	687b      	ldr	r3, [r7, #4]
 8059e48:	2b00      	cmp	r3, #0
 8059e4a:	d010      	beq.n	8059e6e <MPU_xTaskDelayUntilImpl+0x3a>
 8059e4c:	683b      	ldr	r3, [r7, #0]
 8059e4e:	2b00      	cmp	r3, #0
 8059e50:	d00d      	beq.n	8059e6e <MPU_xTaskDelayUntilImpl+0x3a>
 8059e52:	2203      	movs	r2, #3
 8059e54:	2104      	movs	r1, #4
 8059e56:	6878      	ldr	r0, [r7, #4]
 8059e58:	4b07      	ldr	r3, [pc, #28]	; (8059e78 <MPU_xTaskDelayUntilImpl+0x44>)
 8059e5a:	4798      	blx	r3
 8059e5c:	60b8      	str	r0, [r7, #8]
 8059e5e:	68bb      	ldr	r3, [r7, #8]
 8059e60:	2b01      	cmp	r3, #1
 8059e62:	d104      	bne.n	8059e6e <MPU_xTaskDelayUntilImpl+0x3a>
 8059e64:	6839      	ldr	r1, [r7, #0]
 8059e66:	6878      	ldr	r0, [r7, #4]
 8059e68:	4b04      	ldr	r3, [pc, #16]	; (8059e7c <MPU_xTaskDelayUntilImpl+0x48>)
 8059e6a:	4798      	blx	r3
 8059e6c:	60f8      	str	r0, [r7, #12]
 8059e6e:	68fb      	ldr	r3, [r7, #12]
 8059e70:	4618      	mov	r0, r3
 8059e72:	3710      	adds	r7, #16
 8059e74:	46bd      	mov	sp, r7
 8059e76:	bd80      	pop	{r7, pc}
 8059e78:	0805ea15 	.word	0x0805ea15
 8059e7c:	08055419 	.word	0x08055419

08059e80 <MPU_vTaskDelayImpl>:
 8059e80:	b580      	push	{r7, lr}
 8059e82:	b082      	sub	sp, #8
 8059e84:	af00      	add	r7, sp, #0
 8059e86:	6078      	str	r0, [r7, #4]
 8059e88:	6878      	ldr	r0, [r7, #4]
 8059e8a:	4b03      	ldr	r3, [pc, #12]	; (8059e98 <MPU_vTaskDelayImpl+0x18>)
 8059e8c:	4798      	blx	r3
 8059e8e:	bf00      	nop
 8059e90:	3708      	adds	r7, #8
 8059e92:	46bd      	mov	sp, r7
 8059e94:	bd80      	pop	{r7, pc}
 8059e96:	bf00      	nop
 8059e98:	080553c9 	.word	0x080553c9

08059e9c <MPU_uxTaskPriorityGetImpl>:
 8059e9c:	b580      	push	{r7, lr}
 8059e9e:	b086      	sub	sp, #24
 8059ea0:	af00      	add	r7, sp, #0
 8059ea2:	6078      	str	r0, [r7, #4]
 8059ea4:	2310      	movs	r3, #16
 8059ea6:	617b      	str	r3, [r7, #20]
 8059ea8:	2300      	movs	r3, #0
 8059eaa:	613b      	str	r3, [r7, #16]
 8059eac:	2300      	movs	r3, #0
 8059eae:	60fb      	str	r3, [r7, #12]
 8059eb0:	687b      	ldr	r3, [r7, #4]
 8059eb2:	2b00      	cmp	r3, #0
 8059eb4:	d104      	bne.n	8059ec0 <MPU_uxTaskPriorityGetImpl+0x24>
 8059eb6:	6878      	ldr	r0, [r7, #4]
 8059eb8:	4b16      	ldr	r3, [pc, #88]	; (8059f14 <MPU_uxTaskPriorityGetImpl+0x78>)
 8059eba:	4798      	blx	r3
 8059ebc:	6178      	str	r0, [r7, #20]
 8059ebe:	e024      	b.n	8059f0a <MPU_uxTaskPriorityGetImpl+0x6e>
 8059ec0:	687b      	ldr	r3, [r7, #4]
 8059ec2:	60bb      	str	r3, [r7, #8]
 8059ec4:	68bb      	ldr	r3, [r7, #8]
 8059ec6:	2b00      	cmp	r3, #0
 8059ec8:	dd05      	ble.n	8059ed6 <MPU_uxTaskPriorityGetImpl+0x3a>
 8059eca:	68bb      	ldr	r3, [r7, #8]
 8059ecc:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8059ed0:	dc01      	bgt.n	8059ed6 <MPU_uxTaskPriorityGetImpl+0x3a>
 8059ed2:	2301      	movs	r3, #1
 8059ed4:	e000      	b.n	8059ed8 <MPU_uxTaskPriorityGetImpl+0x3c>
 8059ed6:	2300      	movs	r3, #0
 8059ed8:	2b00      	cmp	r3, #0
 8059eda:	d016      	beq.n	8059f0a <MPU_uxTaskPriorityGetImpl+0x6e>
 8059edc:	68bb      	ldr	r3, [r7, #8]
 8059ede:	3b01      	subs	r3, #1
 8059ee0:	4618      	mov	r0, r3
 8059ee2:	4b0d      	ldr	r3, [pc, #52]	; (8059f18 <MPU_uxTaskPriorityGetImpl+0x7c>)
 8059ee4:	4798      	blx	r3
 8059ee6:	6138      	str	r0, [r7, #16]
 8059ee8:	693b      	ldr	r3, [r7, #16]
 8059eea:	2b01      	cmp	r3, #1
 8059eec:	d10d      	bne.n	8059f0a <MPU_uxTaskPriorityGetImpl+0x6e>
 8059eee:	68bb      	ldr	r3, [r7, #8]
 8059ef0:	3b01      	subs	r3, #1
 8059ef2:	2102      	movs	r1, #2
 8059ef4:	4618      	mov	r0, r3
 8059ef6:	f7ff ff15 	bl	8059d24 <MPU_GetHandleAtIndex>
 8059efa:	60f8      	str	r0, [r7, #12]
 8059efc:	68fb      	ldr	r3, [r7, #12]
 8059efe:	2b00      	cmp	r3, #0
 8059f00:	d003      	beq.n	8059f0a <MPU_uxTaskPriorityGetImpl+0x6e>
 8059f02:	68f8      	ldr	r0, [r7, #12]
 8059f04:	4b03      	ldr	r3, [pc, #12]	; (8059f14 <MPU_uxTaskPriorityGetImpl+0x78>)
 8059f06:	4798      	blx	r3
 8059f08:	6178      	str	r0, [r7, #20]
 8059f0a:	697b      	ldr	r3, [r7, #20]
 8059f0c:	4618      	mov	r0, r3
 8059f0e:	3718      	adds	r7, #24
 8059f10:	46bd      	mov	sp, r7
 8059f12:	bd80      	pop	{r7, pc}
 8059f14:	080554dd 	.word	0x080554dd
 8059f18:	0805eafd 	.word	0x0805eafd

08059f1c <MPU_eTaskGetStateImpl>:
 8059f1c:	b580      	push	{r7, lr}
 8059f1e:	b086      	sub	sp, #24
 8059f20:	af00      	add	r7, sp, #0
 8059f22:	6078      	str	r0, [r7, #4]
 8059f24:	2305      	movs	r3, #5
 8059f26:	75fb      	strb	r3, [r7, #23]
 8059f28:	2300      	movs	r3, #0
 8059f2a:	613b      	str	r3, [r7, #16]
 8059f2c:	2300      	movs	r3, #0
 8059f2e:	60fb      	str	r3, [r7, #12]
 8059f30:	687b      	ldr	r3, [r7, #4]
 8059f32:	60bb      	str	r3, [r7, #8]
 8059f34:	68bb      	ldr	r3, [r7, #8]
 8059f36:	2b00      	cmp	r3, #0
 8059f38:	dd05      	ble.n	8059f46 <MPU_eTaskGetStateImpl+0x2a>
 8059f3a:	68bb      	ldr	r3, [r7, #8]
 8059f3c:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8059f40:	dc01      	bgt.n	8059f46 <MPU_eTaskGetStateImpl+0x2a>
 8059f42:	2301      	movs	r3, #1
 8059f44:	e000      	b.n	8059f48 <MPU_eTaskGetStateImpl+0x2c>
 8059f46:	2300      	movs	r3, #0
 8059f48:	2b00      	cmp	r3, #0
 8059f4a:	d017      	beq.n	8059f7c <MPU_eTaskGetStateImpl+0x60>
 8059f4c:	68bb      	ldr	r3, [r7, #8]
 8059f4e:	3b01      	subs	r3, #1
 8059f50:	4618      	mov	r0, r3
 8059f52:	4b0d      	ldr	r3, [pc, #52]	; (8059f88 <MPU_eTaskGetStateImpl+0x6c>)
 8059f54:	4798      	blx	r3
 8059f56:	60f8      	str	r0, [r7, #12]
 8059f58:	68fb      	ldr	r3, [r7, #12]
 8059f5a:	2b01      	cmp	r3, #1
 8059f5c:	d10e      	bne.n	8059f7c <MPU_eTaskGetStateImpl+0x60>
 8059f5e:	68bb      	ldr	r3, [r7, #8]
 8059f60:	3b01      	subs	r3, #1
 8059f62:	2102      	movs	r1, #2
 8059f64:	4618      	mov	r0, r3
 8059f66:	f7ff fedd 	bl	8059d24 <MPU_GetHandleAtIndex>
 8059f6a:	6138      	str	r0, [r7, #16]
 8059f6c:	693b      	ldr	r3, [r7, #16]
 8059f6e:	2b00      	cmp	r3, #0
 8059f70:	d004      	beq.n	8059f7c <MPU_eTaskGetStateImpl+0x60>
 8059f72:	6938      	ldr	r0, [r7, #16]
 8059f74:	4b05      	ldr	r3, [pc, #20]	; (8059f8c <MPU_eTaskGetStateImpl+0x70>)
 8059f76:	4798      	blx	r3
 8059f78:	4603      	mov	r3, r0
 8059f7a:	75fb      	strb	r3, [r7, #23]
 8059f7c:	7dfb      	ldrb	r3, [r7, #23]
 8059f7e:	4618      	mov	r0, r3
 8059f80:	3718      	adds	r7, #24
 8059f82:	46bd      	mov	sp, r7
 8059f84:	bd80      	pop	{r7, pc}
 8059f86:	bf00      	nop
 8059f88:	0805eafd 	.word	0x0805eafd
 8059f8c:	080555f5 	.word	0x080555f5

08059f90 <MPU_vTaskGetInfoImpl>:
 8059f90:	b590      	push	{r4, r7, lr}
 8059f92:	b089      	sub	sp, #36	; 0x24
 8059f94:	af00      	add	r7, sp, #0
 8059f96:	60f8      	str	r0, [r7, #12]
 8059f98:	60b9      	str	r1, [r7, #8]
 8059f9a:	607a      	str	r2, [r7, #4]
 8059f9c:	70fb      	strb	r3, [r7, #3]
 8059f9e:	2300      	movs	r3, #0
 8059fa0:	61fb      	str	r3, [r7, #28]
 8059fa2:	2300      	movs	r3, #0
 8059fa4:	61bb      	str	r3, [r7, #24]
 8059fa6:	2300      	movs	r3, #0
 8059fa8:	617b      	str	r3, [r7, #20]
 8059faa:	2202      	movs	r2, #2
 8059fac:	2124      	movs	r1, #36	; 0x24
 8059fae:	68b8      	ldr	r0, [r7, #8]
 8059fb0:	4b1d      	ldr	r3, [pc, #116]	; (805a028 <MPU_vTaskGetInfoImpl+0x98>)
 8059fb2:	4798      	blx	r3
 8059fb4:	61b8      	str	r0, [r7, #24]
 8059fb6:	69bb      	ldr	r3, [r7, #24]
 8059fb8:	2b01      	cmp	r3, #1
 8059fba:	d130      	bne.n	805a01e <MPU_vTaskGetInfoImpl+0x8e>
 8059fbc:	68fb      	ldr	r3, [r7, #12]
 8059fbe:	2b00      	cmp	r3, #0
 8059fc0:	d106      	bne.n	8059fd0 <MPU_vTaskGetInfoImpl+0x40>
 8059fc2:	78fb      	ldrb	r3, [r7, #3]
 8059fc4:	687a      	ldr	r2, [r7, #4]
 8059fc6:	68b9      	ldr	r1, [r7, #8]
 8059fc8:	68f8      	ldr	r0, [r7, #12]
 8059fca:	4c18      	ldr	r4, [pc, #96]	; (805a02c <MPU_vTaskGetInfoImpl+0x9c>)
 8059fcc:	47a0      	blx	r4
 8059fce:	e026      	b.n	805a01e <MPU_vTaskGetInfoImpl+0x8e>
 8059fd0:	68fb      	ldr	r3, [r7, #12]
 8059fd2:	613b      	str	r3, [r7, #16]
 8059fd4:	693b      	ldr	r3, [r7, #16]
 8059fd6:	2b00      	cmp	r3, #0
 8059fd8:	dd05      	ble.n	8059fe6 <MPU_vTaskGetInfoImpl+0x56>
 8059fda:	693b      	ldr	r3, [r7, #16]
 8059fdc:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8059fe0:	dc01      	bgt.n	8059fe6 <MPU_vTaskGetInfoImpl+0x56>
 8059fe2:	2301      	movs	r3, #1
 8059fe4:	e000      	b.n	8059fe8 <MPU_vTaskGetInfoImpl+0x58>
 8059fe6:	2300      	movs	r3, #0
 8059fe8:	2b00      	cmp	r3, #0
 8059fea:	d018      	beq.n	805a01e <MPU_vTaskGetInfoImpl+0x8e>
 8059fec:	693b      	ldr	r3, [r7, #16]
 8059fee:	3b01      	subs	r3, #1
 8059ff0:	4618      	mov	r0, r3
 8059ff2:	4b0f      	ldr	r3, [pc, #60]	; (805a030 <MPU_vTaskGetInfoImpl+0xa0>)
 8059ff4:	4798      	blx	r3
 8059ff6:	6178      	str	r0, [r7, #20]
 8059ff8:	697b      	ldr	r3, [r7, #20]
 8059ffa:	2b01      	cmp	r3, #1
 8059ffc:	d10f      	bne.n	805a01e <MPU_vTaskGetInfoImpl+0x8e>
 8059ffe:	693b      	ldr	r3, [r7, #16]
 805a000:	3b01      	subs	r3, #1
 805a002:	2102      	movs	r1, #2
 805a004:	4618      	mov	r0, r3
 805a006:	f7ff fe8d 	bl	8059d24 <MPU_GetHandleAtIndex>
 805a00a:	61f8      	str	r0, [r7, #28]
 805a00c:	69fb      	ldr	r3, [r7, #28]
 805a00e:	2b00      	cmp	r3, #0
 805a010:	d005      	beq.n	805a01e <MPU_vTaskGetInfoImpl+0x8e>
 805a012:	78fb      	ldrb	r3, [r7, #3]
 805a014:	687a      	ldr	r2, [r7, #4]
 805a016:	68b9      	ldr	r1, [r7, #8]
 805a018:	69f8      	ldr	r0, [r7, #28]
 805a01a:	4c04      	ldr	r4, [pc, #16]	; (805a02c <MPU_vTaskGetInfoImpl+0x9c>)
 805a01c:	47a0      	blx	r4
 805a01e:	bf00      	nop
 805a020:	3724      	adds	r7, #36	; 0x24
 805a022:	46bd      	mov	sp, r7
 805a024:	bd90      	pop	{r4, r7, pc}
 805a026:	bf00      	nop
 805a028:	0805ea15 	.word	0x0805ea15
 805a02c:	08055705 	.word	0x08055705
 805a030:	0805eafd 	.word	0x0805eafd

0805a034 <MPU_vTaskSuspendImpl>:
 805a034:	b580      	push	{r7, lr}
 805a036:	b086      	sub	sp, #24
 805a038:	af00      	add	r7, sp, #0
 805a03a:	6078      	str	r0, [r7, #4]
 805a03c:	2300      	movs	r3, #0
 805a03e:	617b      	str	r3, [r7, #20]
 805a040:	2300      	movs	r3, #0
 805a042:	613b      	str	r3, [r7, #16]
 805a044:	687b      	ldr	r3, [r7, #4]
 805a046:	2b00      	cmp	r3, #0
 805a048:	d103      	bne.n	805a052 <MPU_vTaskSuspendImpl+0x1e>
 805a04a:	6878      	ldr	r0, [r7, #4]
 805a04c:	4b1a      	ldr	r3, [pc, #104]	; (805a0b8 <MPU_vTaskSuspendImpl+0x84>)
 805a04e:	4798      	blx	r3
 805a050:	e02d      	b.n	805a0ae <MPU_vTaskSuspendImpl+0x7a>
 805a052:	4b1a      	ldr	r3, [pc, #104]	; (805a0bc <MPU_vTaskSuspendImpl+0x88>)
 805a054:	4798      	blx	r3
 805a056:	4603      	mov	r3, r0
 805a058:	2b01      	cmp	r3, #1
 805a05a:	d004      	beq.n	805a066 <MPU_vTaskSuspendImpl+0x32>
 805a05c:	4b18      	ldr	r3, [pc, #96]	; (805a0c0 <MPU_vTaskSuspendImpl+0x8c>)
 805a05e:	4798      	blx	r3
 805a060:	4603      	mov	r3, r0
 805a062:	2b01      	cmp	r3, #1
 805a064:	d123      	bne.n	805a0ae <MPU_vTaskSuspendImpl+0x7a>
 805a066:	687b      	ldr	r3, [r7, #4]
 805a068:	60fb      	str	r3, [r7, #12]
 805a06a:	68fb      	ldr	r3, [r7, #12]
 805a06c:	2b00      	cmp	r3, #0
 805a06e:	dd05      	ble.n	805a07c <MPU_vTaskSuspendImpl+0x48>
 805a070:	68fb      	ldr	r3, [r7, #12]
 805a072:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805a076:	dc01      	bgt.n	805a07c <MPU_vTaskSuspendImpl+0x48>
 805a078:	2301      	movs	r3, #1
 805a07a:	e000      	b.n	805a07e <MPU_vTaskSuspendImpl+0x4a>
 805a07c:	2300      	movs	r3, #0
 805a07e:	2b00      	cmp	r3, #0
 805a080:	d015      	beq.n	805a0ae <MPU_vTaskSuspendImpl+0x7a>
 805a082:	68fb      	ldr	r3, [r7, #12]
 805a084:	3b01      	subs	r3, #1
 805a086:	4618      	mov	r0, r3
 805a088:	4b0e      	ldr	r3, [pc, #56]	; (805a0c4 <MPU_vTaskSuspendImpl+0x90>)
 805a08a:	4798      	blx	r3
 805a08c:	6138      	str	r0, [r7, #16]
 805a08e:	693b      	ldr	r3, [r7, #16]
 805a090:	2b01      	cmp	r3, #1
 805a092:	d10c      	bne.n	805a0ae <MPU_vTaskSuspendImpl+0x7a>
 805a094:	68fb      	ldr	r3, [r7, #12]
 805a096:	3b01      	subs	r3, #1
 805a098:	2102      	movs	r1, #2
 805a09a:	4618      	mov	r0, r3
 805a09c:	f7ff fe42 	bl	8059d24 <MPU_GetHandleAtIndex>
 805a0a0:	6178      	str	r0, [r7, #20]
 805a0a2:	697b      	ldr	r3, [r7, #20]
 805a0a4:	2b00      	cmp	r3, #0
 805a0a6:	d002      	beq.n	805a0ae <MPU_vTaskSuspendImpl+0x7a>
 805a0a8:	6978      	ldr	r0, [r7, #20]
 805a0aa:	4b03      	ldr	r3, [pc, #12]	; (805a0b8 <MPU_vTaskSuspendImpl+0x84>)
 805a0ac:	4798      	blx	r3
 805a0ae:	bf00      	nop
 805a0b0:	3718      	adds	r7, #24
 805a0b2:	46bd      	mov	sp, r7
 805a0b4:	bd80      	pop	{r7, pc}
 805a0b6:	bf00      	nop
 805a0b8:	080559b9 	.word	0x080559b9
 805a0bc:	0805756d 	.word	0x0805756d
 805a0c0:	0805f0dd 	.word	0x0805f0dd
 805a0c4:	0805eafd 	.word	0x0805eafd

0805a0c8 <MPU_vTaskResumeImpl>:
 805a0c8:	b580      	push	{r7, lr}
 805a0ca:	b086      	sub	sp, #24
 805a0cc:	af00      	add	r7, sp, #0
 805a0ce:	6078      	str	r0, [r7, #4]
 805a0d0:	2300      	movs	r3, #0
 805a0d2:	617b      	str	r3, [r7, #20]
 805a0d4:	2300      	movs	r3, #0
 805a0d6:	613b      	str	r3, [r7, #16]
 805a0d8:	687b      	ldr	r3, [r7, #4]
 805a0da:	60fb      	str	r3, [r7, #12]
 805a0dc:	68fb      	ldr	r3, [r7, #12]
 805a0de:	2b00      	cmp	r3, #0
 805a0e0:	dd05      	ble.n	805a0ee <MPU_vTaskResumeImpl+0x26>
 805a0e2:	68fb      	ldr	r3, [r7, #12]
 805a0e4:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805a0e8:	dc01      	bgt.n	805a0ee <MPU_vTaskResumeImpl+0x26>
 805a0ea:	2301      	movs	r3, #1
 805a0ec:	e000      	b.n	805a0f0 <MPU_vTaskResumeImpl+0x28>
 805a0ee:	2300      	movs	r3, #0
 805a0f0:	2b00      	cmp	r3, #0
 805a0f2:	d015      	beq.n	805a120 <MPU_vTaskResumeImpl+0x58>
 805a0f4:	68fb      	ldr	r3, [r7, #12]
 805a0f6:	3b01      	subs	r3, #1
 805a0f8:	4618      	mov	r0, r3
 805a0fa:	4b0b      	ldr	r3, [pc, #44]	; (805a128 <MPU_vTaskResumeImpl+0x60>)
 805a0fc:	4798      	blx	r3
 805a0fe:	6138      	str	r0, [r7, #16]
 805a100:	693b      	ldr	r3, [r7, #16]
 805a102:	2b01      	cmp	r3, #1
 805a104:	d10c      	bne.n	805a120 <MPU_vTaskResumeImpl+0x58>
 805a106:	68fb      	ldr	r3, [r7, #12]
 805a108:	3b01      	subs	r3, #1
 805a10a:	2102      	movs	r1, #2
 805a10c:	4618      	mov	r0, r3
 805a10e:	f7ff fe09 	bl	8059d24 <MPU_GetHandleAtIndex>
 805a112:	6178      	str	r0, [r7, #20]
 805a114:	697b      	ldr	r3, [r7, #20]
 805a116:	2b00      	cmp	r3, #0
 805a118:	d002      	beq.n	805a120 <MPU_vTaskResumeImpl+0x58>
 805a11a:	6978      	ldr	r0, [r7, #20]
 805a11c:	4b03      	ldr	r3, [pc, #12]	; (805a12c <MPU_vTaskResumeImpl+0x64>)
 805a11e:	4798      	blx	r3
 805a120:	bf00      	nop
 805a122:	3718      	adds	r7, #24
 805a124:	46bd      	mov	sp, r7
 805a126:	bd80      	pop	{r7, pc}
 805a128:	0805eafd 	.word	0x0805eafd
 805a12c:	08055ac1 	.word	0x08055ac1

0805a130 <MPU_xTaskGetTickCountImpl>:
 805a130:	b580      	push	{r7, lr}
 805a132:	b082      	sub	sp, #8
 805a134:	af00      	add	r7, sp, #0
 805a136:	4b04      	ldr	r3, [pc, #16]	; (805a148 <MPU_xTaskGetTickCountImpl+0x18>)
 805a138:	4798      	blx	r3
 805a13a:	6078      	str	r0, [r7, #4]
 805a13c:	687b      	ldr	r3, [r7, #4]
 805a13e:	4618      	mov	r0, r3
 805a140:	3708      	adds	r7, #8
 805a142:	46bd      	mov	sp, r7
 805a144:	bd80      	pop	{r7, pc}
 805a146:	bf00      	nop
 805a148:	0805600d 	.word	0x0805600d

0805a14c <MPU_uxTaskGetNumberOfTasksImpl>:
 805a14c:	b580      	push	{r7, lr}
 805a14e:	b082      	sub	sp, #8
 805a150:	af00      	add	r7, sp, #0
 805a152:	4b04      	ldr	r3, [pc, #16]	; (805a164 <MPU_uxTaskGetNumberOfTasksImpl+0x18>)
 805a154:	4798      	blx	r3
 805a156:	6078      	str	r0, [r7, #4]
 805a158:	687b      	ldr	r3, [r7, #4]
 805a15a:	4618      	mov	r0, r3
 805a15c:	3708      	adds	r7, #8
 805a15e:	46bd      	mov	sp, r7
 805a160:	bd80      	pop	{r7, pc}
 805a162:	bf00      	nop
 805a164:	08056051 	.word	0x08056051

0805a168 <MPU_uxTaskGetSystemStateImpl>:
 805a168:	b580      	push	{r7, lr}
 805a16a:	b08a      	sub	sp, #40	; 0x28
 805a16c:	af00      	add	r7, sp, #0
 805a16e:	60f8      	str	r0, [r7, #12]
 805a170:	60b9      	str	r1, [r7, #8]
 805a172:	607a      	str	r2, [r7, #4]
 805a174:	2300      	movs	r3, #0
 805a176:	627b      	str	r3, [r7, #36]	; 0x24
 805a178:	2300      	movs	r3, #0
 805a17a:	61fb      	str	r3, [r7, #28]
 805a17c:	2300      	movs	r3, #0
 805a17e:	623b      	str	r3, [r7, #32]
 805a180:	68bb      	ldr	r3, [r7, #8]
 805a182:	61bb      	str	r3, [r7, #24]
 805a184:	2324      	movs	r3, #36	; 0x24
 805a186:	617b      	str	r3, [r7, #20]
 805a188:	697b      	ldr	r3, [r7, #20]
 805a18a:	2b00      	cmp	r3, #0
 805a18c:	d00c      	beq.n	805a1a8 <MPU_uxTaskGetSystemStateImpl+0x40>
 805a18e:	2100      	movs	r1, #0
 805a190:	69ba      	ldr	r2, [r7, #24]
 805a192:	697b      	ldr	r3, [r7, #20]
 805a194:	fba3 2302 	umull	r2, r3, r3, r2
 805a198:	2b00      	cmp	r3, #0
 805a19a:	d000      	beq.n	805a19e <MPU_uxTaskGetSystemStateImpl+0x36>
 805a19c:	2101      	movs	r1, #1
 805a19e:	460b      	mov	r3, r1
 805a1a0:	2b00      	cmp	r3, #0
 805a1a2:	d001      	beq.n	805a1a8 <MPU_uxTaskGetSystemStateImpl+0x40>
 805a1a4:	2301      	movs	r3, #1
 805a1a6:	e000      	b.n	805a1aa <MPU_uxTaskGetSystemStateImpl+0x42>
 805a1a8:	2300      	movs	r3, #0
 805a1aa:	2b00      	cmp	r3, #0
 805a1ac:	d123      	bne.n	805a1f6 <MPU_uxTaskGetSystemStateImpl+0x8e>
 805a1ae:	697b      	ldr	r3, [r7, #20]
 805a1b0:	69ba      	ldr	r2, [r7, #24]
 805a1b2:	fb02 f303 	mul.w	r3, r2, r3
 805a1b6:	2202      	movs	r2, #2
 805a1b8:	4619      	mov	r1, r3
 805a1ba:	68f8      	ldr	r0, [r7, #12]
 805a1bc:	4b10      	ldr	r3, [pc, #64]	; (805a200 <MPU_uxTaskGetSystemStateImpl+0x98>)
 805a1be:	4798      	blx	r3
 805a1c0:	4603      	mov	r3, r0
 805a1c2:	61fb      	str	r3, [r7, #28]
 805a1c4:	687b      	ldr	r3, [r7, #4]
 805a1c6:	2b00      	cmp	r3, #0
 805a1c8:	d006      	beq.n	805a1d8 <MPU_uxTaskGetSystemStateImpl+0x70>
 805a1ca:	2202      	movs	r2, #2
 805a1cc:	2104      	movs	r1, #4
 805a1ce:	6878      	ldr	r0, [r7, #4]
 805a1d0:	4b0b      	ldr	r3, [pc, #44]	; (805a200 <MPU_uxTaskGetSystemStateImpl+0x98>)
 805a1d2:	4798      	blx	r3
 805a1d4:	4603      	mov	r3, r0
 805a1d6:	623b      	str	r3, [r7, #32]
 805a1d8:	69fb      	ldr	r3, [r7, #28]
 805a1da:	2b01      	cmp	r3, #1
 805a1dc:	d10b      	bne.n	805a1f6 <MPU_uxTaskGetSystemStateImpl+0x8e>
 805a1de:	687b      	ldr	r3, [r7, #4]
 805a1e0:	2b00      	cmp	r3, #0
 805a1e2:	d002      	beq.n	805a1ea <MPU_uxTaskGetSystemStateImpl+0x82>
 805a1e4:	6a3b      	ldr	r3, [r7, #32]
 805a1e6:	2b01      	cmp	r3, #1
 805a1e8:	d105      	bne.n	805a1f6 <MPU_uxTaskGetSystemStateImpl+0x8e>
 805a1ea:	687a      	ldr	r2, [r7, #4]
 805a1ec:	69b9      	ldr	r1, [r7, #24]
 805a1ee:	68f8      	ldr	r0, [r7, #12]
 805a1f0:	4b04      	ldr	r3, [pc, #16]	; (805a204 <MPU_uxTaskGetSystemStateImpl+0x9c>)
 805a1f2:	4798      	blx	r3
 805a1f4:	6278      	str	r0, [r7, #36]	; 0x24
 805a1f6:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805a1f8:	4618      	mov	r0, r3
 805a1fa:	3728      	adds	r7, #40	; 0x28
 805a1fc:	46bd      	mov	sp, r7
 805a1fe:	bd80      	pop	{r7, pc}
 805a200:	0805ea15 	.word	0x0805ea15
 805a204:	080560d9 	.word	0x080560d9

0805a208 <MPU_uxTaskGetStackHighWaterMarkImpl>:
 805a208:	b580      	push	{r7, lr}
 805a20a:	b086      	sub	sp, #24
 805a20c:	af00      	add	r7, sp, #0
 805a20e:	6078      	str	r0, [r7, #4]
 805a210:	2300      	movs	r3, #0
 805a212:	617b      	str	r3, [r7, #20]
 805a214:	2300      	movs	r3, #0
 805a216:	613b      	str	r3, [r7, #16]
 805a218:	2300      	movs	r3, #0
 805a21a:	60fb      	str	r3, [r7, #12]
 805a21c:	687b      	ldr	r3, [r7, #4]
 805a21e:	2b00      	cmp	r3, #0
 805a220:	d104      	bne.n	805a22c <MPU_uxTaskGetStackHighWaterMarkImpl+0x24>
 805a222:	6878      	ldr	r0, [r7, #4]
 805a224:	4b16      	ldr	r3, [pc, #88]	; (805a280 <MPU_uxTaskGetStackHighWaterMarkImpl+0x78>)
 805a226:	4798      	blx	r3
 805a228:	6178      	str	r0, [r7, #20]
 805a22a:	e024      	b.n	805a276 <MPU_uxTaskGetStackHighWaterMarkImpl+0x6e>
 805a22c:	687b      	ldr	r3, [r7, #4]
 805a22e:	60bb      	str	r3, [r7, #8]
 805a230:	68bb      	ldr	r3, [r7, #8]
 805a232:	2b00      	cmp	r3, #0
 805a234:	dd05      	ble.n	805a242 <MPU_uxTaskGetStackHighWaterMarkImpl+0x3a>
 805a236:	68bb      	ldr	r3, [r7, #8]
 805a238:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805a23c:	dc01      	bgt.n	805a242 <MPU_uxTaskGetStackHighWaterMarkImpl+0x3a>
 805a23e:	2301      	movs	r3, #1
 805a240:	e000      	b.n	805a244 <MPU_uxTaskGetStackHighWaterMarkImpl+0x3c>
 805a242:	2300      	movs	r3, #0
 805a244:	2b00      	cmp	r3, #0
 805a246:	d016      	beq.n	805a276 <MPU_uxTaskGetStackHighWaterMarkImpl+0x6e>
 805a248:	68bb      	ldr	r3, [r7, #8]
 805a24a:	3b01      	subs	r3, #1
 805a24c:	4618      	mov	r0, r3
 805a24e:	4b0d      	ldr	r3, [pc, #52]	; (805a284 <MPU_uxTaskGetStackHighWaterMarkImpl+0x7c>)
 805a250:	4798      	blx	r3
 805a252:	60f8      	str	r0, [r7, #12]
 805a254:	68fb      	ldr	r3, [r7, #12]
 805a256:	2b01      	cmp	r3, #1
 805a258:	d10d      	bne.n	805a276 <MPU_uxTaskGetStackHighWaterMarkImpl+0x6e>
 805a25a:	68bb      	ldr	r3, [r7, #8]
 805a25c:	3b01      	subs	r3, #1
 805a25e:	2102      	movs	r1, #2
 805a260:	4618      	mov	r0, r3
 805a262:	f7ff fd5f 	bl	8059d24 <MPU_GetHandleAtIndex>
 805a266:	6138      	str	r0, [r7, #16]
 805a268:	693b      	ldr	r3, [r7, #16]
 805a26a:	2b00      	cmp	r3, #0
 805a26c:	d003      	beq.n	805a276 <MPU_uxTaskGetStackHighWaterMarkImpl+0x6e>
 805a26e:	6938      	ldr	r0, [r7, #16]
 805a270:	4b03      	ldr	r3, [pc, #12]	; (805a280 <MPU_uxTaskGetStackHighWaterMarkImpl+0x78>)
 805a272:	4798      	blx	r3
 805a274:	6178      	str	r0, [r7, #20]
 805a276:	697b      	ldr	r3, [r7, #20]
 805a278:	4618      	mov	r0, r3
 805a27a:	3718      	adds	r7, #24
 805a27c:	46bd      	mov	sp, r7
 805a27e:	bd80      	pop	{r7, pc}
 805a280:	080560a1 	.word	0x080560a1
 805a284:	0805eafd 	.word	0x0805eafd

0805a288 <MPU_xTaskGetCurrentTaskHandleImpl>:
 805a288:	b580      	push	{r7, lr}
 805a28a:	b084      	sub	sp, #16
 805a28c:	af00      	add	r7, sp, #0
 805a28e:	2300      	movs	r3, #0
 805a290:	60bb      	str	r3, [r7, #8]
 805a292:	2300      	movs	r3, #0
 805a294:	60fb      	str	r3, [r7, #12]
 805a296:	4b0b      	ldr	r3, [pc, #44]	; (805a2c4 <MPU_xTaskGetCurrentTaskHandleImpl+0x3c>)
 805a298:	4798      	blx	r3
 805a29a:	60b8      	str	r0, [r7, #8]
 805a29c:	68bb      	ldr	r3, [r7, #8]
 805a29e:	2b00      	cmp	r3, #0
 805a2a0:	d00b      	beq.n	805a2ba <MPU_xTaskGetCurrentTaskHandleImpl+0x32>
 805a2a2:	2102      	movs	r1, #2
 805a2a4:	68b8      	ldr	r0, [r7, #8]
 805a2a6:	f7ff fcc5 	bl	8059c34 <MPU_GetIndexForHandle>
 805a2aa:	6078      	str	r0, [r7, #4]
 805a2ac:	687b      	ldr	r3, [r7, #4]
 805a2ae:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 805a2b2:	d002      	beq.n	805a2ba <MPU_xTaskGetCurrentTaskHandleImpl+0x32>
 805a2b4:	687b      	ldr	r3, [r7, #4]
 805a2b6:	3301      	adds	r3, #1
 805a2b8:	60fb      	str	r3, [r7, #12]
 805a2ba:	68fb      	ldr	r3, [r7, #12]
 805a2bc:	4618      	mov	r0, r3
 805a2be:	3710      	adds	r7, #16
 805a2c0:	46bd      	mov	sp, r7
 805a2c2:	bd80      	pop	{r7, pc}
 805a2c4:	08057539 	.word	0x08057539

0805a2c8 <MPU_xTaskGetSchedulerStateImpl>:
 805a2c8:	b580      	push	{r7, lr}
 805a2ca:	b082      	sub	sp, #8
 805a2cc:	af00      	add	r7, sp, #0
 805a2ce:	2301      	movs	r3, #1
 805a2d0:	607b      	str	r3, [r7, #4]
 805a2d2:	4b04      	ldr	r3, [pc, #16]	; (805a2e4 <MPU_xTaskGetSchedulerStateImpl+0x1c>)
 805a2d4:	4798      	blx	r3
 805a2d6:	6078      	str	r0, [r7, #4]
 805a2d8:	687b      	ldr	r3, [r7, #4]
 805a2da:	4618      	mov	r0, r3
 805a2dc:	3708      	adds	r7, #8
 805a2de:	46bd      	mov	sp, r7
 805a2e0:	bd80      	pop	{r7, pc}
 805a2e2:	bf00      	nop
 805a2e4:	0805756d 	.word	0x0805756d

0805a2e8 <MPU_vTaskSetTimeOutStateImpl>:
 805a2e8:	b580      	push	{r7, lr}
 805a2ea:	b084      	sub	sp, #16
 805a2ec:	af00      	add	r7, sp, #0
 805a2ee:	6078      	str	r0, [r7, #4]
 805a2f0:	2300      	movs	r3, #0
 805a2f2:	60fb      	str	r3, [r7, #12]
 805a2f4:	687b      	ldr	r3, [r7, #4]
 805a2f6:	2b00      	cmp	r3, #0
 805a2f8:	d00b      	beq.n	805a312 <MPU_vTaskSetTimeOutStateImpl+0x2a>
 805a2fa:	2202      	movs	r2, #2
 805a2fc:	2108      	movs	r1, #8
 805a2fe:	6878      	ldr	r0, [r7, #4]
 805a300:	4b06      	ldr	r3, [pc, #24]	; (805a31c <MPU_vTaskSetTimeOutStateImpl+0x34>)
 805a302:	4798      	blx	r3
 805a304:	60f8      	str	r0, [r7, #12]
 805a306:	68fb      	ldr	r3, [r7, #12]
 805a308:	2b01      	cmp	r3, #1
 805a30a:	d102      	bne.n	805a312 <MPU_vTaskSetTimeOutStateImpl+0x2a>
 805a30c:	6878      	ldr	r0, [r7, #4]
 805a30e:	4b04      	ldr	r3, [pc, #16]	; (805a320 <MPU_vTaskSetTimeOutStateImpl+0x38>)
 805a310:	4798      	blx	r3
 805a312:	bf00      	nop
 805a314:	3710      	adds	r7, #16
 805a316:	46bd      	mov	sp, r7
 805a318:	bd80      	pop	{r7, pc}
 805a31a:	bf00      	nop
 805a31c:	0805ea15 	.word	0x0805ea15
 805a320:	08056bd5 	.word	0x08056bd5

0805a324 <MPU_xTaskCheckForTimeOutImpl>:
 805a324:	b580      	push	{r7, lr}
 805a326:	b086      	sub	sp, #24
 805a328:	af00      	add	r7, sp, #0
 805a32a:	6078      	str	r0, [r7, #4]
 805a32c:	6039      	str	r1, [r7, #0]
 805a32e:	2300      	movs	r3, #0
 805a330:	617b      	str	r3, [r7, #20]
 805a332:	2300      	movs	r3, #0
 805a334:	613b      	str	r3, [r7, #16]
 805a336:	2300      	movs	r3, #0
 805a338:	60fb      	str	r3, [r7, #12]
 805a33a:	687b      	ldr	r3, [r7, #4]
 805a33c:	2b00      	cmp	r3, #0
 805a33e:	d019      	beq.n	805a374 <MPU_xTaskCheckForTimeOutImpl+0x50>
 805a340:	683b      	ldr	r3, [r7, #0]
 805a342:	2b00      	cmp	r3, #0
 805a344:	d016      	beq.n	805a374 <MPU_xTaskCheckForTimeOutImpl+0x50>
 805a346:	2202      	movs	r2, #2
 805a348:	2108      	movs	r1, #8
 805a34a:	6878      	ldr	r0, [r7, #4]
 805a34c:	4b0c      	ldr	r3, [pc, #48]	; (805a380 <MPU_xTaskCheckForTimeOutImpl+0x5c>)
 805a34e:	4798      	blx	r3
 805a350:	6138      	str	r0, [r7, #16]
 805a352:	2202      	movs	r2, #2
 805a354:	2104      	movs	r1, #4
 805a356:	6838      	ldr	r0, [r7, #0]
 805a358:	4b09      	ldr	r3, [pc, #36]	; (805a380 <MPU_xTaskCheckForTimeOutImpl+0x5c>)
 805a35a:	4798      	blx	r3
 805a35c:	60f8      	str	r0, [r7, #12]
 805a35e:	693b      	ldr	r3, [r7, #16]
 805a360:	2b01      	cmp	r3, #1
 805a362:	d107      	bne.n	805a374 <MPU_xTaskCheckForTimeOutImpl+0x50>
 805a364:	68fb      	ldr	r3, [r7, #12]
 805a366:	2b01      	cmp	r3, #1
 805a368:	d104      	bne.n	805a374 <MPU_xTaskCheckForTimeOutImpl+0x50>
 805a36a:	6839      	ldr	r1, [r7, #0]
 805a36c:	6878      	ldr	r0, [r7, #4]
 805a36e:	4b05      	ldr	r3, [pc, #20]	; (805a384 <MPU_xTaskCheckForTimeOutImpl+0x60>)
 805a370:	4798      	blx	r3
 805a372:	6178      	str	r0, [r7, #20]
 805a374:	697b      	ldr	r3, [r7, #20]
 805a376:	4618      	mov	r0, r3
 805a378:	3718      	adds	r7, #24
 805a37a:	46bd      	mov	sp, r7
 805a37c:	bd80      	pop	{r7, pc}
 805a37e:	bf00      	nop
 805a380:	0805ea15 	.word	0x0805ea15
 805a384:	08056c1d 	.word	0x08056c1d

0805a388 <MPU_xTaskGenericNotifyImpl>:
 805a388:	b590      	push	{r4, r7, lr}
 805a38a:	b08d      	sub	sp, #52	; 0x34
 805a38c:	af02      	add	r7, sp, #8
 805a38e:	60f8      	str	r0, [r7, #12]
 805a390:	60b9      	str	r1, [r7, #8]
 805a392:	607a      	str	r2, [r7, #4]
 805a394:	70fb      	strb	r3, [r7, #3]
 805a396:	2300      	movs	r3, #0
 805a398:	627b      	str	r3, [r7, #36]	; 0x24
 805a39a:	2300      	movs	r3, #0
 805a39c:	61fb      	str	r3, [r7, #28]
 805a39e:	2300      	movs	r3, #0
 805a3a0:	623b      	str	r3, [r7, #32]
 805a3a2:	2300      	movs	r3, #0
 805a3a4:	61bb      	str	r3, [r7, #24]
 805a3a6:	68bb      	ldr	r3, [r7, #8]
 805a3a8:	2b00      	cmp	r3, #0
 805a3aa:	d139      	bne.n	805a420 <MPU_xTaskGenericNotifyImpl+0x98>
 805a3ac:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 805a3ae:	2b00      	cmp	r3, #0
 805a3b0:	d005      	beq.n	805a3be <MPU_xTaskGenericNotifyImpl+0x36>
 805a3b2:	2202      	movs	r2, #2
 805a3b4:	2104      	movs	r1, #4
 805a3b6:	6bb8      	ldr	r0, [r7, #56]	; 0x38
 805a3b8:	4b1c      	ldr	r3, [pc, #112]	; (805a42c <MPU_xTaskGenericNotifyImpl+0xa4>)
 805a3ba:	4798      	blx	r3
 805a3bc:	6238      	str	r0, [r7, #32]
 805a3be:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 805a3c0:	2b00      	cmp	r3, #0
 805a3c2:	d002      	beq.n	805a3ca <MPU_xTaskGenericNotifyImpl+0x42>
 805a3c4:	6a3b      	ldr	r3, [r7, #32]
 805a3c6:	2b01      	cmp	r3, #1
 805a3c8:	d12a      	bne.n	805a420 <MPU_xTaskGenericNotifyImpl+0x98>
 805a3ca:	68fb      	ldr	r3, [r7, #12]
 805a3cc:	617b      	str	r3, [r7, #20]
 805a3ce:	697b      	ldr	r3, [r7, #20]
 805a3d0:	2b00      	cmp	r3, #0
 805a3d2:	dd05      	ble.n	805a3e0 <MPU_xTaskGenericNotifyImpl+0x58>
 805a3d4:	697b      	ldr	r3, [r7, #20]
 805a3d6:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805a3da:	dc01      	bgt.n	805a3e0 <MPU_xTaskGenericNotifyImpl+0x58>
 805a3dc:	2301      	movs	r3, #1
 805a3de:	e000      	b.n	805a3e2 <MPU_xTaskGenericNotifyImpl+0x5a>
 805a3e0:	2300      	movs	r3, #0
 805a3e2:	2b00      	cmp	r3, #0
 805a3e4:	d01c      	beq.n	805a420 <MPU_xTaskGenericNotifyImpl+0x98>
 805a3e6:	697b      	ldr	r3, [r7, #20]
 805a3e8:	3b01      	subs	r3, #1
 805a3ea:	4618      	mov	r0, r3
 805a3ec:	4b10      	ldr	r3, [pc, #64]	; (805a430 <MPU_xTaskGenericNotifyImpl+0xa8>)
 805a3ee:	4798      	blx	r3
 805a3f0:	61b8      	str	r0, [r7, #24]
 805a3f2:	69bb      	ldr	r3, [r7, #24]
 805a3f4:	2b01      	cmp	r3, #1
 805a3f6:	d113      	bne.n	805a420 <MPU_xTaskGenericNotifyImpl+0x98>
 805a3f8:	697b      	ldr	r3, [r7, #20]
 805a3fa:	3b01      	subs	r3, #1
 805a3fc:	2102      	movs	r1, #2
 805a3fe:	4618      	mov	r0, r3
 805a400:	f7ff fc90 	bl	8059d24 <MPU_GetHandleAtIndex>
 805a404:	61f8      	str	r0, [r7, #28]
 805a406:	69fb      	ldr	r3, [r7, #28]
 805a408:	2b00      	cmp	r3, #0
 805a40a:	d009      	beq.n	805a420 <MPU_xTaskGenericNotifyImpl+0x98>
 805a40c:	78fa      	ldrb	r2, [r7, #3]
 805a40e:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 805a410:	9300      	str	r3, [sp, #0]
 805a412:	4613      	mov	r3, r2
 805a414:	687a      	ldr	r2, [r7, #4]
 805a416:	68b9      	ldr	r1, [r7, #8]
 805a418:	69f8      	ldr	r0, [r7, #28]
 805a41a:	4c06      	ldr	r4, [pc, #24]	; (805a434 <MPU_xTaskGenericNotifyImpl+0xac>)
 805a41c:	47a0      	blx	r4
 805a41e:	6278      	str	r0, [r7, #36]	; 0x24
 805a420:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805a422:	4618      	mov	r0, r3
 805a424:	372c      	adds	r7, #44	; 0x2c
 805a426:	46bd      	mov	sp, r7
 805a428:	bd90      	pop	{r4, r7, pc}
 805a42a:	bf00      	nop
 805a42c:	0805ea15 	.word	0x0805ea15
 805a430:	0805eafd 	.word	0x0805eafd
 805a434:	080561f5 	.word	0x080561f5

0805a438 <MPU_xTaskGenericNotifyWaitImpl>:
 805a438:	b590      	push	{r4, r7, lr}
 805a43a:	b089      	sub	sp, #36	; 0x24
 805a43c:	af02      	add	r7, sp, #8
 805a43e:	60f8      	str	r0, [r7, #12]
 805a440:	60b9      	str	r1, [r7, #8]
 805a442:	607a      	str	r2, [r7, #4]
 805a444:	603b      	str	r3, [r7, #0]
 805a446:	2300      	movs	r3, #0
 805a448:	617b      	str	r3, [r7, #20]
 805a44a:	2300      	movs	r3, #0
 805a44c:	613b      	str	r3, [r7, #16]
 805a44e:	68fb      	ldr	r3, [r7, #12]
 805a450:	2b00      	cmp	r3, #0
 805a452:	d117      	bne.n	805a484 <MPU_xTaskGenericNotifyWaitImpl+0x4c>
 805a454:	683b      	ldr	r3, [r7, #0]
 805a456:	2b00      	cmp	r3, #0
 805a458:	d005      	beq.n	805a466 <MPU_xTaskGenericNotifyWaitImpl+0x2e>
 805a45a:	2202      	movs	r2, #2
 805a45c:	2104      	movs	r1, #4
 805a45e:	6838      	ldr	r0, [r7, #0]
 805a460:	4b0b      	ldr	r3, [pc, #44]	; (805a490 <MPU_xTaskGenericNotifyWaitImpl+0x58>)
 805a462:	4798      	blx	r3
 805a464:	6138      	str	r0, [r7, #16]
 805a466:	683b      	ldr	r3, [r7, #0]
 805a468:	2b00      	cmp	r3, #0
 805a46a:	d002      	beq.n	805a472 <MPU_xTaskGenericNotifyWaitImpl+0x3a>
 805a46c:	693b      	ldr	r3, [r7, #16]
 805a46e:	2b01      	cmp	r3, #1
 805a470:	d108      	bne.n	805a484 <MPU_xTaskGenericNotifyWaitImpl+0x4c>
 805a472:	6abb      	ldr	r3, [r7, #40]	; 0x28
 805a474:	9300      	str	r3, [sp, #0]
 805a476:	683b      	ldr	r3, [r7, #0]
 805a478:	687a      	ldr	r2, [r7, #4]
 805a47a:	68b9      	ldr	r1, [r7, #8]
 805a47c:	68f8      	ldr	r0, [r7, #12]
 805a47e:	4c05      	ldr	r4, [pc, #20]	; (805a494 <MPU_xTaskGenericNotifyWaitImpl+0x5c>)
 805a480:	47a0      	blx	r4
 805a482:	6178      	str	r0, [r7, #20]
 805a484:	697b      	ldr	r3, [r7, #20]
 805a486:	4618      	mov	r0, r3
 805a488:	371c      	adds	r7, #28
 805a48a:	46bd      	mov	sp, r7
 805a48c:	bd90      	pop	{r4, r7, pc}
 805a48e:	bf00      	nop
 805a490:	0805ea15 	.word	0x0805ea15
 805a494:	080566e1 	.word	0x080566e1

0805a498 <MPU_ulTaskGenericNotifyTakeImpl>:
 805a498:	b580      	push	{r7, lr}
 805a49a:	b086      	sub	sp, #24
 805a49c:	af00      	add	r7, sp, #0
 805a49e:	60f8      	str	r0, [r7, #12]
 805a4a0:	60b9      	str	r1, [r7, #8]
 805a4a2:	607a      	str	r2, [r7, #4]
 805a4a4:	2300      	movs	r3, #0
 805a4a6:	617b      	str	r3, [r7, #20]
 805a4a8:	68fb      	ldr	r3, [r7, #12]
 805a4aa:	2b00      	cmp	r3, #0
 805a4ac:	d105      	bne.n	805a4ba <MPU_ulTaskGenericNotifyTakeImpl+0x22>
 805a4ae:	687a      	ldr	r2, [r7, #4]
 805a4b0:	68b9      	ldr	r1, [r7, #8]
 805a4b2:	68f8      	ldr	r0, [r7, #12]
 805a4b4:	4b03      	ldr	r3, [pc, #12]	; (805a4c4 <MPU_ulTaskGenericNotifyTakeImpl+0x2c>)
 805a4b6:	4798      	blx	r3
 805a4b8:	6178      	str	r0, [r7, #20]
 805a4ba:	697b      	ldr	r3, [r7, #20]
 805a4bc:	4618      	mov	r0, r3
 805a4be:	3718      	adds	r7, #24
 805a4c0:	46bd      	mov	sp, r7
 805a4c2:	bd80      	pop	{r7, pc}
 805a4c4:	08056a01 	.word	0x08056a01

0805a4c8 <MPU_xTaskGenericNotifyStateClearImpl>:
 805a4c8:	b580      	push	{r7, lr}
 805a4ca:	b086      	sub	sp, #24
 805a4cc:	af00      	add	r7, sp, #0
 805a4ce:	6078      	str	r0, [r7, #4]
 805a4d0:	6039      	str	r1, [r7, #0]
 805a4d2:	2300      	movs	r3, #0
 805a4d4:	617b      	str	r3, [r7, #20]
 805a4d6:	2300      	movs	r3, #0
 805a4d8:	613b      	str	r3, [r7, #16]
 805a4da:	2300      	movs	r3, #0
 805a4dc:	60fb      	str	r3, [r7, #12]
 805a4de:	683b      	ldr	r3, [r7, #0]
 805a4e0:	2b00      	cmp	r3, #0
 805a4e2:	d12e      	bne.n	805a542 <MPU_xTaskGenericNotifyStateClearImpl+0x7a>
 805a4e4:	687b      	ldr	r3, [r7, #4]
 805a4e6:	2b00      	cmp	r3, #0
 805a4e8:	d105      	bne.n	805a4f6 <MPU_xTaskGenericNotifyStateClearImpl+0x2e>
 805a4ea:	6839      	ldr	r1, [r7, #0]
 805a4ec:	6878      	ldr	r0, [r7, #4]
 805a4ee:	4b17      	ldr	r3, [pc, #92]	; (805a54c <MPU_xTaskGenericNotifyStateClearImpl+0x84>)
 805a4f0:	4798      	blx	r3
 805a4f2:	6178      	str	r0, [r7, #20]
 805a4f4:	e025      	b.n	805a542 <MPU_xTaskGenericNotifyStateClearImpl+0x7a>
 805a4f6:	687b      	ldr	r3, [r7, #4]
 805a4f8:	60bb      	str	r3, [r7, #8]
 805a4fa:	68bb      	ldr	r3, [r7, #8]
 805a4fc:	2b00      	cmp	r3, #0
 805a4fe:	dd05      	ble.n	805a50c <MPU_xTaskGenericNotifyStateClearImpl+0x44>
 805a500:	68bb      	ldr	r3, [r7, #8]
 805a502:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805a506:	dc01      	bgt.n	805a50c <MPU_xTaskGenericNotifyStateClearImpl+0x44>
 805a508:	2301      	movs	r3, #1
 805a50a:	e000      	b.n	805a50e <MPU_xTaskGenericNotifyStateClearImpl+0x46>
 805a50c:	2300      	movs	r3, #0
 805a50e:	2b00      	cmp	r3, #0
 805a510:	d017      	beq.n	805a542 <MPU_xTaskGenericNotifyStateClearImpl+0x7a>
 805a512:	68bb      	ldr	r3, [r7, #8]
 805a514:	3b01      	subs	r3, #1
 805a516:	4618      	mov	r0, r3
 805a518:	4b0d      	ldr	r3, [pc, #52]	; (805a550 <MPU_xTaskGenericNotifyStateClearImpl+0x88>)
 805a51a:	4798      	blx	r3
 805a51c:	60f8      	str	r0, [r7, #12]
 805a51e:	68fb      	ldr	r3, [r7, #12]
 805a520:	2b01      	cmp	r3, #1
 805a522:	d10e      	bne.n	805a542 <MPU_xTaskGenericNotifyStateClearImpl+0x7a>
 805a524:	68bb      	ldr	r3, [r7, #8]
 805a526:	3b01      	subs	r3, #1
 805a528:	2102      	movs	r1, #2
 805a52a:	4618      	mov	r0, r3
 805a52c:	f7ff fbfa 	bl	8059d24 <MPU_GetHandleAtIndex>
 805a530:	6138      	str	r0, [r7, #16]
 805a532:	693b      	ldr	r3, [r7, #16]
 805a534:	2b00      	cmp	r3, #0
 805a536:	d004      	beq.n	805a542 <MPU_xTaskGenericNotifyStateClearImpl+0x7a>
 805a538:	6839      	ldr	r1, [r7, #0]
 805a53a:	6938      	ldr	r0, [r7, #16]
 805a53c:	4b03      	ldr	r3, [pc, #12]	; (805a54c <MPU_xTaskGenericNotifyStateClearImpl+0x84>)
 805a53e:	4798      	blx	r3
 805a540:	6178      	str	r0, [r7, #20]
 805a542:	697b      	ldr	r3, [r7, #20]
 805a544:	4618      	mov	r0, r3
 805a546:	3718      	adds	r7, #24
 805a548:	46bd      	mov	sp, r7
 805a54a:	bd80      	pop	{r7, pc}
 805a54c:	08056ae9 	.word	0x08056ae9
 805a550:	0805eafd 	.word	0x0805eafd

0805a554 <MPU_ulTaskGenericNotifyValueClearImpl>:
 805a554:	b580      	push	{r7, lr}
 805a556:	b088      	sub	sp, #32
 805a558:	af00      	add	r7, sp, #0
 805a55a:	60f8      	str	r0, [r7, #12]
 805a55c:	60b9      	str	r1, [r7, #8]
 805a55e:	607a      	str	r2, [r7, #4]
 805a560:	2300      	movs	r3, #0
 805a562:	61fb      	str	r3, [r7, #28]
 805a564:	2300      	movs	r3, #0
 805a566:	61bb      	str	r3, [r7, #24]
 805a568:	2300      	movs	r3, #0
 805a56a:	617b      	str	r3, [r7, #20]
 805a56c:	68bb      	ldr	r3, [r7, #8]
 805a56e:	2b00      	cmp	r3, #0
 805a570:	d130      	bne.n	805a5d4 <MPU_ulTaskGenericNotifyValueClearImpl+0x80>
 805a572:	68fb      	ldr	r3, [r7, #12]
 805a574:	2b00      	cmp	r3, #0
 805a576:	d106      	bne.n	805a586 <MPU_ulTaskGenericNotifyValueClearImpl+0x32>
 805a578:	687a      	ldr	r2, [r7, #4]
 805a57a:	68b9      	ldr	r1, [r7, #8]
 805a57c:	68f8      	ldr	r0, [r7, #12]
 805a57e:	4b18      	ldr	r3, [pc, #96]	; (805a5e0 <MPU_ulTaskGenericNotifyValueClearImpl+0x8c>)
 805a580:	4798      	blx	r3
 805a582:	61f8      	str	r0, [r7, #28]
 805a584:	e026      	b.n	805a5d4 <MPU_ulTaskGenericNotifyValueClearImpl+0x80>
 805a586:	68fb      	ldr	r3, [r7, #12]
 805a588:	613b      	str	r3, [r7, #16]
 805a58a:	693b      	ldr	r3, [r7, #16]
 805a58c:	2b00      	cmp	r3, #0
 805a58e:	dd05      	ble.n	805a59c <MPU_ulTaskGenericNotifyValueClearImpl+0x48>
 805a590:	693b      	ldr	r3, [r7, #16]
 805a592:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805a596:	dc01      	bgt.n	805a59c <MPU_ulTaskGenericNotifyValueClearImpl+0x48>
 805a598:	2301      	movs	r3, #1
 805a59a:	e000      	b.n	805a59e <MPU_ulTaskGenericNotifyValueClearImpl+0x4a>
 805a59c:	2300      	movs	r3, #0
 805a59e:	2b00      	cmp	r3, #0
 805a5a0:	d018      	beq.n	805a5d4 <MPU_ulTaskGenericNotifyValueClearImpl+0x80>
 805a5a2:	693b      	ldr	r3, [r7, #16]
 805a5a4:	3b01      	subs	r3, #1
 805a5a6:	4618      	mov	r0, r3
 805a5a8:	4b0e      	ldr	r3, [pc, #56]	; (805a5e4 <MPU_ulTaskGenericNotifyValueClearImpl+0x90>)
 805a5aa:	4798      	blx	r3
 805a5ac:	6178      	str	r0, [r7, #20]
 805a5ae:	697b      	ldr	r3, [r7, #20]
 805a5b0:	2b01      	cmp	r3, #1
 805a5b2:	d10f      	bne.n	805a5d4 <MPU_ulTaskGenericNotifyValueClearImpl+0x80>
 805a5b4:	693b      	ldr	r3, [r7, #16]
 805a5b6:	3b01      	subs	r3, #1
 805a5b8:	2102      	movs	r1, #2
 805a5ba:	4618      	mov	r0, r3
 805a5bc:	f7ff fbb2 	bl	8059d24 <MPU_GetHandleAtIndex>
 805a5c0:	61b8      	str	r0, [r7, #24]
 805a5c2:	69bb      	ldr	r3, [r7, #24]
 805a5c4:	2b00      	cmp	r3, #0
 805a5c6:	d005      	beq.n	805a5d4 <MPU_ulTaskGenericNotifyValueClearImpl+0x80>
 805a5c8:	687a      	ldr	r2, [r7, #4]
 805a5ca:	68b9      	ldr	r1, [r7, #8]
 805a5cc:	69b8      	ldr	r0, [r7, #24]
 805a5ce:	4b04      	ldr	r3, [pc, #16]	; (805a5e0 <MPU_ulTaskGenericNotifyValueClearImpl+0x8c>)
 805a5d0:	4798      	blx	r3
 805a5d2:	61f8      	str	r0, [r7, #28]
 805a5d4:	69fb      	ldr	r3, [r7, #28]
 805a5d6:	4618      	mov	r0, r3
 805a5d8:	3720      	adds	r7, #32
 805a5da:	46bd      	mov	sp, r7
 805a5dc:	bd80      	pop	{r7, pc}
 805a5de:	bf00      	nop
 805a5e0:	08056b5d 	.word	0x08056b5d
 805a5e4:	0805eafd 	.word	0x0805eafd

0805a5e8 <MPU_xQueueGenericSendImpl>:
 805a5e8:	b590      	push	{r4, r7, lr}
 805a5ea:	b08d      	sub	sp, #52	; 0x34
 805a5ec:	af00      	add	r7, sp, #0
 805a5ee:	60f8      	str	r0, [r7, #12]
 805a5f0:	60b9      	str	r1, [r7, #8]
 805a5f2:	607a      	str	r2, [r7, #4]
 805a5f4:	603b      	str	r3, [r7, #0]
 805a5f6:	2300      	movs	r3, #0
 805a5f8:	627b      	str	r3, [r7, #36]	; 0x24
 805a5fa:	2300      	movs	r3, #0
 805a5fc:	62fb      	str	r3, [r7, #44]	; 0x2c
 805a5fe:	2300      	movs	r3, #0
 805a600:	62bb      	str	r3, [r7, #40]	; 0x28
 805a602:	2300      	movs	r3, #0
 805a604:	623b      	str	r3, [r7, #32]
 805a606:	68fb      	ldr	r3, [r7, #12]
 805a608:	61fb      	str	r3, [r7, #28]
 805a60a:	69fb      	ldr	r3, [r7, #28]
 805a60c:	2b00      	cmp	r3, #0
 805a60e:	dd05      	ble.n	805a61c <MPU_xQueueGenericSendImpl+0x34>
 805a610:	69fb      	ldr	r3, [r7, #28]
 805a612:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805a616:	dc01      	bgt.n	805a61c <MPU_xQueueGenericSendImpl+0x34>
 805a618:	2301      	movs	r3, #1
 805a61a:	e000      	b.n	805a61e <MPU_xQueueGenericSendImpl+0x36>
 805a61c:	2300      	movs	r3, #0
 805a61e:	2b00      	cmp	r3, #0
 805a620:	d044      	beq.n	805a6ac <MPU_xQueueGenericSendImpl+0xc4>
 805a622:	69fb      	ldr	r3, [r7, #28]
 805a624:	3b01      	subs	r3, #1
 805a626:	4618      	mov	r0, r3
 805a628:	4b23      	ldr	r3, [pc, #140]	; (805a6b8 <MPU_xQueueGenericSendImpl+0xd0>)
 805a62a:	4798      	blx	r3
 805a62c:	6238      	str	r0, [r7, #32]
 805a62e:	6a3b      	ldr	r3, [r7, #32]
 805a630:	2b01      	cmp	r3, #1
 805a632:	d13b      	bne.n	805a6ac <MPU_xQueueGenericSendImpl+0xc4>
 805a634:	69fb      	ldr	r3, [r7, #28]
 805a636:	3b01      	subs	r3, #1
 805a638:	2101      	movs	r1, #1
 805a63a:	4618      	mov	r0, r3
 805a63c:	f7ff fb72 	bl	8059d24 <MPU_GetHandleAtIndex>
 805a640:	6278      	str	r0, [r7, #36]	; 0x24
 805a642:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805a644:	2b00      	cmp	r3, #0
 805a646:	d031      	beq.n	805a6ac <MPU_xQueueGenericSendImpl+0xc4>
 805a648:	6a78      	ldr	r0, [r7, #36]	; 0x24
 805a64a:	4b1c      	ldr	r3, [pc, #112]	; (805a6bc <MPU_xQueueGenericSendImpl+0xd4>)
 805a64c:	4798      	blx	r3
 805a64e:	61b8      	str	r0, [r7, #24]
 805a650:	6a78      	ldr	r0, [r7, #36]	; 0x24
 805a652:	4b1b      	ldr	r3, [pc, #108]	; (805a6c0 <MPU_xQueueGenericSendImpl+0xd8>)
 805a654:	4798      	blx	r3
 805a656:	6178      	str	r0, [r7, #20]
 805a658:	68bb      	ldr	r3, [r7, #8]
 805a65a:	2b00      	cmp	r3, #0
 805a65c:	d102      	bne.n	805a664 <MPU_xQueueGenericSendImpl+0x7c>
 805a65e:	69bb      	ldr	r3, [r7, #24]
 805a660:	2b00      	cmp	r3, #0
 805a662:	d123      	bne.n	805a6ac <MPU_xQueueGenericSendImpl+0xc4>
 805a664:	683b      	ldr	r3, [r7, #0]
 805a666:	2b02      	cmp	r3, #2
 805a668:	d102      	bne.n	805a670 <MPU_xQueueGenericSendImpl+0x88>
 805a66a:	697b      	ldr	r3, [r7, #20]
 805a66c:	2b01      	cmp	r3, #1
 805a66e:	d11d      	bne.n	805a6ac <MPU_xQueueGenericSendImpl+0xc4>
 805a670:	4b14      	ldr	r3, [pc, #80]	; (805a6c4 <MPU_xQueueGenericSendImpl+0xdc>)
 805a672:	4798      	blx	r3
 805a674:	4603      	mov	r3, r0
 805a676:	2b00      	cmp	r3, #0
 805a678:	d102      	bne.n	805a680 <MPU_xQueueGenericSendImpl+0x98>
 805a67a:	687b      	ldr	r3, [r7, #4]
 805a67c:	2b00      	cmp	r3, #0
 805a67e:	d115      	bne.n	805a6ac <MPU_xQueueGenericSendImpl+0xc4>
 805a680:	68bb      	ldr	r3, [r7, #8]
 805a682:	2b00      	cmp	r3, #0
 805a684:	d005      	beq.n	805a692 <MPU_xQueueGenericSendImpl+0xaa>
 805a686:	2201      	movs	r2, #1
 805a688:	69b9      	ldr	r1, [r7, #24]
 805a68a:	68b8      	ldr	r0, [r7, #8]
 805a68c:	4b0e      	ldr	r3, [pc, #56]	; (805a6c8 <MPU_xQueueGenericSendImpl+0xe0>)
 805a68e:	4798      	blx	r3
 805a690:	62b8      	str	r0, [r7, #40]	; 0x28
 805a692:	68bb      	ldr	r3, [r7, #8]
 805a694:	2b00      	cmp	r3, #0
 805a696:	d002      	beq.n	805a69e <MPU_xQueueGenericSendImpl+0xb6>
 805a698:	6abb      	ldr	r3, [r7, #40]	; 0x28
 805a69a:	2b01      	cmp	r3, #1
 805a69c:	d106      	bne.n	805a6ac <MPU_xQueueGenericSendImpl+0xc4>
 805a69e:	683b      	ldr	r3, [r7, #0]
 805a6a0:	687a      	ldr	r2, [r7, #4]
 805a6a2:	68b9      	ldr	r1, [r7, #8]
 805a6a4:	6a78      	ldr	r0, [r7, #36]	; 0x24
 805a6a6:	4c09      	ldr	r4, [pc, #36]	; (805a6cc <MPU_xQueueGenericSendImpl+0xe4>)
 805a6a8:	47a0      	blx	r4
 805a6aa:	62f8      	str	r0, [r7, #44]	; 0x2c
 805a6ac:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 805a6ae:	4618      	mov	r0, r3
 805a6b0:	3734      	adds	r7, #52	; 0x34
 805a6b2:	46bd      	mov	sp, r7
 805a6b4:	bd90      	pop	{r4, r7, pc}
 805a6b6:	bf00      	nop
 805a6b8:	0805eafd 	.word	0x0805eafd
 805a6bc:	0805d5d9 	.word	0x0805d5d9
 805a6c0:	0805d5ef 	.word	0x0805d5ef
 805a6c4:	0805756d 	.word	0x0805756d
 805a6c8:	0805ea15 	.word	0x0805ea15
 805a6cc:	0805c49d 	.word	0x0805c49d

0805a6d0 <MPU_uxQueueMessagesWaitingImpl>:
 805a6d0:	b580      	push	{r7, lr}
 805a6d2:	b086      	sub	sp, #24
 805a6d4:	af00      	add	r7, sp, #0
 805a6d6:	6078      	str	r0, [r7, #4]
 805a6d8:	2300      	movs	r3, #0
 805a6da:	613b      	str	r3, [r7, #16]
 805a6dc:	2300      	movs	r3, #0
 805a6de:	617b      	str	r3, [r7, #20]
 805a6e0:	2300      	movs	r3, #0
 805a6e2:	60fb      	str	r3, [r7, #12]
 805a6e4:	687b      	ldr	r3, [r7, #4]
 805a6e6:	60bb      	str	r3, [r7, #8]
 805a6e8:	68bb      	ldr	r3, [r7, #8]
 805a6ea:	2b00      	cmp	r3, #0
 805a6ec:	dd05      	ble.n	805a6fa <MPU_uxQueueMessagesWaitingImpl+0x2a>
 805a6ee:	68bb      	ldr	r3, [r7, #8]
 805a6f0:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805a6f4:	dc01      	bgt.n	805a6fa <MPU_uxQueueMessagesWaitingImpl+0x2a>
 805a6f6:	2301      	movs	r3, #1
 805a6f8:	e000      	b.n	805a6fc <MPU_uxQueueMessagesWaitingImpl+0x2c>
 805a6fa:	2300      	movs	r3, #0
 805a6fc:	2b00      	cmp	r3, #0
 805a6fe:	d016      	beq.n	805a72e <MPU_uxQueueMessagesWaitingImpl+0x5e>
 805a700:	68bb      	ldr	r3, [r7, #8]
 805a702:	3b01      	subs	r3, #1
 805a704:	4618      	mov	r0, r3
 805a706:	4b0c      	ldr	r3, [pc, #48]	; (805a738 <MPU_uxQueueMessagesWaitingImpl+0x68>)
 805a708:	4798      	blx	r3
 805a70a:	60f8      	str	r0, [r7, #12]
 805a70c:	68fb      	ldr	r3, [r7, #12]
 805a70e:	2b01      	cmp	r3, #1
 805a710:	d10d      	bne.n	805a72e <MPU_uxQueueMessagesWaitingImpl+0x5e>
 805a712:	68bb      	ldr	r3, [r7, #8]
 805a714:	3b01      	subs	r3, #1
 805a716:	2101      	movs	r1, #1
 805a718:	4618      	mov	r0, r3
 805a71a:	f7ff fb03 	bl	8059d24 <MPU_GetHandleAtIndex>
 805a71e:	6138      	str	r0, [r7, #16]
 805a720:	693b      	ldr	r3, [r7, #16]
 805a722:	2b00      	cmp	r3, #0
 805a724:	d003      	beq.n	805a72e <MPU_uxQueueMessagesWaitingImpl+0x5e>
 805a726:	6938      	ldr	r0, [r7, #16]
 805a728:	4b04      	ldr	r3, [pc, #16]	; (805a73c <MPU_uxQueueMessagesWaitingImpl+0x6c>)
 805a72a:	4798      	blx	r3
 805a72c:	6178      	str	r0, [r7, #20]
 805a72e:	697b      	ldr	r3, [r7, #20]
 805a730:	4618      	mov	r0, r3
 805a732:	3718      	adds	r7, #24
 805a734:	46bd      	mov	sp, r7
 805a736:	bd80      	pop	{r7, pc}
 805a738:	0805eafd 	.word	0x0805eafd
 805a73c:	0805ca35 	.word	0x0805ca35

0805a740 <MPU_uxQueueSpacesAvailableImpl>:
 805a740:	b580      	push	{r7, lr}
 805a742:	b086      	sub	sp, #24
 805a744:	af00      	add	r7, sp, #0
 805a746:	6078      	str	r0, [r7, #4]
 805a748:	2300      	movs	r3, #0
 805a74a:	613b      	str	r3, [r7, #16]
 805a74c:	2300      	movs	r3, #0
 805a74e:	617b      	str	r3, [r7, #20]
 805a750:	2300      	movs	r3, #0
 805a752:	60fb      	str	r3, [r7, #12]
 805a754:	687b      	ldr	r3, [r7, #4]
 805a756:	60bb      	str	r3, [r7, #8]
 805a758:	68bb      	ldr	r3, [r7, #8]
 805a75a:	2b00      	cmp	r3, #0
 805a75c:	dd05      	ble.n	805a76a <MPU_uxQueueSpacesAvailableImpl+0x2a>
 805a75e:	68bb      	ldr	r3, [r7, #8]
 805a760:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805a764:	dc01      	bgt.n	805a76a <MPU_uxQueueSpacesAvailableImpl+0x2a>
 805a766:	2301      	movs	r3, #1
 805a768:	e000      	b.n	805a76c <MPU_uxQueueSpacesAvailableImpl+0x2c>
 805a76a:	2300      	movs	r3, #0
 805a76c:	2b00      	cmp	r3, #0
 805a76e:	d016      	beq.n	805a79e <MPU_uxQueueSpacesAvailableImpl+0x5e>
 805a770:	68bb      	ldr	r3, [r7, #8]
 805a772:	3b01      	subs	r3, #1
 805a774:	4618      	mov	r0, r3
 805a776:	4b0c      	ldr	r3, [pc, #48]	; (805a7a8 <MPU_uxQueueSpacesAvailableImpl+0x68>)
 805a778:	4798      	blx	r3
 805a77a:	60f8      	str	r0, [r7, #12]
 805a77c:	68fb      	ldr	r3, [r7, #12]
 805a77e:	2b01      	cmp	r3, #1
 805a780:	d10d      	bne.n	805a79e <MPU_uxQueueSpacesAvailableImpl+0x5e>
 805a782:	68bb      	ldr	r3, [r7, #8]
 805a784:	3b01      	subs	r3, #1
 805a786:	2101      	movs	r1, #1
 805a788:	4618      	mov	r0, r3
 805a78a:	f7ff facb 	bl	8059d24 <MPU_GetHandleAtIndex>
 805a78e:	6138      	str	r0, [r7, #16]
 805a790:	693b      	ldr	r3, [r7, #16]
 805a792:	2b00      	cmp	r3, #0
 805a794:	d003      	beq.n	805a79e <MPU_uxQueueSpacesAvailableImpl+0x5e>
 805a796:	6938      	ldr	r0, [r7, #16]
 805a798:	4b04      	ldr	r3, [pc, #16]	; (805a7ac <MPU_uxQueueSpacesAvailableImpl+0x6c>)
 805a79a:	4798      	blx	r3
 805a79c:	6178      	str	r0, [r7, #20]
 805a79e:	697b      	ldr	r3, [r7, #20]
 805a7a0:	4618      	mov	r0, r3
 805a7a2:	3718      	adds	r7, #24
 805a7a4:	46bd      	mov	sp, r7
 805a7a6:	bd80      	pop	{r7, pc}
 805a7a8:	0805eafd 	.word	0x0805eafd
 805a7ac:	0805ca6d 	.word	0x0805ca6d

0805a7b0 <MPU_xQueueReceiveImpl>:
 805a7b0:	b580      	push	{r7, lr}
 805a7b2:	b08a      	sub	sp, #40	; 0x28
 805a7b4:	af00      	add	r7, sp, #0
 805a7b6:	60f8      	str	r0, [r7, #12]
 805a7b8:	60b9      	str	r1, [r7, #8]
 805a7ba:	607a      	str	r2, [r7, #4]
 805a7bc:	2300      	movs	r3, #0
 805a7be:	623b      	str	r3, [r7, #32]
 805a7c0:	2300      	movs	r3, #0
 805a7c2:	627b      	str	r3, [r7, #36]	; 0x24
 805a7c4:	2300      	movs	r3, #0
 805a7c6:	61fb      	str	r3, [r7, #28]
 805a7c8:	2300      	movs	r3, #0
 805a7ca:	61bb      	str	r3, [r7, #24]
 805a7cc:	68fb      	ldr	r3, [r7, #12]
 805a7ce:	617b      	str	r3, [r7, #20]
 805a7d0:	697b      	ldr	r3, [r7, #20]
 805a7d2:	2b00      	cmp	r3, #0
 805a7d4:	dd05      	ble.n	805a7e2 <MPU_xQueueReceiveImpl+0x32>
 805a7d6:	697b      	ldr	r3, [r7, #20]
 805a7d8:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805a7dc:	dc01      	bgt.n	805a7e2 <MPU_xQueueReceiveImpl+0x32>
 805a7de:	2301      	movs	r3, #1
 805a7e0:	e000      	b.n	805a7e4 <MPU_xQueueReceiveImpl+0x34>
 805a7e2:	2300      	movs	r3, #0
 805a7e4:	2b00      	cmp	r3, #0
 805a7e6:	d033      	beq.n	805a850 <MPU_xQueueReceiveImpl+0xa0>
 805a7e8:	697b      	ldr	r3, [r7, #20]
 805a7ea:	3b01      	subs	r3, #1
 805a7ec:	4618      	mov	r0, r3
 805a7ee:	4b1b      	ldr	r3, [pc, #108]	; (805a85c <MPU_xQueueReceiveImpl+0xac>)
 805a7f0:	4798      	blx	r3
 805a7f2:	61b8      	str	r0, [r7, #24]
 805a7f4:	69bb      	ldr	r3, [r7, #24]
 805a7f6:	2b01      	cmp	r3, #1
 805a7f8:	d12a      	bne.n	805a850 <MPU_xQueueReceiveImpl+0xa0>
 805a7fa:	697b      	ldr	r3, [r7, #20]
 805a7fc:	3b01      	subs	r3, #1
 805a7fe:	2101      	movs	r1, #1
 805a800:	4618      	mov	r0, r3
 805a802:	f7ff fa8f 	bl	8059d24 <MPU_GetHandleAtIndex>
 805a806:	6238      	str	r0, [r7, #32]
 805a808:	6a3b      	ldr	r3, [r7, #32]
 805a80a:	2b00      	cmp	r3, #0
 805a80c:	d020      	beq.n	805a850 <MPU_xQueueReceiveImpl+0xa0>
 805a80e:	6a38      	ldr	r0, [r7, #32]
 805a810:	4b13      	ldr	r3, [pc, #76]	; (805a860 <MPU_xQueueReceiveImpl+0xb0>)
 805a812:	4798      	blx	r3
 805a814:	6138      	str	r0, [r7, #16]
 805a816:	68bb      	ldr	r3, [r7, #8]
 805a818:	2b00      	cmp	r3, #0
 805a81a:	d102      	bne.n	805a822 <MPU_xQueueReceiveImpl+0x72>
 805a81c:	693b      	ldr	r3, [r7, #16]
 805a81e:	2b00      	cmp	r3, #0
 805a820:	d116      	bne.n	805a850 <MPU_xQueueReceiveImpl+0xa0>
 805a822:	4b10      	ldr	r3, [pc, #64]	; (805a864 <MPU_xQueueReceiveImpl+0xb4>)
 805a824:	4798      	blx	r3
 805a826:	4603      	mov	r3, r0
 805a828:	2b00      	cmp	r3, #0
 805a82a:	d102      	bne.n	805a832 <MPU_xQueueReceiveImpl+0x82>
 805a82c:	687b      	ldr	r3, [r7, #4]
 805a82e:	2b00      	cmp	r3, #0
 805a830:	d10e      	bne.n	805a850 <MPU_xQueueReceiveImpl+0xa0>
 805a832:	2202      	movs	r2, #2
 805a834:	6939      	ldr	r1, [r7, #16]
 805a836:	68b8      	ldr	r0, [r7, #8]
 805a838:	4b0b      	ldr	r3, [pc, #44]	; (805a868 <MPU_xQueueReceiveImpl+0xb8>)
 805a83a:	4798      	blx	r3
 805a83c:	61f8      	str	r0, [r7, #28]
 805a83e:	69fb      	ldr	r3, [r7, #28]
 805a840:	2b01      	cmp	r3, #1
 805a842:	d105      	bne.n	805a850 <MPU_xQueueReceiveImpl+0xa0>
 805a844:	687a      	ldr	r2, [r7, #4]
 805a846:	68b9      	ldr	r1, [r7, #8]
 805a848:	6a38      	ldr	r0, [r7, #32]
 805a84a:	4b08      	ldr	r3, [pc, #32]	; (805a86c <MPU_xQueueReceiveImpl+0xbc>)
 805a84c:	4798      	blx	r3
 805a84e:	6278      	str	r0, [r7, #36]	; 0x24
 805a850:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805a852:	4618      	mov	r0, r3
 805a854:	3728      	adds	r7, #40	; 0x28
 805a856:	46bd      	mov	sp, r7
 805a858:	bd80      	pop	{r7, pc}
 805a85a:	bf00      	nop
 805a85c:	0805eafd 	.word	0x0805eafd
 805a860:	0805d5d9 	.word	0x0805d5d9
 805a864:	0805756d 	.word	0x0805756d
 805a868:	0805ea15 	.word	0x0805ea15
 805a86c:	0805c895 	.word	0x0805c895

0805a870 <MPU_xQueuePeekImpl>:
 805a870:	b580      	push	{r7, lr}
 805a872:	b08a      	sub	sp, #40	; 0x28
 805a874:	af00      	add	r7, sp, #0
 805a876:	60f8      	str	r0, [r7, #12]
 805a878:	60b9      	str	r1, [r7, #8]
 805a87a:	607a      	str	r2, [r7, #4]
 805a87c:	2300      	movs	r3, #0
 805a87e:	623b      	str	r3, [r7, #32]
 805a880:	2300      	movs	r3, #0
 805a882:	627b      	str	r3, [r7, #36]	; 0x24
 805a884:	2300      	movs	r3, #0
 805a886:	61fb      	str	r3, [r7, #28]
 805a888:	2300      	movs	r3, #0
 805a88a:	61bb      	str	r3, [r7, #24]
 805a88c:	68fb      	ldr	r3, [r7, #12]
 805a88e:	617b      	str	r3, [r7, #20]
 805a890:	697b      	ldr	r3, [r7, #20]
 805a892:	2b00      	cmp	r3, #0
 805a894:	dd05      	ble.n	805a8a2 <MPU_xQueuePeekImpl+0x32>
 805a896:	697b      	ldr	r3, [r7, #20]
 805a898:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805a89c:	dc01      	bgt.n	805a8a2 <MPU_xQueuePeekImpl+0x32>
 805a89e:	2301      	movs	r3, #1
 805a8a0:	e000      	b.n	805a8a4 <MPU_xQueuePeekImpl+0x34>
 805a8a2:	2300      	movs	r3, #0
 805a8a4:	2b00      	cmp	r3, #0
 805a8a6:	d033      	beq.n	805a910 <MPU_xQueuePeekImpl+0xa0>
 805a8a8:	697b      	ldr	r3, [r7, #20]
 805a8aa:	3b01      	subs	r3, #1
 805a8ac:	4618      	mov	r0, r3
 805a8ae:	4b1b      	ldr	r3, [pc, #108]	; (805a91c <MPU_xQueuePeekImpl+0xac>)
 805a8b0:	4798      	blx	r3
 805a8b2:	61b8      	str	r0, [r7, #24]
 805a8b4:	69bb      	ldr	r3, [r7, #24]
 805a8b6:	2b01      	cmp	r3, #1
 805a8b8:	d12a      	bne.n	805a910 <MPU_xQueuePeekImpl+0xa0>
 805a8ba:	697b      	ldr	r3, [r7, #20]
 805a8bc:	3b01      	subs	r3, #1
 805a8be:	2101      	movs	r1, #1
 805a8c0:	4618      	mov	r0, r3
 805a8c2:	f7ff fa2f 	bl	8059d24 <MPU_GetHandleAtIndex>
 805a8c6:	6238      	str	r0, [r7, #32]
 805a8c8:	6a3b      	ldr	r3, [r7, #32]
 805a8ca:	2b00      	cmp	r3, #0
 805a8cc:	d020      	beq.n	805a910 <MPU_xQueuePeekImpl+0xa0>
 805a8ce:	6a38      	ldr	r0, [r7, #32]
 805a8d0:	4b13      	ldr	r3, [pc, #76]	; (805a920 <MPU_xQueuePeekImpl+0xb0>)
 805a8d2:	4798      	blx	r3
 805a8d4:	6138      	str	r0, [r7, #16]
 805a8d6:	68bb      	ldr	r3, [r7, #8]
 805a8d8:	2b00      	cmp	r3, #0
 805a8da:	d102      	bne.n	805a8e2 <MPU_xQueuePeekImpl+0x72>
 805a8dc:	693b      	ldr	r3, [r7, #16]
 805a8de:	2b00      	cmp	r3, #0
 805a8e0:	d116      	bne.n	805a910 <MPU_xQueuePeekImpl+0xa0>
 805a8e2:	4b10      	ldr	r3, [pc, #64]	; (805a924 <MPU_xQueuePeekImpl+0xb4>)
 805a8e4:	4798      	blx	r3
 805a8e6:	4603      	mov	r3, r0
 805a8e8:	2b00      	cmp	r3, #0
 805a8ea:	d102      	bne.n	805a8f2 <MPU_xQueuePeekImpl+0x82>
 805a8ec:	687b      	ldr	r3, [r7, #4]
 805a8ee:	2b00      	cmp	r3, #0
 805a8f0:	d10e      	bne.n	805a910 <MPU_xQueuePeekImpl+0xa0>
 805a8f2:	2202      	movs	r2, #2
 805a8f4:	6939      	ldr	r1, [r7, #16]
 805a8f6:	68b8      	ldr	r0, [r7, #8]
 805a8f8:	4b0b      	ldr	r3, [pc, #44]	; (805a928 <MPU_xQueuePeekImpl+0xb8>)
 805a8fa:	4798      	blx	r3
 805a8fc:	61f8      	str	r0, [r7, #28]
 805a8fe:	69fb      	ldr	r3, [r7, #28]
 805a900:	2b01      	cmp	r3, #1
 805a902:	d105      	bne.n	805a910 <MPU_xQueuePeekImpl+0xa0>
 805a904:	687a      	ldr	r2, [r7, #4]
 805a906:	68b9      	ldr	r1, [r7, #8]
 805a908:	6a38      	ldr	r0, [r7, #32]
 805a90a:	4b08      	ldr	r3, [pc, #32]	; (805a92c <MPU_xQueuePeekImpl+0xbc>)
 805a90c:	4798      	blx	r3
 805a90e:	6278      	str	r0, [r7, #36]	; 0x24
 805a910:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805a912:	4618      	mov	r0, r3
 805a914:	3728      	adds	r7, #40	; 0x28
 805a916:	46bd      	mov	sp, r7
 805a918:	bd80      	pop	{r7, pc}
 805a91a:	bf00      	nop
 805a91c:	0805eafd 	.word	0x0805eafd
 805a920:	0805d5d9 	.word	0x0805d5d9
 805a924:	0805756d 	.word	0x0805756d
 805a928:	0805ea15 	.word	0x0805ea15
 805a92c:	0805c65d 	.word	0x0805c65d

0805a930 <MPU_xQueueSemaphoreTakeImpl>:
 805a930:	b580      	push	{r7, lr}
 805a932:	b088      	sub	sp, #32
 805a934:	af00      	add	r7, sp, #0
 805a936:	6078      	str	r0, [r7, #4]
 805a938:	6039      	str	r1, [r7, #0]
 805a93a:	2300      	movs	r3, #0
 805a93c:	61bb      	str	r3, [r7, #24]
 805a93e:	2300      	movs	r3, #0
 805a940:	61fb      	str	r3, [r7, #28]
 805a942:	2300      	movs	r3, #0
 805a944:	617b      	str	r3, [r7, #20]
 805a946:	687b      	ldr	r3, [r7, #4]
 805a948:	613b      	str	r3, [r7, #16]
 805a94a:	693b      	ldr	r3, [r7, #16]
 805a94c:	2b00      	cmp	r3, #0
 805a94e:	dd05      	ble.n	805a95c <MPU_xQueueSemaphoreTakeImpl+0x2c>
 805a950:	693b      	ldr	r3, [r7, #16]
 805a952:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805a956:	dc01      	bgt.n	805a95c <MPU_xQueueSemaphoreTakeImpl+0x2c>
 805a958:	2301      	movs	r3, #1
 805a95a:	e000      	b.n	805a95e <MPU_xQueueSemaphoreTakeImpl+0x2e>
 805a95c:	2300      	movs	r3, #0
 805a95e:	2b00      	cmp	r3, #0
 805a960:	d026      	beq.n	805a9b0 <MPU_xQueueSemaphoreTakeImpl+0x80>
 805a962:	693b      	ldr	r3, [r7, #16]
 805a964:	3b01      	subs	r3, #1
 805a966:	4618      	mov	r0, r3
 805a968:	4b14      	ldr	r3, [pc, #80]	; (805a9bc <MPU_xQueueSemaphoreTakeImpl+0x8c>)
 805a96a:	4798      	blx	r3
 805a96c:	6178      	str	r0, [r7, #20]
 805a96e:	697b      	ldr	r3, [r7, #20]
 805a970:	2b01      	cmp	r3, #1
 805a972:	d11d      	bne.n	805a9b0 <MPU_xQueueSemaphoreTakeImpl+0x80>
 805a974:	693b      	ldr	r3, [r7, #16]
 805a976:	3b01      	subs	r3, #1
 805a978:	2101      	movs	r1, #1
 805a97a:	4618      	mov	r0, r3
 805a97c:	f7ff f9d2 	bl	8059d24 <MPU_GetHandleAtIndex>
 805a980:	61b8      	str	r0, [r7, #24]
 805a982:	69bb      	ldr	r3, [r7, #24]
 805a984:	2b00      	cmp	r3, #0
 805a986:	d013      	beq.n	805a9b0 <MPU_xQueueSemaphoreTakeImpl+0x80>
 805a988:	69b8      	ldr	r0, [r7, #24]
 805a98a:	4b0d      	ldr	r3, [pc, #52]	; (805a9c0 <MPU_xQueueSemaphoreTakeImpl+0x90>)
 805a98c:	4798      	blx	r3
 805a98e:	60f8      	str	r0, [r7, #12]
 805a990:	68fb      	ldr	r3, [r7, #12]
 805a992:	2b00      	cmp	r3, #0
 805a994:	d10c      	bne.n	805a9b0 <MPU_xQueueSemaphoreTakeImpl+0x80>
 805a996:	4b0b      	ldr	r3, [pc, #44]	; (805a9c4 <MPU_xQueueSemaphoreTakeImpl+0x94>)
 805a998:	4798      	blx	r3
 805a99a:	4603      	mov	r3, r0
 805a99c:	2b00      	cmp	r3, #0
 805a99e:	d102      	bne.n	805a9a6 <MPU_xQueueSemaphoreTakeImpl+0x76>
 805a9a0:	683b      	ldr	r3, [r7, #0]
 805a9a2:	2b00      	cmp	r3, #0
 805a9a4:	d104      	bne.n	805a9b0 <MPU_xQueueSemaphoreTakeImpl+0x80>
 805a9a6:	6839      	ldr	r1, [r7, #0]
 805a9a8:	69b8      	ldr	r0, [r7, #24]
 805a9aa:	4b07      	ldr	r3, [pc, #28]	; (805a9c8 <MPU_xQueueSemaphoreTakeImpl+0x98>)
 805a9ac:	4798      	blx	r3
 805a9ae:	61f8      	str	r0, [r7, #28]
 805a9b0:	69fb      	ldr	r3, [r7, #28]
 805a9b2:	4618      	mov	r0, r3
 805a9b4:	3720      	adds	r7, #32
 805a9b6:	46bd      	mov	sp, r7
 805a9b8:	bd80      	pop	{r7, pc}
 805a9ba:	bf00      	nop
 805a9bc:	0805eafd 	.word	0x0805eafd
 805a9c0:	0805d5d9 	.word	0x0805d5d9
 805a9c4:	0805756d 	.word	0x0805756d
 805a9c8:	0805cf0d 	.word	0x0805cf0d

0805a9cc <MPU_xQueueGetMutexHolderImpl>:
 805a9cc:	b580      	push	{r7, lr}
 805a9ce:	b088      	sub	sp, #32
 805a9d0:	af00      	add	r7, sp, #0
 805a9d2:	6078      	str	r0, [r7, #4]
 805a9d4:	2300      	movs	r3, #0
 805a9d6:	61bb      	str	r3, [r7, #24]
 805a9d8:	2300      	movs	r3, #0
 805a9da:	61fb      	str	r3, [r7, #28]
 805a9dc:	2300      	movs	r3, #0
 805a9de:	617b      	str	r3, [r7, #20]
 805a9e0:	2300      	movs	r3, #0
 805a9e2:	613b      	str	r3, [r7, #16]
 805a9e4:	687b      	ldr	r3, [r7, #4]
 805a9e6:	60fb      	str	r3, [r7, #12]
 805a9e8:	68fb      	ldr	r3, [r7, #12]
 805a9ea:	2b00      	cmp	r3, #0
 805a9ec:	dd05      	ble.n	805a9fa <MPU_xQueueGetMutexHolderImpl+0x2e>
 805a9ee:	68fb      	ldr	r3, [r7, #12]
 805a9f0:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805a9f4:	dc01      	bgt.n	805a9fa <MPU_xQueueGetMutexHolderImpl+0x2e>
 805a9f6:	2301      	movs	r3, #1
 805a9f8:	e000      	b.n	805a9fc <MPU_xQueueGetMutexHolderImpl+0x30>
 805a9fa:	2300      	movs	r3, #0
 805a9fc:	2b00      	cmp	r3, #0
 805a9fe:	d025      	beq.n	805aa4c <MPU_xQueueGetMutexHolderImpl+0x80>
 805aa00:	68fb      	ldr	r3, [r7, #12]
 805aa02:	3b01      	subs	r3, #1
 805aa04:	4618      	mov	r0, r3
 805aa06:	4b14      	ldr	r3, [pc, #80]	; (805aa58 <MPU_xQueueGetMutexHolderImpl+0x8c>)
 805aa08:	4798      	blx	r3
 805aa0a:	6138      	str	r0, [r7, #16]
 805aa0c:	693b      	ldr	r3, [r7, #16]
 805aa0e:	2b01      	cmp	r3, #1
 805aa10:	d11c      	bne.n	805aa4c <MPU_xQueueGetMutexHolderImpl+0x80>
 805aa12:	68fb      	ldr	r3, [r7, #12]
 805aa14:	3b01      	subs	r3, #1
 805aa16:	2101      	movs	r1, #1
 805aa18:	4618      	mov	r0, r3
 805aa1a:	f7ff f983 	bl	8059d24 <MPU_GetHandleAtIndex>
 805aa1e:	6178      	str	r0, [r7, #20]
 805aa20:	697b      	ldr	r3, [r7, #20]
 805aa22:	2b00      	cmp	r3, #0
 805aa24:	d012      	beq.n	805aa4c <MPU_xQueueGetMutexHolderImpl+0x80>
 805aa26:	6978      	ldr	r0, [r7, #20]
 805aa28:	4b0c      	ldr	r3, [pc, #48]	; (805aa5c <MPU_xQueueGetMutexHolderImpl+0x90>)
 805aa2a:	4798      	blx	r3
 805aa2c:	61b8      	str	r0, [r7, #24]
 805aa2e:	69bb      	ldr	r3, [r7, #24]
 805aa30:	2b00      	cmp	r3, #0
 805aa32:	d00b      	beq.n	805aa4c <MPU_xQueueGetMutexHolderImpl+0x80>
 805aa34:	2102      	movs	r1, #2
 805aa36:	69b8      	ldr	r0, [r7, #24]
 805aa38:	f7ff f8fc 	bl	8059c34 <MPU_GetIndexForHandle>
 805aa3c:	60b8      	str	r0, [r7, #8]
 805aa3e:	68bb      	ldr	r3, [r7, #8]
 805aa40:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 805aa44:	d002      	beq.n	805aa4c <MPU_xQueueGetMutexHolderImpl+0x80>
 805aa46:	68bb      	ldr	r3, [r7, #8]
 805aa48:	3301      	adds	r3, #1
 805aa4a:	61fb      	str	r3, [r7, #28]
 805aa4c:	69fb      	ldr	r3, [r7, #28]
 805aa4e:	4618      	mov	r0, r3
 805aa50:	3720      	adds	r7, #32
 805aa52:	46bd      	mov	sp, r7
 805aa54:	bd80      	pop	{r7, pc}
 805aa56:	bf00      	nop
 805aa58:	0805eafd 	.word	0x0805eafd
 805aa5c:	0805d0f5 	.word	0x0805d0f5

0805aa60 <MPU_xQueueTakeMutexRecursiveImpl>:
 805aa60:	b580      	push	{r7, lr}
 805aa62:	b086      	sub	sp, #24
 805aa64:	af00      	add	r7, sp, #0
 805aa66:	6078      	str	r0, [r7, #4]
 805aa68:	6039      	str	r1, [r7, #0]
 805aa6a:	2300      	movs	r3, #0
 805aa6c:	617b      	str	r3, [r7, #20]
 805aa6e:	2300      	movs	r3, #0
 805aa70:	613b      	str	r3, [r7, #16]
 805aa72:	2300      	movs	r3, #0
 805aa74:	60fb      	str	r3, [r7, #12]
 805aa76:	687b      	ldr	r3, [r7, #4]
 805aa78:	60bb      	str	r3, [r7, #8]
 805aa7a:	68bb      	ldr	r3, [r7, #8]
 805aa7c:	2b00      	cmp	r3, #0
 805aa7e:	dd05      	ble.n	805aa8c <MPU_xQueueTakeMutexRecursiveImpl+0x2c>
 805aa80:	68bb      	ldr	r3, [r7, #8]
 805aa82:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805aa86:	dc01      	bgt.n	805aa8c <MPU_xQueueTakeMutexRecursiveImpl+0x2c>
 805aa88:	2301      	movs	r3, #1
 805aa8a:	e000      	b.n	805aa8e <MPU_xQueueTakeMutexRecursiveImpl+0x2e>
 805aa8c:	2300      	movs	r3, #0
 805aa8e:	2b00      	cmp	r3, #0
 805aa90:	d017      	beq.n	805aac2 <MPU_xQueueTakeMutexRecursiveImpl+0x62>
 805aa92:	68bb      	ldr	r3, [r7, #8]
 805aa94:	3b01      	subs	r3, #1
 805aa96:	4618      	mov	r0, r3
 805aa98:	4b0c      	ldr	r3, [pc, #48]	; (805aacc <MPU_xQueueTakeMutexRecursiveImpl+0x6c>)
 805aa9a:	4798      	blx	r3
 805aa9c:	6138      	str	r0, [r7, #16]
 805aa9e:	693b      	ldr	r3, [r7, #16]
 805aaa0:	2b01      	cmp	r3, #1
 805aaa2:	d10e      	bne.n	805aac2 <MPU_xQueueTakeMutexRecursiveImpl+0x62>
 805aaa4:	68bb      	ldr	r3, [r7, #8]
 805aaa6:	3b01      	subs	r3, #1
 805aaa8:	2101      	movs	r1, #1
 805aaaa:	4618      	mov	r0, r3
 805aaac:	f7ff f93a 	bl	8059d24 <MPU_GetHandleAtIndex>
 805aab0:	60f8      	str	r0, [r7, #12]
 805aab2:	68fb      	ldr	r3, [r7, #12]
 805aab4:	2b00      	cmp	r3, #0
 805aab6:	d004      	beq.n	805aac2 <MPU_xQueueTakeMutexRecursiveImpl+0x62>
 805aab8:	6839      	ldr	r1, [r7, #0]
 805aaba:	68f8      	ldr	r0, [r7, #12]
 805aabc:	4b04      	ldr	r3, [pc, #16]	; (805aad0 <MPU_xQueueTakeMutexRecursiveImpl+0x70>)
 805aabe:	4798      	blx	r3
 805aac0:	6178      	str	r0, [r7, #20]
 805aac2:	697b      	ldr	r3, [r7, #20]
 805aac4:	4618      	mov	r0, r3
 805aac6:	3718      	adds	r7, #24
 805aac8:	46bd      	mov	sp, r7
 805aaca:	bd80      	pop	{r7, pc}
 805aacc:	0805eafd 	.word	0x0805eafd
 805aad0:	0805d179 	.word	0x0805d179

0805aad4 <MPU_xQueueGiveMutexRecursiveImpl>:
 805aad4:	b580      	push	{r7, lr}
 805aad6:	b086      	sub	sp, #24
 805aad8:	af00      	add	r7, sp, #0
 805aada:	6078      	str	r0, [r7, #4]
 805aadc:	2300      	movs	r3, #0
 805aade:	617b      	str	r3, [r7, #20]
 805aae0:	2300      	movs	r3, #0
 805aae2:	613b      	str	r3, [r7, #16]
 805aae4:	2300      	movs	r3, #0
 805aae6:	60fb      	str	r3, [r7, #12]
 805aae8:	687b      	ldr	r3, [r7, #4]
 805aaea:	60bb      	str	r3, [r7, #8]
 805aaec:	68bb      	ldr	r3, [r7, #8]
 805aaee:	2b00      	cmp	r3, #0
 805aaf0:	dd05      	ble.n	805aafe <MPU_xQueueGiveMutexRecursiveImpl+0x2a>
 805aaf2:	68bb      	ldr	r3, [r7, #8]
 805aaf4:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805aaf8:	dc01      	bgt.n	805aafe <MPU_xQueueGiveMutexRecursiveImpl+0x2a>
 805aafa:	2301      	movs	r3, #1
 805aafc:	e000      	b.n	805ab00 <MPU_xQueueGiveMutexRecursiveImpl+0x2c>
 805aafe:	2300      	movs	r3, #0
 805ab00:	2b00      	cmp	r3, #0
 805ab02:	d016      	beq.n	805ab32 <MPU_xQueueGiveMutexRecursiveImpl+0x5e>
 805ab04:	68bb      	ldr	r3, [r7, #8]
 805ab06:	3b01      	subs	r3, #1
 805ab08:	4618      	mov	r0, r3
 805ab0a:	4b0c      	ldr	r3, [pc, #48]	; (805ab3c <MPU_xQueueGiveMutexRecursiveImpl+0x68>)
 805ab0c:	4798      	blx	r3
 805ab0e:	6138      	str	r0, [r7, #16]
 805ab10:	693b      	ldr	r3, [r7, #16]
 805ab12:	2b01      	cmp	r3, #1
 805ab14:	d10d      	bne.n	805ab32 <MPU_xQueueGiveMutexRecursiveImpl+0x5e>
 805ab16:	68bb      	ldr	r3, [r7, #8]
 805ab18:	3b01      	subs	r3, #1
 805ab1a:	2101      	movs	r1, #1
 805ab1c:	4618      	mov	r0, r3
 805ab1e:	f7ff f901 	bl	8059d24 <MPU_GetHandleAtIndex>
 805ab22:	60f8      	str	r0, [r7, #12]
 805ab24:	68fb      	ldr	r3, [r7, #12]
 805ab26:	2b00      	cmp	r3, #0
 805ab28:	d003      	beq.n	805ab32 <MPU_xQueueGiveMutexRecursiveImpl+0x5e>
 805ab2a:	68f8      	ldr	r0, [r7, #12]
 805ab2c:	4b04      	ldr	r3, [pc, #16]	; (805ab40 <MPU_xQueueGiveMutexRecursiveImpl+0x6c>)
 805ab2e:	4798      	blx	r3
 805ab30:	6178      	str	r0, [r7, #20]
 805ab32:	697b      	ldr	r3, [r7, #20]
 805ab34:	4618      	mov	r0, r3
 805ab36:	3718      	adds	r7, #24
 805ab38:	46bd      	mov	sp, r7
 805ab3a:	bd80      	pop	{r7, pc}
 805ab3c:	0805eafd 	.word	0x0805eafd
 805ab40:	0805d1dd 	.word	0x0805d1dd

0805ab44 <MPU_vQueueAddToRegistryImpl>:
 805ab44:	b580      	push	{r7, lr}
 805ab46:	b086      	sub	sp, #24
 805ab48:	af00      	add	r7, sp, #0
 805ab4a:	6078      	str	r0, [r7, #4]
 805ab4c:	6039      	str	r1, [r7, #0]
 805ab4e:	2300      	movs	r3, #0
 805ab50:	617b      	str	r3, [r7, #20]
 805ab52:	2300      	movs	r3, #0
 805ab54:	613b      	str	r3, [r7, #16]
 805ab56:	687b      	ldr	r3, [r7, #4]
 805ab58:	60fb      	str	r3, [r7, #12]
 805ab5a:	68fb      	ldr	r3, [r7, #12]
 805ab5c:	2b00      	cmp	r3, #0
 805ab5e:	dd05      	ble.n	805ab6c <MPU_vQueueAddToRegistryImpl+0x28>
 805ab60:	68fb      	ldr	r3, [r7, #12]
 805ab62:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805ab66:	dc01      	bgt.n	805ab6c <MPU_vQueueAddToRegistryImpl+0x28>
 805ab68:	2301      	movs	r3, #1
 805ab6a:	e000      	b.n	805ab6e <MPU_vQueueAddToRegistryImpl+0x2a>
 805ab6c:	2300      	movs	r3, #0
 805ab6e:	2b00      	cmp	r3, #0
 805ab70:	d016      	beq.n	805aba0 <MPU_vQueueAddToRegistryImpl+0x5c>
 805ab72:	68fb      	ldr	r3, [r7, #12]
 805ab74:	3b01      	subs	r3, #1
 805ab76:	4618      	mov	r0, r3
 805ab78:	4b0b      	ldr	r3, [pc, #44]	; (805aba8 <MPU_vQueueAddToRegistryImpl+0x64>)
 805ab7a:	4798      	blx	r3
 805ab7c:	6138      	str	r0, [r7, #16]
 805ab7e:	693b      	ldr	r3, [r7, #16]
 805ab80:	2b01      	cmp	r3, #1
 805ab82:	d10d      	bne.n	805aba0 <MPU_vQueueAddToRegistryImpl+0x5c>
 805ab84:	68fb      	ldr	r3, [r7, #12]
 805ab86:	3b01      	subs	r3, #1
 805ab88:	2101      	movs	r1, #1
 805ab8a:	4618      	mov	r0, r3
 805ab8c:	f7ff f8ca 	bl	8059d24 <MPU_GetHandleAtIndex>
 805ab90:	6178      	str	r0, [r7, #20]
 805ab92:	697b      	ldr	r3, [r7, #20]
 805ab94:	2b00      	cmp	r3, #0
 805ab96:	d003      	beq.n	805aba0 <MPU_vQueueAddToRegistryImpl+0x5c>
 805ab98:	6839      	ldr	r1, [r7, #0]
 805ab9a:	6978      	ldr	r0, [r7, #20]
 805ab9c:	4b03      	ldr	r3, [pc, #12]	; (805abac <MPU_vQueueAddToRegistryImpl+0x68>)
 805ab9e:	4798      	blx	r3
 805aba0:	bf00      	nop
 805aba2:	3718      	adds	r7, #24
 805aba4:	46bd      	mov	sp, r7
 805aba6:	bd80      	pop	{r7, pc}
 805aba8:	0805eafd 	.word	0x0805eafd
 805abac:	0805d23d 	.word	0x0805d23d

0805abb0 <MPU_vQueueUnregisterQueueImpl>:
 805abb0:	b580      	push	{r7, lr}
 805abb2:	b086      	sub	sp, #24
 805abb4:	af00      	add	r7, sp, #0
 805abb6:	6078      	str	r0, [r7, #4]
 805abb8:	2300      	movs	r3, #0
 805abba:	617b      	str	r3, [r7, #20]
 805abbc:	2300      	movs	r3, #0
 805abbe:	613b      	str	r3, [r7, #16]
 805abc0:	687b      	ldr	r3, [r7, #4]
 805abc2:	60fb      	str	r3, [r7, #12]
 805abc4:	68fb      	ldr	r3, [r7, #12]
 805abc6:	2b00      	cmp	r3, #0
 805abc8:	dd05      	ble.n	805abd6 <MPU_vQueueUnregisterQueueImpl+0x26>
 805abca:	68fb      	ldr	r3, [r7, #12]
 805abcc:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805abd0:	dc01      	bgt.n	805abd6 <MPU_vQueueUnregisterQueueImpl+0x26>
 805abd2:	2301      	movs	r3, #1
 805abd4:	e000      	b.n	805abd8 <MPU_vQueueUnregisterQueueImpl+0x28>
 805abd6:	2300      	movs	r3, #0
 805abd8:	2b00      	cmp	r3, #0
 805abda:	d015      	beq.n	805ac08 <MPU_vQueueUnregisterQueueImpl+0x58>
 805abdc:	68fb      	ldr	r3, [r7, #12]
 805abde:	3b01      	subs	r3, #1
 805abe0:	4618      	mov	r0, r3
 805abe2:	4b0b      	ldr	r3, [pc, #44]	; (805ac10 <MPU_vQueueUnregisterQueueImpl+0x60>)
 805abe4:	4798      	blx	r3
 805abe6:	6138      	str	r0, [r7, #16]
 805abe8:	693b      	ldr	r3, [r7, #16]
 805abea:	2b01      	cmp	r3, #1
 805abec:	d10c      	bne.n	805ac08 <MPU_vQueueUnregisterQueueImpl+0x58>
 805abee:	68fb      	ldr	r3, [r7, #12]
 805abf0:	3b01      	subs	r3, #1
 805abf2:	2101      	movs	r1, #1
 805abf4:	4618      	mov	r0, r3
 805abf6:	f7ff f895 	bl	8059d24 <MPU_GetHandleAtIndex>
 805abfa:	6178      	str	r0, [r7, #20]
 805abfc:	697b      	ldr	r3, [r7, #20]
 805abfe:	2b00      	cmp	r3, #0
 805ac00:	d002      	beq.n	805ac08 <MPU_vQueueUnregisterQueueImpl+0x58>
 805ac02:	6978      	ldr	r0, [r7, #20]
 805ac04:	4b03      	ldr	r3, [pc, #12]	; (805ac14 <MPU_vQueueUnregisterQueueImpl+0x64>)
 805ac06:	4798      	blx	r3
 805ac08:	bf00      	nop
 805ac0a:	3718      	adds	r7, #24
 805ac0c:	46bd      	mov	sp, r7
 805ac0e:	bd80      	pop	{r7, pc}
 805ac10:	0805eafd 	.word	0x0805eafd
 805ac14:	0805d2c9 	.word	0x0805d2c9

0805ac18 <MPU_pcQueueGetNameImpl>:
 805ac18:	b580      	push	{r7, lr}
 805ac1a:	b086      	sub	sp, #24
 805ac1c:	af00      	add	r7, sp, #0
 805ac1e:	6078      	str	r0, [r7, #4]
 805ac20:	2300      	movs	r3, #0
 805ac22:	617b      	str	r3, [r7, #20]
 805ac24:	2300      	movs	r3, #0
 805ac26:	613b      	str	r3, [r7, #16]
 805ac28:	2300      	movs	r3, #0
 805ac2a:	60fb      	str	r3, [r7, #12]
 805ac2c:	687b      	ldr	r3, [r7, #4]
 805ac2e:	60bb      	str	r3, [r7, #8]
 805ac30:	68bb      	ldr	r3, [r7, #8]
 805ac32:	2b00      	cmp	r3, #0
 805ac34:	dd05      	ble.n	805ac42 <MPU_pcQueueGetNameImpl+0x2a>
 805ac36:	68bb      	ldr	r3, [r7, #8]
 805ac38:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805ac3c:	dc01      	bgt.n	805ac42 <MPU_pcQueueGetNameImpl+0x2a>
 805ac3e:	2301      	movs	r3, #1
 805ac40:	e000      	b.n	805ac44 <MPU_pcQueueGetNameImpl+0x2c>
 805ac42:	2300      	movs	r3, #0
 805ac44:	2b00      	cmp	r3, #0
 805ac46:	d016      	beq.n	805ac76 <MPU_pcQueueGetNameImpl+0x5e>
 805ac48:	68bb      	ldr	r3, [r7, #8]
 805ac4a:	3b01      	subs	r3, #1
 805ac4c:	4618      	mov	r0, r3
 805ac4e:	4b0c      	ldr	r3, [pc, #48]	; (805ac80 <MPU_pcQueueGetNameImpl+0x68>)
 805ac50:	4798      	blx	r3
 805ac52:	60f8      	str	r0, [r7, #12]
 805ac54:	68fb      	ldr	r3, [r7, #12]
 805ac56:	2b01      	cmp	r3, #1
 805ac58:	d10d      	bne.n	805ac76 <MPU_pcQueueGetNameImpl+0x5e>
 805ac5a:	68bb      	ldr	r3, [r7, #8]
 805ac5c:	3b01      	subs	r3, #1
 805ac5e:	2101      	movs	r1, #1
 805ac60:	4618      	mov	r0, r3
 805ac62:	f7ff f85f 	bl	8059d24 <MPU_GetHandleAtIndex>
 805ac66:	6138      	str	r0, [r7, #16]
 805ac68:	693b      	ldr	r3, [r7, #16]
 805ac6a:	2b00      	cmp	r3, #0
 805ac6c:	d003      	beq.n	805ac76 <MPU_pcQueueGetNameImpl+0x5e>
 805ac6e:	6938      	ldr	r0, [r7, #16]
 805ac70:	4b04      	ldr	r3, [pc, #16]	; (805ac84 <MPU_pcQueueGetNameImpl+0x6c>)
 805ac72:	4798      	blx	r3
 805ac74:	6178      	str	r0, [r7, #20]
 805ac76:	697b      	ldr	r3, [r7, #20]
 805ac78:	4618      	mov	r0, r3
 805ac7a:	3718      	adds	r7, #24
 805ac7c:	46bd      	mov	sp, r7
 805ac7e:	bd80      	pop	{r7, pc}
 805ac80:	0805eafd 	.word	0x0805eafd
 805ac84:	0805d329 	.word	0x0805d329

0805ac88 <MPU_pvTimerGetTimerIDImpl>:
 805ac88:	b580      	push	{r7, lr}
 805ac8a:	b086      	sub	sp, #24
 805ac8c:	af00      	add	r7, sp, #0
 805ac8e:	6078      	str	r0, [r7, #4]
 805ac90:	2300      	movs	r3, #0
 805ac92:	617b      	str	r3, [r7, #20]
 805ac94:	2300      	movs	r3, #0
 805ac96:	613b      	str	r3, [r7, #16]
 805ac98:	2300      	movs	r3, #0
 805ac9a:	60fb      	str	r3, [r7, #12]
 805ac9c:	687b      	ldr	r3, [r7, #4]
 805ac9e:	60bb      	str	r3, [r7, #8]
 805aca0:	68bb      	ldr	r3, [r7, #8]
 805aca2:	2b00      	cmp	r3, #0
 805aca4:	dd05      	ble.n	805acb2 <MPU_pvTimerGetTimerIDImpl+0x2a>
 805aca6:	68bb      	ldr	r3, [r7, #8]
 805aca8:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805acac:	dc01      	bgt.n	805acb2 <MPU_pvTimerGetTimerIDImpl+0x2a>
 805acae:	2301      	movs	r3, #1
 805acb0:	e000      	b.n	805acb4 <MPU_pvTimerGetTimerIDImpl+0x2c>
 805acb2:	2300      	movs	r3, #0
 805acb4:	2b00      	cmp	r3, #0
 805acb6:	d016      	beq.n	805ace6 <MPU_pvTimerGetTimerIDImpl+0x5e>
 805acb8:	68bb      	ldr	r3, [r7, #8]
 805acba:	3b01      	subs	r3, #1
 805acbc:	4618      	mov	r0, r3
 805acbe:	4b0c      	ldr	r3, [pc, #48]	; (805acf0 <MPU_pvTimerGetTimerIDImpl+0x68>)
 805acc0:	4798      	blx	r3
 805acc2:	60f8      	str	r0, [r7, #12]
 805acc4:	68fb      	ldr	r3, [r7, #12]
 805acc6:	2b01      	cmp	r3, #1
 805acc8:	d10d      	bne.n	805ace6 <MPU_pvTimerGetTimerIDImpl+0x5e>
 805acca:	68bb      	ldr	r3, [r7, #8]
 805accc:	3b01      	subs	r3, #1
 805acce:	2105      	movs	r1, #5
 805acd0:	4618      	mov	r0, r3
 805acd2:	f7ff f827 	bl	8059d24 <MPU_GetHandleAtIndex>
 805acd6:	6138      	str	r0, [r7, #16]
 805acd8:	693b      	ldr	r3, [r7, #16]
 805acda:	2b00      	cmp	r3, #0
 805acdc:	d003      	beq.n	805ace6 <MPU_pvTimerGetTimerIDImpl+0x5e>
 805acde:	6938      	ldr	r0, [r7, #16]
 805ace0:	4b04      	ldr	r3, [pc, #16]	; (805acf4 <MPU_pvTimerGetTimerIDImpl+0x6c>)
 805ace2:	4798      	blx	r3
 805ace4:	6178      	str	r0, [r7, #20]
 805ace6:	697b      	ldr	r3, [r7, #20]
 805ace8:	4618      	mov	r0, r3
 805acea:	3718      	adds	r7, #24
 805acec:	46bd      	mov	sp, r7
 805acee:	bd80      	pop	{r7, pc}
 805acf0:	0805eafd 	.word	0x0805eafd
 805acf4:	0805825d 	.word	0x0805825d

0805acf8 <MPU_vTimerSetTimerIDImpl>:
 805acf8:	b580      	push	{r7, lr}
 805acfa:	b086      	sub	sp, #24
 805acfc:	af00      	add	r7, sp, #0
 805acfe:	6078      	str	r0, [r7, #4]
 805ad00:	6039      	str	r1, [r7, #0]
 805ad02:	2300      	movs	r3, #0
 805ad04:	617b      	str	r3, [r7, #20]
 805ad06:	2300      	movs	r3, #0
 805ad08:	613b      	str	r3, [r7, #16]
 805ad0a:	687b      	ldr	r3, [r7, #4]
 805ad0c:	60fb      	str	r3, [r7, #12]
 805ad0e:	68fb      	ldr	r3, [r7, #12]
 805ad10:	2b00      	cmp	r3, #0
 805ad12:	dd05      	ble.n	805ad20 <MPU_vTimerSetTimerIDImpl+0x28>
 805ad14:	68fb      	ldr	r3, [r7, #12]
 805ad16:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805ad1a:	dc01      	bgt.n	805ad20 <MPU_vTimerSetTimerIDImpl+0x28>
 805ad1c:	2301      	movs	r3, #1
 805ad1e:	e000      	b.n	805ad22 <MPU_vTimerSetTimerIDImpl+0x2a>
 805ad20:	2300      	movs	r3, #0
 805ad22:	2b00      	cmp	r3, #0
 805ad24:	d016      	beq.n	805ad54 <MPU_vTimerSetTimerIDImpl+0x5c>
 805ad26:	68fb      	ldr	r3, [r7, #12]
 805ad28:	3b01      	subs	r3, #1
 805ad2a:	4618      	mov	r0, r3
 805ad2c:	4b0b      	ldr	r3, [pc, #44]	; (805ad5c <MPU_vTimerSetTimerIDImpl+0x64>)
 805ad2e:	4798      	blx	r3
 805ad30:	6138      	str	r0, [r7, #16]
 805ad32:	693b      	ldr	r3, [r7, #16]
 805ad34:	2b01      	cmp	r3, #1
 805ad36:	d10d      	bne.n	805ad54 <MPU_vTimerSetTimerIDImpl+0x5c>
 805ad38:	68fb      	ldr	r3, [r7, #12]
 805ad3a:	3b01      	subs	r3, #1
 805ad3c:	2105      	movs	r1, #5
 805ad3e:	4618      	mov	r0, r3
 805ad40:	f7fe fff0 	bl	8059d24 <MPU_GetHandleAtIndex>
 805ad44:	6178      	str	r0, [r7, #20]
 805ad46:	697b      	ldr	r3, [r7, #20]
 805ad48:	2b00      	cmp	r3, #0
 805ad4a:	d003      	beq.n	805ad54 <MPU_vTimerSetTimerIDImpl+0x5c>
 805ad4c:	6839      	ldr	r1, [r7, #0]
 805ad4e:	6978      	ldr	r0, [r7, #20]
 805ad50:	4b03      	ldr	r3, [pc, #12]	; (805ad60 <MPU_vTimerSetTimerIDImpl+0x68>)
 805ad52:	4798      	blx	r3
 805ad54:	bf00      	nop
 805ad56:	3718      	adds	r7, #24
 805ad58:	46bd      	mov	sp, r7
 805ad5a:	bd80      	pop	{r7, pc}
 805ad5c:	0805eafd 	.word	0x0805eafd
 805ad60:	08058299 	.word	0x08058299

0805ad64 <MPU_xTimerIsTimerActiveImpl>:
 805ad64:	b580      	push	{r7, lr}
 805ad66:	b086      	sub	sp, #24
 805ad68:	af00      	add	r7, sp, #0
 805ad6a:	6078      	str	r0, [r7, #4]
 805ad6c:	2300      	movs	r3, #0
 805ad6e:	617b      	str	r3, [r7, #20]
 805ad70:	2300      	movs	r3, #0
 805ad72:	613b      	str	r3, [r7, #16]
 805ad74:	2300      	movs	r3, #0
 805ad76:	60fb      	str	r3, [r7, #12]
 805ad78:	687b      	ldr	r3, [r7, #4]
 805ad7a:	60bb      	str	r3, [r7, #8]
 805ad7c:	68bb      	ldr	r3, [r7, #8]
 805ad7e:	2b00      	cmp	r3, #0
 805ad80:	dd05      	ble.n	805ad8e <MPU_xTimerIsTimerActiveImpl+0x2a>
 805ad82:	68bb      	ldr	r3, [r7, #8]
 805ad84:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805ad88:	dc01      	bgt.n	805ad8e <MPU_xTimerIsTimerActiveImpl+0x2a>
 805ad8a:	2301      	movs	r3, #1
 805ad8c:	e000      	b.n	805ad90 <MPU_xTimerIsTimerActiveImpl+0x2c>
 805ad8e:	2300      	movs	r3, #0
 805ad90:	2b00      	cmp	r3, #0
 805ad92:	d016      	beq.n	805adc2 <MPU_xTimerIsTimerActiveImpl+0x5e>
 805ad94:	68bb      	ldr	r3, [r7, #8]
 805ad96:	3b01      	subs	r3, #1
 805ad98:	4618      	mov	r0, r3
 805ad9a:	4b0c      	ldr	r3, [pc, #48]	; (805adcc <MPU_xTimerIsTimerActiveImpl+0x68>)
 805ad9c:	4798      	blx	r3
 805ad9e:	60f8      	str	r0, [r7, #12]
 805ada0:	68fb      	ldr	r3, [r7, #12]
 805ada2:	2b01      	cmp	r3, #1
 805ada4:	d10d      	bne.n	805adc2 <MPU_xTimerIsTimerActiveImpl+0x5e>
 805ada6:	68bb      	ldr	r3, [r7, #8]
 805ada8:	3b01      	subs	r3, #1
 805adaa:	2105      	movs	r1, #5
 805adac:	4618      	mov	r0, r3
 805adae:	f7fe ffb9 	bl	8059d24 <MPU_GetHandleAtIndex>
 805adb2:	6138      	str	r0, [r7, #16]
 805adb4:	693b      	ldr	r3, [r7, #16]
 805adb6:	2b00      	cmp	r3, #0
 805adb8:	d003      	beq.n	805adc2 <MPU_xTimerIsTimerActiveImpl+0x5e>
 805adba:	6938      	ldr	r0, [r7, #16]
 805adbc:	4b04      	ldr	r3, [pc, #16]	; (805add0 <MPU_xTimerIsTimerActiveImpl+0x6c>)
 805adbe:	4798      	blx	r3
 805adc0:	6178      	str	r0, [r7, #20]
 805adc2:	697b      	ldr	r3, [r7, #20]
 805adc4:	4618      	mov	r0, r3
 805adc6:	3718      	adds	r7, #24
 805adc8:	46bd      	mov	sp, r7
 805adca:	bd80      	pop	{r7, pc}
 805adcc:	0805eafd 	.word	0x0805eafd
 805add0:	080582d5 	.word	0x080582d5

0805add4 <MPU_xTimerGetTimerDaemonTaskHandleImpl>:
 805add4:	b580      	push	{r7, lr}
 805add6:	b082      	sub	sp, #8
 805add8:	af00      	add	r7, sp, #0
 805adda:	4b04      	ldr	r3, [pc, #16]	; (805adec <MPU_xTimerGetTimerDaemonTaskHandleImpl+0x18>)
 805addc:	4798      	blx	r3
 805adde:	6078      	str	r0, [r7, #4]
 805ade0:	687b      	ldr	r3, [r7, #4]
 805ade2:	4618      	mov	r0, r3
 805ade4:	3708      	adds	r7, #8
 805ade6:	46bd      	mov	sp, r7
 805ade8:	bd80      	pop	{r7, pc}
 805adea:	bf00      	nop
 805adec:	08058325 	.word	0x08058325

0805adf0 <MPU_xTimerGenericCommandFromTaskImpl>:
 805adf0:	b590      	push	{r4, r7, lr}
 805adf2:	b08d      	sub	sp, #52	; 0x34
 805adf4:	af02      	add	r7, sp, #8
 805adf6:	60f8      	str	r0, [r7, #12]
 805adf8:	60b9      	str	r1, [r7, #8]
 805adfa:	607a      	str	r2, [r7, #4]
 805adfc:	603b      	str	r3, [r7, #0]
 805adfe:	2300      	movs	r3, #0
 805ae00:	627b      	str	r3, [r7, #36]	; 0x24
 805ae02:	2300      	movs	r3, #0
 805ae04:	61fb      	str	r3, [r7, #28]
 805ae06:	2300      	movs	r3, #0
 805ae08:	623b      	str	r3, [r7, #32]
 805ae0a:	2300      	movs	r3, #0
 805ae0c:	61bb      	str	r3, [r7, #24]
 805ae0e:	68bb      	ldr	r3, [r7, #8]
 805ae10:	2b05      	cmp	r3, #5
 805ae12:	dc38      	bgt.n	805ae86 <MPU_xTimerGenericCommandFromTaskImpl+0x96>
 805ae14:	683b      	ldr	r3, [r7, #0]
 805ae16:	2b00      	cmp	r3, #0
 805ae18:	d005      	beq.n	805ae26 <MPU_xTimerGenericCommandFromTaskImpl+0x36>
 805ae1a:	2202      	movs	r2, #2
 805ae1c:	2104      	movs	r1, #4
 805ae1e:	6838      	ldr	r0, [r7, #0]
 805ae20:	4b1b      	ldr	r3, [pc, #108]	; (805ae90 <MPU_xTimerGenericCommandFromTaskImpl+0xa0>)
 805ae22:	4798      	blx	r3
 805ae24:	6238      	str	r0, [r7, #32]
 805ae26:	683b      	ldr	r3, [r7, #0]
 805ae28:	2b00      	cmp	r3, #0
 805ae2a:	d002      	beq.n	805ae32 <MPU_xTimerGenericCommandFromTaskImpl+0x42>
 805ae2c:	6a3b      	ldr	r3, [r7, #32]
 805ae2e:	2b01      	cmp	r3, #1
 805ae30:	d129      	bne.n	805ae86 <MPU_xTimerGenericCommandFromTaskImpl+0x96>
 805ae32:	68fb      	ldr	r3, [r7, #12]
 805ae34:	617b      	str	r3, [r7, #20]
 805ae36:	697b      	ldr	r3, [r7, #20]
 805ae38:	2b00      	cmp	r3, #0
 805ae3a:	dd05      	ble.n	805ae48 <MPU_xTimerGenericCommandFromTaskImpl+0x58>
 805ae3c:	697b      	ldr	r3, [r7, #20]
 805ae3e:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805ae42:	dc01      	bgt.n	805ae48 <MPU_xTimerGenericCommandFromTaskImpl+0x58>
 805ae44:	2301      	movs	r3, #1
 805ae46:	e000      	b.n	805ae4a <MPU_xTimerGenericCommandFromTaskImpl+0x5a>
 805ae48:	2300      	movs	r3, #0
 805ae4a:	2b00      	cmp	r3, #0
 805ae4c:	d01b      	beq.n	805ae86 <MPU_xTimerGenericCommandFromTaskImpl+0x96>
 805ae4e:	697b      	ldr	r3, [r7, #20]
 805ae50:	3b01      	subs	r3, #1
 805ae52:	4618      	mov	r0, r3
 805ae54:	4b0f      	ldr	r3, [pc, #60]	; (805ae94 <MPU_xTimerGenericCommandFromTaskImpl+0xa4>)
 805ae56:	4798      	blx	r3
 805ae58:	61b8      	str	r0, [r7, #24]
 805ae5a:	69bb      	ldr	r3, [r7, #24]
 805ae5c:	2b01      	cmp	r3, #1
 805ae5e:	d112      	bne.n	805ae86 <MPU_xTimerGenericCommandFromTaskImpl+0x96>
 805ae60:	697b      	ldr	r3, [r7, #20]
 805ae62:	3b01      	subs	r3, #1
 805ae64:	2105      	movs	r1, #5
 805ae66:	4618      	mov	r0, r3
 805ae68:	f7fe ff5c 	bl	8059d24 <MPU_GetHandleAtIndex>
 805ae6c:	61f8      	str	r0, [r7, #28]
 805ae6e:	69fb      	ldr	r3, [r7, #28]
 805ae70:	2b00      	cmp	r3, #0
 805ae72:	d008      	beq.n	805ae86 <MPU_xTimerGenericCommandFromTaskImpl+0x96>
 805ae74:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 805ae76:	9300      	str	r3, [sp, #0]
 805ae78:	683b      	ldr	r3, [r7, #0]
 805ae7a:	687a      	ldr	r2, [r7, #4]
 805ae7c:	68b9      	ldr	r1, [r7, #8]
 805ae7e:	69f8      	ldr	r0, [r7, #28]
 805ae80:	4c05      	ldr	r4, [pc, #20]	; (805ae98 <MPU_xTimerGenericCommandFromTaskImpl+0xa8>)
 805ae82:	47a0      	blx	r4
 805ae84:	6278      	str	r0, [r7, #36]	; 0x24
 805ae86:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805ae88:	4618      	mov	r0, r3
 805ae8a:	372c      	adds	r7, #44	; 0x2c
 805ae8c:	46bd      	mov	sp, r7
 805ae8e:	bd90      	pop	{r4, r7, pc}
 805ae90:	0805ea15 	.word	0x0805ea15
 805ae94:	0805eafd 	.word	0x0805eafd
 805ae98:	08058591 	.word	0x08058591

0805ae9c <MPU_pcTimerGetNameImpl>:
 805ae9c:	b580      	push	{r7, lr}
 805ae9e:	b086      	sub	sp, #24
 805aea0:	af00      	add	r7, sp, #0
 805aea2:	6078      	str	r0, [r7, #4]
 805aea4:	2300      	movs	r3, #0
 805aea6:	617b      	str	r3, [r7, #20]
 805aea8:	2300      	movs	r3, #0
 805aeaa:	613b      	str	r3, [r7, #16]
 805aeac:	2300      	movs	r3, #0
 805aeae:	60fb      	str	r3, [r7, #12]
 805aeb0:	687b      	ldr	r3, [r7, #4]
 805aeb2:	60bb      	str	r3, [r7, #8]
 805aeb4:	68bb      	ldr	r3, [r7, #8]
 805aeb6:	2b00      	cmp	r3, #0
 805aeb8:	dd05      	ble.n	805aec6 <MPU_pcTimerGetNameImpl+0x2a>
 805aeba:	68bb      	ldr	r3, [r7, #8]
 805aebc:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805aec0:	dc01      	bgt.n	805aec6 <MPU_pcTimerGetNameImpl+0x2a>
 805aec2:	2301      	movs	r3, #1
 805aec4:	e000      	b.n	805aec8 <MPU_pcTimerGetNameImpl+0x2c>
 805aec6:	2300      	movs	r3, #0
 805aec8:	2b00      	cmp	r3, #0
 805aeca:	d016      	beq.n	805aefa <MPU_pcTimerGetNameImpl+0x5e>
 805aecc:	68bb      	ldr	r3, [r7, #8]
 805aece:	3b01      	subs	r3, #1
 805aed0:	4618      	mov	r0, r3
 805aed2:	4b0c      	ldr	r3, [pc, #48]	; (805af04 <MPU_pcTimerGetNameImpl+0x68>)
 805aed4:	4798      	blx	r3
 805aed6:	60f8      	str	r0, [r7, #12]
 805aed8:	68fb      	ldr	r3, [r7, #12]
 805aeda:	2b01      	cmp	r3, #1
 805aedc:	d10d      	bne.n	805aefa <MPU_pcTimerGetNameImpl+0x5e>
 805aede:	68bb      	ldr	r3, [r7, #8]
 805aee0:	3b01      	subs	r3, #1
 805aee2:	2105      	movs	r1, #5
 805aee4:	4618      	mov	r0, r3
 805aee6:	f7fe ff1d 	bl	8059d24 <MPU_GetHandleAtIndex>
 805aeea:	6138      	str	r0, [r7, #16]
 805aeec:	693b      	ldr	r3, [r7, #16]
 805aeee:	2b00      	cmp	r3, #0
 805aef0:	d003      	beq.n	805aefa <MPU_pcTimerGetNameImpl+0x5e>
 805aef2:	6938      	ldr	r0, [r7, #16]
 805aef4:	4b04      	ldr	r3, [pc, #16]	; (805af08 <MPU_pcTimerGetNameImpl+0x6c>)
 805aef6:	4798      	blx	r3
 805aef8:	6178      	str	r0, [r7, #20]
 805aefa:	697b      	ldr	r3, [r7, #20]
 805aefc:	4618      	mov	r0, r3
 805aefe:	3718      	adds	r7, #24
 805af00:	46bd      	mov	sp, r7
 805af02:	bd80      	pop	{r7, pc}
 805af04:	0805eafd 	.word	0x0805eafd
 805af08:	080583e5 	.word	0x080583e5

0805af0c <MPU_vTimerSetReloadModeImpl>:
 805af0c:	b580      	push	{r7, lr}
 805af0e:	b086      	sub	sp, #24
 805af10:	af00      	add	r7, sp, #0
 805af12:	6078      	str	r0, [r7, #4]
 805af14:	6039      	str	r1, [r7, #0]
 805af16:	2300      	movs	r3, #0
 805af18:	617b      	str	r3, [r7, #20]
 805af1a:	2300      	movs	r3, #0
 805af1c:	613b      	str	r3, [r7, #16]
 805af1e:	687b      	ldr	r3, [r7, #4]
 805af20:	60fb      	str	r3, [r7, #12]
 805af22:	68fb      	ldr	r3, [r7, #12]
 805af24:	2b00      	cmp	r3, #0
 805af26:	dd05      	ble.n	805af34 <MPU_vTimerSetReloadModeImpl+0x28>
 805af28:	68fb      	ldr	r3, [r7, #12]
 805af2a:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805af2e:	dc01      	bgt.n	805af34 <MPU_vTimerSetReloadModeImpl+0x28>
 805af30:	2301      	movs	r3, #1
 805af32:	e000      	b.n	805af36 <MPU_vTimerSetReloadModeImpl+0x2a>
 805af34:	2300      	movs	r3, #0
 805af36:	2b00      	cmp	r3, #0
 805af38:	d017      	beq.n	805af6a <MPU_vTimerSetReloadModeImpl+0x5e>
 805af3a:	68fb      	ldr	r3, [r7, #12]
 805af3c:	3b01      	subs	r3, #1
 805af3e:	4618      	mov	r0, r3
 805af40:	4b0c      	ldr	r3, [pc, #48]	; (805af74 <MPU_vTimerSetReloadModeImpl+0x68>)
 805af42:	4798      	blx	r3
 805af44:	6138      	str	r0, [r7, #16]
 805af46:	693b      	ldr	r3, [r7, #16]
 805af48:	2b01      	cmp	r3, #1
 805af4a:	d10e      	bne.n	805af6a <MPU_vTimerSetReloadModeImpl+0x5e>
 805af4c:	68fb      	ldr	r3, [r7, #12]
 805af4e:	3b01      	subs	r3, #1
 805af50:	2105      	movs	r1, #5
 805af52:	4618      	mov	r0, r3
 805af54:	f7fe fee6 	bl	8059d24 <MPU_GetHandleAtIndex>
 805af58:	6178      	str	r0, [r7, #20]
 805af5a:	697b      	ldr	r3, [r7, #20]
 805af5c:	2b00      	cmp	r3, #0
 805af5e:	d004      	beq.n	805af6a <MPU_vTimerSetReloadModeImpl+0x5e>
 805af60:	683b      	ldr	r3, [r7, #0]
 805af62:	4619      	mov	r1, r3
 805af64:	6978      	ldr	r0, [r7, #20]
 805af66:	4b04      	ldr	r3, [pc, #16]	; (805af78 <MPU_vTimerSetReloadModeImpl+0x6c>)
 805af68:	4798      	blx	r3
 805af6a:	bf00      	nop
 805af6c:	3718      	adds	r7, #24
 805af6e:	46bd      	mov	sp, r7
 805af70:	bd80      	pop	{r7, pc}
 805af72:	bf00      	nop
 805af74:	0805eafd 	.word	0x0805eafd
 805af78:	0805840d 	.word	0x0805840d

0805af7c <MPU_xTimerGetReloadModeImpl>:
 805af7c:	b580      	push	{r7, lr}
 805af7e:	b086      	sub	sp, #24
 805af80:	af00      	add	r7, sp, #0
 805af82:	6078      	str	r0, [r7, #4]
 805af84:	2300      	movs	r3, #0
 805af86:	617b      	str	r3, [r7, #20]
 805af88:	2300      	movs	r3, #0
 805af8a:	613b      	str	r3, [r7, #16]
 805af8c:	2300      	movs	r3, #0
 805af8e:	60fb      	str	r3, [r7, #12]
 805af90:	687b      	ldr	r3, [r7, #4]
 805af92:	60bb      	str	r3, [r7, #8]
 805af94:	68bb      	ldr	r3, [r7, #8]
 805af96:	2b00      	cmp	r3, #0
 805af98:	dd05      	ble.n	805afa6 <MPU_xTimerGetReloadModeImpl+0x2a>
 805af9a:	68bb      	ldr	r3, [r7, #8]
 805af9c:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805afa0:	dc01      	bgt.n	805afa6 <MPU_xTimerGetReloadModeImpl+0x2a>
 805afa2:	2301      	movs	r3, #1
 805afa4:	e000      	b.n	805afa8 <MPU_xTimerGetReloadModeImpl+0x2c>
 805afa6:	2300      	movs	r3, #0
 805afa8:	2b00      	cmp	r3, #0
 805afaa:	d016      	beq.n	805afda <MPU_xTimerGetReloadModeImpl+0x5e>
 805afac:	68bb      	ldr	r3, [r7, #8]
 805afae:	3b01      	subs	r3, #1
 805afb0:	4618      	mov	r0, r3
 805afb2:	4b0c      	ldr	r3, [pc, #48]	; (805afe4 <MPU_xTimerGetReloadModeImpl+0x68>)
 805afb4:	4798      	blx	r3
 805afb6:	60f8      	str	r0, [r7, #12]
 805afb8:	68fb      	ldr	r3, [r7, #12]
 805afba:	2b01      	cmp	r3, #1
 805afbc:	d10d      	bne.n	805afda <MPU_xTimerGetReloadModeImpl+0x5e>
 805afbe:	68bb      	ldr	r3, [r7, #8]
 805afc0:	3b01      	subs	r3, #1
 805afc2:	2105      	movs	r1, #5
 805afc4:	4618      	mov	r0, r3
 805afc6:	f7fe fead 	bl	8059d24 <MPU_GetHandleAtIndex>
 805afca:	6138      	str	r0, [r7, #16]
 805afcc:	693b      	ldr	r3, [r7, #16]
 805afce:	2b00      	cmp	r3, #0
 805afd0:	d003      	beq.n	805afda <MPU_xTimerGetReloadModeImpl+0x5e>
 805afd2:	6938      	ldr	r0, [r7, #16]
 805afd4:	4b04      	ldr	r3, [pc, #16]	; (805afe8 <MPU_xTimerGetReloadModeImpl+0x6c>)
 805afd6:	4798      	blx	r3
 805afd8:	6178      	str	r0, [r7, #20]
 805afda:	697b      	ldr	r3, [r7, #20]
 805afdc:	4618      	mov	r0, r3
 805afde:	3718      	adds	r7, #24
 805afe0:	46bd      	mov	sp, r7
 805afe2:	bd80      	pop	{r7, pc}
 805afe4:	0805eafd 	.word	0x0805eafd
 805afe8:	08058471 	.word	0x08058471

0805afec <MPU_uxTimerGetReloadModeImpl>:
 805afec:	b580      	push	{r7, lr}
 805afee:	b086      	sub	sp, #24
 805aff0:	af00      	add	r7, sp, #0
 805aff2:	6078      	str	r0, [r7, #4]
 805aff4:	2300      	movs	r3, #0
 805aff6:	617b      	str	r3, [r7, #20]
 805aff8:	2300      	movs	r3, #0
 805affa:	613b      	str	r3, [r7, #16]
 805affc:	2300      	movs	r3, #0
 805affe:	60fb      	str	r3, [r7, #12]
 805b000:	687b      	ldr	r3, [r7, #4]
 805b002:	60bb      	str	r3, [r7, #8]
 805b004:	68bb      	ldr	r3, [r7, #8]
 805b006:	2b00      	cmp	r3, #0
 805b008:	dd05      	ble.n	805b016 <MPU_uxTimerGetReloadModeImpl+0x2a>
 805b00a:	68bb      	ldr	r3, [r7, #8]
 805b00c:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805b010:	dc01      	bgt.n	805b016 <MPU_uxTimerGetReloadModeImpl+0x2a>
 805b012:	2301      	movs	r3, #1
 805b014:	e000      	b.n	805b018 <MPU_uxTimerGetReloadModeImpl+0x2c>
 805b016:	2300      	movs	r3, #0
 805b018:	2b00      	cmp	r3, #0
 805b01a:	d016      	beq.n	805b04a <MPU_uxTimerGetReloadModeImpl+0x5e>
 805b01c:	68bb      	ldr	r3, [r7, #8]
 805b01e:	3b01      	subs	r3, #1
 805b020:	4618      	mov	r0, r3
 805b022:	4b0c      	ldr	r3, [pc, #48]	; (805b054 <MPU_uxTimerGetReloadModeImpl+0x68>)
 805b024:	4798      	blx	r3
 805b026:	60f8      	str	r0, [r7, #12]
 805b028:	68fb      	ldr	r3, [r7, #12]
 805b02a:	2b01      	cmp	r3, #1
 805b02c:	d10d      	bne.n	805b04a <MPU_uxTimerGetReloadModeImpl+0x5e>
 805b02e:	68bb      	ldr	r3, [r7, #8]
 805b030:	3b01      	subs	r3, #1
 805b032:	2105      	movs	r1, #5
 805b034:	4618      	mov	r0, r3
 805b036:	f7fe fe75 	bl	8059d24 <MPU_GetHandleAtIndex>
 805b03a:	6138      	str	r0, [r7, #16]
 805b03c:	693b      	ldr	r3, [r7, #16]
 805b03e:	2b00      	cmp	r3, #0
 805b040:	d003      	beq.n	805b04a <MPU_uxTimerGetReloadModeImpl+0x5e>
 805b042:	6938      	ldr	r0, [r7, #16]
 805b044:	4b04      	ldr	r3, [pc, #16]	; (805b058 <MPU_uxTimerGetReloadModeImpl+0x6c>)
 805b046:	4798      	blx	r3
 805b048:	6178      	str	r0, [r7, #20]
 805b04a:	697b      	ldr	r3, [r7, #20]
 805b04c:	4618      	mov	r0, r3
 805b04e:	3718      	adds	r7, #24
 805b050:	46bd      	mov	sp, r7
 805b052:	bd80      	pop	{r7, pc}
 805b054:	0805eafd 	.word	0x0805eafd
 805b058:	080584c1 	.word	0x080584c1

0805b05c <MPU_xTimerGetPeriodImpl>:
 805b05c:	b580      	push	{r7, lr}
 805b05e:	b086      	sub	sp, #24
 805b060:	af00      	add	r7, sp, #0
 805b062:	6078      	str	r0, [r7, #4]
 805b064:	2300      	movs	r3, #0
 805b066:	617b      	str	r3, [r7, #20]
 805b068:	2300      	movs	r3, #0
 805b06a:	613b      	str	r3, [r7, #16]
 805b06c:	2300      	movs	r3, #0
 805b06e:	60fb      	str	r3, [r7, #12]
 805b070:	687b      	ldr	r3, [r7, #4]
 805b072:	60bb      	str	r3, [r7, #8]
 805b074:	68bb      	ldr	r3, [r7, #8]
 805b076:	2b00      	cmp	r3, #0
 805b078:	dd05      	ble.n	805b086 <MPU_xTimerGetPeriodImpl+0x2a>
 805b07a:	68bb      	ldr	r3, [r7, #8]
 805b07c:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805b080:	dc01      	bgt.n	805b086 <MPU_xTimerGetPeriodImpl+0x2a>
 805b082:	2301      	movs	r3, #1
 805b084:	e000      	b.n	805b088 <MPU_xTimerGetPeriodImpl+0x2c>
 805b086:	2300      	movs	r3, #0
 805b088:	2b00      	cmp	r3, #0
 805b08a:	d016      	beq.n	805b0ba <MPU_xTimerGetPeriodImpl+0x5e>
 805b08c:	68bb      	ldr	r3, [r7, #8]
 805b08e:	3b01      	subs	r3, #1
 805b090:	4618      	mov	r0, r3
 805b092:	4b0c      	ldr	r3, [pc, #48]	; (805b0c4 <MPU_xTimerGetPeriodImpl+0x68>)
 805b094:	4798      	blx	r3
 805b096:	60f8      	str	r0, [r7, #12]
 805b098:	68fb      	ldr	r3, [r7, #12]
 805b09a:	2b01      	cmp	r3, #1
 805b09c:	d10d      	bne.n	805b0ba <MPU_xTimerGetPeriodImpl+0x5e>
 805b09e:	68bb      	ldr	r3, [r7, #8]
 805b0a0:	3b01      	subs	r3, #1
 805b0a2:	2105      	movs	r1, #5
 805b0a4:	4618      	mov	r0, r3
 805b0a6:	f7fe fe3d 	bl	8059d24 <MPU_GetHandleAtIndex>
 805b0aa:	6138      	str	r0, [r7, #16]
 805b0ac:	693b      	ldr	r3, [r7, #16]
 805b0ae:	2b00      	cmp	r3, #0
 805b0b0:	d003      	beq.n	805b0ba <MPU_xTimerGetPeriodImpl+0x5e>
 805b0b2:	6938      	ldr	r0, [r7, #16]
 805b0b4:	4b04      	ldr	r3, [pc, #16]	; (805b0c8 <MPU_xTimerGetPeriodImpl+0x6c>)
 805b0b6:	4798      	blx	r3
 805b0b8:	6178      	str	r0, [r7, #20]
 805b0ba:	697b      	ldr	r3, [r7, #20]
 805b0bc:	4618      	mov	r0, r3
 805b0be:	3718      	adds	r7, #24
 805b0c0:	46bd      	mov	sp, r7
 805b0c2:	bd80      	pop	{r7, pc}
 805b0c4:	0805eafd 	.word	0x0805eafd
 805b0c8:	080584dd 	.word	0x080584dd

0805b0cc <MPU_xTimerGetExpiryTimeImpl>:
 805b0cc:	b580      	push	{r7, lr}
 805b0ce:	b086      	sub	sp, #24
 805b0d0:	af00      	add	r7, sp, #0
 805b0d2:	6078      	str	r0, [r7, #4]
 805b0d4:	2300      	movs	r3, #0
 805b0d6:	617b      	str	r3, [r7, #20]
 805b0d8:	2300      	movs	r3, #0
 805b0da:	613b      	str	r3, [r7, #16]
 805b0dc:	2300      	movs	r3, #0
 805b0de:	60fb      	str	r3, [r7, #12]
 805b0e0:	687b      	ldr	r3, [r7, #4]
 805b0e2:	60bb      	str	r3, [r7, #8]
 805b0e4:	68bb      	ldr	r3, [r7, #8]
 805b0e6:	2b00      	cmp	r3, #0
 805b0e8:	dd05      	ble.n	805b0f6 <MPU_xTimerGetExpiryTimeImpl+0x2a>
 805b0ea:	68bb      	ldr	r3, [r7, #8]
 805b0ec:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805b0f0:	dc01      	bgt.n	805b0f6 <MPU_xTimerGetExpiryTimeImpl+0x2a>
 805b0f2:	2301      	movs	r3, #1
 805b0f4:	e000      	b.n	805b0f8 <MPU_xTimerGetExpiryTimeImpl+0x2c>
 805b0f6:	2300      	movs	r3, #0
 805b0f8:	2b00      	cmp	r3, #0
 805b0fa:	d016      	beq.n	805b12a <MPU_xTimerGetExpiryTimeImpl+0x5e>
 805b0fc:	68bb      	ldr	r3, [r7, #8]
 805b0fe:	3b01      	subs	r3, #1
 805b100:	4618      	mov	r0, r3
 805b102:	4b0c      	ldr	r3, [pc, #48]	; (805b134 <MPU_xTimerGetExpiryTimeImpl+0x68>)
 805b104:	4798      	blx	r3
 805b106:	60f8      	str	r0, [r7, #12]
 805b108:	68fb      	ldr	r3, [r7, #12]
 805b10a:	2b01      	cmp	r3, #1
 805b10c:	d10d      	bne.n	805b12a <MPU_xTimerGetExpiryTimeImpl+0x5e>
 805b10e:	68bb      	ldr	r3, [r7, #8]
 805b110:	3b01      	subs	r3, #1
 805b112:	2105      	movs	r1, #5
 805b114:	4618      	mov	r0, r3
 805b116:	f7fe fe05 	bl	8059d24 <MPU_GetHandleAtIndex>
 805b11a:	6138      	str	r0, [r7, #16]
 805b11c:	693b      	ldr	r3, [r7, #16]
 805b11e:	2b00      	cmp	r3, #0
 805b120:	d003      	beq.n	805b12a <MPU_xTimerGetExpiryTimeImpl+0x5e>
 805b122:	6938      	ldr	r0, [r7, #16]
 805b124:	4b04      	ldr	r3, [pc, #16]	; (805b138 <MPU_xTimerGetExpiryTimeImpl+0x6c>)
 805b126:	4798      	blx	r3
 805b128:	6178      	str	r0, [r7, #20]
 805b12a:	697b      	ldr	r3, [r7, #20]
 805b12c:	4618      	mov	r0, r3
 805b12e:	3718      	adds	r7, #24
 805b130:	46bd      	mov	sp, r7
 805b132:	bd80      	pop	{r7, pc}
 805b134:	0805eafd 	.word	0x0805eafd
 805b138:	08058505 	.word	0x08058505

0805b13c <MPU_xEventGroupWaitBitsImpl>:
 805b13c:	b590      	push	{r4, r7, lr}
 805b13e:	b08b      	sub	sp, #44	; 0x2c
 805b140:	af02      	add	r7, sp, #8
 805b142:	60f8      	str	r0, [r7, #12]
 805b144:	60b9      	str	r1, [r7, #8]
 805b146:	607a      	str	r2, [r7, #4]
 805b148:	603b      	str	r3, [r7, #0]
 805b14a:	2300      	movs	r3, #0
 805b14c:	61fb      	str	r3, [r7, #28]
 805b14e:	2300      	movs	r3, #0
 805b150:	61bb      	str	r3, [r7, #24]
 805b152:	2300      	movs	r3, #0
 805b154:	617b      	str	r3, [r7, #20]
 805b156:	68bb      	ldr	r3, [r7, #8]
 805b158:	f003 437f 	and.w	r3, r3, #4278190080	; 0xff000000
 805b15c:	2b00      	cmp	r3, #0
 805b15e:	d134      	bne.n	805b1ca <MPU_xEventGroupWaitBitsImpl+0x8e>
 805b160:	68bb      	ldr	r3, [r7, #8]
 805b162:	2b00      	cmp	r3, #0
 805b164:	d031      	beq.n	805b1ca <MPU_xEventGroupWaitBitsImpl+0x8e>
 805b166:	4b1b      	ldr	r3, [pc, #108]	; (805b1d4 <MPU_xEventGroupWaitBitsImpl+0x98>)
 805b168:	4798      	blx	r3
 805b16a:	4603      	mov	r3, r0
 805b16c:	2b00      	cmp	r3, #0
 805b16e:	d102      	bne.n	805b176 <MPU_xEventGroupWaitBitsImpl+0x3a>
 805b170:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 805b172:	2b00      	cmp	r3, #0
 805b174:	d129      	bne.n	805b1ca <MPU_xEventGroupWaitBitsImpl+0x8e>
 805b176:	68fb      	ldr	r3, [r7, #12]
 805b178:	613b      	str	r3, [r7, #16]
 805b17a:	693b      	ldr	r3, [r7, #16]
 805b17c:	2b00      	cmp	r3, #0
 805b17e:	dd05      	ble.n	805b18c <MPU_xEventGroupWaitBitsImpl+0x50>
 805b180:	693b      	ldr	r3, [r7, #16]
 805b182:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805b186:	dc01      	bgt.n	805b18c <MPU_xEventGroupWaitBitsImpl+0x50>
 805b188:	2301      	movs	r3, #1
 805b18a:	e000      	b.n	805b18e <MPU_xEventGroupWaitBitsImpl+0x52>
 805b18c:	2300      	movs	r3, #0
 805b18e:	2b00      	cmp	r3, #0
 805b190:	d01b      	beq.n	805b1ca <MPU_xEventGroupWaitBitsImpl+0x8e>
 805b192:	693b      	ldr	r3, [r7, #16]
 805b194:	3b01      	subs	r3, #1
 805b196:	4618      	mov	r0, r3
 805b198:	4b0f      	ldr	r3, [pc, #60]	; (805b1d8 <MPU_xEventGroupWaitBitsImpl+0x9c>)
 805b19a:	4798      	blx	r3
 805b19c:	6178      	str	r0, [r7, #20]
 805b19e:	697b      	ldr	r3, [r7, #20]
 805b1a0:	2b01      	cmp	r3, #1
 805b1a2:	d112      	bne.n	805b1ca <MPU_xEventGroupWaitBitsImpl+0x8e>
 805b1a4:	693b      	ldr	r3, [r7, #16]
 805b1a6:	3b01      	subs	r3, #1
 805b1a8:	2104      	movs	r1, #4
 805b1aa:	4618      	mov	r0, r3
 805b1ac:	f7fe fdba 	bl	8059d24 <MPU_GetHandleAtIndex>
 805b1b0:	61b8      	str	r0, [r7, #24]
 805b1b2:	69bb      	ldr	r3, [r7, #24]
 805b1b4:	2b00      	cmp	r3, #0
 805b1b6:	d008      	beq.n	805b1ca <MPU_xEventGroupWaitBitsImpl+0x8e>
 805b1b8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 805b1ba:	9300      	str	r3, [sp, #0]
 805b1bc:	683b      	ldr	r3, [r7, #0]
 805b1be:	687a      	ldr	r2, [r7, #4]
 805b1c0:	68b9      	ldr	r1, [r7, #8]
 805b1c2:	69b8      	ldr	r0, [r7, #24]
 805b1c4:	4c05      	ldr	r4, [pc, #20]	; (805b1dc <MPU_xEventGroupWaitBitsImpl+0xa0>)
 805b1c6:	47a0      	blx	r4
 805b1c8:	61f8      	str	r0, [r7, #28]
 805b1ca:	69fb      	ldr	r3, [r7, #28]
 805b1cc:	4618      	mov	r0, r3
 805b1ce:	3724      	adds	r7, #36	; 0x24
 805b1d0:	46bd      	mov	sp, r7
 805b1d2:	bd90      	pop	{r4, r7, pc}
 805b1d4:	0805756d 	.word	0x0805756d
 805b1d8:	0805eafd 	.word	0x0805eafd
 805b1dc:	0805bd71 	.word	0x0805bd71

0805b1e0 <MPU_xEventGroupClearBitsImpl>:
 805b1e0:	b580      	push	{r7, lr}
 805b1e2:	b086      	sub	sp, #24
 805b1e4:	af00      	add	r7, sp, #0
 805b1e6:	6078      	str	r0, [r7, #4]
 805b1e8:	6039      	str	r1, [r7, #0]
 805b1ea:	2300      	movs	r3, #0
 805b1ec:	617b      	str	r3, [r7, #20]
 805b1ee:	2300      	movs	r3, #0
 805b1f0:	613b      	str	r3, [r7, #16]
 805b1f2:	2300      	movs	r3, #0
 805b1f4:	60fb      	str	r3, [r7, #12]
 805b1f6:	683b      	ldr	r3, [r7, #0]
 805b1f8:	f003 437f 	and.w	r3, r3, #4278190080	; 0xff000000
 805b1fc:	2b00      	cmp	r3, #0
 805b1fe:	d125      	bne.n	805b24c <MPU_xEventGroupClearBitsImpl+0x6c>
 805b200:	687b      	ldr	r3, [r7, #4]
 805b202:	60bb      	str	r3, [r7, #8]
 805b204:	68bb      	ldr	r3, [r7, #8]
 805b206:	2b00      	cmp	r3, #0
 805b208:	dd05      	ble.n	805b216 <MPU_xEventGroupClearBitsImpl+0x36>
 805b20a:	68bb      	ldr	r3, [r7, #8]
 805b20c:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805b210:	dc01      	bgt.n	805b216 <MPU_xEventGroupClearBitsImpl+0x36>
 805b212:	2301      	movs	r3, #1
 805b214:	e000      	b.n	805b218 <MPU_xEventGroupClearBitsImpl+0x38>
 805b216:	2300      	movs	r3, #0
 805b218:	2b00      	cmp	r3, #0
 805b21a:	d017      	beq.n	805b24c <MPU_xEventGroupClearBitsImpl+0x6c>
 805b21c:	68bb      	ldr	r3, [r7, #8]
 805b21e:	3b01      	subs	r3, #1
 805b220:	4618      	mov	r0, r3
 805b222:	4b0d      	ldr	r3, [pc, #52]	; (805b258 <MPU_xEventGroupClearBitsImpl+0x78>)
 805b224:	4798      	blx	r3
 805b226:	60f8      	str	r0, [r7, #12]
 805b228:	68fb      	ldr	r3, [r7, #12]
 805b22a:	2b01      	cmp	r3, #1
 805b22c:	d10e      	bne.n	805b24c <MPU_xEventGroupClearBitsImpl+0x6c>
 805b22e:	68bb      	ldr	r3, [r7, #8]
 805b230:	3b01      	subs	r3, #1
 805b232:	2104      	movs	r1, #4
 805b234:	4618      	mov	r0, r3
 805b236:	f7fe fd75 	bl	8059d24 <MPU_GetHandleAtIndex>
 805b23a:	6138      	str	r0, [r7, #16]
 805b23c:	693b      	ldr	r3, [r7, #16]
 805b23e:	2b00      	cmp	r3, #0
 805b240:	d004      	beq.n	805b24c <MPU_xEventGroupClearBitsImpl+0x6c>
 805b242:	6839      	ldr	r1, [r7, #0]
 805b244:	6938      	ldr	r0, [r7, #16]
 805b246:	4b05      	ldr	r3, [pc, #20]	; (805b25c <MPU_xEventGroupClearBitsImpl+0x7c>)
 805b248:	4798      	blx	r3
 805b24a:	6178      	str	r0, [r7, #20]
 805b24c:	697b      	ldr	r3, [r7, #20]
 805b24e:	4618      	mov	r0, r3
 805b250:	3718      	adds	r7, #24
 805b252:	46bd      	mov	sp, r7
 805b254:	bd80      	pop	{r7, pc}
 805b256:	bf00      	nop
 805b258:	0805eafd 	.word	0x0805eafd
 805b25c:	0805bee1 	.word	0x0805bee1

0805b260 <MPU_xEventGroupSetBitsImpl>:
 805b260:	b580      	push	{r7, lr}
 805b262:	b086      	sub	sp, #24
 805b264:	af00      	add	r7, sp, #0
 805b266:	6078      	str	r0, [r7, #4]
 805b268:	6039      	str	r1, [r7, #0]
 805b26a:	2300      	movs	r3, #0
 805b26c:	617b      	str	r3, [r7, #20]
 805b26e:	2300      	movs	r3, #0
 805b270:	613b      	str	r3, [r7, #16]
 805b272:	2300      	movs	r3, #0
 805b274:	60fb      	str	r3, [r7, #12]
 805b276:	683b      	ldr	r3, [r7, #0]
 805b278:	f003 437f 	and.w	r3, r3, #4278190080	; 0xff000000
 805b27c:	2b00      	cmp	r3, #0
 805b27e:	d125      	bne.n	805b2cc <MPU_xEventGroupSetBitsImpl+0x6c>
 805b280:	687b      	ldr	r3, [r7, #4]
 805b282:	60bb      	str	r3, [r7, #8]
 805b284:	68bb      	ldr	r3, [r7, #8]
 805b286:	2b00      	cmp	r3, #0
 805b288:	dd05      	ble.n	805b296 <MPU_xEventGroupSetBitsImpl+0x36>
 805b28a:	68bb      	ldr	r3, [r7, #8]
 805b28c:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805b290:	dc01      	bgt.n	805b296 <MPU_xEventGroupSetBitsImpl+0x36>
 805b292:	2301      	movs	r3, #1
 805b294:	e000      	b.n	805b298 <MPU_xEventGroupSetBitsImpl+0x38>
 805b296:	2300      	movs	r3, #0
 805b298:	2b00      	cmp	r3, #0
 805b29a:	d017      	beq.n	805b2cc <MPU_xEventGroupSetBitsImpl+0x6c>
 805b29c:	68bb      	ldr	r3, [r7, #8]
 805b29e:	3b01      	subs	r3, #1
 805b2a0:	4618      	mov	r0, r3
 805b2a2:	4b0d      	ldr	r3, [pc, #52]	; (805b2d8 <MPU_xEventGroupSetBitsImpl+0x78>)
 805b2a4:	4798      	blx	r3
 805b2a6:	60f8      	str	r0, [r7, #12]
 805b2a8:	68fb      	ldr	r3, [r7, #12]
 805b2aa:	2b01      	cmp	r3, #1
 805b2ac:	d10e      	bne.n	805b2cc <MPU_xEventGroupSetBitsImpl+0x6c>
 805b2ae:	68bb      	ldr	r3, [r7, #8]
 805b2b0:	3b01      	subs	r3, #1
 805b2b2:	2104      	movs	r1, #4
 805b2b4:	4618      	mov	r0, r3
 805b2b6:	f7fe fd35 	bl	8059d24 <MPU_GetHandleAtIndex>
 805b2ba:	6138      	str	r0, [r7, #16]
 805b2bc:	693b      	ldr	r3, [r7, #16]
 805b2be:	2b00      	cmp	r3, #0
 805b2c0:	d004      	beq.n	805b2cc <MPU_xEventGroupSetBitsImpl+0x6c>
 805b2c2:	6839      	ldr	r1, [r7, #0]
 805b2c4:	6938      	ldr	r0, [r7, #16]
 805b2c6:	4b05      	ldr	r3, [pc, #20]	; (805b2dc <MPU_xEventGroupSetBitsImpl+0x7c>)
 805b2c8:	4798      	blx	r3
 805b2ca:	6178      	str	r0, [r7, #20]
 805b2cc:	697b      	ldr	r3, [r7, #20]
 805b2ce:	4618      	mov	r0, r3
 805b2d0:	3718      	adds	r7, #24
 805b2d2:	46bd      	mov	sp, r7
 805b2d4:	bd80      	pop	{r7, pc}
 805b2d6:	bf00      	nop
 805b2d8:	0805eafd 	.word	0x0805eafd
 805b2dc:	0805bf69 	.word	0x0805bf69

0805b2e0 <MPU_xEventGroupSyncImpl>:
 805b2e0:	b590      	push	{r4, r7, lr}
 805b2e2:	b089      	sub	sp, #36	; 0x24
 805b2e4:	af00      	add	r7, sp, #0
 805b2e6:	60f8      	str	r0, [r7, #12]
 805b2e8:	60b9      	str	r1, [r7, #8]
 805b2ea:	607a      	str	r2, [r7, #4]
 805b2ec:	603b      	str	r3, [r7, #0]
 805b2ee:	2300      	movs	r3, #0
 805b2f0:	61fb      	str	r3, [r7, #28]
 805b2f2:	2300      	movs	r3, #0
 805b2f4:	61bb      	str	r3, [r7, #24]
 805b2f6:	2300      	movs	r3, #0
 805b2f8:	617b      	str	r3, [r7, #20]
 805b2fa:	687b      	ldr	r3, [r7, #4]
 805b2fc:	f003 437f 	and.w	r3, r3, #4278190080	; 0xff000000
 805b300:	2b00      	cmp	r3, #0
 805b302:	d132      	bne.n	805b36a <MPU_xEventGroupSyncImpl+0x8a>
 805b304:	687b      	ldr	r3, [r7, #4]
 805b306:	2b00      	cmp	r3, #0
 805b308:	d02f      	beq.n	805b36a <MPU_xEventGroupSyncImpl+0x8a>
 805b30a:	4b1a      	ldr	r3, [pc, #104]	; (805b374 <MPU_xEventGroupSyncImpl+0x94>)
 805b30c:	4798      	blx	r3
 805b30e:	4603      	mov	r3, r0
 805b310:	2b00      	cmp	r3, #0
 805b312:	d102      	bne.n	805b31a <MPU_xEventGroupSyncImpl+0x3a>
 805b314:	683b      	ldr	r3, [r7, #0]
 805b316:	2b00      	cmp	r3, #0
 805b318:	d127      	bne.n	805b36a <MPU_xEventGroupSyncImpl+0x8a>
 805b31a:	68fb      	ldr	r3, [r7, #12]
 805b31c:	613b      	str	r3, [r7, #16]
 805b31e:	693b      	ldr	r3, [r7, #16]
 805b320:	2b00      	cmp	r3, #0
 805b322:	dd05      	ble.n	805b330 <MPU_xEventGroupSyncImpl+0x50>
 805b324:	693b      	ldr	r3, [r7, #16]
 805b326:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805b32a:	dc01      	bgt.n	805b330 <MPU_xEventGroupSyncImpl+0x50>
 805b32c:	2301      	movs	r3, #1
 805b32e:	e000      	b.n	805b332 <MPU_xEventGroupSyncImpl+0x52>
 805b330:	2300      	movs	r3, #0
 805b332:	2b00      	cmp	r3, #0
 805b334:	d019      	beq.n	805b36a <MPU_xEventGroupSyncImpl+0x8a>
 805b336:	693b      	ldr	r3, [r7, #16]
 805b338:	3b01      	subs	r3, #1
 805b33a:	4618      	mov	r0, r3
 805b33c:	4b0e      	ldr	r3, [pc, #56]	; (805b378 <MPU_xEventGroupSyncImpl+0x98>)
 805b33e:	4798      	blx	r3
 805b340:	6178      	str	r0, [r7, #20]
 805b342:	697b      	ldr	r3, [r7, #20]
 805b344:	2b01      	cmp	r3, #1
 805b346:	d110      	bne.n	805b36a <MPU_xEventGroupSyncImpl+0x8a>
 805b348:	693b      	ldr	r3, [r7, #16]
 805b34a:	3b01      	subs	r3, #1
 805b34c:	2104      	movs	r1, #4
 805b34e:	4618      	mov	r0, r3
 805b350:	f7fe fce8 	bl	8059d24 <MPU_GetHandleAtIndex>
 805b354:	61b8      	str	r0, [r7, #24]
 805b356:	69bb      	ldr	r3, [r7, #24]
 805b358:	2b00      	cmp	r3, #0
 805b35a:	d006      	beq.n	805b36a <MPU_xEventGroupSyncImpl+0x8a>
 805b35c:	683b      	ldr	r3, [r7, #0]
 805b35e:	687a      	ldr	r2, [r7, #4]
 805b360:	68b9      	ldr	r1, [r7, #8]
 805b362:	69b8      	ldr	r0, [r7, #24]
 805b364:	4c05      	ldr	r4, [pc, #20]	; (805b37c <MPU_xEventGroupSyncImpl+0x9c>)
 805b366:	47a0      	blx	r4
 805b368:	61f8      	str	r0, [r7, #28]
 805b36a:	69fb      	ldr	r3, [r7, #28]
 805b36c:	4618      	mov	r0, r3
 805b36e:	3724      	adds	r7, #36	; 0x24
 805b370:	46bd      	mov	sp, r7
 805b372:	bd90      	pop	{r4, r7, pc}
 805b374:	0805756d 	.word	0x0805756d
 805b378:	0805eafd 	.word	0x0805eafd
 805b37c:	0805c09d 	.word	0x0805c09d

0805b380 <MPU_uxEventGroupGetNumberImpl>:
 805b380:	b580      	push	{r7, lr}
 805b382:	b086      	sub	sp, #24
 805b384:	af00      	add	r7, sp, #0
 805b386:	6078      	str	r0, [r7, #4]
 805b388:	2300      	movs	r3, #0
 805b38a:	617b      	str	r3, [r7, #20]
 805b38c:	2300      	movs	r3, #0
 805b38e:	613b      	str	r3, [r7, #16]
 805b390:	2300      	movs	r3, #0
 805b392:	60fb      	str	r3, [r7, #12]
 805b394:	687b      	ldr	r3, [r7, #4]
 805b396:	60bb      	str	r3, [r7, #8]
 805b398:	68bb      	ldr	r3, [r7, #8]
 805b39a:	2b00      	cmp	r3, #0
 805b39c:	dd05      	ble.n	805b3aa <MPU_uxEventGroupGetNumberImpl+0x2a>
 805b39e:	68bb      	ldr	r3, [r7, #8]
 805b3a0:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805b3a4:	dc01      	bgt.n	805b3aa <MPU_uxEventGroupGetNumberImpl+0x2a>
 805b3a6:	2301      	movs	r3, #1
 805b3a8:	e000      	b.n	805b3ac <MPU_uxEventGroupGetNumberImpl+0x2c>
 805b3aa:	2300      	movs	r3, #0
 805b3ac:	2b00      	cmp	r3, #0
 805b3ae:	d016      	beq.n	805b3de <MPU_uxEventGroupGetNumberImpl+0x5e>
 805b3b0:	68bb      	ldr	r3, [r7, #8]
 805b3b2:	3b01      	subs	r3, #1
 805b3b4:	4618      	mov	r0, r3
 805b3b6:	4b0c      	ldr	r3, [pc, #48]	; (805b3e8 <MPU_uxEventGroupGetNumberImpl+0x68>)
 805b3b8:	4798      	blx	r3
 805b3ba:	60f8      	str	r0, [r7, #12]
 805b3bc:	68fb      	ldr	r3, [r7, #12]
 805b3be:	2b01      	cmp	r3, #1
 805b3c0:	d10d      	bne.n	805b3de <MPU_uxEventGroupGetNumberImpl+0x5e>
 805b3c2:	68bb      	ldr	r3, [r7, #8]
 805b3c4:	3b01      	subs	r3, #1
 805b3c6:	2104      	movs	r1, #4
 805b3c8:	4618      	mov	r0, r3
 805b3ca:	f7fe fcab 	bl	8059d24 <MPU_GetHandleAtIndex>
 805b3ce:	6138      	str	r0, [r7, #16]
 805b3d0:	693b      	ldr	r3, [r7, #16]
 805b3d2:	2b00      	cmp	r3, #0
 805b3d4:	d003      	beq.n	805b3de <MPU_uxEventGroupGetNumberImpl+0x5e>
 805b3d6:	6938      	ldr	r0, [r7, #16]
 805b3d8:	4b04      	ldr	r3, [pc, #16]	; (805b3ec <MPU_uxEventGroupGetNumberImpl+0x6c>)
 805b3da:	4798      	blx	r3
 805b3dc:	6178      	str	r0, [r7, #20]
 805b3de:	697b      	ldr	r3, [r7, #20]
 805b3e0:	4618      	mov	r0, r3
 805b3e2:	3718      	adds	r7, #24
 805b3e4:	46bd      	mov	sp, r7
 805b3e6:	bd80      	pop	{r7, pc}
 805b3e8:	0805eafd 	.word	0x0805eafd
 805b3ec:	0805c2b5 	.word	0x0805c2b5

0805b3f0 <MPU_vEventGroupSetNumberImpl>:
 805b3f0:	b580      	push	{r7, lr}
 805b3f2:	b086      	sub	sp, #24
 805b3f4:	af00      	add	r7, sp, #0
 805b3f6:	6078      	str	r0, [r7, #4]
 805b3f8:	6039      	str	r1, [r7, #0]
 805b3fa:	2300      	movs	r3, #0
 805b3fc:	617b      	str	r3, [r7, #20]
 805b3fe:	2300      	movs	r3, #0
 805b400:	613b      	str	r3, [r7, #16]
 805b402:	687b      	ldr	r3, [r7, #4]
 805b404:	60fb      	str	r3, [r7, #12]
 805b406:	68fb      	ldr	r3, [r7, #12]
 805b408:	2b00      	cmp	r3, #0
 805b40a:	dd05      	ble.n	805b418 <MPU_vEventGroupSetNumberImpl+0x28>
 805b40c:	68fb      	ldr	r3, [r7, #12]
 805b40e:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805b412:	dc01      	bgt.n	805b418 <MPU_vEventGroupSetNumberImpl+0x28>
 805b414:	2301      	movs	r3, #1
 805b416:	e000      	b.n	805b41a <MPU_vEventGroupSetNumberImpl+0x2a>
 805b418:	2300      	movs	r3, #0
 805b41a:	2b00      	cmp	r3, #0
 805b41c:	d016      	beq.n	805b44c <MPU_vEventGroupSetNumberImpl+0x5c>
 805b41e:	68fb      	ldr	r3, [r7, #12]
 805b420:	3b01      	subs	r3, #1
 805b422:	4618      	mov	r0, r3
 805b424:	4b0b      	ldr	r3, [pc, #44]	; (805b454 <MPU_vEventGroupSetNumberImpl+0x64>)
 805b426:	4798      	blx	r3
 805b428:	6138      	str	r0, [r7, #16]
 805b42a:	693b      	ldr	r3, [r7, #16]
 805b42c:	2b01      	cmp	r3, #1
 805b42e:	d10d      	bne.n	805b44c <MPU_vEventGroupSetNumberImpl+0x5c>
 805b430:	68fb      	ldr	r3, [r7, #12]
 805b432:	3b01      	subs	r3, #1
 805b434:	2104      	movs	r1, #4
 805b436:	4618      	mov	r0, r3
 805b438:	f7fe fc74 	bl	8059d24 <MPU_GetHandleAtIndex>
 805b43c:	6178      	str	r0, [r7, #20]
 805b43e:	697b      	ldr	r3, [r7, #20]
 805b440:	2b00      	cmp	r3, #0
 805b442:	d003      	beq.n	805b44c <MPU_vEventGroupSetNumberImpl+0x5c>
 805b444:	6839      	ldr	r1, [r7, #0]
 805b446:	6978      	ldr	r0, [r7, #20]
 805b448:	4b03      	ldr	r3, [pc, #12]	; (805b458 <MPU_vEventGroupSetNumberImpl+0x68>)
 805b44a:	4798      	blx	r3
 805b44c:	bf00      	nop
 805b44e:	3718      	adds	r7, #24
 805b450:	46bd      	mov	sp, r7
 805b452:	bd80      	pop	{r7, pc}
 805b454:	0805eafd 	.word	0x0805eafd
 805b458:	0805c2df 	.word	0x0805c2df

0805b45c <MPU_xStreamBufferSendImpl>:
 805b45c:	b590      	push	{r4, r7, lr}
 805b45e:	b08b      	sub	sp, #44	; 0x2c
 805b460:	af00      	add	r7, sp, #0
 805b462:	60f8      	str	r0, [r7, #12]
 805b464:	60b9      	str	r1, [r7, #8]
 805b466:	607a      	str	r2, [r7, #4]
 805b468:	603b      	str	r3, [r7, #0]
 805b46a:	2300      	movs	r3, #0
 805b46c:	627b      	str	r3, [r7, #36]	; 0x24
 805b46e:	2300      	movs	r3, #0
 805b470:	623b      	str	r3, [r7, #32]
 805b472:	2300      	movs	r3, #0
 805b474:	61fb      	str	r3, [r7, #28]
 805b476:	2300      	movs	r3, #0
 805b478:	61bb      	str	r3, [r7, #24]
 805b47a:	68bb      	ldr	r3, [r7, #8]
 805b47c:	2b00      	cmp	r3, #0
 805b47e:	d030      	beq.n	805b4e2 <MPU_xStreamBufferSendImpl+0x86>
 805b480:	2201      	movs	r2, #1
 805b482:	6879      	ldr	r1, [r7, #4]
 805b484:	68b8      	ldr	r0, [r7, #8]
 805b486:	4b19      	ldr	r3, [pc, #100]	; (805b4ec <MPU_xStreamBufferSendImpl+0x90>)
 805b488:	4798      	blx	r3
 805b48a:	61f8      	str	r0, [r7, #28]
 805b48c:	69fb      	ldr	r3, [r7, #28]
 805b48e:	2b01      	cmp	r3, #1
 805b490:	d127      	bne.n	805b4e2 <MPU_xStreamBufferSendImpl+0x86>
 805b492:	68fb      	ldr	r3, [r7, #12]
 805b494:	617b      	str	r3, [r7, #20]
 805b496:	697b      	ldr	r3, [r7, #20]
 805b498:	2b00      	cmp	r3, #0
 805b49a:	dd05      	ble.n	805b4a8 <MPU_xStreamBufferSendImpl+0x4c>
 805b49c:	697b      	ldr	r3, [r7, #20]
 805b49e:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805b4a2:	dc01      	bgt.n	805b4a8 <MPU_xStreamBufferSendImpl+0x4c>
 805b4a4:	2301      	movs	r3, #1
 805b4a6:	e000      	b.n	805b4aa <MPU_xStreamBufferSendImpl+0x4e>
 805b4a8:	2300      	movs	r3, #0
 805b4aa:	2b00      	cmp	r3, #0
 805b4ac:	d019      	beq.n	805b4e2 <MPU_xStreamBufferSendImpl+0x86>
 805b4ae:	697b      	ldr	r3, [r7, #20]
 805b4b0:	3b01      	subs	r3, #1
 805b4b2:	4618      	mov	r0, r3
 805b4b4:	4b0e      	ldr	r3, [pc, #56]	; (805b4f0 <MPU_xStreamBufferSendImpl+0x94>)
 805b4b6:	4798      	blx	r3
 805b4b8:	61b8      	str	r0, [r7, #24]
 805b4ba:	69bb      	ldr	r3, [r7, #24]
 805b4bc:	2b01      	cmp	r3, #1
 805b4be:	d110      	bne.n	805b4e2 <MPU_xStreamBufferSendImpl+0x86>
 805b4c0:	697b      	ldr	r3, [r7, #20]
 805b4c2:	3b01      	subs	r3, #1
 805b4c4:	2103      	movs	r1, #3
 805b4c6:	4618      	mov	r0, r3
 805b4c8:	f7fe fc2c 	bl	8059d24 <MPU_GetHandleAtIndex>
 805b4cc:	6238      	str	r0, [r7, #32]
 805b4ce:	6a3b      	ldr	r3, [r7, #32]
 805b4d0:	2b00      	cmp	r3, #0
 805b4d2:	d006      	beq.n	805b4e2 <MPU_xStreamBufferSendImpl+0x86>
 805b4d4:	683b      	ldr	r3, [r7, #0]
 805b4d6:	687a      	ldr	r2, [r7, #4]
 805b4d8:	68b9      	ldr	r1, [r7, #8]
 805b4da:	6a38      	ldr	r0, [r7, #32]
 805b4dc:	4c05      	ldr	r4, [pc, #20]	; (805b4f4 <MPU_xStreamBufferSendImpl+0x98>)
 805b4de:	47a0      	blx	r4
 805b4e0:	6278      	str	r0, [r7, #36]	; 0x24
 805b4e2:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805b4e4:	4618      	mov	r0, r3
 805b4e6:	372c      	adds	r7, #44	; 0x2c
 805b4e8:	46bd      	mov	sp, r7
 805b4ea:	bd90      	pop	{r4, r7, pc}
 805b4ec:	0805ea15 	.word	0x0805ea15
 805b4f0:	0805eafd 	.word	0x0805eafd
 805b4f4:	0805d8f9 	.word	0x0805d8f9

0805b4f8 <MPU_xStreamBufferReceiveImpl>:
 805b4f8:	b590      	push	{r4, r7, lr}
 805b4fa:	b08b      	sub	sp, #44	; 0x2c
 805b4fc:	af00      	add	r7, sp, #0
 805b4fe:	60f8      	str	r0, [r7, #12]
 805b500:	60b9      	str	r1, [r7, #8]
 805b502:	607a      	str	r2, [r7, #4]
 805b504:	603b      	str	r3, [r7, #0]
 805b506:	2300      	movs	r3, #0
 805b508:	627b      	str	r3, [r7, #36]	; 0x24
 805b50a:	2300      	movs	r3, #0
 805b50c:	623b      	str	r3, [r7, #32]
 805b50e:	2300      	movs	r3, #0
 805b510:	61fb      	str	r3, [r7, #28]
 805b512:	2300      	movs	r3, #0
 805b514:	61bb      	str	r3, [r7, #24]
 805b516:	68bb      	ldr	r3, [r7, #8]
 805b518:	2b00      	cmp	r3, #0
 805b51a:	d030      	beq.n	805b57e <MPU_xStreamBufferReceiveImpl+0x86>
 805b51c:	2202      	movs	r2, #2
 805b51e:	6879      	ldr	r1, [r7, #4]
 805b520:	68b8      	ldr	r0, [r7, #8]
 805b522:	4b19      	ldr	r3, [pc, #100]	; (805b588 <MPU_xStreamBufferReceiveImpl+0x90>)
 805b524:	4798      	blx	r3
 805b526:	61f8      	str	r0, [r7, #28]
 805b528:	69fb      	ldr	r3, [r7, #28]
 805b52a:	2b01      	cmp	r3, #1
 805b52c:	d127      	bne.n	805b57e <MPU_xStreamBufferReceiveImpl+0x86>
 805b52e:	68fb      	ldr	r3, [r7, #12]
 805b530:	617b      	str	r3, [r7, #20]
 805b532:	697b      	ldr	r3, [r7, #20]
 805b534:	2b00      	cmp	r3, #0
 805b536:	dd05      	ble.n	805b544 <MPU_xStreamBufferReceiveImpl+0x4c>
 805b538:	697b      	ldr	r3, [r7, #20]
 805b53a:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805b53e:	dc01      	bgt.n	805b544 <MPU_xStreamBufferReceiveImpl+0x4c>
 805b540:	2301      	movs	r3, #1
 805b542:	e000      	b.n	805b546 <MPU_xStreamBufferReceiveImpl+0x4e>
 805b544:	2300      	movs	r3, #0
 805b546:	2b00      	cmp	r3, #0
 805b548:	d019      	beq.n	805b57e <MPU_xStreamBufferReceiveImpl+0x86>
 805b54a:	697b      	ldr	r3, [r7, #20]
 805b54c:	3b01      	subs	r3, #1
 805b54e:	4618      	mov	r0, r3
 805b550:	4b0e      	ldr	r3, [pc, #56]	; (805b58c <MPU_xStreamBufferReceiveImpl+0x94>)
 805b552:	4798      	blx	r3
 805b554:	61b8      	str	r0, [r7, #24]
 805b556:	69bb      	ldr	r3, [r7, #24]
 805b558:	2b01      	cmp	r3, #1
 805b55a:	d110      	bne.n	805b57e <MPU_xStreamBufferReceiveImpl+0x86>
 805b55c:	697b      	ldr	r3, [r7, #20]
 805b55e:	3b01      	subs	r3, #1
 805b560:	2103      	movs	r1, #3
 805b562:	4618      	mov	r0, r3
 805b564:	f7fe fbde 	bl	8059d24 <MPU_GetHandleAtIndex>
 805b568:	6238      	str	r0, [r7, #32]
 805b56a:	6a3b      	ldr	r3, [r7, #32]
 805b56c:	2b00      	cmp	r3, #0
 805b56e:	d006      	beq.n	805b57e <MPU_xStreamBufferReceiveImpl+0x86>
 805b570:	683b      	ldr	r3, [r7, #0]
 805b572:	687a      	ldr	r2, [r7, #4]
 805b574:	68b9      	ldr	r1, [r7, #8]
 805b576:	6a38      	ldr	r0, [r7, #32]
 805b578:	4c05      	ldr	r4, [pc, #20]	; (805b590 <MPU_xStreamBufferReceiveImpl+0x98>)
 805b57a:	47a0      	blx	r4
 805b57c:	6278      	str	r0, [r7, #36]	; 0x24
 805b57e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805b580:	4618      	mov	r0, r3
 805b582:	372c      	adds	r7, #44	; 0x2c
 805b584:	46bd      	mov	sp, r7
 805b586:	bd90      	pop	{r4, r7, pc}
 805b588:	0805ea15 	.word	0x0805ea15
 805b58c:	0805eafd 	.word	0x0805eafd
 805b590:	0805db39 	.word	0x0805db39

0805b594 <MPU_xStreamBufferIsFullImpl>:
 805b594:	b580      	push	{r7, lr}
 805b596:	b086      	sub	sp, #24
 805b598:	af00      	add	r7, sp, #0
 805b59a:	6078      	str	r0, [r7, #4]
 805b59c:	2300      	movs	r3, #0
 805b59e:	617b      	str	r3, [r7, #20]
 805b5a0:	2300      	movs	r3, #0
 805b5a2:	613b      	str	r3, [r7, #16]
 805b5a4:	2300      	movs	r3, #0
 805b5a6:	60fb      	str	r3, [r7, #12]
 805b5a8:	687b      	ldr	r3, [r7, #4]
 805b5aa:	60bb      	str	r3, [r7, #8]
 805b5ac:	68bb      	ldr	r3, [r7, #8]
 805b5ae:	2b00      	cmp	r3, #0
 805b5b0:	dd05      	ble.n	805b5be <MPU_xStreamBufferIsFullImpl+0x2a>
 805b5b2:	68bb      	ldr	r3, [r7, #8]
 805b5b4:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805b5b8:	dc01      	bgt.n	805b5be <MPU_xStreamBufferIsFullImpl+0x2a>
 805b5ba:	2301      	movs	r3, #1
 805b5bc:	e000      	b.n	805b5c0 <MPU_xStreamBufferIsFullImpl+0x2c>
 805b5be:	2300      	movs	r3, #0
 805b5c0:	2b00      	cmp	r3, #0
 805b5c2:	d016      	beq.n	805b5f2 <MPU_xStreamBufferIsFullImpl+0x5e>
 805b5c4:	68bb      	ldr	r3, [r7, #8]
 805b5c6:	3b01      	subs	r3, #1
 805b5c8:	4618      	mov	r0, r3
 805b5ca:	4b0c      	ldr	r3, [pc, #48]	; (805b5fc <MPU_xStreamBufferIsFullImpl+0x68>)
 805b5cc:	4798      	blx	r3
 805b5ce:	60f8      	str	r0, [r7, #12]
 805b5d0:	68fb      	ldr	r3, [r7, #12]
 805b5d2:	2b01      	cmp	r3, #1
 805b5d4:	d10d      	bne.n	805b5f2 <MPU_xStreamBufferIsFullImpl+0x5e>
 805b5d6:	68bb      	ldr	r3, [r7, #8]
 805b5d8:	3b01      	subs	r3, #1
 805b5da:	2103      	movs	r1, #3
 805b5dc:	4618      	mov	r0, r3
 805b5de:	f7fe fba1 	bl	8059d24 <MPU_GetHandleAtIndex>
 805b5e2:	6138      	str	r0, [r7, #16]
 805b5e4:	693b      	ldr	r3, [r7, #16]
 805b5e6:	2b00      	cmp	r3, #0
 805b5e8:	d003      	beq.n	805b5f2 <MPU_xStreamBufferIsFullImpl+0x5e>
 805b5ea:	6938      	ldr	r0, [r7, #16]
 805b5ec:	4b04      	ldr	r3, [pc, #16]	; (805b600 <MPU_xStreamBufferIsFullImpl+0x6c>)
 805b5ee:	4798      	blx	r3
 805b5f0:	6178      	str	r0, [r7, #20]
 805b5f2:	697b      	ldr	r3, [r7, #20]
 805b5f4:	4618      	mov	r0, r3
 805b5f6:	3718      	adds	r7, #24
 805b5f8:	46bd      	mov	sp, r7
 805b5fa:	bd80      	pop	{r7, pc}
 805b5fc:	0805eafd 	.word	0x0805eafd
 805b600:	0805dd59 	.word	0x0805dd59

0805b604 <MPU_xStreamBufferIsEmptyImpl>:
 805b604:	b580      	push	{r7, lr}
 805b606:	b086      	sub	sp, #24
 805b608:	af00      	add	r7, sp, #0
 805b60a:	6078      	str	r0, [r7, #4]
 805b60c:	2300      	movs	r3, #0
 805b60e:	617b      	str	r3, [r7, #20]
 805b610:	2300      	movs	r3, #0
 805b612:	613b      	str	r3, [r7, #16]
 805b614:	2300      	movs	r3, #0
 805b616:	60fb      	str	r3, [r7, #12]
 805b618:	687b      	ldr	r3, [r7, #4]
 805b61a:	60bb      	str	r3, [r7, #8]
 805b61c:	68bb      	ldr	r3, [r7, #8]
 805b61e:	2b00      	cmp	r3, #0
 805b620:	dd05      	ble.n	805b62e <MPU_xStreamBufferIsEmptyImpl+0x2a>
 805b622:	68bb      	ldr	r3, [r7, #8]
 805b624:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805b628:	dc01      	bgt.n	805b62e <MPU_xStreamBufferIsEmptyImpl+0x2a>
 805b62a:	2301      	movs	r3, #1
 805b62c:	e000      	b.n	805b630 <MPU_xStreamBufferIsEmptyImpl+0x2c>
 805b62e:	2300      	movs	r3, #0
 805b630:	2b00      	cmp	r3, #0
 805b632:	d016      	beq.n	805b662 <MPU_xStreamBufferIsEmptyImpl+0x5e>
 805b634:	68bb      	ldr	r3, [r7, #8]
 805b636:	3b01      	subs	r3, #1
 805b638:	4618      	mov	r0, r3
 805b63a:	4b0c      	ldr	r3, [pc, #48]	; (805b66c <MPU_xStreamBufferIsEmptyImpl+0x68>)
 805b63c:	4798      	blx	r3
 805b63e:	60f8      	str	r0, [r7, #12]
 805b640:	68fb      	ldr	r3, [r7, #12]
 805b642:	2b01      	cmp	r3, #1
 805b644:	d10d      	bne.n	805b662 <MPU_xStreamBufferIsEmptyImpl+0x5e>
 805b646:	68bb      	ldr	r3, [r7, #8]
 805b648:	3b01      	subs	r3, #1
 805b64a:	2103      	movs	r1, #3
 805b64c:	4618      	mov	r0, r3
 805b64e:	f7fe fb69 	bl	8059d24 <MPU_GetHandleAtIndex>
 805b652:	6138      	str	r0, [r7, #16]
 805b654:	693b      	ldr	r3, [r7, #16]
 805b656:	2b00      	cmp	r3, #0
 805b658:	d003      	beq.n	805b662 <MPU_xStreamBufferIsEmptyImpl+0x5e>
 805b65a:	6938      	ldr	r0, [r7, #16]
 805b65c:	4b04      	ldr	r3, [pc, #16]	; (805b670 <MPU_xStreamBufferIsEmptyImpl+0x6c>)
 805b65e:	4798      	blx	r3
 805b660:	6178      	str	r0, [r7, #20]
 805b662:	697b      	ldr	r3, [r7, #20]
 805b664:	4618      	mov	r0, r3
 805b666:	3718      	adds	r7, #24
 805b668:	46bd      	mov	sp, r7
 805b66a:	bd80      	pop	{r7, pc}
 805b66c:	0805eafd 	.word	0x0805eafd
 805b670:	0805ddad 	.word	0x0805ddad

0805b674 <MPU_xStreamBufferSpacesAvailableImpl>:
 805b674:	b580      	push	{r7, lr}
 805b676:	b086      	sub	sp, #24
 805b678:	af00      	add	r7, sp, #0
 805b67a:	6078      	str	r0, [r7, #4]
 805b67c:	2300      	movs	r3, #0
 805b67e:	617b      	str	r3, [r7, #20]
 805b680:	2300      	movs	r3, #0
 805b682:	613b      	str	r3, [r7, #16]
 805b684:	2300      	movs	r3, #0
 805b686:	60fb      	str	r3, [r7, #12]
 805b688:	687b      	ldr	r3, [r7, #4]
 805b68a:	60bb      	str	r3, [r7, #8]
 805b68c:	68bb      	ldr	r3, [r7, #8]
 805b68e:	2b00      	cmp	r3, #0
 805b690:	dd05      	ble.n	805b69e <MPU_xStreamBufferSpacesAvailableImpl+0x2a>
 805b692:	68bb      	ldr	r3, [r7, #8]
 805b694:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805b698:	dc01      	bgt.n	805b69e <MPU_xStreamBufferSpacesAvailableImpl+0x2a>
 805b69a:	2301      	movs	r3, #1
 805b69c:	e000      	b.n	805b6a0 <MPU_xStreamBufferSpacesAvailableImpl+0x2c>
 805b69e:	2300      	movs	r3, #0
 805b6a0:	2b00      	cmp	r3, #0
 805b6a2:	d016      	beq.n	805b6d2 <MPU_xStreamBufferSpacesAvailableImpl+0x5e>
 805b6a4:	68bb      	ldr	r3, [r7, #8]
 805b6a6:	3b01      	subs	r3, #1
 805b6a8:	4618      	mov	r0, r3
 805b6aa:	4b0c      	ldr	r3, [pc, #48]	; (805b6dc <MPU_xStreamBufferSpacesAvailableImpl+0x68>)
 805b6ac:	4798      	blx	r3
 805b6ae:	60f8      	str	r0, [r7, #12]
 805b6b0:	68fb      	ldr	r3, [r7, #12]
 805b6b2:	2b01      	cmp	r3, #1
 805b6b4:	d10d      	bne.n	805b6d2 <MPU_xStreamBufferSpacesAvailableImpl+0x5e>
 805b6b6:	68bb      	ldr	r3, [r7, #8]
 805b6b8:	3b01      	subs	r3, #1
 805b6ba:	2103      	movs	r1, #3
 805b6bc:	4618      	mov	r0, r3
 805b6be:	f7fe fb31 	bl	8059d24 <MPU_GetHandleAtIndex>
 805b6c2:	6138      	str	r0, [r7, #16]
 805b6c4:	693b      	ldr	r3, [r7, #16]
 805b6c6:	2b00      	cmp	r3, #0
 805b6c8:	d003      	beq.n	805b6d2 <MPU_xStreamBufferSpacesAvailableImpl+0x5e>
 805b6ca:	6938      	ldr	r0, [r7, #16]
 805b6cc:	4b04      	ldr	r3, [pc, #16]	; (805b6e0 <MPU_xStreamBufferSpacesAvailableImpl+0x6c>)
 805b6ce:	4798      	blx	r3
 805b6d0:	6178      	str	r0, [r7, #20]
 805b6d2:	697b      	ldr	r3, [r7, #20]
 805b6d4:	4618      	mov	r0, r3
 805b6d6:	3718      	adds	r7, #24
 805b6d8:	46bd      	mov	sp, r7
 805b6da:	bd80      	pop	{r7, pc}
 805b6dc:	0805eafd 	.word	0x0805eafd
 805b6e0:	0805de75 	.word	0x0805de75

0805b6e4 <MPU_xStreamBufferBytesAvailableImpl>:
 805b6e4:	b580      	push	{r7, lr}
 805b6e6:	b086      	sub	sp, #24
 805b6e8:	af00      	add	r7, sp, #0
 805b6ea:	6078      	str	r0, [r7, #4]
 805b6ec:	2300      	movs	r3, #0
 805b6ee:	617b      	str	r3, [r7, #20]
 805b6f0:	2300      	movs	r3, #0
 805b6f2:	613b      	str	r3, [r7, #16]
 805b6f4:	2300      	movs	r3, #0
 805b6f6:	60fb      	str	r3, [r7, #12]
 805b6f8:	687b      	ldr	r3, [r7, #4]
 805b6fa:	60bb      	str	r3, [r7, #8]
 805b6fc:	68bb      	ldr	r3, [r7, #8]
 805b6fe:	2b00      	cmp	r3, #0
 805b700:	dd05      	ble.n	805b70e <MPU_xStreamBufferBytesAvailableImpl+0x2a>
 805b702:	68bb      	ldr	r3, [r7, #8]
 805b704:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805b708:	dc01      	bgt.n	805b70e <MPU_xStreamBufferBytesAvailableImpl+0x2a>
 805b70a:	2301      	movs	r3, #1
 805b70c:	e000      	b.n	805b710 <MPU_xStreamBufferBytesAvailableImpl+0x2c>
 805b70e:	2300      	movs	r3, #0
 805b710:	2b00      	cmp	r3, #0
 805b712:	d016      	beq.n	805b742 <MPU_xStreamBufferBytesAvailableImpl+0x5e>
 805b714:	68bb      	ldr	r3, [r7, #8]
 805b716:	3b01      	subs	r3, #1
 805b718:	4618      	mov	r0, r3
 805b71a:	4b0c      	ldr	r3, [pc, #48]	; (805b74c <MPU_xStreamBufferBytesAvailableImpl+0x68>)
 805b71c:	4798      	blx	r3
 805b71e:	60f8      	str	r0, [r7, #12]
 805b720:	68fb      	ldr	r3, [r7, #12]
 805b722:	2b01      	cmp	r3, #1
 805b724:	d10d      	bne.n	805b742 <MPU_xStreamBufferBytesAvailableImpl+0x5e>
 805b726:	68bb      	ldr	r3, [r7, #8]
 805b728:	3b01      	subs	r3, #1
 805b72a:	2103      	movs	r1, #3
 805b72c:	4618      	mov	r0, r3
 805b72e:	f7fe faf9 	bl	8059d24 <MPU_GetHandleAtIndex>
 805b732:	6138      	str	r0, [r7, #16]
 805b734:	693b      	ldr	r3, [r7, #16]
 805b736:	2b00      	cmp	r3, #0
 805b738:	d003      	beq.n	805b742 <MPU_xStreamBufferBytesAvailableImpl+0x5e>
 805b73a:	6938      	ldr	r0, [r7, #16]
 805b73c:	4b04      	ldr	r3, [pc, #16]	; (805b750 <MPU_xStreamBufferBytesAvailableImpl+0x6c>)
 805b73e:	4798      	blx	r3
 805b740:	6178      	str	r0, [r7, #20]
 805b742:	697b      	ldr	r3, [r7, #20]
 805b744:	4618      	mov	r0, r3
 805b746:	3718      	adds	r7, #24
 805b748:	46bd      	mov	sp, r7
 805b74a:	bd80      	pop	{r7, pc}
 805b74c:	0805eafd 	.word	0x0805eafd
 805b750:	0805dedd 	.word	0x0805dedd

0805b754 <MPU_xStreamBufferSetTriggerLevelImpl>:
 805b754:	b580      	push	{r7, lr}
 805b756:	b086      	sub	sp, #24
 805b758:	af00      	add	r7, sp, #0
 805b75a:	6078      	str	r0, [r7, #4]
 805b75c:	6039      	str	r1, [r7, #0]
 805b75e:	2300      	movs	r3, #0
 805b760:	617b      	str	r3, [r7, #20]
 805b762:	2300      	movs	r3, #0
 805b764:	613b      	str	r3, [r7, #16]
 805b766:	2300      	movs	r3, #0
 805b768:	60fb      	str	r3, [r7, #12]
 805b76a:	687b      	ldr	r3, [r7, #4]
 805b76c:	60bb      	str	r3, [r7, #8]
 805b76e:	68bb      	ldr	r3, [r7, #8]
 805b770:	2b00      	cmp	r3, #0
 805b772:	dd05      	ble.n	805b780 <MPU_xStreamBufferSetTriggerLevelImpl+0x2c>
 805b774:	68bb      	ldr	r3, [r7, #8]
 805b776:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805b77a:	dc01      	bgt.n	805b780 <MPU_xStreamBufferSetTriggerLevelImpl+0x2c>
 805b77c:	2301      	movs	r3, #1
 805b77e:	e000      	b.n	805b782 <MPU_xStreamBufferSetTriggerLevelImpl+0x2e>
 805b780:	2300      	movs	r3, #0
 805b782:	2b00      	cmp	r3, #0
 805b784:	d017      	beq.n	805b7b6 <MPU_xStreamBufferSetTriggerLevelImpl+0x62>
 805b786:	68bb      	ldr	r3, [r7, #8]
 805b788:	3b01      	subs	r3, #1
 805b78a:	4618      	mov	r0, r3
 805b78c:	4b0c      	ldr	r3, [pc, #48]	; (805b7c0 <MPU_xStreamBufferSetTriggerLevelImpl+0x6c>)
 805b78e:	4798      	blx	r3
 805b790:	60f8      	str	r0, [r7, #12]
 805b792:	68fb      	ldr	r3, [r7, #12]
 805b794:	2b01      	cmp	r3, #1
 805b796:	d10e      	bne.n	805b7b6 <MPU_xStreamBufferSetTriggerLevelImpl+0x62>
 805b798:	68bb      	ldr	r3, [r7, #8]
 805b79a:	3b01      	subs	r3, #1
 805b79c:	2103      	movs	r1, #3
 805b79e:	4618      	mov	r0, r3
 805b7a0:	f7fe fac0 	bl	8059d24 <MPU_GetHandleAtIndex>
 805b7a4:	6138      	str	r0, [r7, #16]
 805b7a6:	693b      	ldr	r3, [r7, #16]
 805b7a8:	2b00      	cmp	r3, #0
 805b7aa:	d004      	beq.n	805b7b6 <MPU_xStreamBufferSetTriggerLevelImpl+0x62>
 805b7ac:	6839      	ldr	r1, [r7, #0]
 805b7ae:	6938      	ldr	r0, [r7, #16]
 805b7b0:	4b04      	ldr	r3, [pc, #16]	; (805b7c4 <MPU_xStreamBufferSetTriggerLevelImpl+0x70>)
 805b7b2:	4798      	blx	r3
 805b7b4:	6178      	str	r0, [r7, #20]
 805b7b6:	697b      	ldr	r3, [r7, #20]
 805b7b8:	4618      	mov	r0, r3
 805b7ba:	3718      	adds	r7, #24
 805b7bc:	46bd      	mov	sp, r7
 805b7be:	bd80      	pop	{r7, pc}
 805b7c0:	0805eafd 	.word	0x0805eafd
 805b7c4:	0805df0d 	.word	0x0805df0d

0805b7c8 <MPU_xStreamBufferNextMessageLengthBytesImpl>:
 805b7c8:	b580      	push	{r7, lr}
 805b7ca:	b086      	sub	sp, #24
 805b7cc:	af00      	add	r7, sp, #0
 805b7ce:	6078      	str	r0, [r7, #4]
 805b7d0:	2300      	movs	r3, #0
 805b7d2:	617b      	str	r3, [r7, #20]
 805b7d4:	2300      	movs	r3, #0
 805b7d6:	613b      	str	r3, [r7, #16]
 805b7d8:	2300      	movs	r3, #0
 805b7da:	60fb      	str	r3, [r7, #12]
 805b7dc:	687b      	ldr	r3, [r7, #4]
 805b7de:	60bb      	str	r3, [r7, #8]
 805b7e0:	68bb      	ldr	r3, [r7, #8]
 805b7e2:	2b00      	cmp	r3, #0
 805b7e4:	dd05      	ble.n	805b7f2 <MPU_xStreamBufferNextMessageLengthBytesImpl+0x2a>
 805b7e6:	68bb      	ldr	r3, [r7, #8]
 805b7e8:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 805b7ec:	dc01      	bgt.n	805b7f2 <MPU_xStreamBufferNextMessageLengthBytesImpl+0x2a>
 805b7ee:	2301      	movs	r3, #1
 805b7f0:	e000      	b.n	805b7f4 <MPU_xStreamBufferNextMessageLengthBytesImpl+0x2c>
 805b7f2:	2300      	movs	r3, #0
 805b7f4:	2b00      	cmp	r3, #0
 805b7f6:	d016      	beq.n	805b826 <MPU_xStreamBufferNextMessageLengthBytesImpl+0x5e>
 805b7f8:	68bb      	ldr	r3, [r7, #8]
 805b7fa:	3b01      	subs	r3, #1
 805b7fc:	4618      	mov	r0, r3
 805b7fe:	4b0c      	ldr	r3, [pc, #48]	; (805b830 <MPU_xStreamBufferNextMessageLengthBytesImpl+0x68>)
 805b800:	4798      	blx	r3
 805b802:	60f8      	str	r0, [r7, #12]
 805b804:	68fb      	ldr	r3, [r7, #12]
 805b806:	2b01      	cmp	r3, #1
 805b808:	d10d      	bne.n	805b826 <MPU_xStreamBufferNextMessageLengthBytesImpl+0x5e>
 805b80a:	68bb      	ldr	r3, [r7, #8]
 805b80c:	3b01      	subs	r3, #1
 805b80e:	2103      	movs	r1, #3
 805b810:	4618      	mov	r0, r3
 805b812:	f7fe fa87 	bl	8059d24 <MPU_GetHandleAtIndex>
 805b816:	6138      	str	r0, [r7, #16]
 805b818:	693b      	ldr	r3, [r7, #16]
 805b81a:	2b00      	cmp	r3, #0
 805b81c:	d003      	beq.n	805b826 <MPU_xStreamBufferNextMessageLengthBytesImpl+0x5e>
 805b81e:	6938      	ldr	r0, [r7, #16]
 805b820:	4b04      	ldr	r3, [pc, #16]	; (805b834 <MPU_xStreamBufferNextMessageLengthBytesImpl+0x6c>)
 805b822:	4798      	blx	r3
 805b824:	6178      	str	r0, [r7, #20]
 805b826:	697b      	ldr	r3, [r7, #20]
 805b828:	4618      	mov	r0, r3
 805b82a:	3718      	adds	r7, #24
 805b82c:	46bd      	mov	sp, r7
 805b82e:	bd80      	pop	{r7, pc}
 805b830:	0805eafd 	.word	0x0805eafd
 805b834:	0805e0d1 	.word	0x0805e0d1

0805b838 <pvPortMalloc>:
 805b838:	b580      	push	{r7, lr}
 805b83a:	b088      	sub	sp, #32
 805b83c:	af00      	add	r7, sp, #0
 805b83e:	6078      	str	r0, [r7, #4]
 805b840:	2300      	movs	r3, #0
 805b842:	617b      	str	r3, [r7, #20]
 805b844:	687b      	ldr	r3, [r7, #4]
 805b846:	2b00      	cmp	r3, #0
 805b848:	d022      	beq.n	805b890 <pvPortMalloc+0x58>
 805b84a:	2308      	movs	r3, #8
 805b84c:	43db      	mvns	r3, r3
 805b84e:	687a      	ldr	r2, [r7, #4]
 805b850:	429a      	cmp	r2, r3
 805b852:	d81b      	bhi.n	805b88c <pvPortMalloc+0x54>
 805b854:	2208      	movs	r2, #8
 805b856:	687b      	ldr	r3, [r7, #4]
 805b858:	4413      	add	r3, r2
 805b85a:	607b      	str	r3, [r7, #4]
 805b85c:	687b      	ldr	r3, [r7, #4]
 805b85e:	f003 0307 	and.w	r3, r3, #7
 805b862:	2b00      	cmp	r3, #0
 805b864:	d014      	beq.n	805b890 <pvPortMalloc+0x58>
 805b866:	687b      	ldr	r3, [r7, #4]
 805b868:	f003 0307 	and.w	r3, r3, #7
 805b86c:	f1c3 0308 	rsb	r3, r3, #8
 805b870:	613b      	str	r3, [r7, #16]
 805b872:	693b      	ldr	r3, [r7, #16]
 805b874:	43db      	mvns	r3, r3
 805b876:	687a      	ldr	r2, [r7, #4]
 805b878:	429a      	cmp	r2, r3
 805b87a:	d804      	bhi.n	805b886 <pvPortMalloc+0x4e>
 805b87c:	687a      	ldr	r2, [r7, #4]
 805b87e:	693b      	ldr	r3, [r7, #16]
 805b880:	4413      	add	r3, r2
 805b882:	607b      	str	r3, [r7, #4]
 805b884:	e004      	b.n	805b890 <pvPortMalloc+0x58>
 805b886:	2300      	movs	r3, #0
 805b888:	607b      	str	r3, [r7, #4]
 805b88a:	e001      	b.n	805b890 <pvPortMalloc+0x58>
 805b88c:	2300      	movs	r3, #0
 805b88e:	607b      	str	r3, [r7, #4]
 805b890:	4b60      	ldr	r3, [pc, #384]	; (805ba14 <pvPortMalloc+0x1dc>)
 805b892:	4798      	blx	r3
 805b894:	4b60      	ldr	r3, [pc, #384]	; (805ba18 <pvPortMalloc+0x1e0>)
 805b896:	681b      	ldr	r3, [r3, #0]
 805b898:	2b00      	cmp	r3, #0
 805b89a:	d101      	bne.n	805b8a0 <pvPortMalloc+0x68>
 805b89c:	f000 f9f2 	bl	805bc84 <prvHeapInit>
 805b8a0:	687b      	ldr	r3, [r7, #4]
 805b8a2:	2b00      	cmp	r3, #0
 805b8a4:	f2c0 80a6 	blt.w	805b9f4 <pvPortMalloc+0x1bc>
 805b8a8:	687b      	ldr	r3, [r7, #4]
 805b8aa:	2b00      	cmp	r3, #0
 805b8ac:	f000 80a2 	beq.w	805b9f4 <pvPortMalloc+0x1bc>
 805b8b0:	4b5a      	ldr	r3, [pc, #360]	; (805ba1c <pvPortMalloc+0x1e4>)
 805b8b2:	681b      	ldr	r3, [r3, #0]
 805b8b4:	687a      	ldr	r2, [r7, #4]
 805b8b6:	429a      	cmp	r2, r3
 805b8b8:	f200 809c 	bhi.w	805b9f4 <pvPortMalloc+0x1bc>
 805b8bc:	4b58      	ldr	r3, [pc, #352]	; (805ba20 <pvPortMalloc+0x1e8>)
 805b8be:	61bb      	str	r3, [r7, #24]
 805b8c0:	4b57      	ldr	r3, [pc, #348]	; (805ba20 <pvPortMalloc+0x1e8>)
 805b8c2:	681b      	ldr	r3, [r3, #0]
 805b8c4:	61fb      	str	r3, [r7, #28]
 805b8c6:	69fb      	ldr	r3, [r7, #28]
 805b8c8:	4a56      	ldr	r2, [pc, #344]	; (805ba24 <pvPortMalloc+0x1ec>)
 805b8ca:	4293      	cmp	r3, r2
 805b8cc:	d305      	bcc.n	805b8da <pvPortMalloc+0xa2>
 805b8ce:	69fb      	ldr	r3, [r7, #28]
 805b8d0:	4a55      	ldr	r2, [pc, #340]	; (805ba28 <pvPortMalloc+0x1f0>)
 805b8d2:	4293      	cmp	r3, r2
 805b8d4:	d801      	bhi.n	805b8da <pvPortMalloc+0xa2>
 805b8d6:	2301      	movs	r3, #1
 805b8d8:	e000      	b.n	805b8dc <pvPortMalloc+0xa4>
 805b8da:	2300      	movs	r3, #0
 805b8dc:	2b00      	cmp	r3, #0
 805b8de:	d117      	bne.n	805b910 <pvPortMalloc+0xd8>
 805b8e0:	4b52      	ldr	r3, [pc, #328]	; (805ba2c <pvPortMalloc+0x1f4>)
 805b8e2:	4798      	blx	r3
 805b8e4:	e7fe      	b.n	805b8e4 <pvPortMalloc+0xac>
 805b8e6:	69fb      	ldr	r3, [r7, #28]
 805b8e8:	61bb      	str	r3, [r7, #24]
 805b8ea:	69fb      	ldr	r3, [r7, #28]
 805b8ec:	681b      	ldr	r3, [r3, #0]
 805b8ee:	61fb      	str	r3, [r7, #28]
 805b8f0:	69fb      	ldr	r3, [r7, #28]
 805b8f2:	4a4c      	ldr	r2, [pc, #304]	; (805ba24 <pvPortMalloc+0x1ec>)
 805b8f4:	4293      	cmp	r3, r2
 805b8f6:	d305      	bcc.n	805b904 <pvPortMalloc+0xcc>
 805b8f8:	69fb      	ldr	r3, [r7, #28]
 805b8fa:	4a4b      	ldr	r2, [pc, #300]	; (805ba28 <pvPortMalloc+0x1f0>)
 805b8fc:	4293      	cmp	r3, r2
 805b8fe:	d801      	bhi.n	805b904 <pvPortMalloc+0xcc>
 805b900:	2301      	movs	r3, #1
 805b902:	e000      	b.n	805b906 <pvPortMalloc+0xce>
 805b904:	2300      	movs	r3, #0
 805b906:	2b00      	cmp	r3, #0
 805b908:	d102      	bne.n	805b910 <pvPortMalloc+0xd8>
 805b90a:	4b48      	ldr	r3, [pc, #288]	; (805ba2c <pvPortMalloc+0x1f4>)
 805b90c:	4798      	blx	r3
 805b90e:	e7fe      	b.n	805b90e <pvPortMalloc+0xd6>
 805b910:	69fb      	ldr	r3, [r7, #28]
 805b912:	685b      	ldr	r3, [r3, #4]
 805b914:	687a      	ldr	r2, [r7, #4]
 805b916:	429a      	cmp	r2, r3
 805b918:	d903      	bls.n	805b922 <pvPortMalloc+0xea>
 805b91a:	69fb      	ldr	r3, [r7, #28]
 805b91c:	681b      	ldr	r3, [r3, #0]
 805b91e:	2b00      	cmp	r3, #0
 805b920:	d1e1      	bne.n	805b8e6 <pvPortMalloc+0xae>
 805b922:	4b3d      	ldr	r3, [pc, #244]	; (805ba18 <pvPortMalloc+0x1e0>)
 805b924:	681b      	ldr	r3, [r3, #0]
 805b926:	69fa      	ldr	r2, [r7, #28]
 805b928:	429a      	cmp	r2, r3
 805b92a:	d063      	beq.n	805b9f4 <pvPortMalloc+0x1bc>
 805b92c:	69bb      	ldr	r3, [r7, #24]
 805b92e:	681b      	ldr	r3, [r3, #0]
 805b930:	2208      	movs	r2, #8
 805b932:	4413      	add	r3, r2
 805b934:	617b      	str	r3, [r7, #20]
 805b936:	697b      	ldr	r3, [r7, #20]
 805b938:	4a3a      	ldr	r2, [pc, #232]	; (805ba24 <pvPortMalloc+0x1ec>)
 805b93a:	4293      	cmp	r3, r2
 805b93c:	d305      	bcc.n	805b94a <pvPortMalloc+0x112>
 805b93e:	697b      	ldr	r3, [r7, #20]
 805b940:	4a39      	ldr	r2, [pc, #228]	; (805ba28 <pvPortMalloc+0x1f0>)
 805b942:	4293      	cmp	r3, r2
 805b944:	d801      	bhi.n	805b94a <pvPortMalloc+0x112>
 805b946:	2301      	movs	r3, #1
 805b948:	e000      	b.n	805b94c <pvPortMalloc+0x114>
 805b94a:	2300      	movs	r3, #0
 805b94c:	2b00      	cmp	r3, #0
 805b94e:	d102      	bne.n	805b956 <pvPortMalloc+0x11e>
 805b950:	4b36      	ldr	r3, [pc, #216]	; (805ba2c <pvPortMalloc+0x1f4>)
 805b952:	4798      	blx	r3
 805b954:	e7fe      	b.n	805b954 <pvPortMalloc+0x11c>
 805b956:	69fb      	ldr	r3, [r7, #28]
 805b958:	681a      	ldr	r2, [r3, #0]
 805b95a:	69bb      	ldr	r3, [r7, #24]
 805b95c:	601a      	str	r2, [r3, #0]
 805b95e:	69fb      	ldr	r3, [r7, #28]
 805b960:	685b      	ldr	r3, [r3, #4]
 805b962:	687a      	ldr	r2, [r7, #4]
 805b964:	429a      	cmp	r2, r3
 805b966:	d902      	bls.n	805b96e <pvPortMalloc+0x136>
 805b968:	4b30      	ldr	r3, [pc, #192]	; (805ba2c <pvPortMalloc+0x1f4>)
 805b96a:	4798      	blx	r3
 805b96c:	e7fe      	b.n	805b96c <pvPortMalloc+0x134>
 805b96e:	69fb      	ldr	r3, [r7, #28]
 805b970:	685a      	ldr	r2, [r3, #4]
 805b972:	687b      	ldr	r3, [r7, #4]
 805b974:	1ad2      	subs	r2, r2, r3
 805b976:	2308      	movs	r3, #8
 805b978:	005b      	lsls	r3, r3, #1
 805b97a:	429a      	cmp	r2, r3
 805b97c:	d91b      	bls.n	805b9b6 <pvPortMalloc+0x17e>
 805b97e:	69fa      	ldr	r2, [r7, #28]
 805b980:	687b      	ldr	r3, [r7, #4]
 805b982:	4413      	add	r3, r2
 805b984:	60fb      	str	r3, [r7, #12]
 805b986:	68fb      	ldr	r3, [r7, #12]
 805b988:	f003 0307 	and.w	r3, r3, #7
 805b98c:	2b00      	cmp	r3, #0
 805b98e:	d002      	beq.n	805b996 <pvPortMalloc+0x15e>
 805b990:	4b26      	ldr	r3, [pc, #152]	; (805ba2c <pvPortMalloc+0x1f4>)
 805b992:	4798      	blx	r3
 805b994:	e7fe      	b.n	805b994 <pvPortMalloc+0x15c>
 805b996:	69fb      	ldr	r3, [r7, #28]
 805b998:	685a      	ldr	r2, [r3, #4]
 805b99a:	687b      	ldr	r3, [r7, #4]
 805b99c:	1ad2      	subs	r2, r2, r3
 805b99e:	68fb      	ldr	r3, [r7, #12]
 805b9a0:	605a      	str	r2, [r3, #4]
 805b9a2:	69fb      	ldr	r3, [r7, #28]
 805b9a4:	687a      	ldr	r2, [r7, #4]
 805b9a6:	605a      	str	r2, [r3, #4]
 805b9a8:	69bb      	ldr	r3, [r7, #24]
 805b9aa:	681a      	ldr	r2, [r3, #0]
 805b9ac:	68fb      	ldr	r3, [r7, #12]
 805b9ae:	601a      	str	r2, [r3, #0]
 805b9b0:	69bb      	ldr	r3, [r7, #24]
 805b9b2:	68fa      	ldr	r2, [r7, #12]
 805b9b4:	601a      	str	r2, [r3, #0]
 805b9b6:	4b19      	ldr	r3, [pc, #100]	; (805ba1c <pvPortMalloc+0x1e4>)
 805b9b8:	681a      	ldr	r2, [r3, #0]
 805b9ba:	69fb      	ldr	r3, [r7, #28]
 805b9bc:	685b      	ldr	r3, [r3, #4]
 805b9be:	1ad3      	subs	r3, r2, r3
 805b9c0:	4a16      	ldr	r2, [pc, #88]	; (805ba1c <pvPortMalloc+0x1e4>)
 805b9c2:	6013      	str	r3, [r2, #0]
 805b9c4:	4b15      	ldr	r3, [pc, #84]	; (805ba1c <pvPortMalloc+0x1e4>)
 805b9c6:	681a      	ldr	r2, [r3, #0]
 805b9c8:	4b19      	ldr	r3, [pc, #100]	; (805ba30 <pvPortMalloc+0x1f8>)
 805b9ca:	681b      	ldr	r3, [r3, #0]
 805b9cc:	429a      	cmp	r2, r3
 805b9ce:	d203      	bcs.n	805b9d8 <pvPortMalloc+0x1a0>
 805b9d0:	4b12      	ldr	r3, [pc, #72]	; (805ba1c <pvPortMalloc+0x1e4>)
 805b9d2:	681b      	ldr	r3, [r3, #0]
 805b9d4:	4a16      	ldr	r2, [pc, #88]	; (805ba30 <pvPortMalloc+0x1f8>)
 805b9d6:	6013      	str	r3, [r2, #0]
 805b9d8:	69fb      	ldr	r3, [r7, #28]
 805b9da:	685b      	ldr	r3, [r3, #4]
 805b9dc:	f043 4200 	orr.w	r2, r3, #2147483648	; 0x80000000
 805b9e0:	69fb      	ldr	r3, [r7, #28]
 805b9e2:	605a      	str	r2, [r3, #4]
 805b9e4:	69fb      	ldr	r3, [r7, #28]
 805b9e6:	2200      	movs	r2, #0
 805b9e8:	601a      	str	r2, [r3, #0]
 805b9ea:	4b12      	ldr	r3, [pc, #72]	; (805ba34 <pvPortMalloc+0x1fc>)
 805b9ec:	681b      	ldr	r3, [r3, #0]
 805b9ee:	3301      	adds	r3, #1
 805b9f0:	4a10      	ldr	r2, [pc, #64]	; (805ba34 <pvPortMalloc+0x1fc>)
 805b9f2:	6013      	str	r3, [r2, #0]
 805b9f4:	4b10      	ldr	r3, [pc, #64]	; (805ba38 <pvPortMalloc+0x200>)
 805b9f6:	4798      	blx	r3
 805b9f8:	697b      	ldr	r3, [r7, #20]
 805b9fa:	f003 0307 	and.w	r3, r3, #7
 805b9fe:	2b00      	cmp	r3, #0
 805ba00:	d002      	beq.n	805ba08 <pvPortMalloc+0x1d0>
 805ba02:	4b0a      	ldr	r3, [pc, #40]	; (805ba2c <pvPortMalloc+0x1f4>)
 805ba04:	4798      	blx	r3
 805ba06:	e7fe      	b.n	805ba06 <pvPortMalloc+0x1ce>
 805ba08:	697b      	ldr	r3, [r7, #20]
 805ba0a:	4618      	mov	r0, r3
 805ba0c:	3720      	adds	r7, #32
 805ba0e:	46bd      	mov	sp, r7
 805ba10:	bd80      	pop	{r7, pc}
 805ba12:	bf00      	nop
 805ba14:	08055dbd 	.word	0x08055dbd
 805ba18:	20003b24 	.word	0x20003b24
 805ba1c:	20003b28 	.word	0x20003b28
 805ba20:	20003b1c 	.word	0x20003b1c
 805ba24:	20001b1c 	.word	0x20001b1c
 805ba28:	20003b1b 	.word	0x20003b1b
 805ba2c:	0805f1c7 	.word	0x0805f1c7
 805ba30:	20003b2c 	.word	0x20003b2c
 805ba34:	20003b30 	.word	0x20003b30
 805ba38:	08055dd9 	.word	0x08055dd9

0805ba3c <pvPortCalloc>:
 805ba3c:	b580      	push	{r7, lr}
 805ba3e:	b084      	sub	sp, #16
 805ba40:	af00      	add	r7, sp, #0
 805ba42:	6078      	str	r0, [r7, #4]
 805ba44:	6039      	str	r1, [r7, #0]
 805ba46:	2300      	movs	r3, #0
 805ba48:	60fb      	str	r3, [r7, #12]
 805ba4a:	687b      	ldr	r3, [r7, #4]
 805ba4c:	2b00      	cmp	r3, #0
 805ba4e:	d009      	beq.n	805ba64 <pvPortCalloc+0x28>
 805ba50:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 805ba54:	687b      	ldr	r3, [r7, #4]
 805ba56:	fbb2 f3f3 	udiv	r3, r2, r3
 805ba5a:	683a      	ldr	r2, [r7, #0]
 805ba5c:	429a      	cmp	r2, r3
 805ba5e:	d901      	bls.n	805ba64 <pvPortCalloc+0x28>
 805ba60:	2301      	movs	r3, #1
 805ba62:	e000      	b.n	805ba66 <pvPortCalloc+0x2a>
 805ba64:	2300      	movs	r3, #0
 805ba66:	2b00      	cmp	r3, #0
 805ba68:	d113      	bne.n	805ba92 <pvPortCalloc+0x56>
 805ba6a:	687b      	ldr	r3, [r7, #4]
 805ba6c:	683a      	ldr	r2, [r7, #0]
 805ba6e:	fb02 f303 	mul.w	r3, r2, r3
 805ba72:	4618      	mov	r0, r3
 805ba74:	f7ff fee0 	bl	805b838 <pvPortMalloc>
 805ba78:	60f8      	str	r0, [r7, #12]
 805ba7a:	68fb      	ldr	r3, [r7, #12]
 805ba7c:	2b00      	cmp	r3, #0
 805ba7e:	d008      	beq.n	805ba92 <pvPortCalloc+0x56>
 805ba80:	687b      	ldr	r3, [r7, #4]
 805ba82:	683a      	ldr	r2, [r7, #0]
 805ba84:	fb02 f303 	mul.w	r3, r2, r3
 805ba88:	461a      	mov	r2, r3
 805ba8a:	2100      	movs	r1, #0
 805ba8c:	68f8      	ldr	r0, [r7, #12]
 805ba8e:	4b03      	ldr	r3, [pc, #12]	; (805ba9c <pvPortCalloc+0x60>)
 805ba90:	4798      	blx	r3
 805ba92:	68fb      	ldr	r3, [r7, #12]
 805ba94:	4618      	mov	r0, r3
 805ba96:	3710      	adds	r7, #16
 805ba98:	46bd      	mov	sp, r7
 805ba9a:	bd80      	pop	{r7, pc}
 805ba9c:	080609f1 	.word	0x080609f1

0805baa0 <vPortFree>:
 805baa0:	b580      	push	{r7, lr}
 805baa2:	b084      	sub	sp, #16
 805baa4:	af00      	add	r7, sp, #0
 805baa6:	6078      	str	r0, [r7, #4]
 805baa8:	687b      	ldr	r3, [r7, #4]
 805baaa:	60fb      	str	r3, [r7, #12]
 805baac:	687b      	ldr	r3, [r7, #4]
 805baae:	2b00      	cmp	r3, #0
 805bab0:	d049      	beq.n	805bb46 <vPortFree+0xa6>
 805bab2:	2308      	movs	r3, #8
 805bab4:	425b      	negs	r3, r3
 805bab6:	68fa      	ldr	r2, [r7, #12]
 805bab8:	4413      	add	r3, r2
 805baba:	60fb      	str	r3, [r7, #12]
 805babc:	68fb      	ldr	r3, [r7, #12]
 805babe:	60bb      	str	r3, [r7, #8]
 805bac0:	68bb      	ldr	r3, [r7, #8]
 805bac2:	4a23      	ldr	r2, [pc, #140]	; (805bb50 <vPortFree+0xb0>)
 805bac4:	4293      	cmp	r3, r2
 805bac6:	d305      	bcc.n	805bad4 <vPortFree+0x34>
 805bac8:	68bb      	ldr	r3, [r7, #8]
 805baca:	4a22      	ldr	r2, [pc, #136]	; (805bb54 <vPortFree+0xb4>)
 805bacc:	4293      	cmp	r3, r2
 805bace:	d801      	bhi.n	805bad4 <vPortFree+0x34>
 805bad0:	2301      	movs	r3, #1
 805bad2:	e000      	b.n	805bad6 <vPortFree+0x36>
 805bad4:	2300      	movs	r3, #0
 805bad6:	2b00      	cmp	r3, #0
 805bad8:	d102      	bne.n	805bae0 <vPortFree+0x40>
 805bada:	4b1f      	ldr	r3, [pc, #124]	; (805bb58 <vPortFree+0xb8>)
 805badc:	4798      	blx	r3
 805bade:	e7fe      	b.n	805bade <vPortFree+0x3e>
 805bae0:	68bb      	ldr	r3, [r7, #8]
 805bae2:	685b      	ldr	r3, [r3, #4]
 805bae4:	2b00      	cmp	r3, #0
 805bae6:	db02      	blt.n	805baee <vPortFree+0x4e>
 805bae8:	4b1b      	ldr	r3, [pc, #108]	; (805bb58 <vPortFree+0xb8>)
 805baea:	4798      	blx	r3
 805baec:	e7fe      	b.n	805baec <vPortFree+0x4c>
 805baee:	68bb      	ldr	r3, [r7, #8]
 805baf0:	681b      	ldr	r3, [r3, #0]
 805baf2:	2b00      	cmp	r3, #0
 805baf4:	d002      	beq.n	805bafc <vPortFree+0x5c>
 805baf6:	4b18      	ldr	r3, [pc, #96]	; (805bb58 <vPortFree+0xb8>)
 805baf8:	4798      	blx	r3
 805bafa:	e7fe      	b.n	805bafa <vPortFree+0x5a>
 805bafc:	68bb      	ldr	r3, [r7, #8]
 805bafe:	685b      	ldr	r3, [r3, #4]
 805bb00:	0fdb      	lsrs	r3, r3, #31
 805bb02:	f003 0301 	and.w	r3, r3, #1
 805bb06:	b2db      	uxtb	r3, r3
 805bb08:	2b00      	cmp	r3, #0
 805bb0a:	d01c      	beq.n	805bb46 <vPortFree+0xa6>
 805bb0c:	68bb      	ldr	r3, [r7, #8]
 805bb0e:	681b      	ldr	r3, [r3, #0]
 805bb10:	2b00      	cmp	r3, #0
 805bb12:	d118      	bne.n	805bb46 <vPortFree+0xa6>
 805bb14:	68bb      	ldr	r3, [r7, #8]
 805bb16:	685b      	ldr	r3, [r3, #4]
 805bb18:	f023 4200 	bic.w	r2, r3, #2147483648	; 0x80000000
 805bb1c:	68bb      	ldr	r3, [r7, #8]
 805bb1e:	605a      	str	r2, [r3, #4]
 805bb20:	4b0e      	ldr	r3, [pc, #56]	; (805bb5c <vPortFree+0xbc>)
 805bb22:	4798      	blx	r3
 805bb24:	68bb      	ldr	r3, [r7, #8]
 805bb26:	685a      	ldr	r2, [r3, #4]
 805bb28:	4b0d      	ldr	r3, [pc, #52]	; (805bb60 <vPortFree+0xc0>)
 805bb2a:	681b      	ldr	r3, [r3, #0]
 805bb2c:	4413      	add	r3, r2
 805bb2e:	4a0c      	ldr	r2, [pc, #48]	; (805bb60 <vPortFree+0xc0>)
 805bb30:	6013      	str	r3, [r2, #0]
 805bb32:	68b8      	ldr	r0, [r7, #8]
 805bb34:	f000 f834 	bl	805bba0 <prvInsertBlockIntoFreeList>
 805bb38:	4b0a      	ldr	r3, [pc, #40]	; (805bb64 <vPortFree+0xc4>)
 805bb3a:	681b      	ldr	r3, [r3, #0]
 805bb3c:	3301      	adds	r3, #1
 805bb3e:	4a09      	ldr	r2, [pc, #36]	; (805bb64 <vPortFree+0xc4>)
 805bb40:	6013      	str	r3, [r2, #0]
 805bb42:	4b09      	ldr	r3, [pc, #36]	; (805bb68 <vPortFree+0xc8>)
 805bb44:	4798      	blx	r3
 805bb46:	bf00      	nop
 805bb48:	3710      	adds	r7, #16
 805bb4a:	46bd      	mov	sp, r7
 805bb4c:	bd80      	pop	{r7, pc}
 805bb4e:	bf00      	nop
 805bb50:	20001b1c 	.word	0x20001b1c
 805bb54:	20003b1b 	.word	0x20003b1b
 805bb58:	0805f1c7 	.word	0x0805f1c7
 805bb5c:	08055dbd 	.word	0x08055dbd
 805bb60:	20003b28 	.word	0x20003b28
 805bb64:	20003b34 	.word	0x20003b34
 805bb68:	08055dd9 	.word	0x08055dd9

0805bb6c <vPortInitialiseBlocks>:
 805bb6c:	b480      	push	{r7}
 805bb6e:	af00      	add	r7, sp, #0
 805bb70:	bf00      	nop
 805bb72:	46bd      	mov	sp, r7
 805bb74:	bc80      	pop	{r7}
 805bb76:	4770      	bx	lr

0805bb78 <xPortGetFreeHeapSize>:
 805bb78:	b480      	push	{r7}
 805bb7a:	af00      	add	r7, sp, #0
 805bb7c:	4b02      	ldr	r3, [pc, #8]	; (805bb88 <xPortGetFreeHeapSize+0x10>)
 805bb7e:	681b      	ldr	r3, [r3, #0]
 805bb80:	4618      	mov	r0, r3
 805bb82:	46bd      	mov	sp, r7
 805bb84:	bc80      	pop	{r7}
 805bb86:	4770      	bx	lr
 805bb88:	20003b28 	.word	0x20003b28

0805bb8c <xPortGetMinimumEverFreeHeapSize>:
 805bb8c:	b480      	push	{r7}
 805bb8e:	af00      	add	r7, sp, #0
 805bb90:	4b02      	ldr	r3, [pc, #8]	; (805bb9c <xPortGetMinimumEverFreeHeapSize+0x10>)
 805bb92:	681b      	ldr	r3, [r3, #0]
 805bb94:	4618      	mov	r0, r3
 805bb96:	46bd      	mov	sp, r7
 805bb98:	bc80      	pop	{r7}
 805bb9a:	4770      	bx	lr
 805bb9c:	20003b2c 	.word	0x20003b2c

0805bba0 <prvInsertBlockIntoFreeList>:
 805bba0:	b580      	push	{r7, lr}
 805bba2:	b084      	sub	sp, #16
 805bba4:	af00      	add	r7, sp, #0
 805bba6:	6078      	str	r0, [r7, #4]
 805bba8:	4b31      	ldr	r3, [pc, #196]	; (805bc70 <prvInsertBlockIntoFreeList+0xd0>)
 805bbaa:	60fb      	str	r3, [r7, #12]
 805bbac:	e002      	b.n	805bbb4 <prvInsertBlockIntoFreeList+0x14>
 805bbae:	68fb      	ldr	r3, [r7, #12]
 805bbb0:	681b      	ldr	r3, [r3, #0]
 805bbb2:	60fb      	str	r3, [r7, #12]
 805bbb4:	68fb      	ldr	r3, [r7, #12]
 805bbb6:	681b      	ldr	r3, [r3, #0]
 805bbb8:	687a      	ldr	r2, [r7, #4]
 805bbba:	429a      	cmp	r2, r3
 805bbbc:	d8f7      	bhi.n	805bbae <prvInsertBlockIntoFreeList+0xe>
 805bbbe:	68fb      	ldr	r3, [r7, #12]
 805bbc0:	4a2b      	ldr	r2, [pc, #172]	; (805bc70 <prvInsertBlockIntoFreeList+0xd0>)
 805bbc2:	4293      	cmp	r3, r2
 805bbc4:	d00f      	beq.n	805bbe6 <prvInsertBlockIntoFreeList+0x46>
 805bbc6:	68fb      	ldr	r3, [r7, #12]
 805bbc8:	4a2a      	ldr	r2, [pc, #168]	; (805bc74 <prvInsertBlockIntoFreeList+0xd4>)
 805bbca:	4293      	cmp	r3, r2
 805bbcc:	d305      	bcc.n	805bbda <prvInsertBlockIntoFreeList+0x3a>
 805bbce:	68fb      	ldr	r3, [r7, #12]
 805bbd0:	4a29      	ldr	r2, [pc, #164]	; (805bc78 <prvInsertBlockIntoFreeList+0xd8>)
 805bbd2:	4293      	cmp	r3, r2
 805bbd4:	d801      	bhi.n	805bbda <prvInsertBlockIntoFreeList+0x3a>
 805bbd6:	2301      	movs	r3, #1
 805bbd8:	e000      	b.n	805bbdc <prvInsertBlockIntoFreeList+0x3c>
 805bbda:	2300      	movs	r3, #0
 805bbdc:	2b00      	cmp	r3, #0
 805bbde:	d102      	bne.n	805bbe6 <prvInsertBlockIntoFreeList+0x46>
 805bbe0:	4b26      	ldr	r3, [pc, #152]	; (805bc7c <prvInsertBlockIntoFreeList+0xdc>)
 805bbe2:	4798      	blx	r3
 805bbe4:	e7fe      	b.n	805bbe4 <prvInsertBlockIntoFreeList+0x44>
 805bbe6:	68fb      	ldr	r3, [r7, #12]
 805bbe8:	60bb      	str	r3, [r7, #8]
 805bbea:	68fb      	ldr	r3, [r7, #12]
 805bbec:	685b      	ldr	r3, [r3, #4]
 805bbee:	68ba      	ldr	r2, [r7, #8]
 805bbf0:	4413      	add	r3, r2
 805bbf2:	687a      	ldr	r2, [r7, #4]
 805bbf4:	429a      	cmp	r2, r3
 805bbf6:	d108      	bne.n	805bc0a <prvInsertBlockIntoFreeList+0x6a>
 805bbf8:	68fb      	ldr	r3, [r7, #12]
 805bbfa:	685a      	ldr	r2, [r3, #4]
 805bbfc:	687b      	ldr	r3, [r7, #4]
 805bbfe:	685b      	ldr	r3, [r3, #4]
 805bc00:	441a      	add	r2, r3
 805bc02:	68fb      	ldr	r3, [r7, #12]
 805bc04:	605a      	str	r2, [r3, #4]
 805bc06:	68fb      	ldr	r3, [r7, #12]
 805bc08:	607b      	str	r3, [r7, #4]
 805bc0a:	687b      	ldr	r3, [r7, #4]
 805bc0c:	60bb      	str	r3, [r7, #8]
 805bc0e:	687b      	ldr	r3, [r7, #4]
 805bc10:	685b      	ldr	r3, [r3, #4]
 805bc12:	68ba      	ldr	r2, [r7, #8]
 805bc14:	441a      	add	r2, r3
 805bc16:	68fb      	ldr	r3, [r7, #12]
 805bc18:	681b      	ldr	r3, [r3, #0]
 805bc1a:	429a      	cmp	r2, r3
 805bc1c:	d118      	bne.n	805bc50 <prvInsertBlockIntoFreeList+0xb0>
 805bc1e:	68fb      	ldr	r3, [r7, #12]
 805bc20:	681a      	ldr	r2, [r3, #0]
 805bc22:	4b17      	ldr	r3, [pc, #92]	; (805bc80 <prvInsertBlockIntoFreeList+0xe0>)
 805bc24:	681b      	ldr	r3, [r3, #0]
 805bc26:	429a      	cmp	r2, r3
 805bc28:	d00d      	beq.n	805bc46 <prvInsertBlockIntoFreeList+0xa6>
 805bc2a:	687b      	ldr	r3, [r7, #4]
 805bc2c:	685a      	ldr	r2, [r3, #4]
 805bc2e:	68fb      	ldr	r3, [r7, #12]
 805bc30:	681b      	ldr	r3, [r3, #0]
 805bc32:	685b      	ldr	r3, [r3, #4]
 805bc34:	441a      	add	r2, r3
 805bc36:	687b      	ldr	r3, [r7, #4]
 805bc38:	605a      	str	r2, [r3, #4]
 805bc3a:	68fb      	ldr	r3, [r7, #12]
 805bc3c:	681b      	ldr	r3, [r3, #0]
 805bc3e:	681a      	ldr	r2, [r3, #0]
 805bc40:	687b      	ldr	r3, [r7, #4]
 805bc42:	601a      	str	r2, [r3, #0]
 805bc44:	e008      	b.n	805bc58 <prvInsertBlockIntoFreeList+0xb8>
 805bc46:	4b0e      	ldr	r3, [pc, #56]	; (805bc80 <prvInsertBlockIntoFreeList+0xe0>)
 805bc48:	681a      	ldr	r2, [r3, #0]
 805bc4a:	687b      	ldr	r3, [r7, #4]
 805bc4c:	601a      	str	r2, [r3, #0]
 805bc4e:	e003      	b.n	805bc58 <prvInsertBlockIntoFreeList+0xb8>
 805bc50:	68fb      	ldr	r3, [r7, #12]
 805bc52:	681a      	ldr	r2, [r3, #0]
 805bc54:	687b      	ldr	r3, [r7, #4]
 805bc56:	601a      	str	r2, [r3, #0]
 805bc58:	68fa      	ldr	r2, [r7, #12]
 805bc5a:	687b      	ldr	r3, [r7, #4]
 805bc5c:	429a      	cmp	r2, r3
 805bc5e:	d002      	beq.n	805bc66 <prvInsertBlockIntoFreeList+0xc6>
 805bc60:	68fb      	ldr	r3, [r7, #12]
 805bc62:	687a      	ldr	r2, [r7, #4]
 805bc64:	601a      	str	r2, [r3, #0]
 805bc66:	bf00      	nop
 805bc68:	3710      	adds	r7, #16
 805bc6a:	46bd      	mov	sp, r7
 805bc6c:	bd80      	pop	{r7, pc}
 805bc6e:	bf00      	nop
 805bc70:	20003b1c 	.word	0x20003b1c
 805bc74:	20001b1c 	.word	0x20001b1c
 805bc78:	20003b1b 	.word	0x20003b1b
 805bc7c:	0805f1c7 	.word	0x0805f1c7
 805bc80:	20003b24 	.word	0x20003b24

0805bc84 <prvHeapInit>:
 805bc84:	b480      	push	{r7}
 805bc86:	b085      	sub	sp, #20
 805bc88:	af00      	add	r7, sp, #0
 805bc8a:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 805bc8e:	60bb      	str	r3, [r7, #8]
 805bc90:	4b24      	ldr	r3, [pc, #144]	; (805bd24 <prvHeapInit+0xa0>)
 805bc92:	60fb      	str	r3, [r7, #12]
 805bc94:	68fb      	ldr	r3, [r7, #12]
 805bc96:	f003 0307 	and.w	r3, r3, #7
 805bc9a:	2b00      	cmp	r3, #0
 805bc9c:	d00c      	beq.n	805bcb8 <prvHeapInit+0x34>
 805bc9e:	68fb      	ldr	r3, [r7, #12]
 805bca0:	3307      	adds	r3, #7
 805bca2:	60fb      	str	r3, [r7, #12]
 805bca4:	68fb      	ldr	r3, [r7, #12]
 805bca6:	f023 0307 	bic.w	r3, r3, #7
 805bcaa:	60fb      	str	r3, [r7, #12]
 805bcac:	68ba      	ldr	r2, [r7, #8]
 805bcae:	68fb      	ldr	r3, [r7, #12]
 805bcb0:	1ad3      	subs	r3, r2, r3
 805bcb2:	4a1c      	ldr	r2, [pc, #112]	; (805bd24 <prvHeapInit+0xa0>)
 805bcb4:	4413      	add	r3, r2
 805bcb6:	60bb      	str	r3, [r7, #8]
 805bcb8:	68fb      	ldr	r3, [r7, #12]
 805bcba:	4a1b      	ldr	r2, [pc, #108]	; (805bd28 <prvHeapInit+0xa4>)
 805bcbc:	6013      	str	r3, [r2, #0]
 805bcbe:	4b1a      	ldr	r3, [pc, #104]	; (805bd28 <prvHeapInit+0xa4>)
 805bcc0:	2200      	movs	r2, #0
 805bcc2:	605a      	str	r2, [r3, #4]
 805bcc4:	68fa      	ldr	r2, [r7, #12]
 805bcc6:	68bb      	ldr	r3, [r7, #8]
 805bcc8:	4413      	add	r3, r2
 805bcca:	607b      	str	r3, [r7, #4]
 805bccc:	2208      	movs	r2, #8
 805bcce:	687b      	ldr	r3, [r7, #4]
 805bcd0:	1a9b      	subs	r3, r3, r2
 805bcd2:	607b      	str	r3, [r7, #4]
 805bcd4:	687b      	ldr	r3, [r7, #4]
 805bcd6:	f023 0307 	bic.w	r3, r3, #7
 805bcda:	607b      	str	r3, [r7, #4]
 805bcdc:	687b      	ldr	r3, [r7, #4]
 805bcde:	4a13      	ldr	r2, [pc, #76]	; (805bd2c <prvHeapInit+0xa8>)
 805bce0:	6013      	str	r3, [r2, #0]
 805bce2:	4b12      	ldr	r3, [pc, #72]	; (805bd2c <prvHeapInit+0xa8>)
 805bce4:	681b      	ldr	r3, [r3, #0]
 805bce6:	2200      	movs	r2, #0
 805bce8:	605a      	str	r2, [r3, #4]
 805bcea:	4b10      	ldr	r3, [pc, #64]	; (805bd2c <prvHeapInit+0xa8>)
 805bcec:	681b      	ldr	r3, [r3, #0]
 805bcee:	2200      	movs	r2, #0
 805bcf0:	601a      	str	r2, [r3, #0]
 805bcf2:	68fb      	ldr	r3, [r7, #12]
 805bcf4:	603b      	str	r3, [r7, #0]
 805bcf6:	683b      	ldr	r3, [r7, #0]
 805bcf8:	687a      	ldr	r2, [r7, #4]
 805bcfa:	1ad2      	subs	r2, r2, r3
 805bcfc:	683b      	ldr	r3, [r7, #0]
 805bcfe:	605a      	str	r2, [r3, #4]
 805bd00:	4b0a      	ldr	r3, [pc, #40]	; (805bd2c <prvHeapInit+0xa8>)
 805bd02:	681a      	ldr	r2, [r3, #0]
 805bd04:	683b      	ldr	r3, [r7, #0]
 805bd06:	601a      	str	r2, [r3, #0]
 805bd08:	683b      	ldr	r3, [r7, #0]
 805bd0a:	685b      	ldr	r3, [r3, #4]
 805bd0c:	4a08      	ldr	r2, [pc, #32]	; (805bd30 <prvHeapInit+0xac>)
 805bd0e:	6013      	str	r3, [r2, #0]
 805bd10:	683b      	ldr	r3, [r7, #0]
 805bd12:	685b      	ldr	r3, [r3, #4]
 805bd14:	4a07      	ldr	r2, [pc, #28]	; (805bd34 <prvHeapInit+0xb0>)
 805bd16:	6013      	str	r3, [r2, #0]
 805bd18:	bf00      	nop
 805bd1a:	3714      	adds	r7, #20
 805bd1c:	46bd      	mov	sp, r7
 805bd1e:	bc80      	pop	{r7}
 805bd20:	4770      	bx	lr
 805bd22:	bf00      	nop
 805bd24:	20001b1c 	.word	0x20001b1c
 805bd28:	20003b1c 	.word	0x20003b1c
 805bd2c:	20003b24 	.word	0x20003b24
 805bd30:	20003b2c 	.word	0x20003b2c
 805bd34:	20003b28 	.word	0x20003b28

0805bd38 <xEventGroupCreate>:
 805bd38:	b580      	push	{r7, lr}
 805bd3a:	b082      	sub	sp, #8
 805bd3c:	af00      	add	r7, sp, #0
 805bd3e:	201c      	movs	r0, #28
 805bd40:	4b09      	ldr	r3, [pc, #36]	; (805bd68 <xEventGroupCreate+0x30>)
 805bd42:	4798      	blx	r3
 805bd44:	6078      	str	r0, [r7, #4]
 805bd46:	687b      	ldr	r3, [r7, #4]
 805bd48:	2b00      	cmp	r3, #0
 805bd4a:	d007      	beq.n	805bd5c <xEventGroupCreate+0x24>
 805bd4c:	687b      	ldr	r3, [r7, #4]
 805bd4e:	2200      	movs	r2, #0
 805bd50:	601a      	str	r2, [r3, #0]
 805bd52:	687b      	ldr	r3, [r7, #4]
 805bd54:	3304      	adds	r3, #4
 805bd56:	4618      	mov	r0, r3
 805bd58:	4b04      	ldr	r3, [pc, #16]	; (805bd6c <xEventGroupCreate+0x34>)
 805bd5a:	4798      	blx	r3
 805bd5c:	687b      	ldr	r3, [r7, #4]
 805bd5e:	4618      	mov	r0, r3
 805bd60:	3708      	adds	r7, #8
 805bd62:	46bd      	mov	sp, r7
 805bd64:	bd80      	pop	{r7, pc}
 805bd66:	bf00      	nop
 805bd68:	0805b839 	.word	0x0805b839
 805bd6c:	0805c33d 	.word	0x0805c33d

0805bd70 <xEventGroupWaitBits>:
 805bd70:	b580      	push	{r7, lr}
 805bd72:	b08c      	sub	sp, #48	; 0x30
 805bd74:	af00      	add	r7, sp, #0
 805bd76:	60f8      	str	r0, [r7, #12]
 805bd78:	60b9      	str	r1, [r7, #8]
 805bd7a:	607a      	str	r2, [r7, #4]
 805bd7c:	603b      	str	r3, [r7, #0]
 805bd7e:	68fb      	ldr	r3, [r7, #12]
 805bd80:	627b      	str	r3, [r7, #36]	; 0x24
 805bd82:	2300      	movs	r3, #0
 805bd84:	62bb      	str	r3, [r7, #40]	; 0x28
 805bd86:	2300      	movs	r3, #0
 805bd88:	623b      	str	r3, [r7, #32]
 805bd8a:	68fb      	ldr	r3, [r7, #12]
 805bd8c:	2b00      	cmp	r3, #0
 805bd8e:	d102      	bne.n	805bd96 <xEventGroupWaitBits+0x26>
 805bd90:	4b4a      	ldr	r3, [pc, #296]	; (805bebc <xEventGroupWaitBits+0x14c>)
 805bd92:	4798      	blx	r3
 805bd94:	e7fe      	b.n	805bd94 <xEventGroupWaitBits+0x24>
 805bd96:	68bb      	ldr	r3, [r7, #8]
 805bd98:	f003 437f 	and.w	r3, r3, #4278190080	; 0xff000000
 805bd9c:	2b00      	cmp	r3, #0
 805bd9e:	d002      	beq.n	805bda6 <xEventGroupWaitBits+0x36>
 805bda0:	4b46      	ldr	r3, [pc, #280]	; (805bebc <xEventGroupWaitBits+0x14c>)
 805bda2:	4798      	blx	r3
 805bda4:	e7fe      	b.n	805bda4 <xEventGroupWaitBits+0x34>
 805bda6:	68bb      	ldr	r3, [r7, #8]
 805bda8:	2b00      	cmp	r3, #0
 805bdaa:	d102      	bne.n	805bdb2 <xEventGroupWaitBits+0x42>
 805bdac:	4b43      	ldr	r3, [pc, #268]	; (805bebc <xEventGroupWaitBits+0x14c>)
 805bdae:	4798      	blx	r3
 805bdb0:	e7fe      	b.n	805bdb0 <xEventGroupWaitBits+0x40>
 805bdb2:	4b43      	ldr	r3, [pc, #268]	; (805bec0 <xEventGroupWaitBits+0x150>)
 805bdb4:	4798      	blx	r3
 805bdb6:	4603      	mov	r3, r0
 805bdb8:	2b00      	cmp	r3, #0
 805bdba:	d102      	bne.n	805bdc2 <xEventGroupWaitBits+0x52>
 805bdbc:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 805bdbe:	2b00      	cmp	r3, #0
 805bdc0:	d101      	bne.n	805bdc6 <xEventGroupWaitBits+0x56>
 805bdc2:	2301      	movs	r3, #1
 805bdc4:	e000      	b.n	805bdc8 <xEventGroupWaitBits+0x58>
 805bdc6:	2300      	movs	r3, #0
 805bdc8:	2b00      	cmp	r3, #0
 805bdca:	d102      	bne.n	805bdd2 <xEventGroupWaitBits+0x62>
 805bdcc:	4b3b      	ldr	r3, [pc, #236]	; (805bebc <xEventGroupWaitBits+0x14c>)
 805bdce:	4798      	blx	r3
 805bdd0:	e7fe      	b.n	805bdd0 <xEventGroupWaitBits+0x60>
 805bdd2:	4b3c      	ldr	r3, [pc, #240]	; (805bec4 <xEventGroupWaitBits+0x154>)
 805bdd4:	4798      	blx	r3
 805bdd6:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805bdd8:	681b      	ldr	r3, [r3, #0]
 805bdda:	61fb      	str	r3, [r7, #28]
 805bddc:	683a      	ldr	r2, [r7, #0]
 805bdde:	68b9      	ldr	r1, [r7, #8]
 805bde0:	69f8      	ldr	r0, [r7, #28]
 805bde2:	f000 fa89 	bl	805c2f8 <prvTestWaitCondition>
 805bde6:	61b8      	str	r0, [r7, #24]
 805bde8:	69bb      	ldr	r3, [r7, #24]
 805bdea:	2b00      	cmp	r3, #0
 805bdec:	d00e      	beq.n	805be0c <xEventGroupWaitBits+0x9c>
 805bdee:	69fb      	ldr	r3, [r7, #28]
 805bdf0:	62fb      	str	r3, [r7, #44]	; 0x2c
 805bdf2:	2300      	movs	r3, #0
 805bdf4:	63bb      	str	r3, [r7, #56]	; 0x38
 805bdf6:	687b      	ldr	r3, [r7, #4]
 805bdf8:	2b00      	cmp	r3, #0
 805bdfa:	d028      	beq.n	805be4e <xEventGroupWaitBits+0xde>
 805bdfc:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805bdfe:	681a      	ldr	r2, [r3, #0]
 805be00:	68bb      	ldr	r3, [r7, #8]
 805be02:	43db      	mvns	r3, r3
 805be04:	401a      	ands	r2, r3
 805be06:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805be08:	601a      	str	r2, [r3, #0]
 805be0a:	e020      	b.n	805be4e <xEventGroupWaitBits+0xde>
 805be0c:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 805be0e:	2b00      	cmp	r3, #0
 805be10:	d104      	bne.n	805be1c <xEventGroupWaitBits+0xac>
 805be12:	69fb      	ldr	r3, [r7, #28]
 805be14:	62fb      	str	r3, [r7, #44]	; 0x2c
 805be16:	2301      	movs	r3, #1
 805be18:	623b      	str	r3, [r7, #32]
 805be1a:	e018      	b.n	805be4e <xEventGroupWaitBits+0xde>
 805be1c:	687b      	ldr	r3, [r7, #4]
 805be1e:	2b00      	cmp	r3, #0
 805be20:	d003      	beq.n	805be2a <xEventGroupWaitBits+0xba>
 805be22:	6abb      	ldr	r3, [r7, #40]	; 0x28
 805be24:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 805be28:	62bb      	str	r3, [r7, #40]	; 0x28
 805be2a:	683b      	ldr	r3, [r7, #0]
 805be2c:	2b00      	cmp	r3, #0
 805be2e:	d003      	beq.n	805be38 <xEventGroupWaitBits+0xc8>
 805be30:	6abb      	ldr	r3, [r7, #40]	; 0x28
 805be32:	f043 6380 	orr.w	r3, r3, #67108864	; 0x4000000
 805be36:	62bb      	str	r3, [r7, #40]	; 0x28
 805be38:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805be3a:	1d18      	adds	r0, r3, #4
 805be3c:	68ba      	ldr	r2, [r7, #8]
 805be3e:	6abb      	ldr	r3, [r7, #40]	; 0x28
 805be40:	4313      	orrs	r3, r2
 805be42:	6bba      	ldr	r2, [r7, #56]	; 0x38
 805be44:	4619      	mov	r1, r3
 805be46:	4b20      	ldr	r3, [pc, #128]	; (805bec8 <xEventGroupWaitBits+0x158>)
 805be48:	4798      	blx	r3
 805be4a:	2300      	movs	r3, #0
 805be4c:	62fb      	str	r3, [r7, #44]	; 0x2c
 805be4e:	4b1f      	ldr	r3, [pc, #124]	; (805becc <xEventGroupWaitBits+0x15c>)
 805be50:	4798      	blx	r3
 805be52:	6178      	str	r0, [r7, #20]
 805be54:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 805be56:	2b00      	cmp	r3, #0
 805be58:	d02b      	beq.n	805beb2 <xEventGroupWaitBits+0x142>
 805be5a:	697b      	ldr	r3, [r7, #20]
 805be5c:	2b00      	cmp	r3, #0
 805be5e:	d101      	bne.n	805be64 <xEventGroupWaitBits+0xf4>
 805be60:	4b1b      	ldr	r3, [pc, #108]	; (805bed0 <xEventGroupWaitBits+0x160>)
 805be62:	4798      	blx	r3
 805be64:	4b1b      	ldr	r3, [pc, #108]	; (805bed4 <xEventGroupWaitBits+0x164>)
 805be66:	4798      	blx	r3
 805be68:	62f8      	str	r0, [r7, #44]	; 0x2c
 805be6a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 805be6c:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 805be70:	2b00      	cmp	r3, #0
 805be72:	d11a      	bne.n	805beaa <xEventGroupWaitBits+0x13a>
 805be74:	4b18      	ldr	r3, [pc, #96]	; (805bed8 <xEventGroupWaitBits+0x168>)
 805be76:	4798      	blx	r3
 805be78:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805be7a:	681b      	ldr	r3, [r3, #0]
 805be7c:	62fb      	str	r3, [r7, #44]	; 0x2c
 805be7e:	683a      	ldr	r2, [r7, #0]
 805be80:	68b9      	ldr	r1, [r7, #8]
 805be82:	6af8      	ldr	r0, [r7, #44]	; 0x2c
 805be84:	f000 fa38 	bl	805c2f8 <prvTestWaitCondition>
 805be88:	4603      	mov	r3, r0
 805be8a:	2b00      	cmp	r3, #0
 805be8c:	d009      	beq.n	805bea2 <xEventGroupWaitBits+0x132>
 805be8e:	687b      	ldr	r3, [r7, #4]
 805be90:	2b00      	cmp	r3, #0
 805be92:	d006      	beq.n	805bea2 <xEventGroupWaitBits+0x132>
 805be94:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805be96:	681a      	ldr	r2, [r3, #0]
 805be98:	68bb      	ldr	r3, [r7, #8]
 805be9a:	43db      	mvns	r3, r3
 805be9c:	401a      	ands	r2, r3
 805be9e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805bea0:	601a      	str	r2, [r3, #0]
 805bea2:	2301      	movs	r3, #1
 805bea4:	623b      	str	r3, [r7, #32]
 805bea6:	4b0d      	ldr	r3, [pc, #52]	; (805bedc <xEventGroupWaitBits+0x16c>)
 805bea8:	4798      	blx	r3
 805beaa:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 805beac:	f023 437f 	bic.w	r3, r3, #4278190080	; 0xff000000
 805beb0:	62fb      	str	r3, [r7, #44]	; 0x2c
 805beb2:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 805beb4:	4618      	mov	r0, r3
 805beb6:	3730      	adds	r7, #48	; 0x30
 805beb8:	46bd      	mov	sp, r7
 805beba:	bd80      	pop	{r7, pc}
 805bebc:	0805f1c7 	.word	0x0805f1c7
 805bec0:	0805756d 	.word	0x0805756d
 805bec4:	08055dbd 	.word	0x08055dbd
 805bec8:	08056fcd 	.word	0x08056fcd
 805becc:	08055dd9 	.word	0x08055dd9
 805bed0:	0805eca5 	.word	0x0805eca5
 805bed4:	08057505 	.word	0x08057505
 805bed8:	0805ecc5 	.word	0x0805ecc5
 805bedc:	0805eced 	.word	0x0805eced

0805bee0 <xEventGroupClearBits>:
 805bee0:	b580      	push	{r7, lr}
 805bee2:	b084      	sub	sp, #16
 805bee4:	af00      	add	r7, sp, #0
 805bee6:	6078      	str	r0, [r7, #4]
 805bee8:	6039      	str	r1, [r7, #0]
 805beea:	687b      	ldr	r3, [r7, #4]
 805beec:	60fb      	str	r3, [r7, #12]
 805beee:	687b      	ldr	r3, [r7, #4]
 805bef0:	2b00      	cmp	r3, #0
 805bef2:	d102      	bne.n	805befa <xEventGroupClearBits+0x1a>
 805bef4:	4b0e      	ldr	r3, [pc, #56]	; (805bf30 <xEventGroupClearBits+0x50>)
 805bef6:	4798      	blx	r3
 805bef8:	e7fe      	b.n	805bef8 <xEventGroupClearBits+0x18>
 805befa:	683b      	ldr	r3, [r7, #0]
 805befc:	f003 437f 	and.w	r3, r3, #4278190080	; 0xff000000
 805bf00:	2b00      	cmp	r3, #0
 805bf02:	d002      	beq.n	805bf0a <xEventGroupClearBits+0x2a>
 805bf04:	4b0a      	ldr	r3, [pc, #40]	; (805bf30 <xEventGroupClearBits+0x50>)
 805bf06:	4798      	blx	r3
 805bf08:	e7fe      	b.n	805bf08 <xEventGroupClearBits+0x28>
 805bf0a:	4b0a      	ldr	r3, [pc, #40]	; (805bf34 <xEventGroupClearBits+0x54>)
 805bf0c:	4798      	blx	r3
 805bf0e:	68fb      	ldr	r3, [r7, #12]
 805bf10:	681b      	ldr	r3, [r3, #0]
 805bf12:	60bb      	str	r3, [r7, #8]
 805bf14:	68fb      	ldr	r3, [r7, #12]
 805bf16:	681a      	ldr	r2, [r3, #0]
 805bf18:	683b      	ldr	r3, [r7, #0]
 805bf1a:	43db      	mvns	r3, r3
 805bf1c:	401a      	ands	r2, r3
 805bf1e:	68fb      	ldr	r3, [r7, #12]
 805bf20:	601a      	str	r2, [r3, #0]
 805bf22:	4b05      	ldr	r3, [pc, #20]	; (805bf38 <xEventGroupClearBits+0x58>)
 805bf24:	4798      	blx	r3
 805bf26:	68bb      	ldr	r3, [r7, #8]
 805bf28:	4618      	mov	r0, r3
 805bf2a:	3710      	adds	r7, #16
 805bf2c:	46bd      	mov	sp, r7
 805bf2e:	bd80      	pop	{r7, pc}
 805bf30:	0805f1c7 	.word	0x0805f1c7
 805bf34:	0805ecc5 	.word	0x0805ecc5
 805bf38:	0805eced 	.word	0x0805eced

0805bf3c <xEventGroupClearBitsFromISR>:
 805bf3c:	b590      	push	{r4, r7, lr}
 805bf3e:	b085      	sub	sp, #20
 805bf40:	af00      	add	r7, sp, #0
 805bf42:	6078      	str	r0, [r7, #4]
 805bf44:	6039      	str	r1, [r7, #0]
 805bf46:	2300      	movs	r3, #0
 805bf48:	683a      	ldr	r2, [r7, #0]
 805bf4a:	6879      	ldr	r1, [r7, #4]
 805bf4c:	4804      	ldr	r0, [pc, #16]	; (805bf60 <xEventGroupClearBitsFromISR+0x24>)
 805bf4e:	4c05      	ldr	r4, [pc, #20]	; (805bf64 <xEventGroupClearBitsFromISR+0x28>)
 805bf50:	47a0      	blx	r4
 805bf52:	60f8      	str	r0, [r7, #12]
 805bf54:	68fb      	ldr	r3, [r7, #12]
 805bf56:	4618      	mov	r0, r3
 805bf58:	3714      	adds	r7, #20
 805bf5a:	46bd      	mov	sp, r7
 805bf5c:	bd90      	pop	{r4, r7, pc}
 805bf5e:	bf00      	nop
 805bf60:	0805c29b 	.word	0x0805c29b
 805bf64:	08058349 	.word	0x08058349

0805bf68 <xEventGroupSetBits>:
 805bf68:	b580      	push	{r7, lr}
 805bf6a:	b08c      	sub	sp, #48	; 0x30
 805bf6c:	af00      	add	r7, sp, #0
 805bf6e:	6078      	str	r0, [r7, #4]
 805bf70:	6039      	str	r1, [r7, #0]
 805bf72:	2300      	movs	r3, #0
 805bf74:	62bb      	str	r3, [r7, #40]	; 0x28
 805bf76:	687b      	ldr	r3, [r7, #4]
 805bf78:	623b      	str	r3, [r7, #32]
 805bf7a:	2300      	movs	r3, #0
 805bf7c:	627b      	str	r3, [r7, #36]	; 0x24
 805bf7e:	687b      	ldr	r3, [r7, #4]
 805bf80:	2b00      	cmp	r3, #0
 805bf82:	d102      	bne.n	805bf8a <xEventGroupSetBits+0x22>
 805bf84:	4b36      	ldr	r3, [pc, #216]	; (805c060 <xEventGroupSetBits+0xf8>)
 805bf86:	4798      	blx	r3
 805bf88:	e7fe      	b.n	805bf88 <xEventGroupSetBits+0x20>
 805bf8a:	683b      	ldr	r3, [r7, #0]
 805bf8c:	f003 437f 	and.w	r3, r3, #4278190080	; 0xff000000
 805bf90:	2b00      	cmp	r3, #0
 805bf92:	d002      	beq.n	805bf9a <xEventGroupSetBits+0x32>
 805bf94:	4b32      	ldr	r3, [pc, #200]	; (805c060 <xEventGroupSetBits+0xf8>)
 805bf96:	4798      	blx	r3
 805bf98:	e7fe      	b.n	805bf98 <xEventGroupSetBits+0x30>
 805bf9a:	6a3b      	ldr	r3, [r7, #32]
 805bf9c:	3304      	adds	r3, #4
 805bf9e:	61fb      	str	r3, [r7, #28]
 805bfa0:	69fb      	ldr	r3, [r7, #28]
 805bfa2:	3308      	adds	r3, #8
 805bfa4:	61bb      	str	r3, [r7, #24]
 805bfa6:	4b2f      	ldr	r3, [pc, #188]	; (805c064 <xEventGroupSetBits+0xfc>)
 805bfa8:	4798      	blx	r3
 805bfaa:	69fb      	ldr	r3, [r7, #28]
 805bfac:	68db      	ldr	r3, [r3, #12]
 805bfae:	62fb      	str	r3, [r7, #44]	; 0x2c
 805bfb0:	6a3b      	ldr	r3, [r7, #32]
 805bfb2:	681a      	ldr	r2, [r3, #0]
 805bfb4:	683b      	ldr	r3, [r7, #0]
 805bfb6:	431a      	orrs	r2, r3
 805bfb8:	6a3b      	ldr	r3, [r7, #32]
 805bfba:	601a      	str	r2, [r3, #0]
 805bfbc:	e03c      	b.n	805c038 <xEventGroupSetBits+0xd0>
 805bfbe:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 805bfc0:	685b      	ldr	r3, [r3, #4]
 805bfc2:	617b      	str	r3, [r7, #20]
 805bfc4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 805bfc6:	681b      	ldr	r3, [r3, #0]
 805bfc8:	613b      	str	r3, [r7, #16]
 805bfca:	2300      	movs	r3, #0
 805bfcc:	627b      	str	r3, [r7, #36]	; 0x24
 805bfce:	693b      	ldr	r3, [r7, #16]
 805bfd0:	f003 437f 	and.w	r3, r3, #4278190080	; 0xff000000
 805bfd4:	60fb      	str	r3, [r7, #12]
 805bfd6:	693b      	ldr	r3, [r7, #16]
 805bfd8:	f023 437f 	bic.w	r3, r3, #4278190080	; 0xff000000
 805bfdc:	613b      	str	r3, [r7, #16]
 805bfde:	68fb      	ldr	r3, [r7, #12]
 805bfe0:	f003 6380 	and.w	r3, r3, #67108864	; 0x4000000
 805bfe4:	2b00      	cmp	r3, #0
 805bfe6:	d108      	bne.n	805bffa <xEventGroupSetBits+0x92>
 805bfe8:	6a3b      	ldr	r3, [r7, #32]
 805bfea:	681a      	ldr	r2, [r3, #0]
 805bfec:	693b      	ldr	r3, [r7, #16]
 805bfee:	4013      	ands	r3, r2
 805bff0:	2b00      	cmp	r3, #0
 805bff2:	d00b      	beq.n	805c00c <xEventGroupSetBits+0xa4>
 805bff4:	2301      	movs	r3, #1
 805bff6:	627b      	str	r3, [r7, #36]	; 0x24
 805bff8:	e008      	b.n	805c00c <xEventGroupSetBits+0xa4>
 805bffa:	6a3b      	ldr	r3, [r7, #32]
 805bffc:	681a      	ldr	r2, [r3, #0]
 805bffe:	693b      	ldr	r3, [r7, #16]
 805c000:	4013      	ands	r3, r2
 805c002:	693a      	ldr	r2, [r7, #16]
 805c004:	429a      	cmp	r2, r3
 805c006:	d101      	bne.n	805c00c <xEventGroupSetBits+0xa4>
 805c008:	2301      	movs	r3, #1
 805c00a:	627b      	str	r3, [r7, #36]	; 0x24
 805c00c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805c00e:	2b00      	cmp	r3, #0
 805c010:	d010      	beq.n	805c034 <xEventGroupSetBits+0xcc>
 805c012:	68fb      	ldr	r3, [r7, #12]
 805c014:	f003 7380 	and.w	r3, r3, #16777216	; 0x1000000
 805c018:	2b00      	cmp	r3, #0
 805c01a:	d003      	beq.n	805c024 <xEventGroupSetBits+0xbc>
 805c01c:	6aba      	ldr	r2, [r7, #40]	; 0x28
 805c01e:	693b      	ldr	r3, [r7, #16]
 805c020:	4313      	orrs	r3, r2
 805c022:	62bb      	str	r3, [r7, #40]	; 0x28
 805c024:	6a3b      	ldr	r3, [r7, #32]
 805c026:	681b      	ldr	r3, [r3, #0]
 805c028:	f043 7300 	orr.w	r3, r3, #33554432	; 0x2000000
 805c02c:	4619      	mov	r1, r3
 805c02e:	6af8      	ldr	r0, [r7, #44]	; 0x2c
 805c030:	4b0d      	ldr	r3, [pc, #52]	; (805c068 <xEventGroupSetBits+0x100>)
 805c032:	4798      	blx	r3
 805c034:	697b      	ldr	r3, [r7, #20]
 805c036:	62fb      	str	r3, [r7, #44]	; 0x2c
 805c038:	6afa      	ldr	r2, [r7, #44]	; 0x2c
 805c03a:	69bb      	ldr	r3, [r7, #24]
 805c03c:	429a      	cmp	r2, r3
 805c03e:	d1be      	bne.n	805bfbe <xEventGroupSetBits+0x56>
 805c040:	6a3b      	ldr	r3, [r7, #32]
 805c042:	681a      	ldr	r2, [r3, #0]
 805c044:	6abb      	ldr	r3, [r7, #40]	; 0x28
 805c046:	43db      	mvns	r3, r3
 805c048:	401a      	ands	r2, r3
 805c04a:	6a3b      	ldr	r3, [r7, #32]
 805c04c:	601a      	str	r2, [r3, #0]
 805c04e:	4b07      	ldr	r3, [pc, #28]	; (805c06c <xEventGroupSetBits+0x104>)
 805c050:	4798      	blx	r3
 805c052:	6a3b      	ldr	r3, [r7, #32]
 805c054:	681b      	ldr	r3, [r3, #0]
 805c056:	4618      	mov	r0, r3
 805c058:	3730      	adds	r7, #48	; 0x30
 805c05a:	46bd      	mov	sp, r7
 805c05c:	bd80      	pop	{r7, pc}
 805c05e:	bf00      	nop
 805c060:	0805f1c7 	.word	0x0805f1c7
 805c064:	08055dbd 	.word	0x08055dbd
 805c068:	080572d1 	.word	0x080572d1
 805c06c:	08055dd9 	.word	0x08055dd9

0805c070 <xEventGroupSetBitsFromISR>:
 805c070:	b590      	push	{r4, r7, lr}
 805c072:	b087      	sub	sp, #28
 805c074:	af00      	add	r7, sp, #0
 805c076:	60f8      	str	r0, [r7, #12]
 805c078:	60b9      	str	r1, [r7, #8]
 805c07a:	607a      	str	r2, [r7, #4]
 805c07c:	687b      	ldr	r3, [r7, #4]
 805c07e:	68ba      	ldr	r2, [r7, #8]
 805c080:	68f9      	ldr	r1, [r7, #12]
 805c082:	4804      	ldr	r0, [pc, #16]	; (805c094 <xEventGroupSetBitsFromISR+0x24>)
 805c084:	4c04      	ldr	r4, [pc, #16]	; (805c098 <xEventGroupSetBitsFromISR+0x28>)
 805c086:	47a0      	blx	r4
 805c088:	6178      	str	r0, [r7, #20]
 805c08a:	697b      	ldr	r3, [r7, #20]
 805c08c:	4618      	mov	r0, r3
 805c08e:	371c      	adds	r7, #28
 805c090:	46bd      	mov	sp, r7
 805c092:	bd90      	pop	{r4, r7, pc}
 805c094:	0805c281 	.word	0x0805c281
 805c098:	08058349 	.word	0x08058349

0805c09c <xEventGroupSync>:
 805c09c:	b580      	push	{r7, lr}
 805c09e:	b08a      	sub	sp, #40	; 0x28
 805c0a0:	af00      	add	r7, sp, #0
 805c0a2:	60f8      	str	r0, [r7, #12]
 805c0a4:	60b9      	str	r1, [r7, #8]
 805c0a6:	607a      	str	r2, [r7, #4]
 805c0a8:	603b      	str	r3, [r7, #0]
 805c0aa:	68fb      	ldr	r3, [r7, #12]
 805c0ac:	623b      	str	r3, [r7, #32]
 805c0ae:	2300      	movs	r3, #0
 805c0b0:	61fb      	str	r3, [r7, #28]
 805c0b2:	687b      	ldr	r3, [r7, #4]
 805c0b4:	f003 437f 	and.w	r3, r3, #4278190080	; 0xff000000
 805c0b8:	2b00      	cmp	r3, #0
 805c0ba:	d002      	beq.n	805c0c2 <xEventGroupSync+0x26>
 805c0bc:	4b3e      	ldr	r3, [pc, #248]	; (805c1b8 <xEventGroupSync+0x11c>)
 805c0be:	4798      	blx	r3
 805c0c0:	e7fe      	b.n	805c0c0 <xEventGroupSync+0x24>
 805c0c2:	687b      	ldr	r3, [r7, #4]
 805c0c4:	2b00      	cmp	r3, #0
 805c0c6:	d102      	bne.n	805c0ce <xEventGroupSync+0x32>
 805c0c8:	4b3b      	ldr	r3, [pc, #236]	; (805c1b8 <xEventGroupSync+0x11c>)
 805c0ca:	4798      	blx	r3
 805c0cc:	e7fe      	b.n	805c0cc <xEventGroupSync+0x30>
 805c0ce:	4b3b      	ldr	r3, [pc, #236]	; (805c1bc <xEventGroupSync+0x120>)
 805c0d0:	4798      	blx	r3
 805c0d2:	4603      	mov	r3, r0
 805c0d4:	2b00      	cmp	r3, #0
 805c0d6:	d102      	bne.n	805c0de <xEventGroupSync+0x42>
 805c0d8:	683b      	ldr	r3, [r7, #0]
 805c0da:	2b00      	cmp	r3, #0
 805c0dc:	d101      	bne.n	805c0e2 <xEventGroupSync+0x46>
 805c0de:	2301      	movs	r3, #1
 805c0e0:	e000      	b.n	805c0e4 <xEventGroupSync+0x48>
 805c0e2:	2300      	movs	r3, #0
 805c0e4:	2b00      	cmp	r3, #0
 805c0e6:	d102      	bne.n	805c0ee <xEventGroupSync+0x52>
 805c0e8:	4b33      	ldr	r3, [pc, #204]	; (805c1b8 <xEventGroupSync+0x11c>)
 805c0ea:	4798      	blx	r3
 805c0ec:	e7fe      	b.n	805c0ec <xEventGroupSync+0x50>
 805c0ee:	4b34      	ldr	r3, [pc, #208]	; (805c1c0 <xEventGroupSync+0x124>)
 805c0f0:	4798      	blx	r3
 805c0f2:	6a3b      	ldr	r3, [r7, #32]
 805c0f4:	681b      	ldr	r3, [r3, #0]
 805c0f6:	61bb      	str	r3, [r7, #24]
 805c0f8:	68b9      	ldr	r1, [r7, #8]
 805c0fa:	68f8      	ldr	r0, [r7, #12]
 805c0fc:	f7ff ff34 	bl	805bf68 <xEventGroupSetBits>
 805c100:	69ba      	ldr	r2, [r7, #24]
 805c102:	68bb      	ldr	r3, [r7, #8]
 805c104:	431a      	orrs	r2, r3
 805c106:	687b      	ldr	r3, [r7, #4]
 805c108:	4013      	ands	r3, r2
 805c10a:	687a      	ldr	r2, [r7, #4]
 805c10c:	429a      	cmp	r2, r3
 805c10e:	d10d      	bne.n	805c12c <xEventGroupSync+0x90>
 805c110:	69ba      	ldr	r2, [r7, #24]
 805c112:	68bb      	ldr	r3, [r7, #8]
 805c114:	4313      	orrs	r3, r2
 805c116:	627b      	str	r3, [r7, #36]	; 0x24
 805c118:	6a3b      	ldr	r3, [r7, #32]
 805c11a:	681a      	ldr	r2, [r3, #0]
 805c11c:	687b      	ldr	r3, [r7, #4]
 805c11e:	43db      	mvns	r3, r3
 805c120:	401a      	ands	r2, r3
 805c122:	6a3b      	ldr	r3, [r7, #32]
 805c124:	601a      	str	r2, [r3, #0]
 805c126:	2300      	movs	r3, #0
 805c128:	603b      	str	r3, [r7, #0]
 805c12a:	e013      	b.n	805c154 <xEventGroupSync+0xb8>
 805c12c:	683b      	ldr	r3, [r7, #0]
 805c12e:	2b00      	cmp	r3, #0
 805c130:	d00b      	beq.n	805c14a <xEventGroupSync+0xae>
 805c132:	6a3b      	ldr	r3, [r7, #32]
 805c134:	1d18      	adds	r0, r3, #4
 805c136:	687b      	ldr	r3, [r7, #4]
 805c138:	f043 63a0 	orr.w	r3, r3, #83886080	; 0x5000000
 805c13c:	683a      	ldr	r2, [r7, #0]
 805c13e:	4619      	mov	r1, r3
 805c140:	4b20      	ldr	r3, [pc, #128]	; (805c1c4 <xEventGroupSync+0x128>)
 805c142:	4798      	blx	r3
 805c144:	2300      	movs	r3, #0
 805c146:	627b      	str	r3, [r7, #36]	; 0x24
 805c148:	e004      	b.n	805c154 <xEventGroupSync+0xb8>
 805c14a:	6a3b      	ldr	r3, [r7, #32]
 805c14c:	681b      	ldr	r3, [r3, #0]
 805c14e:	627b      	str	r3, [r7, #36]	; 0x24
 805c150:	2301      	movs	r3, #1
 805c152:	61fb      	str	r3, [r7, #28]
 805c154:	4b1c      	ldr	r3, [pc, #112]	; (805c1c8 <xEventGroupSync+0x12c>)
 805c156:	4798      	blx	r3
 805c158:	6178      	str	r0, [r7, #20]
 805c15a:	683b      	ldr	r3, [r7, #0]
 805c15c:	2b00      	cmp	r3, #0
 805c15e:	d026      	beq.n	805c1ae <xEventGroupSync+0x112>
 805c160:	697b      	ldr	r3, [r7, #20]
 805c162:	2b00      	cmp	r3, #0
 805c164:	d101      	bne.n	805c16a <xEventGroupSync+0xce>
 805c166:	4b19      	ldr	r3, [pc, #100]	; (805c1cc <xEventGroupSync+0x130>)
 805c168:	4798      	blx	r3
 805c16a:	4b19      	ldr	r3, [pc, #100]	; (805c1d0 <xEventGroupSync+0x134>)
 805c16c:	4798      	blx	r3
 805c16e:	6278      	str	r0, [r7, #36]	; 0x24
 805c170:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805c172:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 805c176:	2b00      	cmp	r3, #0
 805c178:	d115      	bne.n	805c1a6 <xEventGroupSync+0x10a>
 805c17a:	4b16      	ldr	r3, [pc, #88]	; (805c1d4 <xEventGroupSync+0x138>)
 805c17c:	4798      	blx	r3
 805c17e:	6a3b      	ldr	r3, [r7, #32]
 805c180:	681b      	ldr	r3, [r3, #0]
 805c182:	627b      	str	r3, [r7, #36]	; 0x24
 805c184:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 805c186:	687b      	ldr	r3, [r7, #4]
 805c188:	4013      	ands	r3, r2
 805c18a:	687a      	ldr	r2, [r7, #4]
 805c18c:	429a      	cmp	r2, r3
 805c18e:	d106      	bne.n	805c19e <xEventGroupSync+0x102>
 805c190:	6a3b      	ldr	r3, [r7, #32]
 805c192:	681a      	ldr	r2, [r3, #0]
 805c194:	687b      	ldr	r3, [r7, #4]
 805c196:	43db      	mvns	r3, r3
 805c198:	401a      	ands	r2, r3
 805c19a:	6a3b      	ldr	r3, [r7, #32]
 805c19c:	601a      	str	r2, [r3, #0]
 805c19e:	4b0e      	ldr	r3, [pc, #56]	; (805c1d8 <xEventGroupSync+0x13c>)
 805c1a0:	4798      	blx	r3
 805c1a2:	2301      	movs	r3, #1
 805c1a4:	61fb      	str	r3, [r7, #28]
 805c1a6:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805c1a8:	f023 437f 	bic.w	r3, r3, #4278190080	; 0xff000000
 805c1ac:	627b      	str	r3, [r7, #36]	; 0x24
 805c1ae:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805c1b0:	4618      	mov	r0, r3
 805c1b2:	3728      	adds	r7, #40	; 0x28
 805c1b4:	46bd      	mov	sp, r7
 805c1b6:	bd80      	pop	{r7, pc}
 805c1b8:	0805f1c7 	.word	0x0805f1c7
 805c1bc:	0805756d 	.word	0x0805756d
 805c1c0:	08055dbd 	.word	0x08055dbd
 805c1c4:	08056fcd 	.word	0x08056fcd
 805c1c8:	08055dd9 	.word	0x08055dd9
 805c1cc:	0805eca5 	.word	0x0805eca5
 805c1d0:	08057505 	.word	0x08057505
 805c1d4:	0805ecc5 	.word	0x0805ecc5
 805c1d8:	0805eced 	.word	0x0805eced

0805c1dc <xEventGroupGetBitsFromISR>:
 805c1dc:	b580      	push	{r7, lr}
 805c1de:	b086      	sub	sp, #24
 805c1e0:	af00      	add	r7, sp, #0
 805c1e2:	6078      	str	r0, [r7, #4]
 805c1e4:	687b      	ldr	r3, [r7, #4]
 805c1e6:	617b      	str	r3, [r7, #20]
 805c1e8:	4b06      	ldr	r3, [pc, #24]	; (805c204 <xEventGroupGetBitsFromISR+0x28>)
 805c1ea:	4798      	blx	r3
 805c1ec:	6138      	str	r0, [r7, #16]
 805c1ee:	697b      	ldr	r3, [r7, #20]
 805c1f0:	681b      	ldr	r3, [r3, #0]
 805c1f2:	60fb      	str	r3, [r7, #12]
 805c1f4:	6938      	ldr	r0, [r7, #16]
 805c1f6:	4b04      	ldr	r3, [pc, #16]	; (805c208 <xEventGroupGetBitsFromISR+0x2c>)
 805c1f8:	4798      	blx	r3
 805c1fa:	68fb      	ldr	r3, [r7, #12]
 805c1fc:	4618      	mov	r0, r3
 805c1fe:	3718      	adds	r7, #24
 805c200:	46bd      	mov	sp, r7
 805c202:	bd80      	pop	{r7, pc}
 805c204:	0805f1c7 	.word	0x0805f1c7
 805c208:	0805f1e1 	.word	0x0805f1e1

0805c20c <vEventGroupDelete>:
 805c20c:	b580      	push	{r7, lr}
 805c20e:	b084      	sub	sp, #16
 805c210:	af00      	add	r7, sp, #0
 805c212:	6078      	str	r0, [r7, #4]
 805c214:	687b      	ldr	r3, [r7, #4]
 805c216:	60fb      	str	r3, [r7, #12]
 805c218:	68fb      	ldr	r3, [r7, #12]
 805c21a:	2b00      	cmp	r3, #0
 805c21c:	d102      	bne.n	805c224 <vEventGroupDelete+0x18>
 805c21e:	4b13      	ldr	r3, [pc, #76]	; (805c26c <vEventGroupDelete+0x60>)
 805c220:	4798      	blx	r3
 805c222:	e7fe      	b.n	805c222 <vEventGroupDelete+0x16>
 805c224:	68fb      	ldr	r3, [r7, #12]
 805c226:	3304      	adds	r3, #4
 805c228:	60bb      	str	r3, [r7, #8]
 805c22a:	4b11      	ldr	r3, [pc, #68]	; (805c270 <vEventGroupDelete+0x64>)
 805c22c:	4798      	blx	r3
 805c22e:	e00f      	b.n	805c250 <vEventGroupDelete+0x44>
 805c230:	68bb      	ldr	r3, [r7, #8]
 805c232:	68da      	ldr	r2, [r3, #12]
 805c234:	68bb      	ldr	r3, [r7, #8]
 805c236:	3308      	adds	r3, #8
 805c238:	429a      	cmp	r2, r3
 805c23a:	d102      	bne.n	805c242 <vEventGroupDelete+0x36>
 805c23c:	4b0b      	ldr	r3, [pc, #44]	; (805c26c <vEventGroupDelete+0x60>)
 805c23e:	4798      	blx	r3
 805c240:	e7fe      	b.n	805c240 <vEventGroupDelete+0x34>
 805c242:	68bb      	ldr	r3, [r7, #8]
 805c244:	68db      	ldr	r3, [r3, #12]
 805c246:	f04f 7100 	mov.w	r1, #33554432	; 0x2000000
 805c24a:	4618      	mov	r0, r3
 805c24c:	4b09      	ldr	r3, [pc, #36]	; (805c274 <vEventGroupDelete+0x68>)
 805c24e:	4798      	blx	r3
 805c250:	68bb      	ldr	r3, [r7, #8]
 805c252:	681b      	ldr	r3, [r3, #0]
 805c254:	2b00      	cmp	r3, #0
 805c256:	d1eb      	bne.n	805c230 <vEventGroupDelete+0x24>
 805c258:	4b07      	ldr	r3, [pc, #28]	; (805c278 <vEventGroupDelete+0x6c>)
 805c25a:	4798      	blx	r3
 805c25c:	68f8      	ldr	r0, [r7, #12]
 805c25e:	4b07      	ldr	r3, [pc, #28]	; (805c27c <vEventGroupDelete+0x70>)
 805c260:	4798      	blx	r3
 805c262:	bf00      	nop
 805c264:	3710      	adds	r7, #16
 805c266:	46bd      	mov	sp, r7
 805c268:	bd80      	pop	{r7, pc}
 805c26a:	bf00      	nop
 805c26c:	0805f1c7 	.word	0x0805f1c7
 805c270:	08055dbd 	.word	0x08055dbd
 805c274:	080572d1 	.word	0x080572d1
 805c278:	08055dd9 	.word	0x08055dd9
 805c27c:	0805baa1 	.word	0x0805baa1

0805c280 <vEventGroupSetBitsCallback>:
 805c280:	b580      	push	{r7, lr}
 805c282:	b082      	sub	sp, #8
 805c284:	af00      	add	r7, sp, #0
 805c286:	6078      	str	r0, [r7, #4]
 805c288:	6039      	str	r1, [r7, #0]
 805c28a:	6839      	ldr	r1, [r7, #0]
 805c28c:	6878      	ldr	r0, [r7, #4]
 805c28e:	f7ff fe6b 	bl	805bf68 <xEventGroupSetBits>
 805c292:	bf00      	nop
 805c294:	3708      	adds	r7, #8
 805c296:	46bd      	mov	sp, r7
 805c298:	bd80      	pop	{r7, pc}

0805c29a <vEventGroupClearBitsCallback>:
 805c29a:	b580      	push	{r7, lr}
 805c29c:	b082      	sub	sp, #8
 805c29e:	af00      	add	r7, sp, #0
 805c2a0:	6078      	str	r0, [r7, #4]
 805c2a2:	6039      	str	r1, [r7, #0]
 805c2a4:	6839      	ldr	r1, [r7, #0]
 805c2a6:	6878      	ldr	r0, [r7, #4]
 805c2a8:	f7ff fe1a 	bl	805bee0 <xEventGroupClearBits>
 805c2ac:	bf00      	nop
 805c2ae:	3708      	adds	r7, #8
 805c2b0:	46bd      	mov	sp, r7
 805c2b2:	bd80      	pop	{r7, pc}

0805c2b4 <uxEventGroupGetNumber>:
 805c2b4:	b480      	push	{r7}
 805c2b6:	b085      	sub	sp, #20
 805c2b8:	af00      	add	r7, sp, #0
 805c2ba:	6078      	str	r0, [r7, #4]
 805c2bc:	687b      	ldr	r3, [r7, #4]
 805c2be:	60bb      	str	r3, [r7, #8]
 805c2c0:	687b      	ldr	r3, [r7, #4]
 805c2c2:	2b00      	cmp	r3, #0
 805c2c4:	d102      	bne.n	805c2cc <uxEventGroupGetNumber+0x18>
 805c2c6:	2300      	movs	r3, #0
 805c2c8:	60fb      	str	r3, [r7, #12]
 805c2ca:	e002      	b.n	805c2d2 <uxEventGroupGetNumber+0x1e>
 805c2cc:	68bb      	ldr	r3, [r7, #8]
 805c2ce:	699b      	ldr	r3, [r3, #24]
 805c2d0:	60fb      	str	r3, [r7, #12]
 805c2d2:	68fb      	ldr	r3, [r7, #12]
 805c2d4:	4618      	mov	r0, r3
 805c2d6:	3714      	adds	r7, #20
 805c2d8:	46bd      	mov	sp, r7
 805c2da:	bc80      	pop	{r7}
 805c2dc:	4770      	bx	lr

0805c2de <vEventGroupSetNumber>:
 805c2de:	b480      	push	{r7}
 805c2e0:	b083      	sub	sp, #12
 805c2e2:	af00      	add	r7, sp, #0
 805c2e4:	6078      	str	r0, [r7, #4]
 805c2e6:	6039      	str	r1, [r7, #0]
 805c2e8:	687b      	ldr	r3, [r7, #4]
 805c2ea:	683a      	ldr	r2, [r7, #0]
 805c2ec:	619a      	str	r2, [r3, #24]
 805c2ee:	bf00      	nop
 805c2f0:	370c      	adds	r7, #12
 805c2f2:	46bd      	mov	sp, r7
 805c2f4:	bc80      	pop	{r7}
 805c2f6:	4770      	bx	lr

0805c2f8 <prvTestWaitCondition>:
 805c2f8:	b480      	push	{r7}
 805c2fa:	b087      	sub	sp, #28
 805c2fc:	af00      	add	r7, sp, #0
 805c2fe:	60f8      	str	r0, [r7, #12]
 805c300:	60b9      	str	r1, [r7, #8]
 805c302:	607a      	str	r2, [r7, #4]
 805c304:	2300      	movs	r3, #0
 805c306:	617b      	str	r3, [r7, #20]
 805c308:	687b      	ldr	r3, [r7, #4]
 805c30a:	2b00      	cmp	r3, #0
 805c30c:	d107      	bne.n	805c31e <prvTestWaitCondition+0x26>
 805c30e:	68fa      	ldr	r2, [r7, #12]
 805c310:	68bb      	ldr	r3, [r7, #8]
 805c312:	4013      	ands	r3, r2
 805c314:	2b00      	cmp	r3, #0
 805c316:	d00a      	beq.n	805c32e <prvTestWaitCondition+0x36>
 805c318:	2301      	movs	r3, #1
 805c31a:	617b      	str	r3, [r7, #20]
 805c31c:	e007      	b.n	805c32e <prvTestWaitCondition+0x36>
 805c31e:	68fa      	ldr	r2, [r7, #12]
 805c320:	68bb      	ldr	r3, [r7, #8]
 805c322:	4013      	ands	r3, r2
 805c324:	68ba      	ldr	r2, [r7, #8]
 805c326:	429a      	cmp	r2, r3
 805c328:	d101      	bne.n	805c32e <prvTestWaitCondition+0x36>
 805c32a:	2301      	movs	r3, #1
 805c32c:	617b      	str	r3, [r7, #20]
 805c32e:	697b      	ldr	r3, [r7, #20]
 805c330:	4618      	mov	r0, r3
 805c332:	371c      	adds	r7, #28
 805c334:	46bd      	mov	sp, r7
 805c336:	bc80      	pop	{r7}
 805c338:	4770      	bx	lr
 805c33a:	bf00      	nop

0805c33c <vListInitialise>:
 805c33c:	b480      	push	{r7}
 805c33e:	b083      	sub	sp, #12
 805c340:	af00      	add	r7, sp, #0
 805c342:	6078      	str	r0, [r7, #4]
 805c344:	687b      	ldr	r3, [r7, #4]
 805c346:	f103 0208 	add.w	r2, r3, #8
 805c34a:	687b      	ldr	r3, [r7, #4]
 805c34c:	605a      	str	r2, [r3, #4]
 805c34e:	687b      	ldr	r3, [r7, #4]
 805c350:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 805c354:	609a      	str	r2, [r3, #8]
 805c356:	687b      	ldr	r3, [r7, #4]
 805c358:	f103 0208 	add.w	r2, r3, #8
 805c35c:	687b      	ldr	r3, [r7, #4]
 805c35e:	60da      	str	r2, [r3, #12]
 805c360:	687b      	ldr	r3, [r7, #4]
 805c362:	f103 0208 	add.w	r2, r3, #8
 805c366:	687b      	ldr	r3, [r7, #4]
 805c368:	611a      	str	r2, [r3, #16]
 805c36a:	687b      	ldr	r3, [r7, #4]
 805c36c:	2200      	movs	r2, #0
 805c36e:	601a      	str	r2, [r3, #0]
 805c370:	bf00      	nop
 805c372:	370c      	adds	r7, #12
 805c374:	46bd      	mov	sp, r7
 805c376:	bc80      	pop	{r7}
 805c378:	4770      	bx	lr

0805c37a <vListInitialiseItem>:
 805c37a:	b480      	push	{r7}
 805c37c:	b083      	sub	sp, #12
 805c37e:	af00      	add	r7, sp, #0
 805c380:	6078      	str	r0, [r7, #4]
 805c382:	687b      	ldr	r3, [r7, #4]
 805c384:	2200      	movs	r2, #0
 805c386:	611a      	str	r2, [r3, #16]
 805c388:	bf00      	nop
 805c38a:	370c      	adds	r7, #12
 805c38c:	46bd      	mov	sp, r7
 805c38e:	bc80      	pop	{r7}
 805c390:	4770      	bx	lr

0805c392 <vListInsert>:
 805c392:	b480      	push	{r7}
 805c394:	b085      	sub	sp, #20
 805c396:	af00      	add	r7, sp, #0
 805c398:	6078      	str	r0, [r7, #4]
 805c39a:	6039      	str	r1, [r7, #0]
 805c39c:	683b      	ldr	r3, [r7, #0]
 805c39e:	681b      	ldr	r3, [r3, #0]
 805c3a0:	60bb      	str	r3, [r7, #8]
 805c3a2:	68bb      	ldr	r3, [r7, #8]
 805c3a4:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 805c3a8:	d103      	bne.n	805c3b2 <vListInsert+0x20>
 805c3aa:	687b      	ldr	r3, [r7, #4]
 805c3ac:	691b      	ldr	r3, [r3, #16]
 805c3ae:	60fb      	str	r3, [r7, #12]
 805c3b0:	e00c      	b.n	805c3cc <vListInsert+0x3a>
 805c3b2:	687b      	ldr	r3, [r7, #4]
 805c3b4:	3308      	adds	r3, #8
 805c3b6:	60fb      	str	r3, [r7, #12]
 805c3b8:	e002      	b.n	805c3c0 <vListInsert+0x2e>
 805c3ba:	68fb      	ldr	r3, [r7, #12]
 805c3bc:	685b      	ldr	r3, [r3, #4]
 805c3be:	60fb      	str	r3, [r7, #12]
 805c3c0:	68fb      	ldr	r3, [r7, #12]
 805c3c2:	685b      	ldr	r3, [r3, #4]
 805c3c4:	681b      	ldr	r3, [r3, #0]
 805c3c6:	68ba      	ldr	r2, [r7, #8]
 805c3c8:	429a      	cmp	r2, r3
 805c3ca:	d2f6      	bcs.n	805c3ba <vListInsert+0x28>
 805c3cc:	68fb      	ldr	r3, [r7, #12]
 805c3ce:	685a      	ldr	r2, [r3, #4]
 805c3d0:	683b      	ldr	r3, [r7, #0]
 805c3d2:	605a      	str	r2, [r3, #4]
 805c3d4:	683b      	ldr	r3, [r7, #0]
 805c3d6:	685b      	ldr	r3, [r3, #4]
 805c3d8:	683a      	ldr	r2, [r7, #0]
 805c3da:	609a      	str	r2, [r3, #8]
 805c3dc:	683b      	ldr	r3, [r7, #0]
 805c3de:	68fa      	ldr	r2, [r7, #12]
 805c3e0:	609a      	str	r2, [r3, #8]
 805c3e2:	68fb      	ldr	r3, [r7, #12]
 805c3e4:	683a      	ldr	r2, [r7, #0]
 805c3e6:	605a      	str	r2, [r3, #4]
 805c3e8:	683b      	ldr	r3, [r7, #0]
 805c3ea:	687a      	ldr	r2, [r7, #4]
 805c3ec:	611a      	str	r2, [r3, #16]
 805c3ee:	687b      	ldr	r3, [r7, #4]
 805c3f0:	681b      	ldr	r3, [r3, #0]
 805c3f2:	1c5a      	adds	r2, r3, #1
 805c3f4:	687b      	ldr	r3, [r7, #4]
 805c3f6:	601a      	str	r2, [r3, #0]
 805c3f8:	bf00      	nop
 805c3fa:	3714      	adds	r7, #20
 805c3fc:	46bd      	mov	sp, r7
 805c3fe:	bc80      	pop	{r7}
 805c400:	4770      	bx	lr

0805c402 <vListInsertEnd>:
 805c402:	b480      	push	{r7}
 805c404:	b085      	sub	sp, #20
 805c406:	af00      	add	r7, sp, #0
 805c408:	6078      	str	r0, [r7, #4]
 805c40a:	6039      	str	r1, [r7, #0]
 805c40c:	687b      	ldr	r3, [r7, #4]
 805c40e:	685b      	ldr	r3, [r3, #4]
 805c410:	60fb      	str	r3, [r7, #12]
 805c412:	683b      	ldr	r3, [r7, #0]
 805c414:	68fa      	ldr	r2, [r7, #12]
 805c416:	605a      	str	r2, [r3, #4]
 805c418:	68fb      	ldr	r3, [r7, #12]
 805c41a:	689a      	ldr	r2, [r3, #8]
 805c41c:	683b      	ldr	r3, [r7, #0]
 805c41e:	609a      	str	r2, [r3, #8]
 805c420:	68fb      	ldr	r3, [r7, #12]
 805c422:	689b      	ldr	r3, [r3, #8]
 805c424:	683a      	ldr	r2, [r7, #0]
 805c426:	605a      	str	r2, [r3, #4]
 805c428:	68fb      	ldr	r3, [r7, #12]
 805c42a:	683a      	ldr	r2, [r7, #0]
 805c42c:	609a      	str	r2, [r3, #8]
 805c42e:	683b      	ldr	r3, [r7, #0]
 805c430:	687a      	ldr	r2, [r7, #4]
 805c432:	611a      	str	r2, [r3, #16]
 805c434:	687b      	ldr	r3, [r7, #4]
 805c436:	681b      	ldr	r3, [r3, #0]
 805c438:	1c5a      	adds	r2, r3, #1
 805c43a:	687b      	ldr	r3, [r7, #4]
 805c43c:	601a      	str	r2, [r3, #0]
 805c43e:	bf00      	nop
 805c440:	3714      	adds	r7, #20
 805c442:	46bd      	mov	sp, r7
 805c444:	bc80      	pop	{r7}
 805c446:	4770      	bx	lr

0805c448 <uxListRemove>:
 805c448:	b480      	push	{r7}
 805c44a:	b085      	sub	sp, #20
 805c44c:	af00      	add	r7, sp, #0
 805c44e:	6078      	str	r0, [r7, #4]
 805c450:	687b      	ldr	r3, [r7, #4]
 805c452:	691b      	ldr	r3, [r3, #16]
 805c454:	60fb      	str	r3, [r7, #12]
 805c456:	687b      	ldr	r3, [r7, #4]
 805c458:	685b      	ldr	r3, [r3, #4]
 805c45a:	687a      	ldr	r2, [r7, #4]
 805c45c:	6892      	ldr	r2, [r2, #8]
 805c45e:	609a      	str	r2, [r3, #8]
 805c460:	687b      	ldr	r3, [r7, #4]
 805c462:	689b      	ldr	r3, [r3, #8]
 805c464:	687a      	ldr	r2, [r7, #4]
 805c466:	6852      	ldr	r2, [r2, #4]
 805c468:	605a      	str	r2, [r3, #4]
 805c46a:	68fb      	ldr	r3, [r7, #12]
 805c46c:	685b      	ldr	r3, [r3, #4]
 805c46e:	687a      	ldr	r2, [r7, #4]
 805c470:	429a      	cmp	r2, r3
 805c472:	d103      	bne.n	805c47c <uxListRemove+0x34>
 805c474:	687b      	ldr	r3, [r7, #4]
 805c476:	689a      	ldr	r2, [r3, #8]
 805c478:	68fb      	ldr	r3, [r7, #12]
 805c47a:	605a      	str	r2, [r3, #4]
 805c47c:	687b      	ldr	r3, [r7, #4]
 805c47e:	2200      	movs	r2, #0
 805c480:	611a      	str	r2, [r3, #16]
 805c482:	68fb      	ldr	r3, [r7, #12]
 805c484:	681b      	ldr	r3, [r3, #0]
 805c486:	1e5a      	subs	r2, r3, #1
 805c488:	68fb      	ldr	r3, [r7, #12]
 805c48a:	601a      	str	r2, [r3, #0]
 805c48c:	68fb      	ldr	r3, [r7, #12]
 805c48e:	681b      	ldr	r3, [r3, #0]
 805c490:	4618      	mov	r0, r3
 805c492:	3714      	adds	r7, #20
 805c494:	46bd      	mov	sp, r7
 805c496:	bc80      	pop	{r7}
 805c498:	4770      	bx	lr
	...

0805c49c <xQueueGenericSend>:
 805c49c:	b580      	push	{r7, lr}
 805c49e:	b08a      	sub	sp, #40	; 0x28
 805c4a0:	af00      	add	r7, sp, #0
 805c4a2:	60f8      	str	r0, [r7, #12]
 805c4a4:	60b9      	str	r1, [r7, #8]
 805c4a6:	607a      	str	r2, [r7, #4]
 805c4a8:	603b      	str	r3, [r7, #0]
 805c4aa:	2300      	movs	r3, #0
 805c4ac:	627b      	str	r3, [r7, #36]	; 0x24
 805c4ae:	68fb      	ldr	r3, [r7, #12]
 805c4b0:	623b      	str	r3, [r7, #32]
 805c4b2:	6a3b      	ldr	r3, [r7, #32]
 805c4b4:	2b00      	cmp	r3, #0
 805c4b6:	d102      	bne.n	805c4be <xQueueGenericSend+0x22>
 805c4b8:	4b5d      	ldr	r3, [pc, #372]	; (805c630 <xQueueGenericSend+0x194>)
 805c4ba:	4798      	blx	r3
 805c4bc:	e7fe      	b.n	805c4bc <xQueueGenericSend+0x20>
 805c4be:	68bb      	ldr	r3, [r7, #8]
 805c4c0:	2b00      	cmp	r3, #0
 805c4c2:	d103      	bne.n	805c4cc <xQueueGenericSend+0x30>
 805c4c4:	6a3b      	ldr	r3, [r7, #32]
 805c4c6:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 805c4c8:	2b00      	cmp	r3, #0
 805c4ca:	d101      	bne.n	805c4d0 <xQueueGenericSend+0x34>
 805c4cc:	2301      	movs	r3, #1
 805c4ce:	e000      	b.n	805c4d2 <xQueueGenericSend+0x36>
 805c4d0:	2300      	movs	r3, #0
 805c4d2:	2b00      	cmp	r3, #0
 805c4d4:	d102      	bne.n	805c4dc <xQueueGenericSend+0x40>
 805c4d6:	4b56      	ldr	r3, [pc, #344]	; (805c630 <xQueueGenericSend+0x194>)
 805c4d8:	4798      	blx	r3
 805c4da:	e7fe      	b.n	805c4da <xQueueGenericSend+0x3e>
 805c4dc:	683b      	ldr	r3, [r7, #0]
 805c4de:	2b02      	cmp	r3, #2
 805c4e0:	d103      	bne.n	805c4ea <xQueueGenericSend+0x4e>
 805c4e2:	6a3b      	ldr	r3, [r7, #32]
 805c4e4:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 805c4e6:	2b01      	cmp	r3, #1
 805c4e8:	d101      	bne.n	805c4ee <xQueueGenericSend+0x52>
 805c4ea:	2301      	movs	r3, #1
 805c4ec:	e000      	b.n	805c4f0 <xQueueGenericSend+0x54>
 805c4ee:	2300      	movs	r3, #0
 805c4f0:	2b00      	cmp	r3, #0
 805c4f2:	d102      	bne.n	805c4fa <xQueueGenericSend+0x5e>
 805c4f4:	4b4e      	ldr	r3, [pc, #312]	; (805c630 <xQueueGenericSend+0x194>)
 805c4f6:	4798      	blx	r3
 805c4f8:	e7fe      	b.n	805c4f8 <xQueueGenericSend+0x5c>
 805c4fa:	4b4e      	ldr	r3, [pc, #312]	; (805c634 <xQueueGenericSend+0x198>)
 805c4fc:	4798      	blx	r3
 805c4fe:	4603      	mov	r3, r0
 805c500:	2b00      	cmp	r3, #0
 805c502:	d102      	bne.n	805c50a <xQueueGenericSend+0x6e>
 805c504:	687b      	ldr	r3, [r7, #4]
 805c506:	2b00      	cmp	r3, #0
 805c508:	d101      	bne.n	805c50e <xQueueGenericSend+0x72>
 805c50a:	2301      	movs	r3, #1
 805c50c:	e000      	b.n	805c510 <xQueueGenericSend+0x74>
 805c50e:	2300      	movs	r3, #0
 805c510:	2b00      	cmp	r3, #0
 805c512:	d102      	bne.n	805c51a <xQueueGenericSend+0x7e>
 805c514:	4b46      	ldr	r3, [pc, #280]	; (805c630 <xQueueGenericSend+0x194>)
 805c516:	4798      	blx	r3
 805c518:	e7fe      	b.n	805c518 <xQueueGenericSend+0x7c>
 805c51a:	4b47      	ldr	r3, [pc, #284]	; (805c638 <xQueueGenericSend+0x19c>)
 805c51c:	4798      	blx	r3
 805c51e:	6a3b      	ldr	r3, [r7, #32]
 805c520:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 805c522:	6a3b      	ldr	r3, [r7, #32]
 805c524:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 805c526:	429a      	cmp	r2, r3
 805c528:	d302      	bcc.n	805c530 <xQueueGenericSend+0x94>
 805c52a:	683b      	ldr	r3, [r7, #0]
 805c52c:	2b02      	cmp	r3, #2
 805c52e:	d11d      	bne.n	805c56c <xQueueGenericSend+0xd0>
 805c530:	683a      	ldr	r2, [r7, #0]
 805c532:	68b9      	ldr	r1, [r7, #8]
 805c534:	6a38      	ldr	r0, [r7, #32]
 805c536:	f001 f8f5 	bl	805d724 <prvCopyDataToQueue>
 805c53a:	61f8      	str	r0, [r7, #28]
 805c53c:	6a3b      	ldr	r3, [r7, #32]
 805c53e:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 805c540:	2b00      	cmp	r3, #0
 805c542:	d00a      	beq.n	805c55a <xQueueGenericSend+0xbe>
 805c544:	6a3b      	ldr	r3, [r7, #32]
 805c546:	3324      	adds	r3, #36	; 0x24
 805c548:	4618      	mov	r0, r3
 805c54a:	4b3c      	ldr	r3, [pc, #240]	; (805c63c <xQueueGenericSend+0x1a0>)
 805c54c:	4798      	blx	r3
 805c54e:	4603      	mov	r3, r0
 805c550:	2b00      	cmp	r3, #0
 805c552:	d007      	beq.n	805c564 <xQueueGenericSend+0xc8>
 805c554:	4b3a      	ldr	r3, [pc, #232]	; (805c640 <xQueueGenericSend+0x1a4>)
 805c556:	4798      	blx	r3
 805c558:	e004      	b.n	805c564 <xQueueGenericSend+0xc8>
 805c55a:	69fb      	ldr	r3, [r7, #28]
 805c55c:	2b00      	cmp	r3, #0
 805c55e:	d001      	beq.n	805c564 <xQueueGenericSend+0xc8>
 805c560:	4b37      	ldr	r3, [pc, #220]	; (805c640 <xQueueGenericSend+0x1a4>)
 805c562:	4798      	blx	r3
 805c564:	4b37      	ldr	r3, [pc, #220]	; (805c644 <xQueueGenericSend+0x1a8>)
 805c566:	4798      	blx	r3
 805c568:	2301      	movs	r3, #1
 805c56a:	e05c      	b.n	805c626 <xQueueGenericSend+0x18a>
 805c56c:	687b      	ldr	r3, [r7, #4]
 805c56e:	2b00      	cmp	r3, #0
 805c570:	d103      	bne.n	805c57a <xQueueGenericSend+0xde>
 805c572:	4b34      	ldr	r3, [pc, #208]	; (805c644 <xQueueGenericSend+0x1a8>)
 805c574:	4798      	blx	r3
 805c576:	2300      	movs	r3, #0
 805c578:	e055      	b.n	805c626 <xQueueGenericSend+0x18a>
 805c57a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805c57c:	2b00      	cmp	r3, #0
 805c57e:	d106      	bne.n	805c58e <xQueueGenericSend+0xf2>
 805c580:	f107 0314 	add.w	r3, r7, #20
 805c584:	4618      	mov	r0, r3
 805c586:	4b30      	ldr	r3, [pc, #192]	; (805c648 <xQueueGenericSend+0x1ac>)
 805c588:	4798      	blx	r3
 805c58a:	2301      	movs	r3, #1
 805c58c:	627b      	str	r3, [r7, #36]	; 0x24
 805c58e:	4b2d      	ldr	r3, [pc, #180]	; (805c644 <xQueueGenericSend+0x1a8>)
 805c590:	4798      	blx	r3
 805c592:	4b2e      	ldr	r3, [pc, #184]	; (805c64c <xQueueGenericSend+0x1b0>)
 805c594:	4798      	blx	r3
 805c596:	4b28      	ldr	r3, [pc, #160]	; (805c638 <xQueueGenericSend+0x19c>)
 805c598:	4798      	blx	r3
 805c59a:	6a3b      	ldr	r3, [r7, #32]
 805c59c:	f893 3044 	ldrb.w	r3, [r3, #68]	; 0x44
 805c5a0:	b25b      	sxtb	r3, r3
 805c5a2:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 805c5a6:	d103      	bne.n	805c5b0 <xQueueGenericSend+0x114>
 805c5a8:	6a3b      	ldr	r3, [r7, #32]
 805c5aa:	2200      	movs	r2, #0
 805c5ac:	f883 2044 	strb.w	r2, [r3, #68]	; 0x44
 805c5b0:	6a3b      	ldr	r3, [r7, #32]
 805c5b2:	f893 3045 	ldrb.w	r3, [r3, #69]	; 0x45
 805c5b6:	b25b      	sxtb	r3, r3
 805c5b8:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 805c5bc:	d103      	bne.n	805c5c6 <xQueueGenericSend+0x12a>
 805c5be:	6a3b      	ldr	r3, [r7, #32]
 805c5c0:	2200      	movs	r2, #0
 805c5c2:	f883 2045 	strb.w	r2, [r3, #69]	; 0x45
 805c5c6:	4b1f      	ldr	r3, [pc, #124]	; (805c644 <xQueueGenericSend+0x1a8>)
 805c5c8:	4798      	blx	r3
 805c5ca:	1d3a      	adds	r2, r7, #4
 805c5cc:	f107 0314 	add.w	r3, r7, #20
 805c5d0:	4611      	mov	r1, r2
 805c5d2:	4618      	mov	r0, r3
 805c5d4:	4b1e      	ldr	r3, [pc, #120]	; (805c650 <xQueueGenericSend+0x1b4>)
 805c5d6:	4798      	blx	r3
 805c5d8:	4603      	mov	r3, r0
 805c5da:	2b00      	cmp	r3, #0
 805c5dc:	d11d      	bne.n	805c61a <xQueueGenericSend+0x17e>
 805c5de:	6a38      	ldr	r0, [r7, #32]
 805c5e0:	f001 f884 	bl	805d6ec <prvIsQueueFull>
 805c5e4:	4603      	mov	r3, r0
 805c5e6:	2b00      	cmp	r3, #0
 805c5e8:	d011      	beq.n	805c60e <xQueueGenericSend+0x172>
 805c5ea:	6a3b      	ldr	r3, [r7, #32]
 805c5ec:	3310      	adds	r3, #16
 805c5ee:	687a      	ldr	r2, [r7, #4]
 805c5f0:	4611      	mov	r1, r2
 805c5f2:	4618      	mov	r0, r3
 805c5f4:	4b17      	ldr	r3, [pc, #92]	; (805c654 <xQueueGenericSend+0x1b8>)
 805c5f6:	4798      	blx	r3
 805c5f8:	6a38      	ldr	r0, [r7, #32]
 805c5fa:	f001 f803 	bl	805d604 <prvUnlockQueue>
 805c5fe:	4b16      	ldr	r3, [pc, #88]	; (805c658 <xQueueGenericSend+0x1bc>)
 805c600:	4798      	blx	r3
 805c602:	4603      	mov	r3, r0
 805c604:	2b00      	cmp	r3, #0
 805c606:	d188      	bne.n	805c51a <xQueueGenericSend+0x7e>
 805c608:	4b0d      	ldr	r3, [pc, #52]	; (805c640 <xQueueGenericSend+0x1a4>)
 805c60a:	4798      	blx	r3
 805c60c:	e785      	b.n	805c51a <xQueueGenericSend+0x7e>
 805c60e:	6a38      	ldr	r0, [r7, #32]
 805c610:	f000 fff8 	bl	805d604 <prvUnlockQueue>
 805c614:	4b10      	ldr	r3, [pc, #64]	; (805c658 <xQueueGenericSend+0x1bc>)
 805c616:	4798      	blx	r3
 805c618:	e77f      	b.n	805c51a <xQueueGenericSend+0x7e>
 805c61a:	6a38      	ldr	r0, [r7, #32]
 805c61c:	f000 fff2 	bl	805d604 <prvUnlockQueue>
 805c620:	4b0d      	ldr	r3, [pc, #52]	; (805c658 <xQueueGenericSend+0x1bc>)
 805c622:	4798      	blx	r3
 805c624:	2300      	movs	r3, #0
 805c626:	4618      	mov	r0, r3
 805c628:	3728      	adds	r7, #40	; 0x28
 805c62a:	46bd      	mov	sp, r7
 805c62c:	bd80      	pop	{r7, pc}
 805c62e:	bf00      	nop
 805c630:	0805f1c7 	.word	0x0805f1c7
 805c634:	0805756d 	.word	0x0805756d
 805c638:	0805ecc5 	.word	0x0805ecc5
 805c63c:	080570f1 	.word	0x080570f1
 805c640:	0805eca5 	.word	0x0805eca5
 805c644:	0805eced 	.word	0x0805eced
 805c648:	08057a2d 	.word	0x08057a2d
 805c64c:	08055dbd 	.word	0x08055dbd
 805c650:	08056c1d 	.word	0x08056c1d
 805c654:	08056f89 	.word	0x08056f89
 805c658:	08055dd9 	.word	0x08055dd9

0805c65c <xQueuePeek>:
 805c65c:	b580      	push	{r7, lr}
 805c65e:	b08a      	sub	sp, #40	; 0x28
 805c660:	af00      	add	r7, sp, #0
 805c662:	60f8      	str	r0, [r7, #12]
 805c664:	60b9      	str	r1, [r7, #8]
 805c666:	607a      	str	r2, [r7, #4]
 805c668:	2300      	movs	r3, #0
 805c66a:	627b      	str	r3, [r7, #36]	; 0x24
 805c66c:	68fb      	ldr	r3, [r7, #12]
 805c66e:	623b      	str	r3, [r7, #32]
 805c670:	6a3b      	ldr	r3, [r7, #32]
 805c672:	2b00      	cmp	r3, #0
 805c674:	d102      	bne.n	805c67c <xQueuePeek+0x20>
 805c676:	4b57      	ldr	r3, [pc, #348]	; (805c7d4 <xQueuePeek+0x178>)
 805c678:	4798      	blx	r3
 805c67a:	e7fe      	b.n	805c67a <xQueuePeek+0x1e>
 805c67c:	68bb      	ldr	r3, [r7, #8]
 805c67e:	2b00      	cmp	r3, #0
 805c680:	d103      	bne.n	805c68a <xQueuePeek+0x2e>
 805c682:	6a3b      	ldr	r3, [r7, #32]
 805c684:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 805c686:	2b00      	cmp	r3, #0
 805c688:	d101      	bne.n	805c68e <xQueuePeek+0x32>
 805c68a:	2301      	movs	r3, #1
 805c68c:	e000      	b.n	805c690 <xQueuePeek+0x34>
 805c68e:	2300      	movs	r3, #0
 805c690:	2b00      	cmp	r3, #0
 805c692:	d102      	bne.n	805c69a <xQueuePeek+0x3e>
 805c694:	4b4f      	ldr	r3, [pc, #316]	; (805c7d4 <xQueuePeek+0x178>)
 805c696:	4798      	blx	r3
 805c698:	e7fe      	b.n	805c698 <xQueuePeek+0x3c>
 805c69a:	4b4f      	ldr	r3, [pc, #316]	; (805c7d8 <xQueuePeek+0x17c>)
 805c69c:	4798      	blx	r3
 805c69e:	4603      	mov	r3, r0
 805c6a0:	2b00      	cmp	r3, #0
 805c6a2:	d102      	bne.n	805c6aa <xQueuePeek+0x4e>
 805c6a4:	687b      	ldr	r3, [r7, #4]
 805c6a6:	2b00      	cmp	r3, #0
 805c6a8:	d101      	bne.n	805c6ae <xQueuePeek+0x52>
 805c6aa:	2301      	movs	r3, #1
 805c6ac:	e000      	b.n	805c6b0 <xQueuePeek+0x54>
 805c6ae:	2300      	movs	r3, #0
 805c6b0:	2b00      	cmp	r3, #0
 805c6b2:	d102      	bne.n	805c6ba <xQueuePeek+0x5e>
 805c6b4:	4b47      	ldr	r3, [pc, #284]	; (805c7d4 <xQueuePeek+0x178>)
 805c6b6:	4798      	blx	r3
 805c6b8:	e7fe      	b.n	805c6b8 <xQueuePeek+0x5c>
 805c6ba:	4b48      	ldr	r3, [pc, #288]	; (805c7dc <xQueuePeek+0x180>)
 805c6bc:	4798      	blx	r3
 805c6be:	6a3b      	ldr	r3, [r7, #32]
 805c6c0:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 805c6c2:	61fb      	str	r3, [r7, #28]
 805c6c4:	69fb      	ldr	r3, [r7, #28]
 805c6c6:	2b00      	cmp	r3, #0
 805c6c8:	d01b      	beq.n	805c702 <xQueuePeek+0xa6>
 805c6ca:	6a3b      	ldr	r3, [r7, #32]
 805c6cc:	68db      	ldr	r3, [r3, #12]
 805c6ce:	61bb      	str	r3, [r7, #24]
 805c6d0:	68b9      	ldr	r1, [r7, #8]
 805c6d2:	6a38      	ldr	r0, [r7, #32]
 805c6d4:	f001 f894 	bl	805d800 <prvCopyDataFromQueue>
 805c6d8:	6a3b      	ldr	r3, [r7, #32]
 805c6da:	69ba      	ldr	r2, [r7, #24]
 805c6dc:	60da      	str	r2, [r3, #12]
 805c6de:	6a3b      	ldr	r3, [r7, #32]
 805c6e0:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 805c6e2:	2b00      	cmp	r3, #0
 805c6e4:	d009      	beq.n	805c6fa <xQueuePeek+0x9e>
 805c6e6:	6a3b      	ldr	r3, [r7, #32]
 805c6e8:	3324      	adds	r3, #36	; 0x24
 805c6ea:	4618      	mov	r0, r3
 805c6ec:	4b3c      	ldr	r3, [pc, #240]	; (805c7e0 <xQueuePeek+0x184>)
 805c6ee:	4798      	blx	r3
 805c6f0:	4603      	mov	r3, r0
 805c6f2:	2b00      	cmp	r3, #0
 805c6f4:	d001      	beq.n	805c6fa <xQueuePeek+0x9e>
 805c6f6:	4b3b      	ldr	r3, [pc, #236]	; (805c7e4 <xQueuePeek+0x188>)
 805c6f8:	4798      	blx	r3
 805c6fa:	4b3b      	ldr	r3, [pc, #236]	; (805c7e8 <xQueuePeek+0x18c>)
 805c6fc:	4798      	blx	r3
 805c6fe:	2301      	movs	r3, #1
 805c700:	e063      	b.n	805c7ca <xQueuePeek+0x16e>
 805c702:	687b      	ldr	r3, [r7, #4]
 805c704:	2b00      	cmp	r3, #0
 805c706:	d103      	bne.n	805c710 <xQueuePeek+0xb4>
 805c708:	4b37      	ldr	r3, [pc, #220]	; (805c7e8 <xQueuePeek+0x18c>)
 805c70a:	4798      	blx	r3
 805c70c:	2300      	movs	r3, #0
 805c70e:	e05c      	b.n	805c7ca <xQueuePeek+0x16e>
 805c710:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805c712:	2b00      	cmp	r3, #0
 805c714:	d106      	bne.n	805c724 <xQueuePeek+0xc8>
 805c716:	f107 0310 	add.w	r3, r7, #16
 805c71a:	4618      	mov	r0, r3
 805c71c:	4b33      	ldr	r3, [pc, #204]	; (805c7ec <xQueuePeek+0x190>)
 805c71e:	4798      	blx	r3
 805c720:	2301      	movs	r3, #1
 805c722:	627b      	str	r3, [r7, #36]	; 0x24
 805c724:	4b30      	ldr	r3, [pc, #192]	; (805c7e8 <xQueuePeek+0x18c>)
 805c726:	4798      	blx	r3
 805c728:	4b31      	ldr	r3, [pc, #196]	; (805c7f0 <xQueuePeek+0x194>)
 805c72a:	4798      	blx	r3
 805c72c:	4b2b      	ldr	r3, [pc, #172]	; (805c7dc <xQueuePeek+0x180>)
 805c72e:	4798      	blx	r3
 805c730:	6a3b      	ldr	r3, [r7, #32]
 805c732:	f893 3044 	ldrb.w	r3, [r3, #68]	; 0x44
 805c736:	b25b      	sxtb	r3, r3
 805c738:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 805c73c:	d103      	bne.n	805c746 <xQueuePeek+0xea>
 805c73e:	6a3b      	ldr	r3, [r7, #32]
 805c740:	2200      	movs	r2, #0
 805c742:	f883 2044 	strb.w	r2, [r3, #68]	; 0x44
 805c746:	6a3b      	ldr	r3, [r7, #32]
 805c748:	f893 3045 	ldrb.w	r3, [r3, #69]	; 0x45
 805c74c:	b25b      	sxtb	r3, r3
 805c74e:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 805c752:	d103      	bne.n	805c75c <xQueuePeek+0x100>
 805c754:	6a3b      	ldr	r3, [r7, #32]
 805c756:	2200      	movs	r2, #0
 805c758:	f883 2045 	strb.w	r2, [r3, #69]	; 0x45
 805c75c:	4b22      	ldr	r3, [pc, #136]	; (805c7e8 <xQueuePeek+0x18c>)
 805c75e:	4798      	blx	r3
 805c760:	1d3a      	adds	r2, r7, #4
 805c762:	f107 0310 	add.w	r3, r7, #16
 805c766:	4611      	mov	r1, r2
 805c768:	4618      	mov	r0, r3
 805c76a:	4b22      	ldr	r3, [pc, #136]	; (805c7f4 <xQueuePeek+0x198>)
 805c76c:	4798      	blx	r3
 805c76e:	4603      	mov	r3, r0
 805c770:	2b00      	cmp	r3, #0
 805c772:	d11d      	bne.n	805c7b0 <xQueuePeek+0x154>
 805c774:	6a38      	ldr	r0, [r7, #32]
 805c776:	f000 ff9f 	bl	805d6b8 <prvIsQueueEmpty>
 805c77a:	4603      	mov	r3, r0
 805c77c:	2b00      	cmp	r3, #0
 805c77e:	d011      	beq.n	805c7a4 <xQueuePeek+0x148>
 805c780:	6a3b      	ldr	r3, [r7, #32]
 805c782:	3324      	adds	r3, #36	; 0x24
 805c784:	687a      	ldr	r2, [r7, #4]
 805c786:	4611      	mov	r1, r2
 805c788:	4618      	mov	r0, r3
 805c78a:	4b1b      	ldr	r3, [pc, #108]	; (805c7f8 <xQueuePeek+0x19c>)
 805c78c:	4798      	blx	r3
 805c78e:	6a38      	ldr	r0, [r7, #32]
 805c790:	f000 ff38 	bl	805d604 <prvUnlockQueue>
 805c794:	4b19      	ldr	r3, [pc, #100]	; (805c7fc <xQueuePeek+0x1a0>)
 805c796:	4798      	blx	r3
 805c798:	4603      	mov	r3, r0
 805c79a:	2b00      	cmp	r3, #0
 805c79c:	d18d      	bne.n	805c6ba <xQueuePeek+0x5e>
 805c79e:	4b11      	ldr	r3, [pc, #68]	; (805c7e4 <xQueuePeek+0x188>)
 805c7a0:	4798      	blx	r3
 805c7a2:	e78a      	b.n	805c6ba <xQueuePeek+0x5e>
 805c7a4:	6a38      	ldr	r0, [r7, #32]
 805c7a6:	f000 ff2d 	bl	805d604 <prvUnlockQueue>
 805c7aa:	4b14      	ldr	r3, [pc, #80]	; (805c7fc <xQueuePeek+0x1a0>)
 805c7ac:	4798      	blx	r3
 805c7ae:	e784      	b.n	805c6ba <xQueuePeek+0x5e>
 805c7b0:	6a38      	ldr	r0, [r7, #32]
 805c7b2:	f000 ff27 	bl	805d604 <prvUnlockQueue>
 805c7b6:	4b11      	ldr	r3, [pc, #68]	; (805c7fc <xQueuePeek+0x1a0>)
 805c7b8:	4798      	blx	r3
 805c7ba:	6a38      	ldr	r0, [r7, #32]
 805c7bc:	f000 ff7c 	bl	805d6b8 <prvIsQueueEmpty>
 805c7c0:	4603      	mov	r3, r0
 805c7c2:	2b00      	cmp	r3, #0
 805c7c4:	f43f af79 	beq.w	805c6ba <xQueuePeek+0x5e>
 805c7c8:	2300      	movs	r3, #0
 805c7ca:	4618      	mov	r0, r3
 805c7cc:	3728      	adds	r7, #40	; 0x28
 805c7ce:	46bd      	mov	sp, r7
 805c7d0:	bd80      	pop	{r7, pc}
 805c7d2:	bf00      	nop
 805c7d4:	0805f1c7 	.word	0x0805f1c7
 805c7d8:	0805756d 	.word	0x0805756d
 805c7dc:	0805ecc5 	.word	0x0805ecc5
 805c7e0:	080570f1 	.word	0x080570f1
 805c7e4:	0805eca5 	.word	0x0805eca5
 805c7e8:	0805eced 	.word	0x0805eced
 805c7ec:	08057a2d 	.word	0x08057a2d
 805c7f0:	08055dbd 	.word	0x08055dbd
 805c7f4:	08056c1d 	.word	0x08056c1d
 805c7f8:	08056f89 	.word	0x08056f89
 805c7fc:	08055dd9 	.word	0x08055dd9

0805c800 <xQueuePeekFromISR>:
 805c800:	b580      	push	{r7, lr}
 805c802:	b086      	sub	sp, #24
 805c804:	af00      	add	r7, sp, #0
 805c806:	6078      	str	r0, [r7, #4]
 805c808:	6039      	str	r1, [r7, #0]
 805c80a:	687b      	ldr	r3, [r7, #4]
 805c80c:	613b      	str	r3, [r7, #16]
 805c80e:	693b      	ldr	r3, [r7, #16]
 805c810:	2b00      	cmp	r3, #0
 805c812:	d102      	bne.n	805c81a <xQueuePeekFromISR+0x1a>
 805c814:	4b1c      	ldr	r3, [pc, #112]	; (805c888 <xQueuePeekFromISR+0x88>)
 805c816:	4798      	blx	r3
 805c818:	e7fe      	b.n	805c818 <xQueuePeekFromISR+0x18>
 805c81a:	683b      	ldr	r3, [r7, #0]
 805c81c:	2b00      	cmp	r3, #0
 805c81e:	d103      	bne.n	805c828 <xQueuePeekFromISR+0x28>
 805c820:	693b      	ldr	r3, [r7, #16]
 805c822:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 805c824:	2b00      	cmp	r3, #0
 805c826:	d101      	bne.n	805c82c <xQueuePeekFromISR+0x2c>
 805c828:	2301      	movs	r3, #1
 805c82a:	e000      	b.n	805c82e <xQueuePeekFromISR+0x2e>
 805c82c:	2300      	movs	r3, #0
 805c82e:	2b00      	cmp	r3, #0
 805c830:	d102      	bne.n	805c838 <xQueuePeekFromISR+0x38>
 805c832:	4b15      	ldr	r3, [pc, #84]	; (805c888 <xQueuePeekFromISR+0x88>)
 805c834:	4798      	blx	r3
 805c836:	e7fe      	b.n	805c836 <xQueuePeekFromISR+0x36>
 805c838:	693b      	ldr	r3, [r7, #16]
 805c83a:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 805c83c:	2b00      	cmp	r3, #0
 805c83e:	d102      	bne.n	805c846 <xQueuePeekFromISR+0x46>
 805c840:	4b11      	ldr	r3, [pc, #68]	; (805c888 <xQueuePeekFromISR+0x88>)
 805c842:	4798      	blx	r3
 805c844:	e7fe      	b.n	805c844 <xQueuePeekFromISR+0x44>
 805c846:	4b11      	ldr	r3, [pc, #68]	; (805c88c <xQueuePeekFromISR+0x8c>)
 805c848:	4798      	blx	r3
 805c84a:	4b0f      	ldr	r3, [pc, #60]	; (805c888 <xQueuePeekFromISR+0x88>)
 805c84c:	4798      	blx	r3
 805c84e:	60f8      	str	r0, [r7, #12]
 805c850:	693b      	ldr	r3, [r7, #16]
 805c852:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 805c854:	2b00      	cmp	r3, #0
 805c856:	d00c      	beq.n	805c872 <xQueuePeekFromISR+0x72>
 805c858:	693b      	ldr	r3, [r7, #16]
 805c85a:	68db      	ldr	r3, [r3, #12]
 805c85c:	60bb      	str	r3, [r7, #8]
 805c85e:	6839      	ldr	r1, [r7, #0]
 805c860:	6938      	ldr	r0, [r7, #16]
 805c862:	f000 ffcd 	bl	805d800 <prvCopyDataFromQueue>
 805c866:	693b      	ldr	r3, [r7, #16]
 805c868:	68ba      	ldr	r2, [r7, #8]
 805c86a:	60da      	str	r2, [r3, #12]
 805c86c:	2301      	movs	r3, #1
 805c86e:	617b      	str	r3, [r7, #20]
 805c870:	e001      	b.n	805c876 <xQueuePeekFromISR+0x76>
 805c872:	2300      	movs	r3, #0
 805c874:	617b      	str	r3, [r7, #20]
 805c876:	68f8      	ldr	r0, [r7, #12]
 805c878:	4b05      	ldr	r3, [pc, #20]	; (805c890 <xQueuePeekFromISR+0x90>)
 805c87a:	4798      	blx	r3
 805c87c:	697b      	ldr	r3, [r7, #20]
 805c87e:	4618      	mov	r0, r3
 805c880:	3718      	adds	r7, #24
 805c882:	46bd      	mov	sp, r7
 805c884:	bd80      	pop	{r7, pc}
 805c886:	bf00      	nop
 805c888:	0805f1c7 	.word	0x0805f1c7
 805c88c:	080607fd 	.word	0x080607fd
 805c890:	0805f1e1 	.word	0x0805f1e1

0805c894 <xQueueReceive>:
 805c894:	b580      	push	{r7, lr}
 805c896:	b08a      	sub	sp, #40	; 0x28
 805c898:	af00      	add	r7, sp, #0
 805c89a:	60f8      	str	r0, [r7, #12]
 805c89c:	60b9      	str	r1, [r7, #8]
 805c89e:	607a      	str	r2, [r7, #4]
 805c8a0:	2300      	movs	r3, #0
 805c8a2:	627b      	str	r3, [r7, #36]	; 0x24
 805c8a4:	68fb      	ldr	r3, [r7, #12]
 805c8a6:	623b      	str	r3, [r7, #32]
 805c8a8:	6a3b      	ldr	r3, [r7, #32]
 805c8aa:	2b00      	cmp	r3, #0
 805c8ac:	d102      	bne.n	805c8b4 <xQueueReceive+0x20>
 805c8ae:	4b56      	ldr	r3, [pc, #344]	; (805ca08 <xQueueReceive+0x174>)
 805c8b0:	4798      	blx	r3
 805c8b2:	e7fe      	b.n	805c8b2 <xQueueReceive+0x1e>
 805c8b4:	68bb      	ldr	r3, [r7, #8]
 805c8b6:	2b00      	cmp	r3, #0
 805c8b8:	d103      	bne.n	805c8c2 <xQueueReceive+0x2e>
 805c8ba:	6a3b      	ldr	r3, [r7, #32]
 805c8bc:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 805c8be:	2b00      	cmp	r3, #0
 805c8c0:	d101      	bne.n	805c8c6 <xQueueReceive+0x32>
 805c8c2:	2301      	movs	r3, #1
 805c8c4:	e000      	b.n	805c8c8 <xQueueReceive+0x34>
 805c8c6:	2300      	movs	r3, #0
 805c8c8:	2b00      	cmp	r3, #0
 805c8ca:	d102      	bne.n	805c8d2 <xQueueReceive+0x3e>
 805c8cc:	4b4e      	ldr	r3, [pc, #312]	; (805ca08 <xQueueReceive+0x174>)
 805c8ce:	4798      	blx	r3
 805c8d0:	e7fe      	b.n	805c8d0 <xQueueReceive+0x3c>
 805c8d2:	4b4e      	ldr	r3, [pc, #312]	; (805ca0c <xQueueReceive+0x178>)
 805c8d4:	4798      	blx	r3
 805c8d6:	4603      	mov	r3, r0
 805c8d8:	2b00      	cmp	r3, #0
 805c8da:	d102      	bne.n	805c8e2 <xQueueReceive+0x4e>
 805c8dc:	687b      	ldr	r3, [r7, #4]
 805c8de:	2b00      	cmp	r3, #0
 805c8e0:	d101      	bne.n	805c8e6 <xQueueReceive+0x52>
 805c8e2:	2301      	movs	r3, #1
 805c8e4:	e000      	b.n	805c8e8 <xQueueReceive+0x54>
 805c8e6:	2300      	movs	r3, #0
 805c8e8:	2b00      	cmp	r3, #0
 805c8ea:	d102      	bne.n	805c8f2 <xQueueReceive+0x5e>
 805c8ec:	4b46      	ldr	r3, [pc, #280]	; (805ca08 <xQueueReceive+0x174>)
 805c8ee:	4798      	blx	r3
 805c8f0:	e7fe      	b.n	805c8f0 <xQueueReceive+0x5c>
 805c8f2:	4b47      	ldr	r3, [pc, #284]	; (805ca10 <xQueueReceive+0x17c>)
 805c8f4:	4798      	blx	r3
 805c8f6:	6a3b      	ldr	r3, [r7, #32]
 805c8f8:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 805c8fa:	61fb      	str	r3, [r7, #28]
 805c8fc:	69fb      	ldr	r3, [r7, #28]
 805c8fe:	2b00      	cmp	r3, #0
 805c900:	d019      	beq.n	805c936 <xQueueReceive+0xa2>
 805c902:	68b9      	ldr	r1, [r7, #8]
 805c904:	6a38      	ldr	r0, [r7, #32]
 805c906:	f000 ff7b 	bl	805d800 <prvCopyDataFromQueue>
 805c90a:	69fb      	ldr	r3, [r7, #28]
 805c90c:	1e5a      	subs	r2, r3, #1
 805c90e:	6a3b      	ldr	r3, [r7, #32]
 805c910:	639a      	str	r2, [r3, #56]	; 0x38
 805c912:	6a3b      	ldr	r3, [r7, #32]
 805c914:	691b      	ldr	r3, [r3, #16]
 805c916:	2b00      	cmp	r3, #0
 805c918:	d009      	beq.n	805c92e <xQueueReceive+0x9a>
 805c91a:	6a3b      	ldr	r3, [r7, #32]
 805c91c:	3310      	adds	r3, #16
 805c91e:	4618      	mov	r0, r3
 805c920:	4b3c      	ldr	r3, [pc, #240]	; (805ca14 <xQueueReceive+0x180>)
 805c922:	4798      	blx	r3
 805c924:	4603      	mov	r3, r0
 805c926:	2b00      	cmp	r3, #0
 805c928:	d001      	beq.n	805c92e <xQueueReceive+0x9a>
 805c92a:	4b3b      	ldr	r3, [pc, #236]	; (805ca18 <xQueueReceive+0x184>)
 805c92c:	4798      	blx	r3
 805c92e:	4b3b      	ldr	r3, [pc, #236]	; (805ca1c <xQueueReceive+0x188>)
 805c930:	4798      	blx	r3
 805c932:	2301      	movs	r3, #1
 805c934:	e063      	b.n	805c9fe <xQueueReceive+0x16a>
 805c936:	687b      	ldr	r3, [r7, #4]
 805c938:	2b00      	cmp	r3, #0
 805c93a:	d103      	bne.n	805c944 <xQueueReceive+0xb0>
 805c93c:	4b37      	ldr	r3, [pc, #220]	; (805ca1c <xQueueReceive+0x188>)
 805c93e:	4798      	blx	r3
 805c940:	2300      	movs	r3, #0
 805c942:	e05c      	b.n	805c9fe <xQueueReceive+0x16a>
 805c944:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805c946:	2b00      	cmp	r3, #0
 805c948:	d106      	bne.n	805c958 <xQueueReceive+0xc4>
 805c94a:	f107 0314 	add.w	r3, r7, #20
 805c94e:	4618      	mov	r0, r3
 805c950:	4b33      	ldr	r3, [pc, #204]	; (805ca20 <xQueueReceive+0x18c>)
 805c952:	4798      	blx	r3
 805c954:	2301      	movs	r3, #1
 805c956:	627b      	str	r3, [r7, #36]	; 0x24
 805c958:	4b30      	ldr	r3, [pc, #192]	; (805ca1c <xQueueReceive+0x188>)
 805c95a:	4798      	blx	r3
 805c95c:	4b31      	ldr	r3, [pc, #196]	; (805ca24 <xQueueReceive+0x190>)
 805c95e:	4798      	blx	r3
 805c960:	4b2b      	ldr	r3, [pc, #172]	; (805ca10 <xQueueReceive+0x17c>)
 805c962:	4798      	blx	r3
 805c964:	6a3b      	ldr	r3, [r7, #32]
 805c966:	f893 3044 	ldrb.w	r3, [r3, #68]	; 0x44
 805c96a:	b25b      	sxtb	r3, r3
 805c96c:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 805c970:	d103      	bne.n	805c97a <xQueueReceive+0xe6>
 805c972:	6a3b      	ldr	r3, [r7, #32]
 805c974:	2200      	movs	r2, #0
 805c976:	f883 2044 	strb.w	r2, [r3, #68]	; 0x44
 805c97a:	6a3b      	ldr	r3, [r7, #32]
 805c97c:	f893 3045 	ldrb.w	r3, [r3, #69]	; 0x45
 805c980:	b25b      	sxtb	r3, r3
 805c982:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 805c986:	d103      	bne.n	805c990 <xQueueReceive+0xfc>
 805c988:	6a3b      	ldr	r3, [r7, #32]
 805c98a:	2200      	movs	r2, #0
 805c98c:	f883 2045 	strb.w	r2, [r3, #69]	; 0x45
 805c990:	4b22      	ldr	r3, [pc, #136]	; (805ca1c <xQueueReceive+0x188>)
 805c992:	4798      	blx	r3
 805c994:	1d3a      	adds	r2, r7, #4
 805c996:	f107 0314 	add.w	r3, r7, #20
 805c99a:	4611      	mov	r1, r2
 805c99c:	4618      	mov	r0, r3
 805c99e:	4b22      	ldr	r3, [pc, #136]	; (805ca28 <xQueueReceive+0x194>)
 805c9a0:	4798      	blx	r3
 805c9a2:	4603      	mov	r3, r0
 805c9a4:	2b00      	cmp	r3, #0
 805c9a6:	d11d      	bne.n	805c9e4 <xQueueReceive+0x150>
 805c9a8:	6a38      	ldr	r0, [r7, #32]
 805c9aa:	f000 fe85 	bl	805d6b8 <prvIsQueueEmpty>
 805c9ae:	4603      	mov	r3, r0
 805c9b0:	2b00      	cmp	r3, #0
 805c9b2:	d011      	beq.n	805c9d8 <xQueueReceive+0x144>
 805c9b4:	6a3b      	ldr	r3, [r7, #32]
 805c9b6:	3324      	adds	r3, #36	; 0x24
 805c9b8:	687a      	ldr	r2, [r7, #4]
 805c9ba:	4611      	mov	r1, r2
 805c9bc:	4618      	mov	r0, r3
 805c9be:	4b1b      	ldr	r3, [pc, #108]	; (805ca2c <xQueueReceive+0x198>)
 805c9c0:	4798      	blx	r3
 805c9c2:	6a38      	ldr	r0, [r7, #32]
 805c9c4:	f000 fe1e 	bl	805d604 <prvUnlockQueue>
 805c9c8:	4b19      	ldr	r3, [pc, #100]	; (805ca30 <xQueueReceive+0x19c>)
 805c9ca:	4798      	blx	r3
 805c9cc:	4603      	mov	r3, r0
 805c9ce:	2b00      	cmp	r3, #0
 805c9d0:	d18f      	bne.n	805c8f2 <xQueueReceive+0x5e>
 805c9d2:	4b11      	ldr	r3, [pc, #68]	; (805ca18 <xQueueReceive+0x184>)
 805c9d4:	4798      	blx	r3
 805c9d6:	e78c      	b.n	805c8f2 <xQueueReceive+0x5e>
 805c9d8:	6a38      	ldr	r0, [r7, #32]
 805c9da:	f000 fe13 	bl	805d604 <prvUnlockQueue>
 805c9de:	4b14      	ldr	r3, [pc, #80]	; (805ca30 <xQueueReceive+0x19c>)
 805c9e0:	4798      	blx	r3
 805c9e2:	e786      	b.n	805c8f2 <xQueueReceive+0x5e>
 805c9e4:	6a38      	ldr	r0, [r7, #32]
 805c9e6:	f000 fe0d 	bl	805d604 <prvUnlockQueue>
 805c9ea:	4b11      	ldr	r3, [pc, #68]	; (805ca30 <xQueueReceive+0x19c>)
 805c9ec:	4798      	blx	r3
 805c9ee:	6a38      	ldr	r0, [r7, #32]
 805c9f0:	f000 fe62 	bl	805d6b8 <prvIsQueueEmpty>
 805c9f4:	4603      	mov	r3, r0
 805c9f6:	2b00      	cmp	r3, #0
 805c9f8:	f43f af7b 	beq.w	805c8f2 <xQueueReceive+0x5e>
 805c9fc:	2300      	movs	r3, #0
 805c9fe:	4618      	mov	r0, r3
 805ca00:	3728      	adds	r7, #40	; 0x28
 805ca02:	46bd      	mov	sp, r7
 805ca04:	bd80      	pop	{r7, pc}
 805ca06:	bf00      	nop
 805ca08:	0805f1c7 	.word	0x0805f1c7
 805ca0c:	0805756d 	.word	0x0805756d
 805ca10:	0805ecc5 	.word	0x0805ecc5
 805ca14:	080570f1 	.word	0x080570f1
 805ca18:	0805eca5 	.word	0x0805eca5
 805ca1c:	0805eced 	.word	0x0805eced
 805ca20:	08057a2d 	.word	0x08057a2d
 805ca24:	08055dbd 	.word	0x08055dbd
 805ca28:	08056c1d 	.word	0x08056c1d
 805ca2c:	08056f89 	.word	0x08056f89
 805ca30:	08055dd9 	.word	0x08055dd9

0805ca34 <uxQueueMessagesWaiting>:
 805ca34:	b580      	push	{r7, lr}
 805ca36:	b084      	sub	sp, #16
 805ca38:	af00      	add	r7, sp, #0
 805ca3a:	6078      	str	r0, [r7, #4]
 805ca3c:	687b      	ldr	r3, [r7, #4]
 805ca3e:	2b00      	cmp	r3, #0
 805ca40:	d102      	bne.n	805ca48 <uxQueueMessagesWaiting+0x14>
 805ca42:	4b07      	ldr	r3, [pc, #28]	; (805ca60 <uxQueueMessagesWaiting+0x2c>)
 805ca44:	4798      	blx	r3
 805ca46:	e7fe      	b.n	805ca46 <uxQueueMessagesWaiting+0x12>
 805ca48:	4b06      	ldr	r3, [pc, #24]	; (805ca64 <uxQueueMessagesWaiting+0x30>)
 805ca4a:	4798      	blx	r3
 805ca4c:	687b      	ldr	r3, [r7, #4]
 805ca4e:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 805ca50:	60fb      	str	r3, [r7, #12]
 805ca52:	4b05      	ldr	r3, [pc, #20]	; (805ca68 <uxQueueMessagesWaiting+0x34>)
 805ca54:	4798      	blx	r3
 805ca56:	68fb      	ldr	r3, [r7, #12]
 805ca58:	4618      	mov	r0, r3
 805ca5a:	3710      	adds	r7, #16
 805ca5c:	46bd      	mov	sp, r7
 805ca5e:	bd80      	pop	{r7, pc}
 805ca60:	0805f1c7 	.word	0x0805f1c7
 805ca64:	0805ecc5 	.word	0x0805ecc5
 805ca68:	0805eced 	.word	0x0805eced

0805ca6c <uxQueueSpacesAvailable>:
 805ca6c:	b580      	push	{r7, lr}
 805ca6e:	b084      	sub	sp, #16
 805ca70:	af00      	add	r7, sp, #0
 805ca72:	6078      	str	r0, [r7, #4]
 805ca74:	687b      	ldr	r3, [r7, #4]
 805ca76:	60fb      	str	r3, [r7, #12]
 805ca78:	68fb      	ldr	r3, [r7, #12]
 805ca7a:	2b00      	cmp	r3, #0
 805ca7c:	d102      	bne.n	805ca84 <uxQueueSpacesAvailable+0x18>
 805ca7e:	4b09      	ldr	r3, [pc, #36]	; (805caa4 <uxQueueSpacesAvailable+0x38>)
 805ca80:	4798      	blx	r3
 805ca82:	e7fe      	b.n	805ca82 <uxQueueSpacesAvailable+0x16>
 805ca84:	4b08      	ldr	r3, [pc, #32]	; (805caa8 <uxQueueSpacesAvailable+0x3c>)
 805ca86:	4798      	blx	r3
 805ca88:	68fb      	ldr	r3, [r7, #12]
 805ca8a:	6bda      	ldr	r2, [r3, #60]	; 0x3c
 805ca8c:	68fb      	ldr	r3, [r7, #12]
 805ca8e:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 805ca90:	1ad3      	subs	r3, r2, r3
 805ca92:	60bb      	str	r3, [r7, #8]
 805ca94:	4b05      	ldr	r3, [pc, #20]	; (805caac <uxQueueSpacesAvailable+0x40>)
 805ca96:	4798      	blx	r3
 805ca98:	68bb      	ldr	r3, [r7, #8]
 805ca9a:	4618      	mov	r0, r3
 805ca9c:	3710      	adds	r7, #16
 805ca9e:	46bd      	mov	sp, r7
 805caa0:	bd80      	pop	{r7, pc}
 805caa2:	bf00      	nop
 805caa4:	0805f1c7 	.word	0x0805f1c7
 805caa8:	0805ecc5 	.word	0x0805ecc5
 805caac:	0805eced 	.word	0x0805eced

0805cab0 <vQueueDelete>:
 805cab0:	b580      	push	{r7, lr}
 805cab2:	b084      	sub	sp, #16
 805cab4:	af00      	add	r7, sp, #0
 805cab6:	6078      	str	r0, [r7, #4]
 805cab8:	687b      	ldr	r3, [r7, #4]
 805caba:	60fb      	str	r3, [r7, #12]
 805cabc:	68fb      	ldr	r3, [r7, #12]
 805cabe:	2b00      	cmp	r3, #0
 805cac0:	d102      	bne.n	805cac8 <vQueueDelete+0x18>
 805cac2:	4b06      	ldr	r3, [pc, #24]	; (805cadc <vQueueDelete+0x2c>)
 805cac4:	4798      	blx	r3
 805cac6:	e7fe      	b.n	805cac6 <vQueueDelete+0x16>
 805cac8:	68f8      	ldr	r0, [r7, #12]
 805caca:	f000 fbfd 	bl	805d2c8 <vQueueUnregisterQueue>
 805cace:	68f8      	ldr	r0, [r7, #12]
 805cad0:	4b03      	ldr	r3, [pc, #12]	; (805cae0 <vQueueDelete+0x30>)
 805cad2:	4798      	blx	r3
 805cad4:	bf00      	nop
 805cad6:	3710      	adds	r7, #16
 805cad8:	46bd      	mov	sp, r7
 805cada:	bd80      	pop	{r7, pc}
 805cadc:	0805f1c7 	.word	0x0805f1c7
 805cae0:	0805baa1 	.word	0x0805baa1

0805cae4 <xQueueGenericSendFromISR>:
 805cae4:	b580      	push	{r7, lr}
 805cae6:	b08a      	sub	sp, #40	; 0x28
 805cae8:	af00      	add	r7, sp, #0
 805caea:	60f8      	str	r0, [r7, #12]
 805caec:	60b9      	str	r1, [r7, #8]
 805caee:	607a      	str	r2, [r7, #4]
 805caf0:	603b      	str	r3, [r7, #0]
 805caf2:	68fb      	ldr	r3, [r7, #12]
 805caf4:	623b      	str	r3, [r7, #32]
 805caf6:	6a3b      	ldr	r3, [r7, #32]
 805caf8:	2b00      	cmp	r3, #0
 805cafa:	d102      	bne.n	805cb02 <xQueueGenericSendFromISR+0x1e>
 805cafc:	4b3a      	ldr	r3, [pc, #232]	; (805cbe8 <xQueueGenericSendFromISR+0x104>)
 805cafe:	4798      	blx	r3
 805cb00:	e7fe      	b.n	805cb00 <xQueueGenericSendFromISR+0x1c>
 805cb02:	68bb      	ldr	r3, [r7, #8]
 805cb04:	2b00      	cmp	r3, #0
 805cb06:	d103      	bne.n	805cb10 <xQueueGenericSendFromISR+0x2c>
 805cb08:	6a3b      	ldr	r3, [r7, #32]
 805cb0a:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 805cb0c:	2b00      	cmp	r3, #0
 805cb0e:	d101      	bne.n	805cb14 <xQueueGenericSendFromISR+0x30>
 805cb10:	2301      	movs	r3, #1
 805cb12:	e000      	b.n	805cb16 <xQueueGenericSendFromISR+0x32>
 805cb14:	2300      	movs	r3, #0
 805cb16:	2b00      	cmp	r3, #0
 805cb18:	d102      	bne.n	805cb20 <xQueueGenericSendFromISR+0x3c>
 805cb1a:	4b33      	ldr	r3, [pc, #204]	; (805cbe8 <xQueueGenericSendFromISR+0x104>)
 805cb1c:	4798      	blx	r3
 805cb1e:	e7fe      	b.n	805cb1e <xQueueGenericSendFromISR+0x3a>
 805cb20:	683b      	ldr	r3, [r7, #0]
 805cb22:	2b02      	cmp	r3, #2
 805cb24:	d103      	bne.n	805cb2e <xQueueGenericSendFromISR+0x4a>
 805cb26:	6a3b      	ldr	r3, [r7, #32]
 805cb28:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 805cb2a:	2b01      	cmp	r3, #1
 805cb2c:	d101      	bne.n	805cb32 <xQueueGenericSendFromISR+0x4e>
 805cb2e:	2301      	movs	r3, #1
 805cb30:	e000      	b.n	805cb34 <xQueueGenericSendFromISR+0x50>
 805cb32:	2300      	movs	r3, #0
 805cb34:	2b00      	cmp	r3, #0
 805cb36:	d102      	bne.n	805cb3e <xQueueGenericSendFromISR+0x5a>
 805cb38:	4b2b      	ldr	r3, [pc, #172]	; (805cbe8 <xQueueGenericSendFromISR+0x104>)
 805cb3a:	4798      	blx	r3
 805cb3c:	e7fe      	b.n	805cb3c <xQueueGenericSendFromISR+0x58>
 805cb3e:	4b2b      	ldr	r3, [pc, #172]	; (805cbec <xQueueGenericSendFromISR+0x108>)
 805cb40:	4798      	blx	r3
 805cb42:	4b29      	ldr	r3, [pc, #164]	; (805cbe8 <xQueueGenericSendFromISR+0x104>)
 805cb44:	4798      	blx	r3
 805cb46:	61f8      	str	r0, [r7, #28]
 805cb48:	6a3b      	ldr	r3, [r7, #32]
 805cb4a:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 805cb4c:	6a3b      	ldr	r3, [r7, #32]
 805cb4e:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 805cb50:	429a      	cmp	r2, r3
 805cb52:	d302      	bcc.n	805cb5a <xQueueGenericSendFromISR+0x76>
 805cb54:	683b      	ldr	r3, [r7, #0]
 805cb56:	2b02      	cmp	r3, #2
 805cb58:	d13c      	bne.n	805cbd4 <xQueueGenericSendFromISR+0xf0>
 805cb5a:	6a3b      	ldr	r3, [r7, #32]
 805cb5c:	f893 3045 	ldrb.w	r3, [r3, #69]	; 0x45
 805cb60:	76fb      	strb	r3, [r7, #27]
 805cb62:	6a3b      	ldr	r3, [r7, #32]
 805cb64:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 805cb66:	617b      	str	r3, [r7, #20]
 805cb68:	683a      	ldr	r2, [r7, #0]
 805cb6a:	68b9      	ldr	r1, [r7, #8]
 805cb6c:	6a38      	ldr	r0, [r7, #32]
 805cb6e:	f000 fdd9 	bl	805d724 <prvCopyDataToQueue>
 805cb72:	f997 301b 	ldrsb.w	r3, [r7, #27]
 805cb76:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 805cb7a:	d112      	bne.n	805cba2 <xQueueGenericSendFromISR+0xbe>
 805cb7c:	6a3b      	ldr	r3, [r7, #32]
 805cb7e:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 805cb80:	2b00      	cmp	r3, #0
 805cb82:	d024      	beq.n	805cbce <xQueueGenericSendFromISR+0xea>
 805cb84:	6a3b      	ldr	r3, [r7, #32]
 805cb86:	3324      	adds	r3, #36	; 0x24
 805cb88:	4618      	mov	r0, r3
 805cb8a:	4b19      	ldr	r3, [pc, #100]	; (805cbf0 <xQueueGenericSendFromISR+0x10c>)
 805cb8c:	4798      	blx	r3
 805cb8e:	4603      	mov	r3, r0
 805cb90:	2b00      	cmp	r3, #0
 805cb92:	d01c      	beq.n	805cbce <xQueueGenericSendFromISR+0xea>
 805cb94:	687b      	ldr	r3, [r7, #4]
 805cb96:	2b00      	cmp	r3, #0
 805cb98:	d019      	beq.n	805cbce <xQueueGenericSendFromISR+0xea>
 805cb9a:	687b      	ldr	r3, [r7, #4]
 805cb9c:	2201      	movs	r2, #1
 805cb9e:	601a      	str	r2, [r3, #0]
 805cba0:	e015      	b.n	805cbce <xQueueGenericSendFromISR+0xea>
 805cba2:	4b14      	ldr	r3, [pc, #80]	; (805cbf4 <xQueueGenericSendFromISR+0x110>)
 805cba4:	4798      	blx	r3
 805cba6:	6138      	str	r0, [r7, #16]
 805cba8:	f997 301b 	ldrsb.w	r3, [r7, #27]
 805cbac:	693a      	ldr	r2, [r7, #16]
 805cbae:	429a      	cmp	r2, r3
 805cbb0:	d90d      	bls.n	805cbce <xQueueGenericSendFromISR+0xea>
 805cbb2:	f997 301b 	ldrsb.w	r3, [r7, #27]
 805cbb6:	2b7f      	cmp	r3, #127	; 0x7f
 805cbb8:	d102      	bne.n	805cbc0 <xQueueGenericSendFromISR+0xdc>
 805cbba:	4b0b      	ldr	r3, [pc, #44]	; (805cbe8 <xQueueGenericSendFromISR+0x104>)
 805cbbc:	4798      	blx	r3
 805cbbe:	e7fe      	b.n	805cbbe <xQueueGenericSendFromISR+0xda>
 805cbc0:	7efb      	ldrb	r3, [r7, #27]
 805cbc2:	3301      	adds	r3, #1
 805cbc4:	b2db      	uxtb	r3, r3
 805cbc6:	b25a      	sxtb	r2, r3
 805cbc8:	6a3b      	ldr	r3, [r7, #32]
 805cbca:	f883 2045 	strb.w	r2, [r3, #69]	; 0x45
 805cbce:	2301      	movs	r3, #1
 805cbd0:	627b      	str	r3, [r7, #36]	; 0x24
 805cbd2:	e001      	b.n	805cbd8 <xQueueGenericSendFromISR+0xf4>
 805cbd4:	2300      	movs	r3, #0
 805cbd6:	627b      	str	r3, [r7, #36]	; 0x24
 805cbd8:	69f8      	ldr	r0, [r7, #28]
 805cbda:	4b07      	ldr	r3, [pc, #28]	; (805cbf8 <xQueueGenericSendFromISR+0x114>)
 805cbdc:	4798      	blx	r3
 805cbde:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805cbe0:	4618      	mov	r0, r3
 805cbe2:	3728      	adds	r7, #40	; 0x28
 805cbe4:	46bd      	mov	sp, r7
 805cbe6:	bd80      	pop	{r7, pc}
 805cbe8:	0805f1c7 	.word	0x0805f1c7
 805cbec:	080607fd 	.word	0x080607fd
 805cbf0:	080570f1 	.word	0x080570f1
 805cbf4:	08056051 	.word	0x08056051
 805cbf8:	0805f1e1 	.word	0x0805f1e1

0805cbfc <xQueueGiveFromISR>:
 805cbfc:	b580      	push	{r7, lr}
 805cbfe:	b088      	sub	sp, #32
 805cc00:	af00      	add	r7, sp, #0
 805cc02:	6078      	str	r0, [r7, #4]
 805cc04:	6039      	str	r1, [r7, #0]
 805cc06:	687b      	ldr	r3, [r7, #4]
 805cc08:	61bb      	str	r3, [r7, #24]
 805cc0a:	69bb      	ldr	r3, [r7, #24]
 805cc0c:	2b00      	cmp	r3, #0
 805cc0e:	d102      	bne.n	805cc16 <xQueueGiveFromISR+0x1a>
 805cc10:	4b34      	ldr	r3, [pc, #208]	; (805cce4 <xQueueGiveFromISR+0xe8>)
 805cc12:	4798      	blx	r3
 805cc14:	e7fe      	b.n	805cc14 <xQueueGiveFromISR+0x18>
 805cc16:	69bb      	ldr	r3, [r7, #24]
 805cc18:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 805cc1a:	2b00      	cmp	r3, #0
 805cc1c:	d002      	beq.n	805cc24 <xQueueGiveFromISR+0x28>
 805cc1e:	4b31      	ldr	r3, [pc, #196]	; (805cce4 <xQueueGiveFromISR+0xe8>)
 805cc20:	4798      	blx	r3
 805cc22:	e7fe      	b.n	805cc22 <xQueueGiveFromISR+0x26>
 805cc24:	69bb      	ldr	r3, [r7, #24]
 805cc26:	681b      	ldr	r3, [r3, #0]
 805cc28:	2b00      	cmp	r3, #0
 805cc2a:	d103      	bne.n	805cc34 <xQueueGiveFromISR+0x38>
 805cc2c:	69bb      	ldr	r3, [r7, #24]
 805cc2e:	689b      	ldr	r3, [r3, #8]
 805cc30:	2b00      	cmp	r3, #0
 805cc32:	d101      	bne.n	805cc38 <xQueueGiveFromISR+0x3c>
 805cc34:	2301      	movs	r3, #1
 805cc36:	e000      	b.n	805cc3a <xQueueGiveFromISR+0x3e>
 805cc38:	2300      	movs	r3, #0
 805cc3a:	2b00      	cmp	r3, #0
 805cc3c:	d102      	bne.n	805cc44 <xQueueGiveFromISR+0x48>
 805cc3e:	4b29      	ldr	r3, [pc, #164]	; (805cce4 <xQueueGiveFromISR+0xe8>)
 805cc40:	4798      	blx	r3
 805cc42:	e7fe      	b.n	805cc42 <xQueueGiveFromISR+0x46>
 805cc44:	4b28      	ldr	r3, [pc, #160]	; (805cce8 <xQueueGiveFromISR+0xec>)
 805cc46:	4798      	blx	r3
 805cc48:	4b26      	ldr	r3, [pc, #152]	; (805cce4 <xQueueGiveFromISR+0xe8>)
 805cc4a:	4798      	blx	r3
 805cc4c:	6178      	str	r0, [r7, #20]
 805cc4e:	69bb      	ldr	r3, [r7, #24]
 805cc50:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 805cc52:	613b      	str	r3, [r7, #16]
 805cc54:	69bb      	ldr	r3, [r7, #24]
 805cc56:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 805cc58:	693a      	ldr	r2, [r7, #16]
 805cc5a:	429a      	cmp	r2, r3
 805cc5c:	d238      	bcs.n	805ccd0 <xQueueGiveFromISR+0xd4>
 805cc5e:	69bb      	ldr	r3, [r7, #24]
 805cc60:	f893 3045 	ldrb.w	r3, [r3, #69]	; 0x45
 805cc64:	73fb      	strb	r3, [r7, #15]
 805cc66:	693b      	ldr	r3, [r7, #16]
 805cc68:	1c5a      	adds	r2, r3, #1
 805cc6a:	69bb      	ldr	r3, [r7, #24]
 805cc6c:	639a      	str	r2, [r3, #56]	; 0x38
 805cc6e:	f997 300f 	ldrsb.w	r3, [r7, #15]
 805cc72:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 805cc76:	d112      	bne.n	805cc9e <xQueueGiveFromISR+0xa2>
 805cc78:	69bb      	ldr	r3, [r7, #24]
 805cc7a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 805cc7c:	2b00      	cmp	r3, #0
 805cc7e:	d024      	beq.n	805ccca <xQueueGiveFromISR+0xce>
 805cc80:	69bb      	ldr	r3, [r7, #24]
 805cc82:	3324      	adds	r3, #36	; 0x24
 805cc84:	4618      	mov	r0, r3
 805cc86:	4b19      	ldr	r3, [pc, #100]	; (805ccec <xQueueGiveFromISR+0xf0>)
 805cc88:	4798      	blx	r3
 805cc8a:	4603      	mov	r3, r0
 805cc8c:	2b00      	cmp	r3, #0
 805cc8e:	d01c      	beq.n	805ccca <xQueueGiveFromISR+0xce>
 805cc90:	683b      	ldr	r3, [r7, #0]
 805cc92:	2b00      	cmp	r3, #0
 805cc94:	d019      	beq.n	805ccca <xQueueGiveFromISR+0xce>
 805cc96:	683b      	ldr	r3, [r7, #0]
 805cc98:	2201      	movs	r2, #1
 805cc9a:	601a      	str	r2, [r3, #0]
 805cc9c:	e015      	b.n	805ccca <xQueueGiveFromISR+0xce>
 805cc9e:	4b14      	ldr	r3, [pc, #80]	; (805ccf0 <xQueueGiveFromISR+0xf4>)
 805cca0:	4798      	blx	r3
 805cca2:	60b8      	str	r0, [r7, #8]
 805cca4:	f997 300f 	ldrsb.w	r3, [r7, #15]
 805cca8:	68ba      	ldr	r2, [r7, #8]
 805ccaa:	429a      	cmp	r2, r3
 805ccac:	d90d      	bls.n	805ccca <xQueueGiveFromISR+0xce>
 805ccae:	f997 300f 	ldrsb.w	r3, [r7, #15]
 805ccb2:	2b7f      	cmp	r3, #127	; 0x7f
 805ccb4:	d102      	bne.n	805ccbc <xQueueGiveFromISR+0xc0>
 805ccb6:	4b0b      	ldr	r3, [pc, #44]	; (805cce4 <xQueueGiveFromISR+0xe8>)
 805ccb8:	4798      	blx	r3
 805ccba:	e7fe      	b.n	805ccba <xQueueGiveFromISR+0xbe>
 805ccbc:	7bfb      	ldrb	r3, [r7, #15]
 805ccbe:	3301      	adds	r3, #1
 805ccc0:	b2db      	uxtb	r3, r3
 805ccc2:	b25a      	sxtb	r2, r3
 805ccc4:	69bb      	ldr	r3, [r7, #24]
 805ccc6:	f883 2045 	strb.w	r2, [r3, #69]	; 0x45
 805ccca:	2301      	movs	r3, #1
 805cccc:	61fb      	str	r3, [r7, #28]
 805ccce:	e001      	b.n	805ccd4 <xQueueGiveFromISR+0xd8>
 805ccd0:	2300      	movs	r3, #0
 805ccd2:	61fb      	str	r3, [r7, #28]
 805ccd4:	6978      	ldr	r0, [r7, #20]
 805ccd6:	4b07      	ldr	r3, [pc, #28]	; (805ccf4 <xQueueGiveFromISR+0xf8>)
 805ccd8:	4798      	blx	r3
 805ccda:	69fb      	ldr	r3, [r7, #28]
 805ccdc:	4618      	mov	r0, r3
 805ccde:	3720      	adds	r7, #32
 805cce0:	46bd      	mov	sp, r7
 805cce2:	bd80      	pop	{r7, pc}
 805cce4:	0805f1c7 	.word	0x0805f1c7
 805cce8:	080607fd 	.word	0x080607fd
 805ccec:	080570f1 	.word	0x080570f1
 805ccf0:	08056051 	.word	0x08056051
 805ccf4:	0805f1e1 	.word	0x0805f1e1

0805ccf8 <xQueueReceiveFromISR>:
 805ccf8:	b580      	push	{r7, lr}
 805ccfa:	b08a      	sub	sp, #40	; 0x28
 805ccfc:	af00      	add	r7, sp, #0
 805ccfe:	60f8      	str	r0, [r7, #12]
 805cd00:	60b9      	str	r1, [r7, #8]
 805cd02:	607a      	str	r2, [r7, #4]
 805cd04:	68fb      	ldr	r3, [r7, #12]
 805cd06:	623b      	str	r3, [r7, #32]
 805cd08:	6a3b      	ldr	r3, [r7, #32]
 805cd0a:	2b00      	cmp	r3, #0
 805cd0c:	d102      	bne.n	805cd14 <xQueueReceiveFromISR+0x1c>
 805cd0e:	4b32      	ldr	r3, [pc, #200]	; (805cdd8 <xQueueReceiveFromISR+0xe0>)
 805cd10:	4798      	blx	r3
 805cd12:	e7fe      	b.n	805cd12 <xQueueReceiveFromISR+0x1a>
 805cd14:	68bb      	ldr	r3, [r7, #8]
 805cd16:	2b00      	cmp	r3, #0
 805cd18:	d103      	bne.n	805cd22 <xQueueReceiveFromISR+0x2a>
 805cd1a:	6a3b      	ldr	r3, [r7, #32]
 805cd1c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 805cd1e:	2b00      	cmp	r3, #0
 805cd20:	d101      	bne.n	805cd26 <xQueueReceiveFromISR+0x2e>
 805cd22:	2301      	movs	r3, #1
 805cd24:	e000      	b.n	805cd28 <xQueueReceiveFromISR+0x30>
 805cd26:	2300      	movs	r3, #0
 805cd28:	2b00      	cmp	r3, #0
 805cd2a:	d102      	bne.n	805cd32 <xQueueReceiveFromISR+0x3a>
 805cd2c:	4b2a      	ldr	r3, [pc, #168]	; (805cdd8 <xQueueReceiveFromISR+0xe0>)
 805cd2e:	4798      	blx	r3
 805cd30:	e7fe      	b.n	805cd30 <xQueueReceiveFromISR+0x38>
 805cd32:	4b2a      	ldr	r3, [pc, #168]	; (805cddc <xQueueReceiveFromISR+0xe4>)
 805cd34:	4798      	blx	r3
 805cd36:	4b28      	ldr	r3, [pc, #160]	; (805cdd8 <xQueueReceiveFromISR+0xe0>)
 805cd38:	4798      	blx	r3
 805cd3a:	61f8      	str	r0, [r7, #28]
 805cd3c:	6a3b      	ldr	r3, [r7, #32]
 805cd3e:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 805cd40:	61bb      	str	r3, [r7, #24]
 805cd42:	69bb      	ldr	r3, [r7, #24]
 805cd44:	2b00      	cmp	r3, #0
 805cd46:	d03c      	beq.n	805cdc2 <xQueueReceiveFromISR+0xca>
 805cd48:	6a3b      	ldr	r3, [r7, #32]
 805cd4a:	f893 3044 	ldrb.w	r3, [r3, #68]	; 0x44
 805cd4e:	75fb      	strb	r3, [r7, #23]
 805cd50:	68b9      	ldr	r1, [r7, #8]
 805cd52:	6a38      	ldr	r0, [r7, #32]
 805cd54:	f000 fd54 	bl	805d800 <prvCopyDataFromQueue>
 805cd58:	69bb      	ldr	r3, [r7, #24]
 805cd5a:	1e5a      	subs	r2, r3, #1
 805cd5c:	6a3b      	ldr	r3, [r7, #32]
 805cd5e:	639a      	str	r2, [r3, #56]	; 0x38
 805cd60:	f997 3017 	ldrsb.w	r3, [r7, #23]
 805cd64:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 805cd68:	d112      	bne.n	805cd90 <xQueueReceiveFromISR+0x98>
 805cd6a:	6a3b      	ldr	r3, [r7, #32]
 805cd6c:	691b      	ldr	r3, [r3, #16]
 805cd6e:	2b00      	cmp	r3, #0
 805cd70:	d024      	beq.n	805cdbc <xQueueReceiveFromISR+0xc4>
 805cd72:	6a3b      	ldr	r3, [r7, #32]
 805cd74:	3310      	adds	r3, #16
 805cd76:	4618      	mov	r0, r3
 805cd78:	4b19      	ldr	r3, [pc, #100]	; (805cde0 <xQueueReceiveFromISR+0xe8>)
 805cd7a:	4798      	blx	r3
 805cd7c:	4603      	mov	r3, r0
 805cd7e:	2b00      	cmp	r3, #0
 805cd80:	d01c      	beq.n	805cdbc <xQueueReceiveFromISR+0xc4>
 805cd82:	687b      	ldr	r3, [r7, #4]
 805cd84:	2b00      	cmp	r3, #0
 805cd86:	d019      	beq.n	805cdbc <xQueueReceiveFromISR+0xc4>
 805cd88:	687b      	ldr	r3, [r7, #4]
 805cd8a:	2201      	movs	r2, #1
 805cd8c:	601a      	str	r2, [r3, #0]
 805cd8e:	e015      	b.n	805cdbc <xQueueReceiveFromISR+0xc4>
 805cd90:	4b14      	ldr	r3, [pc, #80]	; (805cde4 <xQueueReceiveFromISR+0xec>)
 805cd92:	4798      	blx	r3
 805cd94:	6138      	str	r0, [r7, #16]
 805cd96:	f997 3017 	ldrsb.w	r3, [r7, #23]
 805cd9a:	693a      	ldr	r2, [r7, #16]
 805cd9c:	429a      	cmp	r2, r3
 805cd9e:	d90d      	bls.n	805cdbc <xQueueReceiveFromISR+0xc4>
 805cda0:	f997 3017 	ldrsb.w	r3, [r7, #23]
 805cda4:	2b7f      	cmp	r3, #127	; 0x7f
 805cda6:	d102      	bne.n	805cdae <xQueueReceiveFromISR+0xb6>
 805cda8:	4b0b      	ldr	r3, [pc, #44]	; (805cdd8 <xQueueReceiveFromISR+0xe0>)
 805cdaa:	4798      	blx	r3
 805cdac:	e7fe      	b.n	805cdac <xQueueReceiveFromISR+0xb4>
 805cdae:	7dfb      	ldrb	r3, [r7, #23]
 805cdb0:	3301      	adds	r3, #1
 805cdb2:	b2db      	uxtb	r3, r3
 805cdb4:	b25a      	sxtb	r2, r3
 805cdb6:	6a3b      	ldr	r3, [r7, #32]
 805cdb8:	f883 2044 	strb.w	r2, [r3, #68]	; 0x44
 805cdbc:	2301      	movs	r3, #1
 805cdbe:	627b      	str	r3, [r7, #36]	; 0x24
 805cdc0:	e001      	b.n	805cdc6 <xQueueReceiveFromISR+0xce>
 805cdc2:	2300      	movs	r3, #0
 805cdc4:	627b      	str	r3, [r7, #36]	; 0x24
 805cdc6:	69f8      	ldr	r0, [r7, #28]
 805cdc8:	4b07      	ldr	r3, [pc, #28]	; (805cde8 <xQueueReceiveFromISR+0xf0>)
 805cdca:	4798      	blx	r3
 805cdcc:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805cdce:	4618      	mov	r0, r3
 805cdd0:	3728      	adds	r7, #40	; 0x28
 805cdd2:	46bd      	mov	sp, r7
 805cdd4:	bd80      	pop	{r7, pc}
 805cdd6:	bf00      	nop
 805cdd8:	0805f1c7 	.word	0x0805f1c7
 805cddc:	080607fd 	.word	0x080607fd
 805cde0:	080570f1 	.word	0x080570f1
 805cde4:	08056051 	.word	0x08056051
 805cde8:	0805f1e1 	.word	0x0805f1e1

0805cdec <xQueueIsQueueEmptyFromISR>:
 805cdec:	b580      	push	{r7, lr}
 805cdee:	b084      	sub	sp, #16
 805cdf0:	af00      	add	r7, sp, #0
 805cdf2:	6078      	str	r0, [r7, #4]
 805cdf4:	687b      	ldr	r3, [r7, #4]
 805cdf6:	60bb      	str	r3, [r7, #8]
 805cdf8:	68bb      	ldr	r3, [r7, #8]
 805cdfa:	2b00      	cmp	r3, #0
 805cdfc:	d102      	bne.n	805ce04 <xQueueIsQueueEmptyFromISR+0x18>
 805cdfe:	4b08      	ldr	r3, [pc, #32]	; (805ce20 <xQueueIsQueueEmptyFromISR+0x34>)
 805ce00:	4798      	blx	r3
 805ce02:	e7fe      	b.n	805ce02 <xQueueIsQueueEmptyFromISR+0x16>
 805ce04:	68bb      	ldr	r3, [r7, #8]
 805ce06:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 805ce08:	2b00      	cmp	r3, #0
 805ce0a:	d102      	bne.n	805ce12 <xQueueIsQueueEmptyFromISR+0x26>
 805ce0c:	2301      	movs	r3, #1
 805ce0e:	60fb      	str	r3, [r7, #12]
 805ce10:	e001      	b.n	805ce16 <xQueueIsQueueEmptyFromISR+0x2a>
 805ce12:	2300      	movs	r3, #0
 805ce14:	60fb      	str	r3, [r7, #12]
 805ce16:	68fb      	ldr	r3, [r7, #12]
 805ce18:	4618      	mov	r0, r3
 805ce1a:	3710      	adds	r7, #16
 805ce1c:	46bd      	mov	sp, r7
 805ce1e:	bd80      	pop	{r7, pc}
 805ce20:	0805f1c7 	.word	0x0805f1c7

0805ce24 <xQueueIsQueueFullFromISR>:
 805ce24:	b580      	push	{r7, lr}
 805ce26:	b084      	sub	sp, #16
 805ce28:	af00      	add	r7, sp, #0
 805ce2a:	6078      	str	r0, [r7, #4]
 805ce2c:	687b      	ldr	r3, [r7, #4]
 805ce2e:	60bb      	str	r3, [r7, #8]
 805ce30:	68bb      	ldr	r3, [r7, #8]
 805ce32:	2b00      	cmp	r3, #0
 805ce34:	d102      	bne.n	805ce3c <xQueueIsQueueFullFromISR+0x18>
 805ce36:	4b09      	ldr	r3, [pc, #36]	; (805ce5c <xQueueIsQueueFullFromISR+0x38>)
 805ce38:	4798      	blx	r3
 805ce3a:	e7fe      	b.n	805ce3a <xQueueIsQueueFullFromISR+0x16>
 805ce3c:	68bb      	ldr	r3, [r7, #8]
 805ce3e:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 805ce40:	68bb      	ldr	r3, [r7, #8]
 805ce42:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 805ce44:	429a      	cmp	r2, r3
 805ce46:	d102      	bne.n	805ce4e <xQueueIsQueueFullFromISR+0x2a>
 805ce48:	2301      	movs	r3, #1
 805ce4a:	60fb      	str	r3, [r7, #12]
 805ce4c:	e001      	b.n	805ce52 <xQueueIsQueueFullFromISR+0x2e>
 805ce4e:	2300      	movs	r3, #0
 805ce50:	60fb      	str	r3, [r7, #12]
 805ce52:	68fb      	ldr	r3, [r7, #12]
 805ce54:	4618      	mov	r0, r3
 805ce56:	3710      	adds	r7, #16
 805ce58:	46bd      	mov	sp, r7
 805ce5a:	bd80      	pop	{r7, pc}
 805ce5c:	0805f1c7 	.word	0x0805f1c7

0805ce60 <uxQueueMessagesWaitingFromISR>:
 805ce60:	b580      	push	{r7, lr}
 805ce62:	b084      	sub	sp, #16
 805ce64:	af00      	add	r7, sp, #0
 805ce66:	6078      	str	r0, [r7, #4]
 805ce68:	687b      	ldr	r3, [r7, #4]
 805ce6a:	60fb      	str	r3, [r7, #12]
 805ce6c:	68fb      	ldr	r3, [r7, #12]
 805ce6e:	2b00      	cmp	r3, #0
 805ce70:	d102      	bne.n	805ce78 <uxQueueMessagesWaitingFromISR+0x18>
 805ce72:	4b05      	ldr	r3, [pc, #20]	; (805ce88 <uxQueueMessagesWaitingFromISR+0x28>)
 805ce74:	4798      	blx	r3
 805ce76:	e7fe      	b.n	805ce76 <uxQueueMessagesWaitingFromISR+0x16>
 805ce78:	68fb      	ldr	r3, [r7, #12]
 805ce7a:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 805ce7c:	60bb      	str	r3, [r7, #8]
 805ce7e:	68bb      	ldr	r3, [r7, #8]
 805ce80:	4618      	mov	r0, r3
 805ce82:	3710      	adds	r7, #16
 805ce84:	46bd      	mov	sp, r7
 805ce86:	bd80      	pop	{r7, pc}
 805ce88:	0805f1c7 	.word	0x0805f1c7

0805ce8c <xQueueCreateMutex>:
 805ce8c:	b580      	push	{r7, lr}
 805ce8e:	b086      	sub	sp, #24
 805ce90:	af00      	add	r7, sp, #0
 805ce92:	4603      	mov	r3, r0
 805ce94:	71fb      	strb	r3, [r7, #7]
 805ce96:	2301      	movs	r3, #1
 805ce98:	617b      	str	r3, [r7, #20]
 805ce9a:	2300      	movs	r3, #0
 805ce9c:	613b      	str	r3, [r7, #16]
 805ce9e:	79fb      	ldrb	r3, [r7, #7]
 805cea0:	461a      	mov	r2, r3
 805cea2:	6939      	ldr	r1, [r7, #16]
 805cea4:	6978      	ldr	r0, [r7, #20]
 805cea6:	f000 fa6b 	bl	805d380 <xQueueGenericCreate>
 805ceaa:	60f8      	str	r0, [r7, #12]
 805ceac:	68f8      	ldr	r0, [r7, #12]
 805ceae:	f000 fcf2 	bl	805d896 <prvInitialiseMutex>
 805ceb2:	68fb      	ldr	r3, [r7, #12]
 805ceb4:	4618      	mov	r0, r3
 805ceb6:	3718      	adds	r7, #24
 805ceb8:	46bd      	mov	sp, r7
 805ceba:	bd80      	pop	{r7, pc}

0805cebc <xQueueCreateCountingSemaphore>:
 805cebc:	b580      	push	{r7, lr}
 805cebe:	b084      	sub	sp, #16
 805cec0:	af00      	add	r7, sp, #0
 805cec2:	6078      	str	r0, [r7, #4]
 805cec4:	6039      	str	r1, [r7, #0]
 805cec6:	2300      	movs	r3, #0
 805cec8:	60fb      	str	r3, [r7, #12]
 805ceca:	687b      	ldr	r3, [r7, #4]
 805cecc:	2b00      	cmp	r3, #0
 805cece:	d010      	beq.n	805cef2 <xQueueCreateCountingSemaphore+0x36>
 805ced0:	683a      	ldr	r2, [r7, #0]
 805ced2:	687b      	ldr	r3, [r7, #4]
 805ced4:	429a      	cmp	r2, r3
 805ced6:	d80c      	bhi.n	805cef2 <xQueueCreateCountingSemaphore+0x36>
 805ced8:	2202      	movs	r2, #2
 805ceda:	2100      	movs	r1, #0
 805cedc:	6878      	ldr	r0, [r7, #4]
 805cede:	f000 fa4f 	bl	805d380 <xQueueGenericCreate>
 805cee2:	60f8      	str	r0, [r7, #12]
 805cee4:	68fb      	ldr	r3, [r7, #12]
 805cee6:	2b00      	cmp	r3, #0
 805cee8:	d009      	beq.n	805cefe <xQueueCreateCountingSemaphore+0x42>
 805ceea:	68fb      	ldr	r3, [r7, #12]
 805ceec:	683a      	ldr	r2, [r7, #0]
 805ceee:	639a      	str	r2, [r3, #56]	; 0x38
 805cef0:	e005      	b.n	805cefe <xQueueCreateCountingSemaphore+0x42>
 805cef2:	68fb      	ldr	r3, [r7, #12]
 805cef4:	2b00      	cmp	r3, #0
 805cef6:	d102      	bne.n	805cefe <xQueueCreateCountingSemaphore+0x42>
 805cef8:	4b03      	ldr	r3, [pc, #12]	; (805cf08 <xQueueCreateCountingSemaphore+0x4c>)
 805cefa:	4798      	blx	r3
 805cefc:	e7fe      	b.n	805cefc <xQueueCreateCountingSemaphore+0x40>
 805cefe:	68fb      	ldr	r3, [r7, #12]
 805cf00:	4618      	mov	r0, r3
 805cf02:	3710      	adds	r7, #16
 805cf04:	46bd      	mov	sp, r7
 805cf06:	bd80      	pop	{r7, pc}
 805cf08:	0805f1c7 	.word	0x0805f1c7

0805cf0c <xQueueSemaphoreTake>:
 805cf0c:	b580      	push	{r7, lr}
 805cf0e:	b08a      	sub	sp, #40	; 0x28
 805cf10:	af00      	add	r7, sp, #0
 805cf12:	6078      	str	r0, [r7, #4]
 805cf14:	6039      	str	r1, [r7, #0]
 805cf16:	2300      	movs	r3, #0
 805cf18:	627b      	str	r3, [r7, #36]	; 0x24
 805cf1a:	687b      	ldr	r3, [r7, #4]
 805cf1c:	61fb      	str	r3, [r7, #28]
 805cf1e:	2300      	movs	r3, #0
 805cf20:	623b      	str	r3, [r7, #32]
 805cf22:	69fb      	ldr	r3, [r7, #28]
 805cf24:	2b00      	cmp	r3, #0
 805cf26:	d102      	bne.n	805cf2e <xQueueSemaphoreTake+0x22>
 805cf28:	4b64      	ldr	r3, [pc, #400]	; (805d0bc <xQueueSemaphoreTake+0x1b0>)
 805cf2a:	4798      	blx	r3
 805cf2c:	e7fe      	b.n	805cf2c <xQueueSemaphoreTake+0x20>
 805cf2e:	69fb      	ldr	r3, [r7, #28]
 805cf30:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 805cf32:	2b00      	cmp	r3, #0
 805cf34:	d002      	beq.n	805cf3c <xQueueSemaphoreTake+0x30>
 805cf36:	4b61      	ldr	r3, [pc, #388]	; (805d0bc <xQueueSemaphoreTake+0x1b0>)
 805cf38:	4798      	blx	r3
 805cf3a:	e7fe      	b.n	805cf3a <xQueueSemaphoreTake+0x2e>
 805cf3c:	4b60      	ldr	r3, [pc, #384]	; (805d0c0 <xQueueSemaphoreTake+0x1b4>)
 805cf3e:	4798      	blx	r3
 805cf40:	4603      	mov	r3, r0
 805cf42:	2b00      	cmp	r3, #0
 805cf44:	d102      	bne.n	805cf4c <xQueueSemaphoreTake+0x40>
 805cf46:	683b      	ldr	r3, [r7, #0]
 805cf48:	2b00      	cmp	r3, #0
 805cf4a:	d101      	bne.n	805cf50 <xQueueSemaphoreTake+0x44>
 805cf4c:	2301      	movs	r3, #1
 805cf4e:	e000      	b.n	805cf52 <xQueueSemaphoreTake+0x46>
 805cf50:	2300      	movs	r3, #0
 805cf52:	2b00      	cmp	r3, #0
 805cf54:	d102      	bne.n	805cf5c <xQueueSemaphoreTake+0x50>
 805cf56:	4b59      	ldr	r3, [pc, #356]	; (805d0bc <xQueueSemaphoreTake+0x1b0>)
 805cf58:	4798      	blx	r3
 805cf5a:	e7fe      	b.n	805cf5a <xQueueSemaphoreTake+0x4e>
 805cf5c:	4b59      	ldr	r3, [pc, #356]	; (805d0c4 <xQueueSemaphoreTake+0x1b8>)
 805cf5e:	4798      	blx	r3
 805cf60:	69fb      	ldr	r3, [r7, #28]
 805cf62:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 805cf64:	61bb      	str	r3, [r7, #24]
 805cf66:	69bb      	ldr	r3, [r7, #24]
 805cf68:	2b00      	cmp	r3, #0
 805cf6a:	d01e      	beq.n	805cfaa <xQueueSemaphoreTake+0x9e>
 805cf6c:	69bb      	ldr	r3, [r7, #24]
 805cf6e:	1e5a      	subs	r2, r3, #1
 805cf70:	69fb      	ldr	r3, [r7, #28]
 805cf72:	639a      	str	r2, [r3, #56]	; 0x38
 805cf74:	69fb      	ldr	r3, [r7, #28]
 805cf76:	681b      	ldr	r3, [r3, #0]
 805cf78:	2b00      	cmp	r3, #0
 805cf7a:	d104      	bne.n	805cf86 <xQueueSemaphoreTake+0x7a>
 805cf7c:	4b52      	ldr	r3, [pc, #328]	; (805d0c8 <xQueueSemaphoreTake+0x1bc>)
 805cf7e:	4798      	blx	r3
 805cf80:	4602      	mov	r2, r0
 805cf82:	69fb      	ldr	r3, [r7, #28]
 805cf84:	609a      	str	r2, [r3, #8]
 805cf86:	69fb      	ldr	r3, [r7, #28]
 805cf88:	691b      	ldr	r3, [r3, #16]
 805cf8a:	2b00      	cmp	r3, #0
 805cf8c:	d009      	beq.n	805cfa2 <xQueueSemaphoreTake+0x96>
 805cf8e:	69fb      	ldr	r3, [r7, #28]
 805cf90:	3310      	adds	r3, #16
 805cf92:	4618      	mov	r0, r3
 805cf94:	4b4d      	ldr	r3, [pc, #308]	; (805d0cc <xQueueSemaphoreTake+0x1c0>)
 805cf96:	4798      	blx	r3
 805cf98:	4603      	mov	r3, r0
 805cf9a:	2b00      	cmp	r3, #0
 805cf9c:	d001      	beq.n	805cfa2 <xQueueSemaphoreTake+0x96>
 805cf9e:	4b4c      	ldr	r3, [pc, #304]	; (805d0d0 <xQueueSemaphoreTake+0x1c4>)
 805cfa0:	4798      	blx	r3
 805cfa2:	4b4c      	ldr	r3, [pc, #304]	; (805d0d4 <xQueueSemaphoreTake+0x1c8>)
 805cfa4:	4798      	blx	r3
 805cfa6:	2301      	movs	r3, #1
 805cfa8:	e083      	b.n	805d0b2 <xQueueSemaphoreTake+0x1a6>
 805cfaa:	683b      	ldr	r3, [r7, #0]
 805cfac:	2b00      	cmp	r3, #0
 805cfae:	d103      	bne.n	805cfb8 <xQueueSemaphoreTake+0xac>
 805cfb0:	4b48      	ldr	r3, [pc, #288]	; (805d0d4 <xQueueSemaphoreTake+0x1c8>)
 805cfb2:	4798      	blx	r3
 805cfb4:	2300      	movs	r3, #0
 805cfb6:	e07c      	b.n	805d0b2 <xQueueSemaphoreTake+0x1a6>
 805cfb8:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805cfba:	2b00      	cmp	r3, #0
 805cfbc:	d106      	bne.n	805cfcc <xQueueSemaphoreTake+0xc0>
 805cfbe:	f107 030c 	add.w	r3, r7, #12
 805cfc2:	4618      	mov	r0, r3
 805cfc4:	4b44      	ldr	r3, [pc, #272]	; (805d0d8 <xQueueSemaphoreTake+0x1cc>)
 805cfc6:	4798      	blx	r3
 805cfc8:	2301      	movs	r3, #1
 805cfca:	627b      	str	r3, [r7, #36]	; 0x24
 805cfcc:	4b41      	ldr	r3, [pc, #260]	; (805d0d4 <xQueueSemaphoreTake+0x1c8>)
 805cfce:	4798      	blx	r3
 805cfd0:	4b42      	ldr	r3, [pc, #264]	; (805d0dc <xQueueSemaphoreTake+0x1d0>)
 805cfd2:	4798      	blx	r3
 805cfd4:	4b3b      	ldr	r3, [pc, #236]	; (805d0c4 <xQueueSemaphoreTake+0x1b8>)
 805cfd6:	4798      	blx	r3
 805cfd8:	69fb      	ldr	r3, [r7, #28]
 805cfda:	f893 3044 	ldrb.w	r3, [r3, #68]	; 0x44
 805cfde:	b25b      	sxtb	r3, r3
 805cfe0:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 805cfe4:	d103      	bne.n	805cfee <xQueueSemaphoreTake+0xe2>
 805cfe6:	69fb      	ldr	r3, [r7, #28]
 805cfe8:	2200      	movs	r2, #0
 805cfea:	f883 2044 	strb.w	r2, [r3, #68]	; 0x44
 805cfee:	69fb      	ldr	r3, [r7, #28]
 805cff0:	f893 3045 	ldrb.w	r3, [r3, #69]	; 0x45
 805cff4:	b25b      	sxtb	r3, r3
 805cff6:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 805cffa:	d103      	bne.n	805d004 <xQueueSemaphoreTake+0xf8>
 805cffc:	69fb      	ldr	r3, [r7, #28]
 805cffe:	2200      	movs	r2, #0
 805d000:	f883 2045 	strb.w	r2, [r3, #69]	; 0x45
 805d004:	4b33      	ldr	r3, [pc, #204]	; (805d0d4 <xQueueSemaphoreTake+0x1c8>)
 805d006:	4798      	blx	r3
 805d008:	463a      	mov	r2, r7
 805d00a:	f107 030c 	add.w	r3, r7, #12
 805d00e:	4611      	mov	r1, r2
 805d010:	4618      	mov	r0, r3
 805d012:	4b33      	ldr	r3, [pc, #204]	; (805d0e0 <xQueueSemaphoreTake+0x1d4>)
 805d014:	4798      	blx	r3
 805d016:	4603      	mov	r3, r0
 805d018:	2b00      	cmp	r3, #0
 805d01a:	d12c      	bne.n	805d076 <xQueueSemaphoreTake+0x16a>
 805d01c:	69f8      	ldr	r0, [r7, #28]
 805d01e:	f000 fb4b 	bl	805d6b8 <prvIsQueueEmpty>
 805d022:	4603      	mov	r3, r0
 805d024:	2b00      	cmp	r3, #0
 805d026:	d020      	beq.n	805d06a <xQueueSemaphoreTake+0x15e>
 805d028:	69fb      	ldr	r3, [r7, #28]
 805d02a:	681b      	ldr	r3, [r3, #0]
 805d02c:	2b00      	cmp	r3, #0
 805d02e:	d109      	bne.n	805d044 <xQueueSemaphoreTake+0x138>
 805d030:	4b24      	ldr	r3, [pc, #144]	; (805d0c4 <xQueueSemaphoreTake+0x1b8>)
 805d032:	4798      	blx	r3
 805d034:	69fb      	ldr	r3, [r7, #28]
 805d036:	689b      	ldr	r3, [r3, #8]
 805d038:	4618      	mov	r0, r3
 805d03a:	4b2a      	ldr	r3, [pc, #168]	; (805d0e4 <xQueueSemaphoreTake+0x1d8>)
 805d03c:	4798      	blx	r3
 805d03e:	6238      	str	r0, [r7, #32]
 805d040:	4b24      	ldr	r3, [pc, #144]	; (805d0d4 <xQueueSemaphoreTake+0x1c8>)
 805d042:	4798      	blx	r3
 805d044:	69fb      	ldr	r3, [r7, #28]
 805d046:	3324      	adds	r3, #36	; 0x24
 805d048:	683a      	ldr	r2, [r7, #0]
 805d04a:	4611      	mov	r1, r2
 805d04c:	4618      	mov	r0, r3
 805d04e:	4b26      	ldr	r3, [pc, #152]	; (805d0e8 <xQueueSemaphoreTake+0x1dc>)
 805d050:	4798      	blx	r3
 805d052:	69f8      	ldr	r0, [r7, #28]
 805d054:	f000 fad6 	bl	805d604 <prvUnlockQueue>
 805d058:	4b24      	ldr	r3, [pc, #144]	; (805d0ec <xQueueSemaphoreTake+0x1e0>)
 805d05a:	4798      	blx	r3
 805d05c:	4603      	mov	r3, r0
 805d05e:	2b00      	cmp	r3, #0
 805d060:	f47f af7c 	bne.w	805cf5c <xQueueSemaphoreTake+0x50>
 805d064:	4b1a      	ldr	r3, [pc, #104]	; (805d0d0 <xQueueSemaphoreTake+0x1c4>)
 805d066:	4798      	blx	r3
 805d068:	e778      	b.n	805cf5c <xQueueSemaphoreTake+0x50>
 805d06a:	69f8      	ldr	r0, [r7, #28]
 805d06c:	f000 faca 	bl	805d604 <prvUnlockQueue>
 805d070:	4b1e      	ldr	r3, [pc, #120]	; (805d0ec <xQueueSemaphoreTake+0x1e0>)
 805d072:	4798      	blx	r3
 805d074:	e772      	b.n	805cf5c <xQueueSemaphoreTake+0x50>
 805d076:	69f8      	ldr	r0, [r7, #28]
 805d078:	f000 fac4 	bl	805d604 <prvUnlockQueue>
 805d07c:	4b1b      	ldr	r3, [pc, #108]	; (805d0ec <xQueueSemaphoreTake+0x1e0>)
 805d07e:	4798      	blx	r3
 805d080:	69f8      	ldr	r0, [r7, #28]
 805d082:	f000 fb19 	bl	805d6b8 <prvIsQueueEmpty>
 805d086:	4603      	mov	r3, r0
 805d088:	2b00      	cmp	r3, #0
 805d08a:	f43f af67 	beq.w	805cf5c <xQueueSemaphoreTake+0x50>
 805d08e:	6a3b      	ldr	r3, [r7, #32]
 805d090:	2b00      	cmp	r3, #0
 805d092:	d00d      	beq.n	805d0b0 <xQueueSemaphoreTake+0x1a4>
 805d094:	4b0b      	ldr	r3, [pc, #44]	; (805d0c4 <xQueueSemaphoreTake+0x1b8>)
 805d096:	4798      	blx	r3
 805d098:	69f8      	ldr	r0, [r7, #28]
 805d09a:	f000 fc16 	bl	805d8ca <prvGetDisinheritPriorityAfterTimeout>
 805d09e:	6178      	str	r0, [r7, #20]
 805d0a0:	69fb      	ldr	r3, [r7, #28]
 805d0a2:	689b      	ldr	r3, [r3, #8]
 805d0a4:	6979      	ldr	r1, [r7, #20]
 805d0a6:	4618      	mov	r0, r3
 805d0a8:	4b11      	ldr	r3, [pc, #68]	; (805d0f0 <xQueueSemaphoreTake+0x1e4>)
 805d0aa:	4798      	blx	r3
 805d0ac:	4b09      	ldr	r3, [pc, #36]	; (805d0d4 <xQueueSemaphoreTake+0x1c8>)
 805d0ae:	4798      	blx	r3
 805d0b0:	2300      	movs	r3, #0
 805d0b2:	4618      	mov	r0, r3
 805d0b4:	3728      	adds	r7, #40	; 0x28
 805d0b6:	46bd      	mov	sp, r7
 805d0b8:	bd80      	pop	{r7, pc}
 805d0ba:	bf00      	nop
 805d0bc:	0805f1c7 	.word	0x0805f1c7
 805d0c0:	0805756d 	.word	0x0805756d
 805d0c4:	0805ecc5 	.word	0x0805ecc5
 805d0c8:	080579fb 	.word	0x080579fb
 805d0cc:	080570f1 	.word	0x080570f1
 805d0d0:	0805eca5 	.word	0x0805eca5
 805d0d4:	0805eced 	.word	0x0805eced
 805d0d8:	08057a2d 	.word	0x08057a2d
 805d0dc:	08055dbd 	.word	0x08055dbd
 805d0e0:	08056c1d 	.word	0x08056c1d
 805d0e4:	080575a9 	.word	0x080575a9
 805d0e8:	08056f89 	.word	0x08056f89
 805d0ec:	08055dd9 	.word	0x08055dd9
 805d0f0:	08057841 	.word	0x08057841

0805d0f4 <xQueueGetMutexHolder>:
 805d0f4:	b580      	push	{r7, lr}
 805d0f6:	b084      	sub	sp, #16
 805d0f8:	af00      	add	r7, sp, #0
 805d0fa:	6078      	str	r0, [r7, #4]
 805d0fc:	687b      	ldr	r3, [r7, #4]
 805d0fe:	60bb      	str	r3, [r7, #8]
 805d100:	687b      	ldr	r3, [r7, #4]
 805d102:	2b00      	cmp	r3, #0
 805d104:	d102      	bne.n	805d10c <xQueueGetMutexHolder+0x18>
 805d106:	4b0b      	ldr	r3, [pc, #44]	; (805d134 <xQueueGetMutexHolder+0x40>)
 805d108:	4798      	blx	r3
 805d10a:	e7fe      	b.n	805d10a <xQueueGetMutexHolder+0x16>
 805d10c:	4b0a      	ldr	r3, [pc, #40]	; (805d138 <xQueueGetMutexHolder+0x44>)
 805d10e:	4798      	blx	r3
 805d110:	68bb      	ldr	r3, [r7, #8]
 805d112:	681b      	ldr	r3, [r3, #0]
 805d114:	2b00      	cmp	r3, #0
 805d116:	d103      	bne.n	805d120 <xQueueGetMutexHolder+0x2c>
 805d118:	68bb      	ldr	r3, [r7, #8]
 805d11a:	689b      	ldr	r3, [r3, #8]
 805d11c:	60fb      	str	r3, [r7, #12]
 805d11e:	e001      	b.n	805d124 <xQueueGetMutexHolder+0x30>
 805d120:	2300      	movs	r3, #0
 805d122:	60fb      	str	r3, [r7, #12]
 805d124:	4b05      	ldr	r3, [pc, #20]	; (805d13c <xQueueGetMutexHolder+0x48>)
 805d126:	4798      	blx	r3
 805d128:	68fb      	ldr	r3, [r7, #12]
 805d12a:	4618      	mov	r0, r3
 805d12c:	3710      	adds	r7, #16
 805d12e:	46bd      	mov	sp, r7
 805d130:	bd80      	pop	{r7, pc}
 805d132:	bf00      	nop
 805d134:	0805f1c7 	.word	0x0805f1c7
 805d138:	0805ecc5 	.word	0x0805ecc5
 805d13c:	0805eced 	.word	0x0805eced

0805d140 <xQueueGetMutexHolderFromISR>:
 805d140:	b580      	push	{r7, lr}
 805d142:	b084      	sub	sp, #16
 805d144:	af00      	add	r7, sp, #0
 805d146:	6078      	str	r0, [r7, #4]
 805d148:	687b      	ldr	r3, [r7, #4]
 805d14a:	2b00      	cmp	r3, #0
 805d14c:	d102      	bne.n	805d154 <xQueueGetMutexHolderFromISR+0x14>
 805d14e:	4b09      	ldr	r3, [pc, #36]	; (805d174 <xQueueGetMutexHolderFromISR+0x34>)
 805d150:	4798      	blx	r3
 805d152:	e7fe      	b.n	805d152 <xQueueGetMutexHolderFromISR+0x12>
 805d154:	687b      	ldr	r3, [r7, #4]
 805d156:	681b      	ldr	r3, [r3, #0]
 805d158:	2b00      	cmp	r3, #0
 805d15a:	d103      	bne.n	805d164 <xQueueGetMutexHolderFromISR+0x24>
 805d15c:	687b      	ldr	r3, [r7, #4]
 805d15e:	689b      	ldr	r3, [r3, #8]
 805d160:	60fb      	str	r3, [r7, #12]
 805d162:	e001      	b.n	805d168 <xQueueGetMutexHolderFromISR+0x28>
 805d164:	2300      	movs	r3, #0
 805d166:	60fb      	str	r3, [r7, #12]
 805d168:	68fb      	ldr	r3, [r7, #12]
 805d16a:	4618      	mov	r0, r3
 805d16c:	3710      	adds	r7, #16
 805d16e:	46bd      	mov	sp, r7
 805d170:	bd80      	pop	{r7, pc}
 805d172:	bf00      	nop
 805d174:	0805f1c7 	.word	0x0805f1c7

0805d178 <xQueueTakeMutexRecursive>:
 805d178:	b590      	push	{r4, r7, lr}
 805d17a:	b085      	sub	sp, #20
 805d17c:	af00      	add	r7, sp, #0
 805d17e:	6078      	str	r0, [r7, #4]
 805d180:	6039      	str	r1, [r7, #0]
 805d182:	687b      	ldr	r3, [r7, #4]
 805d184:	60bb      	str	r3, [r7, #8]
 805d186:	68bb      	ldr	r3, [r7, #8]
 805d188:	2b00      	cmp	r3, #0
 805d18a:	d102      	bne.n	805d192 <xQueueTakeMutexRecursive+0x1a>
 805d18c:	4b11      	ldr	r3, [pc, #68]	; (805d1d4 <xQueueTakeMutexRecursive+0x5c>)
 805d18e:	4798      	blx	r3
 805d190:	e7fe      	b.n	805d190 <xQueueTakeMutexRecursive+0x18>
 805d192:	68bb      	ldr	r3, [r7, #8]
 805d194:	689c      	ldr	r4, [r3, #8]
 805d196:	4b10      	ldr	r3, [pc, #64]	; (805d1d8 <xQueueTakeMutexRecursive+0x60>)
 805d198:	4798      	blx	r3
 805d19a:	4603      	mov	r3, r0
 805d19c:	429c      	cmp	r4, r3
 805d19e:	d107      	bne.n	805d1b0 <xQueueTakeMutexRecursive+0x38>
 805d1a0:	68bb      	ldr	r3, [r7, #8]
 805d1a2:	68db      	ldr	r3, [r3, #12]
 805d1a4:	1c5a      	adds	r2, r3, #1
 805d1a6:	68bb      	ldr	r3, [r7, #8]
 805d1a8:	60da      	str	r2, [r3, #12]
 805d1aa:	2301      	movs	r3, #1
 805d1ac:	60fb      	str	r3, [r7, #12]
 805d1ae:	e00c      	b.n	805d1ca <xQueueTakeMutexRecursive+0x52>
 805d1b0:	6839      	ldr	r1, [r7, #0]
 805d1b2:	68b8      	ldr	r0, [r7, #8]
 805d1b4:	f7ff feaa 	bl	805cf0c <xQueueSemaphoreTake>
 805d1b8:	60f8      	str	r0, [r7, #12]
 805d1ba:	68fb      	ldr	r3, [r7, #12]
 805d1bc:	2b00      	cmp	r3, #0
 805d1be:	d004      	beq.n	805d1ca <xQueueTakeMutexRecursive+0x52>
 805d1c0:	68bb      	ldr	r3, [r7, #8]
 805d1c2:	68db      	ldr	r3, [r3, #12]
 805d1c4:	1c5a      	adds	r2, r3, #1
 805d1c6:	68bb      	ldr	r3, [r7, #8]
 805d1c8:	60da      	str	r2, [r3, #12]
 805d1ca:	68fb      	ldr	r3, [r7, #12]
 805d1cc:	4618      	mov	r0, r3
 805d1ce:	3714      	adds	r7, #20
 805d1d0:	46bd      	mov	sp, r7
 805d1d2:	bd90      	pop	{r4, r7, pc}
 805d1d4:	0805f1c7 	.word	0x0805f1c7
 805d1d8:	08057539 	.word	0x08057539

0805d1dc <xQueueGiveMutexRecursive>:
 805d1dc:	b590      	push	{r4, r7, lr}
 805d1de:	b085      	sub	sp, #20
 805d1e0:	af00      	add	r7, sp, #0
 805d1e2:	6078      	str	r0, [r7, #4]
 805d1e4:	687b      	ldr	r3, [r7, #4]
 805d1e6:	60bb      	str	r3, [r7, #8]
 805d1e8:	68bb      	ldr	r3, [r7, #8]
 805d1ea:	2b00      	cmp	r3, #0
 805d1ec:	d102      	bne.n	805d1f4 <xQueueGiveMutexRecursive+0x18>
 805d1ee:	4b11      	ldr	r3, [pc, #68]	; (805d234 <xQueueGiveMutexRecursive+0x58>)
 805d1f0:	4798      	blx	r3
 805d1f2:	e7fe      	b.n	805d1f2 <xQueueGiveMutexRecursive+0x16>
 805d1f4:	68bb      	ldr	r3, [r7, #8]
 805d1f6:	689c      	ldr	r4, [r3, #8]
 805d1f8:	4b0f      	ldr	r3, [pc, #60]	; (805d238 <xQueueGiveMutexRecursive+0x5c>)
 805d1fa:	4798      	blx	r3
 805d1fc:	4603      	mov	r3, r0
 805d1fe:	429c      	cmp	r4, r3
 805d200:	d111      	bne.n	805d226 <xQueueGiveMutexRecursive+0x4a>
 805d202:	68bb      	ldr	r3, [r7, #8]
 805d204:	68db      	ldr	r3, [r3, #12]
 805d206:	1e5a      	subs	r2, r3, #1
 805d208:	68bb      	ldr	r3, [r7, #8]
 805d20a:	60da      	str	r2, [r3, #12]
 805d20c:	68bb      	ldr	r3, [r7, #8]
 805d20e:	68db      	ldr	r3, [r3, #12]
 805d210:	2b00      	cmp	r3, #0
 805d212:	d105      	bne.n	805d220 <xQueueGiveMutexRecursive+0x44>
 805d214:	2300      	movs	r3, #0
 805d216:	2200      	movs	r2, #0
 805d218:	2100      	movs	r1, #0
 805d21a:	68b8      	ldr	r0, [r7, #8]
 805d21c:	f7ff f93e 	bl	805c49c <xQueueGenericSend>
 805d220:	2301      	movs	r3, #1
 805d222:	60fb      	str	r3, [r7, #12]
 805d224:	e001      	b.n	805d22a <xQueueGiveMutexRecursive+0x4e>
 805d226:	2300      	movs	r3, #0
 805d228:	60fb      	str	r3, [r7, #12]
 805d22a:	68fb      	ldr	r3, [r7, #12]
 805d22c:	4618      	mov	r0, r3
 805d22e:	3714      	adds	r7, #20
 805d230:	46bd      	mov	sp, r7
 805d232:	bd90      	pop	{r4, r7, pc}
 805d234:	0805f1c7 	.word	0x0805f1c7
 805d238:	08057539 	.word	0x08057539

0805d23c <vQueueAddToRegistry>:
 805d23c:	b580      	push	{r7, lr}
 805d23e:	b084      	sub	sp, #16
 805d240:	af00      	add	r7, sp, #0
 805d242:	6078      	str	r0, [r7, #4]
 805d244:	6039      	str	r1, [r7, #0]
 805d246:	2300      	movs	r3, #0
 805d248:	60bb      	str	r3, [r7, #8]
 805d24a:	687b      	ldr	r3, [r7, #4]
 805d24c:	2b00      	cmp	r3, #0
 805d24e:	d102      	bne.n	805d256 <vQueueAddToRegistry+0x1a>
 805d250:	4b1b      	ldr	r3, [pc, #108]	; (805d2c0 <vQueueAddToRegistry+0x84>)
 805d252:	4798      	blx	r3
 805d254:	e7fe      	b.n	805d254 <vQueueAddToRegistry+0x18>
 805d256:	683b      	ldr	r3, [r7, #0]
 805d258:	2b00      	cmp	r3, #0
 805d25a:	d024      	beq.n	805d2a6 <vQueueAddToRegistry+0x6a>
 805d25c:	2300      	movs	r3, #0
 805d25e:	60fb      	str	r3, [r7, #12]
 805d260:	e01e      	b.n	805d2a0 <vQueueAddToRegistry+0x64>
 805d262:	4a18      	ldr	r2, [pc, #96]	; (805d2c4 <vQueueAddToRegistry+0x88>)
 805d264:	68fb      	ldr	r3, [r7, #12]
 805d266:	00db      	lsls	r3, r3, #3
 805d268:	4413      	add	r3, r2
 805d26a:	685b      	ldr	r3, [r3, #4]
 805d26c:	687a      	ldr	r2, [r7, #4]
 805d26e:	429a      	cmp	r2, r3
 805d270:	d105      	bne.n	805d27e <vQueueAddToRegistry+0x42>
 805d272:	68fb      	ldr	r3, [r7, #12]
 805d274:	00db      	lsls	r3, r3, #3
 805d276:	4a13      	ldr	r2, [pc, #76]	; (805d2c4 <vQueueAddToRegistry+0x88>)
 805d278:	4413      	add	r3, r2
 805d27a:	60bb      	str	r3, [r7, #8]
 805d27c:	e013      	b.n	805d2a6 <vQueueAddToRegistry+0x6a>
 805d27e:	68bb      	ldr	r3, [r7, #8]
 805d280:	2b00      	cmp	r3, #0
 805d282:	d10a      	bne.n	805d29a <vQueueAddToRegistry+0x5e>
 805d284:	4a0f      	ldr	r2, [pc, #60]	; (805d2c4 <vQueueAddToRegistry+0x88>)
 805d286:	68fb      	ldr	r3, [r7, #12]
 805d288:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
 805d28c:	2b00      	cmp	r3, #0
 805d28e:	d104      	bne.n	805d29a <vQueueAddToRegistry+0x5e>
 805d290:	68fb      	ldr	r3, [r7, #12]
 805d292:	00db      	lsls	r3, r3, #3
 805d294:	4a0b      	ldr	r2, [pc, #44]	; (805d2c4 <vQueueAddToRegistry+0x88>)
 805d296:	4413      	add	r3, r2
 805d298:	60bb      	str	r3, [r7, #8]
 805d29a:	68fb      	ldr	r3, [r7, #12]
 805d29c:	3301      	adds	r3, #1
 805d29e:	60fb      	str	r3, [r7, #12]
 805d2a0:	68fb      	ldr	r3, [r7, #12]
 805d2a2:	2b07      	cmp	r3, #7
 805d2a4:	d9dd      	bls.n	805d262 <vQueueAddToRegistry+0x26>
 805d2a6:	68bb      	ldr	r3, [r7, #8]
 805d2a8:	2b00      	cmp	r3, #0
 805d2aa:	d005      	beq.n	805d2b8 <vQueueAddToRegistry+0x7c>
 805d2ac:	68bb      	ldr	r3, [r7, #8]
 805d2ae:	683a      	ldr	r2, [r7, #0]
 805d2b0:	601a      	str	r2, [r3, #0]
 805d2b2:	68bb      	ldr	r3, [r7, #8]
 805d2b4:	687a      	ldr	r2, [r7, #4]
 805d2b6:	605a      	str	r2, [r3, #4]
 805d2b8:	bf00      	nop
 805d2ba:	3710      	adds	r7, #16
 805d2bc:	46bd      	mov	sp, r7
 805d2be:	bd80      	pop	{r7, pc}
 805d2c0:	0805f1c7 	.word	0x0805f1c7
 805d2c4:	20003b38 	.word	0x20003b38

0805d2c8 <vQueueUnregisterQueue>:
 805d2c8:	b580      	push	{r7, lr}
 805d2ca:	b084      	sub	sp, #16
 805d2cc:	af00      	add	r7, sp, #0
 805d2ce:	6078      	str	r0, [r7, #4]
 805d2d0:	687b      	ldr	r3, [r7, #4]
 805d2d2:	2b00      	cmp	r3, #0
 805d2d4:	d102      	bne.n	805d2dc <vQueueUnregisterQueue+0x14>
 805d2d6:	4b12      	ldr	r3, [pc, #72]	; (805d320 <vQueueUnregisterQueue+0x58>)
 805d2d8:	4798      	blx	r3
 805d2da:	e7fe      	b.n	805d2da <vQueueUnregisterQueue+0x12>
 805d2dc:	2300      	movs	r3, #0
 805d2de:	60fb      	str	r3, [r7, #12]
 805d2e0:	e016      	b.n	805d310 <vQueueUnregisterQueue+0x48>
 805d2e2:	4a10      	ldr	r2, [pc, #64]	; (805d324 <vQueueUnregisterQueue+0x5c>)
 805d2e4:	68fb      	ldr	r3, [r7, #12]
 805d2e6:	00db      	lsls	r3, r3, #3
 805d2e8:	4413      	add	r3, r2
 805d2ea:	685b      	ldr	r3, [r3, #4]
 805d2ec:	687a      	ldr	r2, [r7, #4]
 805d2ee:	429a      	cmp	r2, r3
 805d2f0:	d10b      	bne.n	805d30a <vQueueUnregisterQueue+0x42>
 805d2f2:	4a0c      	ldr	r2, [pc, #48]	; (805d324 <vQueueUnregisterQueue+0x5c>)
 805d2f4:	68fb      	ldr	r3, [r7, #12]
 805d2f6:	2100      	movs	r1, #0
 805d2f8:	f842 1033 	str.w	r1, [r2, r3, lsl #3]
 805d2fc:	4a09      	ldr	r2, [pc, #36]	; (805d324 <vQueueUnregisterQueue+0x5c>)
 805d2fe:	68fb      	ldr	r3, [r7, #12]
 805d300:	00db      	lsls	r3, r3, #3
 805d302:	4413      	add	r3, r2
 805d304:	2200      	movs	r2, #0
 805d306:	605a      	str	r2, [r3, #4]
 805d308:	e006      	b.n	805d318 <vQueueUnregisterQueue+0x50>
 805d30a:	68fb      	ldr	r3, [r7, #12]
 805d30c:	3301      	adds	r3, #1
 805d30e:	60fb      	str	r3, [r7, #12]
 805d310:	68fb      	ldr	r3, [r7, #12]
 805d312:	2b07      	cmp	r3, #7
 805d314:	d9e5      	bls.n	805d2e2 <vQueueUnregisterQueue+0x1a>
 805d316:	bf00      	nop
 805d318:	bf00      	nop
 805d31a:	3710      	adds	r7, #16
 805d31c:	46bd      	mov	sp, r7
 805d31e:	bd80      	pop	{r7, pc}
 805d320:	0805f1c7 	.word	0x0805f1c7
 805d324:	20003b38 	.word	0x20003b38

0805d328 <pcQueueGetName>:
 805d328:	b580      	push	{r7, lr}
 805d32a:	b084      	sub	sp, #16
 805d32c:	af00      	add	r7, sp, #0
 805d32e:	6078      	str	r0, [r7, #4]
 805d330:	2300      	movs	r3, #0
 805d332:	60bb      	str	r3, [r7, #8]
 805d334:	687b      	ldr	r3, [r7, #4]
 805d336:	2b00      	cmp	r3, #0
 805d338:	d102      	bne.n	805d340 <pcQueueGetName+0x18>
 805d33a:	4b0f      	ldr	r3, [pc, #60]	; (805d378 <pcQueueGetName+0x50>)
 805d33c:	4798      	blx	r3
 805d33e:	e7fe      	b.n	805d33e <pcQueueGetName+0x16>
 805d340:	2300      	movs	r3, #0
 805d342:	60fb      	str	r3, [r7, #12]
 805d344:	e010      	b.n	805d368 <pcQueueGetName+0x40>
 805d346:	4a0d      	ldr	r2, [pc, #52]	; (805d37c <pcQueueGetName+0x54>)
 805d348:	68fb      	ldr	r3, [r7, #12]
 805d34a:	00db      	lsls	r3, r3, #3
 805d34c:	4413      	add	r3, r2
 805d34e:	685b      	ldr	r3, [r3, #4]
 805d350:	687a      	ldr	r2, [r7, #4]
 805d352:	429a      	cmp	r2, r3
 805d354:	d105      	bne.n	805d362 <pcQueueGetName+0x3a>
 805d356:	4a09      	ldr	r2, [pc, #36]	; (805d37c <pcQueueGetName+0x54>)
 805d358:	68fb      	ldr	r3, [r7, #12]
 805d35a:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
 805d35e:	60bb      	str	r3, [r7, #8]
 805d360:	e005      	b.n	805d36e <pcQueueGetName+0x46>
 805d362:	68fb      	ldr	r3, [r7, #12]
 805d364:	3301      	adds	r3, #1
 805d366:	60fb      	str	r3, [r7, #12]
 805d368:	68fb      	ldr	r3, [r7, #12]
 805d36a:	2b07      	cmp	r3, #7
 805d36c:	d9eb      	bls.n	805d346 <pcQueueGetName+0x1e>
 805d36e:	68bb      	ldr	r3, [r7, #8]
 805d370:	4618      	mov	r0, r3
 805d372:	3710      	adds	r7, #16
 805d374:	46bd      	mov	sp, r7
 805d376:	bd80      	pop	{r7, pc}
 805d378:	0805f1c7 	.word	0x0805f1c7
 805d37c:	20003b38 	.word	0x20003b38

0805d380 <xQueueGenericCreate>:
 805d380:	b580      	push	{r7, lr}
 805d382:	b08a      	sub	sp, #40	; 0x28
 805d384:	af02      	add	r7, sp, #8
 805d386:	60f8      	str	r0, [r7, #12]
 805d388:	60b9      	str	r1, [r7, #8]
 805d38a:	4613      	mov	r3, r2
 805d38c:	71fb      	strb	r3, [r7, #7]
 805d38e:	2300      	movs	r3, #0
 805d390:	61fb      	str	r3, [r7, #28]
 805d392:	68fb      	ldr	r3, [r7, #12]
 805d394:	2b00      	cmp	r3, #0
 805d396:	d02e      	beq.n	805d3f6 <xQueueGenericCreate+0x76>
 805d398:	2100      	movs	r1, #0
 805d39a:	68ba      	ldr	r2, [r7, #8]
 805d39c:	68fb      	ldr	r3, [r7, #12]
 805d39e:	fba3 2302 	umull	r2, r3, r3, r2
 805d3a2:	2b00      	cmp	r3, #0
 805d3a4:	d000      	beq.n	805d3a8 <xQueueGenericCreate+0x28>
 805d3a6:	2101      	movs	r1, #1
 805d3a8:	460b      	mov	r3, r1
 805d3aa:	2b00      	cmp	r3, #0
 805d3ac:	d123      	bne.n	805d3f6 <xQueueGenericCreate+0x76>
 805d3ae:	68fb      	ldr	r3, [r7, #12]
 805d3b0:	68ba      	ldr	r2, [r7, #8]
 805d3b2:	fb02 f303 	mul.w	r3, r2, r3
 805d3b6:	f113 0f51 	cmn.w	r3, #81	; 0x51
 805d3ba:	d81c      	bhi.n	805d3f6 <xQueueGenericCreate+0x76>
 805d3bc:	68fb      	ldr	r3, [r7, #12]
 805d3be:	68ba      	ldr	r2, [r7, #8]
 805d3c0:	fb02 f303 	mul.w	r3, r2, r3
 805d3c4:	61bb      	str	r3, [r7, #24]
 805d3c6:	69bb      	ldr	r3, [r7, #24]
 805d3c8:	3350      	adds	r3, #80	; 0x50
 805d3ca:	4618      	mov	r0, r3
 805d3cc:	4b0f      	ldr	r3, [pc, #60]	; (805d40c <xQueueGenericCreate+0x8c>)
 805d3ce:	4798      	blx	r3
 805d3d0:	61f8      	str	r0, [r7, #28]
 805d3d2:	69fb      	ldr	r3, [r7, #28]
 805d3d4:	2b00      	cmp	r3, #0
 805d3d6:	d014      	beq.n	805d402 <xQueueGenericCreate+0x82>
 805d3d8:	69fb      	ldr	r3, [r7, #28]
 805d3da:	617b      	str	r3, [r7, #20]
 805d3dc:	697b      	ldr	r3, [r7, #20]
 805d3de:	3350      	adds	r3, #80	; 0x50
 805d3e0:	617b      	str	r3, [r7, #20]
 805d3e2:	79fa      	ldrb	r2, [r7, #7]
 805d3e4:	69fb      	ldr	r3, [r7, #28]
 805d3e6:	9300      	str	r3, [sp, #0]
 805d3e8:	4613      	mov	r3, r2
 805d3ea:	697a      	ldr	r2, [r7, #20]
 805d3ec:	68b9      	ldr	r1, [r7, #8]
 805d3ee:	68f8      	ldr	r0, [r7, #12]
 805d3f0:	f000 fa2e 	bl	805d850 <prvInitialiseNewQueue>
 805d3f4:	e005      	b.n	805d402 <xQueueGenericCreate+0x82>
 805d3f6:	69fb      	ldr	r3, [r7, #28]
 805d3f8:	2b00      	cmp	r3, #0
 805d3fa:	d102      	bne.n	805d402 <xQueueGenericCreate+0x82>
 805d3fc:	4b04      	ldr	r3, [pc, #16]	; (805d410 <xQueueGenericCreate+0x90>)
 805d3fe:	4798      	blx	r3
 805d400:	e7fe      	b.n	805d400 <xQueueGenericCreate+0x80>
 805d402:	69fb      	ldr	r3, [r7, #28]
 805d404:	4618      	mov	r0, r3
 805d406:	3720      	adds	r7, #32
 805d408:	46bd      	mov	sp, r7
 805d40a:	bd80      	pop	{r7, pc}
 805d40c:	0805b839 	.word	0x0805b839
 805d410:	0805f1c7 	.word	0x0805f1c7

0805d414 <vQueueWaitForMessageRestricted>:
 805d414:	b580      	push	{r7, lr}
 805d416:	b086      	sub	sp, #24
 805d418:	af00      	add	r7, sp, #0
 805d41a:	60f8      	str	r0, [r7, #12]
 805d41c:	60b9      	str	r1, [r7, #8]
 805d41e:	607a      	str	r2, [r7, #4]
 805d420:	68fb      	ldr	r3, [r7, #12]
 805d422:	617b      	str	r3, [r7, #20]
 805d424:	4b15      	ldr	r3, [pc, #84]	; (805d47c <vQueueWaitForMessageRestricted+0x68>)
 805d426:	4798      	blx	r3
 805d428:	697b      	ldr	r3, [r7, #20]
 805d42a:	f893 3044 	ldrb.w	r3, [r3, #68]	; 0x44
 805d42e:	b25b      	sxtb	r3, r3
 805d430:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 805d434:	d103      	bne.n	805d43e <vQueueWaitForMessageRestricted+0x2a>
 805d436:	697b      	ldr	r3, [r7, #20]
 805d438:	2200      	movs	r2, #0
 805d43a:	f883 2044 	strb.w	r2, [r3, #68]	; 0x44
 805d43e:	697b      	ldr	r3, [r7, #20]
 805d440:	f893 3045 	ldrb.w	r3, [r3, #69]	; 0x45
 805d444:	b25b      	sxtb	r3, r3
 805d446:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 805d44a:	d103      	bne.n	805d454 <vQueueWaitForMessageRestricted+0x40>
 805d44c:	697b      	ldr	r3, [r7, #20]
 805d44e:	2200      	movs	r2, #0
 805d450:	f883 2045 	strb.w	r2, [r3, #69]	; 0x45
 805d454:	4b0a      	ldr	r3, [pc, #40]	; (805d480 <vQueueWaitForMessageRestricted+0x6c>)
 805d456:	4798      	blx	r3
 805d458:	697b      	ldr	r3, [r7, #20]
 805d45a:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 805d45c:	2b00      	cmp	r3, #0
 805d45e:	d106      	bne.n	805d46e <vQueueWaitForMessageRestricted+0x5a>
 805d460:	697b      	ldr	r3, [r7, #20]
 805d462:	3324      	adds	r3, #36	; 0x24
 805d464:	687a      	ldr	r2, [r7, #4]
 805d466:	68b9      	ldr	r1, [r7, #8]
 805d468:	4618      	mov	r0, r3
 805d46a:	4b06      	ldr	r3, [pc, #24]	; (805d484 <vQueueWaitForMessageRestricted+0x70>)
 805d46c:	4798      	blx	r3
 805d46e:	6978      	ldr	r0, [r7, #20]
 805d470:	f000 f8c8 	bl	805d604 <prvUnlockQueue>
 805d474:	bf00      	nop
 805d476:	3718      	adds	r7, #24
 805d478:	46bd      	mov	sp, r7
 805d47a:	bd80      	pop	{r7, pc}
 805d47c:	0805ecc5 	.word	0x0805ecc5
 805d480:	0805eced 	.word	0x0805eced
 805d484:	08057069 	.word	0x08057069

0805d488 <xQueueGenericReset>:
 805d488:	b580      	push	{r7, lr}
 805d48a:	b084      	sub	sp, #16
 805d48c:	af00      	add	r7, sp, #0
 805d48e:	6078      	str	r0, [r7, #4]
 805d490:	6039      	str	r1, [r7, #0]
 805d492:	2301      	movs	r3, #1
 805d494:	60fb      	str	r3, [r7, #12]
 805d496:	687b      	ldr	r3, [r7, #4]
 805d498:	60bb      	str	r3, [r7, #8]
 805d49a:	68bb      	ldr	r3, [r7, #8]
 805d49c:	2b00      	cmp	r3, #0
 805d49e:	d102      	bne.n	805d4a6 <xQueueGenericReset+0x1e>
 805d4a0:	4b35      	ldr	r3, [pc, #212]	; (805d578 <xQueueGenericReset+0xf0>)
 805d4a2:	4798      	blx	r3
 805d4a4:	e7fe      	b.n	805d4a4 <xQueueGenericReset+0x1c>
 805d4a6:	68bb      	ldr	r3, [r7, #8]
 805d4a8:	2b00      	cmp	r3, #0
 805d4aa:	d057      	beq.n	805d55c <xQueueGenericReset+0xd4>
 805d4ac:	68bb      	ldr	r3, [r7, #8]
 805d4ae:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 805d4b0:	2b00      	cmp	r3, #0
 805d4b2:	d053      	beq.n	805d55c <xQueueGenericReset+0xd4>
 805d4b4:	68bb      	ldr	r3, [r7, #8]
 805d4b6:	6c1a      	ldr	r2, [r3, #64]	; 0x40
 805d4b8:	68bb      	ldr	r3, [r7, #8]
 805d4ba:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 805d4bc:	2100      	movs	r1, #0
 805d4be:	fba3 2302 	umull	r2, r3, r3, r2
 805d4c2:	2b00      	cmp	r3, #0
 805d4c4:	d000      	beq.n	805d4c8 <xQueueGenericReset+0x40>
 805d4c6:	2101      	movs	r1, #1
 805d4c8:	460b      	mov	r3, r1
 805d4ca:	2b00      	cmp	r3, #0
 805d4cc:	d146      	bne.n	805d55c <xQueueGenericReset+0xd4>
 805d4ce:	4b2b      	ldr	r3, [pc, #172]	; (805d57c <xQueueGenericReset+0xf4>)
 805d4d0:	4798      	blx	r3
 805d4d2:	68bb      	ldr	r3, [r7, #8]
 805d4d4:	681a      	ldr	r2, [r3, #0]
 805d4d6:	68bb      	ldr	r3, [r7, #8]
 805d4d8:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 805d4da:	68b9      	ldr	r1, [r7, #8]
 805d4dc:	6c09      	ldr	r1, [r1, #64]	; 0x40
 805d4de:	fb01 f303 	mul.w	r3, r1, r3
 805d4e2:	441a      	add	r2, r3
 805d4e4:	68bb      	ldr	r3, [r7, #8]
 805d4e6:	609a      	str	r2, [r3, #8]
 805d4e8:	68bb      	ldr	r3, [r7, #8]
 805d4ea:	2200      	movs	r2, #0
 805d4ec:	639a      	str	r2, [r3, #56]	; 0x38
 805d4ee:	68bb      	ldr	r3, [r7, #8]
 805d4f0:	681a      	ldr	r2, [r3, #0]
 805d4f2:	68bb      	ldr	r3, [r7, #8]
 805d4f4:	605a      	str	r2, [r3, #4]
 805d4f6:	68bb      	ldr	r3, [r7, #8]
 805d4f8:	681a      	ldr	r2, [r3, #0]
 805d4fa:	68bb      	ldr	r3, [r7, #8]
 805d4fc:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 805d4fe:	3b01      	subs	r3, #1
 805d500:	68b9      	ldr	r1, [r7, #8]
 805d502:	6c09      	ldr	r1, [r1, #64]	; 0x40
 805d504:	fb01 f303 	mul.w	r3, r1, r3
 805d508:	441a      	add	r2, r3
 805d50a:	68bb      	ldr	r3, [r7, #8]
 805d50c:	60da      	str	r2, [r3, #12]
 805d50e:	68bb      	ldr	r3, [r7, #8]
 805d510:	22ff      	movs	r2, #255	; 0xff
 805d512:	f883 2044 	strb.w	r2, [r3, #68]	; 0x44
 805d516:	68bb      	ldr	r3, [r7, #8]
 805d518:	22ff      	movs	r2, #255	; 0xff
 805d51a:	f883 2045 	strb.w	r2, [r3, #69]	; 0x45
 805d51e:	683b      	ldr	r3, [r7, #0]
 805d520:	2b00      	cmp	r3, #0
 805d522:	d10e      	bne.n	805d542 <xQueueGenericReset+0xba>
 805d524:	68bb      	ldr	r3, [r7, #8]
 805d526:	691b      	ldr	r3, [r3, #16]
 805d528:	2b00      	cmp	r3, #0
 805d52a:	d014      	beq.n	805d556 <xQueueGenericReset+0xce>
 805d52c:	68bb      	ldr	r3, [r7, #8]
 805d52e:	3310      	adds	r3, #16
 805d530:	4618      	mov	r0, r3
 805d532:	4b13      	ldr	r3, [pc, #76]	; (805d580 <xQueueGenericReset+0xf8>)
 805d534:	4798      	blx	r3
 805d536:	4603      	mov	r3, r0
 805d538:	2b00      	cmp	r3, #0
 805d53a:	d00c      	beq.n	805d556 <xQueueGenericReset+0xce>
 805d53c:	4b11      	ldr	r3, [pc, #68]	; (805d584 <xQueueGenericReset+0xfc>)
 805d53e:	4798      	blx	r3
 805d540:	e009      	b.n	805d556 <xQueueGenericReset+0xce>
 805d542:	68bb      	ldr	r3, [r7, #8]
 805d544:	3310      	adds	r3, #16
 805d546:	4618      	mov	r0, r3
 805d548:	4b0f      	ldr	r3, [pc, #60]	; (805d588 <xQueueGenericReset+0x100>)
 805d54a:	4798      	blx	r3
 805d54c:	68bb      	ldr	r3, [r7, #8]
 805d54e:	3324      	adds	r3, #36	; 0x24
 805d550:	4618      	mov	r0, r3
 805d552:	4b0d      	ldr	r3, [pc, #52]	; (805d588 <xQueueGenericReset+0x100>)
 805d554:	4798      	blx	r3
 805d556:	4b0d      	ldr	r3, [pc, #52]	; (805d58c <xQueueGenericReset+0x104>)
 805d558:	4798      	blx	r3
 805d55a:	e001      	b.n	805d560 <xQueueGenericReset+0xd8>
 805d55c:	2300      	movs	r3, #0
 805d55e:	60fb      	str	r3, [r7, #12]
 805d560:	68fb      	ldr	r3, [r7, #12]
 805d562:	2b00      	cmp	r3, #0
 805d564:	d102      	bne.n	805d56c <xQueueGenericReset+0xe4>
 805d566:	4b04      	ldr	r3, [pc, #16]	; (805d578 <xQueueGenericReset+0xf0>)
 805d568:	4798      	blx	r3
 805d56a:	e7fe      	b.n	805d56a <xQueueGenericReset+0xe2>
 805d56c:	68fb      	ldr	r3, [r7, #12]
 805d56e:	4618      	mov	r0, r3
 805d570:	3710      	adds	r7, #16
 805d572:	46bd      	mov	sp, r7
 805d574:	bd80      	pop	{r7, pc}
 805d576:	bf00      	nop
 805d578:	0805f1c7 	.word	0x0805f1c7
 805d57c:	0805ecc5 	.word	0x0805ecc5
 805d580:	080570f1 	.word	0x080570f1
 805d584:	0805eca5 	.word	0x0805eca5
 805d588:	0805c33d 	.word	0x0805c33d
 805d58c:	0805eced 	.word	0x0805eced

0805d590 <vQueueSetQueueNumber>:
 805d590:	b480      	push	{r7}
 805d592:	b083      	sub	sp, #12
 805d594:	af00      	add	r7, sp, #0
 805d596:	6078      	str	r0, [r7, #4]
 805d598:	6039      	str	r1, [r7, #0]
 805d59a:	687b      	ldr	r3, [r7, #4]
 805d59c:	683a      	ldr	r2, [r7, #0]
 805d59e:	649a      	str	r2, [r3, #72]	; 0x48
 805d5a0:	bf00      	nop
 805d5a2:	370c      	adds	r7, #12
 805d5a4:	46bd      	mov	sp, r7
 805d5a6:	bc80      	pop	{r7}
 805d5a8:	4770      	bx	lr

0805d5aa <uxQueueGetQueueNumber>:
 805d5aa:	b480      	push	{r7}
 805d5ac:	b083      	sub	sp, #12
 805d5ae:	af00      	add	r7, sp, #0
 805d5b0:	6078      	str	r0, [r7, #4]
 805d5b2:	687b      	ldr	r3, [r7, #4]
 805d5b4:	6c9b      	ldr	r3, [r3, #72]	; 0x48
 805d5b6:	4618      	mov	r0, r3
 805d5b8:	370c      	adds	r7, #12
 805d5ba:	46bd      	mov	sp, r7
 805d5bc:	bc80      	pop	{r7}
 805d5be:	4770      	bx	lr

0805d5c0 <ucQueueGetQueueType>:
 805d5c0:	b480      	push	{r7}
 805d5c2:	b083      	sub	sp, #12
 805d5c4:	af00      	add	r7, sp, #0
 805d5c6:	6078      	str	r0, [r7, #4]
 805d5c8:	687b      	ldr	r3, [r7, #4]
 805d5ca:	f893 304c 	ldrb.w	r3, [r3, #76]	; 0x4c
 805d5ce:	4618      	mov	r0, r3
 805d5d0:	370c      	adds	r7, #12
 805d5d2:	46bd      	mov	sp, r7
 805d5d4:	bc80      	pop	{r7}
 805d5d6:	4770      	bx	lr

0805d5d8 <uxQueueGetQueueItemSize>:
 805d5d8:	b480      	push	{r7}
 805d5da:	b083      	sub	sp, #12
 805d5dc:	af00      	add	r7, sp, #0
 805d5de:	6078      	str	r0, [r7, #4]
 805d5e0:	687b      	ldr	r3, [r7, #4]
 805d5e2:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 805d5e4:	4618      	mov	r0, r3
 805d5e6:	370c      	adds	r7, #12
 805d5e8:	46bd      	mov	sp, r7
 805d5ea:	bc80      	pop	{r7}
 805d5ec:	4770      	bx	lr

0805d5ee <uxQueueGetQueueLength>:
 805d5ee:	b480      	push	{r7}
 805d5f0:	b083      	sub	sp, #12
 805d5f2:	af00      	add	r7, sp, #0
 805d5f4:	6078      	str	r0, [r7, #4]
 805d5f6:	687b      	ldr	r3, [r7, #4]
 805d5f8:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 805d5fa:	4618      	mov	r0, r3
 805d5fc:	370c      	adds	r7, #12
 805d5fe:	46bd      	mov	sp, r7
 805d600:	bc80      	pop	{r7}
 805d602:	4770      	bx	lr

0805d604 <prvUnlockQueue>:
 805d604:	b580      	push	{r7, lr}
 805d606:	b084      	sub	sp, #16
 805d608:	af00      	add	r7, sp, #0
 805d60a:	6078      	str	r0, [r7, #4]
 805d60c:	4b26      	ldr	r3, [pc, #152]	; (805d6a8 <prvUnlockQueue+0xa4>)
 805d60e:	4798      	blx	r3
 805d610:	687b      	ldr	r3, [r7, #4]
 805d612:	f893 3045 	ldrb.w	r3, [r3, #69]	; 0x45
 805d616:	73fb      	strb	r3, [r7, #15]
 805d618:	e011      	b.n	805d63e <prvUnlockQueue+0x3a>
 805d61a:	687b      	ldr	r3, [r7, #4]
 805d61c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 805d61e:	2b00      	cmp	r3, #0
 805d620:	d012      	beq.n	805d648 <prvUnlockQueue+0x44>
 805d622:	687b      	ldr	r3, [r7, #4]
 805d624:	3324      	adds	r3, #36	; 0x24
 805d626:	4618      	mov	r0, r3
 805d628:	4b20      	ldr	r3, [pc, #128]	; (805d6ac <prvUnlockQueue+0xa8>)
 805d62a:	4798      	blx	r3
 805d62c:	4603      	mov	r3, r0
 805d62e:	2b00      	cmp	r3, #0
 805d630:	d001      	beq.n	805d636 <prvUnlockQueue+0x32>
 805d632:	4b1f      	ldr	r3, [pc, #124]	; (805d6b0 <prvUnlockQueue+0xac>)
 805d634:	4798      	blx	r3
 805d636:	7bfb      	ldrb	r3, [r7, #15]
 805d638:	3b01      	subs	r3, #1
 805d63a:	b2db      	uxtb	r3, r3
 805d63c:	73fb      	strb	r3, [r7, #15]
 805d63e:	f997 300f 	ldrsb.w	r3, [r7, #15]
 805d642:	2b00      	cmp	r3, #0
 805d644:	dce9      	bgt.n	805d61a <prvUnlockQueue+0x16>
 805d646:	e000      	b.n	805d64a <prvUnlockQueue+0x46>
 805d648:	bf00      	nop
 805d64a:	687b      	ldr	r3, [r7, #4]
 805d64c:	22ff      	movs	r2, #255	; 0xff
 805d64e:	f883 2045 	strb.w	r2, [r3, #69]	; 0x45
 805d652:	4b18      	ldr	r3, [pc, #96]	; (805d6b4 <prvUnlockQueue+0xb0>)
 805d654:	4798      	blx	r3
 805d656:	4b14      	ldr	r3, [pc, #80]	; (805d6a8 <prvUnlockQueue+0xa4>)
 805d658:	4798      	blx	r3
 805d65a:	687b      	ldr	r3, [r7, #4]
 805d65c:	f893 3044 	ldrb.w	r3, [r3, #68]	; 0x44
 805d660:	73bb      	strb	r3, [r7, #14]
 805d662:	e011      	b.n	805d688 <prvUnlockQueue+0x84>
 805d664:	687b      	ldr	r3, [r7, #4]
 805d666:	691b      	ldr	r3, [r3, #16]
 805d668:	2b00      	cmp	r3, #0
 805d66a:	d012      	beq.n	805d692 <prvUnlockQueue+0x8e>
 805d66c:	687b      	ldr	r3, [r7, #4]
 805d66e:	3310      	adds	r3, #16
 805d670:	4618      	mov	r0, r3
 805d672:	4b0e      	ldr	r3, [pc, #56]	; (805d6ac <prvUnlockQueue+0xa8>)
 805d674:	4798      	blx	r3
 805d676:	4603      	mov	r3, r0
 805d678:	2b00      	cmp	r3, #0
 805d67a:	d001      	beq.n	805d680 <prvUnlockQueue+0x7c>
 805d67c:	4b0c      	ldr	r3, [pc, #48]	; (805d6b0 <prvUnlockQueue+0xac>)
 805d67e:	4798      	blx	r3
 805d680:	7bbb      	ldrb	r3, [r7, #14]
 805d682:	3b01      	subs	r3, #1
 805d684:	b2db      	uxtb	r3, r3
 805d686:	73bb      	strb	r3, [r7, #14]
 805d688:	f997 300e 	ldrsb.w	r3, [r7, #14]
 805d68c:	2b00      	cmp	r3, #0
 805d68e:	dce9      	bgt.n	805d664 <prvUnlockQueue+0x60>
 805d690:	e000      	b.n	805d694 <prvUnlockQueue+0x90>
 805d692:	bf00      	nop
 805d694:	687b      	ldr	r3, [r7, #4]
 805d696:	22ff      	movs	r2, #255	; 0xff
 805d698:	f883 2044 	strb.w	r2, [r3, #68]	; 0x44
 805d69c:	4b05      	ldr	r3, [pc, #20]	; (805d6b4 <prvUnlockQueue+0xb0>)
 805d69e:	4798      	blx	r3
 805d6a0:	bf00      	nop
 805d6a2:	3710      	adds	r7, #16
 805d6a4:	46bd      	mov	sp, r7
 805d6a6:	bd80      	pop	{r7, pc}
 805d6a8:	0805ecc5 	.word	0x0805ecc5
 805d6ac:	080570f1 	.word	0x080570f1
 805d6b0:	08057555 	.word	0x08057555
 805d6b4:	0805eced 	.word	0x0805eced

0805d6b8 <prvIsQueueEmpty>:
 805d6b8:	b580      	push	{r7, lr}
 805d6ba:	b084      	sub	sp, #16
 805d6bc:	af00      	add	r7, sp, #0
 805d6be:	6078      	str	r0, [r7, #4]
 805d6c0:	4b08      	ldr	r3, [pc, #32]	; (805d6e4 <prvIsQueueEmpty+0x2c>)
 805d6c2:	4798      	blx	r3
 805d6c4:	687b      	ldr	r3, [r7, #4]
 805d6c6:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 805d6c8:	2b00      	cmp	r3, #0
 805d6ca:	d102      	bne.n	805d6d2 <prvIsQueueEmpty+0x1a>
 805d6cc:	2301      	movs	r3, #1
 805d6ce:	60fb      	str	r3, [r7, #12]
 805d6d0:	e001      	b.n	805d6d6 <prvIsQueueEmpty+0x1e>
 805d6d2:	2300      	movs	r3, #0
 805d6d4:	60fb      	str	r3, [r7, #12]
 805d6d6:	4b04      	ldr	r3, [pc, #16]	; (805d6e8 <prvIsQueueEmpty+0x30>)
 805d6d8:	4798      	blx	r3
 805d6da:	68fb      	ldr	r3, [r7, #12]
 805d6dc:	4618      	mov	r0, r3
 805d6de:	3710      	adds	r7, #16
 805d6e0:	46bd      	mov	sp, r7
 805d6e2:	bd80      	pop	{r7, pc}
 805d6e4:	0805ecc5 	.word	0x0805ecc5
 805d6e8:	0805eced 	.word	0x0805eced

0805d6ec <prvIsQueueFull>:
 805d6ec:	b580      	push	{r7, lr}
 805d6ee:	b084      	sub	sp, #16
 805d6f0:	af00      	add	r7, sp, #0
 805d6f2:	6078      	str	r0, [r7, #4]
 805d6f4:	4b09      	ldr	r3, [pc, #36]	; (805d71c <prvIsQueueFull+0x30>)
 805d6f6:	4798      	blx	r3
 805d6f8:	687b      	ldr	r3, [r7, #4]
 805d6fa:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 805d6fc:	687b      	ldr	r3, [r7, #4]
 805d6fe:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 805d700:	429a      	cmp	r2, r3
 805d702:	d102      	bne.n	805d70a <prvIsQueueFull+0x1e>
 805d704:	2301      	movs	r3, #1
 805d706:	60fb      	str	r3, [r7, #12]
 805d708:	e001      	b.n	805d70e <prvIsQueueFull+0x22>
 805d70a:	2300      	movs	r3, #0
 805d70c:	60fb      	str	r3, [r7, #12]
 805d70e:	4b04      	ldr	r3, [pc, #16]	; (805d720 <prvIsQueueFull+0x34>)
 805d710:	4798      	blx	r3
 805d712:	68fb      	ldr	r3, [r7, #12]
 805d714:	4618      	mov	r0, r3
 805d716:	3710      	adds	r7, #16
 805d718:	46bd      	mov	sp, r7
 805d71a:	bd80      	pop	{r7, pc}
 805d71c:	0805ecc5 	.word	0x0805ecc5
 805d720:	0805eced 	.word	0x0805eced

0805d724 <prvCopyDataToQueue>:
 805d724:	b580      	push	{r7, lr}
 805d726:	b086      	sub	sp, #24
 805d728:	af00      	add	r7, sp, #0
 805d72a:	60f8      	str	r0, [r7, #12]
 805d72c:	60b9      	str	r1, [r7, #8]
 805d72e:	607a      	str	r2, [r7, #4]
 805d730:	2300      	movs	r3, #0
 805d732:	617b      	str	r3, [r7, #20]
 805d734:	68fb      	ldr	r3, [r7, #12]
 805d736:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 805d738:	613b      	str	r3, [r7, #16]
 805d73a:	68fb      	ldr	r3, [r7, #12]
 805d73c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 805d73e:	2b00      	cmp	r3, #0
 805d740:	d10d      	bne.n	805d75e <prvCopyDataToQueue+0x3a>
 805d742:	68fb      	ldr	r3, [r7, #12]
 805d744:	681b      	ldr	r3, [r3, #0]
 805d746:	2b00      	cmp	r3, #0
 805d748:	d14d      	bne.n	805d7e6 <prvCopyDataToQueue+0xc2>
 805d74a:	68fb      	ldr	r3, [r7, #12]
 805d74c:	689b      	ldr	r3, [r3, #8]
 805d74e:	4618      	mov	r0, r3
 805d750:	4b29      	ldr	r3, [pc, #164]	; (805d7f8 <prvCopyDataToQueue+0xd4>)
 805d752:	4798      	blx	r3
 805d754:	6178      	str	r0, [r7, #20]
 805d756:	68fb      	ldr	r3, [r7, #12]
 805d758:	2200      	movs	r2, #0
 805d75a:	609a      	str	r2, [r3, #8]
 805d75c:	e043      	b.n	805d7e6 <prvCopyDataToQueue+0xc2>
 805d75e:	687b      	ldr	r3, [r7, #4]
 805d760:	2b00      	cmp	r3, #0
 805d762:	d119      	bne.n	805d798 <prvCopyDataToQueue+0x74>
 805d764:	68fb      	ldr	r3, [r7, #12]
 805d766:	6858      	ldr	r0, [r3, #4]
 805d768:	68fb      	ldr	r3, [r7, #12]
 805d76a:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 805d76c:	461a      	mov	r2, r3
 805d76e:	68b9      	ldr	r1, [r7, #8]
 805d770:	4b22      	ldr	r3, [pc, #136]	; (805d7fc <prvCopyDataToQueue+0xd8>)
 805d772:	4798      	blx	r3
 805d774:	68fb      	ldr	r3, [r7, #12]
 805d776:	685a      	ldr	r2, [r3, #4]
 805d778:	68fb      	ldr	r3, [r7, #12]
 805d77a:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 805d77c:	441a      	add	r2, r3
 805d77e:	68fb      	ldr	r3, [r7, #12]
 805d780:	605a      	str	r2, [r3, #4]
 805d782:	68fb      	ldr	r3, [r7, #12]
 805d784:	685a      	ldr	r2, [r3, #4]
 805d786:	68fb      	ldr	r3, [r7, #12]
 805d788:	689b      	ldr	r3, [r3, #8]
 805d78a:	429a      	cmp	r2, r3
 805d78c:	d32b      	bcc.n	805d7e6 <prvCopyDataToQueue+0xc2>
 805d78e:	68fb      	ldr	r3, [r7, #12]
 805d790:	681a      	ldr	r2, [r3, #0]
 805d792:	68fb      	ldr	r3, [r7, #12]
 805d794:	605a      	str	r2, [r3, #4]
 805d796:	e026      	b.n	805d7e6 <prvCopyDataToQueue+0xc2>
 805d798:	68fb      	ldr	r3, [r7, #12]
 805d79a:	68d8      	ldr	r0, [r3, #12]
 805d79c:	68fb      	ldr	r3, [r7, #12]
 805d79e:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 805d7a0:	461a      	mov	r2, r3
 805d7a2:	68b9      	ldr	r1, [r7, #8]
 805d7a4:	4b15      	ldr	r3, [pc, #84]	; (805d7fc <prvCopyDataToQueue+0xd8>)
 805d7a6:	4798      	blx	r3
 805d7a8:	68fb      	ldr	r3, [r7, #12]
 805d7aa:	68da      	ldr	r2, [r3, #12]
 805d7ac:	68fb      	ldr	r3, [r7, #12]
 805d7ae:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 805d7b0:	425b      	negs	r3, r3
 805d7b2:	441a      	add	r2, r3
 805d7b4:	68fb      	ldr	r3, [r7, #12]
 805d7b6:	60da      	str	r2, [r3, #12]
 805d7b8:	68fb      	ldr	r3, [r7, #12]
 805d7ba:	68da      	ldr	r2, [r3, #12]
 805d7bc:	68fb      	ldr	r3, [r7, #12]
 805d7be:	681b      	ldr	r3, [r3, #0]
 805d7c0:	429a      	cmp	r2, r3
 805d7c2:	d207      	bcs.n	805d7d4 <prvCopyDataToQueue+0xb0>
 805d7c4:	68fb      	ldr	r3, [r7, #12]
 805d7c6:	689a      	ldr	r2, [r3, #8]
 805d7c8:	68fb      	ldr	r3, [r7, #12]
 805d7ca:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 805d7cc:	425b      	negs	r3, r3
 805d7ce:	441a      	add	r2, r3
 805d7d0:	68fb      	ldr	r3, [r7, #12]
 805d7d2:	60da      	str	r2, [r3, #12]
 805d7d4:	687b      	ldr	r3, [r7, #4]
 805d7d6:	2b02      	cmp	r3, #2
 805d7d8:	d105      	bne.n	805d7e6 <prvCopyDataToQueue+0xc2>
 805d7da:	693b      	ldr	r3, [r7, #16]
 805d7dc:	2b00      	cmp	r3, #0
 805d7de:	d002      	beq.n	805d7e6 <prvCopyDataToQueue+0xc2>
 805d7e0:	693b      	ldr	r3, [r7, #16]
 805d7e2:	3b01      	subs	r3, #1
 805d7e4:	613b      	str	r3, [r7, #16]
 805d7e6:	693b      	ldr	r3, [r7, #16]
 805d7e8:	1c5a      	adds	r2, r3, #1
 805d7ea:	68fb      	ldr	r3, [r7, #12]
 805d7ec:	639a      	str	r2, [r3, #56]	; 0x38
 805d7ee:	697b      	ldr	r3, [r7, #20]
 805d7f0:	4618      	mov	r0, r3
 805d7f2:	3718      	adds	r7, #24
 805d7f4:	46bd      	mov	sp, r7
 805d7f6:	bd80      	pop	{r7, pc}
 805d7f8:	08057701 	.word	0x08057701
 805d7fc:	08060905 	.word	0x08060905

0805d800 <prvCopyDataFromQueue>:
 805d800:	b580      	push	{r7, lr}
 805d802:	b082      	sub	sp, #8
 805d804:	af00      	add	r7, sp, #0
 805d806:	6078      	str	r0, [r7, #4]
 805d808:	6039      	str	r1, [r7, #0]
 805d80a:	687b      	ldr	r3, [r7, #4]
 805d80c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 805d80e:	2b00      	cmp	r3, #0
 805d810:	d018      	beq.n	805d844 <prvCopyDataFromQueue+0x44>
 805d812:	687b      	ldr	r3, [r7, #4]
 805d814:	68da      	ldr	r2, [r3, #12]
 805d816:	687b      	ldr	r3, [r7, #4]
 805d818:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 805d81a:	441a      	add	r2, r3
 805d81c:	687b      	ldr	r3, [r7, #4]
 805d81e:	60da      	str	r2, [r3, #12]
 805d820:	687b      	ldr	r3, [r7, #4]
 805d822:	68da      	ldr	r2, [r3, #12]
 805d824:	687b      	ldr	r3, [r7, #4]
 805d826:	689b      	ldr	r3, [r3, #8]
 805d828:	429a      	cmp	r2, r3
 805d82a:	d303      	bcc.n	805d834 <prvCopyDataFromQueue+0x34>
 805d82c:	687b      	ldr	r3, [r7, #4]
 805d82e:	681a      	ldr	r2, [r3, #0]
 805d830:	687b      	ldr	r3, [r7, #4]
 805d832:	60da      	str	r2, [r3, #12]
 805d834:	687b      	ldr	r3, [r7, #4]
 805d836:	68d9      	ldr	r1, [r3, #12]
 805d838:	687b      	ldr	r3, [r7, #4]
 805d83a:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 805d83c:	461a      	mov	r2, r3
 805d83e:	6838      	ldr	r0, [r7, #0]
 805d840:	4b02      	ldr	r3, [pc, #8]	; (805d84c <prvCopyDataFromQueue+0x4c>)
 805d842:	4798      	blx	r3
 805d844:	bf00      	nop
 805d846:	3708      	adds	r7, #8
 805d848:	46bd      	mov	sp, r7
 805d84a:	bd80      	pop	{r7, pc}
 805d84c:	08060905 	.word	0x08060905

0805d850 <prvInitialiseNewQueue>:
 805d850:	b580      	push	{r7, lr}
 805d852:	b084      	sub	sp, #16
 805d854:	af00      	add	r7, sp, #0
 805d856:	60f8      	str	r0, [r7, #12]
 805d858:	60b9      	str	r1, [r7, #8]
 805d85a:	607a      	str	r2, [r7, #4]
 805d85c:	70fb      	strb	r3, [r7, #3]
 805d85e:	68bb      	ldr	r3, [r7, #8]
 805d860:	2b00      	cmp	r3, #0
 805d862:	d103      	bne.n	805d86c <prvInitialiseNewQueue+0x1c>
 805d864:	69bb      	ldr	r3, [r7, #24]
 805d866:	69ba      	ldr	r2, [r7, #24]
 805d868:	601a      	str	r2, [r3, #0]
 805d86a:	e002      	b.n	805d872 <prvInitialiseNewQueue+0x22>
 805d86c:	69bb      	ldr	r3, [r7, #24]
 805d86e:	687a      	ldr	r2, [r7, #4]
 805d870:	601a      	str	r2, [r3, #0]
 805d872:	69bb      	ldr	r3, [r7, #24]
 805d874:	68fa      	ldr	r2, [r7, #12]
 805d876:	63da      	str	r2, [r3, #60]	; 0x3c
 805d878:	69bb      	ldr	r3, [r7, #24]
 805d87a:	68ba      	ldr	r2, [r7, #8]
 805d87c:	641a      	str	r2, [r3, #64]	; 0x40
 805d87e:	2101      	movs	r1, #1
 805d880:	69b8      	ldr	r0, [r7, #24]
 805d882:	f7ff fe01 	bl	805d488 <xQueueGenericReset>
 805d886:	69bb      	ldr	r3, [r7, #24]
 805d888:	78fa      	ldrb	r2, [r7, #3]
 805d88a:	f883 204c 	strb.w	r2, [r3, #76]	; 0x4c
 805d88e:	bf00      	nop
 805d890:	3710      	adds	r7, #16
 805d892:	46bd      	mov	sp, r7
 805d894:	bd80      	pop	{r7, pc}

0805d896 <prvInitialiseMutex>:
 805d896:	b580      	push	{r7, lr}
 805d898:	b082      	sub	sp, #8
 805d89a:	af00      	add	r7, sp, #0
 805d89c:	6078      	str	r0, [r7, #4]
 805d89e:	687b      	ldr	r3, [r7, #4]
 805d8a0:	2b00      	cmp	r3, #0
 805d8a2:	d00e      	beq.n	805d8c2 <prvInitialiseMutex+0x2c>
 805d8a4:	687b      	ldr	r3, [r7, #4]
 805d8a6:	2200      	movs	r2, #0
 805d8a8:	609a      	str	r2, [r3, #8]
 805d8aa:	687b      	ldr	r3, [r7, #4]
 805d8ac:	2200      	movs	r2, #0
 805d8ae:	601a      	str	r2, [r3, #0]
 805d8b0:	687b      	ldr	r3, [r7, #4]
 805d8b2:	2200      	movs	r2, #0
 805d8b4:	60da      	str	r2, [r3, #12]
 805d8b6:	2300      	movs	r3, #0
 805d8b8:	2200      	movs	r2, #0
 805d8ba:	2100      	movs	r1, #0
 805d8bc:	6878      	ldr	r0, [r7, #4]
 805d8be:	f7fe fded 	bl	805c49c <xQueueGenericSend>
 805d8c2:	bf00      	nop
 805d8c4:	3708      	adds	r7, #8
 805d8c6:	46bd      	mov	sp, r7
 805d8c8:	bd80      	pop	{r7, pc}

0805d8ca <prvGetDisinheritPriorityAfterTimeout>:
 805d8ca:	b480      	push	{r7}
 805d8cc:	b085      	sub	sp, #20
 805d8ce:	af00      	add	r7, sp, #0
 805d8d0:	6078      	str	r0, [r7, #4]
 805d8d2:	687b      	ldr	r3, [r7, #4]
 805d8d4:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 805d8d6:	2b00      	cmp	r3, #0
 805d8d8:	d006      	beq.n	805d8e8 <prvGetDisinheritPriorityAfterTimeout+0x1e>
 805d8da:	687b      	ldr	r3, [r7, #4]
 805d8dc:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 805d8de:	681b      	ldr	r3, [r3, #0]
 805d8e0:	f1c3 0310 	rsb	r3, r3, #16
 805d8e4:	60fb      	str	r3, [r7, #12]
 805d8e6:	e001      	b.n	805d8ec <prvGetDisinheritPriorityAfterTimeout+0x22>
 805d8e8:	2300      	movs	r3, #0
 805d8ea:	60fb      	str	r3, [r7, #12]
 805d8ec:	68fb      	ldr	r3, [r7, #12]
 805d8ee:	4618      	mov	r0, r3
 805d8f0:	3714      	adds	r7, #20
 805d8f2:	46bd      	mov	sp, r7
 805d8f4:	bc80      	pop	{r7}
 805d8f6:	4770      	bx	lr

0805d8f8 <xStreamBufferSend>:
 805d8f8:	b590      	push	{r4, r7, lr}
 805d8fa:	b08f      	sub	sp, #60	; 0x3c
 805d8fc:	af02      	add	r7, sp, #8
 805d8fe:	60f8      	str	r0, [r7, #12]
 805d900:	60b9      	str	r1, [r7, #8]
 805d902:	607a      	str	r2, [r7, #4]
 805d904:	603b      	str	r3, [r7, #0]
 805d906:	68fb      	ldr	r3, [r7, #12]
 805d908:	627b      	str	r3, [r7, #36]	; 0x24
 805d90a:	2300      	movs	r3, #0
 805d90c:	62fb      	str	r3, [r7, #44]	; 0x2c
 805d90e:	687b      	ldr	r3, [r7, #4]
 805d910:	62bb      	str	r3, [r7, #40]	; 0x28
 805d912:	2300      	movs	r3, #0
 805d914:	623b      	str	r3, [r7, #32]
 805d916:	68bb      	ldr	r3, [r7, #8]
 805d918:	2b00      	cmp	r3, #0
 805d91a:	d102      	bne.n	805d922 <xStreamBufferSend+0x2a>
 805d91c:	4b4d      	ldr	r3, [pc, #308]	; (805da54 <xStreamBufferSend+0x15c>)
 805d91e:	4798      	blx	r3
 805d920:	e7fe      	b.n	805d920 <xStreamBufferSend+0x28>
 805d922:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805d924:	2b00      	cmp	r3, #0
 805d926:	d102      	bne.n	805d92e <xStreamBufferSend+0x36>
 805d928:	4b4a      	ldr	r3, [pc, #296]	; (805da54 <xStreamBufferSend+0x15c>)
 805d92a:	4798      	blx	r3
 805d92c:	e7fe      	b.n	805d92c <xStreamBufferSend+0x34>
 805d92e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805d930:	689b      	ldr	r3, [r3, #8]
 805d932:	3b01      	subs	r3, #1
 805d934:	623b      	str	r3, [r7, #32]
 805d936:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805d938:	7f1b      	ldrb	r3, [r3, #28]
 805d93a:	f003 0301 	and.w	r3, r3, #1
 805d93e:	2b00      	cmp	r3, #0
 805d940:	d010      	beq.n	805d964 <xStreamBufferSend+0x6c>
 805d942:	6abb      	ldr	r3, [r7, #40]	; 0x28
 805d944:	3304      	adds	r3, #4
 805d946:	62bb      	str	r3, [r7, #40]	; 0x28
 805d948:	6aba      	ldr	r2, [r7, #40]	; 0x28
 805d94a:	687b      	ldr	r3, [r7, #4]
 805d94c:	429a      	cmp	r2, r3
 805d94e:	d802      	bhi.n	805d956 <xStreamBufferSend+0x5e>
 805d950:	4b40      	ldr	r3, [pc, #256]	; (805da54 <xStreamBufferSend+0x15c>)
 805d952:	4798      	blx	r3
 805d954:	e7fe      	b.n	805d954 <xStreamBufferSend+0x5c>
 805d956:	6aba      	ldr	r2, [r7, #40]	; 0x28
 805d958:	6a3b      	ldr	r3, [r7, #32]
 805d95a:	429a      	cmp	r2, r3
 805d95c:	d908      	bls.n	805d970 <xStreamBufferSend+0x78>
 805d95e:	2300      	movs	r3, #0
 805d960:	603b      	str	r3, [r7, #0]
 805d962:	e005      	b.n	805d970 <xStreamBufferSend+0x78>
 805d964:	6aba      	ldr	r2, [r7, #40]	; 0x28
 805d966:	6a3b      	ldr	r3, [r7, #32]
 805d968:	429a      	cmp	r2, r3
 805d96a:	d901      	bls.n	805d970 <xStreamBufferSend+0x78>
 805d96c:	6a3b      	ldr	r3, [r7, #32]
 805d96e:	62bb      	str	r3, [r7, #40]	; 0x28
 805d970:	683b      	ldr	r3, [r7, #0]
 805d972:	2b00      	cmp	r3, #0
 805d974:	d039      	beq.n	805d9ea <xStreamBufferSend+0xf2>
 805d976:	f107 0314 	add.w	r3, r7, #20
 805d97a:	4618      	mov	r0, r3
 805d97c:	4b36      	ldr	r3, [pc, #216]	; (805da58 <xStreamBufferSend+0x160>)
 805d97e:	4798      	blx	r3
 805d980:	4b36      	ldr	r3, [pc, #216]	; (805da5c <xStreamBufferSend+0x164>)
 805d982:	4798      	blx	r3
 805d984:	6a78      	ldr	r0, [r7, #36]	; 0x24
 805d986:	f000 fa75 	bl	805de74 <xStreamBufferSpacesAvailable>
 805d98a:	62f8      	str	r0, [r7, #44]	; 0x2c
 805d98c:	6afa      	ldr	r2, [r7, #44]	; 0x2c
 805d98e:	6abb      	ldr	r3, [r7, #40]	; 0x28
 805d990:	429a      	cmp	r2, r3
 805d992:	d210      	bcs.n	805d9b6 <xStreamBufferSend+0xbe>
 805d994:	2100      	movs	r1, #0
 805d996:	2000      	movs	r0, #0
 805d998:	4b31      	ldr	r3, [pc, #196]	; (805da60 <xStreamBufferSend+0x168>)
 805d99a:	4798      	blx	r3
 805d99c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805d99e:	695b      	ldr	r3, [r3, #20]
 805d9a0:	2b00      	cmp	r3, #0
 805d9a2:	d002      	beq.n	805d9aa <xStreamBufferSend+0xb2>
 805d9a4:	4b2b      	ldr	r3, [pc, #172]	; (805da54 <xStreamBufferSend+0x15c>)
 805d9a6:	4798      	blx	r3
 805d9a8:	e7fe      	b.n	805d9a8 <xStreamBufferSend+0xb0>
 805d9aa:	4b2e      	ldr	r3, [pc, #184]	; (805da64 <xStreamBufferSend+0x16c>)
 805d9ac:	4798      	blx	r3
 805d9ae:	4602      	mov	r2, r0
 805d9b0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805d9b2:	615a      	str	r2, [r3, #20]
 805d9b4:	e002      	b.n	805d9bc <xStreamBufferSend+0xc4>
 805d9b6:	4b2c      	ldr	r3, [pc, #176]	; (805da68 <xStreamBufferSend+0x170>)
 805d9b8:	4798      	blx	r3
 805d9ba:	e016      	b.n	805d9ea <xStreamBufferSend+0xf2>
 805d9bc:	4b2a      	ldr	r3, [pc, #168]	; (805da68 <xStreamBufferSend+0x170>)
 805d9be:	4798      	blx	r3
 805d9c0:	683b      	ldr	r3, [r7, #0]
 805d9c2:	9300      	str	r3, [sp, #0]
 805d9c4:	2300      	movs	r3, #0
 805d9c6:	2200      	movs	r2, #0
 805d9c8:	2100      	movs	r1, #0
 805d9ca:	2000      	movs	r0, #0
 805d9cc:	4c27      	ldr	r4, [pc, #156]	; (805da6c <xStreamBufferSend+0x174>)
 805d9ce:	47a0      	blx	r4
 805d9d0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805d9d2:	2200      	movs	r2, #0
 805d9d4:	615a      	str	r2, [r3, #20]
 805d9d6:	463a      	mov	r2, r7
 805d9d8:	f107 0314 	add.w	r3, r7, #20
 805d9dc:	4611      	mov	r1, r2
 805d9de:	4618      	mov	r0, r3
 805d9e0:	4b23      	ldr	r3, [pc, #140]	; (805da70 <xStreamBufferSend+0x178>)
 805d9e2:	4798      	blx	r3
 805d9e4:	4603      	mov	r3, r0
 805d9e6:	2b00      	cmp	r3, #0
 805d9e8:	d0ca      	beq.n	805d980 <xStreamBufferSend+0x88>
 805d9ea:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 805d9ec:	2b00      	cmp	r3, #0
 805d9ee:	d103      	bne.n	805d9f8 <xStreamBufferSend+0x100>
 805d9f0:	6a78      	ldr	r0, [r7, #36]	; 0x24
 805d9f2:	f000 fa3f 	bl	805de74 <xStreamBufferSpacesAvailable>
 805d9f6:	62f8      	str	r0, [r7, #44]	; 0x2c
 805d9f8:	6abb      	ldr	r3, [r7, #40]	; 0x28
 805d9fa:	9300      	str	r3, [sp, #0]
 805d9fc:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 805d9fe:	687a      	ldr	r2, [r7, #4]
 805da00:	68b9      	ldr	r1, [r7, #8]
 805da02:	6a78      	ldr	r0, [r7, #36]	; 0x24
 805da04:	f000 fc75 	bl	805e2f2 <prvWriteMessageToBuffer>
 805da08:	61f8      	str	r0, [r7, #28]
 805da0a:	69fb      	ldr	r3, [r7, #28]
 805da0c:	2b00      	cmp	r3, #0
 805da0e:	d01b      	beq.n	805da48 <xStreamBufferSend+0x150>
 805da10:	6a78      	ldr	r0, [r7, #36]	; 0x24
 805da12:	f000 fbb9 	bl	805e188 <prvBytesInBuffer>
 805da16:	4602      	mov	r2, r0
 805da18:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805da1a:	68db      	ldr	r3, [r3, #12]
 805da1c:	429a      	cmp	r2, r3
 805da1e:	d313      	bcc.n	805da48 <xStreamBufferSend+0x150>
 805da20:	4b14      	ldr	r3, [pc, #80]	; (805da74 <xStreamBufferSend+0x17c>)
 805da22:	4798      	blx	r3
 805da24:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805da26:	691b      	ldr	r3, [r3, #16]
 805da28:	2b00      	cmp	r3, #0
 805da2a:	d00b      	beq.n	805da44 <xStreamBufferSend+0x14c>
 805da2c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805da2e:	6918      	ldr	r0, [r3, #16]
 805da30:	2300      	movs	r3, #0
 805da32:	9300      	str	r3, [sp, #0]
 805da34:	2300      	movs	r3, #0
 805da36:	2200      	movs	r2, #0
 805da38:	2100      	movs	r1, #0
 805da3a:	4c0f      	ldr	r4, [pc, #60]	; (805da78 <xStreamBufferSend+0x180>)
 805da3c:	47a0      	blx	r4
 805da3e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805da40:	2200      	movs	r2, #0
 805da42:	611a      	str	r2, [r3, #16]
 805da44:	4b0d      	ldr	r3, [pc, #52]	; (805da7c <xStreamBufferSend+0x184>)
 805da46:	4798      	blx	r3
 805da48:	69fb      	ldr	r3, [r7, #28]
 805da4a:	4618      	mov	r0, r3
 805da4c:	3734      	adds	r7, #52	; 0x34
 805da4e:	46bd      	mov	sp, r7
 805da50:	bd90      	pop	{r4, r7, pc}
 805da52:	bf00      	nop
 805da54:	0805f1c7 	.word	0x0805f1c7
 805da58:	08056bd5 	.word	0x08056bd5
 805da5c:	0805ecc5 	.word	0x0805ecc5
 805da60:	08056ae9 	.word	0x08056ae9
 805da64:	08057539 	.word	0x08057539
 805da68:	0805eced 	.word	0x0805eced
 805da6c:	080566e1 	.word	0x080566e1
 805da70:	08056c1d 	.word	0x08056c1d
 805da74:	08055dbd 	.word	0x08055dbd
 805da78:	080561f5 	.word	0x080561f5
 805da7c:	08055dd9 	.word	0x08055dd9

0805da80 <xStreamBufferSendFromISR>:
 805da80:	b590      	push	{r4, r7, lr}
 805da82:	b08d      	sub	sp, #52	; 0x34
 805da84:	af02      	add	r7, sp, #8
 805da86:	60f8      	str	r0, [r7, #12]
 805da88:	60b9      	str	r1, [r7, #8]
 805da8a:	607a      	str	r2, [r7, #4]
 805da8c:	603b      	str	r3, [r7, #0]
 805da8e:	68fb      	ldr	r3, [r7, #12]
 805da90:	623b      	str	r3, [r7, #32]
 805da92:	687b      	ldr	r3, [r7, #4]
 805da94:	627b      	str	r3, [r7, #36]	; 0x24
 805da96:	68bb      	ldr	r3, [r7, #8]
 805da98:	2b00      	cmp	r3, #0
 805da9a:	d102      	bne.n	805daa2 <xStreamBufferSendFromISR+0x22>
 805da9c:	4b23      	ldr	r3, [pc, #140]	; (805db2c <xStreamBufferSendFromISR+0xac>)
 805da9e:	4798      	blx	r3
 805daa0:	e7fe      	b.n	805daa0 <xStreamBufferSendFromISR+0x20>
 805daa2:	6a3b      	ldr	r3, [r7, #32]
 805daa4:	2b00      	cmp	r3, #0
 805daa6:	d102      	bne.n	805daae <xStreamBufferSendFromISR+0x2e>
 805daa8:	4b20      	ldr	r3, [pc, #128]	; (805db2c <xStreamBufferSendFromISR+0xac>)
 805daaa:	4798      	blx	r3
 805daac:	e7fe      	b.n	805daac <xStreamBufferSendFromISR+0x2c>
 805daae:	6a3b      	ldr	r3, [r7, #32]
 805dab0:	7f1b      	ldrb	r3, [r3, #28]
 805dab2:	f003 0301 	and.w	r3, r3, #1
 805dab6:	2b00      	cmp	r3, #0
 805dab8:	d002      	beq.n	805dac0 <xStreamBufferSendFromISR+0x40>
 805daba:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805dabc:	3304      	adds	r3, #4
 805dabe:	627b      	str	r3, [r7, #36]	; 0x24
 805dac0:	6a38      	ldr	r0, [r7, #32]
 805dac2:	f000 f9d7 	bl	805de74 <xStreamBufferSpacesAvailable>
 805dac6:	61f8      	str	r0, [r7, #28]
 805dac8:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805daca:	9300      	str	r3, [sp, #0]
 805dacc:	69fb      	ldr	r3, [r7, #28]
 805dace:	687a      	ldr	r2, [r7, #4]
 805dad0:	68b9      	ldr	r1, [r7, #8]
 805dad2:	6a38      	ldr	r0, [r7, #32]
 805dad4:	f000 fc0d 	bl	805e2f2 <prvWriteMessageToBuffer>
 805dad8:	61b8      	str	r0, [r7, #24]
 805dada:	69bb      	ldr	r3, [r7, #24]
 805dadc:	2b00      	cmp	r3, #0
 805dade:	d01f      	beq.n	805db20 <xStreamBufferSendFromISR+0xa0>
 805dae0:	6a38      	ldr	r0, [r7, #32]
 805dae2:	f000 fb51 	bl	805e188 <prvBytesInBuffer>
 805dae6:	4602      	mov	r2, r0
 805dae8:	6a3b      	ldr	r3, [r7, #32]
 805daea:	68db      	ldr	r3, [r3, #12]
 805daec:	429a      	cmp	r2, r3
 805daee:	d317      	bcc.n	805db20 <xStreamBufferSendFromISR+0xa0>
 805daf0:	4b0e      	ldr	r3, [pc, #56]	; (805db2c <xStreamBufferSendFromISR+0xac>)
 805daf2:	4798      	blx	r3
 805daf4:	6178      	str	r0, [r7, #20]
 805daf6:	6a3b      	ldr	r3, [r7, #32]
 805daf8:	691b      	ldr	r3, [r3, #16]
 805dafa:	2b00      	cmp	r3, #0
 805dafc:	d00d      	beq.n	805db1a <xStreamBufferSendFromISR+0x9a>
 805dafe:	6a3b      	ldr	r3, [r7, #32]
 805db00:	6918      	ldr	r0, [r3, #16]
 805db02:	683b      	ldr	r3, [r7, #0]
 805db04:	9301      	str	r3, [sp, #4]
 805db06:	2300      	movs	r3, #0
 805db08:	9300      	str	r3, [sp, #0]
 805db0a:	2300      	movs	r3, #0
 805db0c:	2200      	movs	r2, #0
 805db0e:	2100      	movs	r1, #0
 805db10:	4c07      	ldr	r4, [pc, #28]	; (805db30 <xStreamBufferSendFromISR+0xb0>)
 805db12:	47a0      	blx	r4
 805db14:	6a3b      	ldr	r3, [r7, #32]
 805db16:	2200      	movs	r2, #0
 805db18:	611a      	str	r2, [r3, #16]
 805db1a:	6978      	ldr	r0, [r7, #20]
 805db1c:	4b05      	ldr	r3, [pc, #20]	; (805db34 <xStreamBufferSendFromISR+0xb4>)
 805db1e:	4798      	blx	r3
 805db20:	69bb      	ldr	r3, [r7, #24]
 805db22:	4618      	mov	r0, r3
 805db24:	372c      	adds	r7, #44	; 0x2c
 805db26:	46bd      	mov	sp, r7
 805db28:	bd90      	pop	{r4, r7, pc}
 805db2a:	bf00      	nop
 805db2c:	0805f1c7 	.word	0x0805f1c7
 805db30:	08056435 	.word	0x08056435
 805db34:	0805f1e1 	.word	0x0805f1e1

0805db38 <xStreamBufferReceive>:
 805db38:	b590      	push	{r4, r7, lr}
 805db3a:	b08b      	sub	sp, #44	; 0x2c
 805db3c:	af02      	add	r7, sp, #8
 805db3e:	60f8      	str	r0, [r7, #12]
 805db40:	60b9      	str	r1, [r7, #8]
 805db42:	607a      	str	r2, [r7, #4]
 805db44:	603b      	str	r3, [r7, #0]
 805db46:	68fb      	ldr	r3, [r7, #12]
 805db48:	613b      	str	r3, [r7, #16]
 805db4a:	2300      	movs	r3, #0
 805db4c:	61fb      	str	r3, [r7, #28]
 805db4e:	68bb      	ldr	r3, [r7, #8]
 805db50:	2b00      	cmp	r3, #0
 805db52:	d102      	bne.n	805db5a <xStreamBufferReceive+0x22>
 805db54:	4b38      	ldr	r3, [pc, #224]	; (805dc38 <xStreamBufferReceive+0x100>)
 805db56:	4798      	blx	r3
 805db58:	e7fe      	b.n	805db58 <xStreamBufferReceive+0x20>
 805db5a:	693b      	ldr	r3, [r7, #16]
 805db5c:	2b00      	cmp	r3, #0
 805db5e:	d102      	bne.n	805db66 <xStreamBufferReceive+0x2e>
 805db60:	4b35      	ldr	r3, [pc, #212]	; (805dc38 <xStreamBufferReceive+0x100>)
 805db62:	4798      	blx	r3
 805db64:	e7fe      	b.n	805db64 <xStreamBufferReceive+0x2c>
 805db66:	693b      	ldr	r3, [r7, #16]
 805db68:	7f1b      	ldrb	r3, [r3, #28]
 805db6a:	f003 0301 	and.w	r3, r3, #1
 805db6e:	2b00      	cmp	r3, #0
 805db70:	d002      	beq.n	805db78 <xStreamBufferReceive+0x40>
 805db72:	2304      	movs	r3, #4
 805db74:	617b      	str	r3, [r7, #20]
 805db76:	e001      	b.n	805db7c <xStreamBufferReceive+0x44>
 805db78:	2300      	movs	r3, #0
 805db7a:	617b      	str	r3, [r7, #20]
 805db7c:	683b      	ldr	r3, [r7, #0]
 805db7e:	2b00      	cmp	r3, #0
 805db80:	d02f      	beq.n	805dbe2 <xStreamBufferReceive+0xaa>
 805db82:	4b2e      	ldr	r3, [pc, #184]	; (805dc3c <xStreamBufferReceive+0x104>)
 805db84:	4798      	blx	r3
 805db86:	6938      	ldr	r0, [r7, #16]
 805db88:	f000 fafe 	bl	805e188 <prvBytesInBuffer>
 805db8c:	61b8      	str	r0, [r7, #24]
 805db8e:	69ba      	ldr	r2, [r7, #24]
 805db90:	697b      	ldr	r3, [r7, #20]
 805db92:	429a      	cmp	r2, r3
 805db94:	d80f      	bhi.n	805dbb6 <xStreamBufferReceive+0x7e>
 805db96:	2100      	movs	r1, #0
 805db98:	2000      	movs	r0, #0
 805db9a:	4b29      	ldr	r3, [pc, #164]	; (805dc40 <xStreamBufferReceive+0x108>)
 805db9c:	4798      	blx	r3
 805db9e:	693b      	ldr	r3, [r7, #16]
 805dba0:	691b      	ldr	r3, [r3, #16]
 805dba2:	2b00      	cmp	r3, #0
 805dba4:	d002      	beq.n	805dbac <xStreamBufferReceive+0x74>
 805dba6:	4b24      	ldr	r3, [pc, #144]	; (805dc38 <xStreamBufferReceive+0x100>)
 805dba8:	4798      	blx	r3
 805dbaa:	e7fe      	b.n	805dbaa <xStreamBufferReceive+0x72>
 805dbac:	4b25      	ldr	r3, [pc, #148]	; (805dc44 <xStreamBufferReceive+0x10c>)
 805dbae:	4798      	blx	r3
 805dbb0:	4602      	mov	r2, r0
 805dbb2:	693b      	ldr	r3, [r7, #16]
 805dbb4:	611a      	str	r2, [r3, #16]
 805dbb6:	4b24      	ldr	r3, [pc, #144]	; (805dc48 <xStreamBufferReceive+0x110>)
 805dbb8:	4798      	blx	r3
 805dbba:	69ba      	ldr	r2, [r7, #24]
 805dbbc:	697b      	ldr	r3, [r7, #20]
 805dbbe:	429a      	cmp	r2, r3
 805dbc0:	d813      	bhi.n	805dbea <xStreamBufferReceive+0xb2>
 805dbc2:	683b      	ldr	r3, [r7, #0]
 805dbc4:	9300      	str	r3, [sp, #0]
 805dbc6:	2300      	movs	r3, #0
 805dbc8:	2200      	movs	r2, #0
 805dbca:	2100      	movs	r1, #0
 805dbcc:	2000      	movs	r0, #0
 805dbce:	4c1f      	ldr	r4, [pc, #124]	; (805dc4c <xStreamBufferReceive+0x114>)
 805dbd0:	47a0      	blx	r4
 805dbd2:	693b      	ldr	r3, [r7, #16]
 805dbd4:	2200      	movs	r2, #0
 805dbd6:	611a      	str	r2, [r3, #16]
 805dbd8:	6938      	ldr	r0, [r7, #16]
 805dbda:	f000 fad5 	bl	805e188 <prvBytesInBuffer>
 805dbde:	61b8      	str	r0, [r7, #24]
 805dbe0:	e003      	b.n	805dbea <xStreamBufferReceive+0xb2>
 805dbe2:	6938      	ldr	r0, [r7, #16]
 805dbe4:	f000 fad0 	bl	805e188 <prvBytesInBuffer>
 805dbe8:	61b8      	str	r0, [r7, #24]
 805dbea:	69ba      	ldr	r2, [r7, #24]
 805dbec:	697b      	ldr	r3, [r7, #20]
 805dbee:	429a      	cmp	r2, r3
 805dbf0:	d91d      	bls.n	805dc2e <xStreamBufferReceive+0xf6>
 805dbf2:	69bb      	ldr	r3, [r7, #24]
 805dbf4:	687a      	ldr	r2, [r7, #4]
 805dbf6:	68b9      	ldr	r1, [r7, #8]
 805dbf8:	6938      	ldr	r0, [r7, #16]
 805dbfa:	f000 fb3d 	bl	805e278 <prvReadMessageFromBuffer>
 805dbfe:	61f8      	str	r0, [r7, #28]
 805dc00:	69fb      	ldr	r3, [r7, #28]
 805dc02:	2b00      	cmp	r3, #0
 805dc04:	d013      	beq.n	805dc2e <xStreamBufferReceive+0xf6>
 805dc06:	4b12      	ldr	r3, [pc, #72]	; (805dc50 <xStreamBufferReceive+0x118>)
 805dc08:	4798      	blx	r3
 805dc0a:	68fb      	ldr	r3, [r7, #12]
 805dc0c:	695b      	ldr	r3, [r3, #20]
 805dc0e:	2b00      	cmp	r3, #0
 805dc10:	d00b      	beq.n	805dc2a <xStreamBufferReceive+0xf2>
 805dc12:	68fb      	ldr	r3, [r7, #12]
 805dc14:	6958      	ldr	r0, [r3, #20]
 805dc16:	2300      	movs	r3, #0
 805dc18:	9300      	str	r3, [sp, #0]
 805dc1a:	2300      	movs	r3, #0
 805dc1c:	2200      	movs	r2, #0
 805dc1e:	2100      	movs	r1, #0
 805dc20:	4c0c      	ldr	r4, [pc, #48]	; (805dc54 <xStreamBufferReceive+0x11c>)
 805dc22:	47a0      	blx	r4
 805dc24:	68fb      	ldr	r3, [r7, #12]
 805dc26:	2200      	movs	r2, #0
 805dc28:	615a      	str	r2, [r3, #20]
 805dc2a:	4b0b      	ldr	r3, [pc, #44]	; (805dc58 <xStreamBufferReceive+0x120>)
 805dc2c:	4798      	blx	r3
 805dc2e:	69fb      	ldr	r3, [r7, #28]
 805dc30:	4618      	mov	r0, r3
 805dc32:	3724      	adds	r7, #36	; 0x24
 805dc34:	46bd      	mov	sp, r7
 805dc36:	bd90      	pop	{r4, r7, pc}
 805dc38:	0805f1c7 	.word	0x0805f1c7
 805dc3c:	0805ecc5 	.word	0x0805ecc5
 805dc40:	08056ae9 	.word	0x08056ae9
 805dc44:	08057539 	.word	0x08057539
 805dc48:	0805eced 	.word	0x0805eced
 805dc4c:	080566e1 	.word	0x080566e1
 805dc50:	08055dbd 	.word	0x08055dbd
 805dc54:	080561f5 	.word	0x080561f5
 805dc58:	08055dd9 	.word	0x08055dd9

0805dc5c <xStreamBufferReceiveFromISR>:
 805dc5c:	b590      	push	{r4, r7, lr}
 805dc5e:	b08d      	sub	sp, #52	; 0x34
 805dc60:	af02      	add	r7, sp, #8
 805dc62:	60f8      	str	r0, [r7, #12]
 805dc64:	60b9      	str	r1, [r7, #8]
 805dc66:	607a      	str	r2, [r7, #4]
 805dc68:	603b      	str	r3, [r7, #0]
 805dc6a:	68fb      	ldr	r3, [r7, #12]
 805dc6c:	61fb      	str	r3, [r7, #28]
 805dc6e:	2300      	movs	r3, #0
 805dc70:	627b      	str	r3, [r7, #36]	; 0x24
 805dc72:	68bb      	ldr	r3, [r7, #8]
 805dc74:	2b00      	cmp	r3, #0
 805dc76:	d102      	bne.n	805dc7e <xStreamBufferReceiveFromISR+0x22>
 805dc78:	4b21      	ldr	r3, [pc, #132]	; (805dd00 <xStreamBufferReceiveFromISR+0xa4>)
 805dc7a:	4798      	blx	r3
 805dc7c:	e7fe      	b.n	805dc7c <xStreamBufferReceiveFromISR+0x20>
 805dc7e:	69fb      	ldr	r3, [r7, #28]
 805dc80:	2b00      	cmp	r3, #0
 805dc82:	d102      	bne.n	805dc8a <xStreamBufferReceiveFromISR+0x2e>
 805dc84:	4b1e      	ldr	r3, [pc, #120]	; (805dd00 <xStreamBufferReceiveFromISR+0xa4>)
 805dc86:	4798      	blx	r3
 805dc88:	e7fe      	b.n	805dc88 <xStreamBufferReceiveFromISR+0x2c>
 805dc8a:	69fb      	ldr	r3, [r7, #28]
 805dc8c:	7f1b      	ldrb	r3, [r3, #28]
 805dc8e:	f003 0301 	and.w	r3, r3, #1
 805dc92:	2b00      	cmp	r3, #0
 805dc94:	d002      	beq.n	805dc9c <xStreamBufferReceiveFromISR+0x40>
 805dc96:	2304      	movs	r3, #4
 805dc98:	623b      	str	r3, [r7, #32]
 805dc9a:	e001      	b.n	805dca0 <xStreamBufferReceiveFromISR+0x44>
 805dc9c:	2300      	movs	r3, #0
 805dc9e:	623b      	str	r3, [r7, #32]
 805dca0:	69f8      	ldr	r0, [r7, #28]
 805dca2:	f000 fa71 	bl	805e188 <prvBytesInBuffer>
 805dca6:	61b8      	str	r0, [r7, #24]
 805dca8:	69ba      	ldr	r2, [r7, #24]
 805dcaa:	6a3b      	ldr	r3, [r7, #32]
 805dcac:	429a      	cmp	r2, r3
 805dcae:	d921      	bls.n	805dcf4 <xStreamBufferReceiveFromISR+0x98>
 805dcb0:	69bb      	ldr	r3, [r7, #24]
 805dcb2:	687a      	ldr	r2, [r7, #4]
 805dcb4:	68b9      	ldr	r1, [r7, #8]
 805dcb6:	69f8      	ldr	r0, [r7, #28]
 805dcb8:	f000 fade 	bl	805e278 <prvReadMessageFromBuffer>
 805dcbc:	6278      	str	r0, [r7, #36]	; 0x24
 805dcbe:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805dcc0:	2b00      	cmp	r3, #0
 805dcc2:	d017      	beq.n	805dcf4 <xStreamBufferReceiveFromISR+0x98>
 805dcc4:	4b0e      	ldr	r3, [pc, #56]	; (805dd00 <xStreamBufferReceiveFromISR+0xa4>)
 805dcc6:	4798      	blx	r3
 805dcc8:	6178      	str	r0, [r7, #20]
 805dcca:	69fb      	ldr	r3, [r7, #28]
 805dccc:	695b      	ldr	r3, [r3, #20]
 805dcce:	2b00      	cmp	r3, #0
 805dcd0:	d00d      	beq.n	805dcee <xStreamBufferReceiveFromISR+0x92>
 805dcd2:	69fb      	ldr	r3, [r7, #28]
 805dcd4:	6958      	ldr	r0, [r3, #20]
 805dcd6:	683b      	ldr	r3, [r7, #0]
 805dcd8:	9301      	str	r3, [sp, #4]
 805dcda:	2300      	movs	r3, #0
 805dcdc:	9300      	str	r3, [sp, #0]
 805dcde:	2300      	movs	r3, #0
 805dce0:	2200      	movs	r2, #0
 805dce2:	2100      	movs	r1, #0
 805dce4:	4c07      	ldr	r4, [pc, #28]	; (805dd04 <xStreamBufferReceiveFromISR+0xa8>)
 805dce6:	47a0      	blx	r4
 805dce8:	69fb      	ldr	r3, [r7, #28]
 805dcea:	2200      	movs	r2, #0
 805dcec:	615a      	str	r2, [r3, #20]
 805dcee:	6978      	ldr	r0, [r7, #20]
 805dcf0:	4b05      	ldr	r3, [pc, #20]	; (805dd08 <xStreamBufferReceiveFromISR+0xac>)
 805dcf2:	4798      	blx	r3
 805dcf4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805dcf6:	4618      	mov	r0, r3
 805dcf8:	372c      	adds	r7, #44	; 0x2c
 805dcfa:	46bd      	mov	sp, r7
 805dcfc:	bd90      	pop	{r4, r7, pc}
 805dcfe:	bf00      	nop
 805dd00:	0805f1c7 	.word	0x0805f1c7
 805dd04:	08056435 	.word	0x08056435
 805dd08:	0805f1e1 	.word	0x0805f1e1

0805dd0c <vStreamBufferDelete>:
 805dd0c:	b580      	push	{r7, lr}
 805dd0e:	b084      	sub	sp, #16
 805dd10:	af00      	add	r7, sp, #0
 805dd12:	6078      	str	r0, [r7, #4]
 805dd14:	687b      	ldr	r3, [r7, #4]
 805dd16:	60fb      	str	r3, [r7, #12]
 805dd18:	68fb      	ldr	r3, [r7, #12]
 805dd1a:	2b00      	cmp	r3, #0
 805dd1c:	d102      	bne.n	805dd24 <vStreamBufferDelete+0x18>
 805dd1e:	4b0b      	ldr	r3, [pc, #44]	; (805dd4c <vStreamBufferDelete+0x40>)
 805dd20:	4798      	blx	r3
 805dd22:	e7fe      	b.n	805dd22 <vStreamBufferDelete+0x16>
 805dd24:	68fb      	ldr	r3, [r7, #12]
 805dd26:	7f1b      	ldrb	r3, [r3, #28]
 805dd28:	f003 0302 	and.w	r3, r3, #2
 805dd2c:	2b00      	cmp	r3, #0
 805dd2e:	d103      	bne.n	805dd38 <vStreamBufferDelete+0x2c>
 805dd30:	68f8      	ldr	r0, [r7, #12]
 805dd32:	4b07      	ldr	r3, [pc, #28]	; (805dd50 <vStreamBufferDelete+0x44>)
 805dd34:	4798      	blx	r3
 805dd36:	e004      	b.n	805dd42 <vStreamBufferDelete+0x36>
 805dd38:	2224      	movs	r2, #36	; 0x24
 805dd3a:	2100      	movs	r1, #0
 805dd3c:	68f8      	ldr	r0, [r7, #12]
 805dd3e:	4b05      	ldr	r3, [pc, #20]	; (805dd54 <vStreamBufferDelete+0x48>)
 805dd40:	4798      	blx	r3
 805dd42:	bf00      	nop
 805dd44:	3710      	adds	r7, #16
 805dd46:	46bd      	mov	sp, r7
 805dd48:	bd80      	pop	{r7, pc}
 805dd4a:	bf00      	nop
 805dd4c:	0805f1c7 	.word	0x0805f1c7
 805dd50:	0805baa1 	.word	0x0805baa1
 805dd54:	080609f1 	.word	0x080609f1

0805dd58 <xStreamBufferIsFull>:
 805dd58:	b580      	push	{r7, lr}
 805dd5a:	b086      	sub	sp, #24
 805dd5c:	af00      	add	r7, sp, #0
 805dd5e:	6078      	str	r0, [r7, #4]
 805dd60:	687b      	ldr	r3, [r7, #4]
 805dd62:	60fb      	str	r3, [r7, #12]
 805dd64:	68fb      	ldr	r3, [r7, #12]
 805dd66:	2b00      	cmp	r3, #0
 805dd68:	d102      	bne.n	805dd70 <xStreamBufferIsFull+0x18>
 805dd6a:	4b0f      	ldr	r3, [pc, #60]	; (805dda8 <xStreamBufferIsFull+0x50>)
 805dd6c:	4798      	blx	r3
 805dd6e:	e7fe      	b.n	805dd6e <xStreamBufferIsFull+0x16>
 805dd70:	68fb      	ldr	r3, [r7, #12]
 805dd72:	7f1b      	ldrb	r3, [r3, #28]
 805dd74:	f003 0301 	and.w	r3, r3, #1
 805dd78:	2b00      	cmp	r3, #0
 805dd7a:	d002      	beq.n	805dd82 <xStreamBufferIsFull+0x2a>
 805dd7c:	2304      	movs	r3, #4
 805dd7e:	613b      	str	r3, [r7, #16]
 805dd80:	e001      	b.n	805dd86 <xStreamBufferIsFull+0x2e>
 805dd82:	2300      	movs	r3, #0
 805dd84:	613b      	str	r3, [r7, #16]
 805dd86:	6878      	ldr	r0, [r7, #4]
 805dd88:	f000 f874 	bl	805de74 <xStreamBufferSpacesAvailable>
 805dd8c:	4602      	mov	r2, r0
 805dd8e:	693b      	ldr	r3, [r7, #16]
 805dd90:	4293      	cmp	r3, r2
 805dd92:	d302      	bcc.n	805dd9a <xStreamBufferIsFull+0x42>
 805dd94:	2301      	movs	r3, #1
 805dd96:	617b      	str	r3, [r7, #20]
 805dd98:	e001      	b.n	805dd9e <xStreamBufferIsFull+0x46>
 805dd9a:	2300      	movs	r3, #0
 805dd9c:	617b      	str	r3, [r7, #20]
 805dd9e:	697b      	ldr	r3, [r7, #20]
 805dda0:	4618      	mov	r0, r3
 805dda2:	3718      	adds	r7, #24
 805dda4:	46bd      	mov	sp, r7
 805dda6:	bd80      	pop	{r7, pc}
 805dda8:	0805f1c7 	.word	0x0805f1c7

0805ddac <xStreamBufferIsEmpty>:
 805ddac:	b580      	push	{r7, lr}
 805ddae:	b086      	sub	sp, #24
 805ddb0:	af00      	add	r7, sp, #0
 805ddb2:	6078      	str	r0, [r7, #4]
 805ddb4:	687b      	ldr	r3, [r7, #4]
 805ddb6:	613b      	str	r3, [r7, #16]
 805ddb8:	693b      	ldr	r3, [r7, #16]
 805ddba:	2b00      	cmp	r3, #0
 805ddbc:	d102      	bne.n	805ddc4 <xStreamBufferIsEmpty+0x18>
 805ddbe:	4b0a      	ldr	r3, [pc, #40]	; (805dde8 <xStreamBufferIsEmpty+0x3c>)
 805ddc0:	4798      	blx	r3
 805ddc2:	e7fe      	b.n	805ddc2 <xStreamBufferIsEmpty+0x16>
 805ddc4:	693b      	ldr	r3, [r7, #16]
 805ddc6:	681b      	ldr	r3, [r3, #0]
 805ddc8:	60fb      	str	r3, [r7, #12]
 805ddca:	693b      	ldr	r3, [r7, #16]
 805ddcc:	685b      	ldr	r3, [r3, #4]
 805ddce:	68fa      	ldr	r2, [r7, #12]
 805ddd0:	429a      	cmp	r2, r3
 805ddd2:	d102      	bne.n	805ddda <xStreamBufferIsEmpty+0x2e>
 805ddd4:	2301      	movs	r3, #1
 805ddd6:	617b      	str	r3, [r7, #20]
 805ddd8:	e001      	b.n	805ddde <xStreamBufferIsEmpty+0x32>
 805ddda:	2300      	movs	r3, #0
 805dddc:	617b      	str	r3, [r7, #20]
 805ddde:	697b      	ldr	r3, [r7, #20]
 805dde0:	4618      	mov	r0, r3
 805dde2:	3718      	adds	r7, #24
 805dde4:	46bd      	mov	sp, r7
 805dde6:	bd80      	pop	{r7, pc}
 805dde8:	0805f1c7 	.word	0x0805f1c7

0805ddec <xStreamBufferReset>:
 805ddec:	b590      	push	{r4, r7, lr}
 805ddee:	b08d      	sub	sp, #52	; 0x34
 805ddf0:	af04      	add	r7, sp, #16
 805ddf2:	6078      	str	r0, [r7, #4]
 805ddf4:	687b      	ldr	r3, [r7, #4]
 805ddf6:	61bb      	str	r3, [r7, #24]
 805ddf8:	2300      	movs	r3, #0
 805ddfa:	61fb      	str	r3, [r7, #28]
 805ddfc:	2300      	movs	r3, #0
 805ddfe:	617b      	str	r3, [r7, #20]
 805de00:	2300      	movs	r3, #0
 805de02:	613b      	str	r3, [r7, #16]
 805de04:	69bb      	ldr	r3, [r7, #24]
 805de06:	2b00      	cmp	r3, #0
 805de08:	d102      	bne.n	805de10 <xStreamBufferReset+0x24>
 805de0a:	4b17      	ldr	r3, [pc, #92]	; (805de68 <xStreamBufferReset+0x7c>)
 805de0c:	4798      	blx	r3
 805de0e:	e7fe      	b.n	805de0e <xStreamBufferReset+0x22>
 805de10:	69bb      	ldr	r3, [r7, #24]
 805de12:	6a1b      	ldr	r3, [r3, #32]
 805de14:	60fb      	str	r3, [r7, #12]
 805de16:	4b15      	ldr	r3, [pc, #84]	; (805de6c <xStreamBufferReset+0x80>)
 805de18:	4798      	blx	r3
 805de1a:	69bb      	ldr	r3, [r7, #24]
 805de1c:	691b      	ldr	r3, [r3, #16]
 805de1e:	2b00      	cmp	r3, #0
 805de20:	d11a      	bne.n	805de58 <xStreamBufferReset+0x6c>
 805de22:	69bb      	ldr	r3, [r7, #24]
 805de24:	695b      	ldr	r3, [r3, #20]
 805de26:	2b00      	cmp	r3, #0
 805de28:	d116      	bne.n	805de58 <xStreamBufferReset+0x6c>
 805de2a:	69bb      	ldr	r3, [r7, #24]
 805de2c:	6999      	ldr	r1, [r3, #24]
 805de2e:	69bb      	ldr	r3, [r7, #24]
 805de30:	6898      	ldr	r0, [r3, #8]
 805de32:	69bb      	ldr	r3, [r7, #24]
 805de34:	68dc      	ldr	r4, [r3, #12]
 805de36:	69bb      	ldr	r3, [r7, #24]
 805de38:	7f1b      	ldrb	r3, [r3, #28]
 805de3a:	693a      	ldr	r2, [r7, #16]
 805de3c:	9202      	str	r2, [sp, #8]
 805de3e:	697a      	ldr	r2, [r7, #20]
 805de40:	9201      	str	r2, [sp, #4]
 805de42:	9300      	str	r3, [sp, #0]
 805de44:	4623      	mov	r3, r4
 805de46:	4602      	mov	r2, r0
 805de48:	69b8      	ldr	r0, [r7, #24]
 805de4a:	f000 faeb 	bl	805e424 <prvInitialiseNewStreamBuffer>
 805de4e:	69bb      	ldr	r3, [r7, #24]
 805de50:	68fa      	ldr	r2, [r7, #12]
 805de52:	621a      	str	r2, [r3, #32]
 805de54:	2301      	movs	r3, #1
 805de56:	61fb      	str	r3, [r7, #28]
 805de58:	4b05      	ldr	r3, [pc, #20]	; (805de70 <xStreamBufferReset+0x84>)
 805de5a:	4798      	blx	r3
 805de5c:	69fb      	ldr	r3, [r7, #28]
 805de5e:	4618      	mov	r0, r3
 805de60:	3724      	adds	r7, #36	; 0x24
 805de62:	46bd      	mov	sp, r7
 805de64:	bd90      	pop	{r4, r7, pc}
 805de66:	bf00      	nop
 805de68:	0805f1c7 	.word	0x0805f1c7
 805de6c:	0805ecc5 	.word	0x0805ecc5
 805de70:	0805eced 	.word	0x0805eced

0805de74 <xStreamBufferSpacesAvailable>:
 805de74:	b580      	push	{r7, lr}
 805de76:	b086      	sub	sp, #24
 805de78:	af00      	add	r7, sp, #0
 805de7a:	6078      	str	r0, [r7, #4]
 805de7c:	687b      	ldr	r3, [r7, #4]
 805de7e:	613b      	str	r3, [r7, #16]
 805de80:	693b      	ldr	r3, [r7, #16]
 805de82:	2b00      	cmp	r3, #0
 805de84:	d102      	bne.n	805de8c <xStreamBufferSpacesAvailable+0x18>
 805de86:	4b14      	ldr	r3, [pc, #80]	; (805ded8 <xStreamBufferSpacesAvailable+0x64>)
 805de88:	4798      	blx	r3
 805de8a:	e7fe      	b.n	805de8a <xStreamBufferSpacesAvailable+0x16>
 805de8c:	693b      	ldr	r3, [r7, #16]
 805de8e:	681b      	ldr	r3, [r3, #0]
 805de90:	60fb      	str	r3, [r7, #12]
 805de92:	693b      	ldr	r3, [r7, #16]
 805de94:	689a      	ldr	r2, [r3, #8]
 805de96:	693b      	ldr	r3, [r7, #16]
 805de98:	681b      	ldr	r3, [r3, #0]
 805de9a:	4413      	add	r3, r2
 805de9c:	617b      	str	r3, [r7, #20]
 805de9e:	693b      	ldr	r3, [r7, #16]
 805dea0:	685b      	ldr	r3, [r3, #4]
 805dea2:	697a      	ldr	r2, [r7, #20]
 805dea4:	1ad3      	subs	r3, r2, r3
 805dea6:	617b      	str	r3, [r7, #20]
 805dea8:	693b      	ldr	r3, [r7, #16]
 805deaa:	681b      	ldr	r3, [r3, #0]
 805deac:	68fa      	ldr	r2, [r7, #12]
 805deae:	429a      	cmp	r2, r3
 805deb0:	d1ec      	bne.n	805de8c <xStreamBufferSpacesAvailable+0x18>
 805deb2:	697b      	ldr	r3, [r7, #20]
 805deb4:	3b01      	subs	r3, #1
 805deb6:	617b      	str	r3, [r7, #20]
 805deb8:	693b      	ldr	r3, [r7, #16]
 805deba:	689b      	ldr	r3, [r3, #8]
 805debc:	697a      	ldr	r2, [r7, #20]
 805debe:	429a      	cmp	r2, r3
 805dec0:	d304      	bcc.n	805decc <xStreamBufferSpacesAvailable+0x58>
 805dec2:	693b      	ldr	r3, [r7, #16]
 805dec4:	689b      	ldr	r3, [r3, #8]
 805dec6:	697a      	ldr	r2, [r7, #20]
 805dec8:	1ad3      	subs	r3, r2, r3
 805deca:	617b      	str	r3, [r7, #20]
 805decc:	697b      	ldr	r3, [r7, #20]
 805dece:	4618      	mov	r0, r3
 805ded0:	3718      	adds	r7, #24
 805ded2:	46bd      	mov	sp, r7
 805ded4:	bd80      	pop	{r7, pc}
 805ded6:	bf00      	nop
 805ded8:	0805f1c7 	.word	0x0805f1c7

0805dedc <xStreamBufferBytesAvailable>:
 805dedc:	b580      	push	{r7, lr}
 805dede:	b084      	sub	sp, #16
 805dee0:	af00      	add	r7, sp, #0
 805dee2:	6078      	str	r0, [r7, #4]
 805dee4:	687b      	ldr	r3, [r7, #4]
 805dee6:	60fb      	str	r3, [r7, #12]
 805dee8:	68fb      	ldr	r3, [r7, #12]
 805deea:	2b00      	cmp	r3, #0
 805deec:	d102      	bne.n	805def4 <xStreamBufferBytesAvailable+0x18>
 805deee:	4b06      	ldr	r3, [pc, #24]	; (805df08 <xStreamBufferBytesAvailable+0x2c>)
 805def0:	4798      	blx	r3
 805def2:	e7fe      	b.n	805def2 <xStreamBufferBytesAvailable+0x16>
 805def4:	68f8      	ldr	r0, [r7, #12]
 805def6:	f000 f947 	bl	805e188 <prvBytesInBuffer>
 805defa:	60b8      	str	r0, [r7, #8]
 805defc:	68bb      	ldr	r3, [r7, #8]
 805defe:	4618      	mov	r0, r3
 805df00:	3710      	adds	r7, #16
 805df02:	46bd      	mov	sp, r7
 805df04:	bd80      	pop	{r7, pc}
 805df06:	bf00      	nop
 805df08:	0805f1c7 	.word	0x0805f1c7

0805df0c <xStreamBufferSetTriggerLevel>:
 805df0c:	b580      	push	{r7, lr}
 805df0e:	b084      	sub	sp, #16
 805df10:	af00      	add	r7, sp, #0
 805df12:	6078      	str	r0, [r7, #4]
 805df14:	6039      	str	r1, [r7, #0]
 805df16:	687b      	ldr	r3, [r7, #4]
 805df18:	60bb      	str	r3, [r7, #8]
 805df1a:	68bb      	ldr	r3, [r7, #8]
 805df1c:	2b00      	cmp	r3, #0
 805df1e:	d102      	bne.n	805df26 <xStreamBufferSetTriggerLevel+0x1a>
 805df20:	4b0c      	ldr	r3, [pc, #48]	; (805df54 <xStreamBufferSetTriggerLevel+0x48>)
 805df22:	4798      	blx	r3
 805df24:	e7fe      	b.n	805df24 <xStreamBufferSetTriggerLevel+0x18>
 805df26:	683b      	ldr	r3, [r7, #0]
 805df28:	2b00      	cmp	r3, #0
 805df2a:	d101      	bne.n	805df30 <xStreamBufferSetTriggerLevel+0x24>
 805df2c:	2301      	movs	r3, #1
 805df2e:	603b      	str	r3, [r7, #0]
 805df30:	68bb      	ldr	r3, [r7, #8]
 805df32:	689b      	ldr	r3, [r3, #8]
 805df34:	683a      	ldr	r2, [r7, #0]
 805df36:	429a      	cmp	r2, r3
 805df38:	d205      	bcs.n	805df46 <xStreamBufferSetTriggerLevel+0x3a>
 805df3a:	68bb      	ldr	r3, [r7, #8]
 805df3c:	683a      	ldr	r2, [r7, #0]
 805df3e:	60da      	str	r2, [r3, #12]
 805df40:	2301      	movs	r3, #1
 805df42:	60fb      	str	r3, [r7, #12]
 805df44:	e001      	b.n	805df4a <xStreamBufferSetTriggerLevel+0x3e>
 805df46:	2300      	movs	r3, #0
 805df48:	60fb      	str	r3, [r7, #12]
 805df4a:	68fb      	ldr	r3, [r7, #12]
 805df4c:	4618      	mov	r0, r3
 805df4e:	3710      	adds	r7, #16
 805df50:	46bd      	mov	sp, r7
 805df52:	bd80      	pop	{r7, pc}
 805df54:	0805f1c7 	.word	0x0805f1c7

0805df58 <xStreamBufferSendCompletedFromISR>:
 805df58:	b590      	push	{r4, r7, lr}
 805df5a:	b089      	sub	sp, #36	; 0x24
 805df5c:	af02      	add	r7, sp, #8
 805df5e:	6078      	str	r0, [r7, #4]
 805df60:	6039      	str	r1, [r7, #0]
 805df62:	687b      	ldr	r3, [r7, #4]
 805df64:	613b      	str	r3, [r7, #16]
 805df66:	693b      	ldr	r3, [r7, #16]
 805df68:	2b00      	cmp	r3, #0
 805df6a:	d102      	bne.n	805df72 <xStreamBufferSendCompletedFromISR+0x1a>
 805df6c:	4b12      	ldr	r3, [pc, #72]	; (805dfb8 <xStreamBufferSendCompletedFromISR+0x60>)
 805df6e:	4798      	blx	r3
 805df70:	e7fe      	b.n	805df70 <xStreamBufferSendCompletedFromISR+0x18>
 805df72:	4b11      	ldr	r3, [pc, #68]	; (805dfb8 <xStreamBufferSendCompletedFromISR+0x60>)
 805df74:	4798      	blx	r3
 805df76:	60f8      	str	r0, [r7, #12]
 805df78:	693b      	ldr	r3, [r7, #16]
 805df7a:	691b      	ldr	r3, [r3, #16]
 805df7c:	2b00      	cmp	r3, #0
 805df7e:	d010      	beq.n	805dfa2 <xStreamBufferSendCompletedFromISR+0x4a>
 805df80:	693b      	ldr	r3, [r7, #16]
 805df82:	6918      	ldr	r0, [r3, #16]
 805df84:	683b      	ldr	r3, [r7, #0]
 805df86:	9301      	str	r3, [sp, #4]
 805df88:	2300      	movs	r3, #0
 805df8a:	9300      	str	r3, [sp, #0]
 805df8c:	2300      	movs	r3, #0
 805df8e:	2200      	movs	r2, #0
 805df90:	2100      	movs	r1, #0
 805df92:	4c0a      	ldr	r4, [pc, #40]	; (805dfbc <xStreamBufferSendCompletedFromISR+0x64>)
 805df94:	47a0      	blx	r4
 805df96:	693b      	ldr	r3, [r7, #16]
 805df98:	2200      	movs	r2, #0
 805df9a:	611a      	str	r2, [r3, #16]
 805df9c:	2301      	movs	r3, #1
 805df9e:	617b      	str	r3, [r7, #20]
 805dfa0:	e001      	b.n	805dfa6 <xStreamBufferSendCompletedFromISR+0x4e>
 805dfa2:	2300      	movs	r3, #0
 805dfa4:	617b      	str	r3, [r7, #20]
 805dfa6:	68f8      	ldr	r0, [r7, #12]
 805dfa8:	4b05      	ldr	r3, [pc, #20]	; (805dfc0 <xStreamBufferSendCompletedFromISR+0x68>)
 805dfaa:	4798      	blx	r3
 805dfac:	697b      	ldr	r3, [r7, #20]
 805dfae:	4618      	mov	r0, r3
 805dfb0:	371c      	adds	r7, #28
 805dfb2:	46bd      	mov	sp, r7
 805dfb4:	bd90      	pop	{r4, r7, pc}
 805dfb6:	bf00      	nop
 805dfb8:	0805f1c7 	.word	0x0805f1c7
 805dfbc:	08056435 	.word	0x08056435
 805dfc0:	0805f1e1 	.word	0x0805f1e1

0805dfc4 <xStreamBufferReceiveCompletedFromISR>:
 805dfc4:	b590      	push	{r4, r7, lr}
 805dfc6:	b089      	sub	sp, #36	; 0x24
 805dfc8:	af02      	add	r7, sp, #8
 805dfca:	6078      	str	r0, [r7, #4]
 805dfcc:	6039      	str	r1, [r7, #0]
 805dfce:	687b      	ldr	r3, [r7, #4]
 805dfd0:	613b      	str	r3, [r7, #16]
 805dfd2:	693b      	ldr	r3, [r7, #16]
 805dfd4:	2b00      	cmp	r3, #0
 805dfd6:	d102      	bne.n	805dfde <xStreamBufferReceiveCompletedFromISR+0x1a>
 805dfd8:	4b12      	ldr	r3, [pc, #72]	; (805e024 <xStreamBufferReceiveCompletedFromISR+0x60>)
 805dfda:	4798      	blx	r3
 805dfdc:	e7fe      	b.n	805dfdc <xStreamBufferReceiveCompletedFromISR+0x18>
 805dfde:	4b11      	ldr	r3, [pc, #68]	; (805e024 <xStreamBufferReceiveCompletedFromISR+0x60>)
 805dfe0:	4798      	blx	r3
 805dfe2:	60f8      	str	r0, [r7, #12]
 805dfe4:	693b      	ldr	r3, [r7, #16]
 805dfe6:	695b      	ldr	r3, [r3, #20]
 805dfe8:	2b00      	cmp	r3, #0
 805dfea:	d010      	beq.n	805e00e <xStreamBufferReceiveCompletedFromISR+0x4a>
 805dfec:	693b      	ldr	r3, [r7, #16]
 805dfee:	6958      	ldr	r0, [r3, #20]
 805dff0:	683b      	ldr	r3, [r7, #0]
 805dff2:	9301      	str	r3, [sp, #4]
 805dff4:	2300      	movs	r3, #0
 805dff6:	9300      	str	r3, [sp, #0]
 805dff8:	2300      	movs	r3, #0
 805dffa:	2200      	movs	r2, #0
 805dffc:	2100      	movs	r1, #0
 805dffe:	4c0a      	ldr	r4, [pc, #40]	; (805e028 <xStreamBufferReceiveCompletedFromISR+0x64>)
 805e000:	47a0      	blx	r4
 805e002:	693b      	ldr	r3, [r7, #16]
 805e004:	2200      	movs	r2, #0
 805e006:	615a      	str	r2, [r3, #20]
 805e008:	2301      	movs	r3, #1
 805e00a:	617b      	str	r3, [r7, #20]
 805e00c:	e001      	b.n	805e012 <xStreamBufferReceiveCompletedFromISR+0x4e>
 805e00e:	2300      	movs	r3, #0
 805e010:	617b      	str	r3, [r7, #20]
 805e012:	68f8      	ldr	r0, [r7, #12]
 805e014:	4b05      	ldr	r3, [pc, #20]	; (805e02c <xStreamBufferReceiveCompletedFromISR+0x68>)
 805e016:	4798      	blx	r3
 805e018:	697b      	ldr	r3, [r7, #20]
 805e01a:	4618      	mov	r0, r3
 805e01c:	371c      	adds	r7, #28
 805e01e:	46bd      	mov	sp, r7
 805e020:	bd90      	pop	{r4, r7, pc}
 805e022:	bf00      	nop
 805e024:	0805f1c7 	.word	0x0805f1c7
 805e028:	08056435 	.word	0x08056435
 805e02c:	0805f1e1 	.word	0x0805f1e1

0805e030 <xStreamBufferGenericCreate>:
 805e030:	b580      	push	{r7, lr}
 805e032:	b08a      	sub	sp, #40	; 0x28
 805e034:	af04      	add	r7, sp, #16
 805e036:	60f8      	str	r0, [r7, #12]
 805e038:	60b9      	str	r1, [r7, #8]
 805e03a:	607a      	str	r2, [r7, #4]
 805e03c:	603b      	str	r3, [r7, #0]
 805e03e:	687b      	ldr	r3, [r7, #4]
 805e040:	2b01      	cmp	r3, #1
 805e042:	d107      	bne.n	805e054 <xStreamBufferGenericCreate+0x24>
 805e044:	2301      	movs	r3, #1
 805e046:	74fb      	strb	r3, [r7, #19]
 805e048:	68fb      	ldr	r3, [r7, #12]
 805e04a:	2b04      	cmp	r3, #4
 805e04c:	d80a      	bhi.n	805e064 <xStreamBufferGenericCreate+0x34>
 805e04e:	4b1e      	ldr	r3, [pc, #120]	; (805e0c8 <xStreamBufferGenericCreate+0x98>)
 805e050:	4798      	blx	r3
 805e052:	e7fe      	b.n	805e052 <xStreamBufferGenericCreate+0x22>
 805e054:	2300      	movs	r3, #0
 805e056:	74fb      	strb	r3, [r7, #19]
 805e058:	68fb      	ldr	r3, [r7, #12]
 805e05a:	2b00      	cmp	r3, #0
 805e05c:	d102      	bne.n	805e064 <xStreamBufferGenericCreate+0x34>
 805e05e:	4b1a      	ldr	r3, [pc, #104]	; (805e0c8 <xStreamBufferGenericCreate+0x98>)
 805e060:	4798      	blx	r3
 805e062:	e7fe      	b.n	805e062 <xStreamBufferGenericCreate+0x32>
 805e064:	68ba      	ldr	r2, [r7, #8]
 805e066:	68fb      	ldr	r3, [r7, #12]
 805e068:	429a      	cmp	r2, r3
 805e06a:	d902      	bls.n	805e072 <xStreamBufferGenericCreate+0x42>
 805e06c:	4b16      	ldr	r3, [pc, #88]	; (805e0c8 <xStreamBufferGenericCreate+0x98>)
 805e06e:	4798      	blx	r3
 805e070:	e7fe      	b.n	805e070 <xStreamBufferGenericCreate+0x40>
 805e072:	68bb      	ldr	r3, [r7, #8]
 805e074:	2b00      	cmp	r3, #0
 805e076:	d101      	bne.n	805e07c <xStreamBufferGenericCreate+0x4c>
 805e078:	2301      	movs	r3, #1
 805e07a:	60bb      	str	r3, [r7, #8]
 805e07c:	68fb      	ldr	r3, [r7, #12]
 805e07e:	f113 0f26 	cmn.w	r3, #38	; 0x26
 805e082:	d809      	bhi.n	805e098 <xStreamBufferGenericCreate+0x68>
 805e084:	68fb      	ldr	r3, [r7, #12]
 805e086:	3301      	adds	r3, #1
 805e088:	60fb      	str	r3, [r7, #12]
 805e08a:	68fb      	ldr	r3, [r7, #12]
 805e08c:	3324      	adds	r3, #36	; 0x24
 805e08e:	4618      	mov	r0, r3
 805e090:	4b0e      	ldr	r3, [pc, #56]	; (805e0cc <xStreamBufferGenericCreate+0x9c>)
 805e092:	4798      	blx	r3
 805e094:	6178      	str	r0, [r7, #20]
 805e096:	e001      	b.n	805e09c <xStreamBufferGenericCreate+0x6c>
 805e098:	2300      	movs	r3, #0
 805e09a:	617b      	str	r3, [r7, #20]
 805e09c:	697b      	ldr	r3, [r7, #20]
 805e09e:	2b00      	cmp	r3, #0
 805e0a0:	d00d      	beq.n	805e0be <xStreamBufferGenericCreate+0x8e>
 805e0a2:	697b      	ldr	r3, [r7, #20]
 805e0a4:	f103 0124 	add.w	r1, r3, #36	; 0x24
 805e0a8:	6a3b      	ldr	r3, [r7, #32]
 805e0aa:	9302      	str	r3, [sp, #8]
 805e0ac:	683b      	ldr	r3, [r7, #0]
 805e0ae:	9301      	str	r3, [sp, #4]
 805e0b0:	7cfb      	ldrb	r3, [r7, #19]
 805e0b2:	9300      	str	r3, [sp, #0]
 805e0b4:	68bb      	ldr	r3, [r7, #8]
 805e0b6:	68fa      	ldr	r2, [r7, #12]
 805e0b8:	6978      	ldr	r0, [r7, #20]
 805e0ba:	f000 f9b3 	bl	805e424 <prvInitialiseNewStreamBuffer>
 805e0be:	697b      	ldr	r3, [r7, #20]
 805e0c0:	4618      	mov	r0, r3
 805e0c2:	3718      	adds	r7, #24
 805e0c4:	46bd      	mov	sp, r7
 805e0c6:	bd80      	pop	{r7, pc}
 805e0c8:	0805f1c7 	.word	0x0805f1c7
 805e0cc:	0805b839 	.word	0x0805b839

0805e0d0 <xStreamBufferNextMessageLengthBytes>:
 805e0d0:	b580      	push	{r7, lr}
 805e0d2:	b086      	sub	sp, #24
 805e0d4:	af00      	add	r7, sp, #0
 805e0d6:	6078      	str	r0, [r7, #4]
 805e0d8:	687b      	ldr	r3, [r7, #4]
 805e0da:	613b      	str	r3, [r7, #16]
 805e0dc:	693b      	ldr	r3, [r7, #16]
 805e0de:	2b00      	cmp	r3, #0
 805e0e0:	d102      	bne.n	805e0e8 <xStreamBufferNextMessageLengthBytes+0x18>
 805e0e2:	4b15      	ldr	r3, [pc, #84]	; (805e138 <xStreamBufferNextMessageLengthBytes+0x68>)
 805e0e4:	4798      	blx	r3
 805e0e6:	e7fe      	b.n	805e0e6 <xStreamBufferNextMessageLengthBytes+0x16>
 805e0e8:	693b      	ldr	r3, [r7, #16]
 805e0ea:	7f1b      	ldrb	r3, [r3, #28]
 805e0ec:	f003 0301 	and.w	r3, r3, #1
 805e0f0:	2b00      	cmp	r3, #0
 805e0f2:	d01a      	beq.n	805e12a <xStreamBufferNextMessageLengthBytes+0x5a>
 805e0f4:	6938      	ldr	r0, [r7, #16]
 805e0f6:	f000 f847 	bl	805e188 <prvBytesInBuffer>
 805e0fa:	60f8      	str	r0, [r7, #12]
 805e0fc:	68fb      	ldr	r3, [r7, #12]
 805e0fe:	2b04      	cmp	r3, #4
 805e100:	d90a      	bls.n	805e118 <xStreamBufferNextMessageLengthBytes+0x48>
 805e102:	693b      	ldr	r3, [r7, #16]
 805e104:	681b      	ldr	r3, [r3, #0]
 805e106:	f107 0108 	add.w	r1, r7, #8
 805e10a:	2204      	movs	r2, #4
 805e10c:	6938      	ldr	r0, [r7, #16]
 805e10e:	f000 f933 	bl	805e378 <prvReadBytesFromBuffer>
 805e112:	68bb      	ldr	r3, [r7, #8]
 805e114:	617b      	str	r3, [r7, #20]
 805e116:	e00a      	b.n	805e12e <xStreamBufferNextMessageLengthBytes+0x5e>
 805e118:	68fb      	ldr	r3, [r7, #12]
 805e11a:	2b00      	cmp	r3, #0
 805e11c:	d002      	beq.n	805e124 <xStreamBufferNextMessageLengthBytes+0x54>
 805e11e:	4b06      	ldr	r3, [pc, #24]	; (805e138 <xStreamBufferNextMessageLengthBytes+0x68>)
 805e120:	4798      	blx	r3
 805e122:	e7fe      	b.n	805e122 <xStreamBufferNextMessageLengthBytes+0x52>
 805e124:	2300      	movs	r3, #0
 805e126:	617b      	str	r3, [r7, #20]
 805e128:	e001      	b.n	805e12e <xStreamBufferNextMessageLengthBytes+0x5e>
 805e12a:	2300      	movs	r3, #0
 805e12c:	617b      	str	r3, [r7, #20]
 805e12e:	697b      	ldr	r3, [r7, #20]
 805e130:	4618      	mov	r0, r3
 805e132:	3718      	adds	r7, #24
 805e134:	46bd      	mov	sp, r7
 805e136:	bd80      	pop	{r7, pc}
 805e138:	0805f1c7 	.word	0x0805f1c7

0805e13c <vStreamBufferSetStreamBufferNumber>:
 805e13c:	b480      	push	{r7}
 805e13e:	b083      	sub	sp, #12
 805e140:	af00      	add	r7, sp, #0
 805e142:	6078      	str	r0, [r7, #4]
 805e144:	6039      	str	r1, [r7, #0]
 805e146:	687b      	ldr	r3, [r7, #4]
 805e148:	683a      	ldr	r2, [r7, #0]
 805e14a:	621a      	str	r2, [r3, #32]
 805e14c:	bf00      	nop
 805e14e:	370c      	adds	r7, #12
 805e150:	46bd      	mov	sp, r7
 805e152:	bc80      	pop	{r7}
 805e154:	4770      	bx	lr

0805e156 <uxStreamBufferGetStreamBufferNumber>:
 805e156:	b480      	push	{r7}
 805e158:	b083      	sub	sp, #12
 805e15a:	af00      	add	r7, sp, #0
 805e15c:	6078      	str	r0, [r7, #4]
 805e15e:	687b      	ldr	r3, [r7, #4]
 805e160:	6a1b      	ldr	r3, [r3, #32]
 805e162:	4618      	mov	r0, r3
 805e164:	370c      	adds	r7, #12
 805e166:	46bd      	mov	sp, r7
 805e168:	bc80      	pop	{r7}
 805e16a:	4770      	bx	lr

0805e16c <ucStreamBufferGetStreamBufferType>:
 805e16c:	b480      	push	{r7}
 805e16e:	b083      	sub	sp, #12
 805e170:	af00      	add	r7, sp, #0
 805e172:	6078      	str	r0, [r7, #4]
 805e174:	687b      	ldr	r3, [r7, #4]
 805e176:	7f1b      	ldrb	r3, [r3, #28]
 805e178:	f003 0301 	and.w	r3, r3, #1
 805e17c:	b2db      	uxtb	r3, r3
 805e17e:	4618      	mov	r0, r3
 805e180:	370c      	adds	r7, #12
 805e182:	46bd      	mov	sp, r7
 805e184:	bc80      	pop	{r7}
 805e186:	4770      	bx	lr

0805e188 <prvBytesInBuffer>:
 805e188:	b480      	push	{r7}
 805e18a:	b085      	sub	sp, #20
 805e18c:	af00      	add	r7, sp, #0
 805e18e:	6078      	str	r0, [r7, #4]
 805e190:	687b      	ldr	r3, [r7, #4]
 805e192:	689a      	ldr	r2, [r3, #8]
 805e194:	687b      	ldr	r3, [r7, #4]
 805e196:	685b      	ldr	r3, [r3, #4]
 805e198:	4413      	add	r3, r2
 805e19a:	60fb      	str	r3, [r7, #12]
 805e19c:	687b      	ldr	r3, [r7, #4]
 805e19e:	681b      	ldr	r3, [r3, #0]
 805e1a0:	68fa      	ldr	r2, [r7, #12]
 805e1a2:	1ad3      	subs	r3, r2, r3
 805e1a4:	60fb      	str	r3, [r7, #12]
 805e1a6:	687b      	ldr	r3, [r7, #4]
 805e1a8:	689b      	ldr	r3, [r3, #8]
 805e1aa:	68fa      	ldr	r2, [r7, #12]
 805e1ac:	429a      	cmp	r2, r3
 805e1ae:	d304      	bcc.n	805e1ba <prvBytesInBuffer+0x32>
 805e1b0:	687b      	ldr	r3, [r7, #4]
 805e1b2:	689b      	ldr	r3, [r3, #8]
 805e1b4:	68fa      	ldr	r2, [r7, #12]
 805e1b6:	1ad3      	subs	r3, r2, r3
 805e1b8:	60fb      	str	r3, [r7, #12]
 805e1ba:	68fb      	ldr	r3, [r7, #12]
 805e1bc:	4618      	mov	r0, r3
 805e1be:	3714      	adds	r7, #20
 805e1c0:	46bd      	mov	sp, r7
 805e1c2:	bc80      	pop	{r7}
 805e1c4:	4770      	bx	lr

0805e1c6 <prvWriteBytesToBuffer>:
 805e1c6:	b580      	push	{r7, lr}
 805e1c8:	b086      	sub	sp, #24
 805e1ca:	af00      	add	r7, sp, #0
 805e1cc:	60f8      	str	r0, [r7, #12]
 805e1ce:	60b9      	str	r1, [r7, #8]
 805e1d0:	607a      	str	r2, [r7, #4]
 805e1d2:	603b      	str	r3, [r7, #0]
 805e1d4:	687b      	ldr	r3, [r7, #4]
 805e1d6:	2b00      	cmp	r3, #0
 805e1d8:	d102      	bne.n	805e1e0 <prvWriteBytesToBuffer+0x1a>
 805e1da:	4b25      	ldr	r3, [pc, #148]	; (805e270 <prvWriteBytesToBuffer+0xaa>)
 805e1dc:	4798      	blx	r3
 805e1de:	e7fe      	b.n	805e1de <prvWriteBytesToBuffer+0x18>
 805e1e0:	68fb      	ldr	r3, [r7, #12]
 805e1e2:	689a      	ldr	r2, [r3, #8]
 805e1e4:	683b      	ldr	r3, [r7, #0]
 805e1e6:	1ad3      	subs	r3, r2, r3
 805e1e8:	687a      	ldr	r2, [r7, #4]
 805e1ea:	4293      	cmp	r3, r2
 805e1ec:	bf28      	it	cs
 805e1ee:	4613      	movcs	r3, r2
 805e1f0:	617b      	str	r3, [r7, #20]
 805e1f2:	683a      	ldr	r2, [r7, #0]
 805e1f4:	697b      	ldr	r3, [r7, #20]
 805e1f6:	441a      	add	r2, r3
 805e1f8:	68fb      	ldr	r3, [r7, #12]
 805e1fa:	689b      	ldr	r3, [r3, #8]
 805e1fc:	429a      	cmp	r2, r3
 805e1fe:	d902      	bls.n	805e206 <prvWriteBytesToBuffer+0x40>
 805e200:	4b1b      	ldr	r3, [pc, #108]	; (805e270 <prvWriteBytesToBuffer+0xaa>)
 805e202:	4798      	blx	r3
 805e204:	e7fe      	b.n	805e204 <prvWriteBytesToBuffer+0x3e>
 805e206:	68fb      	ldr	r3, [r7, #12]
 805e208:	699a      	ldr	r2, [r3, #24]
 805e20a:	683b      	ldr	r3, [r7, #0]
 805e20c:	4413      	add	r3, r2
 805e20e:	697a      	ldr	r2, [r7, #20]
 805e210:	68b9      	ldr	r1, [r7, #8]
 805e212:	4618      	mov	r0, r3
 805e214:	4b17      	ldr	r3, [pc, #92]	; (805e274 <prvWriteBytesToBuffer+0xae>)
 805e216:	4798      	blx	r3
 805e218:	687a      	ldr	r2, [r7, #4]
 805e21a:	697b      	ldr	r3, [r7, #20]
 805e21c:	429a      	cmp	r2, r3
 805e21e:	d914      	bls.n	805e24a <prvWriteBytesToBuffer+0x84>
 805e220:	687a      	ldr	r2, [r7, #4]
 805e222:	697b      	ldr	r3, [r7, #20]
 805e224:	1ad2      	subs	r2, r2, r3
 805e226:	68fb      	ldr	r3, [r7, #12]
 805e228:	689b      	ldr	r3, [r3, #8]
 805e22a:	429a      	cmp	r2, r3
 805e22c:	d902      	bls.n	805e234 <prvWriteBytesToBuffer+0x6e>
 805e22e:	4b10      	ldr	r3, [pc, #64]	; (805e270 <prvWriteBytesToBuffer+0xaa>)
 805e230:	4798      	blx	r3
 805e232:	e7fe      	b.n	805e232 <prvWriteBytesToBuffer+0x6c>
 805e234:	68fb      	ldr	r3, [r7, #12]
 805e236:	6998      	ldr	r0, [r3, #24]
 805e238:	68ba      	ldr	r2, [r7, #8]
 805e23a:	697b      	ldr	r3, [r7, #20]
 805e23c:	18d1      	adds	r1, r2, r3
 805e23e:	687a      	ldr	r2, [r7, #4]
 805e240:	697b      	ldr	r3, [r7, #20]
 805e242:	1ad3      	subs	r3, r2, r3
 805e244:	461a      	mov	r2, r3
 805e246:	4b0b      	ldr	r3, [pc, #44]	; (805e274 <prvWriteBytesToBuffer+0xae>)
 805e248:	4798      	blx	r3
 805e24a:	683a      	ldr	r2, [r7, #0]
 805e24c:	687b      	ldr	r3, [r7, #4]
 805e24e:	4413      	add	r3, r2
 805e250:	603b      	str	r3, [r7, #0]
 805e252:	68fb      	ldr	r3, [r7, #12]
 805e254:	689b      	ldr	r3, [r3, #8]
 805e256:	683a      	ldr	r2, [r7, #0]
 805e258:	429a      	cmp	r2, r3
 805e25a:	d304      	bcc.n	805e266 <prvWriteBytesToBuffer+0xa0>
 805e25c:	68fb      	ldr	r3, [r7, #12]
 805e25e:	689b      	ldr	r3, [r3, #8]
 805e260:	683a      	ldr	r2, [r7, #0]
 805e262:	1ad3      	subs	r3, r2, r3
 805e264:	603b      	str	r3, [r7, #0]
 805e266:	683b      	ldr	r3, [r7, #0]
 805e268:	4618      	mov	r0, r3
 805e26a:	3718      	adds	r7, #24
 805e26c:	46bd      	mov	sp, r7
 805e26e:	bd80      	pop	{r7, pc}
 805e270:	0805f1c7 	.word	0x0805f1c7
 805e274:	08060905 	.word	0x08060905

0805e278 <prvReadMessageFromBuffer>:
 805e278:	b580      	push	{r7, lr}
 805e27a:	b088      	sub	sp, #32
 805e27c:	af00      	add	r7, sp, #0
 805e27e:	60f8      	str	r0, [r7, #12]
 805e280:	60b9      	str	r1, [r7, #8]
 805e282:	607a      	str	r2, [r7, #4]
 805e284:	603b      	str	r3, [r7, #0]
 805e286:	68fb      	ldr	r3, [r7, #12]
 805e288:	681b      	ldr	r3, [r3, #0]
 805e28a:	61bb      	str	r3, [r7, #24]
 805e28c:	68fb      	ldr	r3, [r7, #12]
 805e28e:	7f1b      	ldrb	r3, [r3, #28]
 805e290:	f003 0301 	and.w	r3, r3, #1
 805e294:	2b00      	cmp	r3, #0
 805e296:	d013      	beq.n	805e2c0 <prvReadMessageFromBuffer+0x48>
 805e298:	f107 0110 	add.w	r1, r7, #16
 805e29c:	69bb      	ldr	r3, [r7, #24]
 805e29e:	2204      	movs	r2, #4
 805e2a0:	68f8      	ldr	r0, [r7, #12]
 805e2a2:	f000 f869 	bl	805e378 <prvReadBytesFromBuffer>
 805e2a6:	61b8      	str	r0, [r7, #24]
 805e2a8:	693b      	ldr	r3, [r7, #16]
 805e2aa:	61fb      	str	r3, [r7, #28]
 805e2ac:	683b      	ldr	r3, [r7, #0]
 805e2ae:	3b04      	subs	r3, #4
 805e2b0:	603b      	str	r3, [r7, #0]
 805e2b2:	69fa      	ldr	r2, [r7, #28]
 805e2b4:	687b      	ldr	r3, [r7, #4]
 805e2b6:	429a      	cmp	r2, r3
 805e2b8:	d904      	bls.n	805e2c4 <prvReadMessageFromBuffer+0x4c>
 805e2ba:	2300      	movs	r3, #0
 805e2bc:	61fb      	str	r3, [r7, #28]
 805e2be:	e001      	b.n	805e2c4 <prvReadMessageFromBuffer+0x4c>
 805e2c0:	687b      	ldr	r3, [r7, #4]
 805e2c2:	61fb      	str	r3, [r7, #28]
 805e2c4:	683a      	ldr	r2, [r7, #0]
 805e2c6:	69fb      	ldr	r3, [r7, #28]
 805e2c8:	4293      	cmp	r3, r2
 805e2ca:	bf28      	it	cs
 805e2cc:	4613      	movcs	r3, r2
 805e2ce:	617b      	str	r3, [r7, #20]
 805e2d0:	697b      	ldr	r3, [r7, #20]
 805e2d2:	2b00      	cmp	r3, #0
 805e2d4:	d008      	beq.n	805e2e8 <prvReadMessageFromBuffer+0x70>
 805e2d6:	69bb      	ldr	r3, [r7, #24]
 805e2d8:	697a      	ldr	r2, [r7, #20]
 805e2da:	68b9      	ldr	r1, [r7, #8]
 805e2dc:	68f8      	ldr	r0, [r7, #12]
 805e2de:	f000 f84b 	bl	805e378 <prvReadBytesFromBuffer>
 805e2e2:	4602      	mov	r2, r0
 805e2e4:	68fb      	ldr	r3, [r7, #12]
 805e2e6:	601a      	str	r2, [r3, #0]
 805e2e8:	697b      	ldr	r3, [r7, #20]
 805e2ea:	4618      	mov	r0, r3
 805e2ec:	3720      	adds	r7, #32
 805e2ee:	46bd      	mov	sp, r7
 805e2f0:	bd80      	pop	{r7, pc}

0805e2f2 <prvWriteMessageToBuffer>:
 805e2f2:	b580      	push	{r7, lr}
 805e2f4:	b086      	sub	sp, #24
 805e2f6:	af00      	add	r7, sp, #0
 805e2f8:	60f8      	str	r0, [r7, #12]
 805e2fa:	60b9      	str	r1, [r7, #8]
 805e2fc:	607a      	str	r2, [r7, #4]
 805e2fe:	603b      	str	r3, [r7, #0]
 805e300:	68fb      	ldr	r3, [r7, #12]
 805e302:	685b      	ldr	r3, [r3, #4]
 805e304:	617b      	str	r3, [r7, #20]
 805e306:	68fb      	ldr	r3, [r7, #12]
 805e308:	7f1b      	ldrb	r3, [r3, #28]
 805e30a:	f003 0301 	and.w	r3, r3, #1
 805e30e:	2b00      	cmp	r3, #0
 805e310:	d018      	beq.n	805e344 <prvWriteMessageToBuffer+0x52>
 805e312:	687b      	ldr	r3, [r7, #4]
 805e314:	613b      	str	r3, [r7, #16]
 805e316:	693b      	ldr	r3, [r7, #16]
 805e318:	687a      	ldr	r2, [r7, #4]
 805e31a:	429a      	cmp	r2, r3
 805e31c:	d002      	beq.n	805e324 <prvWriteMessageToBuffer+0x32>
 805e31e:	4b15      	ldr	r3, [pc, #84]	; (805e374 <prvWriteMessageToBuffer+0x82>)
 805e320:	4798      	blx	r3
 805e322:	e7fe      	b.n	805e322 <prvWriteMessageToBuffer+0x30>
 805e324:	683a      	ldr	r2, [r7, #0]
 805e326:	6a3b      	ldr	r3, [r7, #32]
 805e328:	429a      	cmp	r2, r3
 805e32a:	d308      	bcc.n	805e33e <prvWriteMessageToBuffer+0x4c>
 805e32c:	f107 0110 	add.w	r1, r7, #16
 805e330:	697b      	ldr	r3, [r7, #20]
 805e332:	2204      	movs	r2, #4
 805e334:	68f8      	ldr	r0, [r7, #12]
 805e336:	f7ff ff46 	bl	805e1c6 <prvWriteBytesToBuffer>
 805e33a:	6178      	str	r0, [r7, #20]
 805e33c:	e008      	b.n	805e350 <prvWriteMessageToBuffer+0x5e>
 805e33e:	2300      	movs	r3, #0
 805e340:	607b      	str	r3, [r7, #4]
 805e342:	e005      	b.n	805e350 <prvWriteMessageToBuffer+0x5e>
 805e344:	687a      	ldr	r2, [r7, #4]
 805e346:	683b      	ldr	r3, [r7, #0]
 805e348:	4293      	cmp	r3, r2
 805e34a:	bf28      	it	cs
 805e34c:	4613      	movcs	r3, r2
 805e34e:	607b      	str	r3, [r7, #4]
 805e350:	687b      	ldr	r3, [r7, #4]
 805e352:	2b00      	cmp	r3, #0
 805e354:	d008      	beq.n	805e368 <prvWriteMessageToBuffer+0x76>
 805e356:	697b      	ldr	r3, [r7, #20]
 805e358:	687a      	ldr	r2, [r7, #4]
 805e35a:	68b9      	ldr	r1, [r7, #8]
 805e35c:	68f8      	ldr	r0, [r7, #12]
 805e35e:	f7ff ff32 	bl	805e1c6 <prvWriteBytesToBuffer>
 805e362:	4602      	mov	r2, r0
 805e364:	68fb      	ldr	r3, [r7, #12]
 805e366:	605a      	str	r2, [r3, #4]
 805e368:	687b      	ldr	r3, [r7, #4]
 805e36a:	4618      	mov	r0, r3
 805e36c:	3718      	adds	r7, #24
 805e36e:	46bd      	mov	sp, r7
 805e370:	bd80      	pop	{r7, pc}
 805e372:	bf00      	nop
 805e374:	0805f1c7 	.word	0x0805f1c7

0805e378 <prvReadBytesFromBuffer>:
 805e378:	b580      	push	{r7, lr}
 805e37a:	b086      	sub	sp, #24
 805e37c:	af00      	add	r7, sp, #0
 805e37e:	60f8      	str	r0, [r7, #12]
 805e380:	60b9      	str	r1, [r7, #8]
 805e382:	607a      	str	r2, [r7, #4]
 805e384:	603b      	str	r3, [r7, #0]
 805e386:	687b      	ldr	r3, [r7, #4]
 805e388:	2b00      	cmp	r3, #0
 805e38a:	d102      	bne.n	805e392 <prvReadBytesFromBuffer+0x1a>
 805e38c:	4b23      	ldr	r3, [pc, #140]	; (805e41c <prvReadBytesFromBuffer+0xa4>)
 805e38e:	4798      	blx	r3
 805e390:	e7fe      	b.n	805e390 <prvReadBytesFromBuffer+0x18>
 805e392:	68fb      	ldr	r3, [r7, #12]
 805e394:	689a      	ldr	r2, [r3, #8]
 805e396:	683b      	ldr	r3, [r7, #0]
 805e398:	1ad3      	subs	r3, r2, r3
 805e39a:	687a      	ldr	r2, [r7, #4]
 805e39c:	4293      	cmp	r3, r2
 805e39e:	bf28      	it	cs
 805e3a0:	4613      	movcs	r3, r2
 805e3a2:	617b      	str	r3, [r7, #20]
 805e3a4:	697a      	ldr	r2, [r7, #20]
 805e3a6:	687b      	ldr	r3, [r7, #4]
 805e3a8:	429a      	cmp	r2, r3
 805e3aa:	d902      	bls.n	805e3b2 <prvReadBytesFromBuffer+0x3a>
 805e3ac:	4b1b      	ldr	r3, [pc, #108]	; (805e41c <prvReadBytesFromBuffer+0xa4>)
 805e3ae:	4798      	blx	r3
 805e3b0:	e7fe      	b.n	805e3b0 <prvReadBytesFromBuffer+0x38>
 805e3b2:	683a      	ldr	r2, [r7, #0]
 805e3b4:	697b      	ldr	r3, [r7, #20]
 805e3b6:	441a      	add	r2, r3
 805e3b8:	68fb      	ldr	r3, [r7, #12]
 805e3ba:	689b      	ldr	r3, [r3, #8]
 805e3bc:	429a      	cmp	r2, r3
 805e3be:	d902      	bls.n	805e3c6 <prvReadBytesFromBuffer+0x4e>
 805e3c0:	4b16      	ldr	r3, [pc, #88]	; (805e41c <prvReadBytesFromBuffer+0xa4>)
 805e3c2:	4798      	blx	r3
 805e3c4:	e7fe      	b.n	805e3c4 <prvReadBytesFromBuffer+0x4c>
 805e3c6:	68fb      	ldr	r3, [r7, #12]
 805e3c8:	699a      	ldr	r2, [r3, #24]
 805e3ca:	683b      	ldr	r3, [r7, #0]
 805e3cc:	4413      	add	r3, r2
 805e3ce:	697a      	ldr	r2, [r7, #20]
 805e3d0:	4619      	mov	r1, r3
 805e3d2:	68b8      	ldr	r0, [r7, #8]
 805e3d4:	4b12      	ldr	r3, [pc, #72]	; (805e420 <prvReadBytesFromBuffer+0xa8>)
 805e3d6:	4798      	blx	r3
 805e3d8:	687a      	ldr	r2, [r7, #4]
 805e3da:	697b      	ldr	r3, [r7, #20]
 805e3dc:	429a      	cmp	r2, r3
 805e3de:	d90a      	bls.n	805e3f6 <prvReadBytesFromBuffer+0x7e>
 805e3e0:	68ba      	ldr	r2, [r7, #8]
 805e3e2:	697b      	ldr	r3, [r7, #20]
 805e3e4:	18d0      	adds	r0, r2, r3
 805e3e6:	68fb      	ldr	r3, [r7, #12]
 805e3e8:	6999      	ldr	r1, [r3, #24]
 805e3ea:	687a      	ldr	r2, [r7, #4]
 805e3ec:	697b      	ldr	r3, [r7, #20]
 805e3ee:	1ad3      	subs	r3, r2, r3
 805e3f0:	461a      	mov	r2, r3
 805e3f2:	4b0b      	ldr	r3, [pc, #44]	; (805e420 <prvReadBytesFromBuffer+0xa8>)
 805e3f4:	4798      	blx	r3
 805e3f6:	683a      	ldr	r2, [r7, #0]
 805e3f8:	687b      	ldr	r3, [r7, #4]
 805e3fa:	4413      	add	r3, r2
 805e3fc:	603b      	str	r3, [r7, #0]
 805e3fe:	68fb      	ldr	r3, [r7, #12]
 805e400:	689b      	ldr	r3, [r3, #8]
 805e402:	683a      	ldr	r2, [r7, #0]
 805e404:	429a      	cmp	r2, r3
 805e406:	d304      	bcc.n	805e412 <prvReadBytesFromBuffer+0x9a>
 805e408:	68fb      	ldr	r3, [r7, #12]
 805e40a:	689b      	ldr	r3, [r3, #8]
 805e40c:	683a      	ldr	r2, [r7, #0]
 805e40e:	1ad3      	subs	r3, r2, r3
 805e410:	603b      	str	r3, [r7, #0]
 805e412:	683b      	ldr	r3, [r7, #0]
 805e414:	4618      	mov	r0, r3
 805e416:	3718      	adds	r7, #24
 805e418:	46bd      	mov	sp, r7
 805e41a:	bd80      	pop	{r7, pc}
 805e41c:	0805f1c7 	.word	0x0805f1c7
 805e420:	08060905 	.word	0x08060905

0805e424 <prvInitialiseNewStreamBuffer>:
 805e424:	b580      	push	{r7, lr}
 805e426:	b084      	sub	sp, #16
 805e428:	af00      	add	r7, sp, #0
 805e42a:	60f8      	str	r0, [r7, #12]
 805e42c:	60b9      	str	r1, [r7, #8]
 805e42e:	607a      	str	r2, [r7, #4]
 805e430:	603b      	str	r3, [r7, #0]
 805e432:	687a      	ldr	r2, [r7, #4]
 805e434:	2155      	movs	r1, #85	; 0x55
 805e436:	68b8      	ldr	r0, [r7, #8]
 805e438:	4b0e      	ldr	r3, [pc, #56]	; (805e474 <prvInitialiseNewStreamBuffer+0x50>)
 805e43a:	4798      	blx	r3
 805e43c:	4602      	mov	r2, r0
 805e43e:	68bb      	ldr	r3, [r7, #8]
 805e440:	4293      	cmp	r3, r2
 805e442:	d002      	beq.n	805e44a <prvInitialiseNewStreamBuffer+0x26>
 805e444:	4b0c      	ldr	r3, [pc, #48]	; (805e478 <prvInitialiseNewStreamBuffer+0x54>)
 805e446:	4798      	blx	r3
 805e448:	e7fe      	b.n	805e448 <prvInitialiseNewStreamBuffer+0x24>
 805e44a:	2224      	movs	r2, #36	; 0x24
 805e44c:	2100      	movs	r1, #0
 805e44e:	68f8      	ldr	r0, [r7, #12]
 805e450:	4b08      	ldr	r3, [pc, #32]	; (805e474 <prvInitialiseNewStreamBuffer+0x50>)
 805e452:	4798      	blx	r3
 805e454:	68fb      	ldr	r3, [r7, #12]
 805e456:	68ba      	ldr	r2, [r7, #8]
 805e458:	619a      	str	r2, [r3, #24]
 805e45a:	68fb      	ldr	r3, [r7, #12]
 805e45c:	687a      	ldr	r2, [r7, #4]
 805e45e:	609a      	str	r2, [r3, #8]
 805e460:	68fb      	ldr	r3, [r7, #12]
 805e462:	683a      	ldr	r2, [r7, #0]
 805e464:	60da      	str	r2, [r3, #12]
 805e466:	68fb      	ldr	r3, [r7, #12]
 805e468:	7e3a      	ldrb	r2, [r7, #24]
 805e46a:	771a      	strb	r2, [r3, #28]
 805e46c:	bf00      	nop
 805e46e:	3710      	adds	r7, #16
 805e470:	46bd      	mov	sp, r7
 805e472:	bd80      	pop	{r7, pc}
 805e474:	080609f1 	.word	0x080609f1
 805e478:	0805f1c7 	.word	0x0805f1c7

0805e47c <pxPortInitialiseStack>:
 805e47c:	b480      	push	{r7}
 805e47e:	b087      	sub	sp, #28
 805e480:	af00      	add	r7, sp, #0
 805e482:	60f8      	str	r0, [r7, #12]
 805e484:	60b9      	str	r1, [r7, #8]
 805e486:	607a      	str	r2, [r7, #4]
 805e488:	603b      	str	r3, [r7, #0]
 805e48a:	2300      	movs	r3, #0
 805e48c:	617b      	str	r3, [r7, #20]
 805e48e:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 805e490:	697b      	ldr	r3, [r7, #20]
 805e492:	3308      	adds	r3, #8
 805e494:	009b      	lsls	r3, r3, #2
 805e496:	4413      	add	r3, r2
 805e498:	f04f 3204 	mov.w	r2, #67372036	; 0x4040404
 805e49c:	605a      	str	r2, [r3, #4]
 805e49e:	697b      	ldr	r3, [r7, #20]
 805e4a0:	3301      	adds	r3, #1
 805e4a2:	617b      	str	r3, [r7, #20]
 805e4a4:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 805e4a6:	697b      	ldr	r3, [r7, #20]
 805e4a8:	3308      	adds	r3, #8
 805e4aa:	009b      	lsls	r3, r3, #2
 805e4ac:	4413      	add	r3, r2
 805e4ae:	f04f 3205 	mov.w	r2, #84215045	; 0x5050505
 805e4b2:	605a      	str	r2, [r3, #4]
 805e4b4:	697b      	ldr	r3, [r7, #20]
 805e4b6:	3301      	adds	r3, #1
 805e4b8:	617b      	str	r3, [r7, #20]
 805e4ba:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 805e4bc:	697b      	ldr	r3, [r7, #20]
 805e4be:	3308      	adds	r3, #8
 805e4c0:	009b      	lsls	r3, r3, #2
 805e4c2:	4413      	add	r3, r2
 805e4c4:	f04f 3206 	mov.w	r2, #101058054	; 0x6060606
 805e4c8:	605a      	str	r2, [r3, #4]
 805e4ca:	697b      	ldr	r3, [r7, #20]
 805e4cc:	3301      	adds	r3, #1
 805e4ce:	617b      	str	r3, [r7, #20]
 805e4d0:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 805e4d2:	697b      	ldr	r3, [r7, #20]
 805e4d4:	3308      	adds	r3, #8
 805e4d6:	009b      	lsls	r3, r3, #2
 805e4d8:	4413      	add	r3, r2
 805e4da:	f04f 3207 	mov.w	r2, #117901063	; 0x7070707
 805e4de:	605a      	str	r2, [r3, #4]
 805e4e0:	697b      	ldr	r3, [r7, #20]
 805e4e2:	3301      	adds	r3, #1
 805e4e4:	617b      	str	r3, [r7, #20]
 805e4e6:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 805e4e8:	697b      	ldr	r3, [r7, #20]
 805e4ea:	3308      	adds	r3, #8
 805e4ec:	009b      	lsls	r3, r3, #2
 805e4ee:	4413      	add	r3, r2
 805e4f0:	f04f 3208 	mov.w	r2, #134744072	; 0x8080808
 805e4f4:	605a      	str	r2, [r3, #4]
 805e4f6:	697b      	ldr	r3, [r7, #20]
 805e4f8:	3301      	adds	r3, #1
 805e4fa:	617b      	str	r3, [r7, #20]
 805e4fc:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 805e4fe:	697b      	ldr	r3, [r7, #20]
 805e500:	3308      	adds	r3, #8
 805e502:	009b      	lsls	r3, r3, #2
 805e504:	4413      	add	r3, r2
 805e506:	f04f 3209 	mov.w	r2, #151587081	; 0x9090909
 805e50a:	605a      	str	r2, [r3, #4]
 805e50c:	697b      	ldr	r3, [r7, #20]
 805e50e:	3301      	adds	r3, #1
 805e510:	617b      	str	r3, [r7, #20]
 805e512:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 805e514:	697b      	ldr	r3, [r7, #20]
 805e516:	3308      	adds	r3, #8
 805e518:	009b      	lsls	r3, r3, #2
 805e51a:	4413      	add	r3, r2
 805e51c:	f04f 3210 	mov.w	r2, #269488144	; 0x10101010
 805e520:	605a      	str	r2, [r3, #4]
 805e522:	697b      	ldr	r3, [r7, #20]
 805e524:	3301      	adds	r3, #1
 805e526:	617b      	str	r3, [r7, #20]
 805e528:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 805e52a:	697b      	ldr	r3, [r7, #20]
 805e52c:	3308      	adds	r3, #8
 805e52e:	009b      	lsls	r3, r3, #2
 805e530:	4413      	add	r3, r2
 805e532:	f04f 3211 	mov.w	r2, #286331153	; 0x11111111
 805e536:	605a      	str	r2, [r3, #4]
 805e538:	697b      	ldr	r3, [r7, #20]
 805e53a:	3301      	adds	r3, #1
 805e53c:	617b      	str	r3, [r7, #20]
 805e53e:	683a      	ldr	r2, [r7, #0]
 805e540:	6a79      	ldr	r1, [r7, #36]	; 0x24
 805e542:	697b      	ldr	r3, [r7, #20]
 805e544:	3308      	adds	r3, #8
 805e546:	009b      	lsls	r3, r3, #2
 805e548:	440b      	add	r3, r1
 805e54a:	605a      	str	r2, [r3, #4]
 805e54c:	697b      	ldr	r3, [r7, #20]
 805e54e:	3301      	adds	r3, #1
 805e550:	617b      	str	r3, [r7, #20]
 805e552:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 805e554:	697b      	ldr	r3, [r7, #20]
 805e556:	3308      	adds	r3, #8
 805e558:	009b      	lsls	r3, r3, #2
 805e55a:	4413      	add	r3, r2
 805e55c:	f04f 3201 	mov.w	r2, #16843009	; 0x1010101
 805e560:	605a      	str	r2, [r3, #4]
 805e562:	697b      	ldr	r3, [r7, #20]
 805e564:	3301      	adds	r3, #1
 805e566:	617b      	str	r3, [r7, #20]
 805e568:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 805e56a:	697b      	ldr	r3, [r7, #20]
 805e56c:	3308      	adds	r3, #8
 805e56e:	009b      	lsls	r3, r3, #2
 805e570:	4413      	add	r3, r2
 805e572:	f04f 3202 	mov.w	r2, #33686018	; 0x2020202
 805e576:	605a      	str	r2, [r3, #4]
 805e578:	697b      	ldr	r3, [r7, #20]
 805e57a:	3301      	adds	r3, #1
 805e57c:	617b      	str	r3, [r7, #20]
 805e57e:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 805e580:	697b      	ldr	r3, [r7, #20]
 805e582:	3308      	adds	r3, #8
 805e584:	009b      	lsls	r3, r3, #2
 805e586:	4413      	add	r3, r2
 805e588:	f04f 3203 	mov.w	r2, #50529027	; 0x3030303
 805e58c:	605a      	str	r2, [r3, #4]
 805e58e:	697b      	ldr	r3, [r7, #20]
 805e590:	3301      	adds	r3, #1
 805e592:	617b      	str	r3, [r7, #20]
 805e594:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 805e596:	697b      	ldr	r3, [r7, #20]
 805e598:	3308      	adds	r3, #8
 805e59a:	009b      	lsls	r3, r3, #2
 805e59c:	4413      	add	r3, r2
 805e59e:	f04f 3212 	mov.w	r2, #303174162	; 0x12121212
 805e5a2:	605a      	str	r2, [r3, #4]
 805e5a4:	697b      	ldr	r3, [r7, #20]
 805e5a6:	3301      	adds	r3, #1
 805e5a8:	617b      	str	r3, [r7, #20]
 805e5aa:	4949      	ldr	r1, [pc, #292]	; (805e6d0 <pxPortInitialiseStack+0x254>)
 805e5ac:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 805e5ae:	697b      	ldr	r3, [r7, #20]
 805e5b0:	3308      	adds	r3, #8
 805e5b2:	009b      	lsls	r3, r3, #2
 805e5b4:	4413      	add	r3, r2
 805e5b6:	6059      	str	r1, [r3, #4]
 805e5b8:	697b      	ldr	r3, [r7, #20]
 805e5ba:	3301      	adds	r3, #1
 805e5bc:	617b      	str	r3, [r7, #20]
 805e5be:	687a      	ldr	r2, [r7, #4]
 805e5c0:	6a79      	ldr	r1, [r7, #36]	; 0x24
 805e5c2:	697b      	ldr	r3, [r7, #20]
 805e5c4:	3308      	adds	r3, #8
 805e5c6:	009b      	lsls	r3, r3, #2
 805e5c8:	440b      	add	r3, r1
 805e5ca:	605a      	str	r2, [r3, #4]
 805e5cc:	697b      	ldr	r3, [r7, #20]
 805e5ce:	3301      	adds	r3, #1
 805e5d0:	617b      	str	r3, [r7, #20]
 805e5d2:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 805e5d4:	697b      	ldr	r3, [r7, #20]
 805e5d6:	3308      	adds	r3, #8
 805e5d8:	009b      	lsls	r3, r3, #2
 805e5da:	4413      	add	r3, r2
 805e5dc:	f04f 7280 	mov.w	r2, #16777216	; 0x1000000
 805e5e0:	605a      	str	r2, [r3, #4]
 805e5e2:	697b      	ldr	r3, [r7, #20]
 805e5e4:	3301      	adds	r3, #1
 805e5e6:	617b      	str	r3, [r7, #20]
 805e5e8:	68fb      	ldr	r3, [r7, #12]
 805e5ea:	3b20      	subs	r3, #32
 805e5ec:	4619      	mov	r1, r3
 805e5ee:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 805e5f0:	697b      	ldr	r3, [r7, #20]
 805e5f2:	3308      	adds	r3, #8
 805e5f4:	009b      	lsls	r3, r3, #2
 805e5f6:	4413      	add	r3, r2
 805e5f8:	6059      	str	r1, [r3, #4]
 805e5fa:	697b      	ldr	r3, [r7, #20]
 805e5fc:	3301      	adds	r3, #1
 805e5fe:	617b      	str	r3, [r7, #20]
 805e600:	68ba      	ldr	r2, [r7, #8]
 805e602:	6a79      	ldr	r1, [r7, #36]	; 0x24
 805e604:	697b      	ldr	r3, [r7, #20]
 805e606:	3308      	adds	r3, #8
 805e608:	009b      	lsls	r3, r3, #2
 805e60a:	440b      	add	r3, r1
 805e60c:	605a      	str	r2, [r3, #4]
 805e60e:	697b      	ldr	r3, [r7, #20]
 805e610:	3301      	adds	r3, #1
 805e612:	617b      	str	r3, [r7, #20]
 805e614:	6a3b      	ldr	r3, [r7, #32]
 805e616:	2b01      	cmp	r3, #1
 805e618:	d110      	bne.n	805e63c <pxPortInitialiseStack+0x1c0>
 805e61a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805e61c:	6f9b      	ldr	r3, [r3, #120]	; 0x78
 805e61e:	f043 0202 	orr.w	r2, r3, #2
 805e622:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805e624:	679a      	str	r2, [r3, #120]	; 0x78
 805e626:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 805e628:	697b      	ldr	r3, [r7, #20]
 805e62a:	3308      	adds	r3, #8
 805e62c:	009b      	lsls	r3, r3, #2
 805e62e:	4413      	add	r3, r2
 805e630:	2202      	movs	r2, #2
 805e632:	605a      	str	r2, [r3, #4]
 805e634:	697b      	ldr	r3, [r7, #20]
 805e636:	3301      	adds	r3, #1
 805e638:	617b      	str	r3, [r7, #20]
 805e63a:	e00f      	b.n	805e65c <pxPortInitialiseStack+0x1e0>
 805e63c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805e63e:	6f9b      	ldr	r3, [r3, #120]	; 0x78
 805e640:	f023 0202 	bic.w	r2, r3, #2
 805e644:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805e646:	679a      	str	r2, [r3, #120]	; 0x78
 805e648:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 805e64a:	697b      	ldr	r3, [r7, #20]
 805e64c:	3308      	adds	r3, #8
 805e64e:	009b      	lsls	r3, r3, #2
 805e650:	4413      	add	r3, r2
 805e652:	2203      	movs	r2, #3
 805e654:	605a      	str	r2, [r3, #4]
 805e656:	697b      	ldr	r3, [r7, #20]
 805e658:	3301      	adds	r3, #1
 805e65a:	617b      	str	r3, [r7, #20]
 805e65c:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 805e65e:	697b      	ldr	r3, [r7, #20]
 805e660:	3308      	adds	r3, #8
 805e662:	009b      	lsls	r3, r3, #2
 805e664:	4413      	add	r3, r2
 805e666:	f06f 0243 	mvn.w	r2, #67	; 0x43
 805e66a:	605a      	str	r2, [r3, #4]
 805e66c:	697b      	ldr	r3, [r7, #20]
 805e66e:	3301      	adds	r3, #1
 805e670:	617b      	str	r3, [r7, #20]
 805e672:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805e674:	f503 721e 	add.w	r2, r3, #632	; 0x278
 805e678:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805e67a:	f8c3 227c 	str.w	r2, [r3, #636]	; 0x27c
 805e67e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805e680:	f8d3 327c 	ldr.w	r3, [r3, #636]	; 0x27c
 805e684:	f023 0307 	bic.w	r3, r3, #7
 805e688:	461a      	mov	r2, r3
 805e68a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805e68c:	f8c3 227c 	str.w	r2, [r3, #636]	; 0x27c
 805e690:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805e692:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 805e696:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805e698:	f8c3 2280 	str.w	r2, [r3, #640]	; 0x280
 805e69c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805e69e:	f8d3 3280 	ldr.w	r3, [r3, #640]	; 0x280
 805e6a2:	3307      	adds	r3, #7
 805e6a4:	f023 0307 	bic.w	r3, r3, #7
 805e6a8:	461a      	mov	r2, r3
 805e6aa:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805e6ac:	f8c3 2280 	str.w	r2, [r3, #640]	; 0x280
 805e6b0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805e6b2:	2200      	movs	r2, #0
 805e6b4:	f8c3 2284 	str.w	r2, [r3, #644]	; 0x284
 805e6b8:	697b      	ldr	r3, [r7, #20]
 805e6ba:	3308      	adds	r3, #8
 805e6bc:	009b      	lsls	r3, r3, #2
 805e6be:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 805e6c0:	4413      	add	r3, r2
 805e6c2:	3304      	adds	r3, #4
 805e6c4:	4618      	mov	r0, r3
 805e6c6:	371c      	adds	r7, #28
 805e6c8:	46bd      	mov	sp, r7
 805e6ca:	bc80      	pop	{r7}
 805e6cc:	4770      	bx	lr
 805e6ce:	bf00      	nop
 805e6d0:	080607c5 	.word	0x080607c5

0805e6d4 <xPortStartScheduler>:
 805e6d4:	b580      	push	{r7, lr}
 805e6d6:	b084      	sub	sp, #16
 805e6d8:	af00      	add	r7, sp, #0
 805e6da:	2300      	movs	r3, #0
 805e6dc:	60bb      	str	r3, [r7, #8]
 805e6de:	4b36      	ldr	r3, [pc, #216]	; (805e7b8 <xPortStartScheduler+0xe4>)
 805e6e0:	681b      	ldr	r3, [r3, #0]
 805e6e2:	60fb      	str	r3, [r7, #12]
 805e6e4:	4b34      	ldr	r3, [pc, #208]	; (805e7b8 <xPortStartScheduler+0xe4>)
 805e6e6:	f04f 427f 	mov.w	r2, #4278190080	; 0xff000000
 805e6ea:	601a      	str	r2, [r3, #0]
 805e6ec:	4b32      	ldr	r3, [pc, #200]	; (805e7b8 <xPortStartScheduler+0xe4>)
 805e6ee:	681b      	ldr	r3, [r3, #0]
 805e6f0:	0e1b      	lsrs	r3, r3, #24
 805e6f2:	b2db      	uxtb	r3, r3
 805e6f4:	71fb      	strb	r3, [r7, #7]
 805e6f6:	79fb      	ldrb	r3, [r7, #7]
 805e6f8:	b2db      	uxtb	r3, r3
 805e6fa:	f023 035f 	bic.w	r3, r3, #95	; 0x5f
 805e6fe:	b2da      	uxtb	r2, r3
 805e700:	4b2e      	ldr	r3, [pc, #184]	; (805e7bc <xPortStartScheduler+0xe8>)
 805e702:	701a      	strb	r2, [r3, #0]
 805e704:	4b2d      	ldr	r3, [pc, #180]	; (805e7bc <xPortStartScheduler+0xe8>)
 805e706:	781b      	ldrb	r3, [r3, #0]
 805e708:	2b00      	cmp	r3, #0
 805e70a:	d102      	bne.n	805e712 <xPortStartScheduler+0x3e>
 805e70c:	4b2c      	ldr	r3, [pc, #176]	; (805e7c0 <xPortStartScheduler+0xec>)
 805e70e:	4798      	blx	r3
 805e710:	e7fe      	b.n	805e710 <xPortStartScheduler+0x3c>
 805e712:	79fb      	ldrb	r3, [r7, #7]
 805e714:	b2db      	uxtb	r3, r3
 805e716:	43db      	mvns	r3, r3
 805e718:	b2db      	uxtb	r3, r3
 805e71a:	f023 035f 	bic.w	r3, r3, #95	; 0x5f
 805e71e:	b2db      	uxtb	r3, r3
 805e720:	2b00      	cmp	r3, #0
 805e722:	d00a      	beq.n	805e73a <xPortStartScheduler+0x66>
 805e724:	4b26      	ldr	r3, [pc, #152]	; (805e7c0 <xPortStartScheduler+0xec>)
 805e726:	4798      	blx	r3
 805e728:	e7fe      	b.n	805e728 <xPortStartScheduler+0x54>
 805e72a:	68bb      	ldr	r3, [r7, #8]
 805e72c:	3301      	adds	r3, #1
 805e72e:	60bb      	str	r3, [r7, #8]
 805e730:	79fb      	ldrb	r3, [r7, #7]
 805e732:	b2db      	uxtb	r3, r3
 805e734:	005b      	lsls	r3, r3, #1
 805e736:	b2db      	uxtb	r3, r3
 805e738:	71fb      	strb	r3, [r7, #7]
 805e73a:	79fb      	ldrb	r3, [r7, #7]
 805e73c:	b2db      	uxtb	r3, r3
 805e73e:	f003 0380 	and.w	r3, r3, #128	; 0x80
 805e742:	2b80      	cmp	r3, #128	; 0x80
 805e744:	d0f1      	beq.n	805e72a <xPortStartScheduler+0x56>
 805e746:	68bb      	ldr	r3, [r7, #8]
 805e748:	2b08      	cmp	r3, #8
 805e74a:	d103      	bne.n	805e754 <xPortStartScheduler+0x80>
 805e74c:	4b1d      	ldr	r3, [pc, #116]	; (805e7c4 <xPortStartScheduler+0xf0>)
 805e74e:	2200      	movs	r2, #0
 805e750:	601a      	str	r2, [r3, #0]
 805e752:	e004      	b.n	805e75e <xPortStartScheduler+0x8a>
 805e754:	68bb      	ldr	r3, [r7, #8]
 805e756:	f1c3 0307 	rsb	r3, r3, #7
 805e75a:	4a1a      	ldr	r2, [pc, #104]	; (805e7c4 <xPortStartScheduler+0xf0>)
 805e75c:	6013      	str	r3, [r2, #0]
 805e75e:	4b19      	ldr	r3, [pc, #100]	; (805e7c4 <xPortStartScheduler+0xf0>)
 805e760:	681b      	ldr	r3, [r3, #0]
 805e762:	021b      	lsls	r3, r3, #8
 805e764:	4a17      	ldr	r2, [pc, #92]	; (805e7c4 <xPortStartScheduler+0xf0>)
 805e766:	6013      	str	r3, [r2, #0]
 805e768:	4b16      	ldr	r3, [pc, #88]	; (805e7c4 <xPortStartScheduler+0xf0>)
 805e76a:	681b      	ldr	r3, [r3, #0]
 805e76c:	f403 63e0 	and.w	r3, r3, #1792	; 0x700
 805e770:	4a14      	ldr	r2, [pc, #80]	; (805e7c4 <xPortStartScheduler+0xf0>)
 805e772:	6013      	str	r3, [r2, #0]
 805e774:	4a10      	ldr	r2, [pc, #64]	; (805e7b8 <xPortStartScheduler+0xe4>)
 805e776:	68fb      	ldr	r3, [r7, #12]
 805e778:	6013      	str	r3, [r2, #0]
 805e77a:	4b13      	ldr	r3, [pc, #76]	; (805e7c8 <xPortStartScheduler+0xf4>)
 805e77c:	681b      	ldr	r3, [r3, #0]
 805e77e:	4a12      	ldr	r2, [pc, #72]	; (805e7c8 <xPortStartScheduler+0xf4>)
 805e780:	f443 037f 	orr.w	r3, r3, #16711680	; 0xff0000
 805e784:	6013      	str	r3, [r2, #0]
 805e786:	4b10      	ldr	r3, [pc, #64]	; (805e7c8 <xPortStartScheduler+0xf4>)
 805e788:	681b      	ldr	r3, [r3, #0]
 805e78a:	4a0f      	ldr	r2, [pc, #60]	; (805e7c8 <xPortStartScheduler+0xf4>)
 805e78c:	f043 437f 	orr.w	r3, r3, #4278190080	; 0xff000000
 805e790:	6013      	str	r3, [r2, #0]
 805e792:	f000 f9d7 	bl	805eb44 <prvSetupMPU>
 805e796:	4b0d      	ldr	r3, [pc, #52]	; (805e7cc <xPortStartScheduler+0xf8>)
 805e798:	4798      	blx	r3
 805e79a:	4b0d      	ldr	r3, [pc, #52]	; (805e7d0 <xPortStartScheduler+0xfc>)
 805e79c:	2200      	movs	r2, #0
 805e79e:	601a      	str	r2, [r3, #0]
 805e7a0:	4b0c      	ldr	r3, [pc, #48]	; (805e7d4 <xPortStartScheduler+0x100>)
 805e7a2:	4798      	blx	r3
 805e7a4:	4b0c      	ldr	r3, [pc, #48]	; (805e7d8 <xPortStartScheduler+0x104>)
 805e7a6:	4798      	blx	r3
 805e7a8:	4b0c      	ldr	r3, [pc, #48]	; (805e7dc <xPortStartScheduler+0x108>)
 805e7aa:	4798      	blx	r3
 805e7ac:	2300      	movs	r3, #0
 805e7ae:	4618      	mov	r0, r3
 805e7b0:	3710      	adds	r7, #16
 805e7b2:	46bd      	mov	sp, r7
 805e7b4:	bd80      	pop	{r7, pc}
 805e7b6:	bf00      	nop
 805e7b8:	e000ed1c 	.word	0xe000ed1c
 805e7bc:	20003e20 	.word	0x20003e20
 805e7c0:	0805f1c7 	.word	0x0805f1c7
 805e7c4:	20003e24 	.word	0x20003e24
 805e7c8:	e000ed20 	.word	0xe000ed20
 805e7cc:	0805ec61 	.word	0x0805ec61
 805e7d0:	20003b78 	.word	0x20003b78
 805e7d4:	0805f1a7 	.word	0x0805f1a7
 805e7d8:	0805745d 	.word	0x0805745d
 805e7dc:	080607c5 	.word	0x080607c5

0805e7e0 <vPortEndScheduler>:
 805e7e0:	b580      	push	{r7, lr}
 805e7e2:	af00      	add	r7, sp, #0
 805e7e4:	4b04      	ldr	r3, [pc, #16]	; (805e7f8 <vPortEndScheduler+0x18>)
 805e7e6:	681b      	ldr	r3, [r3, #0]
 805e7e8:	f5b3 7f7a 	cmp.w	r3, #1000	; 0x3e8
 805e7ec:	d002      	beq.n	805e7f4 <vPortEndScheduler+0x14>
 805e7ee:	4b03      	ldr	r3, [pc, #12]	; (805e7fc <vPortEndScheduler+0x1c>)
 805e7f0:	4798      	blx	r3
 805e7f2:	e7fe      	b.n	805e7f2 <vPortEndScheduler+0x12>
 805e7f4:	bf00      	nop
 805e7f6:	bd80      	pop	{r7, pc}
 805e7f8:	20003b78 	.word	0x20003b78
 805e7fc:	0805f1c7 	.word	0x0805f1c7

0805e800 <vPortStoreTaskMPUSettings>:
 805e800:	b480      	push	{r7}
 805e802:	b089      	sub	sp, #36	; 0x24
 805e804:	af00      	add	r7, sp, #0
 805e806:	60f8      	str	r0, [r7, #12]
 805e808:	60b9      	str	r1, [r7, #8]
 805e80a:	607a      	str	r2, [r7, #4]
 805e80c:	603b      	str	r3, [r7, #0]
 805e80e:	2300      	movs	r3, #0
 805e810:	61bb      	str	r3, [r7, #24]
 805e812:	68fb      	ldr	r3, [r7, #12]
 805e814:	22ff      	movs	r2, #255	; 0xff
 805e816:	601a      	str	r2, [r3, #0]
 805e818:	68fb      	ldr	r3, [r7, #12]
 805e81a:	681b      	ldr	r3, [r3, #0]
 805e81c:	f443 6280 	orr.w	r2, r3, #1024	; 0x400
 805e820:	68fb      	ldr	r3, [r7, #12]
 805e822:	601a      	str	r2, [r3, #0]
 805e824:	683b      	ldr	r3, [r7, #0]
 805e826:	2b00      	cmp	r3, #0
 805e828:	d028      	beq.n	805e87c <vPortStoreTaskMPUSettings+0x7c>
 805e82a:	687b      	ldr	r3, [r7, #4]
 805e82c:	617b      	str	r3, [r7, #20]
 805e82e:	683b      	ldr	r3, [r7, #0]
 805e830:	009a      	lsls	r2, r3, #2
 805e832:	687b      	ldr	r3, [r7, #4]
 805e834:	4413      	add	r3, r2
 805e836:	3b01      	subs	r3, #1
 805e838:	613b      	str	r3, [r7, #16]
 805e83a:	4a74      	ldr	r2, [pc, #464]	; (805ea0c <vPortStoreTaskMPUSettings+0x20c>)
 805e83c:	697b      	ldr	r3, [r7, #20]
 805e83e:	4293      	cmp	r3, r2
 805e840:	d30a      	bcc.n	805e858 <vPortStoreTaskMPUSettings+0x58>
 805e842:	4a73      	ldr	r2, [pc, #460]	; (805ea10 <vPortStoreTaskMPUSettings+0x210>)
 805e844:	693b      	ldr	r3, [r7, #16]
 805e846:	4293      	cmp	r3, r2
 805e848:	d806      	bhi.n	805e858 <vPortStoreTaskMPUSettings+0x58>
 805e84a:	68fb      	ldr	r3, [r7, #12]
 805e84c:	2200      	movs	r2, #0
 805e84e:	605a      	str	r2, [r3, #4]
 805e850:	68fb      	ldr	r3, [r7, #12]
 805e852:	2200      	movs	r2, #0
 805e854:	609a      	str	r2, [r3, #8]
 805e856:	e011      	b.n	805e87c <vPortStoreTaskMPUSettings+0x7c>
 805e858:	697b      	ldr	r3, [r7, #20]
 805e85a:	f023 031f 	bic.w	r3, r3, #31
 805e85e:	617b      	str	r3, [r7, #20]
 805e860:	693b      	ldr	r3, [r7, #16]
 805e862:	f023 031f 	bic.w	r3, r3, #31
 805e866:	613b      	str	r3, [r7, #16]
 805e868:	697b      	ldr	r3, [r7, #20]
 805e86a:	f043 0203 	orr.w	r2, r3, #3
 805e86e:	68fb      	ldr	r3, [r7, #12]
 805e870:	605a      	str	r2, [r3, #4]
 805e872:	693b      	ldr	r3, [r7, #16]
 805e874:	f043 0201 	orr.w	r2, r3, #1
 805e878:	68fb      	ldr	r3, [r7, #12]
 805e87a:	609a      	str	r2, [r3, #8]
 805e87c:	2301      	movs	r3, #1
 805e87e:	61fb      	str	r3, [r7, #28]
 805e880:	e0b9      	b.n	805e9f6 <vPortStoreTaskMPUSettings+0x1f6>
 805e882:	68bb      	ldr	r3, [r7, #8]
 805e884:	2b00      	cmp	r3, #0
 805e886:	f000 80a4 	beq.w	805e9d2 <vPortStoreTaskMPUSettings+0x1d2>
 805e88a:	69ba      	ldr	r2, [r7, #24]
 805e88c:	4613      	mov	r3, r2
 805e88e:	005b      	lsls	r3, r3, #1
 805e890:	4413      	add	r3, r2
 805e892:	009b      	lsls	r3, r3, #2
 805e894:	461a      	mov	r2, r3
 805e896:	68bb      	ldr	r3, [r7, #8]
 805e898:	4413      	add	r3, r2
 805e89a:	685b      	ldr	r3, [r3, #4]
 805e89c:	2b00      	cmp	r3, #0
 805e89e:	f000 8098 	beq.w	805e9d2 <vPortStoreTaskMPUSettings+0x1d2>
 805e8a2:	69ba      	ldr	r2, [r7, #24]
 805e8a4:	4613      	mov	r3, r2
 805e8a6:	005b      	lsls	r3, r3, #1
 805e8a8:	4413      	add	r3, r2
 805e8aa:	009b      	lsls	r3, r3, #2
 805e8ac:	461a      	mov	r2, r3
 805e8ae:	68bb      	ldr	r3, [r7, #8]
 805e8b0:	4413      	add	r3, r2
 805e8b2:	681b      	ldr	r3, [r3, #0]
 805e8b4:	f023 031f 	bic.w	r3, r3, #31
 805e8b8:	617b      	str	r3, [r7, #20]
 805e8ba:	69ba      	ldr	r2, [r7, #24]
 805e8bc:	4613      	mov	r3, r2
 805e8be:	005b      	lsls	r3, r3, #1
 805e8c0:	4413      	add	r3, r2
 805e8c2:	009b      	lsls	r3, r3, #2
 805e8c4:	461a      	mov	r2, r3
 805e8c6:	68bb      	ldr	r3, [r7, #8]
 805e8c8:	4413      	add	r3, r2
 805e8ca:	681b      	ldr	r3, [r3, #0]
 805e8cc:	4619      	mov	r1, r3
 805e8ce:	69ba      	ldr	r2, [r7, #24]
 805e8d0:	4613      	mov	r3, r2
 805e8d2:	005b      	lsls	r3, r3, #1
 805e8d4:	4413      	add	r3, r2
 805e8d6:	009b      	lsls	r3, r3, #2
 805e8d8:	461a      	mov	r2, r3
 805e8da:	68bb      	ldr	r3, [r7, #8]
 805e8dc:	4413      	add	r3, r2
 805e8de:	685b      	ldr	r3, [r3, #4]
 805e8e0:	440b      	add	r3, r1
 805e8e2:	3b01      	subs	r3, #1
 805e8e4:	613b      	str	r3, [r7, #16]
 805e8e6:	693b      	ldr	r3, [r7, #16]
 805e8e8:	f023 031f 	bic.w	r3, r3, #31
 805e8ec:	613b      	str	r3, [r7, #16]
 805e8ee:	68fa      	ldr	r2, [r7, #12]
 805e8f0:	69fb      	ldr	r3, [r7, #28]
 805e8f2:	00db      	lsls	r3, r3, #3
 805e8f4:	4413      	add	r3, r2
 805e8f6:	697a      	ldr	r2, [r7, #20]
 805e8f8:	605a      	str	r2, [r3, #4]
 805e8fa:	69ba      	ldr	r2, [r7, #24]
 805e8fc:	4613      	mov	r3, r2
 805e8fe:	005b      	lsls	r3, r3, #1
 805e900:	4413      	add	r3, r2
 805e902:	009b      	lsls	r3, r3, #2
 805e904:	461a      	mov	r2, r3
 805e906:	68bb      	ldr	r3, [r7, #8]
 805e908:	4413      	add	r3, r2
 805e90a:	689b      	ldr	r3, [r3, #8]
 805e90c:	f003 0301 	and.w	r3, r3, #1
 805e910:	2b00      	cmp	r3, #0
 805e912:	d00c      	beq.n	805e92e <vPortStoreTaskMPUSettings+0x12e>
 805e914:	68fa      	ldr	r2, [r7, #12]
 805e916:	69fb      	ldr	r3, [r7, #28]
 805e918:	00db      	lsls	r3, r3, #3
 805e91a:	4413      	add	r3, r2
 805e91c:	685b      	ldr	r3, [r3, #4]
 805e91e:	f043 0206 	orr.w	r2, r3, #6
 805e922:	68f9      	ldr	r1, [r7, #12]
 805e924:	69fb      	ldr	r3, [r7, #28]
 805e926:	00db      	lsls	r3, r3, #3
 805e928:	440b      	add	r3, r1
 805e92a:	605a      	str	r2, [r3, #4]
 805e92c:	e00b      	b.n	805e946 <vPortStoreTaskMPUSettings+0x146>
 805e92e:	68fa      	ldr	r2, [r7, #12]
 805e930:	69fb      	ldr	r3, [r7, #28]
 805e932:	00db      	lsls	r3, r3, #3
 805e934:	4413      	add	r3, r2
 805e936:	685b      	ldr	r3, [r3, #4]
 805e938:	f043 0202 	orr.w	r2, r3, #2
 805e93c:	68f9      	ldr	r1, [r7, #12]
 805e93e:	69fb      	ldr	r3, [r7, #28]
 805e940:	00db      	lsls	r3, r3, #3
 805e942:	440b      	add	r3, r1
 805e944:	605a      	str	r2, [r3, #4]
 805e946:	69ba      	ldr	r2, [r7, #24]
 805e948:	4613      	mov	r3, r2
 805e94a:	005b      	lsls	r3, r3, #1
 805e94c:	4413      	add	r3, r2
 805e94e:	009b      	lsls	r3, r3, #2
 805e950:	461a      	mov	r2, r3
 805e952:	68bb      	ldr	r3, [r7, #8]
 805e954:	4413      	add	r3, r2
 805e956:	689b      	ldr	r3, [r3, #8]
 805e958:	f003 0304 	and.w	r3, r3, #4
 805e95c:	2b00      	cmp	r3, #0
 805e95e:	d00b      	beq.n	805e978 <vPortStoreTaskMPUSettings+0x178>
 805e960:	68fa      	ldr	r2, [r7, #12]
 805e962:	69fb      	ldr	r3, [r7, #28]
 805e964:	00db      	lsls	r3, r3, #3
 805e966:	4413      	add	r3, r2
 805e968:	685b      	ldr	r3, [r3, #4]
 805e96a:	f043 0201 	orr.w	r2, r3, #1
 805e96e:	68f9      	ldr	r1, [r7, #12]
 805e970:	69fb      	ldr	r3, [r7, #28]
 805e972:	00db      	lsls	r3, r3, #3
 805e974:	440b      	add	r3, r1
 805e976:	605a      	str	r2, [r3, #4]
 805e978:	693b      	ldr	r3, [r7, #16]
 805e97a:	f043 0201 	orr.w	r2, r3, #1
 805e97e:	68f9      	ldr	r1, [r7, #12]
 805e980:	69fb      	ldr	r3, [r7, #28]
 805e982:	00db      	lsls	r3, r3, #3
 805e984:	440b      	add	r3, r1
 805e986:	609a      	str	r2, [r3, #8]
 805e988:	69ba      	ldr	r2, [r7, #24]
 805e98a:	4613      	mov	r3, r2
 805e98c:	005b      	lsls	r3, r3, #1
 805e98e:	4413      	add	r3, r2
 805e990:	009b      	lsls	r3, r3, #2
 805e992:	461a      	mov	r2, r3
 805e994:	68bb      	ldr	r3, [r7, #8]
 805e996:	4413      	add	r3, r2
 805e998:	689b      	ldr	r3, [r3, #8]
 805e99a:	f003 0310 	and.w	r3, r3, #16
 805e99e:	2b00      	cmp	r3, #0
 805e9a0:	d00c      	beq.n	805e9bc <vPortStoreTaskMPUSettings+0x1bc>
 805e9a2:	68fa      	ldr	r2, [r7, #12]
 805e9a4:	69fb      	ldr	r3, [r7, #28]
 805e9a6:	00db      	lsls	r3, r3, #3
 805e9a8:	4413      	add	r3, r2
 805e9aa:	689b      	ldr	r3, [r3, #8]
 805e9ac:	f043 0202 	orr.w	r2, r3, #2
 805e9b0:	68f9      	ldr	r1, [r7, #12]
 805e9b2:	69fb      	ldr	r3, [r7, #28]
 805e9b4:	00db      	lsls	r3, r3, #3
 805e9b6:	440b      	add	r3, r1
 805e9b8:	609a      	str	r2, [r3, #8]
 805e9ba:	e016      	b.n	805e9ea <vPortStoreTaskMPUSettings+0x1ea>
 805e9bc:	68fa      	ldr	r2, [r7, #12]
 805e9be:	69fb      	ldr	r3, [r7, #28]
 805e9c0:	00db      	lsls	r3, r3, #3
 805e9c2:	4413      	add	r3, r2
 805e9c4:	689a      	ldr	r2, [r3, #8]
 805e9c6:	68f9      	ldr	r1, [r7, #12]
 805e9c8:	69fb      	ldr	r3, [r7, #28]
 805e9ca:	00db      	lsls	r3, r3, #3
 805e9cc:	440b      	add	r3, r1
 805e9ce:	609a      	str	r2, [r3, #8]
 805e9d0:	e00b      	b.n	805e9ea <vPortStoreTaskMPUSettings+0x1ea>
 805e9d2:	68fa      	ldr	r2, [r7, #12]
 805e9d4:	69fb      	ldr	r3, [r7, #28]
 805e9d6:	00db      	lsls	r3, r3, #3
 805e9d8:	4413      	add	r3, r2
 805e9da:	2200      	movs	r2, #0
 805e9dc:	605a      	str	r2, [r3, #4]
 805e9de:	68fa      	ldr	r2, [r7, #12]
 805e9e0:	69fb      	ldr	r3, [r7, #28]
 805e9e2:	00db      	lsls	r3, r3, #3
 805e9e4:	4413      	add	r3, r2
 805e9e6:	2200      	movs	r2, #0
 805e9e8:	609a      	str	r2, [r3, #8]
 805e9ea:	69bb      	ldr	r3, [r7, #24]
 805e9ec:	3301      	adds	r3, #1
 805e9ee:	61bb      	str	r3, [r7, #24]
 805e9f0:	69fb      	ldr	r3, [r7, #28]
 805e9f2:	3301      	adds	r3, #1
 805e9f4:	61fb      	str	r3, [r7, #28]
 805e9f6:	69fb      	ldr	r3, [r7, #28]
 805e9f8:	2b03      	cmp	r3, #3
 805e9fa:	f67f af42 	bls.w	805e882 <vPortStoreTaskMPUSettings+0x82>
 805e9fe:	bf00      	nop
 805ea00:	bf00      	nop
 805ea02:	3724      	adds	r7, #36	; 0x24
 805ea04:	46bd      	mov	sp, r7
 805ea06:	bc80      	pop	{r7}
 805ea08:	4770      	bx	lr
 805ea0a:	bf00      	nop
 805ea0c:	20000100 	.word	0x20000100
 805ea10:	20003b7f 	.word	0x20003b7f

0805ea14 <xPortIsAuthorizedToAccessBuffer>:
 805ea14:	b580      	push	{r7, lr}
 805ea16:	b08a      	sub	sp, #40	; 0x28
 805ea18:	af00      	add	r7, sp, #0
 805ea1a:	60f8      	str	r0, [r7, #12]
 805ea1c:	60b9      	str	r1, [r7, #8]
 805ea1e:	607a      	str	r2, [r7, #4]
 805ea20:	2300      	movs	r3, #0
 805ea22:	623b      	str	r3, [r7, #32]
 805ea24:	2000      	movs	r0, #0
 805ea26:	4b34      	ldr	r3, [pc, #208]	; (805eaf8 <xPortIsAuthorizedToAccessBuffer+0xe4>)
 805ea28:	4798      	blx	r3
 805ea2a:	61f8      	str	r0, [r7, #28]
 805ea2c:	69fb      	ldr	r3, [r7, #28]
 805ea2e:	6f9b      	ldr	r3, [r3, #120]	; 0x78
 805ea30:	f003 0302 	and.w	r3, r3, #2
 805ea34:	2b00      	cmp	r3, #0
 805ea36:	d002      	beq.n	805ea3e <xPortIsAuthorizedToAccessBuffer+0x2a>
 805ea38:	2301      	movs	r3, #1
 805ea3a:	623b      	str	r3, [r7, #32]
 805ea3c:	e056      	b.n	805eaec <xPortIsAuthorizedToAccessBuffer+0xd8>
 805ea3e:	68bb      	ldr	r3, [r7, #8]
 805ea40:	425a      	negs	r2, r3
 805ea42:	68fb      	ldr	r3, [r7, #12]
 805ea44:	429a      	cmp	r2, r3
 805ea46:	d351      	bcc.n	805eaec <xPortIsAuthorizedToAccessBuffer+0xd8>
 805ea48:	68fb      	ldr	r3, [r7, #12]
 805ea4a:	61bb      	str	r3, [r7, #24]
 805ea4c:	68fa      	ldr	r2, [r7, #12]
 805ea4e:	68bb      	ldr	r3, [r7, #8]
 805ea50:	4413      	add	r3, r2
 805ea52:	3b01      	subs	r3, #1
 805ea54:	617b      	str	r3, [r7, #20]
 805ea56:	2300      	movs	r3, #0
 805ea58:	627b      	str	r3, [r7, #36]	; 0x24
 805ea5a:	e044      	b.n	805eae6 <xPortIsAuthorizedToAccessBuffer+0xd2>
 805ea5c:	69fa      	ldr	r2, [r7, #28]
 805ea5e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805ea60:	00db      	lsls	r3, r3, #3
 805ea62:	4413      	add	r3, r2
 805ea64:	689b      	ldr	r3, [r3, #8]
 805ea66:	f003 0301 	and.w	r3, r3, #1
 805ea6a:	2b00      	cmp	r3, #0
 805ea6c:	d038      	beq.n	805eae0 <xPortIsAuthorizedToAccessBuffer+0xcc>
 805ea6e:	69fa      	ldr	r2, [r7, #28]
 805ea70:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805ea72:	00db      	lsls	r3, r3, #3
 805ea74:	4413      	add	r3, r2
 805ea76:	685b      	ldr	r3, [r3, #4]
 805ea78:	f023 031f 	bic.w	r3, r3, #31
 805ea7c:	69ba      	ldr	r2, [r7, #24]
 805ea7e:	429a      	cmp	r2, r3
 805ea80:	d32e      	bcc.n	805eae0 <xPortIsAuthorizedToAccessBuffer+0xcc>
 805ea82:	69fa      	ldr	r2, [r7, #28]
 805ea84:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805ea86:	00db      	lsls	r3, r3, #3
 805ea88:	4413      	add	r3, r2
 805ea8a:	689b      	ldr	r3, [r3, #8]
 805ea8c:	f043 031f 	orr.w	r3, r3, #31
 805ea90:	69ba      	ldr	r2, [r7, #24]
 805ea92:	429a      	cmp	r2, r3
 805ea94:	d824      	bhi.n	805eae0 <xPortIsAuthorizedToAccessBuffer+0xcc>
 805ea96:	69fa      	ldr	r2, [r7, #28]
 805ea98:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805ea9a:	00db      	lsls	r3, r3, #3
 805ea9c:	4413      	add	r3, r2
 805ea9e:	685b      	ldr	r3, [r3, #4]
 805eaa0:	f023 031f 	bic.w	r3, r3, #31
 805eaa4:	697a      	ldr	r2, [r7, #20]
 805eaa6:	429a      	cmp	r2, r3
 805eaa8:	d31a      	bcc.n	805eae0 <xPortIsAuthorizedToAccessBuffer+0xcc>
 805eaaa:	69fa      	ldr	r2, [r7, #28]
 805eaac:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805eaae:	00db      	lsls	r3, r3, #3
 805eab0:	4413      	add	r3, r2
 805eab2:	689b      	ldr	r3, [r3, #8]
 805eab4:	f043 031f 	orr.w	r3, r3, #31
 805eab8:	697a      	ldr	r2, [r7, #20]
 805eaba:	429a      	cmp	r2, r3
 805eabc:	d810      	bhi.n	805eae0 <xPortIsAuthorizedToAccessBuffer+0xcc>
 805eabe:	69fa      	ldr	r2, [r7, #28]
 805eac0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805eac2:	00db      	lsls	r3, r3, #3
 805eac4:	4413      	add	r3, r2
 805eac6:	685b      	ldr	r3, [r3, #4]
 805eac8:	4618      	mov	r0, r3
 805eaca:	f000 f821 	bl	805eb10 <prvGetRegionAccessPermissions>
 805eace:	4602      	mov	r2, r0
 805ead0:	687b      	ldr	r3, [r7, #4]
 805ead2:	4013      	ands	r3, r2
 805ead4:	687a      	ldr	r2, [r7, #4]
 805ead6:	429a      	cmp	r2, r3
 805ead8:	d102      	bne.n	805eae0 <xPortIsAuthorizedToAccessBuffer+0xcc>
 805eada:	2301      	movs	r3, #1
 805eadc:	623b      	str	r3, [r7, #32]
 805eade:	e005      	b.n	805eaec <xPortIsAuthorizedToAccessBuffer+0xd8>
 805eae0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805eae2:	3301      	adds	r3, #1
 805eae4:	627b      	str	r3, [r7, #36]	; 0x24
 805eae6:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 805eae8:	2b03      	cmp	r3, #3
 805eaea:	d9b7      	bls.n	805ea5c <xPortIsAuthorizedToAccessBuffer+0x48>
 805eaec:	6a3b      	ldr	r3, [r7, #32]
 805eaee:	4618      	mov	r0, r3
 805eaf0:	3728      	adds	r7, #40	; 0x28
 805eaf2:	46bd      	mov	sp, r7
 805eaf4:	bd80      	pop	{r7, pc}
 805eaf6:	bf00      	nop
 805eaf8:	08057a59 	.word	0x08057a59

0805eafc <xPortIsAuthorizedToAccessKernelObject>:
 805eafc:	b480      	push	{r7}
 805eafe:	b083      	sub	sp, #12
 805eb00:	af00      	add	r7, sp, #0
 805eb02:	6078      	str	r0, [r7, #4]
 805eb04:	2301      	movs	r3, #1
 805eb06:	4618      	mov	r0, r3
 805eb08:	370c      	adds	r7, #12
 805eb0a:	46bd      	mov	sp, r7
 805eb0c:	bc80      	pop	{r7}
 805eb0e:	4770      	bx	lr

0805eb10 <prvGetRegionAccessPermissions>:
 805eb10:	b480      	push	{r7}
 805eb12:	b085      	sub	sp, #20
 805eb14:	af00      	add	r7, sp, #0
 805eb16:	6078      	str	r0, [r7, #4]
 805eb18:	2300      	movs	r3, #0
 805eb1a:	60fb      	str	r3, [r7, #12]
 805eb1c:	687b      	ldr	r3, [r7, #4]
 805eb1e:	f003 0306 	and.w	r3, r3, #6
 805eb22:	2b06      	cmp	r3, #6
 805eb24:	d101      	bne.n	805eb2a <prvGetRegionAccessPermissions+0x1a>
 805eb26:	2301      	movs	r3, #1
 805eb28:	60fb      	str	r3, [r7, #12]
 805eb2a:	687b      	ldr	r3, [r7, #4]
 805eb2c:	f003 0306 	and.w	r3, r3, #6
 805eb30:	2b02      	cmp	r3, #2
 805eb32:	d101      	bne.n	805eb38 <prvGetRegionAccessPermissions+0x28>
 805eb34:	2303      	movs	r3, #3
 805eb36:	60fb      	str	r3, [r7, #12]
 805eb38:	68fb      	ldr	r3, [r7, #12]
 805eb3a:	4618      	mov	r0, r3
 805eb3c:	3714      	adds	r7, #20
 805eb3e:	46bd      	mov	sp, r7
 805eb40:	bc80      	pop	{r7}
 805eb42:	4770      	bx	lr

0805eb44 <prvSetupMPU>:
 805eb44:	b580      	push	{r7, lr}
 805eb46:	af00      	add	r7, sp, #0
 805eb48:	4b35      	ldr	r3, [pc, #212]	; (805ec20 <prvSetupMPU+0xdc>)
 805eb4a:	681b      	ldr	r3, [r3, #0]
 805eb4c:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
 805eb50:	d002      	beq.n	805eb58 <prvSetupMPU+0x14>
 805eb52:	4b34      	ldr	r3, [pc, #208]	; (805ec24 <prvSetupMPU+0xe0>)
 805eb54:	4798      	blx	r3
 805eb56:	e7fe      	b.n	805eb56 <prvSetupMPU+0x12>
 805eb58:	4b31      	ldr	r3, [pc, #196]	; (805ec20 <prvSetupMPU+0xdc>)
 805eb5a:	681b      	ldr	r3, [r3, #0]
 805eb5c:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
 805eb60:	d15b      	bne.n	805ec1a <prvSetupMPU+0xd6>
 805eb62:	4b31      	ldr	r3, [pc, #196]	; (805ec28 <prvSetupMPU+0xe4>)
 805eb64:	681b      	ldr	r3, [r3, #0]
 805eb66:	4a30      	ldr	r2, [pc, #192]	; (805ec28 <prvSetupMPU+0xe4>)
 805eb68:	f043 03ff 	orr.w	r3, r3, #255	; 0xff
 805eb6c:	6013      	str	r3, [r2, #0]
 805eb6e:	4b2e      	ldr	r3, [pc, #184]	; (805ec28 <prvSetupMPU+0xe4>)
 805eb70:	681b      	ldr	r3, [r3, #0]
 805eb72:	4a2d      	ldr	r2, [pc, #180]	; (805ec28 <prvSetupMPU+0xe4>)
 805eb74:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 805eb78:	6013      	str	r3, [r2, #0]
 805eb7a:	4b2c      	ldr	r3, [pc, #176]	; (805ec2c <prvSetupMPU+0xe8>)
 805eb7c:	2200      	movs	r2, #0
 805eb7e:	601a      	str	r2, [r3, #0]
 805eb80:	4b2b      	ldr	r3, [pc, #172]	; (805ec30 <prvSetupMPU+0xec>)
 805eb82:	f023 031f 	bic.w	r3, r3, #31
 805eb86:	4a2b      	ldr	r2, [pc, #172]	; (805ec34 <prvSetupMPU+0xf0>)
 805eb88:	f043 0304 	orr.w	r3, r3, #4
 805eb8c:	6013      	str	r3, [r2, #0]
 805eb8e:	4b2a      	ldr	r3, [pc, #168]	; (805ec38 <prvSetupMPU+0xf4>)
 805eb90:	f023 031f 	bic.w	r3, r3, #31
 805eb94:	4a29      	ldr	r2, [pc, #164]	; (805ec3c <prvSetupMPU+0xf8>)
 805eb96:	f043 0301 	orr.w	r3, r3, #1
 805eb9a:	6013      	str	r3, [r2, #0]
 805eb9c:	4b23      	ldr	r3, [pc, #140]	; (805ec2c <prvSetupMPU+0xe8>)
 805eb9e:	2201      	movs	r2, #1
 805eba0:	601a      	str	r2, [r3, #0]
 805eba2:	4b27      	ldr	r3, [pc, #156]	; (805ec40 <prvSetupMPU+0xfc>)
 805eba4:	f023 031f 	bic.w	r3, r3, #31
 805eba8:	4a22      	ldr	r2, [pc, #136]	; (805ec34 <prvSetupMPU+0xf0>)
 805ebaa:	f043 0306 	orr.w	r3, r3, #6
 805ebae:	6013      	str	r3, [r2, #0]
 805ebb0:	4b24      	ldr	r3, [pc, #144]	; (805ec44 <prvSetupMPU+0x100>)
 805ebb2:	f023 031f 	bic.w	r3, r3, #31
 805ebb6:	4a21      	ldr	r2, [pc, #132]	; (805ec3c <prvSetupMPU+0xf8>)
 805ebb8:	f043 0301 	orr.w	r3, r3, #1
 805ebbc:	6013      	str	r3, [r2, #0]
 805ebbe:	4b1b      	ldr	r3, [pc, #108]	; (805ec2c <prvSetupMPU+0xe8>)
 805ebc0:	2202      	movs	r2, #2
 805ebc2:	601a      	str	r2, [r3, #0]
 805ebc4:	4b20      	ldr	r3, [pc, #128]	; (805ec48 <prvSetupMPU+0x104>)
 805ebc6:	f023 031f 	bic.w	r3, r3, #31
 805ebca:	4a1a      	ldr	r2, [pc, #104]	; (805ec34 <prvSetupMPU+0xf0>)
 805ebcc:	f043 0306 	orr.w	r3, r3, #6
 805ebd0:	6013      	str	r3, [r2, #0]
 805ebd2:	4b1e      	ldr	r3, [pc, #120]	; (805ec4c <prvSetupMPU+0x108>)
 805ebd4:	f023 031f 	bic.w	r3, r3, #31
 805ebd8:	4a18      	ldr	r2, [pc, #96]	; (805ec3c <prvSetupMPU+0xf8>)
 805ebda:	f043 0301 	orr.w	r3, r3, #1
 805ebde:	6013      	str	r3, [r2, #0]
 805ebe0:	4b12      	ldr	r3, [pc, #72]	; (805ec2c <prvSetupMPU+0xe8>)
 805ebe2:	2203      	movs	r2, #3
 805ebe4:	601a      	str	r2, [r3, #0]
 805ebe6:	4b1a      	ldr	r3, [pc, #104]	; (805ec50 <prvSetupMPU+0x10c>)
 805ebe8:	f023 031f 	bic.w	r3, r3, #31
 805ebec:	4a11      	ldr	r2, [pc, #68]	; (805ec34 <prvSetupMPU+0xf0>)
 805ebee:	f043 0301 	orr.w	r3, r3, #1
 805ebf2:	6013      	str	r3, [r2, #0]
 805ebf4:	4b17      	ldr	r3, [pc, #92]	; (805ec54 <prvSetupMPU+0x110>)
 805ebf6:	f023 031f 	bic.w	r3, r3, #31
 805ebfa:	4a10      	ldr	r2, [pc, #64]	; (805ec3c <prvSetupMPU+0xf8>)
 805ebfc:	f043 0301 	orr.w	r3, r3, #1
 805ec00:	6013      	str	r3, [r2, #0]
 805ec02:	4b15      	ldr	r3, [pc, #84]	; (805ec58 <prvSetupMPU+0x114>)
 805ec04:	681b      	ldr	r3, [r3, #0]
 805ec06:	4a14      	ldr	r2, [pc, #80]	; (805ec58 <prvSetupMPU+0x114>)
 805ec08:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 805ec0c:	6013      	str	r3, [r2, #0]
 805ec0e:	4b13      	ldr	r3, [pc, #76]	; (805ec5c <prvSetupMPU+0x118>)
 805ec10:	681b      	ldr	r3, [r3, #0]
 805ec12:	4a12      	ldr	r2, [pc, #72]	; (805ec5c <prvSetupMPU+0x118>)
 805ec14:	f043 0305 	orr.w	r3, r3, #5
 805ec18:	6013      	str	r3, [r2, #0]
 805ec1a:	bf00      	nop
 805ec1c:	bd80      	pop	{r7, pc}
 805ec1e:	bf00      	nop
 805ec20:	e000ed90 	.word	0xe000ed90
 805ec24:	0805f1c7 	.word	0x0805f1c7
 805ec28:	e000edc0 	.word	0xe000edc0
 805ec2c:	e000ed98 	.word	0xe000ed98
 805ec30:	08055220 	.word	0x08055220
 805ec34:	e000ed9c 	.word	0xe000ed9c
 805ec38:	0805f2df 	.word	0x0805f2df
 805ec3c:	e000eda0 	.word	0xe000eda0
 805ec40:	0805fa60 	.word	0x0805fa60
 805ec44:	08060cbf 	.word	0x08060cbf
 805ec48:	0805f2e0 	.word	0x0805f2e0
 805ec4c:	0805fa5f 	.word	0x0805fa5f
 805ec50:	20000100 	.word	0x20000100
 805ec54:	20003b7f 	.word	0x20003b7f
 805ec58:	e000ed24 	.word	0xe000ed24
 805ec5c:	e000ed94 	.word	0xe000ed94

0805ec60 <vPortSetupTimerInterrupt>:
 805ec60:	b480      	push	{r7}
 805ec62:	af00      	add	r7, sp, #0
 805ec64:	4b0a      	ldr	r3, [pc, #40]	; (805ec90 <vPortSetupTimerInterrupt+0x30>)
 805ec66:	2204      	movs	r2, #4
 805ec68:	601a      	str	r2, [r3, #0]
 805ec6a:	4b0a      	ldr	r3, [pc, #40]	; (805ec94 <vPortSetupTimerInterrupt+0x34>)
 805ec6c:	2200      	movs	r2, #0
 805ec6e:	601a      	str	r2, [r3, #0]
 805ec70:	4b09      	ldr	r3, [pc, #36]	; (805ec98 <vPortSetupTimerInterrupt+0x38>)
 805ec72:	681b      	ldr	r3, [r3, #0]
 805ec74:	4a09      	ldr	r2, [pc, #36]	; (805ec9c <vPortSetupTimerInterrupt+0x3c>)
 805ec76:	fba2 2303 	umull	r2, r3, r2, r3
 805ec7a:	099b      	lsrs	r3, r3, #6
 805ec7c:	4a08      	ldr	r2, [pc, #32]	; (805eca0 <vPortSetupTimerInterrupt+0x40>)
 805ec7e:	3b01      	subs	r3, #1
 805ec80:	6013      	str	r3, [r2, #0]
 805ec82:	4b03      	ldr	r3, [pc, #12]	; (805ec90 <vPortSetupTimerInterrupt+0x30>)
 805ec84:	2207      	movs	r2, #7
 805ec86:	601a      	str	r2, [r3, #0]
 805ec88:	bf00      	nop
 805ec8a:	46bd      	mov	sp, r7
 805ec8c:	bc80      	pop	{r7}
 805ec8e:	4770      	bx	lr
 805ec90:	e000e010 	.word	0xe000e010
 805ec94:	e000e018 	.word	0xe000e018
 805ec98:	20003b88 	.word	0x20003b88
 805ec9c:	10624dd3 	.word	0x10624dd3
 805eca0:	e000e014 	.word	0xe000e014

0805eca4 <vPortYield>:
 805eca4:	b480      	push	{r7}
 805eca6:	af00      	add	r7, sp, #0
 805eca8:	4b05      	ldr	r3, [pc, #20]	; (805ecc0 <vPortYield+0x1c>)
 805ecaa:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 805ecae:	601a      	str	r2, [r3, #0]
 805ecb0:	f3bf 8f4f 	dsb	sy
 805ecb4:	f3bf 8f6f 	isb	sy
 805ecb8:	bf00      	nop
 805ecba:	46bd      	mov	sp, r7
 805ecbc:	bc80      	pop	{r7}
 805ecbe:	4770      	bx	lr
 805ecc0:	e000ed04 	.word	0xe000ed04

0805ecc4 <vPortEnterCritical>:
 805ecc4:	b580      	push	{r7, lr}
 805ecc6:	af00      	add	r7, sp, #0
 805ecc8:	4b06      	ldr	r3, [pc, #24]	; (805ece4 <vPortEnterCritical+0x20>)
 805ecca:	4798      	blx	r3
 805eccc:	4b06      	ldr	r3, [pc, #24]	; (805ece8 <vPortEnterCritical+0x24>)
 805ecce:	681b      	ldr	r3, [r3, #0]
 805ecd0:	3301      	adds	r3, #1
 805ecd2:	4a05      	ldr	r2, [pc, #20]	; (805ece8 <vPortEnterCritical+0x24>)
 805ecd4:	6013      	str	r3, [r2, #0]
 805ecd6:	f3bf 8f4f 	dsb	sy
 805ecda:	f3bf 8f6f 	isb	sy
 805ecde:	bf00      	nop
 805ece0:	bd80      	pop	{r7, pc}
 805ece2:	bf00      	nop
 805ece4:	0805f1c7 	.word	0x0805f1c7
 805ece8:	20003b78 	.word	0x20003b78

0805ecec <vPortExitCritical>:
 805ecec:	b580      	push	{r7, lr}
 805ecee:	af00      	add	r7, sp, #0
 805ecf0:	4b0a      	ldr	r3, [pc, #40]	; (805ed1c <vPortExitCritical+0x30>)
 805ecf2:	681b      	ldr	r3, [r3, #0]
 805ecf4:	2b00      	cmp	r3, #0
 805ecf6:	d102      	bne.n	805ecfe <vPortExitCritical+0x12>
 805ecf8:	4b09      	ldr	r3, [pc, #36]	; (805ed20 <vPortExitCritical+0x34>)
 805ecfa:	4798      	blx	r3
 805ecfc:	e7fe      	b.n	805ecfc <vPortExitCritical+0x10>
 805ecfe:	4b07      	ldr	r3, [pc, #28]	; (805ed1c <vPortExitCritical+0x30>)
 805ed00:	681b      	ldr	r3, [r3, #0]
 805ed02:	3b01      	subs	r3, #1
 805ed04:	4a05      	ldr	r2, [pc, #20]	; (805ed1c <vPortExitCritical+0x30>)
 805ed06:	6013      	str	r3, [r2, #0]
 805ed08:	4b04      	ldr	r3, [pc, #16]	; (805ed1c <vPortExitCritical+0x30>)
 805ed0a:	681b      	ldr	r3, [r3, #0]
 805ed0c:	2b00      	cmp	r3, #0
 805ed0e:	d102      	bne.n	805ed16 <vPortExitCritical+0x2a>
 805ed10:	2000      	movs	r0, #0
 805ed12:	4b04      	ldr	r3, [pc, #16]	; (805ed24 <vPortExitCritical+0x38>)
 805ed14:	4798      	blx	r3
 805ed16:	bf00      	nop
 805ed18:	bd80      	pop	{r7, pc}
 805ed1a:	bf00      	nop
 805ed1c:	20003b78 	.word	0x20003b78
 805ed20:	0805f1c7 	.word	0x0805f1c7
 805ed24:	0805f1e1 	.word	0x0805f1e1

0805ed28 <SysTick_Handler>:
 805ed28:	b580      	push	{r7, lr}
 805ed2a:	b082      	sub	sp, #8
 805ed2c:	af00      	add	r7, sp, #0
 805ed2e:	4b09      	ldr	r3, [pc, #36]	; (805ed54 <SysTick_Handler+0x2c>)
 805ed30:	4798      	blx	r3
 805ed32:	6078      	str	r0, [r7, #4]
 805ed34:	4b08      	ldr	r3, [pc, #32]	; (805ed58 <SysTick_Handler+0x30>)
 805ed36:	4798      	blx	r3
 805ed38:	4603      	mov	r3, r0
 805ed3a:	2b00      	cmp	r3, #0
 805ed3c:	d003      	beq.n	805ed46 <SysTick_Handler+0x1e>
 805ed3e:	4b07      	ldr	r3, [pc, #28]	; (805ed5c <SysTick_Handler+0x34>)
 805ed40:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 805ed44:	601a      	str	r2, [r3, #0]
 805ed46:	6878      	ldr	r0, [r7, #4]
 805ed48:	4b05      	ldr	r3, [pc, #20]	; (805ed60 <SysTick_Handler+0x38>)
 805ed4a:	4798      	blx	r3
 805ed4c:	bf00      	nop
 805ed4e:	3708      	adds	r7, #8
 805ed50:	46bd      	mov	sp, r7
 805ed52:	bd80      	pop	{r7, pc}
 805ed54:	0805f1c7 	.word	0x0805f1c7
 805ed58:	08056d29 	.word	0x08056d29
 805ed5c:	e000ed04 	.word	0xe000ed04
 805ed60:	0805f1e1 	.word	0x0805f1e1

0805ed64 <vPortSVCHandler_C>:
 805ed64:	b580      	push	{r7, lr}
 805ed66:	b084      	sub	sp, #16
 805ed68:	af00      	add	r7, sp, #0
 805ed6a:	6078      	str	r0, [r7, #4]
 805ed6c:	687b      	ldr	r3, [r7, #4]
 805ed6e:	699b      	ldr	r3, [r3, #24]
 805ed70:	60fb      	str	r3, [r7, #12]
 805ed72:	68fb      	ldr	r3, [r7, #12]
 805ed74:	3b02      	subs	r3, #2
 805ed76:	781b      	ldrb	r3, [r3, #0]
 805ed78:	72fb      	strb	r3, [r7, #11]
 805ed7a:	7afb      	ldrb	r3, [r7, #11]
 805ed7c:	2b02      	cmp	r3, #2
 805ed7e:	d002      	beq.n	805ed86 <vPortSVCHandler_C+0x22>
 805ed80:	2b07      	cmp	r3, #7
 805ed82:	d003      	beq.n	805ed8c <vPortSVCHandler_C+0x28>
 805ed84:	e005      	b.n	805ed92 <vPortSVCHandler_C+0x2e>
 805ed86:	4b06      	ldr	r3, [pc, #24]	; (805eda0 <vPortSVCHandler_C+0x3c>)
 805ed88:	4798      	blx	r3
 805ed8a:	e005      	b.n	805ed98 <vPortSVCHandler_C+0x34>
 805ed8c:	f7ff ff8a 	bl	805eca4 <vPortYield>
 805ed90:	e002      	b.n	805ed98 <vPortSVCHandler_C+0x34>
 805ed92:	4b04      	ldr	r3, [pc, #16]	; (805eda4 <vPortSVCHandler_C+0x40>)
 805ed94:	4798      	blx	r3
 805ed96:	e7fe      	b.n	805ed96 <vPortSVCHandler_C+0x32>
 805ed98:	bf00      	nop
 805ed9a:	3710      	adds	r7, #16
 805ed9c:	46bd      	mov	sp, r7
 805ed9e:	bd80      	pop	{r7, pc}
 805eda0:	0805f111 	.word	0x0805f111
 805eda4:	0805f1c7 	.word	0x0805f1c7

0805eda8 <vSystemCallEnter>:
 805eda8:	b580      	push	{r7, lr}
 805edaa:	b088      	sub	sp, #32
 805edac:	af00      	add	r7, sp, #0
 805edae:	6078      	str	r0, [r7, #4]
 805edb0:	6039      	str	r1, [r7, #0]
 805edb2:	687b      	ldr	r3, [r7, #4]
 805edb4:	699b      	ldr	r3, [r3, #24]
 805edb6:	61bb      	str	r3, [r7, #24]
 805edb8:	4a3a      	ldr	r2, [pc, #232]	; (805eea4 <vSystemCallEnter+0xfc>)
 805edba:	69bb      	ldr	r3, [r7, #24]
 805edbc:	4293      	cmp	r3, r2
 805edbe:	d36c      	bcc.n	805ee9a <vSystemCallEnter+0xf2>
 805edc0:	4a39      	ldr	r2, [pc, #228]	; (805eea8 <vSystemCallEnter+0x100>)
 805edc2:	69bb      	ldr	r3, [r7, #24]
 805edc4:	4293      	cmp	r3, r2
 805edc6:	d868      	bhi.n	805ee9a <vSystemCallEnter+0xf2>
 805edc8:	4b38      	ldr	r3, [pc, #224]	; (805eeac <vSystemCallEnter+0x104>)
 805edca:	681b      	ldr	r3, [r3, #0]
 805edcc:	4618      	mov	r0, r3
 805edce:	4b38      	ldr	r3, [pc, #224]	; (805eeb0 <vSystemCallEnter+0x108>)
 805edd0:	4798      	blx	r3
 805edd2:	6178      	str	r0, [r7, #20]
 805edd4:	697b      	ldr	r3, [r7, #20]
 805edd6:	f8d3 327c 	ldr.w	r3, [r3, #636]	; 0x27c
 805edda:	613b      	str	r3, [r7, #16]
 805eddc:	697b      	ldr	r3, [r7, #20]
 805edde:	f8d3 3284 	ldr.w	r3, [r3, #644]	; 0x284
 805ede2:	2b00      	cmp	r3, #0
 805ede4:	d002      	beq.n	805edec <vSystemCallEnter+0x44>
 805ede6:	4b33      	ldr	r3, [pc, #204]	; (805eeb4 <vSystemCallEnter+0x10c>)
 805ede8:	4798      	blx	r3
 805edea:	e7fe      	b.n	805edea <vSystemCallEnter+0x42>
 805edec:	2308      	movs	r3, #8
 805edee:	60fb      	str	r3, [r7, #12]
 805edf0:	68fb      	ldr	r3, [r7, #12]
 805edf2:	009b      	lsls	r3, r3, #2
 805edf4:	425b      	negs	r3, r3
 805edf6:	693a      	ldr	r2, [r7, #16]
 805edf8:	4413      	add	r3, r2
 805edfa:	613b      	str	r3, [r7, #16]
 805edfc:	2300      	movs	r3, #0
 805edfe:	61fb      	str	r3, [r7, #28]
 805ee00:	e00c      	b.n	805ee1c <vSystemCallEnter+0x74>
 805ee02:	69fb      	ldr	r3, [r7, #28]
 805ee04:	009b      	lsls	r3, r3, #2
 805ee06:	687a      	ldr	r2, [r7, #4]
 805ee08:	441a      	add	r2, r3
 805ee0a:	69fb      	ldr	r3, [r7, #28]
 805ee0c:	009b      	lsls	r3, r3, #2
 805ee0e:	6939      	ldr	r1, [r7, #16]
 805ee10:	440b      	add	r3, r1
 805ee12:	6812      	ldr	r2, [r2, #0]
 805ee14:	601a      	str	r2, [r3, #0]
 805ee16:	69fb      	ldr	r3, [r7, #28]
 805ee18:	3301      	adds	r3, #1
 805ee1a:	61fb      	str	r3, [r7, #28]
 805ee1c:	69fa      	ldr	r2, [r7, #28]
 805ee1e:	68fb      	ldr	r3, [r7, #12]
 805ee20:	429a      	cmp	r2, r3
 805ee22:	d3ee      	bcc.n	805ee02 <vSystemCallEnter+0x5a>
 805ee24:	687b      	ldr	r3, [r7, #4]
 805ee26:	695a      	ldr	r2, [r3, #20]
 805ee28:	697b      	ldr	r3, [r7, #20]
 805ee2a:	f8c3 2288 	str.w	r2, [r3, #648]	; 0x288
 805ee2e:	f3ef 820b 	mrs	r2, PSPLIM
 805ee32:	697b      	ldr	r3, [r7, #20]
 805ee34:	f8c3 228c 	str.w	r2, [r3, #652]	; 0x28c
 805ee38:	693b      	ldr	r3, [r7, #16]
 805ee3a:	f383 8809 	msr	PSP, r3
 805ee3e:	697b      	ldr	r3, [r7, #20]
 805ee40:	f8d3 3280 	ldr.w	r3, [r3, #640]	; 0x280
 805ee44:	f383 880b 	msr	PSPLIM, r3
 805ee48:	68fb      	ldr	r3, [r7, #12]
 805ee4a:	009b      	lsls	r3, r3, #2
 805ee4c:	687a      	ldr	r2, [r7, #4]
 805ee4e:	441a      	add	r2, r3
 805ee50:	697b      	ldr	r3, [r7, #20]
 805ee52:	f8c3 2284 	str.w	r2, [r3, #644]	; 0x284
 805ee56:	687b      	ldr	r3, [r7, #4]
 805ee58:	331c      	adds	r3, #28
 805ee5a:	681b      	ldr	r3, [r3, #0]
 805ee5c:	f403 7300 	and.w	r3, r3, #512	; 0x200
 805ee60:	2b00      	cmp	r3, #0
 805ee62:	d006      	beq.n	805ee72 <vSystemCallEnter+0xca>
 805ee64:	697b      	ldr	r3, [r7, #20]
 805ee66:	6f9b      	ldr	r3, [r3, #120]	; 0x78
 805ee68:	f043 0201 	orr.w	r2, r3, #1
 805ee6c:	697b      	ldr	r3, [r7, #20]
 805ee6e:	679a      	str	r2, [r3, #120]	; 0x78
 805ee70:	e005      	b.n	805ee7e <vSystemCallEnter+0xd6>
 805ee72:	697b      	ldr	r3, [r7, #20]
 805ee74:	6f9b      	ldr	r3, [r3, #120]	; 0x78
 805ee76:	f023 0201 	bic.w	r2, r3, #1
 805ee7a:	697b      	ldr	r3, [r7, #20]
 805ee7c:	679a      	str	r2, [r3, #120]	; 0x78
 805ee7e:	693b      	ldr	r3, [r7, #16]
 805ee80:	331c      	adds	r3, #28
 805ee82:	681a      	ldr	r2, [r3, #0]
 805ee84:	693b      	ldr	r3, [r7, #16]
 805ee86:	331c      	adds	r3, #28
 805ee88:	f422 7200 	bic.w	r2, r2, #512	; 0x200
 805ee8c:	601a      	str	r2, [r3, #0]
 805ee8e:	f3ef 8014 	mrs	r0, CONTROL
 805ee92:	2101      	movs	r1, #1
 805ee94:	4388      	bics	r0, r1
 805ee96:	f380 8814 	msr	CONTROL, r0
 805ee9a:	bf00      	nop
 805ee9c:	3720      	adds	r7, #32
 805ee9e:	46bd      	mov	sp, r7
 805eea0:	bd80      	pop	{r7, pc}
 805eea2:	bf00      	nop
 805eea4:	0805f2e0 	.word	0x0805f2e0
 805eea8:	0805fa5f 	.word	0x0805fa5f
 805eeac:	20000100 	.word	0x20000100
 805eeb0:	08057a59 	.word	0x08057a59
 805eeb4:	0805f1c7 	.word	0x0805f1c7

0805eeb8 <vSystemCallEnter_1>:
 805eeb8:	b580      	push	{r7, lr}
 805eeba:	b088      	sub	sp, #32
 805eebc:	af00      	add	r7, sp, #0
 805eebe:	6078      	str	r0, [r7, #4]
 805eec0:	6039      	str	r1, [r7, #0]
 805eec2:	687b      	ldr	r3, [r7, #4]
 805eec4:	699b      	ldr	r3, [r3, #24]
 805eec6:	61bb      	str	r3, [r7, #24]
 805eec8:	4a45      	ldr	r2, [pc, #276]	; (805efe0 <vSystemCallEnter_1+0x128>)
 805eeca:	69bb      	ldr	r3, [r7, #24]
 805eecc:	4293      	cmp	r3, r2
 805eece:	f0c0 8083 	bcc.w	805efd8 <vSystemCallEnter_1+0x120>
 805eed2:	4a44      	ldr	r2, [pc, #272]	; (805efe4 <vSystemCallEnter_1+0x12c>)
 805eed4:	69bb      	ldr	r3, [r7, #24]
 805eed6:	4293      	cmp	r3, r2
 805eed8:	d87e      	bhi.n	805efd8 <vSystemCallEnter_1+0x120>
 805eeda:	4b43      	ldr	r3, [pc, #268]	; (805efe8 <vSystemCallEnter_1+0x130>)
 805eedc:	681b      	ldr	r3, [r3, #0]
 805eede:	4618      	mov	r0, r3
 805eee0:	4b42      	ldr	r3, [pc, #264]	; (805efec <vSystemCallEnter_1+0x134>)
 805eee2:	4798      	blx	r3
 805eee4:	6178      	str	r0, [r7, #20]
 805eee6:	697b      	ldr	r3, [r7, #20]
 805eee8:	f8d3 327c 	ldr.w	r3, [r3, #636]	; 0x27c
 805eeec:	613b      	str	r3, [r7, #16]
 805eeee:	697b      	ldr	r3, [r7, #20]
 805eef0:	f8d3 3284 	ldr.w	r3, [r3, #644]	; 0x284
 805eef4:	2b00      	cmp	r3, #0
 805eef6:	d002      	beq.n	805eefe <vSystemCallEnter_1+0x46>
 805eef8:	4b3d      	ldr	r3, [pc, #244]	; (805eff0 <vSystemCallEnter_1+0x138>)
 805eefa:	4798      	blx	r3
 805eefc:	e7fe      	b.n	805eefc <vSystemCallEnter_1+0x44>
 805eefe:	2308      	movs	r3, #8
 805ef00:	60fb      	str	r3, [r7, #12]
 805ef02:	68fa      	ldr	r2, [r7, #12]
 805ef04:	4b3b      	ldr	r3, [pc, #236]	; (805eff4 <vSystemCallEnter_1+0x13c>)
 805ef06:	1a9b      	subs	r3, r3, r2
 805ef08:	009b      	lsls	r3, r3, #2
 805ef0a:	693a      	ldr	r2, [r7, #16]
 805ef0c:	4413      	add	r3, r2
 805ef0e:	613b      	str	r3, [r7, #16]
 805ef10:	2300      	movs	r3, #0
 805ef12:	61fb      	str	r3, [r7, #28]
 805ef14:	e00c      	b.n	805ef30 <vSystemCallEnter_1+0x78>
 805ef16:	69fb      	ldr	r3, [r7, #28]
 805ef18:	009b      	lsls	r3, r3, #2
 805ef1a:	687a      	ldr	r2, [r7, #4]
 805ef1c:	441a      	add	r2, r3
 805ef1e:	69fb      	ldr	r3, [r7, #28]
 805ef20:	009b      	lsls	r3, r3, #2
 805ef22:	6939      	ldr	r1, [r7, #16]
 805ef24:	440b      	add	r3, r1
 805ef26:	6812      	ldr	r2, [r2, #0]
 805ef28:	601a      	str	r2, [r3, #0]
 805ef2a:	69fb      	ldr	r3, [r7, #28]
 805ef2c:	3301      	adds	r3, #1
 805ef2e:	61fb      	str	r3, [r7, #28]
 805ef30:	69fa      	ldr	r2, [r7, #28]
 805ef32:	68fb      	ldr	r3, [r7, #12]
 805ef34:	429a      	cmp	r2, r3
 805ef36:	d3ee      	bcc.n	805ef16 <vSystemCallEnter_1+0x5e>
 805ef38:	687b      	ldr	r3, [r7, #4]
 805ef3a:	331c      	adds	r3, #28
 805ef3c:	681b      	ldr	r3, [r3, #0]
 805ef3e:	f403 7300 	and.w	r3, r3, #512	; 0x200
 805ef42:	2b00      	cmp	r3, #0
 805ef44:	d011      	beq.n	805ef6a <vSystemCallEnter_1+0xb2>
 805ef46:	68fb      	ldr	r3, [r7, #12]
 805ef48:	3301      	adds	r3, #1
 805ef4a:	009b      	lsls	r3, r3, #2
 805ef4c:	687a      	ldr	r2, [r7, #4]
 805ef4e:	441a      	add	r2, r3
 805ef50:	68fb      	ldr	r3, [r7, #12]
 805ef52:	009b      	lsls	r3, r3, #2
 805ef54:	6939      	ldr	r1, [r7, #16]
 805ef56:	440b      	add	r3, r1
 805ef58:	6812      	ldr	r2, [r2, #0]
 805ef5a:	601a      	str	r2, [r3, #0]
 805ef5c:	697b      	ldr	r3, [r7, #20]
 805ef5e:	6f9b      	ldr	r3, [r3, #120]	; 0x78
 805ef60:	f043 0201 	orr.w	r2, r3, #1
 805ef64:	697b      	ldr	r3, [r7, #20]
 805ef66:	679a      	str	r2, [r3, #120]	; 0x78
 805ef68:	e00f      	b.n	805ef8a <vSystemCallEnter_1+0xd2>
 805ef6a:	68fb      	ldr	r3, [r7, #12]
 805ef6c:	009b      	lsls	r3, r3, #2
 805ef6e:	687a      	ldr	r2, [r7, #4]
 805ef70:	441a      	add	r2, r3
 805ef72:	68fb      	ldr	r3, [r7, #12]
 805ef74:	009b      	lsls	r3, r3, #2
 805ef76:	6939      	ldr	r1, [r7, #16]
 805ef78:	440b      	add	r3, r1
 805ef7a:	6812      	ldr	r2, [r2, #0]
 805ef7c:	601a      	str	r2, [r3, #0]
 805ef7e:	697b      	ldr	r3, [r7, #20]
 805ef80:	6f9b      	ldr	r3, [r3, #120]	; 0x78
 805ef82:	f023 0201 	bic.w	r2, r3, #1
 805ef86:	697b      	ldr	r3, [r7, #20]
 805ef88:	679a      	str	r2, [r3, #120]	; 0x78
 805ef8a:	687b      	ldr	r3, [r7, #4]
 805ef8c:	695a      	ldr	r2, [r3, #20]
 805ef8e:	697b      	ldr	r3, [r7, #20]
 805ef90:	f8c3 2288 	str.w	r2, [r3, #648]	; 0x288
 805ef94:	f3ef 820b 	mrs	r2, PSPLIM
 805ef98:	697b      	ldr	r3, [r7, #20]
 805ef9a:	f8c3 228c 	str.w	r2, [r3, #652]	; 0x28c
 805ef9e:	693b      	ldr	r3, [r7, #16]
 805efa0:	f383 8809 	msr	PSP, r3
 805efa4:	697b      	ldr	r3, [r7, #20]
 805efa6:	f8d3 3280 	ldr.w	r3, [r3, #640]	; 0x280
 805efaa:	f383 880b 	msr	PSPLIM, r3
 805efae:	68fb      	ldr	r3, [r7, #12]
 805efb0:	009b      	lsls	r3, r3, #2
 805efb2:	687a      	ldr	r2, [r7, #4]
 805efb4:	441a      	add	r2, r3
 805efb6:	697b      	ldr	r3, [r7, #20]
 805efb8:	f8c3 2284 	str.w	r2, [r3, #644]	; 0x284
 805efbc:	693b      	ldr	r3, [r7, #16]
 805efbe:	331c      	adds	r3, #28
 805efc0:	681a      	ldr	r2, [r3, #0]
 805efc2:	693b      	ldr	r3, [r7, #16]
 805efc4:	331c      	adds	r3, #28
 805efc6:	f422 7200 	bic.w	r2, r2, #512	; 0x200
 805efca:	601a      	str	r2, [r3, #0]
 805efcc:	f3ef 8014 	mrs	r0, CONTROL
 805efd0:	2101      	movs	r1, #1
 805efd2:	4388      	bics	r0, r1
 805efd4:	f380 8814 	msr	CONTROL, r0
 805efd8:	bf00      	nop
 805efda:	3720      	adds	r7, #32
 805efdc:	46bd      	mov	sp, r7
 805efde:	bd80      	pop	{r7, pc}
 805efe0:	0805f2e0 	.word	0x0805f2e0
 805efe4:	0805fa5f 	.word	0x0805fa5f
 805efe8:	20000100 	.word	0x20000100
 805efec:	08057a59 	.word	0x08057a59
 805eff0:	0805f1c7 	.word	0x0805f1c7
 805eff4:	3ffffffe 	.word	0x3ffffffe

0805eff8 <vSystemCallExit>:
 805eff8:	b580      	push	{r7, lr}
 805effa:	b088      	sub	sp, #32
 805effc:	af00      	add	r7, sp, #0
 805effe:	6078      	str	r0, [r7, #4]
 805f000:	6039      	str	r1, [r7, #0]
 805f002:	687b      	ldr	r3, [r7, #4]
 805f004:	699b      	ldr	r3, [r3, #24]
 805f006:	61bb      	str	r3, [r7, #24]
 805f008:	4a30      	ldr	r2, [pc, #192]	; (805f0cc <vSystemCallExit+0xd4>)
 805f00a:	69bb      	ldr	r3, [r7, #24]
 805f00c:	4293      	cmp	r3, r2
 805f00e:	d358      	bcc.n	805f0c2 <vSystemCallExit+0xca>
 805f010:	4a2f      	ldr	r2, [pc, #188]	; (805f0d0 <vSystemCallExit+0xd8>)
 805f012:	69bb      	ldr	r3, [r7, #24]
 805f014:	4293      	cmp	r3, r2
 805f016:	d854      	bhi.n	805f0c2 <vSystemCallExit+0xca>
 805f018:	4b2e      	ldr	r3, [pc, #184]	; (805f0d4 <vSystemCallExit+0xdc>)
 805f01a:	681b      	ldr	r3, [r3, #0]
 805f01c:	4618      	mov	r0, r3
 805f01e:	4b2e      	ldr	r3, [pc, #184]	; (805f0d8 <vSystemCallExit+0xe0>)
 805f020:	4798      	blx	r3
 805f022:	6178      	str	r0, [r7, #20]
 805f024:	697b      	ldr	r3, [r7, #20]
 805f026:	f8d3 3284 	ldr.w	r3, [r3, #644]	; 0x284
 805f02a:	613b      	str	r3, [r7, #16]
 805f02c:	2308      	movs	r3, #8
 805f02e:	60fb      	str	r3, [r7, #12]
 805f030:	68fb      	ldr	r3, [r7, #12]
 805f032:	009b      	lsls	r3, r3, #2
 805f034:	425b      	negs	r3, r3
 805f036:	693a      	ldr	r2, [r7, #16]
 805f038:	4413      	add	r3, r2
 805f03a:	613b      	str	r3, [r7, #16]
 805f03c:	2300      	movs	r3, #0
 805f03e:	61fb      	str	r3, [r7, #28]
 805f040:	e00c      	b.n	805f05c <vSystemCallExit+0x64>
 805f042:	69fb      	ldr	r3, [r7, #28]
 805f044:	009b      	lsls	r3, r3, #2
 805f046:	687a      	ldr	r2, [r7, #4]
 805f048:	441a      	add	r2, r3
 805f04a:	69fb      	ldr	r3, [r7, #28]
 805f04c:	009b      	lsls	r3, r3, #2
 805f04e:	6939      	ldr	r1, [r7, #16]
 805f050:	440b      	add	r3, r1
 805f052:	6812      	ldr	r2, [r2, #0]
 805f054:	601a      	str	r2, [r3, #0]
 805f056:	69fb      	ldr	r3, [r7, #28]
 805f058:	3301      	adds	r3, #1
 805f05a:	61fb      	str	r3, [r7, #28]
 805f05c:	69fa      	ldr	r2, [r7, #28]
 805f05e:	68fb      	ldr	r3, [r7, #12]
 805f060:	429a      	cmp	r2, r3
 805f062:	d3ee      	bcc.n	805f042 <vSystemCallExit+0x4a>
 805f064:	693b      	ldr	r3, [r7, #16]
 805f066:	f383 8809 	msr	PSP, r3
 805f06a:	693b      	ldr	r3, [r7, #16]
 805f06c:	3314      	adds	r3, #20
 805f06e:	697a      	ldr	r2, [r7, #20]
 805f070:	f8d2 2288 	ldr.w	r2, [r2, #648]	; 0x288
 805f074:	601a      	str	r2, [r3, #0]
 805f076:	697b      	ldr	r3, [r7, #20]
 805f078:	f8d3 328c 	ldr.w	r3, [r3, #652]	; 0x28c
 805f07c:	f383 880b 	msr	PSPLIM, r3
 805f080:	697b      	ldr	r3, [r7, #20]
 805f082:	6f9b      	ldr	r3, [r3, #120]	; 0x78
 805f084:	f003 0301 	and.w	r3, r3, #1
 805f088:	2b00      	cmp	r3, #0
 805f08a:	d008      	beq.n	805f09e <vSystemCallExit+0xa6>
 805f08c:	693b      	ldr	r3, [r7, #16]
 805f08e:	331c      	adds	r3, #28
 805f090:	681a      	ldr	r2, [r3, #0]
 805f092:	693b      	ldr	r3, [r7, #16]
 805f094:	331c      	adds	r3, #28
 805f096:	f442 7200 	orr.w	r2, r2, #512	; 0x200
 805f09a:	601a      	str	r2, [r3, #0]
 805f09c:	e007      	b.n	805f0ae <vSystemCallExit+0xb6>
 805f09e:	693b      	ldr	r3, [r7, #16]
 805f0a0:	331c      	adds	r3, #28
 805f0a2:	681a      	ldr	r2, [r3, #0]
 805f0a4:	693b      	ldr	r3, [r7, #16]
 805f0a6:	331c      	adds	r3, #28
 805f0a8:	f422 7200 	bic.w	r2, r2, #512	; 0x200
 805f0ac:	601a      	str	r2, [r3, #0]
 805f0ae:	697b      	ldr	r3, [r7, #20]
 805f0b0:	2200      	movs	r2, #0
 805f0b2:	f8c3 2284 	str.w	r2, [r3, #644]	; 0x284
 805f0b6:	f3ef 8014 	mrs	r0, CONTROL
 805f0ba:	2101      	movs	r1, #1
 805f0bc:	4308      	orrs	r0, r1
 805f0be:	f380 8814 	msr	CONTROL, r0
 805f0c2:	bf00      	nop
 805f0c4:	3720      	adds	r7, #32
 805f0c6:	46bd      	mov	sp, r7
 805f0c8:	bd80      	pop	{r7, pc}
 805f0ca:	bf00      	nop
 805f0cc:	0805f2e0 	.word	0x0805f2e0
 805f0d0:	0805fa5f 	.word	0x0805fa5f
 805f0d4:	20000100 	.word	0x20000100
 805f0d8:	08057a59 	.word	0x08057a59

0805f0dc <xPortIsTaskPrivileged>:
 805f0dc:	b580      	push	{r7, lr}
 805f0de:	b082      	sub	sp, #8
 805f0e0:	af00      	add	r7, sp, #0
 805f0e2:	2300      	movs	r3, #0
 805f0e4:	607b      	str	r3, [r7, #4]
 805f0e6:	2000      	movs	r0, #0
 805f0e8:	4b07      	ldr	r3, [pc, #28]	; (805f108 <xPortIsTaskPrivileged+0x2c>)
 805f0ea:	4798      	blx	r3
 805f0ec:	6038      	str	r0, [r7, #0]
 805f0ee:	683b      	ldr	r3, [r7, #0]
 805f0f0:	6f9b      	ldr	r3, [r3, #120]	; 0x78
 805f0f2:	f003 0302 	and.w	r3, r3, #2
 805f0f6:	2b00      	cmp	r3, #0
 805f0f8:	d001      	beq.n	805f0fe <xPortIsTaskPrivileged+0x22>
 805f0fa:	2301      	movs	r3, #1
 805f0fc:	607b      	str	r3, [r7, #4]
 805f0fe:	687b      	ldr	r3, [r7, #4]
 805f100:	4618      	mov	r0, r3
 805f102:	3708      	adds	r7, #8
 805f104:	46bd      	mov	sp, r7
 805f106:	bd80      	pop	{r7, pc}
 805f108:	08057a59 	.word	0x08057a59
 805f10c:	00000000 	.word	0x00000000

0805f110 <vRestoreContextOfFirstTask>:
 805f110:	4a1b      	ldr	r2, [pc, #108]	; (805f180 <pxCurrentTCBConst2>)
 805f112:	6810      	ldr	r0, [r2, #0]
 805f114:	f3bf 8f5f 	dmb	sy
 805f118:	491a      	ldr	r1, [pc, #104]	; (805f184 <xMPUCTRLConst2>)
 805f11a:	680a      	ldr	r2, [r1, #0]
 805f11c:	f022 0201 	bic.w	r2, r2, #1
 805f120:	600a      	str	r2, [r1, #0]
 805f122:	3004      	adds	r0, #4
 805f124:	6801      	ldr	r1, [r0, #0]
 805f126:	4a18      	ldr	r2, [pc, #96]	; (805f188 <xMAIR0Const2>)
 805f128:	6011      	str	r1, [r2, #0]
 805f12a:	3004      	adds	r0, #4
 805f12c:	4917      	ldr	r1, [pc, #92]	; (805f18c <xRNRConst2>)
 805f12e:	4a18      	ldr	r2, [pc, #96]	; (805f190 <xRBARConst2>)
 805f130:	2304      	movs	r3, #4
 805f132:	600b      	str	r3, [r1, #0]
 805f134:	e8b0 0ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp}
 805f138:	e882 0ff0 	stmia.w	r2, {r4, r5, r6, r7, r8, r9, sl, fp}
 805f13c:	4911      	ldr	r1, [pc, #68]	; (805f184 <xMPUCTRLConst2>)
 805f13e:	680a      	ldr	r2, [r1, #0]
 805f140:	f042 0201 	orr.w	r2, r2, #1
 805f144:	600a      	str	r2, [r1, #0]
 805f146:	f3bf 8f4f 	dsb	sy

0805f14a <restore_context_first_task>:
 805f14a:	4a0d      	ldr	r2, [pc, #52]	; (805f180 <pxCurrentTCBConst2>)
 805f14c:	6810      	ldr	r0, [r2, #0]
 805f14e:	6801      	ldr	r1, [r0, #0]

0805f150 <restore_special_regs_first_task>:
 805f150:	e931 401c 	ldmdb	r1!, {r2, r3, r4, lr}
 805f154:	f382 8809 	msr	PSP, r2
 805f158:	f383 880b 	msr	PSPLIM, r3
 805f15c:	f384 8814 	msr	CONTROL, r4

0805f160 <restore_general_regs_first_task>:
 805f160:	e931 0ff0 	ldmdb	r1!, {r4, r5, r6, r7, r8, r9, sl, fp}
 805f164:	e8a2 0ff0 	stmia.w	r2!, {r4, r5, r6, r7, r8, r9, sl, fp}
 805f168:	e931 0ff0 	ldmdb	r1!, {r4, r5, r6, r7, r8, r9, sl, fp}

0805f16c <restore_context_done_first_task>:
 805f16c:	6001      	str	r1, [r0, #0]
 805f16e:	f04f 0000 	mov.w	r0, #0
 805f172:	f380 8811 	msr	BASEPRI, r0
 805f176:	4770      	bx	lr
 805f178:	f3af 8000 	nop.w
 805f17c:	f3af 8000 	nop.w

0805f180 <pxCurrentTCBConst2>:
 805f180:	20000100 	.word	0x20000100

0805f184 <xMPUCTRLConst2>:
 805f184:	e000ed94 	.word	0xe000ed94

0805f188 <xMAIR0Const2>:
 805f188:	e000edc0 	.word	0xe000edc0

0805f18c <xRNRConst2>:
 805f18c:	e000ed98 	.word	0xe000ed98

0805f190 <xRBARConst2>:
 805f190:	e000ed9c 	.word	0xe000ed9c
 805f194:	bf00      	nop

0805f196 <vRaisePrivilege>:
 805f196:	f3ef 8014 	mrs	r0, CONTROL
 805f19a:	f020 0001 	bic.w	r0, r0, #1
 805f19e:	f380 8814 	msr	CONTROL, r0
 805f1a2:	4770      	bx	lr
 805f1a4:	bf00      	nop

0805f1a6 <vStartFirstTask>:
 805f1a6:	4806      	ldr	r0, [pc, #24]	; (805f1c0 <xVTORConst>)
 805f1a8:	6800      	ldr	r0, [r0, #0]
 805f1aa:	6800      	ldr	r0, [r0, #0]
 805f1ac:	f380 8808 	msr	MSP, r0
 805f1b0:	b662      	cpsie	i
 805f1b2:	b661      	cpsie	f
 805f1b4:	f3bf 8f4f 	dsb	sy
 805f1b8:	f3bf 8f6f 	isb	sy
 805f1bc:	df02      	svc	2
 805f1be:	bf00      	nop

0805f1c0 <xVTORConst>:
 805f1c0:	e000ed08 	.word	0xe000ed08
 805f1c4:	bf00      	nop

0805f1c6 <ulSetInterruptMask>:
 805f1c6:	f3ef 8011 	mrs	r0, BASEPRI
 805f1ca:	f04f 01a0 	mov.w	r1, #160	; 0xa0
 805f1ce:	f381 8811 	msr	BASEPRI, r1
 805f1d2:	f3bf 8f4f 	dsb	sy
 805f1d6:	f3bf 8f6f 	isb	sy
 805f1da:	4770      	bx	lr
 805f1dc:	bf00      	nop
 805f1de:	4618      	mov	r0, r3

0805f1e0 <vClearInterruptMask>:
 805f1e0:	f380 8811 	msr	BASEPRI, r0
 805f1e4:	f3bf 8f4f 	dsb	sy
 805f1e8:	f3bf 8f6f 	isb	sy
 805f1ec:	4770      	bx	lr
 805f1ee:	bf00      	nop

0805f1f0 <PendSV_Handler>:
 805f1f0:	4a27      	ldr	r2, [pc, #156]	; (805f290 <pxCurrentTCBConst>)
 805f1f2:	6810      	ldr	r0, [r2, #0]
 805f1f4:	6801      	ldr	r1, [r0, #0]
 805f1f6:	f3ef 8209 	mrs	r2, PSP

0805f1fa <save_general_regs>:
 805f1fa:	e8a1 0ff0 	stmia.w	r1!, {r4, r5, r6, r7, r8, r9, sl, fp}
 805f1fe:	e892 0ff0 	ldmia.w	r2, {r4, r5, r6, r7, r8, r9, sl, fp}
 805f202:	e8a1 0ff0 	stmia.w	r1!, {r4, r5, r6, r7, r8, r9, sl, fp}

0805f206 <save_special_regs>:
 805f206:	f3ef 830b 	mrs	r3, PSPLIM
 805f20a:	f3ef 8414 	mrs	r4, CONTROL
 805f20e:	e8a1 401c 	stmia.w	r1!, {r2, r3, r4, lr}
 805f212:	6001      	str	r1, [r0, #0]

0805f214 <select_next_task>:
 805f214:	f04f 00a0 	mov.w	r0, #160	; 0xa0
 805f218:	f380 8811 	msr	BASEPRI, r0
 805f21c:	f3bf 8f4f 	dsb	sy
 805f220:	f3bf 8f6f 	isb	sy
 805f224:	f7f8 f91a 	bl	805745c <vTaskSwitchContext>
 805f228:	f04f 0000 	mov.w	r0, #0
 805f22c:	f380 8811 	msr	BASEPRI, r0

0805f230 <program_mpu>:
 805f230:	4a17      	ldr	r2, [pc, #92]	; (805f290 <pxCurrentTCBConst>)
 805f232:	6810      	ldr	r0, [r2, #0]
 805f234:	f3bf 8f5f 	dmb	sy
 805f238:	4916      	ldr	r1, [pc, #88]	; (805f294 <xMPUCTRLConst>)
 805f23a:	680a      	ldr	r2, [r1, #0]
 805f23c:	f022 0201 	bic.w	r2, r2, #1
 805f240:	600a      	str	r2, [r1, #0]
 805f242:	3004      	adds	r0, #4
 805f244:	6801      	ldr	r1, [r0, #0]
 805f246:	4a14      	ldr	r2, [pc, #80]	; (805f298 <xMAIR0Const>)
 805f248:	6011      	str	r1, [r2, #0]
 805f24a:	3004      	adds	r0, #4
 805f24c:	4913      	ldr	r1, [pc, #76]	; (805f29c <xRNRConst>)
 805f24e:	4a14      	ldr	r2, [pc, #80]	; (805f2a0 <xRBARConst>)
 805f250:	2304      	movs	r3, #4
 805f252:	600b      	str	r3, [r1, #0]
 805f254:	e8b0 0ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp}
 805f258:	e882 0ff0 	stmia.w	r2, {r4, r5, r6, r7, r8, r9, sl, fp}
 805f25c:	490d      	ldr	r1, [pc, #52]	; (805f294 <xMPUCTRLConst>)
 805f25e:	680a      	ldr	r2, [r1, #0]
 805f260:	f042 0201 	orr.w	r2, r2, #1
 805f264:	600a      	str	r2, [r1, #0]
 805f266:	f3bf 8f4f 	dsb	sy

0805f26a <restore_context>:
 805f26a:	4a09      	ldr	r2, [pc, #36]	; (805f290 <pxCurrentTCBConst>)
 805f26c:	6810      	ldr	r0, [r2, #0]
 805f26e:	6801      	ldr	r1, [r0, #0]

0805f270 <restore_special_regs>:
 805f270:	e931 401c 	ldmdb	r1!, {r2, r3, r4, lr}
 805f274:	f382 8809 	msr	PSP, r2
 805f278:	f383 880b 	msr	PSPLIM, r3
 805f27c:	f384 8814 	msr	CONTROL, r4

0805f280 <restore_general_regs>:
 805f280:	e931 0ff0 	ldmdb	r1!, {r4, r5, r6, r7, r8, r9, sl, fp}
 805f284:	e8a2 0ff0 	stmia.w	r2!, {r4, r5, r6, r7, r8, r9, sl, fp}
 805f288:	e931 0ff0 	ldmdb	r1!, {r4, r5, r6, r7, r8, r9, sl, fp}

0805f28c <restore_context_done>:
 805f28c:	6001      	str	r1, [r0, #0]
 805f28e:	4770      	bx	lr

0805f290 <pxCurrentTCBConst>:
 805f290:	20000100 	.word	0x20000100

0805f294 <xMPUCTRLConst>:
 805f294:	e000ed94 	.word	0xe000ed94

0805f298 <xMAIR0Const>:
 805f298:	e000edc0 	.word	0xe000edc0

0805f29c <xRNRConst>:
 805f29c:	e000ed98 	.word	0xe000ed98

0805f2a0 <xRBARConst>:
 805f2a0:	e000ed9c 	.word	0xe000ed9c
 805f2a4:	bf00      	nop

0805f2a6 <SVC_Handler>:
 805f2a6:	f01e 0f04 	tst.w	lr, #4
 805f2aa:	bf0c      	ite	eq
 805f2ac:	f3ef 8008 	mrseq	r0, MSP
 805f2b0:	f3ef 8009 	mrsne	r0, PSP
 805f2b4:	6981      	ldr	r1, [r0, #24]
 805f2b6:	f811 2c02 	ldrb.w	r2, [r1, #-2]
 805f2ba:	2a04      	cmp	r2, #4
 805f2bc:	d005      	beq.n	805f2ca <syscall_enter>
 805f2be:	2a05      	cmp	r2, #5
 805f2c0:	d006      	beq.n	805f2d0 <syscall_enter_1>
 805f2c2:	2a06      	cmp	r2, #6
 805f2c4:	d007      	beq.n	805f2d6 <syscall_exit>
 805f2c6:	f7ff bd4d 	b.w	805ed64 <vPortSVCHandler_C>

0805f2ca <syscall_enter>:
 805f2ca:	4671      	mov	r1, lr
 805f2cc:	f7ff bd6c 	b.w	805eda8 <vSystemCallEnter>

0805f2d0 <syscall_enter_1>:
 805f2d0:	4671      	mov	r1, lr
 805f2d2:	f7ff bdf1 	b.w	805eeb8 <vSystemCallEnter_1>

0805f2d6 <syscall_exit>:
 805f2d6:	4671      	mov	r1, lr
 805f2d8:	f7ff be8e 	b.w	805eff8 <vSystemCallExit>
 805f2dc:	bf00      	nop
	...

0805f2df <__privileged_functions_end__>:
 805f2df:	Address 0x000000000805f2df is out of bounds.


Disassembly of section .freertos_system_calls:

0805f2e0 <MPU_xTaskDelayUntil>:
 805f2e0:	b401      	push	{r0}
 805f2e2:	f3ef 8014 	mrs	r0, CONTROL
 805f2e6:	f010 0f01 	tst.w	r0, #1
 805f2ea:	d102      	bne.n	805f2f2 <MPU_xTaskDelayUntil_Unpriv>

0805f2ec <MPU_xTaskDelayUntil_Priv>:
 805f2ec:	bc01      	pop	{r0}
 805f2ee:	f7fa bda1 	b.w	8059e34 <MPU_xTaskDelayUntilImpl>

0805f2f2 <MPU_xTaskDelayUntil_Unpriv>:
 805f2f2:	bc01      	pop	{r0}
 805f2f4:	df04      	svc	4
 805f2f6:	f7fa fd9d 	bl	8059e34 <MPU_xTaskDelayUntilImpl>
 805f2fa:	df06      	svc	6
 805f2fc:	4770      	bx	lr
 805f2fe:	bf00      	nop
 805f300:	4618      	mov	r0, r3

0805f302 <MPU_vTaskDelay>:
 805f302:	b401      	push	{r0}
 805f304:	f3ef 8014 	mrs	r0, CONTROL
 805f308:	f010 0f01 	tst.w	r0, #1
 805f30c:	d102      	bne.n	805f314 <MPU_vTaskDelay_Unpriv>

0805f30e <MPU_vTaskDelay_Priv>:
 805f30e:	bc01      	pop	{r0}
 805f310:	f7fa bdb6 	b.w	8059e80 <MPU_vTaskDelayImpl>

0805f314 <MPU_vTaskDelay_Unpriv>:
 805f314:	bc01      	pop	{r0}
 805f316:	df04      	svc	4
 805f318:	f7fa fdb2 	bl	8059e80 <MPU_vTaskDelayImpl>
 805f31c:	df06      	svc	6
 805f31e:	4770      	bx	lr
 805f320:	bf00      	nop

0805f322 <MPU_uxTaskPriorityGet>:
 805f322:	b401      	push	{r0}
 805f324:	f3ef 8014 	mrs	r0, CONTROL
 805f328:	f010 0f01 	tst.w	r0, #1
 805f32c:	d102      	bne.n	805f334 <MPU_uxTaskPriorityGet_Unpriv>

0805f32e <MPU_uxTaskPriorityGet_Priv>:
 805f32e:	bc01      	pop	{r0}
 805f330:	f7fa bdb4 	b.w	8059e9c <MPU_uxTaskPriorityGetImpl>

0805f334 <MPU_uxTaskPriorityGet_Unpriv>:
 805f334:	bc01      	pop	{r0}
 805f336:	df04      	svc	4
 805f338:	f7fa fdb0 	bl	8059e9c <MPU_uxTaskPriorityGetImpl>
 805f33c:	df06      	svc	6
 805f33e:	4770      	bx	lr
 805f340:	bf00      	nop
 805f342:	4618      	mov	r0, r3

0805f344 <MPU_eTaskGetState>:
 805f344:	b401      	push	{r0}
 805f346:	f3ef 8014 	mrs	r0, CONTROL
 805f34a:	f010 0f01 	tst.w	r0, #1
 805f34e:	d102      	bne.n	805f356 <MPU_eTaskGetState_Unpriv>

0805f350 <MPU_eTaskGetState_Priv>:
 805f350:	bc01      	pop	{r0}
 805f352:	f7fa bde3 	b.w	8059f1c <MPU_eTaskGetStateImpl>

0805f356 <MPU_eTaskGetState_Unpriv>:
 805f356:	bc01      	pop	{r0}
 805f358:	df04      	svc	4
 805f35a:	f7fa fddf 	bl	8059f1c <MPU_eTaskGetStateImpl>
 805f35e:	df06      	svc	6
 805f360:	4770      	bx	lr
 805f362:	bf00      	nop
 805f364:	4618      	mov	r0, r3

0805f366 <MPU_vTaskGetInfo>:
 805f366:	b401      	push	{r0}
 805f368:	f3ef 8014 	mrs	r0, CONTROL
 805f36c:	f010 0f01 	tst.w	r0, #1
 805f370:	d102      	bne.n	805f378 <MPU_vTaskGetInfo_Unpriv>

0805f372 <MPU_vTaskGetInfo_Priv>:
 805f372:	bc01      	pop	{r0}
 805f374:	f7fa be0c 	b.w	8059f90 <MPU_vTaskGetInfoImpl>

0805f378 <MPU_vTaskGetInfo_Unpriv>:
 805f378:	bc01      	pop	{r0}
 805f37a:	df04      	svc	4
 805f37c:	f7fa fe08 	bl	8059f90 <MPU_vTaskGetInfoImpl>
 805f380:	df06      	svc	6
 805f382:	4770      	bx	lr
 805f384:	bf00      	nop

0805f386 <MPU_vTaskSuspend>:
 805f386:	b401      	push	{r0}
 805f388:	f3ef 8014 	mrs	r0, CONTROL
 805f38c:	f010 0f01 	tst.w	r0, #1
 805f390:	d102      	bne.n	805f398 <MPU_vTaskSuspend_Unpriv>

0805f392 <MPU_vTaskSuspend_Priv>:
 805f392:	bc01      	pop	{r0}
 805f394:	f7fa be4e 	b.w	805a034 <MPU_vTaskSuspendImpl>

0805f398 <MPU_vTaskSuspend_Unpriv>:
 805f398:	bc01      	pop	{r0}
 805f39a:	df04      	svc	4
 805f39c:	f7fa fe4a 	bl	805a034 <MPU_vTaskSuspendImpl>
 805f3a0:	df06      	svc	6
 805f3a2:	4770      	bx	lr
 805f3a4:	bf00      	nop

0805f3a6 <MPU_vTaskResume>:
 805f3a6:	b401      	push	{r0}
 805f3a8:	f3ef 8014 	mrs	r0, CONTROL
 805f3ac:	f010 0f01 	tst.w	r0, #1
 805f3b0:	d102      	bne.n	805f3b8 <MPU_vTaskResume_Unpriv>

0805f3b2 <MPU_vTaskResume_Priv>:
 805f3b2:	bc01      	pop	{r0}
 805f3b4:	f7fa be88 	b.w	805a0c8 <MPU_vTaskResumeImpl>

0805f3b8 <MPU_vTaskResume_Unpriv>:
 805f3b8:	bc01      	pop	{r0}
 805f3ba:	df04      	svc	4
 805f3bc:	f7fa fe84 	bl	805a0c8 <MPU_vTaskResumeImpl>
 805f3c0:	df06      	svc	6
 805f3c2:	4770      	bx	lr
 805f3c4:	bf00      	nop

0805f3c6 <MPU_xTaskGetTickCount>:
 805f3c6:	b401      	push	{r0}
 805f3c8:	f3ef 8014 	mrs	r0, CONTROL
 805f3cc:	f010 0f01 	tst.w	r0, #1
 805f3d0:	d102      	bne.n	805f3d8 <MPU_xTaskGetTickCount_Unpriv>

0805f3d2 <MPU_xTaskGetTickCount_Priv>:
 805f3d2:	bc01      	pop	{r0}
 805f3d4:	f7fa beac 	b.w	805a130 <MPU_xTaskGetTickCountImpl>

0805f3d8 <MPU_xTaskGetTickCount_Unpriv>:
 805f3d8:	bc01      	pop	{r0}
 805f3da:	df04      	svc	4
 805f3dc:	f7fa fea8 	bl	805a130 <MPU_xTaskGetTickCountImpl>
 805f3e0:	df06      	svc	6
 805f3e2:	4770      	bx	lr
 805f3e4:	bf00      	nop
 805f3e6:	4618      	mov	r0, r3

0805f3e8 <MPU_uxTaskGetNumberOfTasks>:
 805f3e8:	b401      	push	{r0}
 805f3ea:	f3ef 8014 	mrs	r0, CONTROL
 805f3ee:	f010 0f01 	tst.w	r0, #1
 805f3f2:	d102      	bne.n	805f3fa <MPU_uxTaskGetNumberOfTasks_Unpriv>

0805f3f4 <MPU_uxTaskGetNumberOfTasks_Priv>:
 805f3f4:	bc01      	pop	{r0}
 805f3f6:	f7fa bea9 	b.w	805a14c <MPU_uxTaskGetNumberOfTasksImpl>

0805f3fa <MPU_uxTaskGetNumberOfTasks_Unpriv>:
 805f3fa:	bc01      	pop	{r0}
 805f3fc:	df04      	svc	4
 805f3fe:	f7fa fea5 	bl	805a14c <MPU_uxTaskGetNumberOfTasksImpl>
 805f402:	df06      	svc	6
 805f404:	4770      	bx	lr
 805f406:	bf00      	nop
 805f408:	4618      	mov	r0, r3

0805f40a <MPU_uxTaskGetSystemState>:
 805f40a:	b401      	push	{r0}
 805f40c:	f3ef 8014 	mrs	r0, CONTROL
 805f410:	f010 0f01 	tst.w	r0, #1
 805f414:	d102      	bne.n	805f41c <MPU_uxTaskGetSystemState_Unpriv>

0805f416 <MPU_uxTaskGetSystemState_Priv>:
 805f416:	bc01      	pop	{r0}
 805f418:	f7fa bea6 	b.w	805a168 <MPU_uxTaskGetSystemStateImpl>

0805f41c <MPU_uxTaskGetSystemState_Unpriv>:
 805f41c:	bc01      	pop	{r0}
 805f41e:	df04      	svc	4
 805f420:	f7fa fea2 	bl	805a168 <MPU_uxTaskGetSystemStateImpl>
 805f424:	df06      	svc	6
 805f426:	4770      	bx	lr
 805f428:	bf00      	nop
 805f42a:	4618      	mov	r0, r3

0805f42c <MPU_uxTaskGetStackHighWaterMark>:
 805f42c:	b401      	push	{r0}
 805f42e:	f3ef 8014 	mrs	r0, CONTROL
 805f432:	f010 0f01 	tst.w	r0, #1
 805f436:	d102      	bne.n	805f43e <MPU_uxTaskGetStackHighWaterMark_Unpriv>

0805f438 <MPU_uxTaskGetStackHighWaterMark_Priv>:
 805f438:	bc01      	pop	{r0}
 805f43a:	f7fa bee5 	b.w	805a208 <MPU_uxTaskGetStackHighWaterMarkImpl>

0805f43e <MPU_uxTaskGetStackHighWaterMark_Unpriv>:
 805f43e:	bc01      	pop	{r0}
 805f440:	df04      	svc	4
 805f442:	f7fa fee1 	bl	805a208 <MPU_uxTaskGetStackHighWaterMarkImpl>
 805f446:	df06      	svc	6
 805f448:	4770      	bx	lr
 805f44a:	bf00      	nop
 805f44c:	4618      	mov	r0, r3

0805f44e <MPU_xTaskGetCurrentTaskHandle>:
 805f44e:	b401      	push	{r0}
 805f450:	f3ef 8014 	mrs	r0, CONTROL
 805f454:	f010 0f01 	tst.w	r0, #1
 805f458:	d102      	bne.n	805f460 <MPU_xTaskGetCurrentTaskHandle_Unpriv>

0805f45a <MPU_xTaskGetCurrentTaskHandle_Priv>:
 805f45a:	bc01      	pop	{r0}
 805f45c:	f7fa bf14 	b.w	805a288 <MPU_xTaskGetCurrentTaskHandleImpl>

0805f460 <MPU_xTaskGetCurrentTaskHandle_Unpriv>:
 805f460:	bc01      	pop	{r0}
 805f462:	df04      	svc	4
 805f464:	f7fa ff10 	bl	805a288 <MPU_xTaskGetCurrentTaskHandleImpl>
 805f468:	df06      	svc	6
 805f46a:	4770      	bx	lr
 805f46c:	bf00      	nop
 805f46e:	4618      	mov	r0, r3

0805f470 <MPU_xTaskGetSchedulerState>:
 805f470:	b401      	push	{r0}
 805f472:	f3ef 8014 	mrs	r0, CONTROL
 805f476:	f010 0f01 	tst.w	r0, #1
 805f47a:	d102      	bne.n	805f482 <MPU_xTaskGetSchedulerState_Unpriv>

0805f47c <MPU_xTaskGetSchedulerState_Priv>:
 805f47c:	bc01      	pop	{r0}
 805f47e:	f7fa bf23 	b.w	805a2c8 <MPU_xTaskGetSchedulerStateImpl>

0805f482 <MPU_xTaskGetSchedulerState_Unpriv>:
 805f482:	bc01      	pop	{r0}
 805f484:	df04      	svc	4
 805f486:	f7fa ff1f 	bl	805a2c8 <MPU_xTaskGetSchedulerStateImpl>
 805f48a:	df06      	svc	6
 805f48c:	4770      	bx	lr
 805f48e:	bf00      	nop
 805f490:	4618      	mov	r0, r3

0805f492 <MPU_vTaskSetTimeOutState>:
 805f492:	b401      	push	{r0}
 805f494:	f3ef 8014 	mrs	r0, CONTROL
 805f498:	f010 0f01 	tst.w	r0, #1
 805f49c:	d102      	bne.n	805f4a4 <MPU_vTaskSetTimeOutState_Unpriv>

0805f49e <MPU_vTaskSetTimeOutState_Priv>:
 805f49e:	bc01      	pop	{r0}
 805f4a0:	f7fa bf22 	b.w	805a2e8 <MPU_vTaskSetTimeOutStateImpl>

0805f4a4 <MPU_vTaskSetTimeOutState_Unpriv>:
 805f4a4:	bc01      	pop	{r0}
 805f4a6:	df04      	svc	4
 805f4a8:	f7fa ff1e 	bl	805a2e8 <MPU_vTaskSetTimeOutStateImpl>
 805f4ac:	df06      	svc	6
 805f4ae:	4770      	bx	lr
 805f4b0:	bf00      	nop

0805f4b2 <MPU_xTaskCheckForTimeOut>:
 805f4b2:	b401      	push	{r0}
 805f4b4:	f3ef 8014 	mrs	r0, CONTROL
 805f4b8:	f010 0f01 	tst.w	r0, #1
 805f4bc:	d102      	bne.n	805f4c4 <MPU_xTaskCheckForTimeOut_Unpriv>

0805f4be <MPU_xTaskCheckForTimeOut_Priv>:
 805f4be:	bc01      	pop	{r0}
 805f4c0:	f7fa bf30 	b.w	805a324 <MPU_xTaskCheckForTimeOutImpl>

0805f4c4 <MPU_xTaskCheckForTimeOut_Unpriv>:
 805f4c4:	bc01      	pop	{r0}
 805f4c6:	df04      	svc	4
 805f4c8:	f7fa ff2c 	bl	805a324 <MPU_xTaskCheckForTimeOutImpl>
 805f4cc:	df06      	svc	6
 805f4ce:	4770      	bx	lr
 805f4d0:	bf00      	nop
 805f4d2:	4618      	mov	r0, r3

0805f4d4 <MPU_xTaskGenericNotify>:
 805f4d4:	b401      	push	{r0}
 805f4d6:	f3ef 8014 	mrs	r0, CONTROL
 805f4da:	f010 0f01 	tst.w	r0, #1
 805f4de:	d102      	bne.n	805f4e6 <MPU_xTaskGenericNotify_Unpriv>

0805f4e0 <MPU_xTaskGenericNotify_Priv>:
 805f4e0:	bc01      	pop	{r0}
 805f4e2:	f7fa bf51 	b.w	805a388 <MPU_xTaskGenericNotifyImpl>

0805f4e6 <MPU_xTaskGenericNotify_Unpriv>:
 805f4e6:	bc01      	pop	{r0}
 805f4e8:	df05      	svc	5
 805f4ea:	f7fa ff4d 	bl	805a388 <MPU_xTaskGenericNotifyImpl>
 805f4ee:	df06      	svc	6
 805f4f0:	4770      	bx	lr
 805f4f2:	bf00      	nop
 805f4f4:	4618      	mov	r0, r3

0805f4f6 <MPU_xTaskGenericNotifyWait>:
 805f4f6:	b401      	push	{r0}
 805f4f8:	f3ef 8014 	mrs	r0, CONTROL
 805f4fc:	f010 0f01 	tst.w	r0, #1
 805f500:	d102      	bne.n	805f508 <MPU_xTaskGenericNotifyWait_Unpriv>

0805f502 <MPU_xTaskGenericNotifyWait_Priv>:
 805f502:	bc01      	pop	{r0}
 805f504:	f7fa bf98 	b.w	805a438 <MPU_xTaskGenericNotifyWaitImpl>

0805f508 <MPU_xTaskGenericNotifyWait_Unpriv>:
 805f508:	bc01      	pop	{r0}
 805f50a:	df05      	svc	5
 805f50c:	f7fa ff94 	bl	805a438 <MPU_xTaskGenericNotifyWaitImpl>
 805f510:	df06      	svc	6
 805f512:	4770      	bx	lr
 805f514:	bf00      	nop
 805f516:	4618      	mov	r0, r3

0805f518 <MPU_ulTaskGenericNotifyTake>:
 805f518:	b401      	push	{r0}
 805f51a:	f3ef 8014 	mrs	r0, CONTROL
 805f51e:	f010 0f01 	tst.w	r0, #1
 805f522:	d102      	bne.n	805f52a <MPU_ulTaskGenericNotifyTake_Unpriv>

0805f524 <MPU_ulTaskGenericNotifyTake_Priv>:
 805f524:	bc01      	pop	{r0}
 805f526:	f7fa bfb7 	b.w	805a498 <MPU_ulTaskGenericNotifyTakeImpl>

0805f52a <MPU_ulTaskGenericNotifyTake_Unpriv>:
 805f52a:	bc01      	pop	{r0}
 805f52c:	df04      	svc	4
 805f52e:	f7fa ffb3 	bl	805a498 <MPU_ulTaskGenericNotifyTakeImpl>
 805f532:	df06      	svc	6
 805f534:	4770      	bx	lr
 805f536:	bf00      	nop
 805f538:	4618      	mov	r0, r3

0805f53a <MPU_xTaskGenericNotifyStateClear>:
 805f53a:	b401      	push	{r0}
 805f53c:	f3ef 8014 	mrs	r0, CONTROL
 805f540:	f010 0f01 	tst.w	r0, #1
 805f544:	d102      	bne.n	805f54c <MPU_xTaskGenericNotifyStateClear_Unpriv>

0805f546 <MPU_xTaskGenericNotifyStateClear_Priv>:
 805f546:	bc01      	pop	{r0}
 805f548:	f7fa bfbe 	b.w	805a4c8 <MPU_xTaskGenericNotifyStateClearImpl>

0805f54c <MPU_xTaskGenericNotifyStateClear_Unpriv>:
 805f54c:	bc01      	pop	{r0}
 805f54e:	df04      	svc	4
 805f550:	f7fa ffba 	bl	805a4c8 <MPU_xTaskGenericNotifyStateClearImpl>
 805f554:	df06      	svc	6
 805f556:	4770      	bx	lr
 805f558:	bf00      	nop
 805f55a:	4618      	mov	r0, r3

0805f55c <MPU_ulTaskGenericNotifyValueClear>:
 805f55c:	b401      	push	{r0}
 805f55e:	f3ef 8014 	mrs	r0, CONTROL
 805f562:	f010 0f01 	tst.w	r0, #1
 805f566:	d102      	bne.n	805f56e <MPU_ulTaskGenericNotifyValueClear_Unpriv>

0805f568 <MPU_ulTaskGenericNotifyValueClear_Priv>:
 805f568:	bc01      	pop	{r0}
 805f56a:	f7fa bff3 	b.w	805a554 <MPU_ulTaskGenericNotifyValueClearImpl>

0805f56e <MPU_ulTaskGenericNotifyValueClear_Unpriv>:
 805f56e:	bc01      	pop	{r0}
 805f570:	df04      	svc	4
 805f572:	f7fa ffef 	bl	805a554 <MPU_ulTaskGenericNotifyValueClearImpl>
 805f576:	df06      	svc	6
 805f578:	4770      	bx	lr
 805f57a:	bf00      	nop
 805f57c:	4618      	mov	r0, r3

0805f57e <MPU_xQueueGenericSend>:
 805f57e:	b401      	push	{r0}
 805f580:	f3ef 8014 	mrs	r0, CONTROL
 805f584:	f010 0f01 	tst.w	r0, #1
 805f588:	d102      	bne.n	805f590 <MPU_xQueueGenericSend_Unpriv>

0805f58a <MPU_xQueueGenericSend_Priv>:
 805f58a:	bc01      	pop	{r0}
 805f58c:	f7fb b82c 	b.w	805a5e8 <MPU_xQueueGenericSendImpl>

0805f590 <MPU_xQueueGenericSend_Unpriv>:
 805f590:	bc01      	pop	{r0}
 805f592:	df04      	svc	4
 805f594:	f7fb f828 	bl	805a5e8 <MPU_xQueueGenericSendImpl>
 805f598:	df06      	svc	6
 805f59a:	4770      	bx	lr
 805f59c:	bf00      	nop
 805f59e:	4618      	mov	r0, r3

0805f5a0 <MPU_uxQueueMessagesWaiting>:
 805f5a0:	b401      	push	{r0}
 805f5a2:	f3ef 8014 	mrs	r0, CONTROL
 805f5a6:	f010 0f01 	tst.w	r0, #1
 805f5aa:	d102      	bne.n	805f5b2 <MPU_uxQueueMessagesWaiting_Unpriv>

0805f5ac <MPU_uxQueueMessagesWaiting_Priv>:
 805f5ac:	bc01      	pop	{r0}
 805f5ae:	f7fb b88f 	b.w	805a6d0 <MPU_uxQueueMessagesWaitingImpl>

0805f5b2 <MPU_uxQueueMessagesWaiting_Unpriv>:
 805f5b2:	bc01      	pop	{r0}
 805f5b4:	df04      	svc	4
 805f5b6:	f7fb f88b 	bl	805a6d0 <MPU_uxQueueMessagesWaitingImpl>
 805f5ba:	df06      	svc	6
 805f5bc:	4770      	bx	lr
 805f5be:	bf00      	nop
 805f5c0:	4618      	mov	r0, r3

0805f5c2 <MPU_uxQueueSpacesAvailable>:
 805f5c2:	b401      	push	{r0}
 805f5c4:	f3ef 8014 	mrs	r0, CONTROL
 805f5c8:	f010 0f01 	tst.w	r0, #1
 805f5cc:	d102      	bne.n	805f5d4 <MPU_uxQueueSpacesAvailable_Unpriv>

0805f5ce <MPU_uxQueueSpacesAvailable_Priv>:
 805f5ce:	bc01      	pop	{r0}
 805f5d0:	f7fb b8b6 	b.w	805a740 <MPU_uxQueueSpacesAvailableImpl>

0805f5d4 <MPU_uxQueueSpacesAvailable_Unpriv>:
 805f5d4:	bc01      	pop	{r0}
 805f5d6:	df04      	svc	4
 805f5d8:	f7fb f8b2 	bl	805a740 <MPU_uxQueueSpacesAvailableImpl>
 805f5dc:	df06      	svc	6
 805f5de:	4770      	bx	lr
 805f5e0:	bf00      	nop
 805f5e2:	4618      	mov	r0, r3

0805f5e4 <MPU_xQueueReceive>:
 805f5e4:	b401      	push	{r0}
 805f5e6:	f3ef 8014 	mrs	r0, CONTROL
 805f5ea:	f010 0f01 	tst.w	r0, #1
 805f5ee:	d102      	bne.n	805f5f6 <MPU_xQueueReceive_Unpriv>

0805f5f0 <MPU_xQueueReceive_Priv>:
 805f5f0:	bc01      	pop	{r0}
 805f5f2:	f7fb b8dd 	b.w	805a7b0 <MPU_xQueueReceiveImpl>

0805f5f6 <MPU_xQueueReceive_Unpriv>:
 805f5f6:	bc01      	pop	{r0}
 805f5f8:	df04      	svc	4
 805f5fa:	f7fb f8d9 	bl	805a7b0 <MPU_xQueueReceiveImpl>
 805f5fe:	df06      	svc	6
 805f600:	4770      	bx	lr
 805f602:	bf00      	nop
 805f604:	4618      	mov	r0, r3

0805f606 <MPU_xQueuePeek>:
 805f606:	b401      	push	{r0}
 805f608:	f3ef 8014 	mrs	r0, CONTROL
 805f60c:	f010 0f01 	tst.w	r0, #1
 805f610:	d102      	bne.n	805f618 <MPU_xQueuePeek_Unpriv>

0805f612 <MPU_xQueuePeek_Priv>:
 805f612:	bc01      	pop	{r0}
 805f614:	f7fb b92c 	b.w	805a870 <MPU_xQueuePeekImpl>

0805f618 <MPU_xQueuePeek_Unpriv>:
 805f618:	bc01      	pop	{r0}
 805f61a:	df04      	svc	4
 805f61c:	f7fb f928 	bl	805a870 <MPU_xQueuePeekImpl>
 805f620:	df06      	svc	6
 805f622:	4770      	bx	lr
 805f624:	bf00      	nop
 805f626:	4618      	mov	r0, r3

0805f628 <MPU_xQueueSemaphoreTake>:
 805f628:	b401      	push	{r0}
 805f62a:	f3ef 8014 	mrs	r0, CONTROL
 805f62e:	f010 0f01 	tst.w	r0, #1
 805f632:	d102      	bne.n	805f63a <MPU_xQueueSemaphoreTake_Unpriv>

0805f634 <MPU_xQueueSemaphoreTake_Priv>:
 805f634:	bc01      	pop	{r0}
 805f636:	f7fb b97b 	b.w	805a930 <MPU_xQueueSemaphoreTakeImpl>

0805f63a <MPU_xQueueSemaphoreTake_Unpriv>:
 805f63a:	bc01      	pop	{r0}
 805f63c:	df04      	svc	4
 805f63e:	f7fb f977 	bl	805a930 <MPU_xQueueSemaphoreTakeImpl>
 805f642:	df06      	svc	6
 805f644:	4770      	bx	lr
 805f646:	bf00      	nop
 805f648:	4618      	mov	r0, r3

0805f64a <MPU_xQueueGetMutexHolder>:
 805f64a:	b401      	push	{r0}
 805f64c:	f3ef 8014 	mrs	r0, CONTROL
 805f650:	f010 0f01 	tst.w	r0, #1
 805f654:	d102      	bne.n	805f65c <MPU_xQueueGetMutexHolder_Unpriv>

0805f656 <MPU_xQueueGetMutexHolder_Priv>:
 805f656:	bc01      	pop	{r0}
 805f658:	f7fb b9b8 	b.w	805a9cc <MPU_xQueueGetMutexHolderImpl>

0805f65c <MPU_xQueueGetMutexHolder_Unpriv>:
 805f65c:	bc01      	pop	{r0}
 805f65e:	df04      	svc	4
 805f660:	f7fb f9b4 	bl	805a9cc <MPU_xQueueGetMutexHolderImpl>
 805f664:	df06      	svc	6
 805f666:	4770      	bx	lr
 805f668:	bf00      	nop
 805f66a:	4618      	mov	r0, r3

0805f66c <MPU_xQueueTakeMutexRecursive>:
 805f66c:	b401      	push	{r0}
 805f66e:	f3ef 8014 	mrs	r0, CONTROL
 805f672:	f010 0f01 	tst.w	r0, #1
 805f676:	d102      	bne.n	805f67e <MPU_xQueueTakeMutexRecursive_Unpriv>

0805f678 <MPU_xQueueTakeMutexRecursive_Priv>:
 805f678:	bc01      	pop	{r0}
 805f67a:	f7fb b9f1 	b.w	805aa60 <MPU_xQueueTakeMutexRecursiveImpl>

0805f67e <MPU_xQueueTakeMutexRecursive_Unpriv>:
 805f67e:	bc01      	pop	{r0}
 805f680:	df04      	svc	4
 805f682:	f7fb f9ed 	bl	805aa60 <MPU_xQueueTakeMutexRecursiveImpl>
 805f686:	df06      	svc	6
 805f688:	4770      	bx	lr
 805f68a:	bf00      	nop
 805f68c:	4618      	mov	r0, r3

0805f68e <MPU_xQueueGiveMutexRecursive>:
 805f68e:	b401      	push	{r0}
 805f690:	f3ef 8014 	mrs	r0, CONTROL
 805f694:	f010 0f01 	tst.w	r0, #1
 805f698:	d102      	bne.n	805f6a0 <MPU_xQueueGiveMutexRecursive_Unpriv>

0805f69a <MPU_xQueueGiveMutexRecursive_Priv>:
 805f69a:	bc01      	pop	{r0}
 805f69c:	f7fb ba1a 	b.w	805aad4 <MPU_xQueueGiveMutexRecursiveImpl>

0805f6a0 <MPU_xQueueGiveMutexRecursive_Unpriv>:
 805f6a0:	bc01      	pop	{r0}
 805f6a2:	df04      	svc	4
 805f6a4:	f7fb fa16 	bl	805aad4 <MPU_xQueueGiveMutexRecursiveImpl>
 805f6a8:	df06      	svc	6
 805f6aa:	4770      	bx	lr
 805f6ac:	bf00      	nop
 805f6ae:	4618      	mov	r0, r3

0805f6b0 <MPU_vQueueAddToRegistry>:
 805f6b0:	b401      	push	{r0}
 805f6b2:	f3ef 8014 	mrs	r0, CONTROL
 805f6b6:	f010 0f01 	tst.w	r0, #1
 805f6ba:	d102      	bne.n	805f6c2 <MPU_vQueueAddToRegistry_Unpriv>

0805f6bc <MPU_vQueueAddToRegistry_Priv>:
 805f6bc:	bc01      	pop	{r0}
 805f6be:	f7fb ba41 	b.w	805ab44 <MPU_vQueueAddToRegistryImpl>

0805f6c2 <MPU_vQueueAddToRegistry_Unpriv>:
 805f6c2:	bc01      	pop	{r0}
 805f6c4:	df04      	svc	4
 805f6c6:	f7fb fa3d 	bl	805ab44 <MPU_vQueueAddToRegistryImpl>
 805f6ca:	df06      	svc	6
 805f6cc:	4770      	bx	lr
 805f6ce:	bf00      	nop

0805f6d0 <MPU_vQueueUnregisterQueue>:
 805f6d0:	b401      	push	{r0}
 805f6d2:	f3ef 8014 	mrs	r0, CONTROL
 805f6d6:	f010 0f01 	tst.w	r0, #1
 805f6da:	d102      	bne.n	805f6e2 <MPU_vQueueUnregisterQueue_Unpriv>

0805f6dc <MPU_vQueueUnregisterQueue_Priv>:
 805f6dc:	bc01      	pop	{r0}
 805f6de:	f7fb ba67 	b.w	805abb0 <MPU_vQueueUnregisterQueueImpl>

0805f6e2 <MPU_vQueueUnregisterQueue_Unpriv>:
 805f6e2:	bc01      	pop	{r0}
 805f6e4:	df04      	svc	4
 805f6e6:	f7fb fa63 	bl	805abb0 <MPU_vQueueUnregisterQueueImpl>
 805f6ea:	df06      	svc	6
 805f6ec:	4770      	bx	lr
 805f6ee:	bf00      	nop

0805f6f0 <MPU_pcQueueGetName>:
 805f6f0:	b401      	push	{r0}
 805f6f2:	f3ef 8014 	mrs	r0, CONTROL
 805f6f6:	f010 0f01 	tst.w	r0, #1
 805f6fa:	d102      	bne.n	805f702 <MPU_pcQueueGetName_Unpriv>

0805f6fc <MPU_pcQueueGetName_Priv>:
 805f6fc:	bc01      	pop	{r0}
 805f6fe:	f7fb ba8b 	b.w	805ac18 <MPU_pcQueueGetNameImpl>

0805f702 <MPU_pcQueueGetName_Unpriv>:
 805f702:	bc01      	pop	{r0}
 805f704:	df04      	svc	4
 805f706:	f7fb fa87 	bl	805ac18 <MPU_pcQueueGetNameImpl>
 805f70a:	df06      	svc	6
 805f70c:	4770      	bx	lr
 805f70e:	bf00      	nop
 805f710:	4618      	mov	r0, r3

0805f712 <MPU_pvTimerGetTimerID>:
 805f712:	b401      	push	{r0}
 805f714:	f3ef 8014 	mrs	r0, CONTROL
 805f718:	f010 0f01 	tst.w	r0, #1
 805f71c:	d102      	bne.n	805f724 <MPU_pvTimerGetTimerID_Unpriv>

0805f71e <MPU_pvTimerGetTimerID_Priv>:
 805f71e:	bc01      	pop	{r0}
 805f720:	f7fb bab2 	b.w	805ac88 <MPU_pvTimerGetTimerIDImpl>

0805f724 <MPU_pvTimerGetTimerID_Unpriv>:
 805f724:	bc01      	pop	{r0}
 805f726:	df04      	svc	4
 805f728:	f7fb faae 	bl	805ac88 <MPU_pvTimerGetTimerIDImpl>
 805f72c:	df06      	svc	6
 805f72e:	4770      	bx	lr
 805f730:	bf00      	nop
 805f732:	4618      	mov	r0, r3

0805f734 <MPU_vTimerSetTimerID>:
 805f734:	b401      	push	{r0}
 805f736:	f3ef 8014 	mrs	r0, CONTROL
 805f73a:	f010 0f01 	tst.w	r0, #1
 805f73e:	d102      	bne.n	805f746 <MPU_vTimerSetTimerID_Unpriv>

0805f740 <MPU_vTimerSetTimerID_Priv>:
 805f740:	bc01      	pop	{r0}
 805f742:	f7fb bad9 	b.w	805acf8 <MPU_vTimerSetTimerIDImpl>

0805f746 <MPU_vTimerSetTimerID_Unpriv>:
 805f746:	bc01      	pop	{r0}
 805f748:	df04      	svc	4
 805f74a:	f7fb fad5 	bl	805acf8 <MPU_vTimerSetTimerIDImpl>
 805f74e:	df06      	svc	6
 805f750:	4770      	bx	lr
 805f752:	bf00      	nop

0805f754 <MPU_xTimerIsTimerActive>:
 805f754:	b401      	push	{r0}
 805f756:	f3ef 8014 	mrs	r0, CONTROL
 805f75a:	f010 0f01 	tst.w	r0, #1
 805f75e:	d102      	bne.n	805f766 <MPU_xTimerIsTimerActive_Unpriv>

0805f760 <MPU_xTimerIsTimerActive_Priv>:
 805f760:	bc01      	pop	{r0}
 805f762:	f7fb baff 	b.w	805ad64 <MPU_xTimerIsTimerActiveImpl>

0805f766 <MPU_xTimerIsTimerActive_Unpriv>:
 805f766:	bc01      	pop	{r0}
 805f768:	df04      	svc	4
 805f76a:	f7fb fafb 	bl	805ad64 <MPU_xTimerIsTimerActiveImpl>
 805f76e:	df06      	svc	6
 805f770:	4770      	bx	lr
 805f772:	bf00      	nop
 805f774:	4618      	mov	r0, r3

0805f776 <MPU_xTimerGetTimerDaemonTaskHandle>:
 805f776:	b401      	push	{r0}
 805f778:	f3ef 8014 	mrs	r0, CONTROL
 805f77c:	f010 0f01 	tst.w	r0, #1
 805f780:	d102      	bne.n	805f788 <MPU_xTimerGetTimerDaemonTaskHandle_Unpriv>

0805f782 <MPU_xTimerGetTimerDaemonTaskHandle_Priv>:
 805f782:	bc01      	pop	{r0}
 805f784:	f7fb bb26 	b.w	805add4 <MPU_xTimerGetTimerDaemonTaskHandleImpl>

0805f788 <MPU_xTimerGetTimerDaemonTaskHandle_Unpriv>:
 805f788:	bc01      	pop	{r0}
 805f78a:	df04      	svc	4
 805f78c:	f7fb fb22 	bl	805add4 <MPU_xTimerGetTimerDaemonTaskHandleImpl>
 805f790:	df06      	svc	6
 805f792:	4770      	bx	lr
 805f794:	bf00      	nop
 805f796:	4618      	mov	r0, r3

0805f798 <MPU_xTimerGenericCommandFromTask>:
 805f798:	b401      	push	{r0}
 805f79a:	f3ef 8014 	mrs	r0, CONTROL
 805f79e:	f010 0f01 	tst.w	r0, #1
 805f7a2:	d102      	bne.n	805f7aa <MPU_xTimerGenericCommandFromTask_Unpriv>

0805f7a4 <MPU_xTimerGenericCommandFromTask_Priv>:
 805f7a4:	bc01      	pop	{r0}
 805f7a6:	f7fb bb23 	b.w	805adf0 <MPU_xTimerGenericCommandFromTaskImpl>

0805f7aa <MPU_xTimerGenericCommandFromTask_Unpriv>:
 805f7aa:	bc01      	pop	{r0}
 805f7ac:	df05      	svc	5
 805f7ae:	f7fb fb1f 	bl	805adf0 <MPU_xTimerGenericCommandFromTaskImpl>
 805f7b2:	df06      	svc	6
 805f7b4:	4770      	bx	lr
 805f7b6:	bf00      	nop
 805f7b8:	4618      	mov	r0, r3

0805f7ba <MPU_pcTimerGetName>:
 805f7ba:	b401      	push	{r0}
 805f7bc:	f3ef 8014 	mrs	r0, CONTROL
 805f7c0:	f010 0f01 	tst.w	r0, #1
 805f7c4:	d102      	bne.n	805f7cc <MPU_pcTimerGetName_Unpriv>

0805f7c6 <MPU_pcTimerGetName_Priv>:
 805f7c6:	bc01      	pop	{r0}
 805f7c8:	f7fb bb68 	b.w	805ae9c <MPU_pcTimerGetNameImpl>

0805f7cc <MPU_pcTimerGetName_Unpriv>:
 805f7cc:	bc01      	pop	{r0}
 805f7ce:	df04      	svc	4
 805f7d0:	f7fb fb64 	bl	805ae9c <MPU_pcTimerGetNameImpl>
 805f7d4:	df06      	svc	6
 805f7d6:	4770      	bx	lr
 805f7d8:	bf00      	nop
 805f7da:	4618      	mov	r0, r3

0805f7dc <MPU_vTimerSetReloadMode>:
 805f7dc:	b401      	push	{r0}
 805f7de:	f3ef 8014 	mrs	r0, CONTROL
 805f7e2:	f010 0f01 	tst.w	r0, #1
 805f7e6:	d102      	bne.n	805f7ee <MPU_vTimerSetReloadMode_Unpriv>

0805f7e8 <MPU_vTimerSetReloadMode_Priv>:
 805f7e8:	bc01      	pop	{r0}
 805f7ea:	f7fb bb8f 	b.w	805af0c <MPU_vTimerSetReloadModeImpl>

0805f7ee <MPU_vTimerSetReloadMode_Unpriv>:
 805f7ee:	bc01      	pop	{r0}
 805f7f0:	df04      	svc	4
 805f7f2:	f7fb fb8b 	bl	805af0c <MPU_vTimerSetReloadModeImpl>
 805f7f6:	df06      	svc	6
 805f7f8:	4770      	bx	lr
 805f7fa:	bf00      	nop

0805f7fc <MPU_xTimerGetReloadMode>:
 805f7fc:	b401      	push	{r0}
 805f7fe:	f3ef 8014 	mrs	r0, CONTROL
 805f802:	f010 0f01 	tst.w	r0, #1
 805f806:	d102      	bne.n	805f80e <MPU_xTimerGetReloadMode_Unpriv>

0805f808 <MPU_xTimerGetReloadMode_Priv>:
 805f808:	bc01      	pop	{r0}
 805f80a:	f7fb bbb7 	b.w	805af7c <MPU_xTimerGetReloadModeImpl>

0805f80e <MPU_xTimerGetReloadMode_Unpriv>:
 805f80e:	bc01      	pop	{r0}
 805f810:	df04      	svc	4
 805f812:	f7fb fbb3 	bl	805af7c <MPU_xTimerGetReloadModeImpl>
 805f816:	df06      	svc	6
 805f818:	4770      	bx	lr
 805f81a:	bf00      	nop
 805f81c:	4618      	mov	r0, r3

0805f81e <MPU_uxTimerGetReloadMode>:
 805f81e:	b401      	push	{r0}
 805f820:	f3ef 8014 	mrs	r0, CONTROL
 805f824:	f010 0f01 	tst.w	r0, #1
 805f828:	d102      	bne.n	805f830 <MPU_uxTimerGetReloadMode_Unpriv>

0805f82a <MPU_uxTimerGetReloadMode_Priv>:
 805f82a:	bc01      	pop	{r0}
 805f82c:	f7fb bbde 	b.w	805afec <MPU_uxTimerGetReloadModeImpl>

0805f830 <MPU_uxTimerGetReloadMode_Unpriv>:
 805f830:	bc01      	pop	{r0}
 805f832:	df04      	svc	4
 805f834:	f7fb fbda 	bl	805afec <MPU_uxTimerGetReloadModeImpl>
 805f838:	df06      	svc	6
 805f83a:	4770      	bx	lr
 805f83c:	bf00      	nop
 805f83e:	4618      	mov	r0, r3

0805f840 <MPU_xTimerGetPeriod>:
 805f840:	b401      	push	{r0}
 805f842:	f3ef 8014 	mrs	r0, CONTROL
 805f846:	f010 0f01 	tst.w	r0, #1
 805f84a:	d102      	bne.n	805f852 <MPU_xTimerGetPeriod_Unpriv>

0805f84c <MPU_xTimerGetPeriod_Priv>:
 805f84c:	bc01      	pop	{r0}
 805f84e:	f7fb bc05 	b.w	805b05c <MPU_xTimerGetPeriodImpl>

0805f852 <MPU_xTimerGetPeriod_Unpriv>:
 805f852:	bc01      	pop	{r0}
 805f854:	df04      	svc	4
 805f856:	f7fb fc01 	bl	805b05c <MPU_xTimerGetPeriodImpl>
 805f85a:	df06      	svc	6
 805f85c:	4770      	bx	lr
 805f85e:	bf00      	nop
 805f860:	4618      	mov	r0, r3

0805f862 <MPU_xTimerGetExpiryTime>:
 805f862:	b401      	push	{r0}
 805f864:	f3ef 8014 	mrs	r0, CONTROL
 805f868:	f010 0f01 	tst.w	r0, #1
 805f86c:	d102      	bne.n	805f874 <MPU_xTimerGetExpiryTime_Unpriv>

0805f86e <MPU_xTimerGetExpiryTime_Priv>:
 805f86e:	bc01      	pop	{r0}
 805f870:	f7fb bc2c 	b.w	805b0cc <MPU_xTimerGetExpiryTimeImpl>

0805f874 <MPU_xTimerGetExpiryTime_Unpriv>:
 805f874:	bc01      	pop	{r0}
 805f876:	df04      	svc	4
 805f878:	f7fb fc28 	bl	805b0cc <MPU_xTimerGetExpiryTimeImpl>
 805f87c:	df06      	svc	6
 805f87e:	4770      	bx	lr
 805f880:	bf00      	nop
 805f882:	4618      	mov	r0, r3

0805f884 <MPU_xEventGroupWaitBits>:
 805f884:	b401      	push	{r0}
 805f886:	f3ef 8014 	mrs	r0, CONTROL
 805f88a:	f010 0f01 	tst.w	r0, #1
 805f88e:	d102      	bne.n	805f896 <MPU_xEventGroupWaitBits_Unpriv>

0805f890 <MPU_xEventGroupWaitBits_Priv>:
 805f890:	bc01      	pop	{r0}
 805f892:	f7fb bc53 	b.w	805b13c <MPU_xEventGroupWaitBitsImpl>

0805f896 <MPU_xEventGroupWaitBits_Unpriv>:
 805f896:	bc01      	pop	{r0}
 805f898:	df05      	svc	5
 805f89a:	f7fb fc4f 	bl	805b13c <MPU_xEventGroupWaitBitsImpl>
 805f89e:	df06      	svc	6
 805f8a0:	4770      	bx	lr
 805f8a2:	bf00      	nop
 805f8a4:	4618      	mov	r0, r3

0805f8a6 <MPU_xEventGroupClearBits>:
 805f8a6:	b401      	push	{r0}
 805f8a8:	f3ef 8014 	mrs	r0, CONTROL
 805f8ac:	f010 0f01 	tst.w	r0, #1
 805f8b0:	d102      	bne.n	805f8b8 <MPU_xEventGroupClearBits_Unpriv>

0805f8b2 <MPU_xEventGroupClearBits_Priv>:
 805f8b2:	bc01      	pop	{r0}
 805f8b4:	f7fb bc94 	b.w	805b1e0 <MPU_xEventGroupClearBitsImpl>

0805f8b8 <MPU_xEventGroupClearBits_Unpriv>:
 805f8b8:	bc01      	pop	{r0}
 805f8ba:	df04      	svc	4
 805f8bc:	f7fb fc90 	bl	805b1e0 <MPU_xEventGroupClearBitsImpl>
 805f8c0:	df06      	svc	6
 805f8c2:	4770      	bx	lr
 805f8c4:	bf00      	nop
 805f8c6:	4618      	mov	r0, r3

0805f8c8 <MPU_xEventGroupSetBits>:
 805f8c8:	b401      	push	{r0}
 805f8ca:	f3ef 8014 	mrs	r0, CONTROL
 805f8ce:	f010 0f01 	tst.w	r0, #1
 805f8d2:	d102      	bne.n	805f8da <MPU_xEventGroupSetBits_Unpriv>

0805f8d4 <MPU_xEventGroupSetBits_Priv>:
 805f8d4:	bc01      	pop	{r0}
 805f8d6:	f7fb bcc3 	b.w	805b260 <MPU_xEventGroupSetBitsImpl>

0805f8da <MPU_xEventGroupSetBits_Unpriv>:
 805f8da:	bc01      	pop	{r0}
 805f8dc:	df04      	svc	4
 805f8de:	f7fb fcbf 	bl	805b260 <MPU_xEventGroupSetBitsImpl>
 805f8e2:	df06      	svc	6
 805f8e4:	4770      	bx	lr
 805f8e6:	bf00      	nop
 805f8e8:	4618      	mov	r0, r3

0805f8ea <MPU_xEventGroupSync>:
 805f8ea:	b401      	push	{r0}
 805f8ec:	f3ef 8014 	mrs	r0, CONTROL
 805f8f0:	f010 0f01 	tst.w	r0, #1
 805f8f4:	d102      	bne.n	805f8fc <MPU_xEventGroupSync_Unpriv>

0805f8f6 <MPU_xEventGroupSync_Priv>:
 805f8f6:	bc01      	pop	{r0}
 805f8f8:	f7fb bcf2 	b.w	805b2e0 <MPU_xEventGroupSyncImpl>

0805f8fc <MPU_xEventGroupSync_Unpriv>:
 805f8fc:	bc01      	pop	{r0}
 805f8fe:	df04      	svc	4
 805f900:	f7fb fcee 	bl	805b2e0 <MPU_xEventGroupSyncImpl>
 805f904:	df06      	svc	6
 805f906:	4770      	bx	lr
 805f908:	bf00      	nop
 805f90a:	4618      	mov	r0, r3

0805f90c <MPU_uxEventGroupGetNumber>:
 805f90c:	b401      	push	{r0}
 805f90e:	f3ef 8014 	mrs	r0, CONTROL
 805f912:	f010 0f01 	tst.w	r0, #1
 805f916:	d102      	bne.n	805f91e <MPU_uxEventGroupGetNumber_Unpriv>

0805f918 <MPU_uxEventGroupGetNumber_Priv>:
 805f918:	bc01      	pop	{r0}
 805f91a:	f7fb bd31 	b.w	805b380 <MPU_uxEventGroupGetNumberImpl>

0805f91e <MPU_uxEventGroupGetNumber_Unpriv>:
 805f91e:	bc01      	pop	{r0}
 805f920:	df04      	svc	4
 805f922:	f7fb fd2d 	bl	805b380 <MPU_uxEventGroupGetNumberImpl>
 805f926:	df06      	svc	6
 805f928:	4770      	bx	lr
 805f92a:	bf00      	nop
 805f92c:	4618      	mov	r0, r3

0805f92e <MPU_vEventGroupSetNumber>:
 805f92e:	b401      	push	{r0}
 805f930:	f3ef 8014 	mrs	r0, CONTROL
 805f934:	f010 0f01 	tst.w	r0, #1
 805f938:	d102      	bne.n	805f940 <MPU_vEventGroupSetNumber_Unpriv>

0805f93a <MPU_vEventGroupSetNumber_Priv>:
 805f93a:	bc01      	pop	{r0}
 805f93c:	f7fb bd58 	b.w	805b3f0 <MPU_vEventGroupSetNumberImpl>

0805f940 <MPU_vEventGroupSetNumber_Unpriv>:
 805f940:	bc01      	pop	{r0}
 805f942:	df04      	svc	4
 805f944:	f7fb fd54 	bl	805b3f0 <MPU_vEventGroupSetNumberImpl>
 805f948:	df06      	svc	6
 805f94a:	4770      	bx	lr
 805f94c:	bf00      	nop

0805f94e <MPU_xStreamBufferSend>:
 805f94e:	b401      	push	{r0}
 805f950:	f3ef 8014 	mrs	r0, CONTROL
 805f954:	f010 0f01 	tst.w	r0, #1
 805f958:	d102      	bne.n	805f960 <MPU_xStreamBufferSend_Unpriv>

0805f95a <MPU_xStreamBufferSend_Priv>:
 805f95a:	bc01      	pop	{r0}
 805f95c:	f7fb bd7e 	b.w	805b45c <MPU_xStreamBufferSendImpl>

0805f960 <MPU_xStreamBufferSend_Unpriv>:
 805f960:	bc01      	pop	{r0}
 805f962:	df04      	svc	4
 805f964:	f7fb fd7a 	bl	805b45c <MPU_xStreamBufferSendImpl>
 805f968:	df06      	svc	6
 805f96a:	4770      	bx	lr
 805f96c:	bf00      	nop
 805f96e:	4618      	mov	r0, r3

0805f970 <MPU_xStreamBufferReceive>:
 805f970:	b401      	push	{r0}
 805f972:	f3ef 8014 	mrs	r0, CONTROL
 805f976:	f010 0f01 	tst.w	r0, #1
 805f97a:	d102      	bne.n	805f982 <MPU_xStreamBufferReceive_Unpriv>

0805f97c <MPU_xStreamBufferReceive_Priv>:
 805f97c:	bc01      	pop	{r0}
 805f97e:	f7fb bdbb 	b.w	805b4f8 <MPU_xStreamBufferReceiveImpl>

0805f982 <MPU_xStreamBufferReceive_Unpriv>:
 805f982:	bc01      	pop	{r0}
 805f984:	df04      	svc	4
 805f986:	f7fb fdb7 	bl	805b4f8 <MPU_xStreamBufferReceiveImpl>
 805f98a:	df06      	svc	6
 805f98c:	4770      	bx	lr
 805f98e:	bf00      	nop
 805f990:	4618      	mov	r0, r3

0805f992 <MPU_xStreamBufferIsFull>:
 805f992:	b401      	push	{r0}
 805f994:	f3ef 8014 	mrs	r0, CONTROL
 805f998:	f010 0f01 	tst.w	r0, #1
 805f99c:	d102      	bne.n	805f9a4 <MPU_xStreamBufferIsFull_Unpriv>

0805f99e <MPU_xStreamBufferIsFull_Priv>:
 805f99e:	bc01      	pop	{r0}
 805f9a0:	f7fb bdf8 	b.w	805b594 <MPU_xStreamBufferIsFullImpl>

0805f9a4 <MPU_xStreamBufferIsFull_Unpriv>:
 805f9a4:	bc01      	pop	{r0}
 805f9a6:	df04      	svc	4
 805f9a8:	f7fb fdf4 	bl	805b594 <MPU_xStreamBufferIsFullImpl>
 805f9ac:	df06      	svc	6
 805f9ae:	4770      	bx	lr
 805f9b0:	bf00      	nop
 805f9b2:	4618      	mov	r0, r3

0805f9b4 <MPU_xStreamBufferIsEmpty>:
 805f9b4:	b401      	push	{r0}
 805f9b6:	f3ef 8014 	mrs	r0, CONTROL
 805f9ba:	f010 0f01 	tst.w	r0, #1
 805f9be:	d102      	bne.n	805f9c6 <MPU_xStreamBufferIsEmpty_Unpriv>

0805f9c0 <MPU_xStreamBufferIsEmpty_Priv>:
 805f9c0:	bc01      	pop	{r0}
 805f9c2:	f7fb be1f 	b.w	805b604 <MPU_xStreamBufferIsEmptyImpl>

0805f9c6 <MPU_xStreamBufferIsEmpty_Unpriv>:
 805f9c6:	bc01      	pop	{r0}
 805f9c8:	df04      	svc	4
 805f9ca:	f7fb fe1b 	bl	805b604 <MPU_xStreamBufferIsEmptyImpl>
 805f9ce:	df06      	svc	6
 805f9d0:	4770      	bx	lr
 805f9d2:	bf00      	nop
 805f9d4:	4618      	mov	r0, r3

0805f9d6 <MPU_xStreamBufferSpacesAvailable>:
 805f9d6:	b401      	push	{r0}
 805f9d8:	f3ef 8014 	mrs	r0, CONTROL
 805f9dc:	f010 0f01 	tst.w	r0, #1
 805f9e0:	d102      	bne.n	805f9e8 <MPU_xStreamBufferSpacesAvailable_Unpriv>

0805f9e2 <MPU_xStreamBufferSpacesAvailable_Priv>:
 805f9e2:	bc01      	pop	{r0}
 805f9e4:	f7fb be46 	b.w	805b674 <MPU_xStreamBufferSpacesAvailableImpl>

0805f9e8 <MPU_xStreamBufferSpacesAvailable_Unpriv>:
 805f9e8:	bc01      	pop	{r0}
 805f9ea:	df04      	svc	4
 805f9ec:	f7fb fe42 	bl	805b674 <MPU_xStreamBufferSpacesAvailableImpl>
 805f9f0:	df06      	svc	6
 805f9f2:	4770      	bx	lr
 805f9f4:	bf00      	nop
 805f9f6:	4618      	mov	r0, r3

0805f9f8 <MPU_xStreamBufferBytesAvailable>:
 805f9f8:	b401      	push	{r0}
 805f9fa:	f3ef 8014 	mrs	r0, CONTROL
 805f9fe:	f010 0f01 	tst.w	r0, #1
 805fa02:	d102      	bne.n	805fa0a <MPU_xStreamBufferBytesAvailable_Unpriv>

0805fa04 <MPU_xStreamBufferBytesAvailable_Priv>:
 805fa04:	bc01      	pop	{r0}
 805fa06:	f7fb be6d 	b.w	805b6e4 <MPU_xStreamBufferBytesAvailableImpl>

0805fa0a <MPU_xStreamBufferBytesAvailable_Unpriv>:
 805fa0a:	bc01      	pop	{r0}
 805fa0c:	df04      	svc	4
 805fa0e:	f7fb fe69 	bl	805b6e4 <MPU_xStreamBufferBytesAvailableImpl>
 805fa12:	df06      	svc	6
 805fa14:	4770      	bx	lr
 805fa16:	bf00      	nop
 805fa18:	4618      	mov	r0, r3

0805fa1a <MPU_xStreamBufferSetTriggerLevel>:
 805fa1a:	b401      	push	{r0}
 805fa1c:	f3ef 8014 	mrs	r0, CONTROL
 805fa20:	f010 0f01 	tst.w	r0, #1
 805fa24:	d102      	bne.n	805fa2c <MPU_xStreamBufferSetTriggerLevel_Unpriv>

0805fa26 <MPU_xStreamBufferSetTriggerLevel_Priv>:
 805fa26:	bc01      	pop	{r0}
 805fa28:	f7fb be94 	b.w	805b754 <MPU_xStreamBufferSetTriggerLevelImpl>

0805fa2c <MPU_xStreamBufferSetTriggerLevel_Unpriv>:
 805fa2c:	bc01      	pop	{r0}
 805fa2e:	df04      	svc	4
 805fa30:	f7fb fe90 	bl	805b754 <MPU_xStreamBufferSetTriggerLevelImpl>
 805fa34:	df06      	svc	6
 805fa36:	4770      	bx	lr
 805fa38:	bf00      	nop
 805fa3a:	4618      	mov	r0, r3

0805fa3c <MPU_xStreamBufferNextMessageLengthBytes>:
 805fa3c:	b401      	push	{r0}
 805fa3e:	f3ef 8014 	mrs	r0, CONTROL
 805fa42:	f010 0f01 	tst.w	r0, #1
 805fa46:	d102      	bne.n	805fa4e <MPU_xStreamBufferNextMessageLengthBytes_Unpriv>

0805fa48 <MPU_xStreamBufferNextMessageLengthBytes_Priv>:
 805fa48:	bc01      	pop	{r0}
 805fa4a:	f7fb bebd 	b.w	805b7c8 <MPU_xStreamBufferNextMessageLengthBytesImpl>

0805fa4e <MPU_xStreamBufferNextMessageLengthBytes_Unpriv>:
 805fa4e:	bc01      	pop	{r0}
 805fa50:	df04      	svc	4
 805fa52:	f7fb feb9 	bl	805b7c8 <MPU_xStreamBufferNextMessageLengthBytesImpl>
 805fa56:	df06      	svc	6
 805fa58:	4770      	bx	lr
 805fa5a:	bf00      	nop
 805fa5c:	4618      	mov	r0, r3
	...

0805fa5f <__syscalls_flash_end__>:
	...

Disassembly of section .text:

0805fa60 <deregister_tm_clones>:
 805fa60:	4803      	ldr	r0, [pc, #12]	; (805fa70 <deregister_tm_clones+0x10>)
 805fa62:	4b04      	ldr	r3, [pc, #16]	; (805fa74 <deregister_tm_clones+0x14>)
 805fa64:	4283      	cmp	r3, r0
 805fa66:	d002      	beq.n	805fa6e <deregister_tm_clones+0xe>
 805fa68:	4b03      	ldr	r3, [pc, #12]	; (805fa78 <deregister_tm_clones+0x18>)
 805fa6a:	b103      	cbz	r3, 805fa6e <deregister_tm_clones+0xe>
 805fa6c:	4718      	bx	r3
 805fa6e:	4770      	bx	lr
 805fa70:	20003bfc 	.word	0x20003bfc
 805fa74:	20003bfc 	.word	0x20003bfc
 805fa78:	00000000 	.word	0x00000000

0805fa7c <register_tm_clones>:
 805fa7c:	4b06      	ldr	r3, [pc, #24]	; (805fa98 <register_tm_clones+0x1c>)
 805fa7e:	4907      	ldr	r1, [pc, #28]	; (805fa9c <register_tm_clones+0x20>)
 805fa80:	1ac9      	subs	r1, r1, r3
 805fa82:	1089      	asrs	r1, r1, #2
 805fa84:	bf48      	it	mi
 805fa86:	3101      	addmi	r1, #1
 805fa88:	1049      	asrs	r1, r1, #1
 805fa8a:	d003      	beq.n	805fa94 <register_tm_clones+0x18>
 805fa8c:	4b04      	ldr	r3, [pc, #16]	; (805faa0 <register_tm_clones+0x24>)
 805fa8e:	b10b      	cbz	r3, 805fa94 <register_tm_clones+0x18>
 805fa90:	4801      	ldr	r0, [pc, #4]	; (805fa98 <register_tm_clones+0x1c>)
 805fa92:	4718      	bx	r3
 805fa94:	4770      	bx	lr
 805fa96:	bf00      	nop
 805fa98:	20003bfc 	.word	0x20003bfc
 805fa9c:	20003bfc 	.word	0x20003bfc
 805faa0:	00000000 	.word	0x00000000

0805faa4 <__do_global_dtors_aux>:
 805faa4:	b510      	push	{r4, lr}
 805faa6:	4c06      	ldr	r4, [pc, #24]	; (805fac0 <__do_global_dtors_aux+0x1c>)
 805faa8:	7823      	ldrb	r3, [r4, #0]
 805faaa:	b943      	cbnz	r3, 805fabe <__do_global_dtors_aux+0x1a>
 805faac:	f7ff ffd8 	bl	805fa60 <deregister_tm_clones>
 805fab0:	4b04      	ldr	r3, [pc, #16]	; (805fac4 <__do_global_dtors_aux+0x20>)
 805fab2:	b113      	cbz	r3, 805faba <__do_global_dtors_aux+0x16>
 805fab4:	4804      	ldr	r0, [pc, #16]	; (805fac8 <__do_global_dtors_aux+0x24>)
 805fab6:	f3af 8000 	nop.w
 805faba:	2301      	movs	r3, #1
 805fabc:	7023      	strb	r3, [r4, #0]
 805fabe:	bd10      	pop	{r4, pc}
 805fac0:	20003c00 	.word	0x20003c00
 805fac4:	00000000 	.word	0x00000000
 805fac8:	0805520c 	.word	0x0805520c

0805facc <frame_dummy>:
 805facc:	b508      	push	{r3, lr}
 805face:	4b04      	ldr	r3, [pc, #16]	; (805fae0 <frame_dummy+0x14>)
 805fad0:	b11b      	cbz	r3, 805fada <frame_dummy+0xe>
 805fad2:	4904      	ldr	r1, [pc, #16]	; (805fae4 <frame_dummy+0x18>)
 805fad4:	4804      	ldr	r0, [pc, #16]	; (805fae8 <frame_dummy+0x1c>)
 805fad6:	f3af 8000 	nop.w
 805fada:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 805fade:	e7cd      	b.n	805fa7c <register_tm_clones>
 805fae0:	00000000 	.word	0x00000000
 805fae4:	20003c04 	.word	0x20003c04
 805fae8:	0805520c 	.word	0x0805520c

0805faec <_stack_init>:
 805faec:	f5a3 3a80 	sub.w	sl, r3, #65536	; 0x10000
 805faf0:	4770      	bx	lr
 805faf2:	bf00      	nop

0805faf4 <_mainCRTStartup>:
 805faf4:	4b15      	ldr	r3, [pc, #84]	; (805fb4c <_mainCRTStartup+0x58>)
 805faf6:	2b00      	cmp	r3, #0
 805faf8:	bf08      	it	eq
 805fafa:	4b11      	ldreq	r3, [pc, #68]	; (805fb40 <_mainCRTStartup+0x4c>)
 805fafc:	469d      	mov	sp, r3
 805fafe:	f7ff fff5 	bl	805faec <_stack_init>
 805fb02:	2100      	movs	r1, #0
 805fb04:	468b      	mov	fp, r1
 805fb06:	460f      	mov	r7, r1
 805fb08:	4811      	ldr	r0, [pc, #68]	; (805fb50 <_mainCRTStartup+0x5c>)
 805fb0a:	4a12      	ldr	r2, [pc, #72]	; (805fb54 <_mainCRTStartup+0x60>)
 805fb0c:	1a12      	subs	r2, r2, r0
 805fb0e:	f000 ff6f 	bl	80609f0 <memset>
 805fb12:	4b0c      	ldr	r3, [pc, #48]	; (805fb44 <_mainCRTStartup+0x50>)
 805fb14:	2b00      	cmp	r3, #0
 805fb16:	d000      	beq.n	805fb1a <_mainCRTStartup+0x26>
 805fb18:	4798      	blx	r3
 805fb1a:	4b0b      	ldr	r3, [pc, #44]	; (805fb48 <_mainCRTStartup+0x54>)
 805fb1c:	2b00      	cmp	r3, #0
 805fb1e:	d000      	beq.n	805fb22 <_mainCRTStartup+0x2e>
 805fb20:	4798      	blx	r3
 805fb22:	2000      	movs	r0, #0
 805fb24:	2100      	movs	r1, #0
 805fb26:	0004      	movs	r4, r0
 805fb28:	000d      	movs	r5, r1
 805fb2a:	480b      	ldr	r0, [pc, #44]	; (805fb58 <_mainCRTStartup+0x64>)
 805fb2c:	f000 fe96 	bl	806085c <atexit>
 805fb30:	f000 fec4 	bl	80608bc <__libc_init_array>
 805fb34:	0020      	movs	r0, r4
 805fb36:	0029      	movs	r1, r5
 805fb38:	f000 fdd0 	bl	80606dc <main>
 805fb3c:	f000 fe94 	bl	8060868 <exit>
 805fb40:	00080000 	.word	0x00080000
	...
 805fb4c:	20004ec0 	.word	0x20004ec0
 805fb50:	20003c00 	.word	0x20003c00
 805fb54:	20003eb8 	.word	0x20003eb8
 805fb58:	08060891 	.word	0x08060891

0805fb5c <HAL_Init>:
 805fb5c:	b580      	push	{r7, lr}
 805fb5e:	b082      	sub	sp, #8
 805fb60:	af00      	add	r7, sp, #0
 805fb62:	2300      	movs	r3, #0
 805fb64:	71fb      	strb	r3, [r7, #7]
 805fb66:	2004      	movs	r0, #4
 805fb68:	4b09      	ldr	r3, [pc, #36]	; (805fb90 <HAL_Init+0x34>)
 805fb6a:	4798      	blx	r3
 805fb6c:	4b09      	ldr	r3, [pc, #36]	; (805fb94 <HAL_Init+0x38>)
 805fb6e:	4798      	blx	r3
 805fb70:	2007      	movs	r0, #7
 805fb72:	4b09      	ldr	r3, [pc, #36]	; (805fb98 <HAL_Init+0x3c>)
 805fb74:	4798      	blx	r3
 805fb76:	4603      	mov	r3, r0
 805fb78:	2b00      	cmp	r3, #0
 805fb7a:	d002      	beq.n	805fb82 <HAL_Init+0x26>
 805fb7c:	2301      	movs	r3, #1
 805fb7e:	71fb      	strb	r3, [r7, #7]
 805fb80:	e001      	b.n	805fb86 <HAL_Init+0x2a>
 805fb82:	4b06      	ldr	r3, [pc, #24]	; (805fb9c <HAL_Init+0x40>)
 805fb84:	4798      	blx	r3
 805fb86:	79fb      	ldrb	r3, [r7, #7]
 805fb88:	4618      	mov	r0, r3
 805fb8a:	3708      	adds	r7, #8
 805fb8c:	46bd      	mov	sp, r7
 805fb8e:	bd80      	pop	{r7, pc}
 805fb90:	0806022d 	.word	0x0806022d
 805fb94:	0805fc39 	.word	0x0805fc39
 805fb98:	0805fbad 	.word	0x0805fbad
 805fb9c:	0805fba1 	.word	0x0805fba1

0805fba0 <HAL_MspInit>:
 805fba0:	b480      	push	{r7}
 805fba2:	af00      	add	r7, sp, #0
 805fba4:	bf00      	nop
 805fba6:	46bd      	mov	sp, r7
 805fba8:	bc80      	pop	{r7}
 805fbaa:	4770      	bx	lr

0805fbac <HAL_InitTick>:
 805fbac:	b580      	push	{r7, lr}
 805fbae:	b084      	sub	sp, #16
 805fbb0:	af00      	add	r7, sp, #0
 805fbb2:	6078      	str	r0, [r7, #4]
 805fbb4:	2300      	movs	r3, #0
 805fbb6:	73fb      	strb	r3, [r7, #15]
 805fbb8:	4b17      	ldr	r3, [pc, #92]	; (805fc18 <HAL_InitTick+0x6c>)
 805fbba:	781b      	ldrb	r3, [r3, #0]
 805fbbc:	2b00      	cmp	r3, #0
 805fbbe:	d023      	beq.n	805fc08 <HAL_InitTick+0x5c>
 805fbc0:	4b16      	ldr	r3, [pc, #88]	; (805fc1c <HAL_InitTick+0x70>)
 805fbc2:	681a      	ldr	r2, [r3, #0]
 805fbc4:	4b14      	ldr	r3, [pc, #80]	; (805fc18 <HAL_InitTick+0x6c>)
 805fbc6:	781b      	ldrb	r3, [r3, #0]
 805fbc8:	4619      	mov	r1, r3
 805fbca:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 805fbce:	fbb3 f3f1 	udiv	r3, r3, r1
 805fbd2:	fbb2 f3f3 	udiv	r3, r2, r3
 805fbd6:	4618      	mov	r0, r3
 805fbd8:	4b11      	ldr	r3, [pc, #68]	; (805fc20 <HAL_InitTick+0x74>)
 805fbda:	4798      	blx	r3
 805fbdc:	4603      	mov	r3, r0
 805fbde:	2b00      	cmp	r3, #0
 805fbe0:	d10f      	bne.n	805fc02 <HAL_InitTick+0x56>
 805fbe2:	687b      	ldr	r3, [r7, #4]
 805fbe4:	2b07      	cmp	r3, #7
 805fbe6:	d809      	bhi.n	805fbfc <HAL_InitTick+0x50>
 805fbe8:	2200      	movs	r2, #0
 805fbea:	6879      	ldr	r1, [r7, #4]
 805fbec:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 805fbf0:	4b0c      	ldr	r3, [pc, #48]	; (805fc24 <HAL_InitTick+0x78>)
 805fbf2:	4798      	blx	r3
 805fbf4:	4a0c      	ldr	r2, [pc, #48]	; (805fc28 <HAL_InitTick+0x7c>)
 805fbf6:	687b      	ldr	r3, [r7, #4]
 805fbf8:	6013      	str	r3, [r2, #0]
 805fbfa:	e007      	b.n	805fc0c <HAL_InitTick+0x60>
 805fbfc:	2301      	movs	r3, #1
 805fbfe:	73fb      	strb	r3, [r7, #15]
 805fc00:	e004      	b.n	805fc0c <HAL_InitTick+0x60>
 805fc02:	2301      	movs	r3, #1
 805fc04:	73fb      	strb	r3, [r7, #15]
 805fc06:	e001      	b.n	805fc0c <HAL_InitTick+0x60>
 805fc08:	2301      	movs	r3, #1
 805fc0a:	73fb      	strb	r3, [r7, #15]
 805fc0c:	7bfb      	ldrb	r3, [r7, #15]
 805fc0e:	4618      	mov	r0, r3
 805fc10:	3710      	adds	r7, #16
 805fc12:	46bd      	mov	sp, r7
 805fc14:	bd80      	pop	{r7, pc}
 805fc16:	bf00      	nop
 805fc18:	20003b84 	.word	0x20003b84
 805fc1c:	20003b88 	.word	0x20003b88
 805fc20:	08060289 	.word	0x08060289
 805fc24:	08060249 	.word	0x08060249
 805fc28:	20003b80 	.word	0x20003b80

0805fc2c <SystemInit>:
 805fc2c:	b480      	push	{r7}
 805fc2e:	af00      	add	r7, sp, #0
 805fc30:	bf00      	nop
 805fc32:	46bd      	mov	sp, r7
 805fc34:	bc80      	pop	{r7}
 805fc36:	4770      	bx	lr

0805fc38 <SystemCoreClockUpdate>:
 805fc38:	b480      	push	{r7}
 805fc3a:	b087      	sub	sp, #28
 805fc3c:	af00      	add	r7, sp, #0
 805fc3e:	4b45      	ldr	r3, [pc, #276]	; (805fd54 <SystemCoreClockUpdate+0x11c>)
 805fc40:	681b      	ldr	r3, [r3, #0]
 805fc42:	f003 0308 	and.w	r3, r3, #8
 805fc46:	2b00      	cmp	r3, #0
 805fc48:	d107      	bne.n	805fc5a <SystemCoreClockUpdate+0x22>
 805fc4a:	4b42      	ldr	r3, [pc, #264]	; (805fd54 <SystemCoreClockUpdate+0x11c>)
 805fc4c:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 805fc50:	0a1b      	lsrs	r3, r3, #8
 805fc52:	f003 030f 	and.w	r3, r3, #15
 805fc56:	617b      	str	r3, [r7, #20]
 805fc58:	e005      	b.n	805fc66 <SystemCoreClockUpdate+0x2e>
 805fc5a:	4b3e      	ldr	r3, [pc, #248]	; (805fd54 <SystemCoreClockUpdate+0x11c>)
 805fc5c:	681b      	ldr	r3, [r3, #0]
 805fc5e:	091b      	lsrs	r3, r3, #4
 805fc60:	f003 030f 	and.w	r3, r3, #15
 805fc64:	617b      	str	r3, [r7, #20]
 805fc66:	4a3c      	ldr	r2, [pc, #240]	; (805fd58 <SystemCoreClockUpdate+0x120>)
 805fc68:	697b      	ldr	r3, [r7, #20]
 805fc6a:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 805fc6e:	617b      	str	r3, [r7, #20]
 805fc70:	4b38      	ldr	r3, [pc, #224]	; (805fd54 <SystemCoreClockUpdate+0x11c>)
 805fc72:	689b      	ldr	r3, [r3, #8]
 805fc74:	f003 030c 	and.w	r3, r3, #12
 805fc78:	2b0c      	cmp	r3, #12
 805fc7a:	d016      	beq.n	805fcaa <SystemCoreClockUpdate+0x72>
 805fc7c:	2b0c      	cmp	r3, #12
 805fc7e:	d851      	bhi.n	805fd24 <SystemCoreClockUpdate+0xec>
 805fc80:	2b08      	cmp	r3, #8
 805fc82:	d00e      	beq.n	805fca2 <SystemCoreClockUpdate+0x6a>
 805fc84:	2b08      	cmp	r3, #8
 805fc86:	d84d      	bhi.n	805fd24 <SystemCoreClockUpdate+0xec>
 805fc88:	2b00      	cmp	r3, #0
 805fc8a:	d002      	beq.n	805fc92 <SystemCoreClockUpdate+0x5a>
 805fc8c:	2b04      	cmp	r3, #4
 805fc8e:	d004      	beq.n	805fc9a <SystemCoreClockUpdate+0x62>
 805fc90:	e048      	b.n	805fd24 <SystemCoreClockUpdate+0xec>
 805fc92:	4a32      	ldr	r2, [pc, #200]	; (805fd5c <SystemCoreClockUpdate+0x124>)
 805fc94:	697b      	ldr	r3, [r7, #20]
 805fc96:	6013      	str	r3, [r2, #0]
 805fc98:	e048      	b.n	805fd2c <SystemCoreClockUpdate+0xf4>
 805fc9a:	4b30      	ldr	r3, [pc, #192]	; (805fd5c <SystemCoreClockUpdate+0x124>)
 805fc9c:	4a30      	ldr	r2, [pc, #192]	; (805fd60 <SystemCoreClockUpdate+0x128>)
 805fc9e:	601a      	str	r2, [r3, #0]
 805fca0:	e044      	b.n	805fd2c <SystemCoreClockUpdate+0xf4>
 805fca2:	4b2e      	ldr	r3, [pc, #184]	; (805fd5c <SystemCoreClockUpdate+0x124>)
 805fca4:	4a2e      	ldr	r2, [pc, #184]	; (805fd60 <SystemCoreClockUpdate+0x128>)
 805fca6:	601a      	str	r2, [r3, #0]
 805fca8:	e040      	b.n	805fd2c <SystemCoreClockUpdate+0xf4>
 805fcaa:	4b2a      	ldr	r3, [pc, #168]	; (805fd54 <SystemCoreClockUpdate+0x11c>)
 805fcac:	68db      	ldr	r3, [r3, #12]
 805fcae:	f003 0303 	and.w	r3, r3, #3
 805fcb2:	60fb      	str	r3, [r7, #12]
 805fcb4:	4b27      	ldr	r3, [pc, #156]	; (805fd54 <SystemCoreClockUpdate+0x11c>)
 805fcb6:	68db      	ldr	r3, [r3, #12]
 805fcb8:	091b      	lsrs	r3, r3, #4
 805fcba:	f003 030f 	and.w	r3, r3, #15
 805fcbe:	3301      	adds	r3, #1
 805fcc0:	60bb      	str	r3, [r7, #8]
 805fcc2:	68fb      	ldr	r3, [r7, #12]
 805fcc4:	2b02      	cmp	r3, #2
 805fcc6:	d003      	beq.n	805fcd0 <SystemCoreClockUpdate+0x98>
 805fcc8:	68fb      	ldr	r3, [r7, #12]
 805fcca:	2b03      	cmp	r3, #3
 805fccc:	d006      	beq.n	805fcdc <SystemCoreClockUpdate+0xa4>
 805fcce:	e00b      	b.n	805fce8 <SystemCoreClockUpdate+0xb0>
 805fcd0:	4a23      	ldr	r2, [pc, #140]	; (805fd60 <SystemCoreClockUpdate+0x128>)
 805fcd2:	68bb      	ldr	r3, [r7, #8]
 805fcd4:	fbb2 f3f3 	udiv	r3, r2, r3
 805fcd8:	613b      	str	r3, [r7, #16]
 805fcda:	e00b      	b.n	805fcf4 <SystemCoreClockUpdate+0xbc>
 805fcdc:	4a20      	ldr	r2, [pc, #128]	; (805fd60 <SystemCoreClockUpdate+0x128>)
 805fcde:	68bb      	ldr	r3, [r7, #8]
 805fce0:	fbb2 f3f3 	udiv	r3, r2, r3
 805fce4:	613b      	str	r3, [r7, #16]
 805fce6:	e005      	b.n	805fcf4 <SystemCoreClockUpdate+0xbc>
 805fce8:	697a      	ldr	r2, [r7, #20]
 805fcea:	68bb      	ldr	r3, [r7, #8]
 805fcec:	fbb2 f3f3 	udiv	r3, r2, r3
 805fcf0:	613b      	str	r3, [r7, #16]
 805fcf2:	bf00      	nop
 805fcf4:	4b17      	ldr	r3, [pc, #92]	; (805fd54 <SystemCoreClockUpdate+0x11c>)
 805fcf6:	68db      	ldr	r3, [r3, #12]
 805fcf8:	0a1b      	lsrs	r3, r3, #8
 805fcfa:	f003 027f 	and.w	r2, r3, #127	; 0x7f
 805fcfe:	693b      	ldr	r3, [r7, #16]
 805fd00:	fb02 f303 	mul.w	r3, r2, r3
 805fd04:	613b      	str	r3, [r7, #16]
 805fd06:	4b13      	ldr	r3, [pc, #76]	; (805fd54 <SystemCoreClockUpdate+0x11c>)
 805fd08:	68db      	ldr	r3, [r3, #12]
 805fd0a:	0e5b      	lsrs	r3, r3, #25
 805fd0c:	f003 0303 	and.w	r3, r3, #3
 805fd10:	3301      	adds	r3, #1
 805fd12:	005b      	lsls	r3, r3, #1
 805fd14:	607b      	str	r3, [r7, #4]
 805fd16:	693a      	ldr	r2, [r7, #16]
 805fd18:	687b      	ldr	r3, [r7, #4]
 805fd1a:	fbb2 f3f3 	udiv	r3, r2, r3
 805fd1e:	4a0f      	ldr	r2, [pc, #60]	; (805fd5c <SystemCoreClockUpdate+0x124>)
 805fd20:	6013      	str	r3, [r2, #0]
 805fd22:	e003      	b.n	805fd2c <SystemCoreClockUpdate+0xf4>
 805fd24:	4a0d      	ldr	r2, [pc, #52]	; (805fd5c <SystemCoreClockUpdate+0x124>)
 805fd26:	697b      	ldr	r3, [r7, #20]
 805fd28:	6013      	str	r3, [r2, #0]
 805fd2a:	bf00      	nop
 805fd2c:	4b09      	ldr	r3, [pc, #36]	; (805fd54 <SystemCoreClockUpdate+0x11c>)
 805fd2e:	689b      	ldr	r3, [r3, #8]
 805fd30:	091b      	lsrs	r3, r3, #4
 805fd32:	f003 030f 	and.w	r3, r3, #15
 805fd36:	4a0b      	ldr	r2, [pc, #44]	; (805fd64 <SystemCoreClockUpdate+0x12c>)
 805fd38:	5cd3      	ldrb	r3, [r2, r3]
 805fd3a:	603b      	str	r3, [r7, #0]
 805fd3c:	4b07      	ldr	r3, [pc, #28]	; (805fd5c <SystemCoreClockUpdate+0x124>)
 805fd3e:	681a      	ldr	r2, [r3, #0]
 805fd40:	683b      	ldr	r3, [r7, #0]
 805fd42:	fa22 f303 	lsr.w	r3, r2, r3
 805fd46:	4a05      	ldr	r2, [pc, #20]	; (805fd5c <SystemCoreClockUpdate+0x124>)
 805fd48:	6013      	str	r3, [r2, #0]
 805fd4a:	bf00      	nop
 805fd4c:	371c      	adds	r7, #28
 805fd4e:	46bd      	mov	sp, r7
 805fd50:	bc80      	pop	{r7}
 805fd52:	4770      	bx	lr
 805fd54:	40021000 	.word	0x40021000
 805fd58:	08060c10 	.word	0x08060c10
 805fd5c:	20003b88 	.word	0x20003b88
 805fd60:	00f42400 	.word	0x00f42400
 805fd64:	08060c00 	.word	0x08060c00

0805fd68 <HAL_GPIO_Init>:
 805fd68:	b480      	push	{r7}
 805fd6a:	b087      	sub	sp, #28
 805fd6c:	af00      	add	r7, sp, #0
 805fd6e:	6078      	str	r0, [r7, #4]
 805fd70:	6039      	str	r1, [r7, #0]
 805fd72:	2300      	movs	r3, #0
 805fd74:	617b      	str	r3, [r7, #20]
 805fd76:	e158      	b.n	806002a <HAL_GPIO_Init+0x2c2>
 805fd78:	683b      	ldr	r3, [r7, #0]
 805fd7a:	681a      	ldr	r2, [r3, #0]
 805fd7c:	2101      	movs	r1, #1
 805fd7e:	697b      	ldr	r3, [r7, #20]
 805fd80:	fa01 f303 	lsl.w	r3, r1, r3
 805fd84:	4013      	ands	r3, r2
 805fd86:	60fb      	str	r3, [r7, #12]
 805fd88:	68fb      	ldr	r3, [r7, #12]
 805fd8a:	2b00      	cmp	r3, #0
 805fd8c:	f000 814a 	beq.w	8060024 <HAL_GPIO_Init+0x2bc>
 805fd90:	683b      	ldr	r3, [r7, #0]
 805fd92:	685b      	ldr	r3, [r3, #4]
 805fd94:	2b01      	cmp	r3, #1
 805fd96:	d00b      	beq.n	805fdb0 <HAL_GPIO_Init+0x48>
 805fd98:	683b      	ldr	r3, [r7, #0]
 805fd9a:	685b      	ldr	r3, [r3, #4]
 805fd9c:	2b02      	cmp	r3, #2
 805fd9e:	d007      	beq.n	805fdb0 <HAL_GPIO_Init+0x48>
 805fda0:	683b      	ldr	r3, [r7, #0]
 805fda2:	685b      	ldr	r3, [r3, #4]
 805fda4:	2b11      	cmp	r3, #17
 805fda6:	d003      	beq.n	805fdb0 <HAL_GPIO_Init+0x48>
 805fda8:	683b      	ldr	r3, [r7, #0]
 805fdaa:	685b      	ldr	r3, [r3, #4]
 805fdac:	2b12      	cmp	r3, #18
 805fdae:	d130      	bne.n	805fe12 <HAL_GPIO_Init+0xaa>
 805fdb0:	687b      	ldr	r3, [r7, #4]
 805fdb2:	689b      	ldr	r3, [r3, #8]
 805fdb4:	613b      	str	r3, [r7, #16]
 805fdb6:	697b      	ldr	r3, [r7, #20]
 805fdb8:	005b      	lsls	r3, r3, #1
 805fdba:	2203      	movs	r2, #3
 805fdbc:	fa02 f303 	lsl.w	r3, r2, r3
 805fdc0:	43db      	mvns	r3, r3
 805fdc2:	693a      	ldr	r2, [r7, #16]
 805fdc4:	4013      	ands	r3, r2
 805fdc6:	613b      	str	r3, [r7, #16]
 805fdc8:	683b      	ldr	r3, [r7, #0]
 805fdca:	68da      	ldr	r2, [r3, #12]
 805fdcc:	697b      	ldr	r3, [r7, #20]
 805fdce:	005b      	lsls	r3, r3, #1
 805fdd0:	fa02 f303 	lsl.w	r3, r2, r3
 805fdd4:	693a      	ldr	r2, [r7, #16]
 805fdd6:	4313      	orrs	r3, r2
 805fdd8:	613b      	str	r3, [r7, #16]
 805fdda:	687b      	ldr	r3, [r7, #4]
 805fddc:	693a      	ldr	r2, [r7, #16]
 805fdde:	609a      	str	r2, [r3, #8]
 805fde0:	687b      	ldr	r3, [r7, #4]
 805fde2:	685b      	ldr	r3, [r3, #4]
 805fde4:	613b      	str	r3, [r7, #16]
 805fde6:	2201      	movs	r2, #1
 805fde8:	697b      	ldr	r3, [r7, #20]
 805fdea:	fa02 f303 	lsl.w	r3, r2, r3
 805fdee:	43db      	mvns	r3, r3
 805fdf0:	693a      	ldr	r2, [r7, #16]
 805fdf2:	4013      	ands	r3, r2
 805fdf4:	613b      	str	r3, [r7, #16]
 805fdf6:	683b      	ldr	r3, [r7, #0]
 805fdf8:	685b      	ldr	r3, [r3, #4]
 805fdfa:	091b      	lsrs	r3, r3, #4
 805fdfc:	f003 0201 	and.w	r2, r3, #1
 805fe00:	697b      	ldr	r3, [r7, #20]
 805fe02:	fa02 f303 	lsl.w	r3, r2, r3
 805fe06:	693a      	ldr	r2, [r7, #16]
 805fe08:	4313      	orrs	r3, r2
 805fe0a:	613b      	str	r3, [r7, #16]
 805fe0c:	687b      	ldr	r3, [r7, #4]
 805fe0e:	693a      	ldr	r2, [r7, #16]
 805fe10:	605a      	str	r2, [r3, #4]
 805fe12:	687b      	ldr	r3, [r7, #4]
 805fe14:	68db      	ldr	r3, [r3, #12]
 805fe16:	613b      	str	r3, [r7, #16]
 805fe18:	697b      	ldr	r3, [r7, #20]
 805fe1a:	005b      	lsls	r3, r3, #1
 805fe1c:	2203      	movs	r2, #3
 805fe1e:	fa02 f303 	lsl.w	r3, r2, r3
 805fe22:	43db      	mvns	r3, r3
 805fe24:	693a      	ldr	r2, [r7, #16]
 805fe26:	4013      	ands	r3, r2
 805fe28:	613b      	str	r3, [r7, #16]
 805fe2a:	683b      	ldr	r3, [r7, #0]
 805fe2c:	689a      	ldr	r2, [r3, #8]
 805fe2e:	697b      	ldr	r3, [r7, #20]
 805fe30:	005b      	lsls	r3, r3, #1
 805fe32:	fa02 f303 	lsl.w	r3, r2, r3
 805fe36:	693a      	ldr	r2, [r7, #16]
 805fe38:	4313      	orrs	r3, r2
 805fe3a:	613b      	str	r3, [r7, #16]
 805fe3c:	687b      	ldr	r3, [r7, #4]
 805fe3e:	693a      	ldr	r2, [r7, #16]
 805fe40:	60da      	str	r2, [r3, #12]
 805fe42:	683b      	ldr	r3, [r7, #0]
 805fe44:	685b      	ldr	r3, [r3, #4]
 805fe46:	2b02      	cmp	r3, #2
 805fe48:	d003      	beq.n	805fe52 <HAL_GPIO_Init+0xea>
 805fe4a:	683b      	ldr	r3, [r7, #0]
 805fe4c:	685b      	ldr	r3, [r3, #4]
 805fe4e:	2b12      	cmp	r3, #18
 805fe50:	d123      	bne.n	805fe9a <HAL_GPIO_Init+0x132>
 805fe52:	697b      	ldr	r3, [r7, #20]
 805fe54:	08da      	lsrs	r2, r3, #3
 805fe56:	687b      	ldr	r3, [r7, #4]
 805fe58:	3208      	adds	r2, #8
 805fe5a:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 805fe5e:	613b      	str	r3, [r7, #16]
 805fe60:	697b      	ldr	r3, [r7, #20]
 805fe62:	f003 0307 	and.w	r3, r3, #7
 805fe66:	009b      	lsls	r3, r3, #2
 805fe68:	220f      	movs	r2, #15
 805fe6a:	fa02 f303 	lsl.w	r3, r2, r3
 805fe6e:	43db      	mvns	r3, r3
 805fe70:	693a      	ldr	r2, [r7, #16]
 805fe72:	4013      	ands	r3, r2
 805fe74:	613b      	str	r3, [r7, #16]
 805fe76:	683b      	ldr	r3, [r7, #0]
 805fe78:	691a      	ldr	r2, [r3, #16]
 805fe7a:	697b      	ldr	r3, [r7, #20]
 805fe7c:	f003 0307 	and.w	r3, r3, #7
 805fe80:	009b      	lsls	r3, r3, #2
 805fe82:	fa02 f303 	lsl.w	r3, r2, r3
 805fe86:	693a      	ldr	r2, [r7, #16]
 805fe88:	4313      	orrs	r3, r2
 805fe8a:	613b      	str	r3, [r7, #16]
 805fe8c:	697b      	ldr	r3, [r7, #20]
 805fe8e:	08da      	lsrs	r2, r3, #3
 805fe90:	687b      	ldr	r3, [r7, #4]
 805fe92:	3208      	adds	r2, #8
 805fe94:	6939      	ldr	r1, [r7, #16]
 805fe96:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 805fe9a:	687b      	ldr	r3, [r7, #4]
 805fe9c:	681b      	ldr	r3, [r3, #0]
 805fe9e:	613b      	str	r3, [r7, #16]
 805fea0:	697b      	ldr	r3, [r7, #20]
 805fea2:	005b      	lsls	r3, r3, #1
 805fea4:	2203      	movs	r2, #3
 805fea6:	fa02 f303 	lsl.w	r3, r2, r3
 805feaa:	43db      	mvns	r3, r3
 805feac:	693a      	ldr	r2, [r7, #16]
 805feae:	4013      	ands	r3, r2
 805feb0:	613b      	str	r3, [r7, #16]
 805feb2:	683b      	ldr	r3, [r7, #0]
 805feb4:	685b      	ldr	r3, [r3, #4]
 805feb6:	f003 0203 	and.w	r2, r3, #3
 805feba:	697b      	ldr	r3, [r7, #20]
 805febc:	005b      	lsls	r3, r3, #1
 805febe:	fa02 f303 	lsl.w	r3, r2, r3
 805fec2:	693a      	ldr	r2, [r7, #16]
 805fec4:	4313      	orrs	r3, r2
 805fec6:	613b      	str	r3, [r7, #16]
 805fec8:	687b      	ldr	r3, [r7, #4]
 805feca:	693a      	ldr	r2, [r7, #16]
 805fecc:	601a      	str	r2, [r3, #0]
 805fece:	683b      	ldr	r3, [r7, #0]
 805fed0:	685b      	ldr	r3, [r3, #4]
 805fed2:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 805fed6:	2b00      	cmp	r3, #0
 805fed8:	f000 80a4 	beq.w	8060024 <HAL_GPIO_Init+0x2bc>
 805fedc:	4a5a      	ldr	r2, [pc, #360]	; (8060048 <HAL_GPIO_Init+0x2e0>)
 805fede:	697b      	ldr	r3, [r7, #20]
 805fee0:	089b      	lsrs	r3, r3, #2
 805fee2:	3318      	adds	r3, #24
 805fee4:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 805fee8:	613b      	str	r3, [r7, #16]
 805feea:	697b      	ldr	r3, [r7, #20]
 805feec:	f003 0303 	and.w	r3, r3, #3
 805fef0:	00db      	lsls	r3, r3, #3
 805fef2:	220f      	movs	r2, #15
 805fef4:	fa02 f303 	lsl.w	r3, r2, r3
 805fef8:	43db      	mvns	r3, r3
 805fefa:	693a      	ldr	r2, [r7, #16]
 805fefc:	4013      	ands	r3, r2
 805fefe:	613b      	str	r3, [r7, #16]
 805ff00:	687b      	ldr	r3, [r7, #4]
 805ff02:	4a52      	ldr	r2, [pc, #328]	; (806004c <HAL_GPIO_Init+0x2e4>)
 805ff04:	4293      	cmp	r3, r2
 805ff06:	d025      	beq.n	805ff54 <HAL_GPIO_Init+0x1ec>
 805ff08:	687b      	ldr	r3, [r7, #4]
 805ff0a:	4a51      	ldr	r2, [pc, #324]	; (8060050 <HAL_GPIO_Init+0x2e8>)
 805ff0c:	4293      	cmp	r3, r2
 805ff0e:	d01f      	beq.n	805ff50 <HAL_GPIO_Init+0x1e8>
 805ff10:	687b      	ldr	r3, [r7, #4]
 805ff12:	4a50      	ldr	r2, [pc, #320]	; (8060054 <HAL_GPIO_Init+0x2ec>)
 805ff14:	4293      	cmp	r3, r2
 805ff16:	d019      	beq.n	805ff4c <HAL_GPIO_Init+0x1e4>
 805ff18:	687b      	ldr	r3, [r7, #4]
 805ff1a:	4a4f      	ldr	r2, [pc, #316]	; (8060058 <HAL_GPIO_Init+0x2f0>)
 805ff1c:	4293      	cmp	r3, r2
 805ff1e:	d013      	beq.n	805ff48 <HAL_GPIO_Init+0x1e0>
 805ff20:	687b      	ldr	r3, [r7, #4]
 805ff22:	4a4e      	ldr	r2, [pc, #312]	; (806005c <HAL_GPIO_Init+0x2f4>)
 805ff24:	4293      	cmp	r3, r2
 805ff26:	d00d      	beq.n	805ff44 <HAL_GPIO_Init+0x1dc>
 805ff28:	687b      	ldr	r3, [r7, #4]
 805ff2a:	4a4d      	ldr	r2, [pc, #308]	; (8060060 <HAL_GPIO_Init+0x2f8>)
 805ff2c:	4293      	cmp	r3, r2
 805ff2e:	d007      	beq.n	805ff40 <HAL_GPIO_Init+0x1d8>
 805ff30:	687b      	ldr	r3, [r7, #4]
 805ff32:	4a4c      	ldr	r2, [pc, #304]	; (8060064 <HAL_GPIO_Init+0x2fc>)
 805ff34:	4293      	cmp	r3, r2
 805ff36:	d101      	bne.n	805ff3c <HAL_GPIO_Init+0x1d4>
 805ff38:	2306      	movs	r3, #6
 805ff3a:	e00c      	b.n	805ff56 <HAL_GPIO_Init+0x1ee>
 805ff3c:	2307      	movs	r3, #7
 805ff3e:	e00a      	b.n	805ff56 <HAL_GPIO_Init+0x1ee>
 805ff40:	2305      	movs	r3, #5
 805ff42:	e008      	b.n	805ff56 <HAL_GPIO_Init+0x1ee>
 805ff44:	2304      	movs	r3, #4
 805ff46:	e006      	b.n	805ff56 <HAL_GPIO_Init+0x1ee>
 805ff48:	2303      	movs	r3, #3
 805ff4a:	e004      	b.n	805ff56 <HAL_GPIO_Init+0x1ee>
 805ff4c:	2302      	movs	r3, #2
 805ff4e:	e002      	b.n	805ff56 <HAL_GPIO_Init+0x1ee>
 805ff50:	2301      	movs	r3, #1
 805ff52:	e000      	b.n	805ff56 <HAL_GPIO_Init+0x1ee>
 805ff54:	2300      	movs	r3, #0
 805ff56:	697a      	ldr	r2, [r7, #20]
 805ff58:	f002 0203 	and.w	r2, r2, #3
 805ff5c:	00d2      	lsls	r2, r2, #3
 805ff5e:	4093      	lsls	r3, r2
 805ff60:	693a      	ldr	r2, [r7, #16]
 805ff62:	4313      	orrs	r3, r2
 805ff64:	613b      	str	r3, [r7, #16]
 805ff66:	4938      	ldr	r1, [pc, #224]	; (8060048 <HAL_GPIO_Init+0x2e0>)
 805ff68:	697b      	ldr	r3, [r7, #20]
 805ff6a:	089b      	lsrs	r3, r3, #2
 805ff6c:	3318      	adds	r3, #24
 805ff6e:	693a      	ldr	r2, [r7, #16]
 805ff70:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 805ff74:	4b34      	ldr	r3, [pc, #208]	; (8060048 <HAL_GPIO_Init+0x2e0>)
 805ff76:	f8d3 3080 	ldr.w	r3, [r3, #128]	; 0x80
 805ff7a:	613b      	str	r3, [r7, #16]
 805ff7c:	68fb      	ldr	r3, [r7, #12]
 805ff7e:	43db      	mvns	r3, r3
 805ff80:	693a      	ldr	r2, [r7, #16]
 805ff82:	4013      	ands	r3, r2
 805ff84:	613b      	str	r3, [r7, #16]
 805ff86:	683b      	ldr	r3, [r7, #0]
 805ff88:	685b      	ldr	r3, [r3, #4]
 805ff8a:	f403 3380 	and.w	r3, r3, #65536	; 0x10000
 805ff8e:	2b00      	cmp	r3, #0
 805ff90:	d003      	beq.n	805ff9a <HAL_GPIO_Init+0x232>
 805ff92:	693a      	ldr	r2, [r7, #16]
 805ff94:	68fb      	ldr	r3, [r7, #12]
 805ff96:	4313      	orrs	r3, r2
 805ff98:	613b      	str	r3, [r7, #16]
 805ff9a:	4a2b      	ldr	r2, [pc, #172]	; (8060048 <HAL_GPIO_Init+0x2e0>)
 805ff9c:	693b      	ldr	r3, [r7, #16]
 805ff9e:	f8c2 3080 	str.w	r3, [r2, #128]	; 0x80
 805ffa2:	4b29      	ldr	r3, [pc, #164]	; (8060048 <HAL_GPIO_Init+0x2e0>)
 805ffa4:	f8d3 3084 	ldr.w	r3, [r3, #132]	; 0x84
 805ffa8:	613b      	str	r3, [r7, #16]
 805ffaa:	68fb      	ldr	r3, [r7, #12]
 805ffac:	43db      	mvns	r3, r3
 805ffae:	693a      	ldr	r2, [r7, #16]
 805ffb0:	4013      	ands	r3, r2
 805ffb2:	613b      	str	r3, [r7, #16]
 805ffb4:	683b      	ldr	r3, [r7, #0]
 805ffb6:	685b      	ldr	r3, [r3, #4]
 805ffb8:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 805ffbc:	2b00      	cmp	r3, #0
 805ffbe:	d003      	beq.n	805ffc8 <HAL_GPIO_Init+0x260>
 805ffc0:	693a      	ldr	r2, [r7, #16]
 805ffc2:	68fb      	ldr	r3, [r7, #12]
 805ffc4:	4313      	orrs	r3, r2
 805ffc6:	613b      	str	r3, [r7, #16]
 805ffc8:	4a1f      	ldr	r2, [pc, #124]	; (8060048 <HAL_GPIO_Init+0x2e0>)
 805ffca:	693b      	ldr	r3, [r7, #16]
 805ffcc:	f8c2 3084 	str.w	r3, [r2, #132]	; 0x84
 805ffd0:	4b1d      	ldr	r3, [pc, #116]	; (8060048 <HAL_GPIO_Init+0x2e0>)
 805ffd2:	681b      	ldr	r3, [r3, #0]
 805ffd4:	613b      	str	r3, [r7, #16]
 805ffd6:	68fb      	ldr	r3, [r7, #12]
 805ffd8:	43db      	mvns	r3, r3
 805ffda:	693a      	ldr	r2, [r7, #16]
 805ffdc:	4013      	ands	r3, r2
 805ffde:	613b      	str	r3, [r7, #16]
 805ffe0:	683b      	ldr	r3, [r7, #0]
 805ffe2:	685b      	ldr	r3, [r3, #4]
 805ffe4:	f403 1380 	and.w	r3, r3, #1048576	; 0x100000
 805ffe8:	2b00      	cmp	r3, #0
 805ffea:	d003      	beq.n	805fff4 <HAL_GPIO_Init+0x28c>
 805ffec:	693a      	ldr	r2, [r7, #16]
 805ffee:	68fb      	ldr	r3, [r7, #12]
 805fff0:	4313      	orrs	r3, r2
 805fff2:	613b      	str	r3, [r7, #16]
 805fff4:	4a14      	ldr	r2, [pc, #80]	; (8060048 <HAL_GPIO_Init+0x2e0>)
 805fff6:	693b      	ldr	r3, [r7, #16]
 805fff8:	6013      	str	r3, [r2, #0]
 805fffa:	4b13      	ldr	r3, [pc, #76]	; (8060048 <HAL_GPIO_Init+0x2e0>)
 805fffc:	685b      	ldr	r3, [r3, #4]
 805fffe:	613b      	str	r3, [r7, #16]
 8060000:	68fb      	ldr	r3, [r7, #12]
 8060002:	43db      	mvns	r3, r3
 8060004:	693a      	ldr	r2, [r7, #16]
 8060006:	4013      	ands	r3, r2
 8060008:	613b      	str	r3, [r7, #16]
 806000a:	683b      	ldr	r3, [r7, #0]
 806000c:	685b      	ldr	r3, [r3, #4]
 806000e:	f403 1300 	and.w	r3, r3, #2097152	; 0x200000
 8060012:	2b00      	cmp	r3, #0
 8060014:	d003      	beq.n	806001e <HAL_GPIO_Init+0x2b6>
 8060016:	693a      	ldr	r2, [r7, #16]
 8060018:	68fb      	ldr	r3, [r7, #12]
 806001a:	4313      	orrs	r3, r2
 806001c:	613b      	str	r3, [r7, #16]
 806001e:	4a0a      	ldr	r2, [pc, #40]	; (8060048 <HAL_GPIO_Init+0x2e0>)
 8060020:	693b      	ldr	r3, [r7, #16]
 8060022:	6053      	str	r3, [r2, #4]
 8060024:	697b      	ldr	r3, [r7, #20]
 8060026:	3301      	adds	r3, #1
 8060028:	617b      	str	r3, [r7, #20]
 806002a:	683b      	ldr	r3, [r7, #0]
 806002c:	681a      	ldr	r2, [r3, #0]
 806002e:	697b      	ldr	r3, [r7, #20]
 8060030:	fa22 f303 	lsr.w	r3, r2, r3
 8060034:	2b00      	cmp	r3, #0
 8060036:	f47f ae9f 	bne.w	805fd78 <HAL_GPIO_Init+0x10>
 806003a:	bf00      	nop
 806003c:	bf00      	nop
 806003e:	371c      	adds	r7, #28
 8060040:	46bd      	mov	sp, r7
 8060042:	bc80      	pop	{r7}
 8060044:	4770      	bx	lr
 8060046:	bf00      	nop
 8060048:	4002f400 	.word	0x4002f400
 806004c:	42020000 	.word	0x42020000
 8060050:	42020400 	.word	0x42020400
 8060054:	42020800 	.word	0x42020800
 8060058:	42020c00 	.word	0x42020c00
 806005c:	42021000 	.word	0x42021000
 8060060:	42021400 	.word	0x42021400
 8060064:	42021800 	.word	0x42021800

08060068 <HAL_GPIO_WritePin>:
 8060068:	b480      	push	{r7}
 806006a:	b083      	sub	sp, #12
 806006c:	af00      	add	r7, sp, #0
 806006e:	6078      	str	r0, [r7, #4]
 8060070:	460b      	mov	r3, r1
 8060072:	807b      	strh	r3, [r7, #2]
 8060074:	4613      	mov	r3, r2
 8060076:	707b      	strb	r3, [r7, #1]
 8060078:	787b      	ldrb	r3, [r7, #1]
 806007a:	2b00      	cmp	r3, #0
 806007c:	d003      	beq.n	8060086 <HAL_GPIO_WritePin+0x1e>
 806007e:	887a      	ldrh	r2, [r7, #2]
 8060080:	687b      	ldr	r3, [r7, #4]
 8060082:	619a      	str	r2, [r3, #24]
 8060084:	e002      	b.n	806008c <HAL_GPIO_WritePin+0x24>
 8060086:	887a      	ldrh	r2, [r7, #2]
 8060088:	687b      	ldr	r3, [r7, #4]
 806008a:	629a      	str	r2, [r3, #40]	; 0x28
 806008c:	bf00      	nop
 806008e:	370c      	adds	r7, #12
 8060090:	46bd      	mov	sp, r7
 8060092:	bc80      	pop	{r7}
 8060094:	4770      	bx	lr

08060096 <HAL_GPIO_TogglePin>:
 8060096:	b480      	push	{r7}
 8060098:	b085      	sub	sp, #20
 806009a:	af00      	add	r7, sp, #0
 806009c:	6078      	str	r0, [r7, #4]
 806009e:	460b      	mov	r3, r1
 80600a0:	807b      	strh	r3, [r7, #2]
 80600a2:	687b      	ldr	r3, [r7, #4]
 80600a4:	695b      	ldr	r3, [r3, #20]
 80600a6:	60fb      	str	r3, [r7, #12]
 80600a8:	887a      	ldrh	r2, [r7, #2]
 80600aa:	68fb      	ldr	r3, [r7, #12]
 80600ac:	4013      	ands	r3, r2
 80600ae:	041a      	lsls	r2, r3, #16
 80600b0:	68fb      	ldr	r3, [r7, #12]
 80600b2:	43d9      	mvns	r1, r3
 80600b4:	887b      	ldrh	r3, [r7, #2]
 80600b6:	400b      	ands	r3, r1
 80600b8:	431a      	orrs	r2, r3
 80600ba:	687b      	ldr	r3, [r7, #4]
 80600bc:	619a      	str	r2, [r3, #24]
 80600be:	bf00      	nop
 80600c0:	3714      	adds	r7, #20
 80600c2:	46bd      	mov	sp, r7
 80600c4:	bc80      	pop	{r7}
 80600c6:	4770      	bx	lr

080600c8 <__NVIC_SetPriorityGrouping>:
 80600c8:	b480      	push	{r7}
 80600ca:	b085      	sub	sp, #20
 80600cc:	af00      	add	r7, sp, #0
 80600ce:	6078      	str	r0, [r7, #4]
 80600d0:	687b      	ldr	r3, [r7, #4]
 80600d2:	f003 0307 	and.w	r3, r3, #7
 80600d6:	60fb      	str	r3, [r7, #12]
 80600d8:	4b0c      	ldr	r3, [pc, #48]	; (806010c <__NVIC_SetPriorityGrouping+0x44>)
 80600da:	68db      	ldr	r3, [r3, #12]
 80600dc:	60bb      	str	r3, [r7, #8]
 80600de:	68ba      	ldr	r2, [r7, #8]
 80600e0:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 80600e4:	4013      	ands	r3, r2
 80600e6:	60bb      	str	r3, [r7, #8]
 80600e8:	68fb      	ldr	r3, [r7, #12]
 80600ea:	021a      	lsls	r2, r3, #8
 80600ec:	68bb      	ldr	r3, [r7, #8]
 80600ee:	4313      	orrs	r3, r2
 80600f0:	f043 63bf 	orr.w	r3, r3, #100139008	; 0x5f80000
 80600f4:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 80600f8:	60bb      	str	r3, [r7, #8]
 80600fa:	4a04      	ldr	r2, [pc, #16]	; (806010c <__NVIC_SetPriorityGrouping+0x44>)
 80600fc:	68bb      	ldr	r3, [r7, #8]
 80600fe:	60d3      	str	r3, [r2, #12]
 8060100:	bf00      	nop
 8060102:	3714      	adds	r7, #20
 8060104:	46bd      	mov	sp, r7
 8060106:	bc80      	pop	{r7}
 8060108:	4770      	bx	lr
 806010a:	bf00      	nop
 806010c:	e000ed00 	.word	0xe000ed00

08060110 <__NVIC_GetPriorityGrouping>:
 8060110:	b480      	push	{r7}
 8060112:	af00      	add	r7, sp, #0
 8060114:	4b04      	ldr	r3, [pc, #16]	; (8060128 <__NVIC_GetPriorityGrouping+0x18>)
 8060116:	68db      	ldr	r3, [r3, #12]
 8060118:	0a1b      	lsrs	r3, r3, #8
 806011a:	f003 0307 	and.w	r3, r3, #7
 806011e:	4618      	mov	r0, r3
 8060120:	46bd      	mov	sp, r7
 8060122:	bc80      	pop	{r7}
 8060124:	4770      	bx	lr
 8060126:	bf00      	nop
 8060128:	e000ed00 	.word	0xe000ed00

0806012c <__NVIC_SetPriority>:
 806012c:	b480      	push	{r7}
 806012e:	b083      	sub	sp, #12
 8060130:	af00      	add	r7, sp, #0
 8060132:	4603      	mov	r3, r0
 8060134:	6039      	str	r1, [r7, #0]
 8060136:	71fb      	strb	r3, [r7, #7]
 8060138:	f997 3007 	ldrsb.w	r3, [r7, #7]
 806013c:	2b00      	cmp	r3, #0
 806013e:	db0a      	blt.n	8060156 <__NVIC_SetPriority+0x2a>
 8060140:	683b      	ldr	r3, [r7, #0]
 8060142:	b2da      	uxtb	r2, r3
 8060144:	490c      	ldr	r1, [pc, #48]	; (8060178 <__NVIC_SetPriority+0x4c>)
 8060146:	f997 3007 	ldrsb.w	r3, [r7, #7]
 806014a:	0152      	lsls	r2, r2, #5
 806014c:	b2d2      	uxtb	r2, r2
 806014e:	440b      	add	r3, r1
 8060150:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8060154:	e00a      	b.n	806016c <__NVIC_SetPriority+0x40>
 8060156:	683b      	ldr	r3, [r7, #0]
 8060158:	b2da      	uxtb	r2, r3
 806015a:	4908      	ldr	r1, [pc, #32]	; (806017c <__NVIC_SetPriority+0x50>)
 806015c:	79fb      	ldrb	r3, [r7, #7]
 806015e:	f003 030f 	and.w	r3, r3, #15
 8060162:	3b04      	subs	r3, #4
 8060164:	0152      	lsls	r2, r2, #5
 8060166:	b2d2      	uxtb	r2, r2
 8060168:	440b      	add	r3, r1
 806016a:	761a      	strb	r2, [r3, #24]
 806016c:	bf00      	nop
 806016e:	370c      	adds	r7, #12
 8060170:	46bd      	mov	sp, r7
 8060172:	bc80      	pop	{r7}
 8060174:	4770      	bx	lr
 8060176:	bf00      	nop
 8060178:	e000e100 	.word	0xe000e100
 806017c:	e000ed00 	.word	0xe000ed00

08060180 <NVIC_EncodePriority>:
 8060180:	b480      	push	{r7}
 8060182:	b089      	sub	sp, #36	; 0x24
 8060184:	af00      	add	r7, sp, #0
 8060186:	60f8      	str	r0, [r7, #12]
 8060188:	60b9      	str	r1, [r7, #8]
 806018a:	607a      	str	r2, [r7, #4]
 806018c:	68fb      	ldr	r3, [r7, #12]
 806018e:	f003 0307 	and.w	r3, r3, #7
 8060192:	61fb      	str	r3, [r7, #28]
 8060194:	69fb      	ldr	r3, [r7, #28]
 8060196:	f1c3 0307 	rsb	r3, r3, #7
 806019a:	2b03      	cmp	r3, #3
 806019c:	bf28      	it	cs
 806019e:	2303      	movcs	r3, #3
 80601a0:	61bb      	str	r3, [r7, #24]
 80601a2:	69fb      	ldr	r3, [r7, #28]
 80601a4:	3303      	adds	r3, #3
 80601a6:	2b06      	cmp	r3, #6
 80601a8:	d902      	bls.n	80601b0 <NVIC_EncodePriority+0x30>
 80601aa:	69fb      	ldr	r3, [r7, #28]
 80601ac:	3b04      	subs	r3, #4
 80601ae:	e000      	b.n	80601b2 <NVIC_EncodePriority+0x32>
 80601b0:	2300      	movs	r3, #0
 80601b2:	617b      	str	r3, [r7, #20]
 80601b4:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 80601b8:	69bb      	ldr	r3, [r7, #24]
 80601ba:	fa02 f303 	lsl.w	r3, r2, r3
 80601be:	43da      	mvns	r2, r3
 80601c0:	68bb      	ldr	r3, [r7, #8]
 80601c2:	401a      	ands	r2, r3
 80601c4:	697b      	ldr	r3, [r7, #20]
 80601c6:	409a      	lsls	r2, r3
 80601c8:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 80601cc:	697b      	ldr	r3, [r7, #20]
 80601ce:	fa01 f303 	lsl.w	r3, r1, r3
 80601d2:	43d9      	mvns	r1, r3
 80601d4:	687b      	ldr	r3, [r7, #4]
 80601d6:	400b      	ands	r3, r1
 80601d8:	4313      	orrs	r3, r2
 80601da:	4618      	mov	r0, r3
 80601dc:	3724      	adds	r7, #36	; 0x24
 80601de:	46bd      	mov	sp, r7
 80601e0:	bc80      	pop	{r7}
 80601e2:	4770      	bx	lr

080601e4 <SysTick_Config>:
 80601e4:	b580      	push	{r7, lr}
 80601e6:	b082      	sub	sp, #8
 80601e8:	af00      	add	r7, sp, #0
 80601ea:	6078      	str	r0, [r7, #4]
 80601ec:	687b      	ldr	r3, [r7, #4]
 80601ee:	3b01      	subs	r3, #1
 80601f0:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
 80601f4:	d301      	bcc.n	80601fa <SysTick_Config+0x16>
 80601f6:	2301      	movs	r3, #1
 80601f8:	e00f      	b.n	806021a <SysTick_Config+0x36>
 80601fa:	4a0a      	ldr	r2, [pc, #40]	; (8060224 <SysTick_Config+0x40>)
 80601fc:	687b      	ldr	r3, [r7, #4]
 80601fe:	3b01      	subs	r3, #1
 8060200:	6053      	str	r3, [r2, #4]
 8060202:	2107      	movs	r1, #7
 8060204:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8060208:	4b07      	ldr	r3, [pc, #28]	; (8060228 <SysTick_Config+0x44>)
 806020a:	4798      	blx	r3
 806020c:	4b05      	ldr	r3, [pc, #20]	; (8060224 <SysTick_Config+0x40>)
 806020e:	2200      	movs	r2, #0
 8060210:	609a      	str	r2, [r3, #8]
 8060212:	4b04      	ldr	r3, [pc, #16]	; (8060224 <SysTick_Config+0x40>)
 8060214:	2207      	movs	r2, #7
 8060216:	601a      	str	r2, [r3, #0]
 8060218:	2300      	movs	r3, #0
 806021a:	4618      	mov	r0, r3
 806021c:	3708      	adds	r7, #8
 806021e:	46bd      	mov	sp, r7
 8060220:	bd80      	pop	{r7, pc}
 8060222:	bf00      	nop
 8060224:	e000e010 	.word	0xe000e010
 8060228:	0806012d 	.word	0x0806012d

0806022c <HAL_NVIC_SetPriorityGrouping>:
 806022c:	b580      	push	{r7, lr}
 806022e:	b082      	sub	sp, #8
 8060230:	af00      	add	r7, sp, #0
 8060232:	6078      	str	r0, [r7, #4]
 8060234:	6878      	ldr	r0, [r7, #4]
 8060236:	4b03      	ldr	r3, [pc, #12]	; (8060244 <HAL_NVIC_SetPriorityGrouping+0x18>)
 8060238:	4798      	blx	r3
 806023a:	bf00      	nop
 806023c:	3708      	adds	r7, #8
 806023e:	46bd      	mov	sp, r7
 8060240:	bd80      	pop	{r7, pc}
 8060242:	bf00      	nop
 8060244:	080600c9 	.word	0x080600c9

08060248 <HAL_NVIC_SetPriority>:
 8060248:	b580      	push	{r7, lr}
 806024a:	b086      	sub	sp, #24
 806024c:	af00      	add	r7, sp, #0
 806024e:	4603      	mov	r3, r0
 8060250:	60b9      	str	r1, [r7, #8]
 8060252:	607a      	str	r2, [r7, #4]
 8060254:	73fb      	strb	r3, [r7, #15]
 8060256:	4b09      	ldr	r3, [pc, #36]	; (806027c <HAL_NVIC_SetPriority+0x34>)
 8060258:	4798      	blx	r3
 806025a:	6178      	str	r0, [r7, #20]
 806025c:	687a      	ldr	r2, [r7, #4]
 806025e:	68b9      	ldr	r1, [r7, #8]
 8060260:	6978      	ldr	r0, [r7, #20]
 8060262:	4b07      	ldr	r3, [pc, #28]	; (8060280 <HAL_NVIC_SetPriority+0x38>)
 8060264:	4798      	blx	r3
 8060266:	4602      	mov	r2, r0
 8060268:	f997 300f 	ldrsb.w	r3, [r7, #15]
 806026c:	4611      	mov	r1, r2
 806026e:	4618      	mov	r0, r3
 8060270:	4b04      	ldr	r3, [pc, #16]	; (8060284 <HAL_NVIC_SetPriority+0x3c>)
 8060272:	4798      	blx	r3
 8060274:	bf00      	nop
 8060276:	3718      	adds	r7, #24
 8060278:	46bd      	mov	sp, r7
 806027a:	bd80      	pop	{r7, pc}
 806027c:	08060111 	.word	0x08060111
 8060280:	08060181 	.word	0x08060181
 8060284:	0806012d 	.word	0x0806012d

08060288 <HAL_SYSTICK_Config>:
 8060288:	b580      	push	{r7, lr}
 806028a:	b082      	sub	sp, #8
 806028c:	af00      	add	r7, sp, #0
 806028e:	6078      	str	r0, [r7, #4]
 8060290:	6878      	ldr	r0, [r7, #4]
 8060292:	4b03      	ldr	r3, [pc, #12]	; (80602a0 <HAL_SYSTICK_Config+0x18>)
 8060294:	4798      	blx	r3
 8060296:	4603      	mov	r3, r0
 8060298:	4618      	mov	r0, r3
 806029a:	3708      	adds	r7, #8
 806029c:	46bd      	mov	sp, r7
 806029e:	bd80      	pop	{r7, pc}
 80602a0:	080601e5 	.word	0x080601e5

080602a4 <NMI_Handler>:
 80602a4:	b480      	push	{r7}
 80602a6:	af00      	add	r7, sp, #0
 80602a8:	e7fe      	b.n	80602a8 <NMI_Handler+0x4>

080602aa <HardFault_Handler>:
 80602aa:	b480      	push	{r7}
 80602ac:	af00      	add	r7, sp, #0
 80602ae:	e7fe      	b.n	80602ae <HardFault_Handler+0x4>

080602b0 <MemManage_Handler>:
 80602b0:	b480      	push	{r7}
 80602b2:	af00      	add	r7, sp, #0
 80602b4:	e7fe      	b.n	80602b4 <MemManage_Handler+0x4>

080602b6 <BusFault_Handler>:
 80602b6:	b480      	push	{r7}
 80602b8:	af00      	add	r7, sp, #0
 80602ba:	e7fe      	b.n	80602ba <BusFault_Handler+0x4>

080602bc <UsageFault_Handler>:
 80602bc:	b480      	push	{r7}
 80602be:	af00      	add	r7, sp, #0
 80602c0:	e7fe      	b.n	80602c0 <UsageFault_Handler+0x4>

080602c2 <SecureFault_Handler>:
 80602c2:	b480      	push	{r7}
 80602c4:	af00      	add	r7, sp, #0
 80602c6:	e7fe      	b.n	80602c6 <SecureFault_Handler+0x4>

080602c8 <DebugMon_Handler>:
 80602c8:	b480      	push	{r7}
 80602ca:	af00      	add	r7, sp, #0
 80602cc:	e7fe      	b.n	80602cc <DebugMon_Handler+0x4>

080602ce <WWDG_IRQHandler>:
 80602ce:	b480      	push	{r7}
 80602d0:	af00      	add	r7, sp, #0
 80602d2:	e7fe      	b.n	80602d2 <WWDG_IRQHandler+0x4>

080602d4 <PVD_PVM_IRQHandler>:
 80602d4:	b480      	push	{r7}
 80602d6:	af00      	add	r7, sp, #0
 80602d8:	e7fe      	b.n	80602d8 <PVD_PVM_IRQHandler+0x4>

080602da <RTC_IRQHandler>:
 80602da:	b480      	push	{r7}
 80602dc:	af00      	add	r7, sp, #0
 80602de:	e7fe      	b.n	80602de <RTC_IRQHandler+0x4>

080602e0 <RTC_IRQHandler_S>:
 80602e0:	b480      	push	{r7}
 80602e2:	af00      	add	r7, sp, #0
 80602e4:	e7fe      	b.n	80602e4 <RTC_IRQHandler_S+0x4>

080602e6 <TAMP_IRQHandler>:
 80602e6:	b480      	push	{r7}
 80602e8:	af00      	add	r7, sp, #0
 80602ea:	e7fe      	b.n	80602ea <TAMP_IRQHandler+0x4>

080602ec <TAMP_IRQHandler_S>:
 80602ec:	b480      	push	{r7}
 80602ee:	af00      	add	r7, sp, #0
 80602f0:	e7fe      	b.n	80602f0 <TAMP_IRQHandler_S+0x4>

080602f2 <FLASH_IRQHandler>:
 80602f2:	b480      	push	{r7}
 80602f4:	af00      	add	r7, sp, #0
 80602f6:	e7fe      	b.n	80602f6 <FLASH_IRQHandler+0x4>

080602f8 <FLASH_IRQHandler_S>:
 80602f8:	b480      	push	{r7}
 80602fa:	af00      	add	r7, sp, #0
 80602fc:	e7fe      	b.n	80602fc <FLASH_IRQHandler_S+0x4>

080602fe <SERR_IRQHandler>:
 80602fe:	b480      	push	{r7}
 8060300:	af00      	add	r7, sp, #0
 8060302:	e7fe      	b.n	8060302 <SERR_IRQHandler+0x4>

08060304 <RCC_IRQHandler>:
 8060304:	b480      	push	{r7}
 8060306:	af00      	add	r7, sp, #0
 8060308:	e7fe      	b.n	8060308 <RCC_IRQHandler+0x4>

0806030a <RCC_IRQHandler_S>:
 806030a:	b480      	push	{r7}
 806030c:	af00      	add	r7, sp, #0
 806030e:	e7fe      	b.n	806030e <RCC_IRQHandler_S+0x4>

08060310 <EXTI0_IRQHandler>:
 8060310:	b480      	push	{r7}
 8060312:	af00      	add	r7, sp, #0
 8060314:	e7fe      	b.n	8060314 <EXTI0_IRQHandler+0x4>

08060316 <EXTI1_IRQHandler>:
 8060316:	b480      	push	{r7}
 8060318:	af00      	add	r7, sp, #0
 806031a:	e7fe      	b.n	806031a <EXTI1_IRQHandler+0x4>

0806031c <EXTI2_IRQHandler>:
 806031c:	b480      	push	{r7}
 806031e:	af00      	add	r7, sp, #0
 8060320:	e7fe      	b.n	8060320 <EXTI2_IRQHandler+0x4>

08060322 <EXTI3_IRQHandler>:
 8060322:	b480      	push	{r7}
 8060324:	af00      	add	r7, sp, #0
 8060326:	e7fe      	b.n	8060326 <EXTI3_IRQHandler+0x4>

08060328 <EXTI4_IRQHandler>:
 8060328:	b480      	push	{r7}
 806032a:	af00      	add	r7, sp, #0
 806032c:	e7fe      	b.n	806032c <EXTI4_IRQHandler+0x4>

0806032e <EXTI5_IRQHandler>:
 806032e:	b480      	push	{r7}
 8060330:	af00      	add	r7, sp, #0
 8060332:	e7fe      	b.n	8060332 <EXTI5_IRQHandler+0x4>

08060334 <EXTI6_IRQHandler>:
 8060334:	b480      	push	{r7}
 8060336:	af00      	add	r7, sp, #0
 8060338:	e7fe      	b.n	8060338 <EXTI6_IRQHandler+0x4>

0806033a <EXTI7_IRQHandler>:
 806033a:	b480      	push	{r7}
 806033c:	af00      	add	r7, sp, #0
 806033e:	e7fe      	b.n	806033e <EXTI7_IRQHandler+0x4>

08060340 <EXTI8_IRQHandler>:
 8060340:	b480      	push	{r7}
 8060342:	af00      	add	r7, sp, #0
 8060344:	e7fe      	b.n	8060344 <EXTI8_IRQHandler+0x4>

08060346 <EXTI9_IRQHandler>:
 8060346:	b480      	push	{r7}
 8060348:	af00      	add	r7, sp, #0
 806034a:	e7fe      	b.n	806034a <EXTI9_IRQHandler+0x4>

0806034c <EXTI10_IRQHandler>:
 806034c:	b480      	push	{r7}
 806034e:	af00      	add	r7, sp, #0
 8060350:	e7fe      	b.n	8060350 <EXTI10_IRQHandler+0x4>

08060352 <EXTI11_IRQHandler>:
 8060352:	b480      	push	{r7}
 8060354:	af00      	add	r7, sp, #0
 8060356:	e7fe      	b.n	8060356 <EXTI11_IRQHandler+0x4>

08060358 <EXTI12_IRQHandler>:
 8060358:	b480      	push	{r7}
 806035a:	af00      	add	r7, sp, #0
 806035c:	e7fe      	b.n	806035c <EXTI12_IRQHandler+0x4>

0806035e <EXTI13_IRQHandler>:
 806035e:	b480      	push	{r7}
 8060360:	af00      	add	r7, sp, #0
 8060362:	e7fe      	b.n	8060362 <EXTI13_IRQHandler+0x4>

08060364 <EXTI14_IRQHandler>:
 8060364:	b480      	push	{r7}
 8060366:	af00      	add	r7, sp, #0
 8060368:	e7fe      	b.n	8060368 <EXTI14_IRQHandler+0x4>

0806036a <EXTI15_IRQHandler>:
 806036a:	b480      	push	{r7}
 806036c:	af00      	add	r7, sp, #0
 806036e:	e7fe      	b.n	806036e <EXTI15_IRQHandler+0x4>

08060370 <DMAMUX1_IRQHandler>:
 8060370:	b480      	push	{r7}
 8060372:	af00      	add	r7, sp, #0
 8060374:	e7fe      	b.n	8060374 <DMAMUX1_IRQHandler+0x4>

08060376 <DMAMUX1_IRQHandler_S>:
 8060376:	b480      	push	{r7}
 8060378:	af00      	add	r7, sp, #0
 806037a:	e7fe      	b.n	806037a <DMAMUX1_IRQHandler_S+0x4>

0806037c <DMA1_Channel1_IRQHandler>:
 806037c:	b480      	push	{r7}
 806037e:	af00      	add	r7, sp, #0
 8060380:	e7fe      	b.n	8060380 <DMA1_Channel1_IRQHandler+0x4>

08060382 <DMA1_Channel2_IRQHandler>:
 8060382:	b480      	push	{r7}
 8060384:	af00      	add	r7, sp, #0
 8060386:	e7fe      	b.n	8060386 <DMA1_Channel2_IRQHandler+0x4>

08060388 <DMA1_Channel3_IRQHandler>:
 8060388:	b480      	push	{r7}
 806038a:	af00      	add	r7, sp, #0
 806038c:	e7fe      	b.n	806038c <DMA1_Channel3_IRQHandler+0x4>

0806038e <DMA1_Channel4_IRQHandler>:
 806038e:	b480      	push	{r7}
 8060390:	af00      	add	r7, sp, #0
 8060392:	e7fe      	b.n	8060392 <DMA1_Channel4_IRQHandler+0x4>

08060394 <DMA1_Channel5_IRQHandler>:
 8060394:	b480      	push	{r7}
 8060396:	af00      	add	r7, sp, #0
 8060398:	e7fe      	b.n	8060398 <DMA1_Channel5_IRQHandler+0x4>

0806039a <DMA1_Channel6_IRQHandler>:
 806039a:	b480      	push	{r7}
 806039c:	af00      	add	r7, sp, #0
 806039e:	e7fe      	b.n	806039e <DMA1_Channel6_IRQHandler+0x4>

080603a0 <DMA1_Channel7_IRQHandler>:
 80603a0:	b480      	push	{r7}
 80603a2:	af00      	add	r7, sp, #0
 80603a4:	e7fe      	b.n	80603a4 <DMA1_Channel7_IRQHandler+0x4>

080603a6 <DMA1_Channel8_IRQHandler>:
 80603a6:	b480      	push	{r7}
 80603a8:	af00      	add	r7, sp, #0
 80603aa:	e7fe      	b.n	80603aa <DMA1_Channel8_IRQHandler+0x4>

080603ac <ADC1_2_IRQHandler>:
 80603ac:	b480      	push	{r7}
 80603ae:	af00      	add	r7, sp, #0
 80603b0:	e7fe      	b.n	80603b0 <ADC1_2_IRQHandler+0x4>

080603b2 <DAC_IRQHandler>:
 80603b2:	b480      	push	{r7}
 80603b4:	af00      	add	r7, sp, #0
 80603b6:	e7fe      	b.n	80603b6 <DAC_IRQHandler+0x4>

080603b8 <FDCAN1_IT0_IRQHandler>:
 80603b8:	b480      	push	{r7}
 80603ba:	af00      	add	r7, sp, #0
 80603bc:	e7fe      	b.n	80603bc <FDCAN1_IT0_IRQHandler+0x4>

080603be <FDCAN1_IT1_IRQHandler>:
 80603be:	b480      	push	{r7}
 80603c0:	af00      	add	r7, sp, #0
 80603c2:	e7fe      	b.n	80603c2 <FDCAN1_IT1_IRQHandler+0x4>

080603c4 <TIM1_BRK_IRQHandler>:
 80603c4:	b480      	push	{r7}
 80603c6:	af00      	add	r7, sp, #0
 80603c8:	e7fe      	b.n	80603c8 <TIM1_BRK_IRQHandler+0x4>

080603ca <TIM1_UP_IRQHandler>:
 80603ca:	b480      	push	{r7}
 80603cc:	af00      	add	r7, sp, #0
 80603ce:	e7fe      	b.n	80603ce <TIM1_UP_IRQHandler+0x4>

080603d0 <TIM1_TRG_COM_IRQHandler>:
 80603d0:	b480      	push	{r7}
 80603d2:	af00      	add	r7, sp, #0
 80603d4:	e7fe      	b.n	80603d4 <TIM1_TRG_COM_IRQHandler+0x4>

080603d6 <TIM1_CC_IRQHandler>:
 80603d6:	b480      	push	{r7}
 80603d8:	af00      	add	r7, sp, #0
 80603da:	e7fe      	b.n	80603da <TIM1_CC_IRQHandler+0x4>

080603dc <TIM2_IRQHandler>:
 80603dc:	b480      	push	{r7}
 80603de:	af00      	add	r7, sp, #0
 80603e0:	e7fe      	b.n	80603e0 <TIM2_IRQHandler+0x4>

080603e2 <TIM3_IRQHandler>:
 80603e2:	b480      	push	{r7}
 80603e4:	af00      	add	r7, sp, #0
 80603e6:	e7fe      	b.n	80603e6 <TIM3_IRQHandler+0x4>

080603e8 <TIM4_IRQHandler>:
 80603e8:	b480      	push	{r7}
 80603ea:	af00      	add	r7, sp, #0
 80603ec:	e7fe      	b.n	80603ec <TIM4_IRQHandler+0x4>

080603ee <TIM5_IRQHandler>:
 80603ee:	b480      	push	{r7}
 80603f0:	af00      	add	r7, sp, #0
 80603f2:	e7fe      	b.n	80603f2 <TIM5_IRQHandler+0x4>

080603f4 <TIM6_IRQHandler>:
 80603f4:	b480      	push	{r7}
 80603f6:	af00      	add	r7, sp, #0
 80603f8:	e7fe      	b.n	80603f8 <TIM6_IRQHandler+0x4>

080603fa <TIM7_IRQHandler>:
 80603fa:	b480      	push	{r7}
 80603fc:	af00      	add	r7, sp, #0
 80603fe:	e7fe      	b.n	80603fe <TIM7_IRQHandler+0x4>

08060400 <TIM8_BRK_IRQHandler>:
 8060400:	b480      	push	{r7}
 8060402:	af00      	add	r7, sp, #0
 8060404:	e7fe      	b.n	8060404 <TIM8_BRK_IRQHandler+0x4>

08060406 <TIM8_UP_IRQHandler>:
 8060406:	b480      	push	{r7}
 8060408:	af00      	add	r7, sp, #0
 806040a:	e7fe      	b.n	806040a <TIM8_UP_IRQHandler+0x4>

0806040c <TIM8_TRG_COM_IRQHandler>:
 806040c:	b480      	push	{r7}
 806040e:	af00      	add	r7, sp, #0
 8060410:	e7fe      	b.n	8060410 <TIM8_TRG_COM_IRQHandler+0x4>

08060412 <TIM8_CC_IRQHandler>:
 8060412:	b480      	push	{r7}
 8060414:	af00      	add	r7, sp, #0
 8060416:	e7fe      	b.n	8060416 <TIM8_CC_IRQHandler+0x4>

08060418 <I2C1_EV_IRQHandler>:
 8060418:	b480      	push	{r7}
 806041a:	af00      	add	r7, sp, #0
 806041c:	e7fe      	b.n	806041c <I2C1_EV_IRQHandler+0x4>

0806041e <I2C1_ER_IRQHandler>:
 806041e:	b480      	push	{r7}
 8060420:	af00      	add	r7, sp, #0
 8060422:	e7fe      	b.n	8060422 <I2C1_ER_IRQHandler+0x4>

08060424 <I2C2_EV_IRQHandler>:
 8060424:	b480      	push	{r7}
 8060426:	af00      	add	r7, sp, #0
 8060428:	e7fe      	b.n	8060428 <I2C2_EV_IRQHandler+0x4>

0806042a <I2C2_ER_IRQHandler>:
 806042a:	b480      	push	{r7}
 806042c:	af00      	add	r7, sp, #0
 806042e:	e7fe      	b.n	806042e <I2C2_ER_IRQHandler+0x4>

08060430 <SPI1_IRQHandler>:
 8060430:	b480      	push	{r7}
 8060432:	af00      	add	r7, sp, #0
 8060434:	e7fe      	b.n	8060434 <SPI1_IRQHandler+0x4>

08060436 <SPI2_IRQHandler>:
 8060436:	b480      	push	{r7}
 8060438:	af00      	add	r7, sp, #0
 806043a:	e7fe      	b.n	806043a <SPI2_IRQHandler+0x4>

0806043c <USART1_IRQHandler>:
 806043c:	b480      	push	{r7}
 806043e:	af00      	add	r7, sp, #0
 8060440:	e7fe      	b.n	8060440 <USART1_IRQHandler+0x4>

08060442 <USART2_IRQHandler>:
 8060442:	b480      	push	{r7}
 8060444:	af00      	add	r7, sp, #0
 8060446:	e7fe      	b.n	8060446 <USART2_IRQHandler+0x4>

08060448 <USART3_IRQHandler>:
 8060448:	b480      	push	{r7}
 806044a:	af00      	add	r7, sp, #0
 806044c:	e7fe      	b.n	806044c <USART3_IRQHandler+0x4>

0806044e <UART4_IRQHandler>:
 806044e:	b480      	push	{r7}
 8060450:	af00      	add	r7, sp, #0
 8060452:	e7fe      	b.n	8060452 <UART4_IRQHandler+0x4>

08060454 <UART5_IRQHandler>:
 8060454:	b480      	push	{r7}
 8060456:	af00      	add	r7, sp, #0
 8060458:	e7fe      	b.n	8060458 <UART5_IRQHandler+0x4>

0806045a <LPUART1_IRQHandler>:
 806045a:	b480      	push	{r7}
 806045c:	af00      	add	r7, sp, #0
 806045e:	e7fe      	b.n	806045e <LPUART1_IRQHandler+0x4>

08060460 <LPTIM1_IRQHandler>:
 8060460:	b480      	push	{r7}
 8060462:	af00      	add	r7, sp, #0
 8060464:	e7fe      	b.n	8060464 <LPTIM1_IRQHandler+0x4>

08060466 <LPTIM2_IRQHandler>:
 8060466:	b480      	push	{r7}
 8060468:	af00      	add	r7, sp, #0
 806046a:	e7fe      	b.n	806046a <LPTIM2_IRQHandler+0x4>

0806046c <TIM15_IRQHandler>:
 806046c:	b480      	push	{r7}
 806046e:	af00      	add	r7, sp, #0
 8060470:	e7fe      	b.n	8060470 <TIM15_IRQHandler+0x4>

08060472 <TIM16_IRQHandler>:
 8060472:	b480      	push	{r7}
 8060474:	af00      	add	r7, sp, #0
 8060476:	e7fe      	b.n	8060476 <TIM16_IRQHandler+0x4>

08060478 <TIM17_IRQHandler>:
 8060478:	b480      	push	{r7}
 806047a:	af00      	add	r7, sp, #0
 806047c:	e7fe      	b.n	806047c <TIM17_IRQHandler+0x4>

0806047e <COMP_IRQHandler>:
 806047e:	b480      	push	{r7}
 8060480:	af00      	add	r7, sp, #0
 8060482:	e7fe      	b.n	8060482 <COMP_IRQHandler+0x4>

08060484 <USB_FS_IRQHandler>:
 8060484:	b480      	push	{r7}
 8060486:	af00      	add	r7, sp, #0
 8060488:	e7fe      	b.n	8060488 <USB_FS_IRQHandler+0x4>

0806048a <CRS_IRQHandler>:
 806048a:	b480      	push	{r7}
 806048c:	af00      	add	r7, sp, #0
 806048e:	e7fe      	b.n	806048e <CRS_IRQHandler+0x4>

08060490 <FMC_IRQHandler>:
 8060490:	b480      	push	{r7}
 8060492:	af00      	add	r7, sp, #0
 8060494:	e7fe      	b.n	8060494 <FMC_IRQHandler+0x4>

08060496 <OCTOSPI1_IRQHandler>:
 8060496:	b480      	push	{r7}
 8060498:	af00      	add	r7, sp, #0
 806049a:	e7fe      	b.n	806049a <OCTOSPI1_IRQHandler+0x4>

0806049c <SDMMC1_IRQHandler>:
 806049c:	b480      	push	{r7}
 806049e:	af00      	add	r7, sp, #0
 80604a0:	e7fe      	b.n	80604a0 <SDMMC1_IRQHandler+0x4>

080604a2 <DMA2_Channel1_IRQHandler>:
 80604a2:	b480      	push	{r7}
 80604a4:	af00      	add	r7, sp, #0
 80604a6:	e7fe      	b.n	80604a6 <DMA2_Channel1_IRQHandler+0x4>

080604a8 <DMA2_Channel2_IRQHandler>:
 80604a8:	b480      	push	{r7}
 80604aa:	af00      	add	r7, sp, #0
 80604ac:	e7fe      	b.n	80604ac <DMA2_Channel2_IRQHandler+0x4>

080604ae <DMA2_Channel3_IRQHandler>:
 80604ae:	b480      	push	{r7}
 80604b0:	af00      	add	r7, sp, #0
 80604b2:	e7fe      	b.n	80604b2 <DMA2_Channel3_IRQHandler+0x4>

080604b4 <DMA2_Channel4_IRQHandler>:
 80604b4:	b480      	push	{r7}
 80604b6:	af00      	add	r7, sp, #0
 80604b8:	e7fe      	b.n	80604b8 <DMA2_Channel4_IRQHandler+0x4>

080604ba <DMA2_Channel5_IRQHandler>:
 80604ba:	b480      	push	{r7}
 80604bc:	af00      	add	r7, sp, #0
 80604be:	e7fe      	b.n	80604be <DMA2_Channel5_IRQHandler+0x4>

080604c0 <DMA2_Channel6_IRQHandler>:
 80604c0:	b480      	push	{r7}
 80604c2:	af00      	add	r7, sp, #0
 80604c4:	e7fe      	b.n	80604c4 <DMA2_Channel6_IRQHandler+0x4>

080604c6 <DMA2_Channel7_IRQHandler>:
 80604c6:	b480      	push	{r7}
 80604c8:	af00      	add	r7, sp, #0
 80604ca:	e7fe      	b.n	80604ca <DMA2_Channel7_IRQHandler+0x4>

080604cc <DMA2_Channel8_IRQHandler>:
 80604cc:	b480      	push	{r7}
 80604ce:	af00      	add	r7, sp, #0
 80604d0:	e7fe      	b.n	80604d0 <DMA2_Channel8_IRQHandler+0x4>

080604d2 <I2C3_EV_IRQHandler>:
 80604d2:	b480      	push	{r7}
 80604d4:	af00      	add	r7, sp, #0
 80604d6:	e7fe      	b.n	80604d6 <I2C3_EV_IRQHandler+0x4>

080604d8 <I2C3_ER_IRQHandler>:
 80604d8:	b480      	push	{r7}
 80604da:	af00      	add	r7, sp, #0
 80604dc:	e7fe      	b.n	80604dc <I2C3_ER_IRQHandler+0x4>

080604de <SAI1_IRQHandler>:
 80604de:	b480      	push	{r7}
 80604e0:	af00      	add	r7, sp, #0
 80604e2:	e7fe      	b.n	80604e2 <SAI1_IRQHandler+0x4>

080604e4 <SAI2_IRQHandler>:
 80604e4:	b480      	push	{r7}
 80604e6:	af00      	add	r7, sp, #0
 80604e8:	e7fe      	b.n	80604e8 <SAI2_IRQHandler+0x4>

080604ea <TSC_IRQHandler>:
 80604ea:	b480      	push	{r7}
 80604ec:	af00      	add	r7, sp, #0
 80604ee:	e7fe      	b.n	80604ee <TSC_IRQHandler+0x4>

080604f0 <AES_IRQHandler>:
 80604f0:	b480      	push	{r7}
 80604f2:	af00      	add	r7, sp, #0
 80604f4:	e7fe      	b.n	80604f4 <AES_IRQHandler+0x4>

080604f6 <RNG_IRQHandler>:
 80604f6:	b480      	push	{r7}
 80604f8:	af00      	add	r7, sp, #0
 80604fa:	e7fe      	b.n	80604fa <RNG_IRQHandler+0x4>

080604fc <FPU_IRQHandler>:
 80604fc:	b480      	push	{r7}
 80604fe:	af00      	add	r7, sp, #0
 8060500:	e7fe      	b.n	8060500 <FPU_IRQHandler+0x4>

08060502 <HASH_IRQHandler>:
 8060502:	b480      	push	{r7}
 8060504:	af00      	add	r7, sp, #0
 8060506:	e7fe      	b.n	8060506 <HASH_IRQHandler+0x4>

08060508 <PKA_IRQHandler>:
 8060508:	b480      	push	{r7}
 806050a:	af00      	add	r7, sp, #0
 806050c:	e7fe      	b.n	806050c <PKA_IRQHandler+0x4>

0806050e <LPTIM3_IRQHandler>:
 806050e:	b480      	push	{r7}
 8060510:	af00      	add	r7, sp, #0
 8060512:	e7fe      	b.n	8060512 <LPTIM3_IRQHandler+0x4>

08060514 <SPI3_IRQHandler>:
 8060514:	b480      	push	{r7}
 8060516:	af00      	add	r7, sp, #0
 8060518:	e7fe      	b.n	8060518 <SPI3_IRQHandler+0x4>

0806051a <I2C4_ER_IRQHandler>:
 806051a:	b480      	push	{r7}
 806051c:	af00      	add	r7, sp, #0
 806051e:	e7fe      	b.n	806051e <I2C4_ER_IRQHandler+0x4>

08060520 <I2C4_EV_IRQHandler>:
 8060520:	b480      	push	{r7}
 8060522:	af00      	add	r7, sp, #0
 8060524:	e7fe      	b.n	8060524 <I2C4_EV_IRQHandler+0x4>

08060526 <DFSDM1_FLT0_IRQHandler>:
 8060526:	b480      	push	{r7}
 8060528:	af00      	add	r7, sp, #0
 806052a:	e7fe      	b.n	806052a <DFSDM1_FLT0_IRQHandler+0x4>

0806052c <DFSDM1_FLT1_IRQHandler>:
 806052c:	b480      	push	{r7}
 806052e:	af00      	add	r7, sp, #0
 8060530:	e7fe      	b.n	8060530 <DFSDM1_FLT1_IRQHandler+0x4>

08060532 <DFSDM1_FLT2_IRQHandler>:
 8060532:	b480      	push	{r7}
 8060534:	af00      	add	r7, sp, #0
 8060536:	e7fe      	b.n	8060536 <DFSDM1_FLT2_IRQHandler+0x4>

08060538 <DFSDM1_FLT3_IRQHandler>:
 8060538:	b480      	push	{r7}
 806053a:	af00      	add	r7, sp, #0
 806053c:	e7fe      	b.n	806053c <DFSDM1_FLT3_IRQHandler+0x4>

0806053e <UCPD1_IRQHandler>:
 806053e:	b480      	push	{r7}
 8060540:	af00      	add	r7, sp, #0
 8060542:	e7fe      	b.n	8060542 <UCPD1_IRQHandler+0x4>

08060544 <ICACHE_IRQHandler>:
 8060544:	b480      	push	{r7}
 8060546:	af00      	add	r7, sp, #0
 8060548:	e7fe      	b.n	8060548 <ICACHE_IRQHandler+0x4>

0806054a <OTFDEC1_IRQHandler>:
 806054a:	b480      	push	{r7}
 806054c:	af00      	add	r7, sp, #0
 806054e:	e7fe      	b.n	806054e <OTFDEC1_IRQHandler+0x4>

08060550 <Reset_Handler>:
 8060550:	b580      	push	{r7, lr}
 8060552:	b088      	sub	sp, #32
 8060554:	af00      	add	r7, sp, #0
 8060556:	4b29      	ldr	r3, [pc, #164]	; (80605fc <Reset_Handler+0xac>)
 8060558:	607b      	str	r3, [r7, #4]
 806055a:	687b      	ldr	r3, [r7, #4]
 806055c:	f383 880a 	msr	MSPLIM, r3
 8060560:	bf00      	nop
 8060562:	4b27      	ldr	r3, [pc, #156]	; (8060600 <Reset_Handler+0xb0>)
 8060564:	60bb      	str	r3, [r7, #8]
 8060566:	68bb      	ldr	r3, [r7, #8]
 8060568:	f383 8809 	msr	PSP, r3
 806056c:	bf00      	nop
 806056e:	4b23      	ldr	r3, [pc, #140]	; (80605fc <Reset_Handler+0xac>)
 8060570:	60fb      	str	r3, [r7, #12]
 8060572:	68fb      	ldr	r3, [r7, #12]
 8060574:	f383 880b 	msr	PSPLIM, r3
 8060578:	bf00      	nop
 806057a:	4b22      	ldr	r3, [pc, #136]	; (8060604 <Reset_Handler+0xb4>)
 806057c:	4798      	blx	r3
 806057e:	4b22      	ldr	r3, [pc, #136]	; (8060608 <Reset_Handler+0xb8>)
 8060580:	61fb      	str	r3, [r7, #28]
 8060582:	e019      	b.n	80605b8 <Reset_Handler+0x68>
 8060584:	2300      	movs	r3, #0
 8060586:	61bb      	str	r3, [r7, #24]
 8060588:	e00e      	b.n	80605a8 <Reset_Handler+0x58>
 806058a:	69fb      	ldr	r3, [r7, #28]
 806058c:	681a      	ldr	r2, [r3, #0]
 806058e:	69bb      	ldr	r3, [r7, #24]
 8060590:	009b      	lsls	r3, r3, #2
 8060592:	441a      	add	r2, r3
 8060594:	69fb      	ldr	r3, [r7, #28]
 8060596:	6859      	ldr	r1, [r3, #4]
 8060598:	69bb      	ldr	r3, [r7, #24]
 806059a:	009b      	lsls	r3, r3, #2
 806059c:	440b      	add	r3, r1
 806059e:	6812      	ldr	r2, [r2, #0]
 80605a0:	601a      	str	r2, [r3, #0]
 80605a2:	69bb      	ldr	r3, [r7, #24]
 80605a4:	3301      	adds	r3, #1
 80605a6:	61bb      	str	r3, [r7, #24]
 80605a8:	69fb      	ldr	r3, [r7, #28]
 80605aa:	689b      	ldr	r3, [r3, #8]
 80605ac:	69ba      	ldr	r2, [r7, #24]
 80605ae:	429a      	cmp	r2, r3
 80605b0:	d3eb      	bcc.n	806058a <Reset_Handler+0x3a>
 80605b2:	69fb      	ldr	r3, [r7, #28]
 80605b4:	330c      	adds	r3, #12
 80605b6:	61fb      	str	r3, [r7, #28]
 80605b8:	69fb      	ldr	r3, [r7, #28]
 80605ba:	4a14      	ldr	r2, [pc, #80]	; (806060c <Reset_Handler+0xbc>)
 80605bc:	4293      	cmp	r3, r2
 80605be:	d3e1      	bcc.n	8060584 <Reset_Handler+0x34>
 80605c0:	4b13      	ldr	r3, [pc, #76]	; (8060610 <Reset_Handler+0xc0>)
 80605c2:	617b      	str	r3, [r7, #20]
 80605c4:	e014      	b.n	80605f0 <Reset_Handler+0xa0>
 80605c6:	2300      	movs	r3, #0
 80605c8:	613b      	str	r3, [r7, #16]
 80605ca:	e009      	b.n	80605e0 <Reset_Handler+0x90>
 80605cc:	697b      	ldr	r3, [r7, #20]
 80605ce:	681a      	ldr	r2, [r3, #0]
 80605d0:	693b      	ldr	r3, [r7, #16]
 80605d2:	009b      	lsls	r3, r3, #2
 80605d4:	4413      	add	r3, r2
 80605d6:	2200      	movs	r2, #0
 80605d8:	601a      	str	r2, [r3, #0]
 80605da:	693b      	ldr	r3, [r7, #16]
 80605dc:	3301      	adds	r3, #1
 80605de:	613b      	str	r3, [r7, #16]
 80605e0:	697b      	ldr	r3, [r7, #20]
 80605e2:	685b      	ldr	r3, [r3, #4]
 80605e4:	693a      	ldr	r2, [r7, #16]
 80605e6:	429a      	cmp	r2, r3
 80605e8:	d3f0      	bcc.n	80605cc <Reset_Handler+0x7c>
 80605ea:	697b      	ldr	r3, [r7, #20]
 80605ec:	3308      	adds	r3, #8
 80605ee:	617b      	str	r3, [r7, #20]
 80605f0:	697b      	ldr	r3, [r7, #20]
 80605f2:	4a08      	ldr	r2, [pc, #32]	; (8060614 <Reset_Handler+0xc4>)
 80605f4:	4293      	cmp	r3, r2
 80605f6:	d3e6      	bcc.n	80605c6 <Reset_Handler+0x76>
 80605f8:	4b07      	ldr	r3, [pc, #28]	; (8060618 <Reset_Handler+0xc8>)
 80605fa:	4798      	blx	r3
 80605fc:	20003ec0 	.word	0x20003ec0
 8060600:	20004ec0 	.word	0x20004ec0
 8060604:	0805fc2d 	.word	0x0805fc2d
 8060608:	08060cc8 	.word	0x08060cc8
 806060c:	08060ce0 	.word	0x08060ce0
 8060610:	08060ce0 	.word	0x08060ce0
 8060614:	08060cf0 	.word	0x08060cf0
 8060618:	0805faf5 	.word	0x0805faf5

0806061c <MX_GPIO_Init>:
 806061c:	b580      	push	{r7, lr}
 806061e:	b086      	sub	sp, #24
 8060620:	af00      	add	r7, sp, #0
 8060622:	1d3b      	adds	r3, r7, #4
 8060624:	2200      	movs	r2, #0
 8060626:	601a      	str	r2, [r3, #0]
 8060628:	605a      	str	r2, [r3, #4]
 806062a:	609a      	str	r2, [r3, #8]
 806062c:	60da      	str	r2, [r3, #12]
 806062e:	611a      	str	r2, [r3, #16]
 8060630:	4b10      	ldr	r3, [pc, #64]	; (8060674 <MX_GPIO_Init+0x58>)
 8060632:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 8060634:	4a0f      	ldr	r2, [pc, #60]	; (8060674 <MX_GPIO_Init+0x58>)
 8060636:	f043 0308 	orr.w	r3, r3, #8
 806063a:	64d3      	str	r3, [r2, #76]	; 0x4c
 806063c:	4b0d      	ldr	r3, [pc, #52]	; (8060674 <MX_GPIO_Init+0x58>)
 806063e:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 8060640:	f003 0308 	and.w	r3, r3, #8
 8060644:	603b      	str	r3, [r7, #0]
 8060646:	683b      	ldr	r3, [r7, #0]
 8060648:	2201      	movs	r2, #1
 806064a:	2108      	movs	r1, #8
 806064c:	480a      	ldr	r0, [pc, #40]	; (8060678 <MX_GPIO_Init+0x5c>)
 806064e:	4b0b      	ldr	r3, [pc, #44]	; (806067c <MX_GPIO_Init+0x60>)
 8060650:	4798      	blx	r3
 8060652:	2308      	movs	r3, #8
 8060654:	607b      	str	r3, [r7, #4]
 8060656:	2301      	movs	r3, #1
 8060658:	60bb      	str	r3, [r7, #8]
 806065a:	2301      	movs	r3, #1
 806065c:	60fb      	str	r3, [r7, #12]
 806065e:	2303      	movs	r3, #3
 8060660:	613b      	str	r3, [r7, #16]
 8060662:	1d3b      	adds	r3, r7, #4
 8060664:	4619      	mov	r1, r3
 8060666:	4804      	ldr	r0, [pc, #16]	; (8060678 <MX_GPIO_Init+0x5c>)
 8060668:	4b05      	ldr	r3, [pc, #20]	; (8060680 <MX_GPIO_Init+0x64>)
 806066a:	4798      	blx	r3
 806066c:	bf00      	nop
 806066e:	3718      	adds	r7, #24
 8060670:	46bd      	mov	sp, r7
 8060672:	bd80      	pop	{r7, pc}
 8060674:	40021000 	.word	0x40021000
 8060678:	42020c00 	.word	0x42020c00
 806067c:	08060069 	.word	0x08060069
 8060680:	0805fd69 	.word	0x0805fd69

08060684 <sum>:
 8060684:	b480      	push	{r7}
 8060686:	b083      	sub	sp, #12
 8060688:	af00      	add	r7, sp, #0
 806068a:	6078      	str	r0, [r7, #4]
 806068c:	6039      	str	r1, [r7, #0]
 806068e:	687a      	ldr	r2, [r7, #4]
 8060690:	683b      	ldr	r3, [r7, #0]
 8060692:	4413      	add	r3, r2
 8060694:	4618      	mov	r0, r3
 8060696:	370c      	adds	r7, #12
 8060698:	46bd      	mov	sp, r7
 806069a:	bc80      	pop	{r7}
 806069c:	4770      	bx	lr
	...

080606a0 <testThread>:
 80606a0:	b580      	push	{r7, lr}
 80606a2:	b086      	sub	sp, #24
 80606a4:	af00      	add	r7, sp, #0
 80606a6:	6078      	str	r0, [r7, #4]
 80606a8:	2108      	movs	r1, #8
 80606aa:	4808      	ldr	r0, [pc, #32]	; (80606cc <testThread+0x2c>)
 80606ac:	4b08      	ldr	r3, [pc, #32]	; (80606d0 <testThread+0x30>)
 80606ae:	4798      	blx	r3
 80606b0:	2302      	movs	r3, #2
 80606b2:	617b      	str	r3, [r7, #20]
 80606b4:	2303      	movs	r3, #3
 80606b6:	613b      	str	r3, [r7, #16]
 80606b8:	6939      	ldr	r1, [r7, #16]
 80606ba:	6978      	ldr	r0, [r7, #20]
 80606bc:	4b05      	ldr	r3, [pc, #20]	; (80606d4 <testThread+0x34>)
 80606be:	4798      	blx	r3
 80606c0:	60f8      	str	r0, [r7, #12]
 80606c2:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
 80606c6:	4b04      	ldr	r3, [pc, #16]	; (80606d8 <testThread+0x38>)
 80606c8:	4798      	blx	r3
 80606ca:	e7ed      	b.n	80606a8 <testThread+0x8>
 80606cc:	42020c00 	.word	0x42020c00
 80606d0:	08060097 	.word	0x08060097
 80606d4:	08060685 	.word	0x08060685
 80606d8:	0805f303 	.word	0x0805f303

080606dc <main>:
 80606dc:	b5b0      	push	{r4, r5, r7, lr}
 80606de:	b090      	sub	sp, #64	; 0x40
 80606e0:	af00      	add	r7, sp, #0
 80606e2:	4b0c      	ldr	r3, [pc, #48]	; (8060714 <main+0x38>)
 80606e4:	4798      	blx	r3
 80606e6:	4b0c      	ldr	r3, [pc, #48]	; (8060718 <main+0x3c>)
 80606e8:	4798      	blx	r3
 80606ea:	4b0c      	ldr	r3, [pc, #48]	; (806071c <main+0x40>)
 80606ec:	1d3c      	adds	r4, r7, #4
 80606ee:	461d      	mov	r5, r3
 80606f0:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 80606f2:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 80606f4:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 80606f6:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 80606f8:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 80606fa:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 80606fc:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
 8060700:	e884 0007 	stmia.w	r4, {r0, r1, r2}
 8060704:	1d3b      	adds	r3, r7, #4
 8060706:	2100      	movs	r1, #0
 8060708:	4618      	mov	r0, r3
 806070a:	4b05      	ldr	r3, [pc, #20]	; (8060720 <main+0x44>)
 806070c:	4798      	blx	r3
 806070e:	4b05      	ldr	r3, [pc, #20]	; (8060724 <main+0x48>)
 8060710:	4798      	blx	r3
 8060712:	e7fe      	b.n	8060712 <main+0x36>
 8060714:	0805fb5d 	.word	0x0805fb5d
 8060718:	0806061d 	.word	0x0806061d
 806071c:	08060c5c 	.word	0x08060c5c
 8060720:	08058ded 	.word	0x08058ded
 8060724:	08055d21 	.word	0x08055d21

08060728 <prvCreateIdleTasks>:
 8060728:	b590      	push	{r4, r7, lr}
 806072a:	b08b      	sub	sp, #44	; 0x2c
 806072c:	af02      	add	r7, sp, #8
 806072e:	2301      	movs	r3, #1
 8060730:	61fb      	str	r3, [r7, #28]
 8060732:	2300      	movs	r3, #0
 8060734:	613b      	str	r3, [r7, #16]
 8060736:	2300      	movs	r3, #0
 8060738:	617b      	str	r3, [r7, #20]
 806073a:	e011      	b.n	8060760 <prvCreateIdleTasks+0x38>
 806073c:	4a1d      	ldr	r2, [pc, #116]	; (80607b4 <prvCreateIdleTasks+0x8c>)
 806073e:	697b      	ldr	r3, [r7, #20]
 8060740:	4413      	add	r3, r2
 8060742:	7819      	ldrb	r1, [r3, #0]
 8060744:	463a      	mov	r2, r7
 8060746:	697b      	ldr	r3, [r7, #20]
 8060748:	4413      	add	r3, r2
 806074a:	460a      	mov	r2, r1
 806074c:	701a      	strb	r2, [r3, #0]
 806074e:	463a      	mov	r2, r7
 8060750:	697b      	ldr	r3, [r7, #20]
 8060752:	4413      	add	r3, r2
 8060754:	781b      	ldrb	r3, [r3, #0]
 8060756:	2b00      	cmp	r3, #0
 8060758:	d006      	beq.n	8060768 <prvCreateIdleTasks+0x40>
 806075a:	697b      	ldr	r3, [r7, #20]
 806075c:	3301      	adds	r3, #1
 806075e:	617b      	str	r3, [r7, #20]
 8060760:	697b      	ldr	r3, [r7, #20]
 8060762:	2b0f      	cmp	r3, #15
 8060764:	ddea      	ble.n	806073c <prvCreateIdleTasks+0x14>
 8060766:	e000      	b.n	806076a <prvCreateIdleTasks+0x42>
 8060768:	bf00      	nop
 806076a:	2300      	movs	r3, #0
 806076c:	61bb      	str	r3, [r7, #24]
 806076e:	e016      	b.n	806079e <prvCreateIdleTasks+0x76>
 8060770:	4b11      	ldr	r3, [pc, #68]	; (80607b8 <prvCreateIdleTasks+0x90>)
 8060772:	613b      	str	r3, [r7, #16]
 8060774:	69bb      	ldr	r3, [r7, #24]
 8060776:	009b      	lsls	r3, r3, #2
 8060778:	4a10      	ldr	r2, [pc, #64]	; (80607bc <prvCreateIdleTasks+0x94>)
 806077a:	4413      	add	r3, r2
 806077c:	4639      	mov	r1, r7
 806077e:	9301      	str	r3, [sp, #4]
 8060780:	f04f 4300 	mov.w	r3, #2147483648	; 0x80000000
 8060784:	9300      	str	r3, [sp, #0]
 8060786:	2300      	movs	r3, #0
 8060788:	2280      	movs	r2, #128	; 0x80
 806078a:	6938      	ldr	r0, [r7, #16]
 806078c:	4c0c      	ldr	r4, [pc, #48]	; (80607c0 <prvCreateIdleTasks+0x98>)
 806078e:	47a0      	blx	r4
 8060790:	61f8      	str	r0, [r7, #28]
 8060792:	69fb      	ldr	r3, [r7, #28]
 8060794:	2b00      	cmp	r3, #0
 8060796:	d006      	beq.n	80607a6 <prvCreateIdleTasks+0x7e>
 8060798:	69bb      	ldr	r3, [r7, #24]
 806079a:	3301      	adds	r3, #1
 806079c:	61bb      	str	r3, [r7, #24]
 806079e:	69bb      	ldr	r3, [r7, #24]
 80607a0:	2b00      	cmp	r3, #0
 80607a2:	dde5      	ble.n	8060770 <prvCreateIdleTasks+0x48>
 80607a4:	e000      	b.n	80607a8 <prvCreateIdleTasks+0x80>
 80607a6:	bf00      	nop
 80607a8:	69fb      	ldr	r3, [r7, #28]
 80607aa:	4618      	mov	r0, r3
 80607ac:	3724      	adds	r7, #36	; 0x24
 80607ae:	46bd      	mov	sp, r7
 80607b0:	bd90      	pop	{r4, r7, pc}
 80607b2:	bf00      	nop
 80607b4:	08060c98 	.word	0x08060c98
 80607b8:	08057b61 	.word	0x08057b61
 80607bc:	200002d8 	.word	0x200002d8
 80607c0:	08055221 	.word	0x08055221

080607c4 <prvTaskExitError>:
 80607c4:	b580      	push	{r7, lr}
 80607c6:	b082      	sub	sp, #8
 80607c8:	af00      	add	r7, sp, #0
 80607ca:	2300      	movs	r3, #0
 80607cc:	607b      	str	r3, [r7, #4]
 80607ce:	4b09      	ldr	r3, [pc, #36]	; (80607f4 <prvTaskExitError+0x30>)
 80607d0:	681b      	ldr	r3, [r3, #0]
 80607d2:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 80607d6:	d002      	beq.n	80607de <prvTaskExitError+0x1a>
 80607d8:	4b07      	ldr	r3, [pc, #28]	; (80607f8 <prvTaskExitError+0x34>)
 80607da:	4798      	blx	r3
 80607dc:	e7fe      	b.n	80607dc <prvTaskExitError+0x18>
 80607de:	4b06      	ldr	r3, [pc, #24]	; (80607f8 <prvTaskExitError+0x34>)
 80607e0:	4798      	blx	r3
 80607e2:	bf00      	nop
 80607e4:	687b      	ldr	r3, [r7, #4]
 80607e6:	2b00      	cmp	r3, #0
 80607e8:	d0fc      	beq.n	80607e4 <prvTaskExitError+0x20>
 80607ea:	bf00      	nop
 80607ec:	bf00      	nop
 80607ee:	3708      	adds	r7, #8
 80607f0:	46bd      	mov	sp, r7
 80607f2:	bd80      	pop	{r7, pc}
 80607f4:	20003b78 	.word	0x20003b78
 80607f8:	0805f1c7 	.word	0x0805f1c7

080607fc <vPortValidateInterruptPriority>:
 80607fc:	b580      	push	{r7, lr}
 80607fe:	b082      	sub	sp, #8
 8060800:	af00      	add	r7, sp, #0
 8060802:	f3ef 8305 	mrs	r3, IPSR
 8060806:	607b      	str	r3, [r7, #4]
 8060808:	687b      	ldr	r3, [r7, #4]
 806080a:	2b0f      	cmp	r3, #15
 806080c:	d90c      	bls.n	8060828 <vPortValidateInterruptPriority+0x2c>
 806080e:	4a0e      	ldr	r2, [pc, #56]	; (8060848 <vPortValidateInterruptPriority+0x4c>)
 8060810:	687b      	ldr	r3, [r7, #4]
 8060812:	4413      	add	r3, r2
 8060814:	781b      	ldrb	r3, [r3, #0]
 8060816:	70fb      	strb	r3, [r7, #3]
 8060818:	4b0c      	ldr	r3, [pc, #48]	; (806084c <vPortValidateInterruptPriority+0x50>)
 806081a:	781b      	ldrb	r3, [r3, #0]
 806081c:	78fa      	ldrb	r2, [r7, #3]
 806081e:	429a      	cmp	r2, r3
 8060820:	d202      	bcs.n	8060828 <vPortValidateInterruptPriority+0x2c>
 8060822:	4b0b      	ldr	r3, [pc, #44]	; (8060850 <vPortValidateInterruptPriority+0x54>)
 8060824:	4798      	blx	r3
 8060826:	e7fe      	b.n	8060826 <vPortValidateInterruptPriority+0x2a>
 8060828:	4b0a      	ldr	r3, [pc, #40]	; (8060854 <vPortValidateInterruptPriority+0x58>)
 806082a:	681b      	ldr	r3, [r3, #0]
 806082c:	f403 62e0 	and.w	r2, r3, #1792	; 0x700
 8060830:	4b09      	ldr	r3, [pc, #36]	; (8060858 <vPortValidateInterruptPriority+0x5c>)
 8060832:	681b      	ldr	r3, [r3, #0]
 8060834:	429a      	cmp	r2, r3
 8060836:	d902      	bls.n	806083e <vPortValidateInterruptPriority+0x42>
 8060838:	4b05      	ldr	r3, [pc, #20]	; (8060850 <vPortValidateInterruptPriority+0x54>)
 806083a:	4798      	blx	r3
 806083c:	e7fe      	b.n	806083c <vPortValidateInterruptPriority+0x40>
 806083e:	bf00      	nop
 8060840:	3708      	adds	r7, #8
 8060842:	46bd      	mov	sp, r7
 8060844:	bd80      	pop	{r7, pc}
 8060846:	bf00      	nop
 8060848:	e000e3f0 	.word	0xe000e3f0
 806084c:	20003e20 	.word	0x20003e20
 8060850:	0805f1c7 	.word	0x0805f1c7
 8060854:	e000ed0c 	.word	0xe000ed0c
 8060858:	20003e24 	.word	0x20003e24

0806085c <atexit>:
 806085c:	2300      	movs	r3, #0
 806085e:	4601      	mov	r1, r0
 8060860:	461a      	mov	r2, r3
 8060862:	4618      	mov	r0, r3
 8060864:	f000 b916 	b.w	8060a94 <__register_exitproc>

08060868 <exit>:
 8060868:	b508      	push	{r3, lr}
 806086a:	4b07      	ldr	r3, [pc, #28]	; (8060888 <exit+0x20>)
 806086c:	4604      	mov	r4, r0
 806086e:	b113      	cbz	r3, 8060876 <exit+0xe>
 8060870:	2100      	movs	r1, #0
 8060872:	f000 f965 	bl	8060b40 <__call_exitprocs>
 8060876:	4b05      	ldr	r3, [pc, #20]	; (806088c <exit+0x24>)
 8060878:	6818      	ldr	r0, [r3, #0]
 806087a:	6a83      	ldr	r3, [r0, #40]	; 0x28
 806087c:	b103      	cbz	r3, 8060880 <exit+0x18>
 806087e:	4798      	blx	r3
 8060880:	4620      	mov	r0, r4
 8060882:	f000 f9bb 	bl	8060bfc <_exit>
 8060886:	bf00      	nop
 8060888:	08060b41 	.word	0x08060b41
 806088c:	08060cb0 	.word	0x08060cb0

08060890 <__libc_fini_array>:
 8060890:	b538      	push	{r3, r4, r5, lr}
 8060892:	4b08      	ldr	r3, [pc, #32]	; (80608b4 <__libc_fini_array+0x24>)
 8060894:	4d08      	ldr	r5, [pc, #32]	; (80608b8 <__libc_fini_array+0x28>)
 8060896:	1b5b      	subs	r3, r3, r5
 8060898:	109c      	asrs	r4, r3, #2
 806089a:	d007      	beq.n	80608ac <__libc_fini_array+0x1c>
 806089c:	3b04      	subs	r3, #4
 806089e:	441d      	add	r5, r3
 80608a0:	3c01      	subs	r4, #1
 80608a2:	f855 3904 	ldr.w	r3, [r5], #-4
 80608a6:	4798      	blx	r3
 80608a8:	2c00      	cmp	r4, #0
 80608aa:	d1f9      	bne.n	80608a0 <__libc_fini_array+0x10>
 80608ac:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80608b0:	f7f4 bca6 	b.w	8055200 <_fini>
 80608b4:	20003bfc 	.word	0x20003bfc
 80608b8:	20003bf8 	.word	0x20003bf8

080608bc <__libc_init_array>:
 80608bc:	b570      	push	{r4, r5, r6, lr}
 80608be:	4e0d      	ldr	r6, [pc, #52]	; (80608f4 <__libc_init_array+0x38>)
 80608c0:	4d0d      	ldr	r5, [pc, #52]	; (80608f8 <__libc_init_array+0x3c>)
 80608c2:	1b76      	subs	r6, r6, r5
 80608c4:	10b6      	asrs	r6, r6, #2
 80608c6:	d006      	beq.n	80608d6 <__libc_init_array+0x1a>
 80608c8:	2400      	movs	r4, #0
 80608ca:	3401      	adds	r4, #1
 80608cc:	f855 3b04 	ldr.w	r3, [r5], #4
 80608d0:	4798      	blx	r3
 80608d2:	42a6      	cmp	r6, r4
 80608d4:	d1f9      	bne.n	80608ca <__libc_init_array+0xe>
 80608d6:	4e09      	ldr	r6, [pc, #36]	; (80608fc <__libc_init_array+0x40>)
 80608d8:	f7f4 fc8c 	bl	80551f4 <_init>
 80608dc:	4d08      	ldr	r5, [pc, #32]	; (8060900 <__libc_init_array+0x44>)
 80608de:	1b76      	subs	r6, r6, r5
 80608e0:	10b6      	asrs	r6, r6, #2
 80608e2:	d006      	beq.n	80608f2 <__libc_init_array+0x36>
 80608e4:	2400      	movs	r4, #0
 80608e6:	3401      	adds	r4, #1
 80608e8:	f855 3b04 	ldr.w	r3, [r5], #4
 80608ec:	4798      	blx	r3
 80608ee:	42a6      	cmp	r6, r4
 80608f0:	d1f9      	bne.n	80608e6 <__libc_init_array+0x2a>
 80608f2:	bd70      	pop	{r4, r5, r6, pc}
 80608f4:	20003bf4 	.word	0x20003bf4
 80608f8:	20003bf4 	.word	0x20003bf4
 80608fc:	20003bf8 	.word	0x20003bf8
 8060900:	20003bf4 	.word	0x20003bf4

08060904 <memcpy>:
 8060904:	4684      	mov	ip, r0
 8060906:	ea41 0300 	orr.w	r3, r1, r0
 806090a:	f013 0303 	ands.w	r3, r3, #3
 806090e:	d149      	bne.n	80609a4 <memcpy+0xa0>
 8060910:	3a40      	subs	r2, #64	; 0x40
 8060912:	d323      	bcc.n	806095c <memcpy+0x58>
 8060914:	680b      	ldr	r3, [r1, #0]
 8060916:	6003      	str	r3, [r0, #0]
 8060918:	684b      	ldr	r3, [r1, #4]
 806091a:	6043      	str	r3, [r0, #4]
 806091c:	688b      	ldr	r3, [r1, #8]
 806091e:	6083      	str	r3, [r0, #8]
 8060920:	68cb      	ldr	r3, [r1, #12]
 8060922:	60c3      	str	r3, [r0, #12]
 8060924:	690b      	ldr	r3, [r1, #16]
 8060926:	6103      	str	r3, [r0, #16]
 8060928:	694b      	ldr	r3, [r1, #20]
 806092a:	6143      	str	r3, [r0, #20]
 806092c:	698b      	ldr	r3, [r1, #24]
 806092e:	6183      	str	r3, [r0, #24]
 8060930:	69cb      	ldr	r3, [r1, #28]
 8060932:	61c3      	str	r3, [r0, #28]
 8060934:	6a0b      	ldr	r3, [r1, #32]
 8060936:	6203      	str	r3, [r0, #32]
 8060938:	6a4b      	ldr	r3, [r1, #36]	; 0x24
 806093a:	6243      	str	r3, [r0, #36]	; 0x24
 806093c:	6a8b      	ldr	r3, [r1, #40]	; 0x28
 806093e:	6283      	str	r3, [r0, #40]	; 0x28
 8060940:	6acb      	ldr	r3, [r1, #44]	; 0x2c
 8060942:	62c3      	str	r3, [r0, #44]	; 0x2c
 8060944:	6b0b      	ldr	r3, [r1, #48]	; 0x30
 8060946:	6303      	str	r3, [r0, #48]	; 0x30
 8060948:	6b4b      	ldr	r3, [r1, #52]	; 0x34
 806094a:	6343      	str	r3, [r0, #52]	; 0x34
 806094c:	6b8b      	ldr	r3, [r1, #56]	; 0x38
 806094e:	6383      	str	r3, [r0, #56]	; 0x38
 8060950:	6bcb      	ldr	r3, [r1, #60]	; 0x3c
 8060952:	63c3      	str	r3, [r0, #60]	; 0x3c
 8060954:	3040      	adds	r0, #64	; 0x40
 8060956:	3140      	adds	r1, #64	; 0x40
 8060958:	3a40      	subs	r2, #64	; 0x40
 806095a:	d2db      	bcs.n	8060914 <memcpy+0x10>
 806095c:	3230      	adds	r2, #48	; 0x30
 806095e:	d30b      	bcc.n	8060978 <memcpy+0x74>
 8060960:	680b      	ldr	r3, [r1, #0]
 8060962:	6003      	str	r3, [r0, #0]
 8060964:	684b      	ldr	r3, [r1, #4]
 8060966:	6043      	str	r3, [r0, #4]
 8060968:	688b      	ldr	r3, [r1, #8]
 806096a:	6083      	str	r3, [r0, #8]
 806096c:	68cb      	ldr	r3, [r1, #12]
 806096e:	60c3      	str	r3, [r0, #12]
 8060970:	3010      	adds	r0, #16
 8060972:	3110      	adds	r1, #16
 8060974:	3a10      	subs	r2, #16
 8060976:	d2f3      	bcs.n	8060960 <memcpy+0x5c>
 8060978:	320c      	adds	r2, #12
 806097a:	d305      	bcc.n	8060988 <memcpy+0x84>
 806097c:	f851 3b04 	ldr.w	r3, [r1], #4
 8060980:	f840 3b04 	str.w	r3, [r0], #4
 8060984:	3a04      	subs	r2, #4
 8060986:	d2f9      	bcs.n	806097c <memcpy+0x78>
 8060988:	3204      	adds	r2, #4
 806098a:	d008      	beq.n	806099e <memcpy+0x9a>
 806098c:	07d2      	lsls	r2, r2, #31
 806098e:	bf1c      	itt	ne
 8060990:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8060994:	f800 3b01 	strbne.w	r3, [r0], #1
 8060998:	d301      	bcc.n	806099e <memcpy+0x9a>
 806099a:	880b      	ldrh	r3, [r1, #0]
 806099c:	8003      	strh	r3, [r0, #0]
 806099e:	4660      	mov	r0, ip
 80609a0:	4770      	bx	lr
 80609a2:	bf00      	nop
 80609a4:	2a08      	cmp	r2, #8
 80609a6:	d313      	bcc.n	80609d0 <memcpy+0xcc>
 80609a8:	078b      	lsls	r3, r1, #30
 80609aa:	d0b1      	beq.n	8060910 <memcpy+0xc>
 80609ac:	f010 0303 	ands.w	r3, r0, #3
 80609b0:	d0ae      	beq.n	8060910 <memcpy+0xc>
 80609b2:	f1c3 0304 	rsb	r3, r3, #4
 80609b6:	1ad2      	subs	r2, r2, r3
 80609b8:	07db      	lsls	r3, r3, #31
 80609ba:	bf1c      	itt	ne
 80609bc:	f811 3b01 	ldrbne.w	r3, [r1], #1
 80609c0:	f800 3b01 	strbne.w	r3, [r0], #1
 80609c4:	d3a4      	bcc.n	8060910 <memcpy+0xc>
 80609c6:	f831 3b02 	ldrh.w	r3, [r1], #2
 80609ca:	f820 3b02 	strh.w	r3, [r0], #2
 80609ce:	e79f      	b.n	8060910 <memcpy+0xc>
 80609d0:	3a04      	subs	r2, #4
 80609d2:	d3d9      	bcc.n	8060988 <memcpy+0x84>
 80609d4:	3a01      	subs	r2, #1
 80609d6:	f811 3b01 	ldrb.w	r3, [r1], #1
 80609da:	f800 3b01 	strb.w	r3, [r0], #1
 80609de:	d2f9      	bcs.n	80609d4 <memcpy+0xd0>
 80609e0:	780b      	ldrb	r3, [r1, #0]
 80609e2:	7003      	strb	r3, [r0, #0]
 80609e4:	784b      	ldrb	r3, [r1, #1]
 80609e6:	7043      	strb	r3, [r0, #1]
 80609e8:	788b      	ldrb	r3, [r1, #2]
 80609ea:	7083      	strb	r3, [r0, #2]
 80609ec:	4660      	mov	r0, ip
 80609ee:	4770      	bx	lr

080609f0 <memset>:
 80609f0:	b570      	push	{r4, r5, r6, lr}
 80609f2:	0786      	lsls	r6, r0, #30
 80609f4:	d048      	beq.n	8060a88 <memset+0x98>
 80609f6:	1e54      	subs	r4, r2, #1
 80609f8:	2a00      	cmp	r2, #0
 80609fa:	d03f      	beq.n	8060a7c <memset+0x8c>
 80609fc:	b2ca      	uxtb	r2, r1
 80609fe:	4603      	mov	r3, r0
 8060a00:	e001      	b.n	8060a06 <memset+0x16>
 8060a02:	3c01      	subs	r4, #1
 8060a04:	d33a      	bcc.n	8060a7c <memset+0x8c>
 8060a06:	f803 2b01 	strb.w	r2, [r3], #1
 8060a0a:	079d      	lsls	r5, r3, #30
 8060a0c:	d1f9      	bne.n	8060a02 <memset+0x12>
 8060a0e:	2c03      	cmp	r4, #3
 8060a10:	d92d      	bls.n	8060a6e <memset+0x7e>
 8060a12:	b2cd      	uxtb	r5, r1
 8060a14:	2c0f      	cmp	r4, #15
 8060a16:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8060a1a:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8060a1e:	d936      	bls.n	8060a8e <memset+0x9e>
 8060a20:	f1a4 0c10 	sub.w	ip, r4, #16
 8060a24:	f103 0e20 	add.w	lr, r3, #32
 8060a28:	f103 0210 	add.w	r2, r3, #16
 8060a2c:	f02c 060f 	bic.w	r6, ip, #15
 8060a30:	ea4f 1c1c 	mov.w	ip, ip, lsr #4
 8060a34:	44b6      	add	lr, r6
 8060a36:	e942 5504 	strd	r5, r5, [r2, #-16]
 8060a3a:	e942 5502 	strd	r5, r5, [r2, #-8]
 8060a3e:	3210      	adds	r2, #16
 8060a40:	4572      	cmp	r2, lr
 8060a42:	d1f8      	bne.n	8060a36 <memset+0x46>
 8060a44:	f10c 0201 	add.w	r2, ip, #1
 8060a48:	f014 0f0c 	tst.w	r4, #12
 8060a4c:	f004 0c0f 	and.w	ip, r4, #15
 8060a50:	eb03 1202 	add.w	r2, r3, r2, lsl #4
 8060a54:	d013      	beq.n	8060a7e <memset+0x8e>
 8060a56:	f1ac 0304 	sub.w	r3, ip, #4
 8060a5a:	f023 0303 	bic.w	r3, r3, #3
 8060a5e:	3304      	adds	r3, #4
 8060a60:	4413      	add	r3, r2
 8060a62:	f842 5b04 	str.w	r5, [r2], #4
 8060a66:	4293      	cmp	r3, r2
 8060a68:	d1fb      	bne.n	8060a62 <memset+0x72>
 8060a6a:	f00c 0403 	and.w	r4, ip, #3
 8060a6e:	b12c      	cbz	r4, 8060a7c <memset+0x8c>
 8060a70:	b2ca      	uxtb	r2, r1
 8060a72:	441c      	add	r4, r3
 8060a74:	f803 2b01 	strb.w	r2, [r3], #1
 8060a78:	429c      	cmp	r4, r3
 8060a7a:	d1fb      	bne.n	8060a74 <memset+0x84>
 8060a7c:	bd70      	pop	{r4, r5, r6, pc}
 8060a7e:	4664      	mov	r4, ip
 8060a80:	4613      	mov	r3, r2
 8060a82:	2c00      	cmp	r4, #0
 8060a84:	d1f4      	bne.n	8060a70 <memset+0x80>
 8060a86:	e7f9      	b.n	8060a7c <memset+0x8c>
 8060a88:	4603      	mov	r3, r0
 8060a8a:	4614      	mov	r4, r2
 8060a8c:	e7bf      	b.n	8060a0e <memset+0x1e>
 8060a8e:	461a      	mov	r2, r3
 8060a90:	46a4      	mov	ip, r4
 8060a92:	e7e0      	b.n	8060a56 <memset+0x66>

08060a94 <__register_exitproc>:
 8060a94:	b5f0      	push	{r4, r5, r6, r7, lr}
 8060a96:	4c26      	ldr	r4, [pc, #152]	; (8060b30 <__register_exitproc+0x9c>)
 8060a98:	b083      	sub	sp, #12
 8060a9a:	4606      	mov	r6, r0
 8060a9c:	460f      	mov	r7, r1
 8060a9e:	6825      	ldr	r5, [r4, #0]
 8060aa0:	b305      	cbz	r5, 8060ae4 <__register_exitproc+0x50>
 8060aa2:	686c      	ldr	r4, [r5, #4]
 8060aa4:	2c1f      	cmp	r4, #31
 8060aa6:	dc3f      	bgt.n	8060b28 <__register_exitproc+0x94>
 8060aa8:	b1a6      	cbz	r6, 8060ad4 <__register_exitproc+0x40>
 8060aaa:	f8d5 0088 	ldr.w	r0, [r5, #136]	; 0x88
 8060aae:	b348      	cbz	r0, 8060b04 <__register_exitproc+0x70>
 8060ab0:	f8d0 1100 	ldr.w	r1, [r0, #256]	; 0x100
 8060ab4:	f04f 0c01 	mov.w	ip, #1
 8060ab8:	f840 2024 	str.w	r2, [r0, r4, lsl #2]
 8060abc:	2e02      	cmp	r6, #2
 8060abe:	eb00 0284 	add.w	r2, r0, r4, lsl #2
 8060ac2:	fa0c fc04 	lsl.w	ip, ip, r4
 8060ac6:	ea4c 0101 	orr.w	r1, ip, r1
 8060aca:	f8c0 1100 	str.w	r1, [r0, #256]	; 0x100
 8060ace:	f8c2 3080 	str.w	r3, [r2, #128]	; 0x80
 8060ad2:	d010      	beq.n	8060af6 <__register_exitproc+0x62>
 8060ad4:	1c63      	adds	r3, r4, #1
 8060ad6:	2000      	movs	r0, #0
 8060ad8:	3402      	adds	r4, #2
 8060ada:	606b      	str	r3, [r5, #4]
 8060adc:	f845 7024 	str.w	r7, [r5, r4, lsl #2]
 8060ae0:	b003      	add	sp, #12
 8060ae2:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8060ae4:	4d13      	ldr	r5, [pc, #76]	; (8060b34 <__register_exitproc+0xa0>)
 8060ae6:	4914      	ldr	r1, [pc, #80]	; (8060b38 <__register_exitproc+0xa4>)
 8060ae8:	6025      	str	r5, [r4, #0]
 8060aea:	2900      	cmp	r1, #0
 8060aec:	d0d9      	beq.n	8060aa2 <__register_exitproc+0xe>
 8060aee:	6809      	ldr	r1, [r1, #0]
 8060af0:	f8c5 1088 	str.w	r1, [r5, #136]	; 0x88
 8060af4:	e7d5      	b.n	8060aa2 <__register_exitproc+0xe>
 8060af6:	f8d0 3104 	ldr.w	r3, [r0, #260]	; 0x104
 8060afa:	ea43 030c 	orr.w	r3, r3, ip
 8060afe:	f8c0 3104 	str.w	r3, [r0, #260]	; 0x104
 8060b02:	e7e7      	b.n	8060ad4 <__register_exitproc+0x40>
 8060b04:	490d      	ldr	r1, [pc, #52]	; (8060b3c <__register_exitproc+0xa8>)
 8060b06:	e9cd 2300 	strd	r2, r3, [sp]
 8060b0a:	b169      	cbz	r1, 8060b28 <__register_exitproc+0x94>
 8060b0c:	f44f 7084 	mov.w	r0, #264	; 0x108
 8060b10:	f3af 8000 	nop.w
 8060b14:	b140      	cbz	r0, 8060b28 <__register_exitproc+0x94>
 8060b16:	2100      	movs	r1, #0
 8060b18:	686c      	ldr	r4, [r5, #4]
 8060b1a:	e9c0 1140 	strd	r1, r1, [r0, #256]	; 0x100
 8060b1e:	e9dd 2300 	ldrd	r2, r3, [sp]
 8060b22:	f8c5 0088 	str.w	r0, [r5, #136]	; 0x88
 8060b26:	e7c5      	b.n	8060ab4 <__register_exitproc+0x20>
 8060b28:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8060b2c:	e7d8      	b.n	8060ae0 <__register_exitproc+0x4c>
 8060b2e:	bf00      	nop
 8060b30:	20003eb4 	.word	0x20003eb4
 8060b34:	20003e28 	.word	0x20003e28
	...

08060b40 <__call_exitprocs>:
 8060b40:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8060b44:	f8df a0b0 	ldr.w	sl, [pc, #176]	; 8060bf8 <__call_exitprocs+0xb8>
 8060b48:	b083      	sub	sp, #12
 8060b4a:	f8da 7000 	ldr.w	r7, [sl]
 8060b4e:	9001      	str	r0, [sp, #4]
 8060b50:	b1c7      	cbz	r7, 8060b84 <__call_exitprocs+0x44>
 8060b52:	4689      	mov	r9, r1
 8060b54:	687d      	ldr	r5, [r7, #4]
 8060b56:	f8d7 8088 	ldr.w	r8, [r7, #136]	; 0x88
 8060b5a:	1e6c      	subs	r4, r5, #1
 8060b5c:	d412      	bmi.n	8060b84 <__call_exitprocs+0x44>
 8060b5e:	eb07 0685 	add.w	r6, r7, r5, lsl #2
 8060b62:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8060b66:	3604      	adds	r6, #4
 8060b68:	f1b9 0f00 	cmp.w	r9, #0
 8060b6c:	d00d      	beq.n	8060b8a <__call_exitprocs+0x4a>
 8060b6e:	f1b8 0f00 	cmp.w	r8, #0
 8060b72:	d002      	beq.n	8060b7a <__call_exitprocs+0x3a>
 8060b74:	6feb      	ldr	r3, [r5, #124]	; 0x7c
 8060b76:	454b      	cmp	r3, r9
 8060b78:	d007      	beq.n	8060b8a <__call_exitprocs+0x4a>
 8060b7a:	3c01      	subs	r4, #1
 8060b7c:	3d04      	subs	r5, #4
 8060b7e:	3e04      	subs	r6, #4
 8060b80:	1c63      	adds	r3, r4, #1
 8060b82:	d1f1      	bne.n	8060b68 <__call_exitprocs+0x28>
 8060b84:	b003      	add	sp, #12
 8060b86:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8060b8a:	687b      	ldr	r3, [r7, #4]
 8060b8c:	6832      	ldr	r2, [r6, #0]
 8060b8e:	3b01      	subs	r3, #1
 8060b90:	42a3      	cmp	r3, r4
 8060b92:	d02b      	beq.n	8060bec <__call_exitprocs+0xac>
 8060b94:	2300      	movs	r3, #0
 8060b96:	6033      	str	r3, [r6, #0]
 8060b98:	2a00      	cmp	r2, #0
 8060b9a:	d0ee      	beq.n	8060b7a <__call_exitprocs+0x3a>
 8060b9c:	f8d7 b004 	ldr.w	fp, [r7, #4]
 8060ba0:	f1b8 0f00 	cmp.w	r8, #0
 8060ba4:	d019      	beq.n	8060bda <__call_exitprocs+0x9a>
 8060ba6:	2301      	movs	r3, #1
 8060ba8:	f8d8 0100 	ldr.w	r0, [r8, #256]	; 0x100
 8060bac:	fa03 f104 	lsl.w	r1, r3, r4
 8060bb0:	4201      	tst	r1, r0
 8060bb2:	d012      	beq.n	8060bda <__call_exitprocs+0x9a>
 8060bb4:	f8d8 0104 	ldr.w	r0, [r8, #260]	; 0x104
 8060bb8:	4201      	tst	r1, r0
 8060bba:	d119      	bne.n	8060bf0 <__call_exitprocs+0xb0>
 8060bbc:	f855 1c04 	ldr.w	r1, [r5, #-4]
 8060bc0:	9801      	ldr	r0, [sp, #4]
 8060bc2:	4790      	blx	r2
 8060bc4:	687a      	ldr	r2, [r7, #4]
 8060bc6:	455a      	cmp	r2, fp
 8060bc8:	d10b      	bne.n	8060be2 <__call_exitprocs+0xa2>
 8060bca:	f8da 3000 	ldr.w	r3, [sl]
 8060bce:	42bb      	cmp	r3, r7
 8060bd0:	d0d3      	beq.n	8060b7a <__call_exitprocs+0x3a>
 8060bd2:	461f      	mov	r7, r3
 8060bd4:	2f00      	cmp	r7, #0
 8060bd6:	d1bd      	bne.n	8060b54 <__call_exitprocs+0x14>
 8060bd8:	e7d4      	b.n	8060b84 <__call_exitprocs+0x44>
 8060bda:	4790      	blx	r2
 8060bdc:	687a      	ldr	r2, [r7, #4]
 8060bde:	455a      	cmp	r2, fp
 8060be0:	d0f3      	beq.n	8060bca <__call_exitprocs+0x8a>
 8060be2:	f8da 7000 	ldr.w	r7, [sl]
 8060be6:	2f00      	cmp	r7, #0
 8060be8:	d1b4      	bne.n	8060b54 <__call_exitprocs+0x14>
 8060bea:	e7cb      	b.n	8060b84 <__call_exitprocs+0x44>
 8060bec:	607c      	str	r4, [r7, #4]
 8060bee:	e7d3      	b.n	8060b98 <__call_exitprocs+0x58>
 8060bf0:	f855 0c04 	ldr.w	r0, [r5, #-4]
 8060bf4:	4790      	blx	r2
 8060bf6:	e7e5      	b.n	8060bc4 <__call_exitprocs+0x84>
 8060bf8:	20003eb4 	.word	0x20003eb4

08060bfc <_exit>:
 8060bfc:	e7fe      	b.n	8060bfc <_exit>
 8060bfe:	bf00      	nop

08060c00 <AHBPrescTable>:
	...
 8060c08:	0201 0403 0706 0908                         ........

08060c10 <MSIRangeTable>:
 8060c10:	86a0 0001 0d40 0003 1a80 0006 3500 000c     ....@........5..
 8060c20:	4240 000f 8480 001e 0900 003d 1200 007a     @B........=...z.
 8060c30:	2400 00f4 3600 016e 4800 01e8 6c00 02dc     .$...6n..H...l..
	...
 8060c50:	6574 7473 6854 6572 6461 0000 06a1 0806     testThread......
 8060c60:	0c50 0806 0080 0000 0000 0000 0001 0000     P...............
 8060c70:	3c20 2000 0000 4202 2000 0000 0002 0000      <. ...B. ......
	...
 8060c98:	4449 454c 0000 0000 6d54 2072 7653 0063     IDLE....Tmr Svc.
 8060ca8:	6d54 5172 0000 0000                         TmrQ....

08060cb0 <_global_impure_ptr>:
 8060cb0:	3b94 2000 0000 0000 0000 0000 0000           .;. ...........

08060cbf <__unprivileged_flash_end__>:
	...
