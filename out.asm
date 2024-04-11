
build/bin/ns_app.elf:	file format elf32-littlearm

Disassembly of section .text:

08055000 <__Vectors>:
 8055000: a0 33 00 20 39 80 05 08         .3. 9...
 8055008: 09 81 05 08 0d 81 05 08         ........
 8055010: 11 81 05 08 15 81 05 08         ........
 8055018: 19 81 05 08 1d 81 05 08         ........
 8055020: 00 00 00 00 00 00 00 00         ........
 8055028: 00 00 00 00 11 77 05 08         .....w..
 8055030: 21 81 05 08 00 00 00 00         !.......
 8055038: c1 76 05 08 ad 73 05 08         .v...s..
 8055040: 25 81 05 08 29 81 05 08         %...)...
 8055048: 2d 81 05 08 31 81 05 08         -...1...
 8055050: 35 81 05 08 39 81 05 08         5...9...
 8055058: 3d 81 05 08 41 81 05 08         =...A...
 8055060: 45 81 05 08 49 81 05 08         E...I...
 8055068: 4d 81 05 08 51 81 05 08         M...Q...
 8055070: 55 81 05 08 59 81 05 08         U...Y...
 8055078: 5d 81 05 08 61 81 05 08         ]...a...
 8055080: 65 81 05 08 69 81 05 08         e...i...
 8055088: 6d 81 05 08 71 81 05 08         m...q...
 8055090: 75 81 05 08 79 81 05 08         u...y...
 8055098: 7d 81 05 08 81 81 05 08         }.......
 80550a0: 85 81 05 08 89 81 05 08         ........
 80550a8: 8d 81 05 08 91 81 05 08         ........
 80550b0: 95 81 05 08 99 81 05 08         ........
 80550b8: 9d 81 05 08 a1 81 05 08         ........
 80550c0: a5 81 05 08 a9 81 05 08         ........
 80550c8: ad 81 05 08 b1 81 05 08         ........
 80550d0: b5 81 05 08 b9 81 05 08         ........
 80550d8: bd 81 05 08 c1 81 05 08         ........
 80550e0: c5 81 05 08 c9 81 05 08         ........
 80550e8: cd 81 05 08 d1 81 05 08         ........
 80550f0: d5 81 05 08 d9 81 05 08         ........
 80550f8: dd 81 05 08 e1 81 05 08         ........
 8055100: e5 81 05 08 e9 81 05 08         ........
 8055108: ed 81 05 08 f1 81 05 08         ........
 8055110: f5 81 05 08 f9 81 05 08         ........
 8055118: fd 81 05 08 01 82 05 08         ........
 8055120: 05 82 05 08 09 82 05 08         ........
 8055128: 0d 82 05 08 11 82 05 08         ........
 8055130: 15 82 05 08 19 82 05 08         ........
 8055138: 1d 82 05 08 21 82 05 08         ....!...
 8055140: 25 82 05 08 29 82 05 08         %...)...
 8055148: 2d 82 05 08 31 82 05 08         -...1...
 8055150: 35 82 05 08 39 82 05 08         5...9...
 8055158: 3d 82 05 08 41 82 05 08         =...A...
 8055160: 45 82 05 08 49 82 05 08         E...I...
 8055168: 4d 82 05 08 51 82 05 08         M...Q...
 8055170: 55 82 05 08 00 00 00 00         U.......
 8055178: 59 82 05 08 00 00 00 00         Y.......
 8055180: 5d 82 05 08 61 82 05 08         ]...a...
 8055188: 65 82 05 08 69 82 05 08         e...i...
 8055190: 6d 82 05 08 71 82 05 08         m...q...
 8055198: 75 82 05 08 79 82 05 08         u...y...
 80551a0: 7d 82 05 08 81 82 05 08         }.......
 80551a8: 85 82 05 08 89 82 05 08         ........
 80551b0: 8d 82 05 08 91 82 05 08         ........
 80551b8: 95 82 05 08 99 82 05 08         ........
 80551c0: 9d 82 05 08 a1 82 05 08         ........
 80551c8: a5 82 05 08 a9 82 05 08         ........
 80551d0: ad 82 05 08 b1 82 05 08         ........
 80551d8: b5 82 05 08 b9 82 05 08         ........
 80551e0: bd 82 05 08 c1 82 05 08         ........
 80551e8: c5 82 05 08 c9 82 05 08         ........
 80551f0: cd 82 05 08                     ....

080551f4 <xTaskCreate>:
;     {
 80551f4: b5d0         	push	{r4, r6, r7, lr}
 80551f6: af02         	add	r7, sp, #0x8
 80551f8: b088         	sub	sp, #0x20
 80551fa: f8d7 c00c    	ldr.w	r12, [r7, #0xc]
 80551fe: f8d7 c008    	ldr.w	r12, [r7, #0x8]
 8055202: 9007         	str	r0, [sp, #0x1c]
 8055204: 9106         	str	r1, [sp, #0x18]
 8055206: f827 2c12    	strh	r2, [r7, #-18]
 805520a: 9304         	str	r3, [sp, #0x10]
;         pxNewTCB = prvCreateTask( pxTaskCode, pcName, usStackDepth, pvParameters, uxPriority, pxCreatedTask );
 805520c: 9807         	ldr	r0, [sp, #0x1c]
 805520e: 9906         	ldr	r1, [sp, #0x18]
 8055210: f837 2c12    	ldrh	r2, [r7, #-18]
 8055214: 9b04         	ldr	r3, [sp, #0x10]
 8055216: f8d7 c008    	ldr.w	r12, [r7, #0x8]
 805521a: 68fc         	ldr	r4, [r7, #0xc]
 805521c: 46ee         	mov	lr, sp
 805521e: f8ce 4004    	str.w	r4, [lr, #0x4]
 8055222: f8ce c000    	str.w	r12, [lr]
 8055226: f000 f811    	bl	0x805524c <prvCreateTask> @ imm = #0x22
 805522a: 9003         	str	r0, [sp, #0xc]
;         if( pxNewTCB != NULL )
 805522c: 9803         	ldr	r0, [sp, #0xc]
 805522e: b130         	cbz	r0, 0x805523e <xTaskCreate+0x4a> @ imm = #0xc
 8055230: e7ff         	b	0x8055232 <xTaskCreate+0x3e> @ imm = #-0x2
;             prvAddNewTaskToReadyList( pxNewTCB );
 8055232: 9803         	ldr	r0, [sp, #0xc]
 8055234: f000 f857    	bl	0x80552e6 <prvAddNewTaskToReadyList> @ imm = #0xae
 8055238: 2001         	movs	r0, #0x1
;             xReturn = pdPASS;
 805523a: 9002         	str	r0, [sp, #0x8]
;         }
 805523c: e003         	b	0x8055246 <xTaskCreate+0x52> @ imm = #0x6
 805523e: f04f 30ff    	mov.w	r0, #0xffffffff
;             xReturn = errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY;
 8055242: 9002         	str	r0, [sp, #0x8]
 8055244: e7ff         	b	0x8055246 <xTaskCreate+0x52> @ imm = #-0x2
;         return xReturn;
 8055246: 9802         	ldr	r0, [sp, #0x8]
 8055248: b008         	add	sp, #0x20
 805524a: bdd0         	pop	{r4, r6, r7, pc}

0805524c <prvCreateTask>:
;     {
 805524c: b5f0         	push	{r4, r5, r6, r7, lr}
 805524e: af03         	add	r7, sp, #0xc
 8055250: f84d bd04    	str	r11, [sp, #-4]!
 8055254: b08a         	sub	sp, #0x28
 8055256: f8d7 c00c    	ldr.w	r12, [r7, #0xc]
 805525a: f8d7 c008    	ldr.w	r12, [r7, #0x8]
 805525e: 9009         	str	r0, [sp, #0x24]
 8055260: 9108         	str	r1, [sp, #0x20]
 8055262: f827 2c1a    	strh	r2, [r7, #-26]
 8055266: 9306         	str	r3, [sp, #0x18]
;             pxStack = pvPortMallocStack( ( ( ( size_t ) usStackDepth ) * sizeof( StackType_t ) ) ); /*lint !e9079 All values returned by pvPortMalloc() have at least the alignment required by the MCU's stack and this allocation is the stack. */
 8055268: f837 0c1a    	ldrh	r0, [r7, #-26]
 805526c: 0080         	lsls	r0, r0, #0x2
 805526e: f001 fd96    	bl	0x8056d9e <pvPortMalloc> @ imm = #0x1b2c
 8055272: 9004         	str	r0, [sp, #0x10]
;             if( pxStack != NULL )
 8055274: 9804         	ldr	r0, [sp, #0x10]
 8055276: b1a8         	cbz	r0, 0x80552a4 <prvCreateTask+0x58> @ imm = #0x2a
 8055278: e7ff         	b	0x805527a <prvCreateTask+0x2e> @ imm = #-0x2
 805527a: 205c         	movs	r0, #0x5c
;                 pxNewTCB = ( TCB_t * ) pvPortMalloc( sizeof( TCB_t ) ); /*lint !e9087 !e9079 All values returned by pvPortMalloc() have at least the alignment required by the MCU's stack, and the first member of TCB_t is always a pointer to the task's stack. */
 805527c: f001 fd8f    	bl	0x8056d9e <pvPortMalloc> @ imm = #0x1b1e
 8055280: 9005         	str	r0, [sp, #0x14]
;                 if( pxNewTCB != NULL )
 8055282: 9805         	ldr	r0, [sp, #0x14]
 8055284: b148         	cbz	r0, 0x805529a <prvCreateTask+0x4e> @ imm = #0x12
 8055286: e7ff         	b	0x8055288 <prvCreateTask+0x3c> @ imm = #-0x2
;                     ( void ) memset( ( void * ) pxNewTCB, 0x00, sizeof( TCB_t ) );
 8055288: 9805         	ldr	r0, [sp, #0x14]
 805528a: 2100         	movs	r1, #0x0
 805528c: 225c         	movs	r2, #0x5c
 805528e: f002 fac5    	bl	0x805781c <memset>      @ imm = #0x258a
;                     pxNewTCB->pxStack = pxStack;
 8055292: 9804         	ldr	r0, [sp, #0x10]
 8055294: 9905         	ldr	r1, [sp, #0x14]
 8055296: 6308         	str	r0, [r1, #0x30]
;                 }
 8055298: e003         	b	0x80552a2 <prvCreateTask+0x56> @ imm = #0x6
;                     vPortFreeStack( pxStack );
 805529a: 9804         	ldr	r0, [sp, #0x10]
 805529c: f001 ff2d    	bl	0x80570fa <vPortFree>   @ imm = #0x1e5a
 80552a0: e7ff         	b	0x80552a2 <prvCreateTask+0x56> @ imm = #-0x2
;             }
 80552a2: e002         	b	0x80552aa <prvCreateTask+0x5e> @ imm = #0x4
 80552a4: 2000         	movs	r0, #0x0
;                 pxNewTCB = NULL;
 80552a6: 9005         	str	r0, [sp, #0x14]
 80552a8: e7ff         	b	0x80552aa <prvCreateTask+0x5e> @ imm = #-0x2
;         if( pxNewTCB != NULL )
 80552aa: 9805         	ldr	r0, [sp, #0x14]
 80552ac: b1b0         	cbz	r0, 0x80552dc <prvCreateTask+0x90> @ imm = #0x2c
 80552ae: e7ff         	b	0x80552b0 <prvCreateTask+0x64> @ imm = #-0x2
;             prvInitialiseNewTask( pxTaskCode, pcName, ( uint32_t ) usStackDepth, pvParameters, uxPriority, pxCreatedTask, pxNewTCB, NULL );
 80552b0: 9809         	ldr	r0, [sp, #0x24]
 80552b2: 9908         	ldr	r1, [sp, #0x20]
 80552b4: f837 2c1a    	ldrh	r2, [r7, #-26]
 80552b8: 9b06         	ldr	r3, [sp, #0x18]
 80552ba: f8d7 c008    	ldr.w	r12, [r7, #0x8]
 80552be: 68fc         	ldr	r4, [r7, #0xc]
 80552c0: 9d05         	ldr	r5, [sp, #0x14]
 80552c2: 46ee         	mov	lr, sp
 80552c4: 2600         	movs	r6, #0x0
 80552c6: f8ce 600c    	str.w	r6, [lr, #0xc]
 80552ca: f8ce 5008    	str.w	r5, [lr, #0x8]
 80552ce: f8ce 4004    	str.w	r4, [lr, #0x4]
 80552d2: f8ce c000    	str.w	r12, [lr]
 80552d6: f000 fe9a    	bl	0x805600e <prvInitialiseNewTask> @ imm = #0xd34
;         }
 80552da: e7ff         	b	0x80552dc <prvCreateTask+0x90> @ imm = #-0x2
;         return pxNewTCB;
 80552dc: 9805         	ldr	r0, [sp, #0x14]
 80552de: b00a         	add	sp, #0x28
 80552e0: f85d bb04    	ldr	r11, [sp], #4
 80552e4: bdf0         	pop	{r4, r5, r6, r7, pc}

080552e6 <prvAddNewTaskToReadyList>:
;     {
 80552e6: b580         	push	{r7, lr}
 80552e8: 466f         	mov	r7, sp
 80552ea: b082         	sub	sp, #0x8
 80552ec: 9001         	str	r0, [sp, #0x4]
;         taskENTER_CRITICAL();
 80552ee: f002 f831    	bl	0x8057354 <vPortEnterCritical> @ imm = #0x2062
;             uxCurrentNumberOfTasks++;
 80552f2: f240 1128    	movw	r1, #0x128
 80552f6: f2c2 0100    	movt	r1, #0x2000
 80552fa: 6808         	ldr	r0, [r1]
 80552fc: 3001         	adds	r0, #0x1
 80552fe: 6008         	str	r0, [r1]
;             if( pxCurrentTCB == NULL )
 8055300: f240 1008    	movw	r0, #0x108
 8055304: f2c2 0000    	movt	r0, #0x2000
 8055308: 6800         	ldr	r0, [r0]
 805530a: b998         	cbnz	r0, 0x8055334 <prvAddNewTaskToReadyList+0x4e> @ imm = #0x26
 805530c: e7ff         	b	0x805530e <prvAddNewTaskToReadyList+0x28> @ imm = #-0x2
;                 pxCurrentTCB = pxNewTCB;
 805530e: 9801         	ldr	r0, [sp, #0x4]
 8055310: f240 1108    	movw	r1, #0x108
 8055314: f2c2 0100    	movt	r1, #0x2000
 8055318: 6008         	str	r0, [r1]
;                 if( uxCurrentNumberOfTasks == ( UBaseType_t ) 1 )
 805531a: f240 1028    	movw	r0, #0x128
 805531e: f2c2 0000    	movt	r0, #0x2000
 8055322: 6800         	ldr	r0, [r0]
 8055324: 2801         	cmp	r0, #0x1
 8055326: d103         	bne	0x8055330 <prvAddNewTaskToReadyList+0x4a> @ imm = #0x6
 8055328: e7ff         	b	0x805532a <prvAddNewTaskToReadyList+0x44> @ imm = #-0x2
;                     prvInitialiseTaskLists();
 805532a: f000 fef7    	bl	0x805611c <prvInitialiseTaskLists> @ imm = #0xdee
;                 }
 805532e: e000         	b	0x8055332 <prvAddNewTaskToReadyList+0x4c> @ imm = #0x0
 8055330: e7ff         	b	0x8055332 <prvAddNewTaskToReadyList+0x4c> @ imm = #-0x2
;             }
 8055332: e01c         	b	0x805536e <prvAddNewTaskToReadyList+0x88> @ imm = #0x38
;                 if( xSchedulerRunning == pdFALSE )
 8055334: f240 102c    	movw	r0, #0x12c
 8055338: f2c2 0000    	movt	r0, #0x2000
 805533c: 6800         	ldr	r0, [r0]
 805533e: b9a0         	cbnz	r0, 0x805536a <prvAddNewTaskToReadyList+0x84> @ imm = #0x28
 8055340: e7ff         	b	0x8055342 <prvAddNewTaskToReadyList+0x5c> @ imm = #-0x2
;                     if( pxCurrentTCB->uxPriority <= pxNewTCB->uxPriority )
 8055342: f240 1008    	movw	r0, #0x108
 8055346: f2c2 0000    	movt	r0, #0x2000
 805534a: 6800         	ldr	r0, [r0]
 805534c: 6ac0         	ldr	r0, [r0, #0x2c]
 805534e: 9901         	ldr	r1, [sp, #0x4]
 8055350: 6ac9         	ldr	r1, [r1, #0x2c]
 8055352: 4288         	cmp	r0, r1
 8055354: d807         	bhi	0x8055366 <prvAddNewTaskToReadyList+0x80> @ imm = #0xe
 8055356: e7ff         	b	0x8055358 <prvAddNewTaskToReadyList+0x72> @ imm = #-0x2
;                         pxCurrentTCB = pxNewTCB;
 8055358: 9801         	ldr	r0, [sp, #0x4]
 805535a: f240 1108    	movw	r1, #0x108
 805535e: f2c2 0100    	movt	r1, #0x2000
 8055362: 6008         	str	r0, [r1]
;                     }
 8055364: e000         	b	0x8055368 <prvAddNewTaskToReadyList+0x82> @ imm = #0x0
 8055366: e7ff         	b	0x8055368 <prvAddNewTaskToReadyList+0x82> @ imm = #-0x2
;                 }
 8055368: e000         	b	0x805536c <prvAddNewTaskToReadyList+0x86> @ imm = #0x0
 805536a: e7ff         	b	0x805536c <prvAddNewTaskToReadyList+0x86> @ imm = #-0x2
 805536c: e7ff         	b	0x805536e <prvAddNewTaskToReadyList+0x88> @ imm = #-0x2
;             uxTaskNumber++;
 805536e: f240 100c    	movw	r0, #0x10c
 8055372: f2c2 0000    	movt	r0, #0x2000
 8055376: 6801         	ldr	r1, [r0]
 8055378: 3101         	adds	r1, #0x1
 805537a: 6001         	str	r1, [r0]
;                 pxNewTCB->uxTCBNumber = uxTaskNumber;
 805537c: 6800         	ldr	r0, [r0]
 805537e: 9901         	ldr	r1, [sp, #0x4]
 8055380: 6448         	str	r0, [r1, #0x44]
;             prvAddTaskToReadyList( pxNewTCB );
 8055382: e7ff         	b	0x8055384 <prvAddNewTaskToReadyList+0x9e> @ imm = #-0x2
 8055384: e7ff         	b	0x8055386 <prvAddNewTaskToReadyList+0xa0> @ imm = #-0x2
 8055386: 9801         	ldr	r0, [sp, #0x4]
 8055388: 6ac0         	ldr	r0, [r0, #0x2c]
 805538a: f240 21a8    	movw	r1, #0x2a8
 805538e: f2c2 0100    	movt	r1, #0x2000
 8055392: 6809         	ldr	r1, [r1]
 8055394: 4288         	cmp	r0, r1
 8055396: d908         	bls	0x80553aa <prvAddNewTaskToReadyList+0xc4> @ imm = #0x10
 8055398: e7ff         	b	0x805539a <prvAddNewTaskToReadyList+0xb4> @ imm = #-0x2
 805539a: 9801         	ldr	r0, [sp, #0x4]
 805539c: 6ac0         	ldr	r0, [r0, #0x2c]
 805539e: f240 21a8    	movw	r1, #0x2a8
 80553a2: f2c2 0100    	movt	r1, #0x2000
 80553a6: 6008         	str	r0, [r1]
 80553a8: e7ff         	b	0x80553aa <prvAddNewTaskToReadyList+0xc4> @ imm = #-0x2
 80553aa: e7ff         	b	0x80553ac <prvAddNewTaskToReadyList+0xc6> @ imm = #-0x2
 80553ac: e7ff         	b	0x80553ae <prvAddNewTaskToReadyList+0xc8> @ imm = #-0x2
 80553ae: 9801         	ldr	r0, [sp, #0x4]
 80553b0: 6ac0         	ldr	r0, [r0, #0x2c]
 80553b2: eb00 0080    	add.w	r0, r0, r0, lsl #2
 80553b6: f240 1168    	movw	r1, #0x168
 80553ba: f2c2 0100    	movt	r1, #0x2000
 80553be: eb01 0080    	add.w	r0, r1, r0, lsl #2
 80553c2: 6840         	ldr	r0, [r0, #0x4]
 80553c4: 9000         	str	r0, [sp]
 80553c6: 9800         	ldr	r0, [sp]
 80553c8: 9a01         	ldr	r2, [sp, #0x4]
 80553ca: 6090         	str	r0, [r2, #0x8]
 80553cc: 9800         	ldr	r0, [sp]
 80553ce: 6880         	ldr	r0, [r0, #0x8]
 80553d0: 9a01         	ldr	r2, [sp, #0x4]
 80553d2: 60d0         	str	r0, [r2, #0xc]
 80553d4: 9801         	ldr	r0, [sp, #0x4]
 80553d6: 3004         	adds	r0, #0x4
 80553d8: 9a00         	ldr	r2, [sp]
 80553da: 6892         	ldr	r2, [r2, #0x8]
 80553dc: 6050         	str	r0, [r2, #0x4]
 80553de: 9801         	ldr	r0, [sp, #0x4]
 80553e0: 3004         	adds	r0, #0x4
 80553e2: 9a00         	ldr	r2, [sp]
 80553e4: 6090         	str	r0, [r2, #0x8]
 80553e6: 9a01         	ldr	r2, [sp, #0x4]
 80553e8: 6ad0         	ldr	r0, [r2, #0x2c]
 80553ea: eb00 0080    	add.w	r0, r0, r0, lsl #2
 80553ee: eb01 0080    	add.w	r0, r1, r0, lsl #2
 80553f2: 6150         	str	r0, [r2, #0x14]
 80553f4: 9801         	ldr	r0, [sp, #0x4]
 80553f6: 6ac0         	ldr	r0, [r0, #0x2c]
 80553f8: eb00 0280    	add.w	r2, r0, r0, lsl #2
 80553fc: f851 0022    	ldr.w	r0, [r1, r2, lsl #2]
 8055400: 3001         	adds	r0, #0x1
 8055402: f841 0022    	str.w	r0, [r1, r2, lsl #2]
 8055406: e7ff         	b	0x8055408 <prvAddNewTaskToReadyList+0x122> @ imm = #-0x2
 8055408: e7ff         	b	0x805540a <prvAddNewTaskToReadyList+0x124> @ imm = #-0x2
;         taskEXIT_CRITICAL();
 805540a: f001 ffb3    	bl	0x8057374 <vPortExitCritical> @ imm = #0x1f66
;         if( xSchedulerRunning != pdFALSE )
 805540e: f240 102c    	movw	r0, #0x12c
 8055412: f2c2 0000    	movt	r0, #0x2000
 8055416: 6800         	ldr	r0, [r0]
 8055418: b190         	cbz	r0, 0x8055440 <prvAddNewTaskToReadyList+0x15a> @ imm = #0x24
 805541a: e7ff         	b	0x805541c <prvAddNewTaskToReadyList+0x136> @ imm = #-0x2
;             taskYIELD_ANY_CORE_IF_USING_PREEMPTION( pxNewTCB );
 805541c: e7ff         	b	0x805541e <prvAddNewTaskToReadyList+0x138> @ imm = #-0x2
 805541e: f240 1008    	movw	r0, #0x108
 8055422: f2c2 0000    	movt	r0, #0x2000
 8055426: 6800         	ldr	r0, [r0]
 8055428: 6ac0         	ldr	r0, [r0, #0x2c]
 805542a: 9901         	ldr	r1, [sp, #0x4]
 805542c: 6ac9         	ldr	r1, [r1, #0x2c]
 805542e: 4288         	cmp	r0, r1
 8055430: d203         	bhs	0x805543a <prvAddNewTaskToReadyList+0x154> @ imm = #0x6
 8055432: e7ff         	b	0x8055434 <prvAddNewTaskToReadyList+0x14e> @ imm = #-0x2
 8055434: f001 ff82    	bl	0x805733c <vPortYield>  @ imm = #0x1f04
 8055438: e000         	b	0x805543c <prvAddNewTaskToReadyList+0x156> @ imm = #0x0
 805543a: e7ff         	b	0x805543c <prvAddNewTaskToReadyList+0x156> @ imm = #-0x2
;             taskYIELD_ANY_CORE_IF_USING_PREEMPTION( pxNewTCB );
 805543c: e7ff         	b	0x805543e <prvAddNewTaskToReadyList+0x158> @ imm = #-0x2
;         }
 805543e: e000         	b	0x8055442 <prvAddNewTaskToReadyList+0x15c> @ imm = #0x0
 8055440: e7ff         	b	0x8055442 <prvAddNewTaskToReadyList+0x15c> @ imm = #-0x2
;     }
 8055442: b002         	add	sp, #0x8
 8055444: bd80         	pop	{r7, pc}

08055446 <prvResetNextTaskUnblockTime>:
;     if( listLIST_IS_EMPTY( pxDelayedTaskList ) != pdFALSE )
 8055446: f240 1038    	movw	r0, #0x138
 805544a: f2c2 0000    	movt	r0, #0x2000
 805544e: 6800         	ldr	r0, [r0]
 8055450: 6800         	ldr	r0, [r0]
 8055452: b940         	cbnz	r0, 0x8055466 <prvResetNextTaskUnblockTime+0x20> @ imm = #0x10
 8055454: e7ff         	b	0x8055456 <prvResetNextTaskUnblockTime+0x10> @ imm = #-0x2
;         xNextTaskUnblockTime = portMAX_DELAY;
 8055456: f240 21b0    	movw	r1, #0x2b0
 805545a: f2c2 0100    	movt	r1, #0x2000
 805545e: f04f 30ff    	mov.w	r0, #0xffffffff
 8055462: 6008         	str	r0, [r1]
;     }
 8055464: e00c         	b	0x8055480 <prvResetNextTaskUnblockTime+0x3a> @ imm = #0x18
;         xNextTaskUnblockTime = listGET_ITEM_VALUE_OF_HEAD_ENTRY( pxDelayedTaskList );
 8055466: f240 1038    	movw	r0, #0x138
 805546a: f2c2 0000    	movt	r0, #0x2000
 805546e: 6800         	ldr	r0, [r0]
 8055470: 68c0         	ldr	r0, [r0, #0xc]
 8055472: 6800         	ldr	r0, [r0]
 8055474: f240 21b0    	movw	r1, #0x2b0
 8055478: f2c2 0100    	movt	r1, #0x2000
 805547c: 6008         	str	r0, [r1]
 805547e: e7ff         	b	0x8055480 <prvResetNextTaskUnblockTime+0x3a> @ imm = #-0x2
; }
 8055480: 4770         	bx	lr

08055482 <prvDeleteTCB>:
;     {
 8055482: b580         	push	{r7, lr}
 8055484: 466f         	mov	r7, sp
 8055486: b082         	sub	sp, #0x8
 8055488: 9001         	str	r0, [sp, #0x4]
;         portCLEAN_UP_TCB( pxTCB );
 805548a: 9801         	ldr	r0, [sp, #0x4]
;             vPortFreeStack( pxTCB->pxStack );
 805548c: 6b00         	ldr	r0, [r0, #0x30]
 805548e: f001 fe34    	bl	0x80570fa <vPortFree>   @ imm = #0x1c68
;             vPortFree( pxTCB );
 8055492: 9801         	ldr	r0, [sp, #0x4]
 8055494: f001 fe31    	bl	0x80570fa <vPortFree>   @ imm = #0x1c62
;     }
 8055498: b002         	add	sp, #0x8
 805549a: bd80         	pop	{r7, pc}

0805549c <vTaskSuspendAll>:
;         ++uxSchedulerSuspended;
 805549c: f240 1130    	movw	r1, #0x130
 80554a0: f2c2 0100    	movt	r1, #0x2000
 80554a4: 6808         	ldr	r0, [r1]
 80554a6: 3001         	adds	r0, #0x1
 80554a8: 6008         	str	r0, [r1]
; }
 80554aa: 4770         	bx	lr

080554ac <prvAddCurrentTaskToDelayedList>:
; {
 80554ac: b580         	push	{r7, lr}
 80554ae: 466f         	mov	r7, sp
 80554b0: b086         	sub	sp, #0x18
 80554b2: 9005         	str	r0, [sp, #0x14]
 80554b4: 9104         	str	r1, [sp, #0x10]
;     const TickType_t xConstTickCount = xTickCount;
 80554b6: f240 1034    	movw	r0, #0x134
 80554ba: f2c2 0000    	movt	r0, #0x2000
 80554be: 6800         	ldr	r0, [r0]
 80554c0: 9002         	str	r0, [sp, #0x8]
;     if( uxListRemove( &( pxCurrentTCB->xStateListItem ) ) == ( UBaseType_t ) 0 )
 80554c2: f240 1008    	movw	r0, #0x108
 80554c6: f2c2 0000    	movt	r0, #0x2000
 80554ca: 6800         	ldr	r0, [r0]
 80554cc: 3004         	adds	r0, #0x4
 80554ce: f000 ff02    	bl	0x80562d6 <uxListRemove> @ imm = #0xe04
 80554d2: b908         	cbnz	r0, 0x80554d8 <prvAddCurrentTaskToDelayedList+0x2c> @ imm = #0x2
 80554d4: e7ff         	b	0x80554d6 <prvAddCurrentTaskToDelayedList+0x2a> @ imm = #-0x2
;     }
 80554d6: e000         	b	0x80554da <prvAddCurrentTaskToDelayedList+0x2e> @ imm = #0x0
 80554d8: e7ff         	b	0x80554da <prvAddCurrentTaskToDelayedList+0x2e> @ imm = #-0x2
;         if( ( xTicksToWait == portMAX_DELAY ) && ( xCanBlockIndefinitely != pdFALSE ) )
 80554da: 9805         	ldr	r0, [sp, #0x14]
 80554dc: 3001         	adds	r0, #0x1
 80554de: bb28         	cbnz	r0, 0x805552c <prvAddCurrentTaskToDelayedList+0x80> @ imm = #0x4a
 80554e0: e7ff         	b	0x80554e2 <prvAddCurrentTaskToDelayedList+0x36> @ imm = #-0x2
 80554e2: 9804         	ldr	r0, [sp, #0x10]
 80554e4: b310         	cbz	r0, 0x805552c <prvAddCurrentTaskToDelayedList+0x80> @ imm = #0x44
 80554e6: e7ff         	b	0x80554e8 <prvAddCurrentTaskToDelayedList+0x3c> @ imm = #-0x2
;             listINSERT_END( &xSuspendedTaskList, &( pxCurrentTCB->xStateListItem ) );
 80554e8: e7ff         	b	0x80554ea <prvAddCurrentTaskToDelayedList+0x3e> @ imm = #-0x2
 80554ea: f240 1154    	movw	r1, #0x154
 80554ee: f2c2 0100    	movt	r1, #0x2000
 80554f2: 6848         	ldr	r0, [r1, #0x4]
 80554f4: 9001         	str	r0, [sp, #0x4]
 80554f6: 9a01         	ldr	r2, [sp, #0x4]
 80554f8: f240 1008    	movw	r0, #0x108
 80554fc: f2c2 0000    	movt	r0, #0x2000
 8055500: 6803         	ldr	r3, [r0]
 8055502: 609a         	str	r2, [r3, #0x8]
 8055504: 9a01         	ldr	r2, [sp, #0x4]
 8055506: 6892         	ldr	r2, [r2, #0x8]
 8055508: 6803         	ldr	r3, [r0]
 805550a: 60da         	str	r2, [r3, #0xc]
 805550c: 6802         	ldr	r2, [r0]
 805550e: 3204         	adds	r2, #0x4
 8055510: 9b01         	ldr	r3, [sp, #0x4]
 8055512: 689b         	ldr	r3, [r3, #0x8]
 8055514: 605a         	str	r2, [r3, #0x4]
 8055516: 6802         	ldr	r2, [r0]
 8055518: 3204         	adds	r2, #0x4
 805551a: 9b01         	ldr	r3, [sp, #0x4]
 805551c: 609a         	str	r2, [r3, #0x8]
 805551e: 6800         	ldr	r0, [r0]
 8055520: 6141         	str	r1, [r0, #0x14]
 8055522: 6808         	ldr	r0, [r1]
 8055524: 3001         	adds	r0, #0x1
 8055526: 6008         	str	r0, [r1]
 8055528: e7ff         	b	0x805552a <prvAddCurrentTaskToDelayedList+0x7e> @ imm = #-0x2
;         }
 805552a: e03d         	b	0x80555a8 <prvAddCurrentTaskToDelayedList+0xfc> @ imm = #0x7a
;             xTimeToWake = xConstTickCount + xTicksToWait;
 805552c: 9802         	ldr	r0, [sp, #0x8]
 805552e: 9905         	ldr	r1, [sp, #0x14]
 8055530: 4408         	add	r0, r1
 8055532: 9003         	str	r0, [sp, #0xc]
;             listSET_LIST_ITEM_VALUE( &( pxCurrentTCB->xStateListItem ), xTimeToWake );
 8055534: 9803         	ldr	r0, [sp, #0xc]
 8055536: f240 1108    	movw	r1, #0x108
 805553a: f2c2 0100    	movt	r1, #0x2000
 805553e: 6809         	ldr	r1, [r1]
 8055540: 6048         	str	r0, [r1, #0x4]
;             if( xTimeToWake < xConstTickCount )
 8055542: 9803         	ldr	r0, [sp, #0xc]
 8055544: 9902         	ldr	r1, [sp, #0x8]
 8055546: 4288         	cmp	r0, r1
 8055548: d20e         	bhs	0x8055568 <prvAddCurrentTaskToDelayedList+0xbc> @ imm = #0x1c
 805554a: e7ff         	b	0x805554c <prvAddCurrentTaskToDelayedList+0xa0> @ imm = #-0x2
;                 vListInsert( pxOverflowDelayedTaskList, &( pxCurrentTCB->xStateListItem ) );
 805554c: f240 103c    	movw	r0, #0x13c
 8055550: f2c2 0000    	movt	r0, #0x2000
 8055554: 6800         	ldr	r0, [r0]
 8055556: f240 1108    	movw	r1, #0x108
 805555a: f2c2 0100    	movt	r1, #0x2000
 805555e: 6809         	ldr	r1, [r1]
 8055560: 3104         	adds	r1, #0x4
 8055562: f000 fe83    	bl	0x805626c <vListInsert> @ imm = #0xd06
;             }
 8055566: e01e         	b	0x80555a6 <prvAddCurrentTaskToDelayedList+0xfa> @ imm = #0x3c
;                 vListInsert( pxDelayedTaskList, &( pxCurrentTCB->xStateListItem ) );
 8055568: f240 1038    	movw	r0, #0x138
 805556c: f2c2 0000    	movt	r0, #0x2000
 8055570: 6800         	ldr	r0, [r0]
 8055572: f240 1108    	movw	r1, #0x108
 8055576: f2c2 0100    	movt	r1, #0x2000
 805557a: 6809         	ldr	r1, [r1]
 805557c: 3104         	adds	r1, #0x4
 805557e: f000 fe75    	bl	0x805626c <vListInsert> @ imm = #0xcea
;                 if( xTimeToWake < xNextTaskUnblockTime )
 8055582: 9803         	ldr	r0, [sp, #0xc]
 8055584: f240 21b0    	movw	r1, #0x2b0
 8055588: f2c2 0100    	movt	r1, #0x2000
 805558c: 6809         	ldr	r1, [r1]
 805558e: 4288         	cmp	r0, r1
 8055590: d207         	bhs	0x80555a2 <prvAddCurrentTaskToDelayedList+0xf6> @ imm = #0xe
 8055592: e7ff         	b	0x8055594 <prvAddCurrentTaskToDelayedList+0xe8> @ imm = #-0x2
;                     xNextTaskUnblockTime = xTimeToWake;
 8055594: 9803         	ldr	r0, [sp, #0xc]
 8055596: f240 21b0    	movw	r1, #0x2b0
 805559a: f2c2 0100    	movt	r1, #0x2000
 805559e: 6008         	str	r0, [r1]
;                 }
 80555a0: e000         	b	0x80555a4 <prvAddCurrentTaskToDelayedList+0xf8> @ imm = #0x0
 80555a2: e7ff         	b	0x80555a4 <prvAddCurrentTaskToDelayedList+0xf8> @ imm = #-0x2
 80555a4: e7ff         	b	0x80555a6 <prvAddCurrentTaskToDelayedList+0xfa> @ imm = #-0x2
 80555a6: e7ff         	b	0x80555a8 <prvAddCurrentTaskToDelayedList+0xfc> @ imm = #-0x2
; }
 80555a8: b006         	add	sp, #0x18
 80555aa: bd80         	pop	{r7, pc}

080555ac <xTaskResumeAll>:
; {
 80555ac: b580         	push	{r7, lr}
 80555ae: 466f         	mov	r7, sp
 80555b0: b088         	sub	sp, #0x20
 80555b2: 2000         	movs	r0, #0x0
;     TCB_t * pxTCB = NULL;
 80555b4: 9000         	str	r0, [sp]
 80555b6: 9007         	str	r0, [sp, #0x1c]
;     BaseType_t xAlreadyYielded = pdFALSE;
 80555b8: 9006         	str	r0, [sp, #0x18]
;         taskENTER_CRITICAL();
 80555ba: f001 fecb    	bl	0x8057354 <vPortEnterCritical> @ imm = #0x1d96
 80555be: 9800         	ldr	r0, [sp]
;             xCoreID = ( BaseType_t ) portGET_CORE_ID();
 80555c0: 9005         	str	r0, [sp, #0x14]
;             configASSERT( uxSchedulerSuspended != 0U );
 80555c2: f240 1030    	movw	r0, #0x130
 80555c6: f2c2 0000    	movt	r0, #0x2000
 80555ca: 6800         	ldr	r0, [r0]
 80555cc: b920         	cbnz	r0, 0x80555d8 <xTaskResumeAll+0x2c> @ imm = #0x8
 80555ce: e7ff         	b	0x80555d0 <xTaskResumeAll+0x24> @ imm = #-0x2
 80555d0: f002 f863    	bl	0x805769a <ulSetInterruptMask> @ imm = #0x20c6
 80555d4: e7ff         	b	0x80555d6 <xTaskResumeAll+0x2a> @ imm = #-0x2
 80555d6: e7fe         	b	0x80555d6 <xTaskResumeAll+0x2a> @ imm = #-0x4
;             --uxSchedulerSuspended;
 80555d8: f240 1030    	movw	r0, #0x130
 80555dc: f2c2 0000    	movt	r0, #0x2000
 80555e0: 6801         	ldr	r1, [r0]
 80555e2: 3901         	subs	r1, #0x1
 80555e4: 6001         	str	r1, [r0]
;             if( uxSchedulerSuspended == ( UBaseType_t ) 0U )
 80555e6: 6800         	ldr	r0, [r0]
 80555e8: 2800         	cmp	r0, #0x0
 80555ea: f040 80fb    	bne.w	0x80557e4 <xTaskResumeAll+0x238> @ imm = #0x1f6
 80555ee: e7ff         	b	0x80555f0 <xTaskResumeAll+0x44> @ imm = #-0x2
;                 if( uxCurrentNumberOfTasks > ( UBaseType_t ) 0U )
 80555f0: f240 1028    	movw	r0, #0x128
 80555f4: f2c2 0000    	movt	r0, #0x2000
 80555f8: 6800         	ldr	r0, [r0]
 80555fa: 2800         	cmp	r0, #0x0
 80555fc: f000 80f1    	beq.w	0x80557e2 <xTaskResumeAll+0x236> @ imm = #0x1e2
 8055600: e7ff         	b	0x8055602 <xTaskResumeAll+0x56> @ imm = #-0x2
;                     while( listLIST_IS_EMPTY( &xPendingReadyList ) == pdFALSE )
 8055602: e7ff         	b	0x8055604 <xTaskResumeAll+0x58> @ imm = #-0x2
 8055604: f240 1040    	movw	r0, #0x140
 8055608: f2c2 0000    	movt	r0, #0x2000
 805560c: 6800         	ldr	r0, [r0]
 805560e: 2800         	cmp	r0, #0x0
 8055610: f000 80a2    	beq.w	0x8055758 <xTaskResumeAll+0x1ac> @ imm = #0x144
 8055614: e7ff         	b	0x8055616 <xTaskResumeAll+0x6a> @ imm = #-0x2
;                         pxTCB = listGET_OWNER_OF_HEAD_ENTRY( ( &xPendingReadyList ) ); /*lint !e9079 void * is used as this macro is used with timers too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
 8055616: f240 1040    	movw	r0, #0x140
 805561a: f2c2 0000    	movt	r0, #0x2000
 805561e: 68c0         	ldr	r0, [r0, #0xc]
 8055620: 68c0         	ldr	r0, [r0, #0xc]
 8055622: 9007         	str	r0, [sp, #0x1c]
;                         listREMOVE_ITEM( &( pxTCB->xEventListItem ) );
 8055624: e7ff         	b	0x8055626 <xTaskResumeAll+0x7a> @ imm = #-0x2
 8055626: 9807         	ldr	r0, [sp, #0x1c]
 8055628: 6a80         	ldr	r0, [r0, #0x28]
 805562a: 9004         	str	r0, [sp, #0x10]
 805562c: 9807         	ldr	r0, [sp, #0x1c]
 805562e: 69c1         	ldr	r1, [r0, #0x1c]
 8055630: 6a00         	ldr	r0, [r0, #0x20]
 8055632: 6088         	str	r0, [r1, #0x8]
 8055634: 9907         	ldr	r1, [sp, #0x1c]
 8055636: 69c8         	ldr	r0, [r1, #0x1c]
 8055638: 6a09         	ldr	r1, [r1, #0x20]
 805563a: 6048         	str	r0, [r1, #0x4]
 805563c: 9804         	ldr	r0, [sp, #0x10]
 805563e: 6840         	ldr	r0, [r0, #0x4]
 8055640: 9907         	ldr	r1, [sp, #0x1c]
 8055642: 3118         	adds	r1, #0x18
 8055644: 4288         	cmp	r0, r1
 8055646: d105         	bne	0x8055654 <xTaskResumeAll+0xa8> @ imm = #0xa
 8055648: e7ff         	b	0x805564a <xTaskResumeAll+0x9e> @ imm = #-0x2
 805564a: 9807         	ldr	r0, [sp, #0x1c]
 805564c: 6a00         	ldr	r0, [r0, #0x20]
 805564e: 9904         	ldr	r1, [sp, #0x10]
 8055650: 6048         	str	r0, [r1, #0x4]
 8055652: e7ff         	b	0x8055654 <xTaskResumeAll+0xa8> @ imm = #-0x2
 8055654: 9907         	ldr	r1, [sp, #0x1c]
 8055656: 2000         	movs	r0, #0x0
 8055658: 6288         	str	r0, [r1, #0x28]
 805565a: 9904         	ldr	r1, [sp, #0x10]
 805565c: 6808         	ldr	r0, [r1]
 805565e: 3801         	subs	r0, #0x1
 8055660: 6008         	str	r0, [r1]
 8055662: e7ff         	b	0x8055664 <xTaskResumeAll+0xb8> @ imm = #-0x2
;                         listREMOVE_ITEM( &( pxTCB->xStateListItem ) );
 8055664: e7ff         	b	0x8055666 <xTaskResumeAll+0xba> @ imm = #-0x2
 8055666: 9807         	ldr	r0, [sp, #0x1c]
 8055668: 6940         	ldr	r0, [r0, #0x14]
 805566a: 9003         	str	r0, [sp, #0xc]
 805566c: 9807         	ldr	r0, [sp, #0x1c]
 805566e: 6881         	ldr	r1, [r0, #0x8]
 8055670: 68c0         	ldr	r0, [r0, #0xc]
 8055672: 6088         	str	r0, [r1, #0x8]
 8055674: 9907         	ldr	r1, [sp, #0x1c]
 8055676: 6888         	ldr	r0, [r1, #0x8]
 8055678: 68c9         	ldr	r1, [r1, #0xc]
 805567a: 6048         	str	r0, [r1, #0x4]
 805567c: 9803         	ldr	r0, [sp, #0xc]
 805567e: 6840         	ldr	r0, [r0, #0x4]
 8055680: 9907         	ldr	r1, [sp, #0x1c]
 8055682: 3104         	adds	r1, #0x4
 8055684: 4288         	cmp	r0, r1
 8055686: d105         	bne	0x8055694 <xTaskResumeAll+0xe8> @ imm = #0xa
 8055688: e7ff         	b	0x805568a <xTaskResumeAll+0xde> @ imm = #-0x2
 805568a: 9807         	ldr	r0, [sp, #0x1c]
 805568c: 68c0         	ldr	r0, [r0, #0xc]
 805568e: 9903         	ldr	r1, [sp, #0xc]
 8055690: 6048         	str	r0, [r1, #0x4]
 8055692: e7ff         	b	0x8055694 <xTaskResumeAll+0xe8> @ imm = #-0x2
 8055694: 9907         	ldr	r1, [sp, #0x1c]
 8055696: 2000         	movs	r0, #0x0
 8055698: 6148         	str	r0, [r1, #0x14]
 805569a: 9903         	ldr	r1, [sp, #0xc]
 805569c: 6808         	ldr	r0, [r1]
 805569e: 3801         	subs	r0, #0x1
 80556a0: 6008         	str	r0, [r1]
 80556a2: e7ff         	b	0x80556a4 <xTaskResumeAll+0xf8> @ imm = #-0x2
;                         prvAddTaskToReadyList( pxTCB );
 80556a4: e7ff         	b	0x80556a6 <xTaskResumeAll+0xfa> @ imm = #-0x2
 80556a6: e7ff         	b	0x80556a8 <xTaskResumeAll+0xfc> @ imm = #-0x2
 80556a8: 9807         	ldr	r0, [sp, #0x1c]
 80556aa: 6ac0         	ldr	r0, [r0, #0x2c]
 80556ac: f240 21a8    	movw	r1, #0x2a8
 80556b0: f2c2 0100    	movt	r1, #0x2000
 80556b4: 6809         	ldr	r1, [r1]
 80556b6: 4288         	cmp	r0, r1
 80556b8: d908         	bls	0x80556cc <xTaskResumeAll+0x120> @ imm = #0x10
 80556ba: e7ff         	b	0x80556bc <xTaskResumeAll+0x110> @ imm = #-0x2
 80556bc: 9807         	ldr	r0, [sp, #0x1c]
 80556be: 6ac0         	ldr	r0, [r0, #0x2c]
 80556c0: f240 21a8    	movw	r1, #0x2a8
 80556c4: f2c2 0100    	movt	r1, #0x2000
 80556c8: 6008         	str	r0, [r1]
 80556ca: e7ff         	b	0x80556cc <xTaskResumeAll+0x120> @ imm = #-0x2
 80556cc: e7ff         	b	0x80556ce <xTaskResumeAll+0x122> @ imm = #-0x2
 80556ce: e7ff         	b	0x80556d0 <xTaskResumeAll+0x124> @ imm = #-0x2
 80556d0: 9807         	ldr	r0, [sp, #0x1c]
 80556d2: 6ac0         	ldr	r0, [r0, #0x2c]
 80556d4: eb00 0080    	add.w	r0, r0, r0, lsl #2
 80556d8: f240 1168    	movw	r1, #0x168
 80556dc: f2c2 0100    	movt	r1, #0x2000
 80556e0: eb01 0080    	add.w	r0, r1, r0, lsl #2
 80556e4: 6840         	ldr	r0, [r0, #0x4]
 80556e6: 9002         	str	r0, [sp, #0x8]
 80556e8: 9802         	ldr	r0, [sp, #0x8]
 80556ea: 9a07         	ldr	r2, [sp, #0x1c]
 80556ec: 6090         	str	r0, [r2, #0x8]
 80556ee: 9802         	ldr	r0, [sp, #0x8]
 80556f0: 6880         	ldr	r0, [r0, #0x8]
 80556f2: 9a07         	ldr	r2, [sp, #0x1c]
 80556f4: 60d0         	str	r0, [r2, #0xc]
 80556f6: 9807         	ldr	r0, [sp, #0x1c]
 80556f8: 3004         	adds	r0, #0x4
 80556fa: 9a02         	ldr	r2, [sp, #0x8]
 80556fc: 6892         	ldr	r2, [r2, #0x8]
 80556fe: 6050         	str	r0, [r2, #0x4]
 8055700: 9807         	ldr	r0, [sp, #0x1c]
 8055702: 3004         	adds	r0, #0x4
 8055704: 9a02         	ldr	r2, [sp, #0x8]
 8055706: 6090         	str	r0, [r2, #0x8]
 8055708: 9a07         	ldr	r2, [sp, #0x1c]
 805570a: 6ad0         	ldr	r0, [r2, #0x2c]
 805570c: eb00 0080    	add.w	r0, r0, r0, lsl #2
 8055710: eb01 0080    	add.w	r0, r1, r0, lsl #2
 8055714: 6150         	str	r0, [r2, #0x14]
 8055716: 9807         	ldr	r0, [sp, #0x1c]
 8055718: 6ac0         	ldr	r0, [r0, #0x2c]
 805571a: eb00 0280    	add.w	r2, r0, r0, lsl #2
 805571e: f851 0022    	ldr.w	r0, [r1, r2, lsl #2]
 8055722: 3001         	adds	r0, #0x1
 8055724: f841 0022    	str.w	r0, [r1, r2, lsl #2]
 8055728: e7ff         	b	0x805572a <xTaskResumeAll+0x17e> @ imm = #-0x2
 805572a: e7ff         	b	0x805572c <xTaskResumeAll+0x180> @ imm = #-0x2
;                             if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
 805572c: 9807         	ldr	r0, [sp, #0x1c]
 805572e: 6ac0         	ldr	r0, [r0, #0x2c]
 8055730: f240 1108    	movw	r1, #0x108
 8055734: f2c2 0100    	movt	r1, #0x2000
 8055738: 6809         	ldr	r1, [r1]
 805573a: 6ac9         	ldr	r1, [r1, #0x2c]
 805573c: 4288         	cmp	r0, r1
 805573e: d909         	bls	0x8055754 <xTaskResumeAll+0x1a8> @ imm = #0x12
 8055740: e7ff         	b	0x8055742 <xTaskResumeAll+0x196> @ imm = #-0x2
;                                 xYieldPendings[ xCoreID ] = pdTRUE;
 8055742: 9a05         	ldr	r2, [sp, #0x14]
 8055744: f240 21ac    	movw	r1, #0x2ac
 8055748: f2c2 0100    	movt	r1, #0x2000
 805574c: 2001         	movs	r0, #0x1
 805574e: f841 0022    	str.w	r0, [r1, r2, lsl #2]
;                             }
 8055752: e000         	b	0x8055756 <xTaskResumeAll+0x1aa> @ imm = #0x0
 8055754: e7ff         	b	0x8055756 <xTaskResumeAll+0x1aa> @ imm = #-0x2
;                     while( listLIST_IS_EMPTY( &xPendingReadyList ) == pdFALSE )
 8055756: e755         	b	0x8055604 <xTaskResumeAll+0x58> @ imm = #-0x156
;                     if( pxTCB != NULL )
 8055758: 9807         	ldr	r0, [sp, #0x1c]
 805575a: b118         	cbz	r0, 0x8055764 <xTaskResumeAll+0x1b8> @ imm = #0x6
 805575c: e7ff         	b	0x805575e <xTaskResumeAll+0x1b2> @ imm = #-0x2
;                         prvResetNextTaskUnblockTime();
 805575e: f7ff fe72    	bl	0x8055446 <prvResetNextTaskUnblockTime> @ imm = #-0x31c
;                     }
 8055762: e7ff         	b	0x8055764 <xTaskResumeAll+0x1b8> @ imm = #-0x2
;                         TickType_t xPendedCounts = xPendedTicks; /* Non-volatile copy. */
 8055764: f240 20b8    	movw	r0, #0x2b8
 8055768: f2c2 0000    	movt	r0, #0x2000
 805576c: 6800         	ldr	r0, [r0]
 805576e: 9001         	str	r0, [sp, #0x4]
;                         if( xPendedCounts > ( TickType_t ) 0U )
 8055770: 9801         	ldr	r0, [sp, #0x4]
 8055772: b1f0         	cbz	r0, 0x80557b2 <xTaskResumeAll+0x206> @ imm = #0x3c
 8055774: e7ff         	b	0x8055776 <xTaskResumeAll+0x1ca> @ imm = #-0x2
;                             do
 8055776: e7ff         	b	0x8055778 <xTaskResumeAll+0x1cc> @ imm = #-0x2
;                                 if( xTaskIncrementTick() != pdFALSE )
 8055778: f000 f94a    	bl	0x8055a10 <xTaskIncrementTick> @ imm = #0x294
 805577c: b148         	cbz	r0, 0x8055792 <xTaskResumeAll+0x1e6> @ imm = #0x12
 805577e: e7ff         	b	0x8055780 <xTaskResumeAll+0x1d4> @ imm = #-0x2
;                                     xYieldPendings[ xCoreID ] = pdTRUE;
 8055780: 9a05         	ldr	r2, [sp, #0x14]
 8055782: f240 21ac    	movw	r1, #0x2ac
 8055786: f2c2 0100    	movt	r1, #0x2000
 805578a: 2001         	movs	r0, #0x1
 805578c: f841 0022    	str.w	r0, [r1, r2, lsl #2]
;                                 }
 8055790: e000         	b	0x8055794 <xTaskResumeAll+0x1e8> @ imm = #0x0
 8055792: e7ff         	b	0x8055794 <xTaskResumeAll+0x1e8> @ imm = #-0x2
;                                 --xPendedCounts;
 8055794: 9801         	ldr	r0, [sp, #0x4]
 8055796: 3801         	subs	r0, #0x1
 8055798: 9001         	str	r0, [sp, #0x4]
;                             } while( xPendedCounts > ( TickType_t ) 0U );
 805579a: e7ff         	b	0x805579c <xTaskResumeAll+0x1f0> @ imm = #-0x2
 805579c: 9801         	ldr	r0, [sp, #0x4]
 805579e: 2800         	cmp	r0, #0x0
 80557a0: d1ea         	bne	0x8055778 <xTaskResumeAll+0x1cc> @ imm = #-0x2c
 80557a2: e7ff         	b	0x80557a4 <xTaskResumeAll+0x1f8> @ imm = #-0x2
;                             xPendedTicks = 0;
 80557a4: f240 21b8    	movw	r1, #0x2b8
 80557a8: f2c2 0100    	movt	r1, #0x2000
 80557ac: 2000         	movs	r0, #0x0
 80557ae: 6008         	str	r0, [r1]
;                         }
 80557b0: e000         	b	0x80557b4 <xTaskResumeAll+0x208> @ imm = #0x0
 80557b2: e7ff         	b	0x80557b4 <xTaskResumeAll+0x208> @ imm = #-0x2
;                     if( xYieldPendings[ xCoreID ] != pdFALSE )
 80557b4: 9905         	ldr	r1, [sp, #0x14]
 80557b6: f240 20ac    	movw	r0, #0x2ac
 80557ba: f2c2 0000    	movt	r0, #0x2000
 80557be: f850 0021    	ldr.w	r0, [r0, r1, lsl #2]
 80557c2: b160         	cbz	r0, 0x80557de <xTaskResumeAll+0x232> @ imm = #0x18
 80557c4: e7ff         	b	0x80557c6 <xTaskResumeAll+0x21a> @ imm = #-0x2
 80557c6: 2001         	movs	r0, #0x1
;                             xAlreadyYielded = pdTRUE;
 80557c8: 9006         	str	r0, [sp, #0x18]
;                             taskYIELD_TASK_CORE_IF_USING_PREEMPTION( pxCurrentTCB );
 80557ca: e7ff         	b	0x80557cc <xTaskResumeAll+0x220> @ imm = #-0x2
 80557cc: f240 1008    	movw	r0, #0x108
 80557d0: f2c2 0000    	movt	r0, #0x2000
 80557d4: 6800         	ldr	r0, [r0]
 80557d6: f001 fdb1    	bl	0x805733c <vPortYield>  @ imm = #0x1b62
 80557da: e7ff         	b	0x80557dc <xTaskResumeAll+0x230> @ imm = #-0x2
;                     }
 80557dc: e000         	b	0x80557e0 <xTaskResumeAll+0x234> @ imm = #0x0
 80557de: e7ff         	b	0x80557e0 <xTaskResumeAll+0x234> @ imm = #-0x2
;                 }
 80557e0: e7ff         	b	0x80557e2 <xTaskResumeAll+0x236> @ imm = #-0x2
;             }
 80557e2: e000         	b	0x80557e6 <xTaskResumeAll+0x23a> @ imm = #0x0
 80557e4: e7ff         	b	0x80557e6 <xTaskResumeAll+0x23a> @ imm = #-0x2
;         taskEXIT_CRITICAL();
 80557e6: f001 fdc5    	bl	0x8057374 <vPortExitCritical> @ imm = #0x1b8a
;     return xAlreadyYielded;
 80557ea: 9806         	ldr	r0, [sp, #0x18]
 80557ec: b008         	add	sp, #0x20
 80557ee: bd80         	pop	{r7, pc}

080557f0 <vTaskDelay>:
;     {
 80557f0: b580         	push	{r7, lr}
 80557f2: 466f         	mov	r7, sp
 80557f4: b082         	sub	sp, #0x8
 80557f6: 9001         	str	r0, [sp, #0x4]
 80557f8: 2000         	movs	r0, #0x0
;         BaseType_t xAlreadyYielded = pdFALSE;
 80557fa: 9000         	str	r0, [sp]
;         if( xTicksToDelay > ( TickType_t ) 0U )
 80557fc: 9801         	ldr	r0, [sp, #0x4]
 80557fe: b1b0         	cbz	r0, 0x805582e <vTaskDelay+0x3e> @ imm = #0x2c
 8055800: e7ff         	b	0x8055802 <vTaskDelay+0x12> @ imm = #-0x2
;             vTaskSuspendAll();
 8055802: f7ff fe4b    	bl	0x805549c <vTaskSuspendAll> @ imm = #-0x36a
;                 configASSERT( uxSchedulerSuspended == 1U );
 8055806: f240 1030    	movw	r0, #0x130
 805580a: f2c2 0000    	movt	r0, #0x2000
 805580e: 6800         	ldr	r0, [r0]
 8055810: 2801         	cmp	r0, #0x1
 8055812: d004         	beq	0x805581e <vTaskDelay+0x2e> @ imm = #0x8
 8055814: e7ff         	b	0x8055816 <vTaskDelay+0x26> @ imm = #-0x2
 8055816: f001 ff40    	bl	0x805769a <ulSetInterruptMask> @ imm = #0x1e80
 805581a: e7ff         	b	0x805581c <vTaskDelay+0x2c> @ imm = #-0x2
 805581c: e7fe         	b	0x805581c <vTaskDelay+0x2c> @ imm = #-0x4
;                 prvAddCurrentTaskToDelayedList( xTicksToDelay, pdFALSE );
 805581e: 9801         	ldr	r0, [sp, #0x4]
 8055820: 2100         	movs	r1, #0x0
 8055822: f7ff fe43    	bl	0x80554ac <prvAddCurrentTaskToDelayedList> @ imm = #-0x37a
;             xAlreadyYielded = xTaskResumeAll();
 8055826: f7ff fec1    	bl	0x80555ac <xTaskResumeAll> @ imm = #-0x27e
 805582a: 9000         	str	r0, [sp]
;         }
 805582c: e000         	b	0x8055830 <vTaskDelay+0x40> @ imm = #0x0
 805582e: e7ff         	b	0x8055830 <vTaskDelay+0x40> @ imm = #-0x2
;         if( xAlreadyYielded == pdFALSE )
 8055830: 9800         	ldr	r0, [sp]
 8055832: b918         	cbnz	r0, 0x805583c <vTaskDelay+0x4c> @ imm = #0x6
 8055834: e7ff         	b	0x8055836 <vTaskDelay+0x46> @ imm = #-0x2
;             taskYIELD_WITHIN_API();
 8055836: f001 fd81    	bl	0x805733c <vPortYield>  @ imm = #0x1b02
;         }
 805583a: e000         	b	0x805583e <vTaskDelay+0x4e> @ imm = #0x0
 805583c: e7ff         	b	0x805583e <vTaskDelay+0x4e> @ imm = #-0x2
;     }
 805583e: b002         	add	sp, #0x8
 8055840: bd80         	pop	{r7, pc}

08055842 <vTaskSwitchContext>:
;     {
 8055842: b580         	push	{r7, lr}
 8055844: 466f         	mov	r7, sp
 8055846: b082         	sub	sp, #0x8
;         if( uxSchedulerSuspended != ( UBaseType_t ) 0U )
 8055848: f240 1030    	movw	r0, #0x130
 805584c: f2c2 0000    	movt	r0, #0x2000
 8055850: 6800         	ldr	r0, [r0]
 8055852: b138         	cbz	r0, 0x8055864 <vTaskSwitchContext+0x22> @ imm = #0xe
 8055854: e7ff         	b	0x8055856 <vTaskSwitchContext+0x14> @ imm = #-0x2
;             xYieldPendings[ 0 ] = pdTRUE;
 8055856: f240 21ac    	movw	r1, #0x2ac
 805585a: f2c2 0100    	movt	r1, #0x2000
 805585e: 2001         	movs	r0, #0x1
 8055860: 6008         	str	r0, [r1]
;         }
 8055862: e04d         	b	0x8055900 <vTaskSwitchContext+0xbe> @ imm = #0x9a
;             xYieldPendings[ 0 ] = pdFALSE;
 8055864: f240 21ac    	movw	r1, #0x2ac
 8055868: f2c2 0100    	movt	r1, #0x2000
 805586c: 2000         	movs	r0, #0x0
 805586e: 6008         	str	r0, [r1]
;             taskSELECT_HIGHEST_PRIORITY_TASK(); /*lint !e9079 void * is used as this macro is used with timers too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
 8055870: e7ff         	b	0x8055872 <vTaskSwitchContext+0x30> @ imm = #-0x2
 8055872: f240 20a8    	movw	r0, #0x2a8
 8055876: f2c2 0000    	movt	r0, #0x2000
 805587a: 6800         	ldr	r0, [r0]
 805587c: 9001         	str	r0, [sp, #0x4]
 805587e: e7ff         	b	0x8055880 <vTaskSwitchContext+0x3e> @ imm = #-0x2
 8055880: 9801         	ldr	r0, [sp, #0x4]
 8055882: eb00 0180    	add.w	r1, r0, r0, lsl #2
 8055886: f240 1068    	movw	r0, #0x168
 805588a: f2c2 0000    	movt	r0, #0x2000
 805588e: f850 0021    	ldr.w	r0, [r0, r1, lsl #2]
 8055892: b958         	cbnz	r0, 0x80558ac <vTaskSwitchContext+0x6a> @ imm = #0x16
 8055894: e7ff         	b	0x8055896 <vTaskSwitchContext+0x54> @ imm = #-0x2
 8055896: 9801         	ldr	r0, [sp, #0x4]
 8055898: b920         	cbnz	r0, 0x80558a4 <vTaskSwitchContext+0x62> @ imm = #0x8
 805589a: e7ff         	b	0x805589c <vTaskSwitchContext+0x5a> @ imm = #-0x2
 805589c: f001 fefd    	bl	0x805769a <ulSetInterruptMask> @ imm = #0x1dfa
 80558a0: e7ff         	b	0x80558a2 <vTaskSwitchContext+0x60> @ imm = #-0x2
 80558a2: e7fe         	b	0x80558a2 <vTaskSwitchContext+0x60> @ imm = #-0x4
 80558a4: 9801         	ldr	r0, [sp, #0x4]
 80558a6: 3801         	subs	r0, #0x1
 80558a8: 9001         	str	r0, [sp, #0x4]
 80558aa: e7e9         	b	0x8055880 <vTaskSwitchContext+0x3e> @ imm = #-0x2e
 80558ac: e7ff         	b	0x80558ae <vTaskSwitchContext+0x6c> @ imm = #-0x2
 80558ae: 9801         	ldr	r0, [sp, #0x4]
 80558b0: eb00 0180    	add.w	r1, r0, r0, lsl #2
 80558b4: f240 1068    	movw	r0, #0x168
 80558b8: f2c2 0000    	movt	r0, #0x2000
 80558bc: eb00 0081    	add.w	r0, r0, r1, lsl #2
 80558c0: 9000         	str	r0, [sp]
 80558c2: 9900         	ldr	r1, [sp]
 80558c4: 6848         	ldr	r0, [r1, #0x4]
 80558c6: 6840         	ldr	r0, [r0, #0x4]
 80558c8: 6048         	str	r0, [r1, #0x4]
 80558ca: 9900         	ldr	r1, [sp]
 80558cc: 6848         	ldr	r0, [r1, #0x4]
 80558ce: 3108         	adds	r1, #0x8
 80558d0: 4288         	cmp	r0, r1
 80558d2: d104         	bne	0x80558de <vTaskSwitchContext+0x9c> @ imm = #0x8
 80558d4: e7ff         	b	0x80558d6 <vTaskSwitchContext+0x94> @ imm = #-0x2
 80558d6: 9900         	ldr	r1, [sp]
 80558d8: 68c8         	ldr	r0, [r1, #0xc]
 80558da: 6048         	str	r0, [r1, #0x4]
 80558dc: e7ff         	b	0x80558de <vTaskSwitchContext+0x9c> @ imm = #-0x2
 80558de: 9800         	ldr	r0, [sp]
 80558e0: 6840         	ldr	r0, [r0, #0x4]
 80558e2: 68c0         	ldr	r0, [r0, #0xc]
 80558e4: f240 1108    	movw	r1, #0x108
 80558e8: f2c2 0100    	movt	r1, #0x2000
 80558ec: 6008         	str	r0, [r1]
 80558ee: e7ff         	b	0x80558f0 <vTaskSwitchContext+0xae> @ imm = #-0x2
 80558f0: 9801         	ldr	r0, [sp, #0x4]
 80558f2: f240 21a8    	movw	r1, #0x2a8
 80558f6: f2c2 0100    	movt	r1, #0x2000
 80558fa: 6008         	str	r0, [r1]
 80558fc: e7ff         	b	0x80558fe <vTaskSwitchContext+0xbc> @ imm = #-0x2
 80558fe: e7ff         	b	0x8055900 <vTaskSwitchContext+0xbe> @ imm = #-0x2
;     }
 8055900: b002         	add	sp, #0x8
 8055902: bd80         	pop	{r7, pc}

08055904 <vTaskStartScheduler>:
; {
 8055904: b580         	push	{r7, lr}
 8055906: 466f         	mov	r7, sp
 8055908: b082         	sub	sp, #0x8
;     xReturn = prvCreateIdleTasks();
 805590a: f000 f836    	bl	0x805597a <prvCreateIdleTasks> @ imm = #0x6c
 805590e: 9001         	str	r0, [sp, #0x4]
;         if( xReturn == pdPASS )
 8055910: 9801         	ldr	r0, [sp, #0x4]
 8055912: 2801         	cmp	r0, #0x1
 8055914: d104         	bne	0x8055920 <vTaskStartScheduler+0x1c> @ imm = #0x8
 8055916: e7ff         	b	0x8055918 <vTaskStartScheduler+0x14> @ imm = #-0x2
;             xReturn = xTimerCreateTimerTask();
 8055918: f000 fd01    	bl	0x805631e <xTimerCreateTimerTask> @ imm = #0xa02
 805591c: 9001         	str	r0, [sp, #0x4]
;         }
 805591e: e000         	b	0x8055922 <vTaskStartScheduler+0x1e> @ imm = #0x0
 8055920: e7ff         	b	0x8055922 <vTaskStartScheduler+0x1e> @ imm = #-0x2
;     if( xReturn == pdPASS )
 8055922: 9801         	ldr	r0, [sp, #0x4]
 8055924: 2801         	cmp	r0, #0x1
 8055926: d118         	bne	0x805595a <vTaskStartScheduler+0x56> @ imm = #0x30
 8055928: e7ff         	b	0x805592a <vTaskStartScheduler+0x26> @ imm = #-0x2
;         portDISABLE_INTERRUPTS();
 805592a: f001 feb6    	bl	0x805769a <ulSetInterruptMask> @ imm = #0x1d6c
;         xNextTaskUnblockTime = portMAX_DELAY;
 805592e: f240 21b0    	movw	r1, #0x2b0
 8055932: f2c2 0100    	movt	r1, #0x2000
 8055936: f04f 30ff    	mov.w	r0, #0xffffffff
 805593a: 6008         	str	r0, [r1]
;         xSchedulerRunning = pdTRUE;
 805593c: f240 112c    	movw	r1, #0x12c
 8055940: f2c2 0100    	movt	r1, #0x2000
 8055944: 2001         	movs	r0, #0x1
 8055946: 6008         	str	r0, [r1]
;         xTickCount = ( TickType_t ) configINITIAL_TICK_COUNT;
 8055948: f240 1134    	movw	r1, #0x134
 805594c: f2c2 0100    	movt	r1, #0x2000
 8055950: 2000         	movs	r0, #0x0
 8055952: 6008         	str	r0, [r1]
;         xPortStartScheduler();
 8055954: f001 fdfb    	bl	0x805754e <xPortStartScheduler> @ imm = #0x1bf6
;     }
 8055958: e008         	b	0x805596c <vTaskStartScheduler+0x68> @ imm = #0x10
;         configASSERT( xReturn != errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY );
 805595a: 9801         	ldr	r0, [sp, #0x4]
 805595c: 3001         	adds	r0, #0x1
 805595e: b920         	cbnz	r0, 0x805596a <vTaskStartScheduler+0x66> @ imm = #0x8
 8055960: e7ff         	b	0x8055962 <vTaskStartScheduler+0x5e> @ imm = #-0x2
 8055962: f001 fe9a    	bl	0x805769a <ulSetInterruptMask> @ imm = #0x1d34
 8055966: e7ff         	b	0x8055968 <vTaskStartScheduler+0x64> @ imm = #-0x2
 8055968: e7fe         	b	0x8055968 <vTaskStartScheduler+0x64> @ imm = #-0x4
 805596a: e7ff         	b	0x805596c <vTaskStartScheduler+0x68> @ imm = #-0x2
;     ( void ) uxTopUsedPriority;
 805596c: f248 3094    	movw	r0, #0x8394
 8055970: f6c0 0005    	movt	r0, #0x805
 8055974: 6800         	ldr	r0, [r0]
; }
 8055976: b002         	add	sp, #0x8
 8055978: bd80         	pop	{r7, pc}

0805597a <prvCreateIdleTasks>:
; {
 805597a: b580         	push	{r7, lr}
 805597c: 466f         	mov	r7, sp
 805597e: b08a         	sub	sp, #0x28
 8055980: 2001         	movs	r0, #0x1
;     BaseType_t xReturn = pdPASS;
 8055982: 9009         	str	r0, [sp, #0x24]
 8055984: 2000         	movs	r0, #0x0
;     TaskFunction_t pxIdleTaskFunction = NULL;
 8055986: 9003         	str	r0, [sp, #0xc]
;     for( xIdleTaskNameIndex = ( BaseType_t ) 0; xIdleTaskNameIndex < ( BaseType_t ) configMAX_TASK_NAME_LEN; xIdleTaskNameIndex++ )
 8055988: 9002         	str	r0, [sp, #0x8]
 805598a: e7ff         	b	0x805598c <prvCreateIdleTasks+0x12> @ imm = #-0x2
 805598c: 9802         	ldr	r0, [sp, #0x8]
 805598e: 280f         	cmp	r0, #0xf
 8055990: dc13         	bgt	0x80559ba <prvCreateIdleTasks+0x40> @ imm = #0x26
 8055992: e7ff         	b	0x8055994 <prvCreateIdleTasks+0x1a> @ imm = #-0x2
;         cIdleName[ xIdleTaskNameIndex ] = configIDLE_TASK_NAME[ xIdleTaskNameIndex ];
 8055994: 9a02         	ldr	r2, [sp, #0x8]
 8055996: f248 30a8    	movw	r0, #0x83a8
 805599a: f6c0 0005    	movt	r0, #0x805
 805599e: 5c81         	ldrb	r1, [r0, r2]
 80559a0: a804         	add	r0, sp, #0x10
 80559a2: 5481         	strb	r1, [r0, r2]
;         if( cIdleName[ xIdleTaskNameIndex ] == ( char ) 0x00 )
 80559a4: 9902         	ldr	r1, [sp, #0x8]
 80559a6: 5c40         	ldrb	r0, [r0, r1]
 80559a8: b908         	cbnz	r0, 0x80559ae <prvCreateIdleTasks+0x34> @ imm = #0x2
 80559aa: e7ff         	b	0x80559ac <prvCreateIdleTasks+0x32> @ imm = #-0x2
;             break;
 80559ac: e005         	b	0x80559ba <prvCreateIdleTasks+0x40> @ imm = #0xa
 80559ae: e7ff         	b	0x80559b0 <prvCreateIdleTasks+0x36> @ imm = #-0x2
;     }
 80559b0: e7ff         	b	0x80559b2 <prvCreateIdleTasks+0x38> @ imm = #-0x2
;     for( xIdleTaskNameIndex = ( BaseType_t ) 0; xIdleTaskNameIndex < ( BaseType_t ) configMAX_TASK_NAME_LEN; xIdleTaskNameIndex++ )
 80559b2: 9802         	ldr	r0, [sp, #0x8]
 80559b4: 3001         	adds	r0, #0x1
 80559b6: 9002         	str	r0, [sp, #0x8]
 80559b8: e7e8         	b	0x805598c <prvCreateIdleTasks+0x12> @ imm = #-0x30
 80559ba: 2000         	movs	r0, #0x0
;     for( xCoreID = ( BaseType_t ) 0; xCoreID < ( BaseType_t ) configNUMBER_OF_CORES; xCoreID++ )
 80559bc: 9008         	str	r0, [sp, #0x20]
 80559be: e7ff         	b	0x80559c0 <prvCreateIdleTasks+0x46> @ imm = #-0x2
 80559c0: 9808         	ldr	r0, [sp, #0x20]
 80559c2: 2800         	cmp	r0, #0x0
 80559c4: dc21         	bgt	0x8055a0a <prvCreateIdleTasks+0x90> @ imm = #0x42
 80559c6: e7ff         	b	0x80559c8 <prvCreateIdleTasks+0x4e> @ imm = #-0x2
;             pxIdleTaskFunction = prvIdleTask;
 80559c8: f246 10ad    	movw	r0, #0x61ad
 80559cc: f6c0 0005    	movt	r0, #0x805
 80559d0: 9003         	str	r0, [sp, #0xc]
;             xReturn = xTaskCreate( pxIdleTaskFunction,
 80559d2: 9803         	ldr	r0, [sp, #0xc]
;                                    &xIdleTaskHandles[ xCoreID ] ); /*lint !e961 MISRA exception, justified as it is not a redundant explicit cast to all supported compilers. */
 80559d4: 9a08         	ldr	r2, [sp, #0x20]
 80559d6: f240 21b4    	movw	r1, #0x2b4
 80559da: f2c2 0100    	movt	r1, #0x2000
 80559de: eb01 0282    	add.w	r2, r1, r2, lsl #2
;             xReturn = xTaskCreate( pxIdleTaskFunction,
 80559e2: 4669         	mov	r1, sp
 80559e4: 604a         	str	r2, [r1, #0x4]
 80559e6: 2300         	movs	r3, #0x0
 80559e8: 600b         	str	r3, [r1]
 80559ea: a904         	add	r1, sp, #0x10
 80559ec: f44f 6280    	mov.w	r2, #0x400
 80559f0: f7ff fc00    	bl	0x80551f4 <xTaskCreate> @ imm = #-0x800
 80559f4: 9009         	str	r0, [sp, #0x24]
;         if( xReturn == pdFAIL )
 80559f6: 9809         	ldr	r0, [sp, #0x24]
 80559f8: b908         	cbnz	r0, 0x80559fe <prvCreateIdleTasks+0x84> @ imm = #0x2
 80559fa: e7ff         	b	0x80559fc <prvCreateIdleTasks+0x82> @ imm = #-0x2
;             break;
 80559fc: e005         	b	0x8055a0a <prvCreateIdleTasks+0x90> @ imm = #0xa
 80559fe: e7ff         	b	0x8055a00 <prvCreateIdleTasks+0x86> @ imm = #-0x2
;     }
 8055a00: e7ff         	b	0x8055a02 <prvCreateIdleTasks+0x88> @ imm = #-0x2
;     for( xCoreID = ( BaseType_t ) 0; xCoreID < ( BaseType_t ) configNUMBER_OF_CORES; xCoreID++ )
 8055a02: 9808         	ldr	r0, [sp, #0x20]
 8055a04: 3001         	adds	r0, #0x1
 8055a06: 9008         	str	r0, [sp, #0x20]
 8055a08: e7da         	b	0x80559c0 <prvCreateIdleTasks+0x46> @ imm = #-0x4c
;     return xReturn;
 8055a0a: 9809         	ldr	r0, [sp, #0x24]
 8055a0c: b00a         	add	sp, #0x28
 8055a0e: bd80         	pop	{r7, pc}

08055a10 <xTaskIncrementTick>:
; {
 8055a10: b580         	push	{r7, lr}
 8055a12: 466f         	mov	r7, sp
 8055a14: b088         	sub	sp, #0x20
 8055a16: 2000         	movs	r0, #0x0
;     BaseType_t xSwitchRequired = pdFALSE;
 8055a18: 9005         	str	r0, [sp, #0x14]
;     if( uxSchedulerSuspended == ( UBaseType_t ) 0U )
 8055a1a: f240 1030    	movw	r0, #0x130
 8055a1e: f2c2 0000    	movt	r0, #0x2000
 8055a22: 6800         	ldr	r0, [r0]
 8055a24: 2800         	cmp	r0, #0x0
 8055a26: f040 8124    	bne.w	0x8055c72 <xTaskIncrementTick+0x262> @ imm = #0x248
 8055a2a: e7ff         	b	0x8055a2c <xTaskIncrementTick+0x1c> @ imm = #-0x2
;         const TickType_t xConstTickCount = xTickCount + ( TickType_t ) 1;
 8055a2c: f240 1134    	movw	r1, #0x134
 8055a30: f2c2 0100    	movt	r1, #0x2000
 8055a34: 6808         	ldr	r0, [r1]
 8055a36: 3001         	adds	r0, #0x1
 8055a38: 9004         	str	r0, [sp, #0x10]
;         xTickCount = xConstTickCount;
 8055a3a: 9804         	ldr	r0, [sp, #0x10]
 8055a3c: 6008         	str	r0, [r1]
;         if( xConstTickCount == ( TickType_t ) 0U ) /*lint !e774 'if' does not always evaluate to false as it is looking for an overflow. */
 8055a3e: 9804         	ldr	r0, [sp, #0x10]
 8055a40: bb30         	cbnz	r0, 0x8055a90 <xTaskIncrementTick+0x80> @ imm = #0x4c
 8055a42: e7ff         	b	0x8055a44 <xTaskIncrementTick+0x34> @ imm = #-0x2
;             taskSWITCH_DELAYED_LISTS();
 8055a44: e7ff         	b	0x8055a46 <xTaskIncrementTick+0x36> @ imm = #-0x2
 8055a46: f240 1038    	movw	r0, #0x138
 8055a4a: f2c2 0000    	movt	r0, #0x2000
 8055a4e: 6800         	ldr	r0, [r0]
 8055a50: 6800         	ldr	r0, [r0]
 8055a52: b120         	cbz	r0, 0x8055a5e <xTaskIncrementTick+0x4e> @ imm = #0x8
 8055a54: e7ff         	b	0x8055a56 <xTaskIncrementTick+0x46> @ imm = #-0x2
 8055a56: f001 fe20    	bl	0x805769a <ulSetInterruptMask> @ imm = #0x1c40
 8055a5a: e7ff         	b	0x8055a5c <xTaskIncrementTick+0x4c> @ imm = #-0x2
 8055a5c: e7fe         	b	0x8055a5c <xTaskIncrementTick+0x4c> @ imm = #-0x4
 8055a5e: f240 1238    	movw	r2, #0x138
 8055a62: f2c2 0200    	movt	r2, #0x2000
 8055a66: 6810         	ldr	r0, [r2]
 8055a68: 9003         	str	r0, [sp, #0xc]
 8055a6a: f240 113c    	movw	r1, #0x13c
 8055a6e: f2c2 0100    	movt	r1, #0x2000
 8055a72: 6808         	ldr	r0, [r1]
 8055a74: 6010         	str	r0, [r2]
 8055a76: 9803         	ldr	r0, [sp, #0xc]
 8055a78: 6008         	str	r0, [r1]
 8055a7a: f240 21bc    	movw	r1, #0x2bc
 8055a7e: f2c2 0100    	movt	r1, #0x2000
 8055a82: 6808         	ldr	r0, [r1]
 8055a84: 3001         	adds	r0, #0x1
 8055a86: 6008         	str	r0, [r1]
 8055a88: f7ff fcdd    	bl	0x8055446 <prvResetNextTaskUnblockTime> @ imm = #-0x646
 8055a8c: e7ff         	b	0x8055a8e <xTaskIncrementTick+0x7e> @ imm = #-0x2
;         }
 8055a8e: e000         	b	0x8055a92 <xTaskIncrementTick+0x82> @ imm = #0x0
 8055a90: e7ff         	b	0x8055a92 <xTaskIncrementTick+0x82> @ imm = #-0x2
;         if( xConstTickCount >= xNextTaskUnblockTime )
 8055a92: 9804         	ldr	r0, [sp, #0x10]
 8055a94: f240 21b0    	movw	r1, #0x2b0
 8055a98: f2c2 0100    	movt	r1, #0x2000
 8055a9c: 6809         	ldr	r1, [r1]
 8055a9e: 4288         	cmp	r0, r1
 8055aa0: f0c0 80c6    	blo.w	0x8055c30 <xTaskIncrementTick+0x220> @ imm = #0x18c
 8055aa4: e7ff         	b	0x8055aa6 <xTaskIncrementTick+0x96> @ imm = #-0x2
;             for( ; ; )
 8055aa6: e7ff         	b	0x8055aa8 <xTaskIncrementTick+0x98> @ imm = #-0x2
;                 if( listLIST_IS_EMPTY( pxDelayedTaskList ) != pdFALSE )
 8055aa8: f240 1038    	movw	r0, #0x138
 8055aac: f2c2 0000    	movt	r0, #0x2000
 8055ab0: 6800         	ldr	r0, [r0]
 8055ab2: 6800         	ldr	r0, [r0]
 8055ab4: b940         	cbnz	r0, 0x8055ac8 <xTaskIncrementTick+0xb8> @ imm = #0x10
 8055ab6: e7ff         	b	0x8055ab8 <xTaskIncrementTick+0xa8> @ imm = #-0x2
;                     xNextTaskUnblockTime = portMAX_DELAY; /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
 8055ab8: f240 21b0    	movw	r1, #0x2b0
 8055abc: f2c2 0100    	movt	r1, #0x2000
 8055ac0: f04f 30ff    	mov.w	r0, #0xffffffff
 8055ac4: 6008         	str	r0, [r1]
;                     break;
 8055ac6: e0b2         	b	0x8055c2e <xTaskIncrementTick+0x21e> @ imm = #0x164
;                     pxTCB = listGET_OWNER_OF_HEAD_ENTRY( pxDelayedTaskList ); /*lint !e9079 void * is used as this macro is used with timers and co-routines too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
 8055ac8: f240 1038    	movw	r0, #0x138
 8055acc: f2c2 0000    	movt	r0, #0x2000
 8055ad0: 6800         	ldr	r0, [r0]
 8055ad2: 68c0         	ldr	r0, [r0, #0xc]
 8055ad4: 68c0         	ldr	r0, [r0, #0xc]
 8055ad6: 9007         	str	r0, [sp, #0x1c]
;                     xItemValue = listGET_LIST_ITEM_VALUE( &( pxTCB->xStateListItem ) );
 8055ad8: 9807         	ldr	r0, [sp, #0x1c]
 8055ada: 6840         	ldr	r0, [r0, #0x4]
 8055adc: 9006         	str	r0, [sp, #0x18]
;                     if( xConstTickCount < xItemValue )
 8055ade: 9804         	ldr	r0, [sp, #0x10]
 8055ae0: 9906         	ldr	r1, [sp, #0x18]
 8055ae2: 4288         	cmp	r0, r1
 8055ae4: d207         	bhs	0x8055af6 <xTaskIncrementTick+0xe6> @ imm = #0xe
 8055ae6: e7ff         	b	0x8055ae8 <xTaskIncrementTick+0xd8> @ imm = #-0x2
;                         xNextTaskUnblockTime = xItemValue;
 8055ae8: 9806         	ldr	r0, [sp, #0x18]
 8055aea: f240 21b0    	movw	r1, #0x2b0
 8055aee: f2c2 0100    	movt	r1, #0x2000
 8055af2: 6008         	str	r0, [r1]
;                         break; /*lint !e9011 Code structure here is deemed easier to understand with multiple breaks. */
 8055af4: e09b         	b	0x8055c2e <xTaskIncrementTick+0x21e> @ imm = #0x136
 8055af6: e7ff         	b	0x8055af8 <xTaskIncrementTick+0xe8> @ imm = #-0x2
;                     listREMOVE_ITEM( &( pxTCB->xStateListItem ) );
 8055af8: e7ff         	b	0x8055afa <xTaskIncrementTick+0xea> @ imm = #-0x2
 8055afa: 9807         	ldr	r0, [sp, #0x1c]
 8055afc: 6940         	ldr	r0, [r0, #0x14]
 8055afe: 9002         	str	r0, [sp, #0x8]
 8055b00: 9807         	ldr	r0, [sp, #0x1c]
 8055b02: 6881         	ldr	r1, [r0, #0x8]
 8055b04: 68c0         	ldr	r0, [r0, #0xc]
 8055b06: 6088         	str	r0, [r1, #0x8]
 8055b08: 9907         	ldr	r1, [sp, #0x1c]
 8055b0a: 6888         	ldr	r0, [r1, #0x8]
 8055b0c: 68c9         	ldr	r1, [r1, #0xc]
 8055b0e: 6048         	str	r0, [r1, #0x4]
 8055b10: 9802         	ldr	r0, [sp, #0x8]
 8055b12: 6840         	ldr	r0, [r0, #0x4]
 8055b14: 9907         	ldr	r1, [sp, #0x1c]
 8055b16: 3104         	adds	r1, #0x4
 8055b18: 4288         	cmp	r0, r1
 8055b1a: d105         	bne	0x8055b28 <xTaskIncrementTick+0x118> @ imm = #0xa
 8055b1c: e7ff         	b	0x8055b1e <xTaskIncrementTick+0x10e> @ imm = #-0x2
 8055b1e: 9807         	ldr	r0, [sp, #0x1c]
 8055b20: 68c0         	ldr	r0, [r0, #0xc]
 8055b22: 9902         	ldr	r1, [sp, #0x8]
 8055b24: 6048         	str	r0, [r1, #0x4]
 8055b26: e7ff         	b	0x8055b28 <xTaskIncrementTick+0x118> @ imm = #-0x2
 8055b28: 9907         	ldr	r1, [sp, #0x1c]
 8055b2a: 2000         	movs	r0, #0x0
 8055b2c: 6148         	str	r0, [r1, #0x14]
 8055b2e: 9902         	ldr	r1, [sp, #0x8]
 8055b30: 6808         	ldr	r0, [r1]
 8055b32: 3801         	subs	r0, #0x1
 8055b34: 6008         	str	r0, [r1]
 8055b36: e7ff         	b	0x8055b38 <xTaskIncrementTick+0x128> @ imm = #-0x2
;                     if( listLIST_ITEM_CONTAINER( &( pxTCB->xEventListItem ) ) != NULL )
 8055b38: 9807         	ldr	r0, [sp, #0x1c]
 8055b3a: 6a80         	ldr	r0, [r0, #0x28]
 8055b3c: b308         	cbz	r0, 0x8055b82 <xTaskIncrementTick+0x172> @ imm = #0x42
 8055b3e: e7ff         	b	0x8055b40 <xTaskIncrementTick+0x130> @ imm = #-0x2
;                         listREMOVE_ITEM( &( pxTCB->xEventListItem ) );
 8055b40: e7ff         	b	0x8055b42 <xTaskIncrementTick+0x132> @ imm = #-0x2
 8055b42: 9807         	ldr	r0, [sp, #0x1c]
 8055b44: 6a80         	ldr	r0, [r0, #0x28]
 8055b46: 9001         	str	r0, [sp, #0x4]
 8055b48: 9807         	ldr	r0, [sp, #0x1c]
 8055b4a: 69c1         	ldr	r1, [r0, #0x1c]
 8055b4c: 6a00         	ldr	r0, [r0, #0x20]
 8055b4e: 6088         	str	r0, [r1, #0x8]
 8055b50: 9907         	ldr	r1, [sp, #0x1c]
 8055b52: 69c8         	ldr	r0, [r1, #0x1c]
 8055b54: 6a09         	ldr	r1, [r1, #0x20]
 8055b56: 6048         	str	r0, [r1, #0x4]
 8055b58: 9801         	ldr	r0, [sp, #0x4]
 8055b5a: 6840         	ldr	r0, [r0, #0x4]
 8055b5c: 9907         	ldr	r1, [sp, #0x1c]
 8055b5e: 3118         	adds	r1, #0x18
 8055b60: 4288         	cmp	r0, r1
 8055b62: d105         	bne	0x8055b70 <xTaskIncrementTick+0x160> @ imm = #0xa
 8055b64: e7ff         	b	0x8055b66 <xTaskIncrementTick+0x156> @ imm = #-0x2
 8055b66: 9807         	ldr	r0, [sp, #0x1c]
 8055b68: 6a00         	ldr	r0, [r0, #0x20]
 8055b6a: 9901         	ldr	r1, [sp, #0x4]
 8055b6c: 6048         	str	r0, [r1, #0x4]
 8055b6e: e7ff         	b	0x8055b70 <xTaskIncrementTick+0x160> @ imm = #-0x2
 8055b70: 9907         	ldr	r1, [sp, #0x1c]
 8055b72: 2000         	movs	r0, #0x0
 8055b74: 6288         	str	r0, [r1, #0x28]
 8055b76: 9901         	ldr	r1, [sp, #0x4]
 8055b78: 6808         	ldr	r0, [r1]
 8055b7a: 3801         	subs	r0, #0x1
 8055b7c: 6008         	str	r0, [r1]
 8055b7e: e7ff         	b	0x8055b80 <xTaskIncrementTick+0x170> @ imm = #-0x2
;                     }
 8055b80: e000         	b	0x8055b84 <xTaskIncrementTick+0x174> @ imm = #0x0
 8055b82: e7ff         	b	0x8055b84 <xTaskIncrementTick+0x174> @ imm = #-0x2
;                     prvAddTaskToReadyList( pxTCB );
 8055b84: e7ff         	b	0x8055b86 <xTaskIncrementTick+0x176> @ imm = #-0x2
 8055b86: e7ff         	b	0x8055b88 <xTaskIncrementTick+0x178> @ imm = #-0x2
 8055b88: 9807         	ldr	r0, [sp, #0x1c]
 8055b8a: 6ac0         	ldr	r0, [r0, #0x2c]
 8055b8c: f240 21a8    	movw	r1, #0x2a8
 8055b90: f2c2 0100    	movt	r1, #0x2000
 8055b94: 6809         	ldr	r1, [r1]
 8055b96: 4288         	cmp	r0, r1
 8055b98: d908         	bls	0x8055bac <xTaskIncrementTick+0x19c> @ imm = #0x10
 8055b9a: e7ff         	b	0x8055b9c <xTaskIncrementTick+0x18c> @ imm = #-0x2
 8055b9c: 9807         	ldr	r0, [sp, #0x1c]
 8055b9e: 6ac0         	ldr	r0, [r0, #0x2c]
 8055ba0: f240 21a8    	movw	r1, #0x2a8
 8055ba4: f2c2 0100    	movt	r1, #0x2000
 8055ba8: 6008         	str	r0, [r1]
 8055baa: e7ff         	b	0x8055bac <xTaskIncrementTick+0x19c> @ imm = #-0x2
 8055bac: e7ff         	b	0x8055bae <xTaskIncrementTick+0x19e> @ imm = #-0x2
 8055bae: e7ff         	b	0x8055bb0 <xTaskIncrementTick+0x1a0> @ imm = #-0x2
 8055bb0: 9807         	ldr	r0, [sp, #0x1c]
 8055bb2: 6ac0         	ldr	r0, [r0, #0x2c]
 8055bb4: eb00 0080    	add.w	r0, r0, r0, lsl #2
 8055bb8: f240 1168    	movw	r1, #0x168
 8055bbc: f2c2 0100    	movt	r1, #0x2000
 8055bc0: eb01 0080    	add.w	r0, r1, r0, lsl #2
 8055bc4: 6840         	ldr	r0, [r0, #0x4]
 8055bc6: 9000         	str	r0, [sp]
 8055bc8: 9800         	ldr	r0, [sp]
 8055bca: 9a07         	ldr	r2, [sp, #0x1c]
 8055bcc: 6090         	str	r0, [r2, #0x8]
 8055bce: 9800         	ldr	r0, [sp]
 8055bd0: 6880         	ldr	r0, [r0, #0x8]
 8055bd2: 9a07         	ldr	r2, [sp, #0x1c]
 8055bd4: 60d0         	str	r0, [r2, #0xc]
 8055bd6: 9807         	ldr	r0, [sp, #0x1c]
 8055bd8: 3004         	adds	r0, #0x4
 8055bda: 9a00         	ldr	r2, [sp]
 8055bdc: 6892         	ldr	r2, [r2, #0x8]
 8055bde: 6050         	str	r0, [r2, #0x4]
 8055be0: 9807         	ldr	r0, [sp, #0x1c]
 8055be2: 3004         	adds	r0, #0x4
 8055be4: 9a00         	ldr	r2, [sp]
 8055be6: 6090         	str	r0, [r2, #0x8]
 8055be8: 9a07         	ldr	r2, [sp, #0x1c]
 8055bea: 6ad0         	ldr	r0, [r2, #0x2c]
 8055bec: eb00 0080    	add.w	r0, r0, r0, lsl #2
 8055bf0: eb01 0080    	add.w	r0, r1, r0, lsl #2
 8055bf4: 6150         	str	r0, [r2, #0x14]
 8055bf6: 9807         	ldr	r0, [sp, #0x1c]
 8055bf8: 6ac0         	ldr	r0, [r0, #0x2c]
 8055bfa: eb00 0280    	add.w	r2, r0, r0, lsl #2
 8055bfe: f851 0022    	ldr.w	r0, [r1, r2, lsl #2]
 8055c02: 3001         	adds	r0, #0x1
 8055c04: f841 0022    	str.w	r0, [r1, r2, lsl #2]
 8055c08: e7ff         	b	0x8055c0a <xTaskIncrementTick+0x1fa> @ imm = #-0x2
 8055c0a: e7ff         	b	0x8055c0c <xTaskIncrementTick+0x1fc> @ imm = #-0x2
;                             if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
 8055c0c: 9807         	ldr	r0, [sp, #0x1c]
 8055c0e: 6ac0         	ldr	r0, [r0, #0x2c]
 8055c10: f240 1108    	movw	r1, #0x108
 8055c14: f2c2 0100    	movt	r1, #0x2000
 8055c18: 6809         	ldr	r1, [r1]
 8055c1a: 6ac9         	ldr	r1, [r1, #0x2c]
 8055c1c: 4288         	cmp	r0, r1
 8055c1e: d903         	bls	0x8055c28 <xTaskIncrementTick+0x218> @ imm = #0x6
 8055c20: e7ff         	b	0x8055c22 <xTaskIncrementTick+0x212> @ imm = #-0x2
 8055c22: 2001         	movs	r0, #0x1
;                                 xSwitchRequired = pdTRUE;
 8055c24: 9005         	str	r0, [sp, #0x14]
;                             }
 8055c26: e000         	b	0x8055c2a <xTaskIncrementTick+0x21a> @ imm = #0x0
 8055c28: e7ff         	b	0x8055c2a <xTaskIncrementTick+0x21a> @ imm = #-0x2
 8055c2a: e7ff         	b	0x8055c2c <xTaskIncrementTick+0x21c> @ imm = #-0x2
;             for( ; ; )
 8055c2c: e73c         	b	0x8055aa8 <xTaskIncrementTick+0x98> @ imm = #-0x188
;         }
 8055c2e: e7ff         	b	0x8055c30 <xTaskIncrementTick+0x220> @ imm = #-0x2
;                 if( listCURRENT_LIST_LENGTH( &( pxReadyTasksLists[ pxCurrentTCB->uxPriority ] ) ) > ( UBaseType_t ) 1 )
 8055c30: f240 1008    	movw	r0, #0x108
 8055c34: f2c2 0000    	movt	r0, #0x2000
 8055c38: 6800         	ldr	r0, [r0]
 8055c3a: 6ac0         	ldr	r0, [r0, #0x2c]
 8055c3c: eb00 0180    	add.w	r1, r0, r0, lsl #2
 8055c40: f240 1068    	movw	r0, #0x168
 8055c44: f2c2 0000    	movt	r0, #0x2000
 8055c48: f850 0021    	ldr.w	r0, [r0, r1, lsl #2]
 8055c4c: 2802         	cmp	r0, #0x2
 8055c4e: d303         	blo	0x8055c58 <xTaskIncrementTick+0x248> @ imm = #0x6
 8055c50: e7ff         	b	0x8055c52 <xTaskIncrementTick+0x242> @ imm = #-0x2
 8055c52: 2001         	movs	r0, #0x1
;                     xSwitchRequired = pdTRUE;
 8055c54: 9005         	str	r0, [sp, #0x14]
;                 }
 8055c56: e000         	b	0x8055c5a <xTaskIncrementTick+0x24a> @ imm = #0x0
 8055c58: e7ff         	b	0x8055c5a <xTaskIncrementTick+0x24a> @ imm = #-0x2
;                 if( xYieldPendings[ 0 ] != pdFALSE )
 8055c5a: f240 20ac    	movw	r0, #0x2ac
 8055c5e: f2c2 0000    	movt	r0, #0x2000
 8055c62: 6800         	ldr	r0, [r0]
 8055c64: b118         	cbz	r0, 0x8055c6e <xTaskIncrementTick+0x25e> @ imm = #0x6
 8055c66: e7ff         	b	0x8055c68 <xTaskIncrementTick+0x258> @ imm = #-0x2
 8055c68: 2001         	movs	r0, #0x1
;                     xSwitchRequired = pdTRUE;
 8055c6a: 9005         	str	r0, [sp, #0x14]
;                 }
 8055c6c: e000         	b	0x8055c70 <xTaskIncrementTick+0x260> @ imm = #0x0
 8055c6e: e7ff         	b	0x8055c70 <xTaskIncrementTick+0x260> @ imm = #-0x2
;     }
 8055c70: e007         	b	0x8055c82 <xTaskIncrementTick+0x272> @ imm = #0xe
;         ++xPendedTicks;
 8055c72: f240 21b8    	movw	r1, #0x2b8
 8055c76: f2c2 0100    	movt	r1, #0x2000
 8055c7a: 6808         	ldr	r0, [r1]
 8055c7c: 3001         	adds	r0, #0x1
 8055c7e: 6008         	str	r0, [r1]
 8055c80: e7ff         	b	0x8055c82 <xTaskIncrementTick+0x272> @ imm = #-0x2
;     return xSwitchRequired;
 8055c82: 9805         	ldr	r0, [sp, #0x14]
 8055c84: b008         	add	sp, #0x20
 8055c86: bd80         	pop	{r7, pc}

08055c88 <xTaskGetTickCount>:
; {
 8055c88: b081         	sub	sp, #0x4
;         xTicks = xTickCount;
 8055c8a: f240 1034    	movw	r0, #0x134
 8055c8e: f2c2 0000    	movt	r0, #0x2000
 8055c92: 6800         	ldr	r0, [r0]
 8055c94: 9000         	str	r0, [sp]
;     return xTicks;
 8055c96: 9800         	ldr	r0, [sp]
 8055c98: b001         	add	sp, #0x4
 8055c9a: 4770         	bx	lr

08055c9c <vTaskPlaceOnEventList>:
; {
 8055c9c: b580         	push	{r7, lr}
 8055c9e: 466f         	mov	r7, sp
 8055ca0: b082         	sub	sp, #0x8
 8055ca2: 9001         	str	r0, [sp, #0x4]
 8055ca4: 9100         	str	r1, [sp]
;     configASSERT( pxEventList );
 8055ca6: 9801         	ldr	r0, [sp, #0x4]
 8055ca8: b920         	cbnz	r0, 0x8055cb4 <vTaskPlaceOnEventList+0x18> @ imm = #0x8
 8055caa: e7ff         	b	0x8055cac <vTaskPlaceOnEventList+0x10> @ imm = #-0x2
 8055cac: f001 fcf5    	bl	0x805769a <ulSetInterruptMask> @ imm = #0x19ea
 8055cb0: e7ff         	b	0x8055cb2 <vTaskPlaceOnEventList+0x16> @ imm = #-0x2
 8055cb2: e7fe         	b	0x8055cb2 <vTaskPlaceOnEventList+0x16> @ imm = #-0x4
;     vListInsert( pxEventList, &( pxCurrentTCB->xEventListItem ) );
 8055cb4: 9801         	ldr	r0, [sp, #0x4]
 8055cb6: f240 1108    	movw	r1, #0x108
 8055cba: f2c2 0100    	movt	r1, #0x2000
 8055cbe: 6809         	ldr	r1, [r1]
 8055cc0: 3118         	adds	r1, #0x18
 8055cc2: f000 fad3    	bl	0x805626c <vListInsert> @ imm = #0x5a6
;     prvAddCurrentTaskToDelayedList( xTicksToWait, pdTRUE );
 8055cc6: 9800         	ldr	r0, [sp]
 8055cc8: 2101         	movs	r1, #0x1
 8055cca: f7ff fbef    	bl	0x80554ac <prvAddCurrentTaskToDelayedList> @ imm = #-0x822
; }
 8055cce: b002         	add	sp, #0x8
 8055cd0: bd80         	pop	{r7, pc}

08055cd2 <vTaskPlaceOnEventListRestricted>:
;     {
 8055cd2: b580         	push	{r7, lr}
 8055cd4: 466f         	mov	r7, sp
 8055cd6: b084         	sub	sp, #0x10
 8055cd8: 9003         	str	r0, [sp, #0xc]
 8055cda: 9102         	str	r1, [sp, #0x8]
 8055cdc: 9201         	str	r2, [sp, #0x4]
;         configASSERT( pxEventList );
 8055cde: 9803         	ldr	r0, [sp, #0xc]
 8055ce0: b920         	cbnz	r0, 0x8055cec <vTaskPlaceOnEventListRestricted+0x1a> @ imm = #0x8
 8055ce2: e7ff         	b	0x8055ce4 <vTaskPlaceOnEventListRestricted+0x12> @ imm = #-0x2
 8055ce4: f001 fcd9    	bl	0x805769a <ulSetInterruptMask> @ imm = #0x19b2
 8055ce8: e7ff         	b	0x8055cea <vTaskPlaceOnEventListRestricted+0x18> @ imm = #-0x2
 8055cea: e7fe         	b	0x8055cea <vTaskPlaceOnEventListRestricted+0x18> @ imm = #-0x4
;         listINSERT_END( pxEventList, &( pxCurrentTCB->xEventListItem ) );
 8055cec: e7ff         	b	0x8055cee <vTaskPlaceOnEventListRestricted+0x1c> @ imm = #-0x2
 8055cee: 9803         	ldr	r0, [sp, #0xc]
 8055cf0: 6840         	ldr	r0, [r0, #0x4]
 8055cf2: 9000         	str	r0, [sp]
 8055cf4: 9800         	ldr	r0, [sp]
 8055cf6: f240 1108    	movw	r1, #0x108
 8055cfa: f2c2 0100    	movt	r1, #0x2000
 8055cfe: 680a         	ldr	r2, [r1]
 8055d00: 61d0         	str	r0, [r2, #0x1c]
 8055d02: 9800         	ldr	r0, [sp]
 8055d04: 6880         	ldr	r0, [r0, #0x8]
 8055d06: 680a         	ldr	r2, [r1]
 8055d08: 6210         	str	r0, [r2, #0x20]
 8055d0a: 6808         	ldr	r0, [r1]
 8055d0c: 3018         	adds	r0, #0x18
 8055d0e: 9a00         	ldr	r2, [sp]
 8055d10: 6892         	ldr	r2, [r2, #0x8]
 8055d12: 6050         	str	r0, [r2, #0x4]
 8055d14: 6808         	ldr	r0, [r1]
 8055d16: 3018         	adds	r0, #0x18
 8055d18: 9a00         	ldr	r2, [sp]
 8055d1a: 6090         	str	r0, [r2, #0x8]
 8055d1c: 9803         	ldr	r0, [sp, #0xc]
 8055d1e: 6809         	ldr	r1, [r1]
 8055d20: 6288         	str	r0, [r1, #0x28]
 8055d22: 9903         	ldr	r1, [sp, #0xc]
 8055d24: 6808         	ldr	r0, [r1]
 8055d26: 3001         	adds	r0, #0x1
 8055d28: 6008         	str	r0, [r1]
 8055d2a: e7ff         	b	0x8055d2c <vTaskPlaceOnEventListRestricted+0x5a> @ imm = #-0x2
;         if( xWaitIndefinitely != pdFALSE )
 8055d2c: 9801         	ldr	r0, [sp, #0x4]
 8055d2e: b120         	cbz	r0, 0x8055d3a <vTaskPlaceOnEventListRestricted+0x68> @ imm = #0x8
 8055d30: e7ff         	b	0x8055d32 <vTaskPlaceOnEventListRestricted+0x60> @ imm = #-0x2
 8055d32: f04f 30ff    	mov.w	r0, #0xffffffff
;             xTicksToWait = portMAX_DELAY;
 8055d36: 9002         	str	r0, [sp, #0x8]
;         }
 8055d38: e7ff         	b	0x8055d3a <vTaskPlaceOnEventListRestricted+0x68> @ imm = #-0x2
;         prvAddCurrentTaskToDelayedList( xTicksToWait, xWaitIndefinitely );
 8055d3a: 9802         	ldr	r0, [sp, #0x8]
 8055d3c: 9901         	ldr	r1, [sp, #0x4]
 8055d3e: f7ff fbb5    	bl	0x80554ac <prvAddCurrentTaskToDelayedList> @ imm = #-0x896
;     }
 8055d42: b004         	add	sp, #0x10
 8055d44: bd80         	pop	{r7, pc}

08055d46 <xTaskRemoveFromEventList>:
; {
 8055d46: b580         	push	{r7, lr}
 8055d48: 466f         	mov	r7, sp
 8055d4a: b088         	sub	sp, #0x20
 8055d4c: 9007         	str	r0, [sp, #0x1c]
;     pxUnblockedTCB = listGET_OWNER_OF_HEAD_ENTRY( pxEventList ); /*lint !e9079 void * is used as this macro is used with timers and co-routines too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
 8055d4e: 9807         	ldr	r0, [sp, #0x1c]
 8055d50: 68c0         	ldr	r0, [r0, #0xc]
 8055d52: 68c0         	ldr	r0, [r0, #0xc]
 8055d54: 9006         	str	r0, [sp, #0x18]
;     configASSERT( pxUnblockedTCB );
 8055d56: 9806         	ldr	r0, [sp, #0x18]
 8055d58: b920         	cbnz	r0, 0x8055d64 <xTaskRemoveFromEventList+0x1e> @ imm = #0x8
 8055d5a: e7ff         	b	0x8055d5c <xTaskRemoveFromEventList+0x16> @ imm = #-0x2
 8055d5c: f001 fc9d    	bl	0x805769a <ulSetInterruptMask> @ imm = #0x193a
 8055d60: e7ff         	b	0x8055d62 <xTaskRemoveFromEventList+0x1c> @ imm = #-0x2
 8055d62: e7fe         	b	0x8055d62 <xTaskRemoveFromEventList+0x1c> @ imm = #-0x4
;     listREMOVE_ITEM( &( pxUnblockedTCB->xEventListItem ) );
 8055d64: e7ff         	b	0x8055d66 <xTaskRemoveFromEventList+0x20> @ imm = #-0x2
 8055d66: 9806         	ldr	r0, [sp, #0x18]
 8055d68: 6a80         	ldr	r0, [r0, #0x28]
 8055d6a: 9004         	str	r0, [sp, #0x10]
 8055d6c: 9806         	ldr	r0, [sp, #0x18]
 8055d6e: 69c1         	ldr	r1, [r0, #0x1c]
 8055d70: 6a00         	ldr	r0, [r0, #0x20]
 8055d72: 6088         	str	r0, [r1, #0x8]
 8055d74: 9906         	ldr	r1, [sp, #0x18]
 8055d76: 69c8         	ldr	r0, [r1, #0x1c]
 8055d78: 6a09         	ldr	r1, [r1, #0x20]
 8055d7a: 6048         	str	r0, [r1, #0x4]
 8055d7c: 9804         	ldr	r0, [sp, #0x10]
 8055d7e: 6840         	ldr	r0, [r0, #0x4]
 8055d80: 9906         	ldr	r1, [sp, #0x18]
 8055d82: 3118         	adds	r1, #0x18
 8055d84: 4288         	cmp	r0, r1
 8055d86: d105         	bne	0x8055d94 <xTaskRemoveFromEventList+0x4e> @ imm = #0xa
 8055d88: e7ff         	b	0x8055d8a <xTaskRemoveFromEventList+0x44> @ imm = #-0x2
 8055d8a: 9806         	ldr	r0, [sp, #0x18]
 8055d8c: 6a00         	ldr	r0, [r0, #0x20]
 8055d8e: 9904         	ldr	r1, [sp, #0x10]
 8055d90: 6048         	str	r0, [r1, #0x4]
 8055d92: e7ff         	b	0x8055d94 <xTaskRemoveFromEventList+0x4e> @ imm = #-0x2
 8055d94: 9906         	ldr	r1, [sp, #0x18]
 8055d96: 2000         	movs	r0, #0x0
 8055d98: 6288         	str	r0, [r1, #0x28]
 8055d9a: 9904         	ldr	r1, [sp, #0x10]
 8055d9c: 6808         	ldr	r0, [r1]
 8055d9e: 3801         	subs	r0, #0x1
 8055da0: 6008         	str	r0, [r1]
 8055da2: e7ff         	b	0x8055da4 <xTaskRemoveFromEventList+0x5e> @ imm = #-0x2
;     if( uxSchedulerSuspended == ( UBaseType_t ) 0U )
 8055da4: f240 1030    	movw	r0, #0x130
 8055da8: f2c2 0000    	movt	r0, #0x2000
 8055dac: 6800         	ldr	r0, [r0]
 8055dae: 2800         	cmp	r0, #0x0
 8055db0: d165         	bne	0x8055e7e <xTaskRemoveFromEventList+0x138> @ imm = #0xca
 8055db2: e7ff         	b	0x8055db4 <xTaskRemoveFromEventList+0x6e> @ imm = #-0x2
;         listREMOVE_ITEM( &( pxUnblockedTCB->xStateListItem ) );
 8055db4: e7ff         	b	0x8055db6 <xTaskRemoveFromEventList+0x70> @ imm = #-0x2
 8055db6: 9806         	ldr	r0, [sp, #0x18]
 8055db8: 6940         	ldr	r0, [r0, #0x14]
 8055dba: 9003         	str	r0, [sp, #0xc]
 8055dbc: 9806         	ldr	r0, [sp, #0x18]
 8055dbe: 6881         	ldr	r1, [r0, #0x8]
 8055dc0: 68c0         	ldr	r0, [r0, #0xc]
 8055dc2: 6088         	str	r0, [r1, #0x8]
 8055dc4: 9906         	ldr	r1, [sp, #0x18]
 8055dc6: 6888         	ldr	r0, [r1, #0x8]
 8055dc8: 68c9         	ldr	r1, [r1, #0xc]
 8055dca: 6048         	str	r0, [r1, #0x4]
 8055dcc: 9803         	ldr	r0, [sp, #0xc]
 8055dce: 6840         	ldr	r0, [r0, #0x4]
 8055dd0: 9906         	ldr	r1, [sp, #0x18]
 8055dd2: 3104         	adds	r1, #0x4
 8055dd4: 4288         	cmp	r0, r1
 8055dd6: d105         	bne	0x8055de4 <xTaskRemoveFromEventList+0x9e> @ imm = #0xa
 8055dd8: e7ff         	b	0x8055dda <xTaskRemoveFromEventList+0x94> @ imm = #-0x2
 8055dda: 9806         	ldr	r0, [sp, #0x18]
 8055ddc: 68c0         	ldr	r0, [r0, #0xc]
 8055dde: 9903         	ldr	r1, [sp, #0xc]
 8055de0: 6048         	str	r0, [r1, #0x4]
 8055de2: e7ff         	b	0x8055de4 <xTaskRemoveFromEventList+0x9e> @ imm = #-0x2
 8055de4: 9906         	ldr	r1, [sp, #0x18]
 8055de6: 2000         	movs	r0, #0x0
 8055de8: 6148         	str	r0, [r1, #0x14]
 8055dea: 9903         	ldr	r1, [sp, #0xc]
 8055dec: 6808         	ldr	r0, [r1]
 8055dee: 3801         	subs	r0, #0x1
 8055df0: 6008         	str	r0, [r1]
 8055df2: e7ff         	b	0x8055df4 <xTaskRemoveFromEventList+0xae> @ imm = #-0x2
;         prvAddTaskToReadyList( pxUnblockedTCB );
 8055df4: e7ff         	b	0x8055df6 <xTaskRemoveFromEventList+0xb0> @ imm = #-0x2
 8055df6: e7ff         	b	0x8055df8 <xTaskRemoveFromEventList+0xb2> @ imm = #-0x2
 8055df8: 9806         	ldr	r0, [sp, #0x18]
 8055dfa: 6ac0         	ldr	r0, [r0, #0x2c]
 8055dfc: f240 21a8    	movw	r1, #0x2a8
 8055e00: f2c2 0100    	movt	r1, #0x2000
 8055e04: 6809         	ldr	r1, [r1]
 8055e06: 4288         	cmp	r0, r1
 8055e08: d908         	bls	0x8055e1c <xTaskRemoveFromEventList+0xd6> @ imm = #0x10
 8055e0a: e7ff         	b	0x8055e0c <xTaskRemoveFromEventList+0xc6> @ imm = #-0x2
 8055e0c: 9806         	ldr	r0, [sp, #0x18]
 8055e0e: 6ac0         	ldr	r0, [r0, #0x2c]
 8055e10: f240 21a8    	movw	r1, #0x2a8
 8055e14: f2c2 0100    	movt	r1, #0x2000
 8055e18: 6008         	str	r0, [r1]
 8055e1a: e7ff         	b	0x8055e1c <xTaskRemoveFromEventList+0xd6> @ imm = #-0x2
 8055e1c: e7ff         	b	0x8055e1e <xTaskRemoveFromEventList+0xd8> @ imm = #-0x2
 8055e1e: e7ff         	b	0x8055e20 <xTaskRemoveFromEventList+0xda> @ imm = #-0x2
 8055e20: 9806         	ldr	r0, [sp, #0x18]
 8055e22: 6ac0         	ldr	r0, [r0, #0x2c]
 8055e24: eb00 0080    	add.w	r0, r0, r0, lsl #2
 8055e28: f240 1168    	movw	r1, #0x168
 8055e2c: f2c2 0100    	movt	r1, #0x2000
 8055e30: eb01 0080    	add.w	r0, r1, r0, lsl #2
 8055e34: 6840         	ldr	r0, [r0, #0x4]
 8055e36: 9002         	str	r0, [sp, #0x8]
 8055e38: 9802         	ldr	r0, [sp, #0x8]
 8055e3a: 9a06         	ldr	r2, [sp, #0x18]
 8055e3c: 6090         	str	r0, [r2, #0x8]
 8055e3e: 9802         	ldr	r0, [sp, #0x8]
 8055e40: 6880         	ldr	r0, [r0, #0x8]
 8055e42: 9a06         	ldr	r2, [sp, #0x18]
 8055e44: 60d0         	str	r0, [r2, #0xc]
 8055e46: 9806         	ldr	r0, [sp, #0x18]
 8055e48: 3004         	adds	r0, #0x4
 8055e4a: 9a02         	ldr	r2, [sp, #0x8]
 8055e4c: 6892         	ldr	r2, [r2, #0x8]
 8055e4e: 6050         	str	r0, [r2, #0x4]
 8055e50: 9806         	ldr	r0, [sp, #0x18]
 8055e52: 3004         	adds	r0, #0x4
 8055e54: 9a02         	ldr	r2, [sp, #0x8]
 8055e56: 6090         	str	r0, [r2, #0x8]
 8055e58: 9a06         	ldr	r2, [sp, #0x18]
 8055e5a: 6ad0         	ldr	r0, [r2, #0x2c]
 8055e5c: eb00 0080    	add.w	r0, r0, r0, lsl #2
 8055e60: eb01 0080    	add.w	r0, r1, r0, lsl #2
 8055e64: 6150         	str	r0, [r2, #0x14]
 8055e66: 9806         	ldr	r0, [sp, #0x18]
 8055e68: 6ac0         	ldr	r0, [r0, #0x2c]
 8055e6a: eb00 0280    	add.w	r2, r0, r0, lsl #2
 8055e6e: f851 0022    	ldr.w	r0, [r1, r2, lsl #2]
 8055e72: 3001         	adds	r0, #0x1
 8055e74: f841 0022    	str.w	r0, [r1, r2, lsl #2]
 8055e78: e7ff         	b	0x8055e7a <xTaskRemoveFromEventList+0x134> @ imm = #-0x2
 8055e7a: e7ff         	b	0x8055e7c <xTaskRemoveFromEventList+0x136> @ imm = #-0x2
;     }
 8055e7c: e01d         	b	0x8055eba <xTaskRemoveFromEventList+0x174> @ imm = #0x3a
;         listINSERT_END( &( xPendingReadyList ), &( pxUnblockedTCB->xEventListItem ) );
 8055e7e: e7ff         	b	0x8055e80 <xTaskRemoveFromEventList+0x13a> @ imm = #-0x2
 8055e80: f240 1140    	movw	r1, #0x140
 8055e84: f2c2 0100    	movt	r1, #0x2000
 8055e88: 6848         	ldr	r0, [r1, #0x4]
 8055e8a: 9001         	str	r0, [sp, #0x4]
 8055e8c: 9801         	ldr	r0, [sp, #0x4]
 8055e8e: 9a06         	ldr	r2, [sp, #0x18]
 8055e90: 61d0         	str	r0, [r2, #0x1c]
 8055e92: 9801         	ldr	r0, [sp, #0x4]
 8055e94: 6880         	ldr	r0, [r0, #0x8]
 8055e96: 9a06         	ldr	r2, [sp, #0x18]
 8055e98: 6210         	str	r0, [r2, #0x20]
 8055e9a: 9806         	ldr	r0, [sp, #0x18]
 8055e9c: 3018         	adds	r0, #0x18
 8055e9e: 9a01         	ldr	r2, [sp, #0x4]
 8055ea0: 6892         	ldr	r2, [r2, #0x8]
 8055ea2: 6050         	str	r0, [r2, #0x4]
 8055ea4: 9806         	ldr	r0, [sp, #0x18]
 8055ea6: 3018         	adds	r0, #0x18
 8055ea8: 9a01         	ldr	r2, [sp, #0x4]
 8055eaa: 6090         	str	r0, [r2, #0x8]
 8055eac: 9806         	ldr	r0, [sp, #0x18]
 8055eae: 6281         	str	r1, [r0, #0x28]
 8055eb0: 6808         	ldr	r0, [r1]
 8055eb2: 3001         	adds	r0, #0x1
 8055eb4: 6008         	str	r0, [r1]
 8055eb6: e7ff         	b	0x8055eb8 <xTaskRemoveFromEventList+0x172> @ imm = #-0x2
 8055eb8: e7ff         	b	0x8055eba <xTaskRemoveFromEventList+0x174> @ imm = #-0x2
;         if( pxUnblockedTCB->uxPriority > pxCurrentTCB->uxPriority )
 8055eba: 9806         	ldr	r0, [sp, #0x18]
 8055ebc: 6ac0         	ldr	r0, [r0, #0x2c]
 8055ebe: f240 1108    	movw	r1, #0x108
 8055ec2: f2c2 0100    	movt	r1, #0x2000
 8055ec6: 6809         	ldr	r1, [r1]
 8055ec8: 6ac9         	ldr	r1, [r1, #0x2c]
 8055eca: 4288         	cmp	r0, r1
 8055ecc: d908         	bls	0x8055ee0 <xTaskRemoveFromEventList+0x19a> @ imm = #0x10
 8055ece: e7ff         	b	0x8055ed0 <xTaskRemoveFromEventList+0x18a> @ imm = #-0x2
 8055ed0: 2001         	movs	r0, #0x1
;             xReturn = pdTRUE;
 8055ed2: 9005         	str	r0, [sp, #0x14]
;             xYieldPendings[ 0 ] = pdTRUE;
 8055ed4: f240 21ac    	movw	r1, #0x2ac
 8055ed8: f2c2 0100    	movt	r1, #0x2000
 8055edc: 6008         	str	r0, [r1]
;         }
 8055ede: e002         	b	0x8055ee6 <xTaskRemoveFromEventList+0x1a0> @ imm = #0x4
 8055ee0: 2000         	movs	r0, #0x0
;             xReturn = pdFALSE;
 8055ee2: 9005         	str	r0, [sp, #0x14]
 8055ee4: e7ff         	b	0x8055ee6 <xTaskRemoveFromEventList+0x1a0> @ imm = #-0x2
;     return xReturn;
 8055ee6: 9805         	ldr	r0, [sp, #0x14]
 8055ee8: b008         	add	sp, #0x20
 8055eea: bd80         	pop	{r7, pc}

08055eec <vTaskInternalSetTimeOutState>:
; {
 8055eec: b081         	sub	sp, #0x4
 8055eee: 9000         	str	r0, [sp]
;     pxTimeOut->xOverflowCount = xNumOfOverflows;
 8055ef0: f240 20bc    	movw	r0, #0x2bc
 8055ef4: f2c2 0000    	movt	r0, #0x2000
 8055ef8: 6800         	ldr	r0, [r0]
 8055efa: 9900         	ldr	r1, [sp]
 8055efc: 6008         	str	r0, [r1]
;     pxTimeOut->xTimeOnEntering = xTickCount;
 8055efe: f240 1034    	movw	r0, #0x134
 8055f02: f2c2 0000    	movt	r0, #0x2000
 8055f06: 6800         	ldr	r0, [r0]
 8055f08: 9900         	ldr	r1, [sp]
 8055f0a: 6048         	str	r0, [r1, #0x4]
; }
 8055f0c: b001         	add	sp, #0x4
 8055f0e: 4770         	bx	lr

08055f10 <xTaskCheckForTimeOut>:
; {
 8055f10: b580         	push	{r7, lr}
 8055f12: 466f         	mov	r7, sp
 8055f14: b086         	sub	sp, #0x18
 8055f16: 9005         	str	r0, [sp, #0x14]
 8055f18: 9104         	str	r1, [sp, #0x10]
;     configASSERT( pxTimeOut );
 8055f1a: 9805         	ldr	r0, [sp, #0x14]
 8055f1c: b920         	cbnz	r0, 0x8055f28 <xTaskCheckForTimeOut+0x18> @ imm = #0x8
 8055f1e: e7ff         	b	0x8055f20 <xTaskCheckForTimeOut+0x10> @ imm = #-0x2
 8055f20: f001 fbbb    	bl	0x805769a <ulSetInterruptMask> @ imm = #0x1776
 8055f24: e7ff         	b	0x8055f26 <xTaskCheckForTimeOut+0x16> @ imm = #-0x2
 8055f26: e7fe         	b	0x8055f26 <xTaskCheckForTimeOut+0x16> @ imm = #-0x4
;     configASSERT( pxTicksToWait );
 8055f28: 9804         	ldr	r0, [sp, #0x10]
 8055f2a: b920         	cbnz	r0, 0x8055f36 <xTaskCheckForTimeOut+0x26> @ imm = #0x8
 8055f2c: e7ff         	b	0x8055f2e <xTaskCheckForTimeOut+0x1e> @ imm = #-0x2
 8055f2e: f001 fbb4    	bl	0x805769a <ulSetInterruptMask> @ imm = #0x1768
 8055f32: e7ff         	b	0x8055f34 <xTaskCheckForTimeOut+0x24> @ imm = #-0x2
 8055f34: e7fe         	b	0x8055f34 <xTaskCheckForTimeOut+0x24> @ imm = #-0x4
;     taskENTER_CRITICAL();
 8055f36: f001 fa0d    	bl	0x8057354 <vPortEnterCritical> @ imm = #0x141a
;         const TickType_t xConstTickCount = xTickCount;
 8055f3a: f240 1034    	movw	r0, #0x134
 8055f3e: f2c2 0000    	movt	r0, #0x2000
 8055f42: 6800         	ldr	r0, [r0]
 8055f44: 9002         	str	r0, [sp, #0x8]
;         const TickType_t xElapsedTime = xConstTickCount - pxTimeOut->xTimeOnEntering;
 8055f46: 9802         	ldr	r0, [sp, #0x8]
 8055f48: 9905         	ldr	r1, [sp, #0x14]
 8055f4a: 6849         	ldr	r1, [r1, #0x4]
 8055f4c: 1a40         	subs	r0, r0, r1
 8055f4e: 9001         	str	r0, [sp, #0x4]
;             if( *pxTicksToWait == portMAX_DELAY )
 8055f50: 9804         	ldr	r0, [sp, #0x10]
 8055f52: 6800         	ldr	r0, [r0]
 8055f54: 3001         	adds	r0, #0x1
 8055f56: b918         	cbnz	r0, 0x8055f60 <xTaskCheckForTimeOut+0x50> @ imm = #0x6
 8055f58: e7ff         	b	0x8055f5a <xTaskCheckForTimeOut+0x4a> @ imm = #-0x2
 8055f5a: 2000         	movs	r0, #0x0
;                 xReturn = pdFALSE;
 8055f5c: 9003         	str	r0, [sp, #0xc]
;             }
 8055f5e: e02e         	b	0x8055fbe <xTaskCheckForTimeOut+0xae> @ imm = #0x5c
;         if( ( xNumOfOverflows != pxTimeOut->xOverflowCount ) && ( xConstTickCount >= pxTimeOut->xTimeOnEntering ) ) /*lint !e525 Indentation preferred as is to make code within pre-processor directives clearer. */
 8055f60: f240 20bc    	movw	r0, #0x2bc
 8055f64: f2c2 0000    	movt	r0, #0x2000
 8055f68: 6800         	ldr	r0, [r0]
 8055f6a: 9905         	ldr	r1, [sp, #0x14]
 8055f6c: 6809         	ldr	r1, [r1]
 8055f6e: 4288         	cmp	r0, r1
 8055f70: d00c         	beq	0x8055f8c <xTaskCheckForTimeOut+0x7c> @ imm = #0x18
 8055f72: e7ff         	b	0x8055f74 <xTaskCheckForTimeOut+0x64> @ imm = #-0x2
 8055f74: 9802         	ldr	r0, [sp, #0x8]
 8055f76: 9905         	ldr	r1, [sp, #0x14]
 8055f78: 6849         	ldr	r1, [r1, #0x4]
 8055f7a: 4288         	cmp	r0, r1
 8055f7c: d306         	blo	0x8055f8c <xTaskCheckForTimeOut+0x7c> @ imm = #0xc
 8055f7e: e7ff         	b	0x8055f80 <xTaskCheckForTimeOut+0x70> @ imm = #-0x2
 8055f80: 2001         	movs	r0, #0x1
;             xReturn = pdTRUE;
 8055f82: 9003         	str	r0, [sp, #0xc]
;             *pxTicksToWait = ( TickType_t ) 0;
 8055f84: 9904         	ldr	r1, [sp, #0x10]
 8055f86: 2000         	movs	r0, #0x0
 8055f88: 6008         	str	r0, [r1]
;         }
 8055f8a: e017         	b	0x8055fbc <xTaskCheckForTimeOut+0xac> @ imm = #0x2e
;         else if( xElapsedTime < *pxTicksToWait ) /*lint !e961 Explicit casting is only redundant with some compilers, whereas others require it to prevent integer conversion errors. */
 8055f8c: 9801         	ldr	r0, [sp, #0x4]
 8055f8e: 9904         	ldr	r1, [sp, #0x10]
 8055f90: 6809         	ldr	r1, [r1]
 8055f92: 4288         	cmp	r0, r1
 8055f94: d20b         	bhs	0x8055fae <xTaskCheckForTimeOut+0x9e> @ imm = #0x16
 8055f96: e7ff         	b	0x8055f98 <xTaskCheckForTimeOut+0x88> @ imm = #-0x2
;             *pxTicksToWait -= xElapsedTime;
 8055f98: 9a01         	ldr	r2, [sp, #0x4]
 8055f9a: 9904         	ldr	r1, [sp, #0x10]
 8055f9c: 6808         	ldr	r0, [r1]
 8055f9e: 1a80         	subs	r0, r0, r2
 8055fa0: 6008         	str	r0, [r1]
;             vTaskInternalSetTimeOutState( pxTimeOut );
 8055fa2: 9805         	ldr	r0, [sp, #0x14]
 8055fa4: f7ff ffa2    	bl	0x8055eec <vTaskInternalSetTimeOutState> @ imm = #-0xbc
 8055fa8: 2000         	movs	r0, #0x0
;             xReturn = pdFALSE;
 8055faa: 9003         	str	r0, [sp, #0xc]
;         }
 8055fac: e005         	b	0x8055fba <xTaskCheckForTimeOut+0xaa> @ imm = #0xa
;             *pxTicksToWait = ( TickType_t ) 0;
 8055fae: 9904         	ldr	r1, [sp, #0x10]
 8055fb0: 2000         	movs	r0, #0x0
 8055fb2: 6008         	str	r0, [r1]
 8055fb4: 2001         	movs	r0, #0x1
;             xReturn = pdTRUE;
 8055fb6: 9003         	str	r0, [sp, #0xc]
 8055fb8: e7ff         	b	0x8055fba <xTaskCheckForTimeOut+0xaa> @ imm = #-0x2
 8055fba: e7ff         	b	0x8055fbc <xTaskCheckForTimeOut+0xac> @ imm = #-0x2
 8055fbc: e7ff         	b	0x8055fbe <xTaskCheckForTimeOut+0xae> @ imm = #-0x2
;     taskEXIT_CRITICAL();
 8055fbe: f001 f9d9    	bl	0x8057374 <vPortExitCritical> @ imm = #0x13b2
;     return xReturn;
 8055fc2: 9803         	ldr	r0, [sp, #0xc]
 8055fc4: b006         	add	sp, #0x18
 8055fc6: bd80         	pop	{r7, pc}

08055fc8 <vTaskMissedYield>:
;     xYieldPendings[ portGET_CORE_ID() ] = pdTRUE;
 8055fc8: f240 21ac    	movw	r1, #0x2ac
 8055fcc: f2c2 0100    	movt	r1, #0x2000
 8055fd0: 2001         	movs	r0, #0x1
 8055fd2: 6008         	str	r0, [r1]
; }
 8055fd4: 4770         	bx	lr

08055fd6 <xTaskGetSchedulerState>:
;     {
 8055fd6: b081         	sub	sp, #0x4
;         if( xSchedulerRunning == pdFALSE )
 8055fd8: f240 102c    	movw	r0, #0x12c
 8055fdc: f2c2 0000    	movt	r0, #0x2000
 8055fe0: 6800         	ldr	r0, [r0]
 8055fe2: b918         	cbnz	r0, 0x8055fec <xTaskGetSchedulerState+0x16> @ imm = #0x6
 8055fe4: e7ff         	b	0x8055fe6 <xTaskGetSchedulerState+0x10> @ imm = #-0x2
 8055fe6: 2001         	movs	r0, #0x1
;             xReturn = taskSCHEDULER_NOT_STARTED;
 8055fe8: 9000         	str	r0, [sp]
;         }
 8055fea: e00d         	b	0x8056008 <xTaskGetSchedulerState+0x32> @ imm = #0x1a
;                 if( uxSchedulerSuspended == ( UBaseType_t ) 0U )
 8055fec: f240 1030    	movw	r0, #0x130
 8055ff0: f2c2 0000    	movt	r0, #0x2000
 8055ff4: 6800         	ldr	r0, [r0]
 8055ff6: b918         	cbnz	r0, 0x8056000 <xTaskGetSchedulerState+0x2a> @ imm = #0x6
 8055ff8: e7ff         	b	0x8055ffa <xTaskGetSchedulerState+0x24> @ imm = #-0x2
 8055ffa: 2002         	movs	r0, #0x2
;                     xReturn = taskSCHEDULER_RUNNING;
 8055ffc: 9000         	str	r0, [sp]
;                 }
 8055ffe: e002         	b	0x8056006 <xTaskGetSchedulerState+0x30> @ imm = #0x4
 8056000: 2000         	movs	r0, #0x0
;                     xReturn = taskSCHEDULER_SUSPENDED;
 8056002: 9000         	str	r0, [sp]
 8056004: e7ff         	b	0x8056006 <xTaskGetSchedulerState+0x30> @ imm = #-0x2
 8056006: e7ff         	b	0x8056008 <xTaskGetSchedulerState+0x32> @ imm = #-0x2
;         return xReturn;
 8056008: 9800         	ldr	r0, [sp]
 805600a: b001         	add	sp, #0x4
 805600c: 4770         	bx	lr

0805600e <prvInitialiseNewTask>:
; {
 805600e: b580         	push	{r7, lr}
 8056010: 466f         	mov	r7, sp
 8056012: b086         	sub	sp, #0x18
 8056014: f8d7 c014    	ldr.w	r12, [r7, #0x14]
 8056018: f8d7 c010    	ldr.w	r12, [r7, #0x10]
 805601c: f8d7 c00c    	ldr.w	r12, [r7, #0xc]
 8056020: f8d7 c008    	ldr.w	r12, [r7, #0x8]
 8056024: 9005         	str	r0, [sp, #0x14]
 8056026: 9104         	str	r1, [sp, #0x10]
 8056028: 9203         	str	r2, [sp, #0xc]
 805602a: 9302         	str	r3, [sp, #0x8]
;         ( void ) memset( pxNewTCB->pxStack, ( int ) tskSTACK_FILL_BYTE, ( size_t ) ulStackDepth * sizeof( StackType_t ) );
 805602c: 6938         	ldr	r0, [r7, #0x10]
 805602e: 6b00         	ldr	r0, [r0, #0x30]
 8056030: 9903         	ldr	r1, [sp, #0xc]
 8056032: 008a         	lsls	r2, r1, #0x2
 8056034: 21a5         	movs	r1, #0xa5
 8056036: f001 fbf1    	bl	0x805781c <memset>      @ imm = #0x17e2
;         pxTopOfStack = &( pxNewTCB->pxStack[ ulStackDepth - ( uint32_t ) 1 ] );
 805603a: 6938         	ldr	r0, [r7, #0x10]
 805603c: 6b00         	ldr	r0, [r0, #0x30]
 805603e: 9903         	ldr	r1, [sp, #0xc]
 8056040: eb00 0081    	add.w	r0, r0, r1, lsl #2
 8056044: 3804         	subs	r0, #0x4
 8056046: 9001         	str	r0, [sp, #0x4]
;         pxTopOfStack = ( StackType_t * ) ( ( ( portPOINTER_SIZE_TYPE ) pxTopOfStack ) & ( ~( ( portPOINTER_SIZE_TYPE ) portBYTE_ALIGNMENT_MASK ) ) ); /*lint !e923 !e9033 !e9078 MISRA exception.  Avoiding casts between pointers and integers is not practical.  Size differences accounted for using portPOINTER_SIZE_TYPE type.  Checked by assert(). */
 8056048: 9801         	ldr	r0, [sp, #0x4]
 805604a: f020 0007    	bic	r0, r0, #0x7
 805604e: 9001         	str	r0, [sp, #0x4]
;         configASSERT( ( ( ( portPOINTER_SIZE_TYPE ) pxTopOfStack & ( portPOINTER_SIZE_TYPE ) portBYTE_ALIGNMENT_MASK ) == 0UL ) );
 8056050: f89d 0004    	ldrb.w	r0, [sp, #0x4]
 8056054: 0740         	lsls	r0, r0, #0x1d
 8056056: b120         	cbz	r0, 0x8056062 <prvInitialiseNewTask+0x54> @ imm = #0x8
 8056058: e7ff         	b	0x805605a <prvInitialiseNewTask+0x4c> @ imm = #-0x2
 805605a: f001 fb1e    	bl	0x805769a <ulSetInterruptMask> @ imm = #0x163c
 805605e: e7ff         	b	0x8056060 <prvInitialiseNewTask+0x52> @ imm = #-0x2
 8056060: e7fe         	b	0x8056060 <prvInitialiseNewTask+0x52> @ imm = #-0x4
;     if( pcName != NULL )
 8056062: 9804         	ldr	r0, [sp, #0x10]
 8056064: b1f8         	cbz	r0, 0x80560a6 <prvInitialiseNewTask+0x98> @ imm = #0x3e
 8056066: e7ff         	b	0x8056068 <prvInitialiseNewTask+0x5a> @ imm = #-0x2
 8056068: 2000         	movs	r0, #0x0
;         for( x = ( UBaseType_t ) 0; x < ( UBaseType_t ) configMAX_TASK_NAME_LEN; x++ )
 805606a: 9000         	str	r0, [sp]
 805606c: e7ff         	b	0x805606e <prvInitialiseNewTask+0x60> @ imm = #-0x2
 805606e: 9800         	ldr	r0, [sp]
 8056070: 280f         	cmp	r0, #0xf
 8056072: d813         	bhi	0x805609c <prvInitialiseNewTask+0x8e> @ imm = #0x26
 8056074: e7ff         	b	0x8056076 <prvInitialiseNewTask+0x68> @ imm = #-0x2
;             pxNewTCB->pcTaskName[ x ] = pcName[ x ];
 8056076: 9804         	ldr	r0, [sp, #0x10]
 8056078: 9a00         	ldr	r2, [sp]
 805607a: 5c80         	ldrb	r0, [r0, r2]
 805607c: 6939         	ldr	r1, [r7, #0x10]
 805607e: 4411         	add	r1, r2
 8056080: f881 0034    	strb.w	r0, [r1, #0x34]
;             if( pcName[ x ] == ( char ) 0x00 )
 8056084: 9804         	ldr	r0, [sp, #0x10]
 8056086: 9900         	ldr	r1, [sp]
 8056088: 5c40         	ldrb	r0, [r0, r1]
 805608a: b908         	cbnz	r0, 0x8056090 <prvInitialiseNewTask+0x82> @ imm = #0x2
 805608c: e7ff         	b	0x805608e <prvInitialiseNewTask+0x80> @ imm = #-0x2
;                 break;
 805608e: e005         	b	0x805609c <prvInitialiseNewTask+0x8e> @ imm = #0xa
 8056090: e7ff         	b	0x8056092 <prvInitialiseNewTask+0x84> @ imm = #-0x2
;         }
 8056092: e7ff         	b	0x8056094 <prvInitialiseNewTask+0x86> @ imm = #-0x2
;         for( x = ( UBaseType_t ) 0; x < ( UBaseType_t ) configMAX_TASK_NAME_LEN; x++ )
 8056094: 9800         	ldr	r0, [sp]
 8056096: 3001         	adds	r0, #0x1
 8056098: 9000         	str	r0, [sp]
 805609a: e7e8         	b	0x805606e <prvInitialiseNewTask+0x60> @ imm = #-0x30
;         pxNewTCB->pcTaskName[ configMAX_TASK_NAME_LEN - 1 ] = '\0';
 805609c: 6939         	ldr	r1, [r7, #0x10]
 805609e: 2000         	movs	r0, #0x0
 80560a0: f881 0043    	strb.w	r0, [r1, #0x43]
;     }
 80560a4: e000         	b	0x80560a8 <prvInitialiseNewTask+0x9a> @ imm = #0x0
 80560a6: e7ff         	b	0x80560a8 <prvInitialiseNewTask+0x9a> @ imm = #-0x2
;     configASSERT( uxPriority < configMAX_PRIORITIES );
 80560a8: 68b8         	ldr	r0, [r7, #0x8]
 80560aa: 2810         	cmp	r0, #0x10
 80560ac: d304         	blo	0x80560b8 <prvInitialiseNewTask+0xaa> @ imm = #0x8
 80560ae: e7ff         	b	0x80560b0 <prvInitialiseNewTask+0xa2> @ imm = #-0x2
 80560b0: f001 faf3    	bl	0x805769a <ulSetInterruptMask> @ imm = #0x15e6
 80560b4: e7ff         	b	0x80560b6 <prvInitialiseNewTask+0xa8> @ imm = #-0x2
 80560b6: e7fe         	b	0x80560b6 <prvInitialiseNewTask+0xa8> @ imm = #-0x4
;     if( uxPriority >= ( UBaseType_t ) configMAX_PRIORITIES )
 80560b8: 68b8         	ldr	r0, [r7, #0x8]
 80560ba: 2810         	cmp	r0, #0x10
 80560bc: d303         	blo	0x80560c6 <prvInitialiseNewTask+0xb8> @ imm = #0x6
 80560be: e7ff         	b	0x80560c0 <prvInitialiseNewTask+0xb2> @ imm = #-0x2
 80560c0: 200f         	movs	r0, #0xf
;         uxPriority = ( UBaseType_t ) configMAX_PRIORITIES - ( UBaseType_t ) 1U;
 80560c2: 60b8         	str	r0, [r7, #0x8]
;     }
 80560c4: e000         	b	0x80560c8 <prvInitialiseNewTask+0xba> @ imm = #0x0
 80560c6: e7ff         	b	0x80560c8 <prvInitialiseNewTask+0xba> @ imm = #-0x2
;     pxNewTCB->uxPriority = uxPriority;
 80560c8: 68b8         	ldr	r0, [r7, #0x8]
 80560ca: 6939         	ldr	r1, [r7, #0x10]
 80560cc: 62c8         	str	r0, [r1, #0x2c]
;         pxNewTCB->uxBasePriority = uxPriority;
 80560ce: 68b8         	ldr	r0, [r7, #0x8]
 80560d0: 6939         	ldr	r1, [r7, #0x10]
 80560d2: 64c8         	str	r0, [r1, #0x4c]
;     vListInitialiseItem( &( pxNewTCB->xStateListItem ) );
 80560d4: 6938         	ldr	r0, [r7, #0x10]
 80560d6: 3004         	adds	r0, #0x4
 80560d8: f000 f8c1    	bl	0x805625e <vListInitialiseItem> @ imm = #0x182
;     vListInitialiseItem( &( pxNewTCB->xEventListItem ) );
 80560dc: 6938         	ldr	r0, [r7, #0x10]
 80560de: 3018         	adds	r0, #0x18
 80560e0: f000 f8bd    	bl	0x805625e <vListInitialiseItem> @ imm = #0x17a
;     listSET_LIST_ITEM_OWNER( &( pxNewTCB->xStateListItem ), pxNewTCB );
 80560e4: 6938         	ldr	r0, [r7, #0x10]
 80560e6: 6100         	str	r0, [r0, #0x10]
;     listSET_LIST_ITEM_VALUE( &( pxNewTCB->xEventListItem ), ( TickType_t ) configMAX_PRIORITIES - ( TickType_t ) uxPriority ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
 80560e8: 68b8         	ldr	r0, [r7, #0x8]
 80560ea: f1c0 0010    	rsb.w	r0, r0, #0x10
 80560ee: 6939         	ldr	r1, [r7, #0x10]
 80560f0: 6188         	str	r0, [r1, #0x18]
;     listSET_LIST_ITEM_OWNER( &( pxNewTCB->xEventListItem ), pxNewTCB );
 80560f2: 6938         	ldr	r0, [r7, #0x10]
 80560f4: 6240         	str	r0, [r0, #0x24]
;                 pxNewTCB->pxTopOfStack = pxPortInitialiseStack( pxTopOfStack, pxNewTCB->pxStack, pxTaskCode, pvParameters );
 80560f6: 9801         	ldr	r0, [sp, #0x4]
 80560f8: 6939         	ldr	r1, [r7, #0x10]
 80560fa: 6b09         	ldr	r1, [r1, #0x30]
 80560fc: 9a05         	ldr	r2, [sp, #0x14]
 80560fe: 9b02         	ldr	r3, [sp, #0x8]
 8056100: f001 f986    	bl	0x8057410 <pxPortInitialiseStack> @ imm = #0x130c
 8056104: 6939         	ldr	r1, [r7, #0x10]
 8056106: 6008         	str	r0, [r1]
;     if( pxCreatedTask != NULL )
 8056108: 68f8         	ldr	r0, [r7, #0xc]
 805610a: b120         	cbz	r0, 0x8056116 <prvInitialiseNewTask+0x108> @ imm = #0x8
 805610c: e7ff         	b	0x805610e <prvInitialiseNewTask+0x100> @ imm = #-0x2
;         *pxCreatedTask = ( TaskHandle_t ) pxNewTCB;
 805610e: 6938         	ldr	r0, [r7, #0x10]
 8056110: 68f9         	ldr	r1, [r7, #0xc]
 8056112: 6008         	str	r0, [r1]
;     }
 8056114: e000         	b	0x8056118 <prvInitialiseNewTask+0x10a> @ imm = #0x0
 8056116: e7ff         	b	0x8056118 <prvInitialiseNewTask+0x10a> @ imm = #-0x2
; }
 8056118: b006         	add	sp, #0x18
 805611a: bd80         	pop	{r7, pc}

0805611c <prvInitialiseTaskLists>:
; {
 805611c: b580         	push	{r7, lr}
 805611e: 466f         	mov	r7, sp
 8056120: b084         	sub	sp, #0x10
 8056122: 2000         	movs	r0, #0x0
;     for( uxPriority = ( UBaseType_t ) 0U; uxPriority < ( UBaseType_t ) configMAX_PRIORITIES; uxPriority++ )
 8056124: 9003         	str	r0, [sp, #0xc]
 8056126: e7ff         	b	0x8056128 <prvInitialiseTaskLists+0xc> @ imm = #-0x2
 8056128: 9803         	ldr	r0, [sp, #0xc]
 805612a: 280f         	cmp	r0, #0xf
 805612c: d810         	bhi	0x8056150 <prvInitialiseTaskLists+0x34> @ imm = #0x20
 805612e: e7ff         	b	0x8056130 <prvInitialiseTaskLists+0x14> @ imm = #-0x2
;         vListInitialise( &( pxReadyTasksLists[ uxPriority ] ) );
 8056130: 9803         	ldr	r0, [sp, #0xc]
 8056132: eb00 0180    	add.w	r1, r0, r0, lsl #2
 8056136: f240 1068    	movw	r0, #0x168
 805613a: f2c2 0000    	movt	r0, #0x2000
 805613e: eb00 0081    	add.w	r0, r0, r1, lsl #2
 8056142: f000 f875    	bl	0x8056230 <vListInitialise> @ imm = #0xea
;     }
 8056146: e7ff         	b	0x8056148 <prvInitialiseTaskLists+0x2c> @ imm = #-0x2
;     for( uxPriority = ( UBaseType_t ) 0U; uxPriority < ( UBaseType_t ) configMAX_PRIORITIES; uxPriority++ )
 8056148: 9803         	ldr	r0, [sp, #0xc]
 805614a: 3001         	adds	r0, #0x1
 805614c: 9003         	str	r0, [sp, #0xc]
 805614e: e7eb         	b	0x8056128 <prvInitialiseTaskLists+0xc> @ imm = #-0x2a
;     vListInitialise( &xDelayedTaskList1 );
 8056150: f240 20c0    	movw	r0, #0x2c0
 8056154: f2c2 0000    	movt	r0, #0x2000
 8056158: 9001         	str	r0, [sp, #0x4]
 805615a: f000 f869    	bl	0x8056230 <vListInitialise> @ imm = #0xd2
;     vListInitialise( &xDelayedTaskList2 );
 805615e: f240 20d4    	movw	r0, #0x2d4
 8056162: f2c2 0000    	movt	r0, #0x2000
 8056166: 9002         	str	r0, [sp, #0x8]
 8056168: f000 f862    	bl	0x8056230 <vListInitialise> @ imm = #0xc4
;     vListInitialise( &xPendingReadyList );
 805616c: f240 1040    	movw	r0, #0x140
 8056170: f2c2 0000    	movt	r0, #0x2000
 8056174: f000 f85c    	bl	0x8056230 <vListInitialise> @ imm = #0xb8
;         vListInitialise( &xTasksWaitingTermination );
 8056178: f240 1010    	movw	r0, #0x110
 805617c: f2c2 0000    	movt	r0, #0x2000
 8056180: f000 f856    	bl	0x8056230 <vListInitialise> @ imm = #0xac
;         vListInitialise( &xSuspendedTaskList );
 8056184: f240 1054    	movw	r0, #0x154
 8056188: f2c2 0000    	movt	r0, #0x2000
 805618c: f000 f850    	bl	0x8056230 <vListInitialise> @ imm = #0xa0
 8056190: 9901         	ldr	r1, [sp, #0x4]
 8056192: 9802         	ldr	r0, [sp, #0x8]
;     pxDelayedTaskList = &xDelayedTaskList1;
 8056194: f240 1238    	movw	r2, #0x138
 8056198: f2c2 0200    	movt	r2, #0x2000
 805619c: 6011         	str	r1, [r2]
;     pxOverflowDelayedTaskList = &xDelayedTaskList2;
 805619e: f240 113c    	movw	r1, #0x13c
 80561a2: f2c2 0100    	movt	r1, #0x2000
 80561a6: 6008         	str	r0, [r1]
; }
 80561a8: b004         	add	sp, #0x10
 80561aa: bd80         	pop	{r7, pc}

080561ac <prvIdleTask>:
; {
 80561ac: b580         	push	{r7, lr}
 80561ae: 466f         	mov	r7, sp
 80561b0: b082         	sub	sp, #0x8
 80561b2: 9001         	str	r0, [sp, #0x4]
;     for( ; configCONTROL_INFINITE_LOOP(); )
 80561b4: e7ff         	b	0x80561b6 <prvIdleTask+0xa> @ imm = #-0x2
;         prvCheckTasksWaitingTermination();
 80561b6: f000 f80d    	bl	0x80561d4 <prvCheckTasksWaitingTermination> @ imm = #0x1a
;             if( listCURRENT_LIST_LENGTH( &( pxReadyTasksLists[ tskIDLE_PRIORITY ] ) ) > ( UBaseType_t ) configNUMBER_OF_CORES )
 80561ba: f240 1068    	movw	r0, #0x168
 80561be: f2c2 0000    	movt	r0, #0x2000
 80561c2: 6800         	ldr	r0, [r0]
 80561c4: 2802         	cmp	r0, #0x2
 80561c6: d303         	blo	0x80561d0 <prvIdleTask+0x24> @ imm = #0x6
 80561c8: e7ff         	b	0x80561ca <prvIdleTask+0x1e> @ imm = #-0x2
;                 taskYIELD();
 80561ca: f001 f8b7    	bl	0x805733c <vPortYield>  @ imm = #0x116e
;             }
 80561ce: e000         	b	0x80561d2 <prvIdleTask+0x26> @ imm = #0x0
 80561d0: e7ff         	b	0x80561d2 <prvIdleTask+0x26> @ imm = #-0x2
;     for( ; configCONTROL_INFINITE_LOOP(); )
 80561d2: e7f0         	b	0x80561b6 <prvIdleTask+0xa> @ imm = #-0x20

080561d4 <prvCheckTasksWaitingTermination>:
; {
 80561d4: b580         	push	{r7, lr}
 80561d6: 466f         	mov	r7, sp
 80561d8: b082         	sub	sp, #0x8
;         while( uxDeletedTasksWaitingCleanUp > ( UBaseType_t ) 0U )
 80561da: e7ff         	b	0x80561dc <prvCheckTasksWaitingTermination+0x8> @ imm = #-0x2
 80561dc: f240 1024    	movw	r0, #0x124
 80561e0: f2c2 0000    	movt	r0, #0x2000
 80561e4: 6800         	ldr	r0, [r0]
 80561e6: b308         	cbz	r0, 0x805622c <prvCheckTasksWaitingTermination+0x58> @ imm = #0x42
 80561e8: e7ff         	b	0x80561ea <prvCheckTasksWaitingTermination+0x16> @ imm = #-0x2
;                 taskENTER_CRITICAL();
 80561ea: f001 f8b3    	bl	0x8057354 <vPortEnterCritical> @ imm = #0x1166
;                         pxTCB = listGET_OWNER_OF_HEAD_ENTRY( ( &xTasksWaitingTermination ) ); /*lint !e9079 void * is used as this macro is used with timers too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
 80561ee: f240 1010    	movw	r0, #0x110
 80561f2: f2c2 0000    	movt	r0, #0x2000
 80561f6: 68c0         	ldr	r0, [r0, #0xc]
 80561f8: 68c0         	ldr	r0, [r0, #0xc]
 80561fa: 9001         	str	r0, [sp, #0x4]
;                         ( void ) uxListRemove( &( pxTCB->xStateListItem ) );
 80561fc: 9801         	ldr	r0, [sp, #0x4]
 80561fe: 3004         	adds	r0, #0x4
 8056200: f000 f869    	bl	0x80562d6 <uxListRemove> @ imm = #0xd2
;                         --uxCurrentNumberOfTasks;
 8056204: f240 1128    	movw	r1, #0x128
 8056208: f2c2 0100    	movt	r1, #0x2000
 805620c: 6808         	ldr	r0, [r1]
 805620e: 3801         	subs	r0, #0x1
 8056210: 6008         	str	r0, [r1]
;                         --uxDeletedTasksWaitingCleanUp;
 8056212: f240 1124    	movw	r1, #0x124
 8056216: f2c2 0100    	movt	r1, #0x2000
 805621a: 6808         	ldr	r0, [r1]
 805621c: 3801         	subs	r0, #0x1
 805621e: 6008         	str	r0, [r1]
;                 taskEXIT_CRITICAL();
 8056220: f001 f8a8    	bl	0x8057374 <vPortExitCritical> @ imm = #0x1150
;                 prvDeleteTCB( pxTCB );
 8056224: 9801         	ldr	r0, [sp, #0x4]
 8056226: f7ff f92c    	bl	0x8055482 <prvDeleteTCB> @ imm = #-0xda8
;         while( uxDeletedTasksWaitingCleanUp > ( UBaseType_t ) 0U )
 805622a: e7d7         	b	0x80561dc <prvCheckTasksWaitingTermination+0x8> @ imm = #-0x52
; }
 805622c: b002         	add	sp, #0x8
 805622e: bd80         	pop	{r7, pc}

08056230 <vListInitialise>:
; {
 8056230: b081         	sub	sp, #0x4
 8056232: 9000         	str	r0, [sp]
;     pxList->pxIndex = ( ListItem_t * ) &( pxList->xListEnd ); /*lint !e826 !e740 !e9087 The mini list structure is used as the list end to save RAM.  This is checked and valid. */
 8056234: 9900         	ldr	r1, [sp]
 8056236: f101 0008    	add.w	r0, r1, #0x8
 805623a: 6048         	str	r0, [r1, #0x4]
;     pxList->xListEnd.xItemValue = portMAX_DELAY;
 805623c: 9900         	ldr	r1, [sp]
 805623e: f04f 30ff    	mov.w	r0, #0xffffffff
 8056242: 6088         	str	r0, [r1, #0x8]
;     pxList->xListEnd.pxNext = ( ListItem_t * ) &( pxList->xListEnd );     /*lint !e826 !e740 !e9087 The mini list structure is used as the list end to save RAM.  This is checked and valid. */
 8056244: 9900         	ldr	r1, [sp]
 8056246: f101 0008    	add.w	r0, r1, #0x8
 805624a: 60c8         	str	r0, [r1, #0xc]
;     pxList->xListEnd.pxPrevious = ( ListItem_t * ) &( pxList->xListEnd ); /*lint !e826 !e740 !e9087 The mini list structure is used as the list end to save RAM.  This is checked and valid. */
 805624c: 9900         	ldr	r1, [sp]
 805624e: f101 0008    	add.w	r0, r1, #0x8
 8056252: 6108         	str	r0, [r1, #0x10]
;     pxList->uxNumberOfItems = ( UBaseType_t ) 0U;
 8056254: 9900         	ldr	r1, [sp]
 8056256: 2000         	movs	r0, #0x0
 8056258: 6008         	str	r0, [r1]
; }
 805625a: b001         	add	sp, #0x4
 805625c: 4770         	bx	lr

0805625e <vListInitialiseItem>:
; {
 805625e: b081         	sub	sp, #0x4
 8056260: 9000         	str	r0, [sp]
;     pxItem->pxContainer = NULL;
 8056262: 9900         	ldr	r1, [sp]
 8056264: 2000         	movs	r0, #0x0
 8056266: 6108         	str	r0, [r1, #0x10]
; }
 8056268: b001         	add	sp, #0x4
 805626a: 4770         	bx	lr

0805626c <vListInsert>:
; {
 805626c: b084         	sub	sp, #0x10
 805626e: 9003         	str	r0, [sp, #0xc]
 8056270: 9102         	str	r1, [sp, #0x8]
;     const TickType_t xValueOfInsertion = pxNewListItem->xItemValue;
 8056272: 9802         	ldr	r0, [sp, #0x8]
 8056274: 6800         	ldr	r0, [r0]
 8056276: 9000         	str	r0, [sp]
;     if( xValueOfInsertion == portMAX_DELAY )
 8056278: 9800         	ldr	r0, [sp]
 805627a: 3001         	adds	r0, #0x1
 805627c: b920         	cbnz	r0, 0x8056288 <vListInsert+0x1c> @ imm = #0x8
 805627e: e7ff         	b	0x8056280 <vListInsert+0x14> @ imm = #-0x2
;         pxIterator = pxList->xListEnd.pxPrevious;
 8056280: 9803         	ldr	r0, [sp, #0xc]
 8056282: 6900         	ldr	r0, [r0, #0x10]
 8056284: 9001         	str	r0, [sp, #0x4]
;     }
 8056286: e010         	b	0x80562aa <vListInsert+0x3e> @ imm = #0x20
;         for( pxIterator = ( ListItem_t * ) &( pxList->xListEnd ); pxIterator->pxNext->xItemValue <= xValueOfInsertion; pxIterator = pxIterator->pxNext ) /*lint !e826 !e740 !e9087 The mini list structure is used as the list end to save RAM.  This is checked and valid. *//*lint !e440 The iterator moves to a different value, not xValueOfInsertion. */
 8056288: 9803         	ldr	r0, [sp, #0xc]
 805628a: 3008         	adds	r0, #0x8
 805628c: 9001         	str	r0, [sp, #0x4]
 805628e: e7ff         	b	0x8056290 <vListInsert+0x24> @ imm = #-0x2
 8056290: 9801         	ldr	r0, [sp, #0x4]
 8056292: 6840         	ldr	r0, [r0, #0x4]
 8056294: 6800         	ldr	r0, [r0]
 8056296: 9900         	ldr	r1, [sp]
 8056298: 4288         	cmp	r0, r1
 805629a: d805         	bhi	0x80562a8 <vListInsert+0x3c> @ imm = #0xa
 805629c: e7ff         	b	0x805629e <vListInsert+0x32> @ imm = #-0x2
;         }
 805629e: e7ff         	b	0x80562a0 <vListInsert+0x34> @ imm = #-0x2
;         for( pxIterator = ( ListItem_t * ) &( pxList->xListEnd ); pxIterator->pxNext->xItemValue <= xValueOfInsertion; pxIterator = pxIterator->pxNext ) /*lint !e826 !e740 !e9087 The mini list structure is used as the list end to save RAM.  This is checked and valid. *//*lint !e440 The iterator moves to a different value, not xValueOfInsertion. */
 80562a0: 9801         	ldr	r0, [sp, #0x4]
 80562a2: 6840         	ldr	r0, [r0, #0x4]
 80562a4: 9001         	str	r0, [sp, #0x4]
 80562a6: e7f3         	b	0x8056290 <vListInsert+0x24> @ imm = #-0x1a
 80562a8: e7ff         	b	0x80562aa <vListInsert+0x3e> @ imm = #-0x2
;     pxNewListItem->pxNext = pxIterator->pxNext;
 80562aa: 9801         	ldr	r0, [sp, #0x4]
 80562ac: 6840         	ldr	r0, [r0, #0x4]
 80562ae: 9902         	ldr	r1, [sp, #0x8]
 80562b0: 6048         	str	r0, [r1, #0x4]
;     pxNewListItem->pxNext->pxPrevious = pxNewListItem;
 80562b2: 9802         	ldr	r0, [sp, #0x8]
 80562b4: 6841         	ldr	r1, [r0, #0x4]
 80562b6: 6088         	str	r0, [r1, #0x8]
;     pxNewListItem->pxPrevious = pxIterator;
 80562b8: 9801         	ldr	r0, [sp, #0x4]
 80562ba: 9902         	ldr	r1, [sp, #0x8]
 80562bc: 6088         	str	r0, [r1, #0x8]
;     pxIterator->pxNext = pxNewListItem;
 80562be: 9802         	ldr	r0, [sp, #0x8]
 80562c0: 9901         	ldr	r1, [sp, #0x4]
 80562c2: 6048         	str	r0, [r1, #0x4]
;     pxNewListItem->pxContainer = pxList;
 80562c4: 9803         	ldr	r0, [sp, #0xc]
 80562c6: 9902         	ldr	r1, [sp, #0x8]
 80562c8: 6108         	str	r0, [r1, #0x10]
;     ( pxList->uxNumberOfItems )++;
 80562ca: 9903         	ldr	r1, [sp, #0xc]
 80562cc: 6808         	ldr	r0, [r1]
 80562ce: 3001         	adds	r0, #0x1
 80562d0: 6008         	str	r0, [r1]
; }
 80562d2: b004         	add	sp, #0x10
 80562d4: 4770         	bx	lr

080562d6 <uxListRemove>:
; {
 80562d6: b082         	sub	sp, #0x8
 80562d8: 9001         	str	r0, [sp, #0x4]
;     List_t * const pxList = pxItemToRemove->pxContainer;
 80562da: 9801         	ldr	r0, [sp, #0x4]
 80562dc: 6900         	ldr	r0, [r0, #0x10]
 80562de: 9000         	str	r0, [sp]
;     pxItemToRemove->pxNext->pxPrevious = pxItemToRemove->pxPrevious;
 80562e0: 9801         	ldr	r0, [sp, #0x4]
 80562e2: 6841         	ldr	r1, [r0, #0x4]
 80562e4: 6880         	ldr	r0, [r0, #0x8]
 80562e6: 6088         	str	r0, [r1, #0x8]
;     pxItemToRemove->pxPrevious->pxNext = pxItemToRemove->pxNext;
 80562e8: 9901         	ldr	r1, [sp, #0x4]
 80562ea: 6848         	ldr	r0, [r1, #0x4]
 80562ec: 6889         	ldr	r1, [r1, #0x8]
 80562ee: 6048         	str	r0, [r1, #0x4]
;     if( pxList->pxIndex == pxItemToRemove )
 80562f0: 9800         	ldr	r0, [sp]
 80562f2: 6840         	ldr	r0, [r0, #0x4]
 80562f4: 9901         	ldr	r1, [sp, #0x4]
 80562f6: 4288         	cmp	r0, r1
 80562f8: d105         	bne	0x8056306 <uxListRemove+0x30> @ imm = #0xa
 80562fa: e7ff         	b	0x80562fc <uxListRemove+0x26> @ imm = #-0x2
;         pxList->pxIndex = pxItemToRemove->pxPrevious;
 80562fc: 9801         	ldr	r0, [sp, #0x4]
 80562fe: 6880         	ldr	r0, [r0, #0x8]
 8056300: 9900         	ldr	r1, [sp]
 8056302: 6048         	str	r0, [r1, #0x4]
;     }
 8056304: e000         	b	0x8056308 <uxListRemove+0x32> @ imm = #0x0
 8056306: e7ff         	b	0x8056308 <uxListRemove+0x32> @ imm = #-0x2
;     pxItemToRemove->pxContainer = NULL;
 8056308: 9901         	ldr	r1, [sp, #0x4]
 805630a: 2000         	movs	r0, #0x0
 805630c: 6108         	str	r0, [r1, #0x10]
;     ( pxList->uxNumberOfItems )--;
 805630e: 9900         	ldr	r1, [sp]
 8056310: 6808         	ldr	r0, [r1]
 8056312: 3801         	subs	r0, #0x1
 8056314: 6008         	str	r0, [r1]
;     return pxList->uxNumberOfItems;
 8056316: 9800         	ldr	r0, [sp]
 8056318: 6800         	ldr	r0, [r0]
 805631a: b002         	add	sp, #0x8
 805631c: 4770         	bx	lr

0805631e <xTimerCreateTimerTask>:
;     {
 805631e: b580         	push	{r7, lr}
 8056320: 466f         	mov	r7, sp
 8056322: b084         	sub	sp, #0x10
 8056324: 2000         	movs	r0, #0x0
;         BaseType_t xReturn = pdFAIL;
 8056326: 9003         	str	r0, [sp, #0xc]
;         prvCheckForValidListAndQueue();
 8056328: f000 f829    	bl	0x805637e <prvCheckForValidListAndQueue> @ imm = #0x52
;         if( xTimerQueue != NULL )
 805632c: f240 20e8    	movw	r0, #0x2e8
 8056330: f2c2 0000    	movt	r0, #0x2000
 8056334: 6800         	ldr	r0, [r0]
 8056336: b1b8         	cbz	r0, 0x8056368 <xTimerCreateTimerTask+0x4a> @ imm = #0x2e
 8056338: e7ff         	b	0x805633a <xTimerCreateTimerTask+0x1c> @ imm = #-0x2
;                     xReturn = xTaskCreate( prvTimerTask,
 805633a: f240 20ec    	movw	r0, #0x2ec
 805633e: f2c2 0000    	movt	r0, #0x2000
 8056342: 4669         	mov	r1, sp
 8056344: 6048         	str	r0, [r1, #0x4]
 8056346: 2002         	movs	r0, #0x2
 8056348: 6008         	str	r0, [r1]
 805634a: f246 400d    	movw	r0, #0x640d
 805634e: f6c0 0005    	movt	r0, #0x805
 8056352: f248 31ad    	movw	r1, #0x83ad
 8056356: f6c0 0105    	movt	r1, #0x805
 805635a: f44f 7280    	mov.w	r2, #0x100
 805635e: 2300         	movs	r3, #0x0
 8056360: f7fe ff48    	bl	0x80551f4 <xTaskCreate> @ imm = #-0x1170
 8056364: 9003         	str	r0, [sp, #0xc]
;         }
 8056366: e000         	b	0x805636a <xTimerCreateTimerTask+0x4c> @ imm = #0x0
 8056368: e7ff         	b	0x805636a <xTimerCreateTimerTask+0x4c> @ imm = #-0x2
;         configASSERT( xReturn );
 805636a: 9803         	ldr	r0, [sp, #0xc]
 805636c: b920         	cbnz	r0, 0x8056378 <xTimerCreateTimerTask+0x5a> @ imm = #0x8
 805636e: e7ff         	b	0x8056370 <xTimerCreateTimerTask+0x52> @ imm = #-0x2
 8056370: f001 f993    	bl	0x805769a <ulSetInterruptMask> @ imm = #0x1326
 8056374: e7ff         	b	0x8056376 <xTimerCreateTimerTask+0x58> @ imm = #-0x2
 8056376: e7fe         	b	0x8056376 <xTimerCreateTimerTask+0x58> @ imm = #-0x4
;         return xReturn;
 8056378: 9803         	ldr	r0, [sp, #0xc]
 805637a: b004         	add	sp, #0x10
 805637c: bd80         	pop	{r7, pc}

0805637e <prvCheckForValidListAndQueue>:
;     {
 805637e: b580         	push	{r7, lr}
 8056380: 466f         	mov	r7, sp
 8056382: b082         	sub	sp, #0x8
;         taskENTER_CRITICAL();
 8056384: f000 ffe6    	bl	0x8057354 <vPortEnterCritical> @ imm = #0xfcc
;             if( xTimerQueue == NULL )
 8056388: f240 20e8    	movw	r0, #0x2e8
 805638c: f2c2 0000    	movt	r0, #0x2000
 8056390: 6800         	ldr	r0, [r0]
 8056392: bbb0         	cbnz	r0, 0x8056402 <prvCheckForValidListAndQueue+0x84> @ imm = #0x6c
 8056394: e7ff         	b	0x8056396 <prvCheckForValidListAndQueue+0x18> @ imm = #-0x2
;                 vListInitialise( &xActiveTimerList1 );
 8056396: f240 20fc    	movw	r0, #0x2fc
 805639a: f2c2 0000    	movt	r0, #0x2000
 805639e: 9000         	str	r0, [sp]
 80563a0: f7ff ff46    	bl	0x8056230 <vListInitialise> @ imm = #-0x174
;                 vListInitialise( &xActiveTimerList2 );
 80563a4: f240 3010    	movw	r0, #0x310
 80563a8: f2c2 0000    	movt	r0, #0x2000
 80563ac: 9001         	str	r0, [sp, #0x4]
 80563ae: f7ff ff3f    	bl	0x8056230 <vListInitialise> @ imm = #-0x182
 80563b2: 9900         	ldr	r1, [sp]
 80563b4: 9801         	ldr	r0, [sp, #0x4]
;                 pxCurrentTimerList = &xActiveTimerList1;
 80563b6: f240 22f0    	movw	r2, #0x2f0
 80563ba: f2c2 0200    	movt	r2, #0x2000
 80563be: 6011         	str	r1, [r2]
;                 pxOverflowTimerList = &xActiveTimerList2;
 80563c0: f240 21f4    	movw	r1, #0x2f4
 80563c4: f2c2 0100    	movt	r1, #0x2000
 80563c8: 6008         	str	r0, [r1]
 80563ca: 200a         	movs	r0, #0xa
 80563cc: 2110         	movs	r1, #0x10
 80563ce: 2200         	movs	r2, #0x0
;                     xTimerQueue = xQueueCreate( ( UBaseType_t ) configTIMER_QUEUE_LENGTH, sizeof( DaemonTaskMessage_t ) );
 80563d0: f000 fa99    	bl	0x8056906 <xQueueGenericCreate> @ imm = #0x532
 80563d4: 4601         	mov	r1, r0
 80563d6: f240 20e8    	movw	r0, #0x2e8
 80563da: f2c2 0000    	movt	r0, #0x2000
 80563de: 6001         	str	r1, [r0]
;                     if( xTimerQueue != NULL )
 80563e0: 6800         	ldr	r0, [r0]
 80563e2: b160         	cbz	r0, 0x80563fe <prvCheckForValidListAndQueue+0x80> @ imm = #0x18
 80563e4: e7ff         	b	0x80563e6 <prvCheckForValidListAndQueue+0x68> @ imm = #-0x2
;                         vQueueAddToRegistry( xTimerQueue, "TmrQ" );
 80563e6: f240 20e8    	movw	r0, #0x2e8
 80563ea: f2c2 0000    	movt	r0, #0x2000
 80563ee: 6800         	ldr	r0, [r0]
 80563f0: f248 3198    	movw	r1, #0x8398
 80563f4: f6c0 0105    	movt	r1, #0x805
 80563f8: f000 fc48    	bl	0x8056c8c <vQueueAddToRegistry> @ imm = #0x890
;                     }
 80563fc: e000         	b	0x8056400 <prvCheckForValidListAndQueue+0x82> @ imm = #0x0
 80563fe: e7ff         	b	0x8056400 <prvCheckForValidListAndQueue+0x82> @ imm = #-0x2
;             }
 8056400: e000         	b	0x8056404 <prvCheckForValidListAndQueue+0x86> @ imm = #0x0
 8056402: e7ff         	b	0x8056404 <prvCheckForValidListAndQueue+0x86> @ imm = #-0x2
;         taskEXIT_CRITICAL();
 8056404: f000 ffb6    	bl	0x8057374 <vPortExitCritical> @ imm = #0xf6c
;     }
 8056408: b002         	add	sp, #0x8
 805640a: bd80         	pop	{r7, pc}

0805640c <prvTimerTask>:
;     {
 805640c: b580         	push	{r7, lr}
 805640e: 466f         	mov	r7, sp
 8056410: b084         	sub	sp, #0x10
 8056412: 9003         	str	r0, [sp, #0xc]
;         for( ; configCONTROL_INFINITE_LOOP(); )
 8056414: e7ff         	b	0x8056416 <prvTimerTask+0xa> @ imm = #-0x2
 8056416: a801         	add	r0, sp, #0x4
;             xNextExpireTime = prvGetNextExpireTime( &xListWasEmpty );
 8056418: f000 f808    	bl	0x805642c <prvGetNextExpireTime> @ imm = #0x10
 805641c: 9002         	str	r0, [sp, #0x8]
;             prvProcessTimerOrBlockTask( xNextExpireTime, xListWasEmpty );
 805641e: 9802         	ldr	r0, [sp, #0x8]
 8056420: 9901         	ldr	r1, [sp, #0x4]
 8056422: f000 f823    	bl	0x805646c <prvProcessTimerOrBlockTask> @ imm = #0x46
;             prvProcessReceivedCommands();
 8056426: f000 f866    	bl	0x80564f6 <prvProcessReceivedCommands> @ imm = #0xcc
;         for( ; configCONTROL_INFINITE_LOOP(); )
 805642a: e7f4         	b	0x8056416 <prvTimerTask+0xa> @ imm = #-0x18

0805642c <prvGetNextExpireTime>:
;     {
 805642c: b082         	sub	sp, #0x8
 805642e: 9001         	str	r0, [sp, #0x4]
;         *pxListWasEmpty = listLIST_IS_EMPTY( pxCurrentTimerList );
 8056430: f240 20f0    	movw	r0, #0x2f0
 8056434: f2c2 0000    	movt	r0, #0x2000
 8056438: 6800         	ldr	r0, [r0]
 805643a: 6800         	ldr	r0, [r0]
 805643c: fab0 f080    	clz	r0, r0
 8056440: 0940         	lsrs	r0, r0, #0x5
 8056442: 9901         	ldr	r1, [sp, #0x4]
 8056444: 6008         	str	r0, [r1]
;         if( *pxListWasEmpty == pdFALSE )
 8056446: 9801         	ldr	r0, [sp, #0x4]
 8056448: 6800         	ldr	r0, [r0]
 805644a: b948         	cbnz	r0, 0x8056460 <prvGetNextExpireTime+0x34> @ imm = #0x12
 805644c: e7ff         	b	0x805644e <prvGetNextExpireTime+0x22> @ imm = #-0x2
;             xNextExpireTime = listGET_ITEM_VALUE_OF_HEAD_ENTRY( pxCurrentTimerList );
 805644e: f240 20f0    	movw	r0, #0x2f0
 8056452: f2c2 0000    	movt	r0, #0x2000
 8056456: 6800         	ldr	r0, [r0]
 8056458: 68c0         	ldr	r0, [r0, #0xc]
 805645a: 6800         	ldr	r0, [r0]
 805645c: 9000         	str	r0, [sp]
;         }
 805645e: e002         	b	0x8056466 <prvGetNextExpireTime+0x3a> @ imm = #0x4
 8056460: 2000         	movs	r0, #0x0
;             xNextExpireTime = ( TickType_t ) 0U;
 8056462: 9000         	str	r0, [sp]
 8056464: e7ff         	b	0x8056466 <prvGetNextExpireTime+0x3a> @ imm = #-0x2
;         return xNextExpireTime;
 8056466: 9800         	ldr	r0, [sp]
 8056468: b002         	add	sp, #0x8
 805646a: 4770         	bx	lr

0805646c <prvProcessTimerOrBlockTask>:
;     {
 805646c: b580         	push	{r7, lr}
 805646e: 466f         	mov	r7, sp
 8056470: b084         	sub	sp, #0x10
 8056472: 9003         	str	r0, [sp, #0xc]
 8056474: 9102         	str	r1, [sp, #0x8]
;         vTaskSuspendAll();
 8056476: f7ff f811    	bl	0x805549c <vTaskSuspendAll> @ imm = #-0xfde
 805647a: 4668         	mov	r0, sp
;             xTimeNow = prvSampleTimeNow( &xTimerListsWereSwitched );
 805647c: f000 f8fe    	bl	0x805667c <prvSampleTimeNow> @ imm = #0x1fc
 8056480: 9001         	str	r0, [sp, #0x4]
;             if( xTimerListsWereSwitched == pdFALSE )
 8056482: 9800         	ldr	r0, [sp]
 8056484: bb90         	cbnz	r0, 0x80564ec <prvProcessTimerOrBlockTask+0x80> @ imm = #0x64
 8056486: e7ff         	b	0x8056488 <prvProcessTimerOrBlockTask+0x1c> @ imm = #-0x2
;                 if( ( xListWasEmpty == pdFALSE ) && ( xNextExpireTime <= xTimeNow ) )
 8056488: 9802         	ldr	r0, [sp, #0x8]
 805648a: b960         	cbnz	r0, 0x80564a6 <prvProcessTimerOrBlockTask+0x3a> @ imm = #0x18
 805648c: e7ff         	b	0x805648e <prvProcessTimerOrBlockTask+0x22> @ imm = #-0x2
 805648e: 9803         	ldr	r0, [sp, #0xc]
 8056490: 9901         	ldr	r1, [sp, #0x4]
 8056492: 4288         	cmp	r0, r1
 8056494: d807         	bhi	0x80564a6 <prvProcessTimerOrBlockTask+0x3a> @ imm = #0xe
 8056496: e7ff         	b	0x8056498 <prvProcessTimerOrBlockTask+0x2c> @ imm = #-0x2
;                     ( void ) xTaskResumeAll();
 8056498: f7ff f888    	bl	0x80555ac <xTaskResumeAll> @ imm = #-0xef0
;                     prvProcessExpiredTimer( xNextExpireTime, xTimeNow );
 805649c: 9803         	ldr	r0, [sp, #0xc]
 805649e: 9901         	ldr	r1, [sp, #0x4]
 80564a0: f000 f90f    	bl	0x80566c2 <prvProcessExpiredTimer> @ imm = #0x21e
;                 }
 80564a4: e021         	b	0x80564ea <prvProcessTimerOrBlockTask+0x7e> @ imm = #0x42
;                     if( xListWasEmpty != pdFALSE )
 80564a6: 9802         	ldr	r0, [sp, #0x8]
 80564a8: b158         	cbz	r0, 0x80564c2 <prvProcessTimerOrBlockTask+0x56> @ imm = #0x16
 80564aa: e7ff         	b	0x80564ac <prvProcessTimerOrBlockTask+0x40> @ imm = #-0x2
;                         xListWasEmpty = listLIST_IS_EMPTY( pxOverflowTimerList );
 80564ac: f240 20f4    	movw	r0, #0x2f4
 80564b0: f2c2 0000    	movt	r0, #0x2000
 80564b4: 6800         	ldr	r0, [r0]
 80564b6: 6800         	ldr	r0, [r0]
 80564b8: fab0 f080    	clz	r0, r0
 80564bc: 0940         	lsrs	r0, r0, #0x5
 80564be: 9002         	str	r0, [sp, #0x8]
;                     }
 80564c0: e7ff         	b	0x80564c2 <prvProcessTimerOrBlockTask+0x56> @ imm = #-0x2
;                     vQueueWaitForMessageRestricted( xTimerQueue, ( xNextExpireTime - xTimeNow ), xListWasEmpty );
 80564c2: f240 20e8    	movw	r0, #0x2e8
 80564c6: f2c2 0000    	movt	r0, #0x2000
 80564ca: 6800         	ldr	r0, [r0]
 80564cc: 9903         	ldr	r1, [sp, #0xc]
 80564ce: 9a01         	ldr	r2, [sp, #0x4]
 80564d0: 1a89         	subs	r1, r1, r2
 80564d2: 9a02         	ldr	r2, [sp, #0x8]
 80564d4: f000 fc30    	bl	0x8056d38 <vQueueWaitForMessageRestricted> @ imm = #0x860
;                     if( xTaskResumeAll() == pdFALSE )
 80564d8: f7ff f868    	bl	0x80555ac <xTaskResumeAll> @ imm = #-0xf30
 80564dc: b918         	cbnz	r0, 0x80564e6 <prvProcessTimerOrBlockTask+0x7a> @ imm = #0x6
 80564de: e7ff         	b	0x80564e0 <prvProcessTimerOrBlockTask+0x74> @ imm = #-0x2
;                         taskYIELD_WITHIN_API();
 80564e0: f000 ff2c    	bl	0x805733c <vPortYield>  @ imm = #0xe58
;                     }
 80564e4: e000         	b	0x80564e8 <prvProcessTimerOrBlockTask+0x7c> @ imm = #0x0
 80564e6: e7ff         	b	0x80564e8 <prvProcessTimerOrBlockTask+0x7c> @ imm = #-0x2
 80564e8: e7ff         	b	0x80564ea <prvProcessTimerOrBlockTask+0x7e> @ imm = #-0x2
;             }
 80564ea: e002         	b	0x80564f2 <prvProcessTimerOrBlockTask+0x86> @ imm = #0x4
;                 ( void ) xTaskResumeAll();
 80564ec: f7ff f85e    	bl	0x80555ac <xTaskResumeAll> @ imm = #-0xf44
 80564f0: e7ff         	b	0x80564f2 <prvProcessTimerOrBlockTask+0x86> @ imm = #-0x2
;     }
 80564f2: b004         	add	sp, #0x10
 80564f4: bd80         	pop	{r7, pc}

080564f6 <prvProcessReceivedCommands>:
;     {
 80564f6: b580         	push	{r7, lr}
 80564f8: 466f         	mov	r7, sp
 80564fa: b08a         	sub	sp, #0x28
;         while( xQueueReceive( xTimerQueue, &xMessage, tmrNO_DELAY ) != pdFAIL ) /*lint !e603 xMessage does not have to be initialised as it is passed out, not in, and it is not used unless xQueueReceive() returns pdTRUE. */
 80564fc: e7ff         	b	0x80564fe <prvProcessReceivedCommands+0x8> @ imm = #-0x2
 80564fe: f240 20e8    	movw	r0, #0x2e8
 8056502: f2c2 0000    	movt	r0, #0x2000
 8056506: 6800         	ldr	r0, [r0]
 8056508: a906         	add	r1, sp, #0x18
 805650a: 2200         	movs	r2, #0x0
 805650c: f000 fabf    	bl	0x8056a8e <xQueueReceive> @ imm = #0x57e
 8056510: 2800         	cmp	r0, #0x0
 8056512: f000 80b1    	beq.w	0x8056678 <prvProcessReceivedCommands+0x182> @ imm = #0x162
 8056516: e7ff         	b	0x8056518 <prvProcessReceivedCommands+0x22> @ imm = #-0x2
;                 if( xMessage.xMessageID < ( BaseType_t ) 0 )
 8056518: 9806         	ldr	r0, [sp, #0x18]
 805651a: f1b0 3fff    	cmp.w	r0, #0xffffffff
 805651e: dc10         	bgt	0x8056542 <prvProcessReceivedCommands+0x4c> @ imm = #0x20
 8056520: e7ff         	b	0x8056522 <prvProcessReceivedCommands+0x2c> @ imm = #-0x2
 8056522: a806         	add	r0, sp, #0x18
;                     const CallbackParameters_t * const pxCallback = &( xMessage.u.xCallbackParameters );
 8056524: 3004         	adds	r0, #0x4
 8056526: 9002         	str	r0, [sp, #0x8]
;                     configASSERT( pxCallback );
 8056528: 9802         	ldr	r0, [sp, #0x8]
 805652a: b920         	cbnz	r0, 0x8056536 <prvProcessReceivedCommands+0x40> @ imm = #0x8
 805652c: e7ff         	b	0x805652e <prvProcessReceivedCommands+0x38> @ imm = #-0x2
 805652e: f001 f8b4    	bl	0x805769a <ulSetInterruptMask> @ imm = #0x1168
 8056532: e7ff         	b	0x8056534 <prvProcessReceivedCommands+0x3e> @ imm = #-0x2
 8056534: e7fe         	b	0x8056534 <prvProcessReceivedCommands+0x3e> @ imm = #-0x4
;                     pxCallback->pxCallbackFunction( pxCallback->pvParameter1, pxCallback->ulParameter2 );
 8056536: 9902         	ldr	r1, [sp, #0x8]
 8056538: 680a         	ldr	r2, [r1]
 805653a: 6848         	ldr	r0, [r1, #0x4]
 805653c: 6889         	ldr	r1, [r1, #0x8]
 805653e: 4790         	blx	r2
;                 }
 8056540: e000         	b	0x8056544 <prvProcessReceivedCommands+0x4e> @ imm = #0x0
 8056542: e7ff         	b	0x8056544 <prvProcessReceivedCommands+0x4e> @ imm = #-0x2
;             if( xMessage.xMessageID >= ( BaseType_t ) 0 )
 8056544: 9806         	ldr	r0, [sp, #0x18]
 8056546: 2800         	cmp	r0, #0x0
 8056548: f100 8095    	bmi.w	0x8056676 <prvProcessReceivedCommands+0x180> @ imm = #0x12a
 805654c: e7ff         	b	0x805654e <prvProcessReceivedCommands+0x58> @ imm = #-0x2
;                 pxTimer = xMessage.u.xTimerParameters.pxTimer;
 805654e: 9808         	ldr	r0, [sp, #0x20]
 8056550: 9005         	str	r0, [sp, #0x14]
;                 if( listIS_CONTAINED_WITHIN( NULL, &( pxTimer->xTimerListItem ) ) == pdFALSE ) /*lint !e961. The cast is only redundant when NULL is passed into the macro. */
 8056552: 9805         	ldr	r0, [sp, #0x14]
 8056554: 6940         	ldr	r0, [r0, #0x14]
 8056556: b128         	cbz	r0, 0x8056564 <prvProcessReceivedCommands+0x6e> @ imm = #0xa
 8056558: e7ff         	b	0x805655a <prvProcessReceivedCommands+0x64> @ imm = #-0x2
;                     ( void ) uxListRemove( &( pxTimer->xTimerListItem ) );
 805655a: 9805         	ldr	r0, [sp, #0x14]
 805655c: 3004         	adds	r0, #0x4
 805655e: f7ff feba    	bl	0x80562d6 <uxListRemove> @ imm = #-0x28c
;                 }
 8056562: e000         	b	0x8056566 <prvProcessReceivedCommands+0x70> @ imm = #0x0
 8056564: e7ff         	b	0x8056566 <prvProcessReceivedCommands+0x70> @ imm = #-0x2
 8056566: a804         	add	r0, sp, #0x10
;                 xTimeNow = prvSampleTimeNow( &xTimerListsWereSwitched );
 8056568: f000 f888    	bl	0x805667c <prvSampleTimeNow> @ imm = #0x110
 805656c: 9003         	str	r0, [sp, #0xc]
;                 switch( xMessage.xMessageID )
 805656e: 9806         	ldr	r0, [sp, #0x18]
 8056570: 9001         	str	r0, [sp, #0x4]
 8056572: 3801         	subs	r0, #0x1
 8056574: 2802         	cmp	r0, #0x2
 8056576: d319         	blo	0x80565ac <prvProcessReceivedCommands+0xb6> @ imm = #0x32
 8056578: e7ff         	b	0x805657a <prvProcessReceivedCommands+0x84> @ imm = #-0x2
 805657a: 9801         	ldr	r0, [sp, #0x4]
 805657c: 2803         	cmp	r0, #0x3
 805657e: d042         	beq	0x8056606 <prvProcessReceivedCommands+0x110> @ imm = #0x84
 8056580: e7ff         	b	0x8056582 <prvProcessReceivedCommands+0x8c> @ imm = #-0x2
 8056582: 9801         	ldr	r0, [sp, #0x4]
 8056584: 2804         	cmp	r0, #0x4
 8056586: d046         	beq	0x8056616 <prvProcessReceivedCommands+0x120> @ imm = #0x8c
 8056588: e7ff         	b	0x805658a <prvProcessReceivedCommands+0x94> @ imm = #-0x2
 805658a: 9801         	ldr	r0, [sp, #0x4]
 805658c: 2805         	cmp	r0, #0x5
 805658e: d05c         	beq	0x805664a <prvProcessReceivedCommands+0x154> @ imm = #0xb8
 8056590: e7ff         	b	0x8056592 <prvProcessReceivedCommands+0x9c> @ imm = #-0x2
 8056592: 9801         	ldr	r0, [sp, #0x4]
 8056594: 3806         	subs	r0, #0x6
 8056596: 2802         	cmp	r0, #0x2
 8056598: d308         	blo	0x80565ac <prvProcessReceivedCommands+0xb6> @ imm = #0x10
 805659a: e7ff         	b	0x805659c <prvProcessReceivedCommands+0xa6> @ imm = #-0x2
 805659c: 9801         	ldr	r0, [sp, #0x4]
 805659e: 2808         	cmp	r0, #0x8
 80565a0: d031         	beq	0x8056606 <prvProcessReceivedCommands+0x110> @ imm = #0x62
 80565a2: e7ff         	b	0x80565a4 <prvProcessReceivedCommands+0xae> @ imm = #-0x2
 80565a4: 9801         	ldr	r0, [sp, #0x4]
 80565a6: 2809         	cmp	r0, #0x9
 80565a8: d035         	beq	0x8056616 <prvProcessReceivedCommands+0x120> @ imm = #0x6a
 80565aa: e062         	b	0x8056672 <prvProcessReceivedCommands+0x17c> @ imm = #0xc4
;                         pxTimer->ucStatus |= ( uint8_t ) tmrSTATUS_IS_ACTIVE;
 80565ac: 9905         	ldr	r1, [sp, #0x14]
 80565ae: f891 0028    	ldrb.w	r0, [r1, #0x28]
 80565b2: f040 0001    	orr	r0, r0, #0x1
 80565b6: f881 0028    	strb.w	r0, [r1, #0x28]
;                         if( prvInsertTimerInActiveList( pxTimer, xMessage.u.xTimerParameters.xMessageValue + pxTimer->xTimerPeriodInTicks, xTimeNow, xMessage.u.xTimerParameters.xMessageValue ) != pdFALSE )
 80565ba: 9805         	ldr	r0, [sp, #0x14]
 80565bc: 9b07         	ldr	r3, [sp, #0x1c]
 80565be: 6981         	ldr	r1, [r0, #0x18]
 80565c0: 4419         	add	r1, r3
 80565c2: 9a03         	ldr	r2, [sp, #0xc]
 80565c4: f000 f8ed    	bl	0x80567a2 <prvInsertTimerInActiveList> @ imm = #0x1da
 80565c8: b1d8         	cbz	r0, 0x8056602 <prvProcessReceivedCommands+0x10c> @ imm = #0x36
 80565ca: e7ff         	b	0x80565cc <prvProcessReceivedCommands+0xd6> @ imm = #-0x2
;                             if( ( pxTimer->ucStatus & tmrSTATUS_IS_AUTORELOAD ) != 0 )
 80565cc: 9805         	ldr	r0, [sp, #0x14]
 80565ce: f890 0028    	ldrb.w	r0, [r0, #0x28]
 80565d2: 0740         	lsls	r0, r0, #0x1d
 80565d4: 2800         	cmp	r0, #0x0
 80565d6: d508         	bpl	0x80565ea <prvProcessReceivedCommands+0xf4> @ imm = #0x10
 80565d8: e7ff         	b	0x80565da <prvProcessReceivedCommands+0xe4> @ imm = #-0x2
;                                 prvReloadTimer( pxTimer, xMessage.u.xTimerParameters.xMessageValue + pxTimer->xTimerPeriodInTicks, xTimeNow );
 80565da: 9805         	ldr	r0, [sp, #0x14]
 80565dc: 9907         	ldr	r1, [sp, #0x1c]
 80565de: 6982         	ldr	r2, [r0, #0x18]
 80565e0: 4411         	add	r1, r2
 80565e2: 9a03         	ldr	r2, [sp, #0xc]
 80565e4: f000 f8c2    	bl	0x805676c <prvReloadTimer> @ imm = #0x184
;                             }
 80565e8: e007         	b	0x80565fa <prvProcessReceivedCommands+0x104> @ imm = #0xe
;                                 pxTimer->ucStatus &= ( ( uint8_t ) ~tmrSTATUS_IS_ACTIVE );
 80565ea: 9905         	ldr	r1, [sp, #0x14]
 80565ec: f891 0028    	ldrb.w	r0, [r1, #0x28]
 80565f0: f000 00fe    	and	r0, r0, #0xfe
 80565f4: f881 0028    	strb.w	r0, [r1, #0x28]
 80565f8: e7ff         	b	0x80565fa <prvProcessReceivedCommands+0x104> @ imm = #-0x2
;                             pxTimer->pxCallbackFunction( ( TimerHandle_t ) pxTimer );
 80565fa: 9805         	ldr	r0, [sp, #0x14]
 80565fc: 6a01         	ldr	r1, [r0, #0x20]
 80565fe: 4788         	blx	r1
;                         }
 8056600: e000         	b	0x8056604 <prvProcessReceivedCommands+0x10e> @ imm = #0x0
 8056602: e7ff         	b	0x8056604 <prvProcessReceivedCommands+0x10e> @ imm = #-0x2
;                         break;
 8056604: e036         	b	0x8056674 <prvProcessReceivedCommands+0x17e> @ imm = #0x6c
;                         pxTimer->ucStatus &= ( ( uint8_t ) ~tmrSTATUS_IS_ACTIVE );
 8056606: 9905         	ldr	r1, [sp, #0x14]
 8056608: f891 0028    	ldrb.w	r0, [r1, #0x28]
 805660c: f000 00fe    	and	r0, r0, #0xfe
 8056610: f881 0028    	strb.w	r0, [r1, #0x28]
;                         break;
 8056614: e02e         	b	0x8056674 <prvProcessReceivedCommands+0x17e> @ imm = #0x5c
;                         pxTimer->ucStatus |= ( uint8_t ) tmrSTATUS_IS_ACTIVE;
 8056616: 9905         	ldr	r1, [sp, #0x14]
 8056618: f891 0028    	ldrb.w	r0, [r1, #0x28]
 805661c: f040 0001    	orr	r0, r0, #0x1
 8056620: f881 0028    	strb.w	r0, [r1, #0x28]
;                         pxTimer->xTimerPeriodInTicks = xMessage.u.xTimerParameters.xMessageValue;
 8056624: 9807         	ldr	r0, [sp, #0x1c]
 8056626: 9905         	ldr	r1, [sp, #0x14]
 8056628: 6188         	str	r0, [r1, #0x18]
;                         configASSERT( ( pxTimer->xTimerPeriodInTicks > 0 ) );
 805662a: 9805         	ldr	r0, [sp, #0x14]
 805662c: 6980         	ldr	r0, [r0, #0x18]
 805662e: b920         	cbnz	r0, 0x805663a <prvProcessReceivedCommands+0x144> @ imm = #0x8
 8056630: e7ff         	b	0x8056632 <prvProcessReceivedCommands+0x13c> @ imm = #-0x2
 8056632: f001 f832    	bl	0x805769a <ulSetInterruptMask> @ imm = #0x1064
 8056636: e7ff         	b	0x8056638 <prvProcessReceivedCommands+0x142> @ imm = #-0x2
 8056638: e7fe         	b	0x8056638 <prvProcessReceivedCommands+0x142> @ imm = #-0x4
;                         ( void ) prvInsertTimerInActiveList( pxTimer, ( xTimeNow + pxTimer->xTimerPeriodInTicks ), xTimeNow, xTimeNow );
 805663a: 9805         	ldr	r0, [sp, #0x14]
 805663c: 9b03         	ldr	r3, [sp, #0xc]
 805663e: 6981         	ldr	r1, [r0, #0x18]
 8056640: 4419         	add	r1, r3
 8056642: 461a         	mov	r2, r3
 8056644: f000 f8ad    	bl	0x80567a2 <prvInsertTimerInActiveList> @ imm = #0x15a
;                         break;
 8056648: e014         	b	0x8056674 <prvProcessReceivedCommands+0x17e> @ imm = #0x28
;                             if( ( pxTimer->ucStatus & tmrSTATUS_IS_STATICALLY_ALLOCATED ) == ( uint8_t ) 0 )
 805664a: 9805         	ldr	r0, [sp, #0x14]
 805664c: f890 0028    	ldrb.w	r0, [r0, #0x28]
 8056650: 0780         	lsls	r0, r0, #0x1e
 8056652: 2800         	cmp	r0, #0x0
 8056654: d404         	bmi	0x8056660 <prvProcessReceivedCommands+0x16a> @ imm = #0x8
 8056656: e7ff         	b	0x8056658 <prvProcessReceivedCommands+0x162> @ imm = #-0x2
;                                 vPortFree( pxTimer );
 8056658: 9805         	ldr	r0, [sp, #0x14]
 805665a: f000 fd4e    	bl	0x80570fa <vPortFree>   @ imm = #0xa9c
;                             }
 805665e: e007         	b	0x8056670 <prvProcessReceivedCommands+0x17a> @ imm = #0xe
;                                 pxTimer->ucStatus &= ( ( uint8_t ) ~tmrSTATUS_IS_ACTIVE );
 8056660: 9905         	ldr	r1, [sp, #0x14]
 8056662: f891 0028    	ldrb.w	r0, [r1, #0x28]
 8056666: f000 00fe    	and	r0, r0, #0xfe
 805666a: f881 0028    	strb.w	r0, [r1, #0x28]
 805666e: e7ff         	b	0x8056670 <prvProcessReceivedCommands+0x17a> @ imm = #-0x2
;                         break;
 8056670: e000         	b	0x8056674 <prvProcessReceivedCommands+0x17e> @ imm = #0x0
;                         break;
 8056672: e7ff         	b	0x8056674 <prvProcessReceivedCommands+0x17e> @ imm = #-0x2
;             }
 8056674: e7ff         	b	0x8056676 <prvProcessReceivedCommands+0x180> @ imm = #-0x2
;         while( xQueueReceive( xTimerQueue, &xMessage, tmrNO_DELAY ) != pdFAIL ) /*lint !e603 xMessage does not have to be initialised as it is passed out, not in, and it is not used unless xQueueReceive() returns pdTRUE. */
 8056676: e742         	b	0x80564fe <prvProcessReceivedCommands+0x8> @ imm = #-0x17c
;     }
 8056678: b00a         	add	sp, #0x28
 805667a: bd80         	pop	{r7, pc}

0805667c <prvSampleTimeNow>:
;     {
 805667c: b580         	push	{r7, lr}
 805667e: 466f         	mov	r7, sp
 8056680: b082         	sub	sp, #0x8
 8056682: 9001         	str	r0, [sp, #0x4]
;         xTimeNow = xTaskGetTickCount();
 8056684: f7ff fb00    	bl	0x8055c88 <xTaskGetTickCount> @ imm = #-0xa00
 8056688: 9000         	str	r0, [sp]
;         if( xTimeNow < xLastTime )
 805668a: 9800         	ldr	r0, [sp]
 805668c: f240 21f8    	movw	r1, #0x2f8
 8056690: f2c2 0100    	movt	r1, #0x2000
 8056694: 6809         	ldr	r1, [r1]
 8056696: 4288         	cmp	r0, r1
 8056698: d206         	bhs	0x80566a8 <prvSampleTimeNow+0x2c> @ imm = #0xc
 805669a: e7ff         	b	0x805669c <prvSampleTimeNow+0x20> @ imm = #-0x2
;             prvSwitchTimerLists();
 805669c: f000 f83c    	bl	0x8056718 <prvSwitchTimerLists> @ imm = #0x78
;             *pxTimerListsWereSwitched = pdTRUE;
 80566a0: 9901         	ldr	r1, [sp, #0x4]
 80566a2: 2001         	movs	r0, #0x1
 80566a4: 6008         	str	r0, [r1]
;         }
 80566a6: e003         	b	0x80566b0 <prvSampleTimeNow+0x34> @ imm = #0x6
;             *pxTimerListsWereSwitched = pdFALSE;
 80566a8: 9901         	ldr	r1, [sp, #0x4]
 80566aa: 2000         	movs	r0, #0x0
 80566ac: 6008         	str	r0, [r1]
 80566ae: e7ff         	b	0x80566b0 <prvSampleTimeNow+0x34> @ imm = #-0x2
;         xLastTime = xTimeNow;
 80566b0: 9800         	ldr	r0, [sp]
 80566b2: f240 21f8    	movw	r1, #0x2f8
 80566b6: f2c2 0100    	movt	r1, #0x2000
 80566ba: 6008         	str	r0, [r1]
;         return xTimeNow;
 80566bc: 9800         	ldr	r0, [sp]
 80566be: b002         	add	sp, #0x8
 80566c0: bd80         	pop	{r7, pc}

080566c2 <prvProcessExpiredTimer>:
;     {
 80566c2: b580         	push	{r7, lr}
 80566c4: 466f         	mov	r7, sp
 80566c6: b084         	sub	sp, #0x10
 80566c8: 9003         	str	r0, [sp, #0xc]
 80566ca: 9102         	str	r1, [sp, #0x8]
;         Timer_t * const pxTimer = ( Timer_t * ) listGET_OWNER_OF_HEAD_ENTRY( pxCurrentTimerList ); /*lint !e9087 !e9079 void * is used as this macro is used with tasks and co-routines too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
 80566cc: f240 20f0    	movw	r0, #0x2f0
 80566d0: f2c2 0000    	movt	r0, #0x2000
 80566d4: 6800         	ldr	r0, [r0]
 80566d6: 68c0         	ldr	r0, [r0, #0xc]
 80566d8: 68c0         	ldr	r0, [r0, #0xc]
 80566da: 9001         	str	r0, [sp, #0x4]
;         ( void ) uxListRemove( &( pxTimer->xTimerListItem ) );
 80566dc: 9801         	ldr	r0, [sp, #0x4]
 80566de: 3004         	adds	r0, #0x4
 80566e0: f7ff fdf9    	bl	0x80562d6 <uxListRemove> @ imm = #-0x40e
;         if( ( pxTimer->ucStatus & tmrSTATUS_IS_AUTORELOAD ) != 0 )
 80566e4: 9801         	ldr	r0, [sp, #0x4]
 80566e6: f890 0028    	ldrb.w	r0, [r0, #0x28]
 80566ea: 0740         	lsls	r0, r0, #0x1d
 80566ec: 2800         	cmp	r0, #0x0
 80566ee: d506         	bpl	0x80566fe <prvProcessExpiredTimer+0x3c> @ imm = #0xc
 80566f0: e7ff         	b	0x80566f2 <prvProcessExpiredTimer+0x30> @ imm = #-0x2
;             prvReloadTimer( pxTimer, xNextExpireTime, xTimeNow );
 80566f2: 9801         	ldr	r0, [sp, #0x4]
 80566f4: 9903         	ldr	r1, [sp, #0xc]
 80566f6: 9a02         	ldr	r2, [sp, #0x8]
 80566f8: f000 f838    	bl	0x805676c <prvReloadTimer> @ imm = #0x70
;         }
 80566fc: e007         	b	0x805670e <prvProcessExpiredTimer+0x4c> @ imm = #0xe
;             pxTimer->ucStatus &= ( ( uint8_t ) ~tmrSTATUS_IS_ACTIVE );
 80566fe: 9901         	ldr	r1, [sp, #0x4]
 8056700: f891 0028    	ldrb.w	r0, [r1, #0x28]
 8056704: f000 00fe    	and	r0, r0, #0xfe
 8056708: f881 0028    	strb.w	r0, [r1, #0x28]
 805670c: e7ff         	b	0x805670e <prvProcessExpiredTimer+0x4c> @ imm = #-0x2
;         pxTimer->pxCallbackFunction( ( TimerHandle_t ) pxTimer );
 805670e: 9801         	ldr	r0, [sp, #0x4]
 8056710: 6a01         	ldr	r1, [r0, #0x20]
 8056712: 4788         	blx	r1
;     }
 8056714: b004         	add	sp, #0x10
 8056716: bd80         	pop	{r7, pc}

08056718 <prvSwitchTimerLists>:
;     {
 8056718: b580         	push	{r7, lr}
 805671a: 466f         	mov	r7, sp
 805671c: b082         	sub	sp, #0x8
;         while( listLIST_IS_EMPTY( pxCurrentTimerList ) == pdFALSE )
 805671e: e7ff         	b	0x8056720 <prvSwitchTimerLists+0x8> @ imm = #-0x2
 8056720: f240 20f0    	movw	r0, #0x2f0
 8056724: f2c2 0000    	movt	r0, #0x2000
 8056728: 6800         	ldr	r0, [r0]
 805672a: 6800         	ldr	r0, [r0]
 805672c: b170         	cbz	r0, 0x805674c <prvSwitchTimerLists+0x34> @ imm = #0x1c
 805672e: e7ff         	b	0x8056730 <prvSwitchTimerLists+0x18> @ imm = #-0x2
;             xNextExpireTime = listGET_ITEM_VALUE_OF_HEAD_ENTRY( pxCurrentTimerList );
 8056730: f240 20f0    	movw	r0, #0x2f0
 8056734: f2c2 0000    	movt	r0, #0x2000
 8056738: 6800         	ldr	r0, [r0]
 805673a: 68c0         	ldr	r0, [r0, #0xc]
 805673c: 6800         	ldr	r0, [r0]
 805673e: 9001         	str	r0, [sp, #0x4]
;             prvProcessExpiredTimer( xNextExpireTime, tmrMAX_TIME_BEFORE_OVERFLOW );
 8056740: 9801         	ldr	r0, [sp, #0x4]
 8056742: f04f 31ff    	mov.w	r1, #0xffffffff
 8056746: f7ff ffbc    	bl	0x80566c2 <prvProcessExpiredTimer> @ imm = #-0x88
;         while( listLIST_IS_EMPTY( pxCurrentTimerList ) == pdFALSE )
 805674a: e7e9         	b	0x8056720 <prvSwitchTimerLists+0x8> @ imm = #-0x2e
;         pxTemp = pxCurrentTimerList;
 805674c: f240 22f0    	movw	r2, #0x2f0
 8056750: f2c2 0200    	movt	r2, #0x2000
 8056754: 6810         	ldr	r0, [r2]
 8056756: 9000         	str	r0, [sp]
;         pxCurrentTimerList = pxOverflowTimerList;
 8056758: f240 21f4    	movw	r1, #0x2f4
 805675c: f2c2 0100    	movt	r1, #0x2000
 8056760: 6808         	ldr	r0, [r1]
 8056762: 6010         	str	r0, [r2]
;         pxOverflowTimerList = pxTemp;
 8056764: 9800         	ldr	r0, [sp]
 8056766: 6008         	str	r0, [r1]
;     }
 8056768: b002         	add	sp, #0x8
 805676a: bd80         	pop	{r7, pc}

0805676c <prvReloadTimer>:
;     {
 805676c: b580         	push	{r7, lr}
 805676e: 466f         	mov	r7, sp
 8056770: b084         	sub	sp, #0x10
 8056772: 9003         	str	r0, [sp, #0xc]
 8056774: 9102         	str	r1, [sp, #0x8]
 8056776: 9201         	str	r2, [sp, #0x4]
;         while( prvInsertTimerInActiveList( pxTimer, ( xExpiredTime + pxTimer->xTimerPeriodInTicks ), xTimeNow, xExpiredTime ) != pdFALSE )
 8056778: e7ff         	b	0x805677a <prvReloadTimer+0xe> @ imm = #-0x2
 805677a: 9803         	ldr	r0, [sp, #0xc]
 805677c: 9b02         	ldr	r3, [sp, #0x8]
 805677e: 6981         	ldr	r1, [r0, #0x18]
 8056780: 4419         	add	r1, r3
 8056782: 9a01         	ldr	r2, [sp, #0x4]
 8056784: f000 f80d    	bl	0x80567a2 <prvInsertTimerInActiveList> @ imm = #0x1a
 8056788: b148         	cbz	r0, 0x805679e <prvReloadTimer+0x32> @ imm = #0x12
 805678a: e7ff         	b	0x805678c <prvReloadTimer+0x20> @ imm = #-0x2
;             xExpiredTime += pxTimer->xTimerPeriodInTicks;
 805678c: 9803         	ldr	r0, [sp, #0xc]
 805678e: 6981         	ldr	r1, [r0, #0x18]
 8056790: 9802         	ldr	r0, [sp, #0x8]
 8056792: 4408         	add	r0, r1
 8056794: 9002         	str	r0, [sp, #0x8]
;             pxTimer->pxCallbackFunction( ( TimerHandle_t ) pxTimer );
 8056796: 9803         	ldr	r0, [sp, #0xc]
 8056798: 6a01         	ldr	r1, [r0, #0x20]
 805679a: 4788         	blx	r1
;         while( prvInsertTimerInActiveList( pxTimer, ( xExpiredTime + pxTimer->xTimerPeriodInTicks ), xTimeNow, xExpiredTime ) != pdFALSE )
 805679c: e7ed         	b	0x805677a <prvReloadTimer+0xe> @ imm = #-0x26
;     }
 805679e: b004         	add	sp, #0x10
 80567a0: bd80         	pop	{r7, pc}

080567a2 <prvInsertTimerInActiveList>:
;     {
 80567a2: b580         	push	{r7, lr}
 80567a4: 466f         	mov	r7, sp
 80567a6: b086         	sub	sp, #0x18
 80567a8: 9005         	str	r0, [sp, #0x14]
 80567aa: 9104         	str	r1, [sp, #0x10]
 80567ac: 9203         	str	r2, [sp, #0xc]
 80567ae: 9302         	str	r3, [sp, #0x8]
 80567b0: 2000         	movs	r0, #0x0
;         BaseType_t xProcessTimerNow = pdFALSE;
 80567b2: 9001         	str	r0, [sp, #0x4]
;         listSET_LIST_ITEM_VALUE( &( pxTimer->xTimerListItem ), xNextExpiryTime );
 80567b4: 9804         	ldr	r0, [sp, #0x10]
 80567b6: 9905         	ldr	r1, [sp, #0x14]
 80567b8: 6048         	str	r0, [r1, #0x4]
;         listSET_LIST_ITEM_OWNER( &( pxTimer->xTimerListItem ), pxTimer );
 80567ba: 9805         	ldr	r0, [sp, #0x14]
 80567bc: 6100         	str	r0, [r0, #0x10]
;         if( xNextExpiryTime <= xTimeNow )
 80567be: 9804         	ldr	r0, [sp, #0x10]
 80567c0: 9903         	ldr	r1, [sp, #0xc]
 80567c2: 4288         	cmp	r0, r1
 80567c4: d816         	bhi	0x80567f4 <prvInsertTimerInActiveList+0x52> @ imm = #0x2c
 80567c6: e7ff         	b	0x80567c8 <prvInsertTimerInActiveList+0x26> @ imm = #-0x2
;             if( ( ( TickType_t ) ( xTimeNow - xCommandTime ) ) >= pxTimer->xTimerPeriodInTicks ) /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
 80567c8: 9803         	ldr	r0, [sp, #0xc]
 80567ca: 9902         	ldr	r1, [sp, #0x8]
 80567cc: 1a40         	subs	r0, r0, r1
 80567ce: 9905         	ldr	r1, [sp, #0x14]
 80567d0: 6989         	ldr	r1, [r1, #0x18]
 80567d2: 4288         	cmp	r0, r1
 80567d4: d303         	blo	0x80567de <prvInsertTimerInActiveList+0x3c> @ imm = #0x6
 80567d6: e7ff         	b	0x80567d8 <prvInsertTimerInActiveList+0x36> @ imm = #-0x2
 80567d8: 2001         	movs	r0, #0x1
;                 xProcessTimerNow = pdTRUE;
 80567da: 9001         	str	r0, [sp, #0x4]
;             }
 80567dc: e009         	b	0x80567f2 <prvInsertTimerInActiveList+0x50> @ imm = #0x12
;                 vListInsert( pxOverflowTimerList, &( pxTimer->xTimerListItem ) );
 80567de: f240 20f4    	movw	r0, #0x2f4
 80567e2: f2c2 0000    	movt	r0, #0x2000
 80567e6: 6800         	ldr	r0, [r0]
 80567e8: 9905         	ldr	r1, [sp, #0x14]
 80567ea: 3104         	adds	r1, #0x4
 80567ec: f7ff fd3e    	bl	0x805626c <vListInsert> @ imm = #-0x584
 80567f0: e7ff         	b	0x80567f2 <prvInsertTimerInActiveList+0x50> @ imm = #-0x2
;         }
 80567f2: e017         	b	0x8056824 <prvInsertTimerInActiveList+0x82> @ imm = #0x2e
;             if( ( xTimeNow < xCommandTime ) && ( xNextExpiryTime >= xCommandTime ) )
 80567f4: 9803         	ldr	r0, [sp, #0xc]
 80567f6: 9902         	ldr	r1, [sp, #0x8]
 80567f8: 4288         	cmp	r0, r1
 80567fa: d208         	bhs	0x805680e <prvInsertTimerInActiveList+0x6c> @ imm = #0x10
 80567fc: e7ff         	b	0x80567fe <prvInsertTimerInActiveList+0x5c> @ imm = #-0x2
 80567fe: 9804         	ldr	r0, [sp, #0x10]
 8056800: 9902         	ldr	r1, [sp, #0x8]
 8056802: 4288         	cmp	r0, r1
 8056804: d303         	blo	0x805680e <prvInsertTimerInActiveList+0x6c> @ imm = #0x6
 8056806: e7ff         	b	0x8056808 <prvInsertTimerInActiveList+0x66> @ imm = #-0x2
 8056808: 2001         	movs	r0, #0x1
;                 xProcessTimerNow = pdTRUE;
 805680a: 9001         	str	r0, [sp, #0x4]
;             }
 805680c: e009         	b	0x8056822 <prvInsertTimerInActiveList+0x80> @ imm = #0x12
;                 vListInsert( pxCurrentTimerList, &( pxTimer->xTimerListItem ) );
 805680e: f240 20f0    	movw	r0, #0x2f0
 8056812: f2c2 0000    	movt	r0, #0x2000
 8056816: 6800         	ldr	r0, [r0]
 8056818: 9905         	ldr	r1, [sp, #0x14]
 805681a: 3104         	adds	r1, #0x4
 805681c: f7ff fd26    	bl	0x805626c <vListInsert> @ imm = #-0x5b4
 8056820: e7ff         	b	0x8056822 <prvInsertTimerInActiveList+0x80> @ imm = #-0x2
 8056822: e7ff         	b	0x8056824 <prvInsertTimerInActiveList+0x82> @ imm = #-0x2
;         return xProcessTimerNow;
 8056824: 9801         	ldr	r0, [sp, #0x4]
 8056826: b006         	add	sp, #0x18
 8056828: bd80         	pop	{r7, pc}

0805682a <xQueueGenericReset>:
; {
 805682a: b580         	push	{r7, lr}
 805682c: 466f         	mov	r7, sp
 805682e: b084         	sub	sp, #0x10
 8056830: 9003         	str	r0, [sp, #0xc]
 8056832: 9102         	str	r1, [sp, #0x8]
 8056834: 2001         	movs	r0, #0x1
;     BaseType_t xReturn = pdPASS;
 8056836: 9001         	str	r0, [sp, #0x4]
;     Queue_t * const pxQueue = xQueue;
 8056838: 9803         	ldr	r0, [sp, #0xc]
 805683a: 9000         	str	r0, [sp]
;     configASSERT( pxQueue );
 805683c: 9800         	ldr	r0, [sp]
 805683e: b920         	cbnz	r0, 0x805684a <xQueueGenericReset+0x20> @ imm = #0x8
 8056840: e7ff         	b	0x8056842 <xQueueGenericReset+0x18> @ imm = #-0x2
 8056842: f000 ff2a    	bl	0x805769a <ulSetInterruptMask> @ imm = #0xe54
 8056846: e7ff         	b	0x8056848 <xQueueGenericReset+0x1e> @ imm = #-0x2
 8056848: e7fe         	b	0x8056848 <xQueueGenericReset+0x1e> @ imm = #-0x4
;     if( ( pxQueue != NULL ) &&
 805684a: 9800         	ldr	r0, [sp]
 805684c: 2800         	cmp	r0, #0x0
 805684e: d04d         	beq	0x80568ec <xQueueGenericReset+0xc2> @ imm = #0x9a
 8056850: e7ff         	b	0x8056852 <xQueueGenericReset+0x28> @ imm = #-0x2
;         ( pxQueue->uxLength >= 1U ) &&
 8056852: 9800         	ldr	r0, [sp]
 8056854: 6bc0         	ldr	r0, [r0, #0x3c]
 8056856: 2800         	cmp	r0, #0x0
 8056858: d048         	beq	0x80568ec <xQueueGenericReset+0xc2> @ imm = #0x90
 805685a: e7ff         	b	0x805685c <xQueueGenericReset+0x32> @ imm = #-0x2
;         ( ( SIZE_MAX / pxQueue->uxLength ) >= pxQueue->uxItemSize ) )
 805685c: 9800         	ldr	r0, [sp]
 805685e: 6bc2         	ldr	r2, [r0, #0x3c]
 8056860: 6c01         	ldr	r1, [r0, #0x40]
 8056862: f04f 30ff    	mov.w	r0, #0xffffffff
 8056866: fbb0 f0f2    	udiv	r0, r0, r2
;     if( ( pxQueue != NULL ) &&
 805686a: 4288         	cmp	r0, r1
 805686c: d33e         	blo	0x80568ec <xQueueGenericReset+0xc2> @ imm = #0x7c
 805686e: e7ff         	b	0x8056870 <xQueueGenericReset+0x46> @ imm = #-0x2
;         taskENTER_CRITICAL();
 8056870: f000 fd70    	bl	0x8057354 <vPortEnterCritical> @ imm = #0xae0
;             pxQueue->u.xQueue.pcTail = pxQueue->pcHead + ( pxQueue->uxLength * pxQueue->uxItemSize ); /*lint !e9016 Pointer arithmetic allowed on char types, especially when it assists conveying intent. */
 8056874: 9900         	ldr	r1, [sp]
 8056876: 680b         	ldr	r3, [r1]
 8056878: 6bc8         	ldr	r0, [r1, #0x3c]
 805687a: 6c0a         	ldr	r2, [r1, #0x40]
 805687c: fb00 3002    	mla	r0, r0, r2, r3
 8056880: 6088         	str	r0, [r1, #0x8]
;             pxQueue->uxMessagesWaiting = ( UBaseType_t ) 0U;
 8056882: 9900         	ldr	r1, [sp]
 8056884: 2000         	movs	r0, #0x0
 8056886: 6388         	str	r0, [r1, #0x38]
;             pxQueue->pcWriteTo = pxQueue->pcHead;
 8056888: 9900         	ldr	r1, [sp]
 805688a: 6808         	ldr	r0, [r1]
 805688c: 6048         	str	r0, [r1, #0x4]
;             pxQueue->u.xQueue.pcReadFrom = pxQueue->pcHead + ( ( pxQueue->uxLength - 1U ) * pxQueue->uxItemSize ); /*lint !e9016 Pointer arithmetic allowed on char types, especially when it assists conveying intent. */
 805688e: 9900         	ldr	r1, [sp]
 8056890: 680b         	ldr	r3, [r1]
 8056892: 6bc8         	ldr	r0, [r1, #0x3c]
 8056894: 6c0a         	ldr	r2, [r1, #0x40]
 8056896: 3801         	subs	r0, #0x1
 8056898: fb00 3002    	mla	r0, r0, r2, r3
 805689c: 60c8         	str	r0, [r1, #0xc]
;             pxQueue->cRxLock = queueUNLOCKED;
 805689e: 9900         	ldr	r1, [sp]
 80568a0: 20ff         	movs	r0, #0xff
 80568a2: f881 0044    	strb.w	r0, [r1, #0x44]
;             pxQueue->cTxLock = queueUNLOCKED;
 80568a6: 9900         	ldr	r1, [sp]
 80568a8: f881 0045    	strb.w	r0, [r1, #0x45]
;             if( xNewQueue == pdFALSE )
 80568ac: 9802         	ldr	r0, [sp, #0x8]
 80568ae: b988         	cbnz	r0, 0x80568d4 <xQueueGenericReset+0xaa> @ imm = #0x22
 80568b0: e7ff         	b	0x80568b2 <xQueueGenericReset+0x88> @ imm = #-0x2
;                 if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
 80568b2: 9800         	ldr	r0, [sp]
 80568b4: 6900         	ldr	r0, [r0, #0x10]
 80568b6: b158         	cbz	r0, 0x80568d0 <xQueueGenericReset+0xa6> @ imm = #0x16
 80568b8: e7ff         	b	0x80568ba <xQueueGenericReset+0x90> @ imm = #-0x2
;                     if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
 80568ba: 9800         	ldr	r0, [sp]
 80568bc: 3010         	adds	r0, #0x10
 80568be: f7ff fa42    	bl	0x8055d46 <xTaskRemoveFromEventList> @ imm = #-0xb7c
 80568c2: b118         	cbz	r0, 0x80568cc <xQueueGenericReset+0xa2> @ imm = #0x6
 80568c4: e7ff         	b	0x80568c6 <xQueueGenericReset+0x9c> @ imm = #-0x2
;                         queueYIELD_IF_USING_PREEMPTION();
 80568c6: f000 fd39    	bl	0x805733c <vPortYield>  @ imm = #0xa72
;                     }
 80568ca: e000         	b	0x80568ce <xQueueGenericReset+0xa4> @ imm = #0x0
 80568cc: e7ff         	b	0x80568ce <xQueueGenericReset+0xa4> @ imm = #-0x2
;                 }
 80568ce: e000         	b	0x80568d2 <xQueueGenericReset+0xa8> @ imm = #0x0
 80568d0: e7ff         	b	0x80568d2 <xQueueGenericReset+0xa8> @ imm = #-0x2
;             }
 80568d2: e008         	b	0x80568e6 <xQueueGenericReset+0xbc> @ imm = #0x10
;                 vListInitialise( &( pxQueue->xTasksWaitingToSend ) );
 80568d4: 9800         	ldr	r0, [sp]
 80568d6: 3010         	adds	r0, #0x10
 80568d8: f7ff fcaa    	bl	0x8056230 <vListInitialise> @ imm = #-0x6ac
;                 vListInitialise( &( pxQueue->xTasksWaitingToReceive ) );
 80568dc: 9800         	ldr	r0, [sp]
 80568de: 3024         	adds	r0, #0x24
 80568e0: f7ff fca6    	bl	0x8056230 <vListInitialise> @ imm = #-0x6b4
 80568e4: e7ff         	b	0x80568e6 <xQueueGenericReset+0xbc> @ imm = #-0x2
;         taskEXIT_CRITICAL();
 80568e6: f000 fd45    	bl	0x8057374 <vPortExitCritical> @ imm = #0xa8a
;     }
 80568ea: e002         	b	0x80568f2 <xQueueGenericReset+0xc8> @ imm = #0x4
 80568ec: 2000         	movs	r0, #0x0
;         xReturn = pdFAIL;
 80568ee: 9001         	str	r0, [sp, #0x4]
 80568f0: e7ff         	b	0x80568f2 <xQueueGenericReset+0xc8> @ imm = #-0x2
;     configASSERT( xReturn != pdFAIL );
 80568f2: 9801         	ldr	r0, [sp, #0x4]
 80568f4: b920         	cbnz	r0, 0x8056900 <xQueueGenericReset+0xd6> @ imm = #0x8
 80568f6: e7ff         	b	0x80568f8 <xQueueGenericReset+0xce> @ imm = #-0x2
 80568f8: f000 fecf    	bl	0x805769a <ulSetInterruptMask> @ imm = #0xd9e
 80568fc: e7ff         	b	0x80568fe <xQueueGenericReset+0xd4> @ imm = #-0x2
 80568fe: e7fe         	b	0x80568fe <xQueueGenericReset+0xd4> @ imm = #-0x4
;     return xReturn;
 8056900: 9801         	ldr	r0, [sp, #0x4]
 8056902: b004         	add	sp, #0x10
 8056904: bd80         	pop	{r7, pc}

08056906 <xQueueGenericCreate>:
;     {
 8056906: b580         	push	{r7, lr}
 8056908: 466f         	mov	r7, sp
 805690a: b088         	sub	sp, #0x20
 805690c: 9007         	str	r0, [sp, #0x1c]
 805690e: 9106         	str	r1, [sp, #0x18]
 8056910: f807 2c09    	strb	r2, [r7, #-9]
 8056914: 2000         	movs	r0, #0x0
;         Queue_t * pxNewQueue = NULL;
 8056916: 9004         	str	r0, [sp, #0x10]
;         if( ( uxQueueLength > ( UBaseType_t ) 0 ) &&
 8056918: 9807         	ldr	r0, [sp, #0x1c]
 805691a: b380         	cbz	r0, 0x805697e <xQueueGenericCreate+0x78> @ imm = #0x60
 805691c: e7ff         	b	0x805691e <xQueueGenericCreate+0x18> @ imm = #-0x2
;             ( ( SIZE_MAX / uxQueueLength ) >= uxItemSize ) &&
 805691e: 9907         	ldr	r1, [sp, #0x1c]
 8056920: f04f 30ff    	mov.w	r0, #0xffffffff
 8056924: fbb0 f0f1    	udiv	r0, r0, r1
 8056928: 9906         	ldr	r1, [sp, #0x18]
 805692a: 4288         	cmp	r0, r1
 805692c: d327         	blo	0x805697e <xQueueGenericCreate+0x78> @ imm = #0x4e
 805692e: e7ff         	b	0x8056930 <xQueueGenericCreate+0x2a> @ imm = #-0x2
;             ( ( UBaseType_t ) ( SIZE_MAX - sizeof( Queue_t ) ) >= ( uxQueueLength * uxItemSize ) ) )
 8056930: 9807         	ldr	r0, [sp, #0x1c]
 8056932: 9906         	ldr	r1, [sp, #0x18]
 8056934: 4348         	muls	r0, r1, r0
;         if( ( uxQueueLength > ( UBaseType_t ) 0 ) &&
 8056936: f110 0f51    	cmn.w	r0, #0x51
 805693a: d820         	bhi	0x805697e <xQueueGenericCreate+0x78> @ imm = #0x40
 805693c: e7ff         	b	0x805693e <xQueueGenericCreate+0x38> @ imm = #-0x2
;             xQueueSizeInBytes = ( size_t ) ( uxQueueLength * uxItemSize ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
 805693e: 9807         	ldr	r0, [sp, #0x1c]
 8056940: 9906         	ldr	r1, [sp, #0x18]
 8056942: 4348         	muls	r0, r1, r0
 8056944: 9003         	str	r0, [sp, #0xc]
;             pxNewQueue = ( Queue_t * ) pvPortMalloc( sizeof( Queue_t ) + xQueueSizeInBytes ); /*lint !e9087 !e9079 see comment above. */
 8056946: 9803         	ldr	r0, [sp, #0xc]
 8056948: 3050         	adds	r0, #0x50
 805694a: f000 fa28    	bl	0x8056d9e <pvPortMalloc> @ imm = #0x450
 805694e: 9004         	str	r0, [sp, #0x10]
;             if( pxNewQueue != NULL )
 8056950: 9804         	ldr	r0, [sp, #0x10]
 8056952: b190         	cbz	r0, 0x805697a <xQueueGenericCreate+0x74> @ imm = #0x24
 8056954: e7ff         	b	0x8056956 <xQueueGenericCreate+0x50> @ imm = #-0x2
;                 pucQueueStorage = ( uint8_t * ) pxNewQueue;
 8056956: 9804         	ldr	r0, [sp, #0x10]
 8056958: 9002         	str	r0, [sp, #0x8]
;                 pucQueueStorage += sizeof( Queue_t ); /*lint !e9016 Pointer arithmetic allowed on char types, especially when it assists conveying intent. */
 805695a: 9802         	ldr	r0, [sp, #0x8]
 805695c: 3050         	adds	r0, #0x50
 805695e: 9002         	str	r0, [sp, #0x8]
;                 prvInitialiseNewQueue( uxQueueLength, uxItemSize, pucQueueStorage, ucQueueType, pxNewQueue );
 8056960: 9807         	ldr	r0, [sp, #0x1c]
 8056962: 9906         	ldr	r1, [sp, #0x18]
 8056964: 9a02         	ldr	r2, [sp, #0x8]
 8056966: f817 3c09    	ldrb	r3, [r7, #-9]
 805696a: f8dd c010    	ldr.w	r12, [sp, #0x10]
 805696e: 46ee         	mov	lr, sp
 8056970: f8ce c000    	str.w	r12, [lr]
 8056974: f000 f80e    	bl	0x8056994 <prvInitialiseNewQueue> @ imm = #0x1c
;             }
 8056978: e000         	b	0x805697c <xQueueGenericCreate+0x76> @ imm = #0x0
 805697a: e7ff         	b	0x805697c <xQueueGenericCreate+0x76> @ imm = #-0x2
;         }
 805697c: e007         	b	0x805698e <xQueueGenericCreate+0x88> @ imm = #0xe
;             configASSERT( pxNewQueue );
 805697e: 9804         	ldr	r0, [sp, #0x10]
 8056980: b920         	cbnz	r0, 0x805698c <xQueueGenericCreate+0x86> @ imm = #0x8
 8056982: e7ff         	b	0x8056984 <xQueueGenericCreate+0x7e> @ imm = #-0x2
 8056984: f000 fe89    	bl	0x805769a <ulSetInterruptMask> @ imm = #0xd12
 8056988: e7ff         	b	0x805698a <xQueueGenericCreate+0x84> @ imm = #-0x2
 805698a: e7fe         	b	0x805698a <xQueueGenericCreate+0x84> @ imm = #-0x4
 805698c: e7ff         	b	0x805698e <xQueueGenericCreate+0x88> @ imm = #-0x2
;         return pxNewQueue;
 805698e: 9804         	ldr	r0, [sp, #0x10]
 8056990: b008         	add	sp, #0x20
 8056992: bd80         	pop	{r7, pc}

08056994 <prvInitialiseNewQueue>:
; {
 8056994: b580         	push	{r7, lr}
 8056996: 466f         	mov	r7, sp
 8056998: b084         	sub	sp, #0x10
 805699a: f8d7 c008    	ldr.w	r12, [r7, #0x8]
 805699e: 9003         	str	r0, [sp, #0xc]
 80569a0: 9102         	str	r1, [sp, #0x8]
 80569a2: 9201         	str	r2, [sp, #0x4]
 80569a4: f807 3c0d    	strb	r3, [r7, #-13]
;     if( uxItemSize == ( UBaseType_t ) 0 )
 80569a8: 9802         	ldr	r0, [sp, #0x8]
 80569aa: b918         	cbnz	r0, 0x80569b4 <prvInitialiseNewQueue+0x20> @ imm = #0x6
 80569ac: e7ff         	b	0x80569ae <prvInitialiseNewQueue+0x1a> @ imm = #-0x2
;         pxNewQueue->pcHead = ( int8_t * ) pxNewQueue;
 80569ae: 68b8         	ldr	r0, [r7, #0x8]
 80569b0: 6000         	str	r0, [r0]
;     }
 80569b2: e003         	b	0x80569bc <prvInitialiseNewQueue+0x28> @ imm = #0x6
;         pxNewQueue->pcHead = ( int8_t * ) pucQueueStorage;
 80569b4: 9801         	ldr	r0, [sp, #0x4]
 80569b6: 68b9         	ldr	r1, [r7, #0x8]
 80569b8: 6008         	str	r0, [r1]
 80569ba: e7ff         	b	0x80569bc <prvInitialiseNewQueue+0x28> @ imm = #-0x2
;     pxNewQueue->uxLength = uxQueueLength;
 80569bc: 9803         	ldr	r0, [sp, #0xc]
 80569be: 68b9         	ldr	r1, [r7, #0x8]
 80569c0: 63c8         	str	r0, [r1, #0x3c]
;     pxNewQueue->uxItemSize = uxItemSize;
 80569c2: 9802         	ldr	r0, [sp, #0x8]
 80569c4: 68b9         	ldr	r1, [r7, #0x8]
 80569c6: 6408         	str	r0, [r1, #0x40]
;     ( void ) xQueueGenericReset( pxNewQueue, pdTRUE );
 80569c8: 68b8         	ldr	r0, [r7, #0x8]
 80569ca: 2101         	movs	r1, #0x1
 80569cc: f7ff ff2d    	bl	0x805682a <xQueueGenericReset> @ imm = #-0x1a6
;         pxNewQueue->ucQueueType = ucQueueType;
 80569d0: f817 0c0d    	ldrb	r0, [r7, #-13]
 80569d4: 68b9         	ldr	r1, [r7, #0x8]
 80569d6: f881 004c    	strb.w	r0, [r1, #0x4c]
; }
 80569da: b004         	add	sp, #0x10
 80569dc: bd80         	pop	{r7, pc}

080569de <prvUnlockQueue>:
; {
 80569de: b580         	push	{r7, lr}
 80569e0: 466f         	mov	r7, sp
 80569e2: b082         	sub	sp, #0x8
 80569e4: 9001         	str	r0, [sp, #0x4]
;     taskENTER_CRITICAL();
 80569e6: f000 fcb5    	bl	0x8057354 <vPortEnterCritical> @ imm = #0x96a
;         int8_t cTxLock = pxQueue->cTxLock;
 80569ea: 9801         	ldr	r0, [sp, #0x4]
 80569ec: f890 0045    	ldrb.w	r0, [r0, #0x45]
 80569f0: f807 0c05    	strb	r0, [r7, #-5]
;         while( cTxLock > queueLOCKED_UNMODIFIED )
 80569f4: e7ff         	b	0x80569f6 <prvUnlockQueue+0x18> @ imm = #-0x2
 80569f6: f917 0c05    	ldrsb	r0, [r7, #-5]
 80569fa: 2801         	cmp	r0, #0x1
 80569fc: db16         	blt	0x8056a2c <prvUnlockQueue+0x4e> @ imm = #0x2c
 80569fe: e7ff         	b	0x8056a00 <prvUnlockQueue+0x22> @ imm = #-0x2
;                 if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
 8056a00: 9801         	ldr	r0, [sp, #0x4]
 8056a02: 6a40         	ldr	r0, [r0, #0x24]
 8056a04: b158         	cbz	r0, 0x8056a1e <prvUnlockQueue+0x40> @ imm = #0x16
 8056a06: e7ff         	b	0x8056a08 <prvUnlockQueue+0x2a> @ imm = #-0x2
;                     if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
 8056a08: 9801         	ldr	r0, [sp, #0x4]
 8056a0a: 3024         	adds	r0, #0x24
 8056a0c: f7ff f99b    	bl	0x8055d46 <xTaskRemoveFromEventList> @ imm = #-0xcca
 8056a10: b118         	cbz	r0, 0x8056a1a <prvUnlockQueue+0x3c> @ imm = #0x6
 8056a12: e7ff         	b	0x8056a14 <prvUnlockQueue+0x36> @ imm = #-0x2
;                         vTaskMissedYield();
 8056a14: f7ff fad8    	bl	0x8055fc8 <vTaskMissedYield> @ imm = #-0xa50
;                     }
 8056a18: e000         	b	0x8056a1c <prvUnlockQueue+0x3e> @ imm = #0x0
 8056a1a: e7ff         	b	0x8056a1c <prvUnlockQueue+0x3e> @ imm = #-0x2
;                 }
 8056a1c: e000         	b	0x8056a20 <prvUnlockQueue+0x42> @ imm = #0x0
;                     break;
 8056a1e: e005         	b	0x8056a2c <prvUnlockQueue+0x4e> @ imm = #0xa
;             --cTxLock;
 8056a20: f817 0c05    	ldrb	r0, [r7, #-5]
 8056a24: 3801         	subs	r0, #0x1
 8056a26: f807 0c05    	strb	r0, [r7, #-5]
;         while( cTxLock > queueLOCKED_UNMODIFIED )
 8056a2a: e7e4         	b	0x80569f6 <prvUnlockQueue+0x18> @ imm = #-0x38
;         pxQueue->cTxLock = queueUNLOCKED;
 8056a2c: 9901         	ldr	r1, [sp, #0x4]
 8056a2e: 20ff         	movs	r0, #0xff
 8056a30: f881 0045    	strb.w	r0, [r1, #0x45]
;     taskEXIT_CRITICAL();
 8056a34: f000 fc9e    	bl	0x8057374 <vPortExitCritical> @ imm = #0x93c
;     taskENTER_CRITICAL();
 8056a38: f000 fc8c    	bl	0x8057354 <vPortEnterCritical> @ imm = #0x918
;         int8_t cRxLock = pxQueue->cRxLock;
 8056a3c: 9801         	ldr	r0, [sp, #0x4]
 8056a3e: f890 0044    	ldrb.w	r0, [r0, #0x44]
 8056a42: f807 0c06    	strb	r0, [r7, #-6]
;         while( cRxLock > queueLOCKED_UNMODIFIED )
 8056a46: e7ff         	b	0x8056a48 <prvUnlockQueue+0x6a> @ imm = #-0x2
 8056a48: f917 0c06    	ldrsb	r0, [r7, #-6]
 8056a4c: 2801         	cmp	r0, #0x1
 8056a4e: db16         	blt	0x8056a7e <prvUnlockQueue+0xa0> @ imm = #0x2c
 8056a50: e7ff         	b	0x8056a52 <prvUnlockQueue+0x74> @ imm = #-0x2
;             if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
 8056a52: 9801         	ldr	r0, [sp, #0x4]
 8056a54: 6900         	ldr	r0, [r0, #0x10]
 8056a56: b180         	cbz	r0, 0x8056a7a <prvUnlockQueue+0x9c> @ imm = #0x20
 8056a58: e7ff         	b	0x8056a5a <prvUnlockQueue+0x7c> @ imm = #-0x2
;                 if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
 8056a5a: 9801         	ldr	r0, [sp, #0x4]
 8056a5c: 3010         	adds	r0, #0x10
 8056a5e: f7ff f972    	bl	0x8055d46 <xTaskRemoveFromEventList> @ imm = #-0xd1c
 8056a62: b118         	cbz	r0, 0x8056a6c <prvUnlockQueue+0x8e> @ imm = #0x6
 8056a64: e7ff         	b	0x8056a66 <prvUnlockQueue+0x88> @ imm = #-0x2
;                     vTaskMissedYield();
 8056a66: f7ff faaf    	bl	0x8055fc8 <vTaskMissedYield> @ imm = #-0xaa2
;                 }
 8056a6a: e000         	b	0x8056a6e <prvUnlockQueue+0x90> @ imm = #0x0
 8056a6c: e7ff         	b	0x8056a6e <prvUnlockQueue+0x90> @ imm = #-0x2
;                 --cRxLock;
 8056a6e: f817 0c06    	ldrb	r0, [r7, #-6]
 8056a72: 3801         	subs	r0, #0x1
 8056a74: f807 0c06    	strb	r0, [r7, #-6]
;             }
 8056a78: e000         	b	0x8056a7c <prvUnlockQueue+0x9e> @ imm = #0x0
;                 break;
 8056a7a: e000         	b	0x8056a7e <prvUnlockQueue+0xa0> @ imm = #0x0
;         while( cRxLock > queueLOCKED_UNMODIFIED )
 8056a7c: e7e4         	b	0x8056a48 <prvUnlockQueue+0x6a> @ imm = #-0x38
;         pxQueue->cRxLock = queueUNLOCKED;
 8056a7e: 9901         	ldr	r1, [sp, #0x4]
 8056a80: 20ff         	movs	r0, #0xff
 8056a82: f881 0044    	strb.w	r0, [r1, #0x44]
;     taskEXIT_CRITICAL();
 8056a86: f000 fc75    	bl	0x8057374 <vPortExitCritical> @ imm = #0x8ea
; }
 8056a8a: b002         	add	sp, #0x8
 8056a8c: bd80         	pop	{r7, pc}

08056a8e <xQueueReceive>:
; {
 8056a8e: b580         	push	{r7, lr}
 8056a90: 466f         	mov	r7, sp
 8056a92: b08c         	sub	sp, #0x30
 8056a94: 900a         	str	r0, [sp, #0x28]
 8056a96: 9109         	str	r1, [sp, #0x24]
 8056a98: 9208         	str	r2, [sp, #0x20]
 8056a9a: 2000         	movs	r0, #0x0
;     BaseType_t xEntryTimeSet = pdFALSE;
 8056a9c: 9007         	str	r0, [sp, #0x1c]
;     Queue_t * const pxQueue = xQueue;
 8056a9e: 980a         	ldr	r0, [sp, #0x28]
 8056aa0: 9004         	str	r0, [sp, #0x10]
;     configASSERT( ( pxQueue ) );
 8056aa2: 9804         	ldr	r0, [sp, #0x10]
 8056aa4: b920         	cbnz	r0, 0x8056ab0 <xQueueReceive+0x22> @ imm = #0x8
 8056aa6: e7ff         	b	0x8056aa8 <xQueueReceive+0x1a> @ imm = #-0x2
 8056aa8: f000 fdf7    	bl	0x805769a <ulSetInterruptMask> @ imm = #0xbee
 8056aac: e7ff         	b	0x8056aae <xQueueReceive+0x20> @ imm = #-0x2
 8056aae: e7fe         	b	0x8056aae <xQueueReceive+0x20> @ imm = #-0x4
;     configASSERT( !( ( ( pvBuffer ) == NULL ) && ( ( pxQueue )->uxItemSize != ( UBaseType_t ) 0U ) ) );
 8056ab0: 9909         	ldr	r1, [sp, #0x24]
 8056ab2: 2000         	movs	r0, #0x0
 8056ab4: 9002         	str	r0, [sp, #0x8]
 8056ab6: b939         	cbnz	r1, 0x8056ac8 <xQueueReceive+0x3a> @ imm = #0xe
 8056ab8: e7ff         	b	0x8056aba <xQueueReceive+0x2c> @ imm = #-0x2
 8056aba: 9804         	ldr	r0, [sp, #0x10]
 8056abc: 6c00         	ldr	r0, [r0, #0x40]
 8056abe: 2800         	cmp	r0, #0x0
 8056ac0: bf18         	it	ne
 8056ac2: 2001         	movne	r0, #0x1
 8056ac4: 9002         	str	r0, [sp, #0x8]
 8056ac6: e7ff         	b	0x8056ac8 <xQueueReceive+0x3a> @ imm = #-0x2
 8056ac8: 9802         	ldr	r0, [sp, #0x8]
;     configASSERT( !( ( ( pvBuffer ) == NULL ) && ( ( pxQueue )->uxItemSize != ( UBaseType_t ) 0U ) ) );
 8056aca: 07c0         	lsls	r0, r0, #0x1f
 8056acc: b120         	cbz	r0, 0x8056ad8 <xQueueReceive+0x4a> @ imm = #0x8
 8056ace: e7ff         	b	0x8056ad0 <xQueueReceive+0x42> @ imm = #-0x2
 8056ad0: f000 fde3    	bl	0x805769a <ulSetInterruptMask> @ imm = #0xbc6
 8056ad4: e7ff         	b	0x8056ad6 <xQueueReceive+0x48> @ imm = #-0x2
 8056ad6: e7fe         	b	0x8056ad6 <xQueueReceive+0x48> @ imm = #-0x4
;         configASSERT( !( ( xTaskGetSchedulerState() == taskSCHEDULER_SUSPENDED ) && ( xTicksToWait != 0 ) ) );
 8056ad8: f7ff fa7d    	bl	0x8055fd6 <xTaskGetSchedulerState> @ imm = #-0xb06
 8056adc: 4601         	mov	r1, r0
 8056ade: 2000         	movs	r0, #0x0
 8056ae0: 9001         	str	r0, [sp, #0x4]
 8056ae2: b931         	cbnz	r1, 0x8056af2 <xQueueReceive+0x64> @ imm = #0xc
 8056ae4: e7ff         	b	0x8056ae6 <xQueueReceive+0x58> @ imm = #-0x2
 8056ae6: 9808         	ldr	r0, [sp, #0x20]
 8056ae8: 2800         	cmp	r0, #0x0
 8056aea: bf18         	it	ne
 8056aec: 2001         	movne	r0, #0x1
 8056aee: 9001         	str	r0, [sp, #0x4]
 8056af0: e7ff         	b	0x8056af2 <xQueueReceive+0x64> @ imm = #-0x2
 8056af2: 9801         	ldr	r0, [sp, #0x4]
;         configASSERT( !( ( xTaskGetSchedulerState() == taskSCHEDULER_SUSPENDED ) && ( xTicksToWait != 0 ) ) );
 8056af4: 07c0         	lsls	r0, r0, #0x1f
 8056af6: b120         	cbz	r0, 0x8056b02 <xQueueReceive+0x74> @ imm = #0x8
 8056af8: e7ff         	b	0x8056afa <xQueueReceive+0x6c> @ imm = #-0x2
 8056afa: f000 fdce    	bl	0x805769a <ulSetInterruptMask> @ imm = #0xb9c
 8056afe: e7ff         	b	0x8056b00 <xQueueReceive+0x72> @ imm = #-0x2
 8056b00: e7fe         	b	0x8056b00 <xQueueReceive+0x72> @ imm = #-0x4
;     for( ; ; )
 8056b02: e7ff         	b	0x8056b04 <xQueueReceive+0x76> @ imm = #-0x2
;         taskENTER_CRITICAL();
 8056b04: f000 fc26    	bl	0x8057354 <vPortEnterCritical> @ imm = #0x84c
;             const UBaseType_t uxMessagesWaiting = pxQueue->uxMessagesWaiting;
 8056b08: 9804         	ldr	r0, [sp, #0x10]
 8056b0a: 6b80         	ldr	r0, [r0, #0x38]
 8056b0c: 9003         	str	r0, [sp, #0xc]
;             if( uxMessagesWaiting > ( UBaseType_t ) 0 )
 8056b0e: 9803         	ldr	r0, [sp, #0xc]
 8056b10: b1e8         	cbz	r0, 0x8056b4e <xQueueReceive+0xc0> @ imm = #0x3a
 8056b12: e7ff         	b	0x8056b14 <xQueueReceive+0x86> @ imm = #-0x2
;                 prvCopyDataFromQueue( pxQueue, pvBuffer );
 8056b14: 9804         	ldr	r0, [sp, #0x10]
 8056b16: 9909         	ldr	r1, [sp, #0x24]
 8056b18: f000 f881    	bl	0x8056c1e <prvCopyDataFromQueue> @ imm = #0x102
;                 pxQueue->uxMessagesWaiting = ( UBaseType_t ) ( uxMessagesWaiting - ( UBaseType_t ) 1 );
 8056b1c: 9803         	ldr	r0, [sp, #0xc]
 8056b1e: 3801         	subs	r0, #0x1
 8056b20: 9904         	ldr	r1, [sp, #0x10]
 8056b22: 6388         	str	r0, [r1, #0x38]
;                 if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
 8056b24: 9804         	ldr	r0, [sp, #0x10]
 8056b26: 6900         	ldr	r0, [r0, #0x10]
 8056b28: b158         	cbz	r0, 0x8056b42 <xQueueReceive+0xb4> @ imm = #0x16
 8056b2a: e7ff         	b	0x8056b2c <xQueueReceive+0x9e> @ imm = #-0x2
;                     if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
 8056b2c: 9804         	ldr	r0, [sp, #0x10]
 8056b2e: 3010         	adds	r0, #0x10
 8056b30: f7ff f909    	bl	0x8055d46 <xTaskRemoveFromEventList> @ imm = #-0xdee
 8056b34: b118         	cbz	r0, 0x8056b3e <xQueueReceive+0xb0> @ imm = #0x6
 8056b36: e7ff         	b	0x8056b38 <xQueueReceive+0xaa> @ imm = #-0x2
;                         queueYIELD_IF_USING_PREEMPTION();
 8056b38: f000 fc00    	bl	0x805733c <vPortYield>  @ imm = #0x800
;                     }
 8056b3c: e000         	b	0x8056b40 <xQueueReceive+0xb2> @ imm = #0x0
 8056b3e: e7ff         	b	0x8056b40 <xQueueReceive+0xb2> @ imm = #-0x2
;                 }
 8056b40: e000         	b	0x8056b44 <xQueueReceive+0xb6> @ imm = #0x0
 8056b42: e7ff         	b	0x8056b44 <xQueueReceive+0xb6> @ imm = #-0x2
;                 taskEXIT_CRITICAL();
 8056b44: f000 fc16    	bl	0x8057374 <vPortExitCritical> @ imm = #0x82c
 8056b48: 2001         	movs	r0, #0x1
;                 return pdPASS;
 8056b4a: 900b         	str	r0, [sp, #0x2c]
 8056b4c: e064         	b	0x8056c18 <xQueueReceive+0x18a> @ imm = #0xc8
;                 if( xTicksToWait == ( TickType_t ) 0 )
 8056b4e: 9808         	ldr	r0, [sp, #0x20]
 8056b50: b928         	cbnz	r0, 0x8056b5e <xQueueReceive+0xd0> @ imm = #0xa
 8056b52: e7ff         	b	0x8056b54 <xQueueReceive+0xc6> @ imm = #-0x2
;                     taskEXIT_CRITICAL();
 8056b54: f000 fc0e    	bl	0x8057374 <vPortExitCritical> @ imm = #0x81c
 8056b58: 2000         	movs	r0, #0x0
;                     return errQUEUE_EMPTY;
 8056b5a: 900b         	str	r0, [sp, #0x2c]
 8056b5c: e05c         	b	0x8056c18 <xQueueReceive+0x18a> @ imm = #0xb8
;                 else if( xEntryTimeSet == pdFALSE )
 8056b5e: 9807         	ldr	r0, [sp, #0x1c]
 8056b60: b930         	cbnz	r0, 0x8056b70 <xQueueReceive+0xe2> @ imm = #0xc
 8056b62: e7ff         	b	0x8056b64 <xQueueReceive+0xd6> @ imm = #-0x2
 8056b64: a805         	add	r0, sp, #0x14
;                     vTaskInternalSetTimeOutState( &xTimeOut );
 8056b66: f7ff f9c1    	bl	0x8055eec <vTaskInternalSetTimeOutState> @ imm = #-0xc7e
 8056b6a: 2001         	movs	r0, #0x1
;                     xEntryTimeSet = pdTRUE;
 8056b6c: 9007         	str	r0, [sp, #0x1c]
;                 }
 8056b6e: e000         	b	0x8056b72 <xQueueReceive+0xe4> @ imm = #0x0
 8056b70: e7ff         	b	0x8056b72 <xQueueReceive+0xe4> @ imm = #-0x2
 8056b72: e7ff         	b	0x8056b74 <xQueueReceive+0xe6> @ imm = #-0x2
 8056b74: e7ff         	b	0x8056b76 <xQueueReceive+0xe8> @ imm = #-0x2
;         taskEXIT_CRITICAL();
 8056b76: f000 fbfd    	bl	0x8057374 <vPortExitCritical> @ imm = #0x7fa
;         vTaskSuspendAll();
 8056b7a: f7fe fc8f    	bl	0x805549c <vTaskSuspendAll> @ imm = #-0x16e2
;         prvLockQueue( pxQueue );
 8056b7e: f000 fbe9    	bl	0x8057354 <vPortEnterCritical> @ imm = #0x7d2
 8056b82: 9804         	ldr	r0, [sp, #0x10]
 8056b84: f990 0044    	ldrsb.w	r0, [r0, #0x44]
 8056b88: 3001         	adds	r0, #0x1
 8056b8a: b928         	cbnz	r0, 0x8056b98 <xQueueReceive+0x10a> @ imm = #0xa
 8056b8c: e7ff         	b	0x8056b8e <xQueueReceive+0x100> @ imm = #-0x2
 8056b8e: 9904         	ldr	r1, [sp, #0x10]
 8056b90: 2000         	movs	r0, #0x0
 8056b92: f881 0044    	strb.w	r0, [r1, #0x44]
 8056b96: e7ff         	b	0x8056b98 <xQueueReceive+0x10a> @ imm = #-0x2
 8056b98: 9804         	ldr	r0, [sp, #0x10]
 8056b9a: f990 0045    	ldrsb.w	r0, [r0, #0x45]
 8056b9e: 3001         	adds	r0, #0x1
 8056ba0: b928         	cbnz	r0, 0x8056bae <xQueueReceive+0x120> @ imm = #0xa
 8056ba2: e7ff         	b	0x8056ba4 <xQueueReceive+0x116> @ imm = #-0x2
 8056ba4: 9904         	ldr	r1, [sp, #0x10]
 8056ba6: 2000         	movs	r0, #0x0
 8056ba8: f881 0045    	strb.w	r0, [r1, #0x45]
 8056bac: e7ff         	b	0x8056bae <xQueueReceive+0x120> @ imm = #-0x2
 8056bae: f000 fbe1    	bl	0x8057374 <vPortExitCritical> @ imm = #0x7c2
 8056bb2: a805         	add	r0, sp, #0x14
 8056bb4: a908         	add	r1, sp, #0x20
;         if( xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == pdFALSE )
 8056bb6: f7ff f9ab    	bl	0x8055f10 <xTaskCheckForTimeOut> @ imm = #-0xcaa
 8056bba: b9e8         	cbnz	r0, 0x8056bf8 <xQueueReceive+0x16a> @ imm = #0x3a
 8056bbc: e7ff         	b	0x8056bbe <xQueueReceive+0x130> @ imm = #-0x2
;             if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
 8056bbe: 9804         	ldr	r0, [sp, #0x10]
 8056bc0: f000 f84f    	bl	0x8056c62 <prvIsQueueEmpty> @ imm = #0x9e
 8056bc4: b188         	cbz	r0, 0x8056bea <xQueueReceive+0x15c> @ imm = #0x22
 8056bc6: e7ff         	b	0x8056bc8 <xQueueReceive+0x13a> @ imm = #-0x2
;                 vTaskPlaceOnEventList( &( pxQueue->xTasksWaitingToReceive ), xTicksToWait );
 8056bc8: 9804         	ldr	r0, [sp, #0x10]
 8056bca: 3024         	adds	r0, #0x24
 8056bcc: 9908         	ldr	r1, [sp, #0x20]
 8056bce: f7ff f865    	bl	0x8055c9c <vTaskPlaceOnEventList> @ imm = #-0xf36
;                 prvUnlockQueue( pxQueue );
 8056bd2: 9804         	ldr	r0, [sp, #0x10]
 8056bd4: f7ff ff03    	bl	0x80569de <prvUnlockQueue> @ imm = #-0x1fa
;                 if( xTaskResumeAll() == pdFALSE )
 8056bd8: f7fe fce8    	bl	0x80555ac <xTaskResumeAll> @ imm = #-0x1630
 8056bdc: b918         	cbnz	r0, 0x8056be6 <xQueueReceive+0x158> @ imm = #0x6
 8056bde: e7ff         	b	0x8056be0 <xQueueReceive+0x152> @ imm = #-0x2
;                     taskYIELD_WITHIN_API();
 8056be0: f000 fbac    	bl	0x805733c <vPortYield>  @ imm = #0x758
;                 }
 8056be4: e000         	b	0x8056be8 <xQueueReceive+0x15a> @ imm = #0x0
 8056be6: e7ff         	b	0x8056be8 <xQueueReceive+0x15a> @ imm = #-0x2
;             }
 8056be8: e005         	b	0x8056bf6 <xQueueReceive+0x168> @ imm = #0xa
;                 prvUnlockQueue( pxQueue );
 8056bea: 9804         	ldr	r0, [sp, #0x10]
 8056bec: f7ff fef7    	bl	0x80569de <prvUnlockQueue> @ imm = #-0x212
;                 ( void ) xTaskResumeAll();
 8056bf0: f7fe fcdc    	bl	0x80555ac <xTaskResumeAll> @ imm = #-0x1648
 8056bf4: e7ff         	b	0x8056bf6 <xQueueReceive+0x168> @ imm = #-0x2
;         }
 8056bf6: e00e         	b	0x8056c16 <xQueueReceive+0x188> @ imm = #0x1c
;             prvUnlockQueue( pxQueue );
 8056bf8: 9804         	ldr	r0, [sp, #0x10]
 8056bfa: f7ff fef0    	bl	0x80569de <prvUnlockQueue> @ imm = #-0x220
;             ( void ) xTaskResumeAll();
 8056bfe: f7fe fcd5    	bl	0x80555ac <xTaskResumeAll> @ imm = #-0x1656
;             if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
 8056c02: 9804         	ldr	r0, [sp, #0x10]
 8056c04: f000 f82d    	bl	0x8056c62 <prvIsQueueEmpty> @ imm = #0x5a
 8056c08: b118         	cbz	r0, 0x8056c12 <xQueueReceive+0x184> @ imm = #0x6
 8056c0a: e7ff         	b	0x8056c0c <xQueueReceive+0x17e> @ imm = #-0x2
 8056c0c: 2000         	movs	r0, #0x0
;                 return errQUEUE_EMPTY;
 8056c0e: 900b         	str	r0, [sp, #0x2c]
 8056c10: e002         	b	0x8056c18 <xQueueReceive+0x18a> @ imm = #0x4
 8056c12: e7ff         	b	0x8056c14 <xQueueReceive+0x186> @ imm = #-0x2
 8056c14: e7ff         	b	0x8056c16 <xQueueReceive+0x188> @ imm = #-0x2
;     for( ; ; )
 8056c16: e775         	b	0x8056b04 <xQueueReceive+0x76> @ imm = #-0x116
; }
 8056c18: 980b         	ldr	r0, [sp, #0x2c]
 8056c1a: b00c         	add	sp, #0x30
 8056c1c: bd80         	pop	{r7, pc}

08056c1e <prvCopyDataFromQueue>:
; {
 8056c1e: b580         	push	{r7, lr}
 8056c20: 466f         	mov	r7, sp
 8056c22: b082         	sub	sp, #0x8
 8056c24: 9001         	str	r0, [sp, #0x4]
 8056c26: 9100         	str	r1, [sp]
;     if( pxQueue->uxItemSize != ( UBaseType_t ) 0 )
 8056c28: 9801         	ldr	r0, [sp, #0x4]
 8056c2a: 6c00         	ldr	r0, [r0, #0x40]
 8056c2c: b1b8         	cbz	r0, 0x8056c5e <prvCopyDataFromQueue+0x40> @ imm = #0x2e
 8056c2e: e7ff         	b	0x8056c30 <prvCopyDataFromQueue+0x12> @ imm = #-0x2
;         pxQueue->u.xQueue.pcReadFrom += pxQueue->uxItemSize;           /*lint !e9016 Pointer arithmetic on char types ok, especially in this use case where it is the clearest way of conveying intent. */
 8056c30: 9901         	ldr	r1, [sp, #0x4]
 8056c32: 68c8         	ldr	r0, [r1, #0xc]
 8056c34: 6c0a         	ldr	r2, [r1, #0x40]
 8056c36: 4410         	add	r0, r2
 8056c38: 60c8         	str	r0, [r1, #0xc]
;         if( pxQueue->u.xQueue.pcReadFrom >= pxQueue->u.xQueue.pcTail ) /*lint !e946 MISRA exception justified as use of the relational operator is the cleanest solutions. */
 8056c3a: 9801         	ldr	r0, [sp, #0x4]
 8056c3c: 6881         	ldr	r1, [r0, #0x8]
 8056c3e: 68c0         	ldr	r0, [r0, #0xc]
 8056c40: 4288         	cmp	r0, r1
 8056c42: d304         	blo	0x8056c4e <prvCopyDataFromQueue+0x30> @ imm = #0x8
 8056c44: e7ff         	b	0x8056c46 <prvCopyDataFromQueue+0x28> @ imm = #-0x2
;             pxQueue->u.xQueue.pcReadFrom = pxQueue->pcHead;
 8056c46: 9901         	ldr	r1, [sp, #0x4]
 8056c48: 6808         	ldr	r0, [r1]
 8056c4a: 60c8         	str	r0, [r1, #0xc]
;         }
 8056c4c: e000         	b	0x8056c50 <prvCopyDataFromQueue+0x32> @ imm = #0x0
 8056c4e: e7ff         	b	0x8056c50 <prvCopyDataFromQueue+0x32> @ imm = #-0x2
;         ( void ) memcpy( ( void * ) pvBuffer, ( void * ) pxQueue->u.xQueue.pcReadFrom, ( size_t ) pxQueue->uxItemSize ); /*lint !e961 !e418 !e9087 MISRA exception as the casts are only redundant for some ports.  Also previous logic ensures a null pointer can only be passed to memcpy() when the count is 0.  Cast to void required by function signature and safe as no alignment requirement and copy length specified in bytes. */
 8056c50: 9800         	ldr	r0, [sp]
 8056c52: 9a01         	ldr	r2, [sp, #0x4]
 8056c54: 68d1         	ldr	r1, [r2, #0xc]
 8056c56: 6c12         	ldr	r2, [r2, #0x40]
 8056c58: f000 fd6a    	bl	0x8057730 <memcpy>      @ imm = #0xad4
;     }
 8056c5c: e7ff         	b	0x8056c5e <prvCopyDataFromQueue+0x40> @ imm = #-0x2
; }
 8056c5e: b002         	add	sp, #0x8
 8056c60: bd80         	pop	{r7, pc}

08056c62 <prvIsQueueEmpty>:
; {
 8056c62: b580         	push	{r7, lr}
 8056c64: 466f         	mov	r7, sp
 8056c66: b082         	sub	sp, #0x8
 8056c68: 9001         	str	r0, [sp, #0x4]
;     taskENTER_CRITICAL();
 8056c6a: f000 fb73    	bl	0x8057354 <vPortEnterCritical> @ imm = #0x6e6
;         if( pxQueue->uxMessagesWaiting == ( UBaseType_t ) 0 )
 8056c6e: 9801         	ldr	r0, [sp, #0x4]
 8056c70: 6b80         	ldr	r0, [r0, #0x38]
 8056c72: b918         	cbnz	r0, 0x8056c7c <prvIsQueueEmpty+0x1a> @ imm = #0x6
 8056c74: e7ff         	b	0x8056c76 <prvIsQueueEmpty+0x14> @ imm = #-0x2
 8056c76: 2001         	movs	r0, #0x1
;             xReturn = pdTRUE;
 8056c78: 9000         	str	r0, [sp]
;         }
 8056c7a: e002         	b	0x8056c82 <prvIsQueueEmpty+0x20> @ imm = #0x4
 8056c7c: 2000         	movs	r0, #0x0
;             xReturn = pdFALSE;
 8056c7e: 9000         	str	r0, [sp]
 8056c80: e7ff         	b	0x8056c82 <prvIsQueueEmpty+0x20> @ imm = #-0x2
;     taskEXIT_CRITICAL();
 8056c82: f000 fb77    	bl	0x8057374 <vPortExitCritical> @ imm = #0x6ee
;     return xReturn;
 8056c86: 9800         	ldr	r0, [sp]
 8056c88: b002         	add	sp, #0x8
 8056c8a: bd80         	pop	{r7, pc}

08056c8c <vQueueAddToRegistry>:
;     {
 8056c8c: b580         	push	{r7, lr}
 8056c8e: 466f         	mov	r7, sp
 8056c90: b084         	sub	sp, #0x10
 8056c92: 9003         	str	r0, [sp, #0xc]
 8056c94: 9102         	str	r1, [sp, #0x8]
 8056c96: 2000         	movs	r0, #0x0
;         QueueRegistryItem_t * pxEntryToWrite = NULL;
 8056c98: 9000         	str	r0, [sp]
;         configASSERT( xQueue );
 8056c9a: 9803         	ldr	r0, [sp, #0xc]
 8056c9c: b920         	cbnz	r0, 0x8056ca8 <vQueueAddToRegistry+0x1c> @ imm = #0x8
 8056c9e: e7ff         	b	0x8056ca0 <vQueueAddToRegistry+0x14> @ imm = #-0x2
 8056ca0: f000 fcfb    	bl	0x805769a <ulSetInterruptMask> @ imm = #0x9f6
 8056ca4: e7ff         	b	0x8056ca6 <vQueueAddToRegistry+0x1a> @ imm = #-0x2
 8056ca6: e7fe         	b	0x8056ca6 <vQueueAddToRegistry+0x1a> @ imm = #-0x4
;         if( pcQueueName != NULL )
 8056ca8: 9802         	ldr	r0, [sp, #0x8]
 8056caa: b3c8         	cbz	r0, 0x8056d20 <vQueueAddToRegistry+0x94> @ imm = #0x72
 8056cac: e7ff         	b	0x8056cae <vQueueAddToRegistry+0x22> @ imm = #-0x2
 8056cae: 2000         	movs	r0, #0x0
;             for( ux = ( UBaseType_t ) 0U; ux < ( UBaseType_t ) configQUEUE_REGISTRY_SIZE; ux++ )
 8056cb0: 9001         	str	r0, [sp, #0x4]
 8056cb2: e7ff         	b	0x8056cb4 <vQueueAddToRegistry+0x28> @ imm = #-0x2
 8056cb4: 9801         	ldr	r0, [sp, #0x4]
 8056cb6: 2807         	cmp	r0, #0x7
 8056cb8: d831         	bhi	0x8056d1e <vQueueAddToRegistry+0x92> @ imm = #0x62
 8056cba: e7ff         	b	0x8056cbc <vQueueAddToRegistry+0x30> @ imm = #-0x2
;                 if( xQueue == xQueueRegistry[ ux ].xHandle )
 8056cbc: 9803         	ldr	r0, [sp, #0xc]
 8056cbe: 9a01         	ldr	r2, [sp, #0x4]
 8056cc0: f240 3124    	movw	r1, #0x324
 8056cc4: f2c2 0100    	movt	r1, #0x2000
 8056cc8: eb01 01c2    	add.w	r1, r1, r2, lsl #3
 8056ccc: 6849         	ldr	r1, [r1, #0x4]
 8056cce: 4288         	cmp	r0, r1
 8056cd0: d109         	bne	0x8056ce6 <vQueueAddToRegistry+0x5a> @ imm = #0x12
 8056cd2: e7ff         	b	0x8056cd4 <vQueueAddToRegistry+0x48> @ imm = #-0x2
;                     pxEntryToWrite = &( xQueueRegistry[ ux ] );
 8056cd4: 9901         	ldr	r1, [sp, #0x4]
 8056cd6: f240 3024    	movw	r0, #0x324
 8056cda: f2c2 0000    	movt	r0, #0x2000
 8056cde: eb00 00c1    	add.w	r0, r0, r1, lsl #3
 8056ce2: 9000         	str	r0, [sp]
;                     break;
 8056ce4: e01b         	b	0x8056d1e <vQueueAddToRegistry+0x92> @ imm = #0x36
;                 else if( ( pxEntryToWrite == NULL ) && ( xQueueRegistry[ ux ].pcQueueName == NULL ) )
 8056ce6: 9800         	ldr	r0, [sp]
 8056ce8: b990         	cbnz	r0, 0x8056d10 <vQueueAddToRegistry+0x84> @ imm = #0x24
 8056cea: e7ff         	b	0x8056cec <vQueueAddToRegistry+0x60> @ imm = #-0x2
 8056cec: 9901         	ldr	r1, [sp, #0x4]
 8056cee: f240 3024    	movw	r0, #0x324
 8056cf2: f2c2 0000    	movt	r0, #0x2000
 8056cf6: f850 0031    	ldr.w	r0, [r0, r1, lsl #3]
 8056cfa: b948         	cbnz	r0, 0x8056d10 <vQueueAddToRegistry+0x84> @ imm = #0x12
 8056cfc: e7ff         	b	0x8056cfe <vQueueAddToRegistry+0x72> @ imm = #-0x2
;                     pxEntryToWrite = &( xQueueRegistry[ ux ] );
 8056cfe: 9901         	ldr	r1, [sp, #0x4]
 8056d00: f240 3024    	movw	r0, #0x324
 8056d04: f2c2 0000    	movt	r0, #0x2000
 8056d08: eb00 00c1    	add.w	r0, r0, r1, lsl #3
 8056d0c: 9000         	str	r0, [sp]
;                 }
 8056d0e: e000         	b	0x8056d12 <vQueueAddToRegistry+0x86> @ imm = #0x0
 8056d10: e7ff         	b	0x8056d12 <vQueueAddToRegistry+0x86> @ imm = #-0x2
 8056d12: e7ff         	b	0x8056d14 <vQueueAddToRegistry+0x88> @ imm = #-0x2
;             }
 8056d14: e7ff         	b	0x8056d16 <vQueueAddToRegistry+0x8a> @ imm = #-0x2
;             for( ux = ( UBaseType_t ) 0U; ux < ( UBaseType_t ) configQUEUE_REGISTRY_SIZE; ux++ )
 8056d16: 9801         	ldr	r0, [sp, #0x4]
 8056d18: 3001         	adds	r0, #0x1
 8056d1a: 9001         	str	r0, [sp, #0x4]
 8056d1c: e7ca         	b	0x8056cb4 <vQueueAddToRegistry+0x28> @ imm = #-0x6c
;         }
 8056d1e: e7ff         	b	0x8056d20 <vQueueAddToRegistry+0x94> @ imm = #-0x2
;         if( pxEntryToWrite != NULL )
 8056d20: 9800         	ldr	r0, [sp]
 8056d22: b138         	cbz	r0, 0x8056d34 <vQueueAddToRegistry+0xa8> @ imm = #0xe
 8056d24: e7ff         	b	0x8056d26 <vQueueAddToRegistry+0x9a> @ imm = #-0x2
;             pxEntryToWrite->pcQueueName = pcQueueName;
 8056d26: 9802         	ldr	r0, [sp, #0x8]
 8056d28: 9900         	ldr	r1, [sp]
 8056d2a: 6008         	str	r0, [r1]
;             pxEntryToWrite->xHandle = xQueue;
 8056d2c: 9803         	ldr	r0, [sp, #0xc]
 8056d2e: 9900         	ldr	r1, [sp]
 8056d30: 6048         	str	r0, [r1, #0x4]
;         }
 8056d32: e7ff         	b	0x8056d34 <vQueueAddToRegistry+0xa8> @ imm = #-0x2
;     }
 8056d34: b004         	add	sp, #0x10
 8056d36: bd80         	pop	{r7, pc}

08056d38 <vQueueWaitForMessageRestricted>:
;     {
 8056d38: b580         	push	{r7, lr}
 8056d3a: 466f         	mov	r7, sp
 8056d3c: b084         	sub	sp, #0x10
 8056d3e: 9003         	str	r0, [sp, #0xc]
 8056d40: 9102         	str	r1, [sp, #0x8]
 8056d42: 9201         	str	r2, [sp, #0x4]
;         Queue_t * const pxQueue = xQueue;
 8056d44: 9803         	ldr	r0, [sp, #0xc]
 8056d46: 9000         	str	r0, [sp]
;         prvLockQueue( pxQueue );
 8056d48: f000 fb04    	bl	0x8057354 <vPortEnterCritical> @ imm = #0x608
 8056d4c: 9800         	ldr	r0, [sp]
 8056d4e: f990 0044    	ldrsb.w	r0, [r0, #0x44]
 8056d52: 3001         	adds	r0, #0x1
 8056d54: b928         	cbnz	r0, 0x8056d62 <vQueueWaitForMessageRestricted+0x2a> @ imm = #0xa
 8056d56: e7ff         	b	0x8056d58 <vQueueWaitForMessageRestricted+0x20> @ imm = #-0x2
 8056d58: 9900         	ldr	r1, [sp]
 8056d5a: 2000         	movs	r0, #0x0
 8056d5c: f881 0044    	strb.w	r0, [r1, #0x44]
 8056d60: e7ff         	b	0x8056d62 <vQueueWaitForMessageRestricted+0x2a> @ imm = #-0x2
 8056d62: 9800         	ldr	r0, [sp]
 8056d64: f990 0045    	ldrsb.w	r0, [r0, #0x45]
 8056d68: 3001         	adds	r0, #0x1
 8056d6a: b928         	cbnz	r0, 0x8056d78 <vQueueWaitForMessageRestricted+0x40> @ imm = #0xa
 8056d6c: e7ff         	b	0x8056d6e <vQueueWaitForMessageRestricted+0x36> @ imm = #-0x2
 8056d6e: 9900         	ldr	r1, [sp]
 8056d70: 2000         	movs	r0, #0x0
 8056d72: f881 0045    	strb.w	r0, [r1, #0x45]
 8056d76: e7ff         	b	0x8056d78 <vQueueWaitForMessageRestricted+0x40> @ imm = #-0x2
 8056d78: f000 fafc    	bl	0x8057374 <vPortExitCritical> @ imm = #0x5f8
;         if( pxQueue->uxMessagesWaiting == ( UBaseType_t ) 0U )
 8056d7c: 9800         	ldr	r0, [sp]
 8056d7e: 6b80         	ldr	r0, [r0, #0x38]
 8056d80: b938         	cbnz	r0, 0x8056d92 <vQueueWaitForMessageRestricted+0x5a> @ imm = #0xe
 8056d82: e7ff         	b	0x8056d84 <vQueueWaitForMessageRestricted+0x4c> @ imm = #-0x2
;             vTaskPlaceOnEventListRestricted( &( pxQueue->xTasksWaitingToReceive ), xTicksToWait, xWaitIndefinitely );
 8056d84: 9800         	ldr	r0, [sp]
 8056d86: 3024         	adds	r0, #0x24
 8056d88: 9902         	ldr	r1, [sp, #0x8]
 8056d8a: 9a01         	ldr	r2, [sp, #0x4]
 8056d8c: f7fe ffa1    	bl	0x8055cd2 <vTaskPlaceOnEventListRestricted> @ imm = #-0x10be
;         }
 8056d90: e000         	b	0x8056d94 <vQueueWaitForMessageRestricted+0x5c> @ imm = #0x0
 8056d92: e7ff         	b	0x8056d94 <vQueueWaitForMessageRestricted+0x5c> @ imm = #-0x2
;         prvUnlockQueue( pxQueue );
 8056d94: 9800         	ldr	r0, [sp]
 8056d96: f7ff fe22    	bl	0x80569de <prvUnlockQueue> @ imm = #-0x3bc
;     }
 8056d9a: b004         	add	sp, #0x10
 8056d9c: bd80         	pop	{r7, pc}

08056d9e <pvPortMalloc>:
; {
 8056d9e: b580         	push	{r7, lr}
 8056da0: 466f         	mov	r7, sp
 8056da2: b08a         	sub	sp, #0x28
 8056da4: 9009         	str	r0, [sp, #0x24]
 8056da6: 2000         	movs	r0, #0x0
;     void * pvReturn = NULL;
 8056da8: 9005         	str	r0, [sp, #0x14]
;     if( xWantedSize > 0 )
 8056daa: 9809         	ldr	r0, [sp, #0x24]
 8056dac: b340         	cbz	r0, 0x8056e00 <pvPortMalloc+0x62> @ imm = #0x50
 8056dae: e7ff         	b	0x8056db0 <pvPortMalloc+0x12> @ imm = #-0x2
;         if( heapADD_WILL_OVERFLOW( xWantedSize, xHeapStructSize ) == 0 )
 8056db0: 9809         	ldr	r0, [sp, #0x24]
 8056db2: f110 0f09    	cmn.w	r0, #0x9
 8056db6: d81f         	bhi	0x8056df8 <pvPortMalloc+0x5a> @ imm = #0x3e
 8056db8: e7ff         	b	0x8056dba <pvPortMalloc+0x1c> @ imm = #-0x2
;             xWantedSize += xHeapStructSize;
 8056dba: 9809         	ldr	r0, [sp, #0x24]
 8056dbc: 3008         	adds	r0, #0x8
 8056dbe: 9009         	str	r0, [sp, #0x24]
;             if( ( xWantedSize & portBYTE_ALIGNMENT_MASK ) != 0x00 )
 8056dc0: f89d 0024    	ldrb.w	r0, [sp, #0x24]
 8056dc4: 0740         	lsls	r0, r0, #0x1d
 8056dc6: b1a8         	cbz	r0, 0x8056df4 <pvPortMalloc+0x56> @ imm = #0x2a
 8056dc8: e7ff         	b	0x8056dca <pvPortMalloc+0x2c> @ imm = #-0x2
;                 xAdditionalRequiredSize = portBYTE_ALIGNMENT - ( xWantedSize & portBYTE_ALIGNMENT_MASK );
 8056dca: 9809         	ldr	r0, [sp, #0x24]
 8056dcc: f000 0007    	and	r0, r0, #0x7
 8056dd0: f1c0 0008    	rsb.w	r0, r0, #0x8
 8056dd4: 9004         	str	r0, [sp, #0x10]
;                 if( heapADD_WILL_OVERFLOW( xWantedSize, xAdditionalRequiredSize ) == 0 )
 8056dd6: 9809         	ldr	r0, [sp, #0x24]
 8056dd8: 9904         	ldr	r1, [sp, #0x10]
 8056dda: 43c9         	mvns	r1, r1
 8056ddc: 4288         	cmp	r0, r1
 8056dde: d805         	bhi	0x8056dec <pvPortMalloc+0x4e> @ imm = #0xa
 8056de0: e7ff         	b	0x8056de2 <pvPortMalloc+0x44> @ imm = #-0x2
;                     xWantedSize += xAdditionalRequiredSize;
 8056de2: 9904         	ldr	r1, [sp, #0x10]
 8056de4: 9809         	ldr	r0, [sp, #0x24]
 8056de6: 4408         	add	r0, r1
 8056de8: 9009         	str	r0, [sp, #0x24]
;                 }
 8056dea: e002         	b	0x8056df2 <pvPortMalloc+0x54> @ imm = #0x4
 8056dec: 2000         	movs	r0, #0x0
;                     xWantedSize = 0;
 8056dee: 9009         	str	r0, [sp, #0x24]
 8056df0: e7ff         	b	0x8056df2 <pvPortMalloc+0x54> @ imm = #-0x2
;             }
 8056df2: e000         	b	0x8056df6 <pvPortMalloc+0x58> @ imm = #0x0
 8056df4: e7ff         	b	0x8056df6 <pvPortMalloc+0x58> @ imm = #-0x2
;         }
 8056df6: e002         	b	0x8056dfe <pvPortMalloc+0x60> @ imm = #0x4
 8056df8: 2000         	movs	r0, #0x0
;             xWantedSize = 0;
 8056dfa: 9009         	str	r0, [sp, #0x24]
 8056dfc: e7ff         	b	0x8056dfe <pvPortMalloc+0x60> @ imm = #-0x2
;     }
 8056dfe: e000         	b	0x8056e02 <pvPortMalloc+0x64> @ imm = #0x0
 8056e00: e7ff         	b	0x8056e02 <pvPortMalloc+0x64> @ imm = #-0x2
;     vTaskSuspendAll();
 8056e02: f7fe fb4b    	bl	0x805549c <vTaskSuspendAll> @ imm = #-0x196a
;         if( pxEnd == NULL )
 8056e06: f240 3064    	movw	r0, #0x364
 8056e0a: f2c2 0000    	movt	r0, #0x2000
 8056e0e: 6800         	ldr	r0, [r0]
 8056e10: b918         	cbnz	r0, 0x8056e1a <pvPortMalloc+0x7c> @ imm = #0x6
 8056e12: e7ff         	b	0x8056e14 <pvPortMalloc+0x76> @ imm = #-0x2
;             prvHeapInit();
 8056e14: f000 f91c    	bl	0x8057050 <prvHeapInit> @ imm = #0x238
;         }
 8056e18: e000         	b	0x8056e1c <pvPortMalloc+0x7e> @ imm = #0x0
 8056e1a: e7ff         	b	0x8056e1c <pvPortMalloc+0x7e> @ imm = #-0x2
;         if( heapBLOCK_SIZE_IS_VALID( xWantedSize ) != 0 )
 8056e1c: f89d 0027    	ldrb.w	r0, [sp, #0x27]
 8056e20: 0600         	lsls	r0, r0, #0x18
 8056e22: 2800         	cmp	r0, #0x0
 8056e24: f100 8105    	bmi.w	0x8057032 <pvPortMalloc+0x294> @ imm = #0x20a
 8056e28: e7ff         	b	0x8056e2a <pvPortMalloc+0x8c> @ imm = #-0x2
;             if( ( xWantedSize > 0 ) && ( xWantedSize <= xFreeBytesRemaining ) )
 8056e2a: 9809         	ldr	r0, [sp, #0x24]
 8056e2c: 2800         	cmp	r0, #0x0
 8056e2e: f000 80fe    	beq.w	0x805702e <pvPortMalloc+0x290> @ imm = #0x1fc
 8056e32: e7ff         	b	0x8056e34 <pvPortMalloc+0x96> @ imm = #-0x2
 8056e34: 9809         	ldr	r0, [sp, #0x24]
 8056e36: f240 3168    	movw	r1, #0x368
 8056e3a: f2c2 0100    	movt	r1, #0x2000
 8056e3e: 6809         	ldr	r1, [r1]
 8056e40: 4288         	cmp	r0, r1
 8056e42: f200 80f4    	bhi.w	0x805702e <pvPortMalloc+0x290> @ imm = #0x1e8
 8056e46: e7ff         	b	0x8056e48 <pvPortMalloc+0xaa> @ imm = #-0x2
;                 pxPreviousBlock = &xStart;
 8056e48: f240 306c    	movw	r0, #0x36c
 8056e4c: f2c2 0000    	movt	r0, #0x2000
 8056e50: 9007         	str	r0, [sp, #0x1c]
;                 pxBlock = heapPROTECT_BLOCK_POINTER( xStart.pxNextFreeBlock );
 8056e52: 6800         	ldr	r0, [r0]
 8056e54: 9008         	str	r0, [sp, #0x20]
;                 heapVALIDATE_BLOCK_POINTER( pxBlock );
 8056e56: 9908         	ldr	r1, [sp, #0x20]
 8056e58: 2000         	movs	r0, #0x0
 8056e5a: f240 3274    	movw	r2, #0x374
 8056e5e: f2c2 0200    	movt	r2, #0x2000
 8056e62: 4291         	cmp	r1, r2
 8056e64: 9003         	str	r0, [sp, #0xc]
 8056e66: d30e         	blo	0x8056e86 <pvPortMalloc+0xe8> @ imm = #0x1c
 8056e68: e7ff         	b	0x8056e6a <pvPortMalloc+0xcc> @ imm = #-0x2
 8056e6a: 9908         	ldr	r1, [sp, #0x20]
 8056e6c: f240 3074    	movw	r0, #0x374
 8056e70: f2c2 0000    	movt	r0, #0x2000
 8056e74: f641 72ff    	movw	r2, #0x1fff
 8056e78: 4402         	add	r2, r0
 8056e7a: 2000         	movs	r0, #0x0
 8056e7c: 4291         	cmp	r1, r2
 8056e7e: bf98         	it	ls
 8056e80: 2001         	movls	r0, #0x1
 8056e82: 9003         	str	r0, [sp, #0xc]
 8056e84: e7ff         	b	0x8056e86 <pvPortMalloc+0xe8> @ imm = #-0x2
 8056e86: 9803         	ldr	r0, [sp, #0xc]
;                 heapVALIDATE_BLOCK_POINTER( pxBlock );
 8056e88: 07c0         	lsls	r0, r0, #0x1f
 8056e8a: b920         	cbnz	r0, 0x8056e96 <pvPortMalloc+0xf8> @ imm = #0x8
 8056e8c: e7ff         	b	0x8056e8e <pvPortMalloc+0xf0> @ imm = #-0x2
 8056e8e: f000 fc04    	bl	0x805769a <ulSetInterruptMask> @ imm = #0x808
 8056e92: e7ff         	b	0x8056e94 <pvPortMalloc+0xf6> @ imm = #-0x2
 8056e94: e7fe         	b	0x8056e94 <pvPortMalloc+0xf6> @ imm = #-0x4
;                 while( ( pxBlock->xBlockSize < xWantedSize ) && ( pxBlock->pxNextFreeBlock != heapPROTECT_BLOCK_POINTER( NULL ) ) )
 8056e96: e7ff         	b	0x8056e98 <pvPortMalloc+0xfa> @ imm = #-0x2
 8056e98: 9808         	ldr	r0, [sp, #0x20]
 8056e9a: 6841         	ldr	r1, [r0, #0x4]
 8056e9c: 9a09         	ldr	r2, [sp, #0x24]
 8056e9e: 2000         	movs	r0, #0x0
 8056ea0: 4291         	cmp	r1, r2
 8056ea2: 9002         	str	r0, [sp, #0x8]
 8056ea4: d207         	bhs	0x8056eb6 <pvPortMalloc+0x118> @ imm = #0xe
 8056ea6: e7ff         	b	0x8056ea8 <pvPortMalloc+0x10a> @ imm = #-0x2
 8056ea8: 9808         	ldr	r0, [sp, #0x20]
 8056eaa: 6800         	ldr	r0, [r0]
 8056eac: 2800         	cmp	r0, #0x0
 8056eae: bf18         	it	ne
 8056eb0: 2001         	movne	r0, #0x1
 8056eb2: 9002         	str	r0, [sp, #0x8]
 8056eb4: e7ff         	b	0x8056eb6 <pvPortMalloc+0x118> @ imm = #-0x2
 8056eb6: 9802         	ldr	r0, [sp, #0x8]
;                 while( ( pxBlock->xBlockSize < xWantedSize ) && ( pxBlock->pxNextFreeBlock != heapPROTECT_BLOCK_POINTER( NULL ) ) )
 8056eb8: 07c0         	lsls	r0, r0, #0x1f
 8056eba: b330         	cbz	r0, 0x8056f0a <pvPortMalloc+0x16c> @ imm = #0x4c
 8056ebc: e7ff         	b	0x8056ebe <pvPortMalloc+0x120> @ imm = #-0x2
;                     pxPreviousBlock = pxBlock;
 8056ebe: 9808         	ldr	r0, [sp, #0x20]
 8056ec0: 9007         	str	r0, [sp, #0x1c]
;                     pxBlock = heapPROTECT_BLOCK_POINTER( pxBlock->pxNextFreeBlock );
 8056ec2: 9808         	ldr	r0, [sp, #0x20]
 8056ec4: 6800         	ldr	r0, [r0]
 8056ec6: 9008         	str	r0, [sp, #0x20]
;                     heapVALIDATE_BLOCK_POINTER( pxBlock );
 8056ec8: 9908         	ldr	r1, [sp, #0x20]
 8056eca: 2000         	movs	r0, #0x0
 8056ecc: f240 3274    	movw	r2, #0x374
 8056ed0: f2c2 0200    	movt	r2, #0x2000
 8056ed4: 4291         	cmp	r1, r2
 8056ed6: 9001         	str	r0, [sp, #0x4]
 8056ed8: d30e         	blo	0x8056ef8 <pvPortMalloc+0x15a> @ imm = #0x1c
 8056eda: e7ff         	b	0x8056edc <pvPortMalloc+0x13e> @ imm = #-0x2
 8056edc: 9908         	ldr	r1, [sp, #0x20]
 8056ede: f240 3074    	movw	r0, #0x374
 8056ee2: f2c2 0000    	movt	r0, #0x2000
 8056ee6: f641 72ff    	movw	r2, #0x1fff
 8056eea: 4402         	add	r2, r0
 8056eec: 2000         	movs	r0, #0x0
 8056eee: 4291         	cmp	r1, r2
 8056ef0: bf98         	it	ls
 8056ef2: 2001         	movls	r0, #0x1
 8056ef4: 9001         	str	r0, [sp, #0x4]
 8056ef6: e7ff         	b	0x8056ef8 <pvPortMalloc+0x15a> @ imm = #-0x2
 8056ef8: 9801         	ldr	r0, [sp, #0x4]
;                     heapVALIDATE_BLOCK_POINTER( pxBlock );
 8056efa: 07c0         	lsls	r0, r0, #0x1f
 8056efc: b920         	cbnz	r0, 0x8056f08 <pvPortMalloc+0x16a> @ imm = #0x8
 8056efe: e7ff         	b	0x8056f00 <pvPortMalloc+0x162> @ imm = #-0x2
 8056f00: f000 fbcb    	bl	0x805769a <ulSetInterruptMask> @ imm = #0x796
 8056f04: e7ff         	b	0x8056f06 <pvPortMalloc+0x168> @ imm = #-0x2
 8056f06: e7fe         	b	0x8056f06 <pvPortMalloc+0x168> @ imm = #-0x4
;                 while( ( pxBlock->xBlockSize < xWantedSize ) && ( pxBlock->pxNextFreeBlock != heapPROTECT_BLOCK_POINTER( NULL ) ) )
 8056f08: e7c6         	b	0x8056e98 <pvPortMalloc+0xfa> @ imm = #-0x74
;                 if( pxBlock != pxEnd )
 8056f0a: 9808         	ldr	r0, [sp, #0x20]
 8056f0c: f240 3164    	movw	r1, #0x364
 8056f10: f2c2 0100    	movt	r1, #0x2000
 8056f14: 6809         	ldr	r1, [r1]
 8056f16: 4288         	cmp	r0, r1
 8056f18: f000 8087    	beq.w	0x805702a <pvPortMalloc+0x28c> @ imm = #0x10e
 8056f1c: e7ff         	b	0x8056f1e <pvPortMalloc+0x180> @ imm = #-0x2
;                     pvReturn = ( void * ) ( ( ( uint8_t * ) heapPROTECT_BLOCK_POINTER( pxPreviousBlock->pxNextFreeBlock ) ) + xHeapStructSize );
 8056f1e: 9807         	ldr	r0, [sp, #0x1c]
 8056f20: 6800         	ldr	r0, [r0]
 8056f22: 3008         	adds	r0, #0x8
 8056f24: 9005         	str	r0, [sp, #0x14]
;                     heapVALIDATE_BLOCK_POINTER( pvReturn );
 8056f26: 9905         	ldr	r1, [sp, #0x14]
 8056f28: 2000         	movs	r0, #0x0
 8056f2a: f240 3274    	movw	r2, #0x374
 8056f2e: f2c2 0200    	movt	r2, #0x2000
 8056f32: 4291         	cmp	r1, r2
 8056f34: 9000         	str	r0, [sp]
 8056f36: d30e         	blo	0x8056f56 <pvPortMalloc+0x1b8> @ imm = #0x1c
 8056f38: e7ff         	b	0x8056f3a <pvPortMalloc+0x19c> @ imm = #-0x2
 8056f3a: 9905         	ldr	r1, [sp, #0x14]
 8056f3c: f240 3074    	movw	r0, #0x374
 8056f40: f2c2 0000    	movt	r0, #0x2000
 8056f44: f641 72ff    	movw	r2, #0x1fff
 8056f48: 4402         	add	r2, r0
 8056f4a: 2000         	movs	r0, #0x0
 8056f4c: 4291         	cmp	r1, r2
 8056f4e: bf98         	it	ls
 8056f50: 2001         	movls	r0, #0x1
 8056f52: 9000         	str	r0, [sp]
 8056f54: e7ff         	b	0x8056f56 <pvPortMalloc+0x1b8> @ imm = #-0x2
 8056f56: 9800         	ldr	r0, [sp]
;                     heapVALIDATE_BLOCK_POINTER( pvReturn );
 8056f58: 07c0         	lsls	r0, r0, #0x1f
 8056f5a: b920         	cbnz	r0, 0x8056f66 <pvPortMalloc+0x1c8> @ imm = #0x8
 8056f5c: e7ff         	b	0x8056f5e <pvPortMalloc+0x1c0> @ imm = #-0x2
 8056f5e: f000 fb9c    	bl	0x805769a <ulSetInterruptMask> @ imm = #0x738
 8056f62: e7ff         	b	0x8056f64 <pvPortMalloc+0x1c6> @ imm = #-0x2
 8056f64: e7fe         	b	0x8056f64 <pvPortMalloc+0x1c6> @ imm = #-0x4
;                     pxPreviousBlock->pxNextFreeBlock = pxBlock->pxNextFreeBlock;
 8056f66: 9808         	ldr	r0, [sp, #0x20]
 8056f68: 6800         	ldr	r0, [r0]
 8056f6a: 9907         	ldr	r1, [sp, #0x1c]
 8056f6c: 6008         	str	r0, [r1]
;                     configASSERT( heapSUBTRACT_WILL_UNDERFLOW( pxBlock->xBlockSize, xWantedSize ) == 0 );
 8056f6e: 9808         	ldr	r0, [sp, #0x20]
 8056f70: 6840         	ldr	r0, [r0, #0x4]
 8056f72: 9909         	ldr	r1, [sp, #0x24]
 8056f74: 4288         	cmp	r0, r1
 8056f76: d204         	bhs	0x8056f82 <pvPortMalloc+0x1e4> @ imm = #0x8
 8056f78: e7ff         	b	0x8056f7a <pvPortMalloc+0x1dc> @ imm = #-0x2
 8056f7a: f000 fb8e    	bl	0x805769a <ulSetInterruptMask> @ imm = #0x71c
 8056f7e: e7ff         	b	0x8056f80 <pvPortMalloc+0x1e2> @ imm = #-0x2
 8056f80: e7fe         	b	0x8056f80 <pvPortMalloc+0x1e2> @ imm = #-0x4
;                     if( ( pxBlock->xBlockSize - xWantedSize ) > heapMINIMUM_BLOCK_SIZE )
 8056f82: 9808         	ldr	r0, [sp, #0x20]
 8056f84: 6840         	ldr	r0, [r0, #0x4]
 8056f86: 9909         	ldr	r1, [sp, #0x24]
 8056f88: 1a40         	subs	r0, r0, r1
 8056f8a: 2811         	cmp	r0, #0x11
 8056f8c: d31e         	blo	0x8056fcc <pvPortMalloc+0x22e> @ imm = #0x3c
 8056f8e: e7ff         	b	0x8056f90 <pvPortMalloc+0x1f2> @ imm = #-0x2
;                         pxNewBlockLink = ( void * ) ( ( ( uint8_t * ) pxBlock ) + xWantedSize );
 8056f90: 9808         	ldr	r0, [sp, #0x20]
 8056f92: 9909         	ldr	r1, [sp, #0x24]
 8056f94: 4408         	add	r0, r1
 8056f96: 9006         	str	r0, [sp, #0x18]
;                         configASSERT( ( ( ( size_t ) pxNewBlockLink ) & portBYTE_ALIGNMENT_MASK ) == 0 );
 8056f98: f89d 0018    	ldrb.w	r0, [sp, #0x18]
 8056f9c: 0740         	lsls	r0, r0, #0x1d
 8056f9e: b120         	cbz	r0, 0x8056faa <pvPortMalloc+0x20c> @ imm = #0x8
 8056fa0: e7ff         	b	0x8056fa2 <pvPortMalloc+0x204> @ imm = #-0x2
 8056fa2: f000 fb7a    	bl	0x805769a <ulSetInterruptMask> @ imm = #0x6f4
 8056fa6: e7ff         	b	0x8056fa8 <pvPortMalloc+0x20a> @ imm = #-0x2
 8056fa8: e7fe         	b	0x8056fa8 <pvPortMalloc+0x20a> @ imm = #-0x4
;                         pxNewBlockLink->xBlockSize = pxBlock->xBlockSize - xWantedSize;
 8056faa: 9808         	ldr	r0, [sp, #0x20]
 8056fac: 6840         	ldr	r0, [r0, #0x4]
 8056fae: 9909         	ldr	r1, [sp, #0x24]
 8056fb0: 1a40         	subs	r0, r0, r1
 8056fb2: 9906         	ldr	r1, [sp, #0x18]
 8056fb4: 6048         	str	r0, [r1, #0x4]
;                         pxBlock->xBlockSize = xWantedSize;
 8056fb6: 9809         	ldr	r0, [sp, #0x24]
 8056fb8: 9908         	ldr	r1, [sp, #0x20]
 8056fba: 6048         	str	r0, [r1, #0x4]
;                         pxNewBlockLink->pxNextFreeBlock = pxPreviousBlock->pxNextFreeBlock;
 8056fbc: 9807         	ldr	r0, [sp, #0x1c]
 8056fbe: 6800         	ldr	r0, [r0]
 8056fc0: 9906         	ldr	r1, [sp, #0x18]
 8056fc2: 6008         	str	r0, [r1]
;                         pxPreviousBlock->pxNextFreeBlock = heapPROTECT_BLOCK_POINTER( pxNewBlockLink );
 8056fc4: 9806         	ldr	r0, [sp, #0x18]
 8056fc6: 9907         	ldr	r1, [sp, #0x1c]
 8056fc8: 6008         	str	r0, [r1]
;                     }
 8056fca: e000         	b	0x8056fce <pvPortMalloc+0x230> @ imm = #0x0
 8056fcc: e7ff         	b	0x8056fce <pvPortMalloc+0x230> @ imm = #-0x2
;                     xFreeBytesRemaining -= pxBlock->xBlockSize;
 8056fce: 9808         	ldr	r0, [sp, #0x20]
 8056fd0: 6842         	ldr	r2, [r0, #0x4]
 8056fd2: f240 3068    	movw	r0, #0x368
 8056fd6: f2c2 0000    	movt	r0, #0x2000
 8056fda: 6801         	ldr	r1, [r0]
 8056fdc: 1a89         	subs	r1, r1, r2
 8056fde: 6001         	str	r1, [r0]
;                     if( xFreeBytesRemaining < xMinimumEverFreeBytesRemaining )
 8056fe0: 6800         	ldr	r0, [r0]
 8056fe2: f242 3174    	movw	r1, #0x2374
 8056fe6: f2c2 0100    	movt	r1, #0x2000
 8056fea: 6809         	ldr	r1, [r1]
 8056fec: 4288         	cmp	r0, r1
 8056fee: d20b         	bhs	0x8057008 <pvPortMalloc+0x26a> @ imm = #0x16
 8056ff0: e7ff         	b	0x8056ff2 <pvPortMalloc+0x254> @ imm = #-0x2
;                         xMinimumEverFreeBytesRemaining = xFreeBytesRemaining;
 8056ff2: f240 3068    	movw	r0, #0x368
 8056ff6: f2c2 0000    	movt	r0, #0x2000
 8056ffa: 6800         	ldr	r0, [r0]
 8056ffc: f242 3174    	movw	r1, #0x2374
 8057000: f2c2 0100    	movt	r1, #0x2000
 8057004: 6008         	str	r0, [r1]
;                     }
 8057006: e000         	b	0x805700a <pvPortMalloc+0x26c> @ imm = #0x0
 8057008: e7ff         	b	0x805700a <pvPortMalloc+0x26c> @ imm = #-0x2
;                     heapALLOCATE_BLOCK( pxBlock );
 805700a: 9908         	ldr	r1, [sp, #0x20]
 805700c: 6848         	ldr	r0, [r1, #0x4]
 805700e: f040 4000    	orr	r0, r0, #0x80000000
 8057012: 6048         	str	r0, [r1, #0x4]
;                     pxBlock->pxNextFreeBlock = NULL;
 8057014: 9908         	ldr	r1, [sp, #0x20]
 8057016: 2000         	movs	r0, #0x0
 8057018: 6008         	str	r0, [r1]
;                     xNumberOfSuccessfulAllocations++;
 805701a: f242 3178    	movw	r1, #0x2378
 805701e: f2c2 0100    	movt	r1, #0x2000
 8057022: 6808         	ldr	r0, [r1]
 8057024: 3001         	adds	r0, #0x1
 8057026: 6008         	str	r0, [r1]
;                 }
 8057028: e000         	b	0x805702c <pvPortMalloc+0x28e> @ imm = #0x0
 805702a: e7ff         	b	0x805702c <pvPortMalloc+0x28e> @ imm = #-0x2
;             }
 805702c: e000         	b	0x8057030 <pvPortMalloc+0x292> @ imm = #0x0
 805702e: e7ff         	b	0x8057030 <pvPortMalloc+0x292> @ imm = #-0x2
;         }
 8057030: e000         	b	0x8057034 <pvPortMalloc+0x296> @ imm = #0x0
 8057032: e7ff         	b	0x8057034 <pvPortMalloc+0x296> @ imm = #-0x2
;     ( void ) xTaskResumeAll();
 8057034: f7fe faba    	bl	0x80555ac <xTaskResumeAll> @ imm = #-0x1a8c
;     configASSERT( ( ( ( size_t ) pvReturn ) & ( size_t ) portBYTE_ALIGNMENT_MASK ) == 0 );
 8057038: f89d 0014    	ldrb.w	r0, [sp, #0x14]
 805703c: 0740         	lsls	r0, r0, #0x1d
 805703e: b120         	cbz	r0, 0x805704a <pvPortMalloc+0x2ac> @ imm = #0x8
 8057040: e7ff         	b	0x8057042 <pvPortMalloc+0x2a4> @ imm = #-0x2
 8057042: f000 fb2a    	bl	0x805769a <ulSetInterruptMask> @ imm = #0x654
 8057046: e7ff         	b	0x8057048 <pvPortMalloc+0x2aa> @ imm = #-0x2
 8057048: e7fe         	b	0x8057048 <pvPortMalloc+0x2aa> @ imm = #-0x4
;     return pvReturn;
 805704a: 9805         	ldr	r0, [sp, #0x14]
 805704c: b00a         	add	sp, #0x28
 805704e: bd80         	pop	{r7, pc}

08057050 <prvHeapInit>:
; {
 8057050: b084         	sub	sp, #0x10
 8057052: f44f 5000    	mov.w	r0, #0x2000
;     size_t xTotalHeapSize = configTOTAL_HEAP_SIZE;
 8057056: 9000         	str	r0, [sp]
;     uxStartAddress = ( portPOINTER_SIZE_TYPE ) ucHeap;
 8057058: f240 3074    	movw	r0, #0x374
 805705c: f2c2 0000    	movt	r0, #0x2000
 8057060: 9002         	str	r0, [sp, #0x8]
;     if( ( uxStartAddress & portBYTE_ALIGNMENT_MASK ) != 0 )
 8057062: f89d 0008    	ldrb.w	r0, [sp, #0x8]
 8057066: 0740         	lsls	r0, r0, #0x1d
 8057068: b188         	cbz	r0, 0x805708e <prvHeapInit+0x3e> @ imm = #0x22
 805706a: e7ff         	b	0x805706c <prvHeapInit+0x1c> @ imm = #-0x2
;         uxStartAddress += ( portBYTE_ALIGNMENT - 1 );
 805706c: 9802         	ldr	r0, [sp, #0x8]
 805706e: 3007         	adds	r0, #0x7
 8057070: 9002         	str	r0, [sp, #0x8]
;         uxStartAddress &= ~( ( portPOINTER_SIZE_TYPE ) portBYTE_ALIGNMENT_MASK );
 8057072: 9802         	ldr	r0, [sp, #0x8]
 8057074: f020 0007    	bic	r0, r0, #0x7
 8057078: 9002         	str	r0, [sp, #0x8]
;         xTotalHeapSize -= ( size_t ) ( uxStartAddress - ( portPOINTER_SIZE_TYPE ) ucHeap );
 805707a: 9a02         	ldr	r2, [sp, #0x8]
 805707c: f240 3174    	movw	r1, #0x374
 8057080: f2c2 0100    	movt	r1, #0x2000
 8057084: 9800         	ldr	r0, [sp]
 8057086: 1a89         	subs	r1, r1, r2
 8057088: 4408         	add	r0, r1
 805708a: 9000         	str	r0, [sp]
;     }
 805708c: e7ff         	b	0x805708e <prvHeapInit+0x3e> @ imm = #-0x2
;     xStart.pxNextFreeBlock = ( void * ) heapPROTECT_BLOCK_POINTER( uxStartAddress );
 805708e: 9902         	ldr	r1, [sp, #0x8]
 8057090: f240 306c    	movw	r0, #0x36c
 8057094: f2c2 0000    	movt	r0, #0x2000
 8057098: 6001         	str	r1, [r0]
 805709a: 2100         	movs	r1, #0x0
;     xStart.xBlockSize = ( size_t ) 0;
 805709c: 6041         	str	r1, [r0, #0x4]
;     uxEndAddress = uxStartAddress + ( portPOINTER_SIZE_TYPE ) xTotalHeapSize;
 805709e: 9802         	ldr	r0, [sp, #0x8]
 80570a0: 9a00         	ldr	r2, [sp]
 80570a2: 4410         	add	r0, r2
 80570a4: 9001         	str	r0, [sp, #0x4]
;     uxEndAddress -= ( portPOINTER_SIZE_TYPE ) xHeapStructSize;
 80570a6: 9801         	ldr	r0, [sp, #0x4]
 80570a8: 3808         	subs	r0, #0x8
 80570aa: 9001         	str	r0, [sp, #0x4]
;     uxEndAddress &= ~( ( portPOINTER_SIZE_TYPE ) portBYTE_ALIGNMENT_MASK );
 80570ac: 9801         	ldr	r0, [sp, #0x4]
 80570ae: f020 0007    	bic	r0, r0, #0x7
 80570b2: 9001         	str	r0, [sp, #0x4]
;     pxEnd = ( BlockLink_t * ) uxEndAddress;
 80570b4: 9a01         	ldr	r2, [sp, #0x4]
 80570b6: f240 3064    	movw	r0, #0x364
 80570ba: f2c2 0000    	movt	r0, #0x2000
 80570be: 6002         	str	r2, [r0]
;     pxEnd->xBlockSize = 0;
 80570c0: 6802         	ldr	r2, [r0]
 80570c2: 6051         	str	r1, [r2, #0x4]
;     pxEnd->pxNextFreeBlock = heapPROTECT_BLOCK_POINTER( NULL );
 80570c4: 6802         	ldr	r2, [r0]
 80570c6: 6011         	str	r1, [r2]
;     pxFirstFreeBlock = ( BlockLink_t * ) uxStartAddress;
 80570c8: 9902         	ldr	r1, [sp, #0x8]
 80570ca: 9103         	str	r1, [sp, #0xc]
;     pxFirstFreeBlock->xBlockSize = ( size_t ) ( uxEndAddress - ( portPOINTER_SIZE_TYPE ) pxFirstFreeBlock );
 80570cc: 9901         	ldr	r1, [sp, #0x4]
 80570ce: 9a03         	ldr	r2, [sp, #0xc]
 80570d0: 1a89         	subs	r1, r1, r2
 80570d2: 6051         	str	r1, [r2, #0x4]
;     pxFirstFreeBlock->pxNextFreeBlock = heapPROTECT_BLOCK_POINTER( pxEnd );
 80570d4: 6800         	ldr	r0, [r0]
 80570d6: 9903         	ldr	r1, [sp, #0xc]
 80570d8: 6008         	str	r0, [r1]
;     xMinimumEverFreeBytesRemaining = pxFirstFreeBlock->xBlockSize;
 80570da: 9803         	ldr	r0, [sp, #0xc]
 80570dc: 6840         	ldr	r0, [r0, #0x4]
 80570de: f242 3174    	movw	r1, #0x2374
 80570e2: f2c2 0100    	movt	r1, #0x2000
 80570e6: 6008         	str	r0, [r1]
;     xFreeBytesRemaining = pxFirstFreeBlock->xBlockSize;
 80570e8: 9803         	ldr	r0, [sp, #0xc]
 80570ea: 6840         	ldr	r0, [r0, #0x4]
 80570ec: f240 3168    	movw	r1, #0x368
 80570f0: f2c2 0100    	movt	r1, #0x2000
 80570f4: 6008         	str	r0, [r1]
; }
 80570f6: b004         	add	sp, #0x10
 80570f8: 4770         	bx	lr

080570fa <vPortFree>:
; {
 80570fa: b580         	push	{r7, lr}
 80570fc: 466f         	mov	r7, sp
 80570fe: b084         	sub	sp, #0x10
 8057100: 9003         	str	r0, [sp, #0xc]
;     uint8_t * puc = ( uint8_t * ) pv;
 8057102: 9803         	ldr	r0, [sp, #0xc]
 8057104: 9002         	str	r0, [sp, #0x8]
;     if( pv != NULL )
 8057106: 9803         	ldr	r0, [sp, #0xc]
 8057108: 2800         	cmp	r0, #0x0
 805710a: d064         	beq	0x80571d6 <vPortFree+0xdc> @ imm = #0xc8
 805710c: e7ff         	b	0x805710e <vPortFree+0x14> @ imm = #-0x2
;         puc -= xHeapStructSize;
 805710e: 9802         	ldr	r0, [sp, #0x8]
 8057110: 3808         	subs	r0, #0x8
 8057112: 9002         	str	r0, [sp, #0x8]
;         pxLink = ( void * ) puc;
 8057114: 9802         	ldr	r0, [sp, #0x8]
 8057116: 9001         	str	r0, [sp, #0x4]
;         heapVALIDATE_BLOCK_POINTER( pxLink );
 8057118: 9901         	ldr	r1, [sp, #0x4]
 805711a: 2000         	movs	r0, #0x0
 805711c: f240 3274    	movw	r2, #0x374
 8057120: f2c2 0200    	movt	r2, #0x2000
 8057124: 4291         	cmp	r1, r2
 8057126: 9000         	str	r0, [sp]
 8057128: d30e         	blo	0x8057148 <vPortFree+0x4e> @ imm = #0x1c
 805712a: e7ff         	b	0x805712c <vPortFree+0x32> @ imm = #-0x2
 805712c: 9901         	ldr	r1, [sp, #0x4]
 805712e: f240 3074    	movw	r0, #0x374
 8057132: f2c2 0000    	movt	r0, #0x2000
 8057136: f641 72ff    	movw	r2, #0x1fff
 805713a: 4402         	add	r2, r0
 805713c: 2000         	movs	r0, #0x0
 805713e: 4291         	cmp	r1, r2
 8057140: bf98         	it	ls
 8057142: 2001         	movls	r0, #0x1
 8057144: 9000         	str	r0, [sp]
 8057146: e7ff         	b	0x8057148 <vPortFree+0x4e> @ imm = #-0x2
 8057148: 9800         	ldr	r0, [sp]
;         heapVALIDATE_BLOCK_POINTER( pxLink );
 805714a: 07c0         	lsls	r0, r0, #0x1f
 805714c: b920         	cbnz	r0, 0x8057158 <vPortFree+0x5e> @ imm = #0x8
 805714e: e7ff         	b	0x8057150 <vPortFree+0x56> @ imm = #-0x2
 8057150: f000 faa3    	bl	0x805769a <ulSetInterruptMask> @ imm = #0x546
 8057154: e7ff         	b	0x8057156 <vPortFree+0x5c> @ imm = #-0x2
 8057156: e7fe         	b	0x8057156 <vPortFree+0x5c> @ imm = #-0x4
;         configASSERT( heapBLOCK_IS_ALLOCATED( pxLink ) != 0 );
 8057158: 9801         	ldr	r0, [sp, #0x4]
 805715a: 79c1         	ldrb	r1, [r0, #0x7]
 805715c: 2000         	movs	r0, #0x0
 805715e: ebb0 1fd1    	cmp.w	r0, r1, lsr #7
 8057162: d104         	bne	0x805716e <vPortFree+0x74> @ imm = #0x8
 8057164: e7ff         	b	0x8057166 <vPortFree+0x6c> @ imm = #-0x2
 8057166: f000 fa98    	bl	0x805769a <ulSetInterruptMask> @ imm = #0x530
 805716a: e7ff         	b	0x805716c <vPortFree+0x72> @ imm = #-0x2
 805716c: e7fe         	b	0x805716c <vPortFree+0x72> @ imm = #-0x4
;         configASSERT( pxLink->pxNextFreeBlock == NULL );
 805716e: 9801         	ldr	r0, [sp, #0x4]
 8057170: 6800         	ldr	r0, [r0]
 8057172: b120         	cbz	r0, 0x805717e <vPortFree+0x84> @ imm = #0x8
 8057174: e7ff         	b	0x8057176 <vPortFree+0x7c> @ imm = #-0x2
 8057176: f000 fa90    	bl	0x805769a <ulSetInterruptMask> @ imm = #0x520
 805717a: e7ff         	b	0x805717c <vPortFree+0x82> @ imm = #-0x2
 805717c: e7fe         	b	0x805717c <vPortFree+0x82> @ imm = #-0x4
;         if( heapBLOCK_IS_ALLOCATED( pxLink ) != 0 )
 805717e: 9801         	ldr	r0, [sp, #0x4]
 8057180: 79c1         	ldrb	r1, [r0, #0x7]
 8057182: 2000         	movs	r0, #0x0
 8057184: ebb0 1fd1    	cmp.w	r0, r1, lsr #7
 8057188: d023         	beq	0x80571d2 <vPortFree+0xd8> @ imm = #0x46
 805718a: e7ff         	b	0x805718c <vPortFree+0x92> @ imm = #-0x2
;             if( pxLink->pxNextFreeBlock == NULL )
 805718c: 9801         	ldr	r0, [sp, #0x4]
 805718e: 6800         	ldr	r0, [r0]
 8057190: b9e8         	cbnz	r0, 0x80571ce <vPortFree+0xd4> @ imm = #0x3a
 8057192: e7ff         	b	0x8057194 <vPortFree+0x9a> @ imm = #-0x2
;                 heapFREE_BLOCK( pxLink );
 8057194: 9901         	ldr	r1, [sp, #0x4]
 8057196: 6848         	ldr	r0, [r1, #0x4]
 8057198: f020 4000    	bic	r0, r0, #0x80000000
 805719c: 6048         	str	r0, [r1, #0x4]
;                 vTaskSuspendAll();
 805719e: f7fe f97d    	bl	0x805549c <vTaskSuspendAll> @ imm = #-0x1d06
;                     xFreeBytesRemaining += pxLink->xBlockSize;
 80571a2: 9801         	ldr	r0, [sp, #0x4]
 80571a4: 6842         	ldr	r2, [r0, #0x4]
 80571a6: f240 3168    	movw	r1, #0x368
 80571aa: f2c2 0100    	movt	r1, #0x2000
 80571ae: 6808         	ldr	r0, [r1]
 80571b0: 4410         	add	r0, r2
 80571b2: 6008         	str	r0, [r1]
;                     prvInsertBlockIntoFreeList( ( ( BlockLink_t * ) pxLink ) );
 80571b4: 9801         	ldr	r0, [sp, #0x4]
 80571b6: f000 f810    	bl	0x80571da <prvInsertBlockIntoFreeList> @ imm = #0x20
;                     xNumberOfSuccessfulFrees++;
 80571ba: f242 317c    	movw	r1, #0x237c
 80571be: f2c2 0100    	movt	r1, #0x2000
 80571c2: 6808         	ldr	r0, [r1]
 80571c4: 3001         	adds	r0, #0x1
 80571c6: 6008         	str	r0, [r1]
;                 ( void ) xTaskResumeAll();
 80571c8: f7fe f9f0    	bl	0x80555ac <xTaskResumeAll> @ imm = #-0x1c20
;             }
 80571cc: e000         	b	0x80571d0 <vPortFree+0xd6> @ imm = #0x0
 80571ce: e7ff         	b	0x80571d0 <vPortFree+0xd6> @ imm = #-0x2
;         }
 80571d0: e000         	b	0x80571d4 <vPortFree+0xda> @ imm = #0x0
 80571d2: e7ff         	b	0x80571d4 <vPortFree+0xda> @ imm = #-0x2
;     }
 80571d4: e7ff         	b	0x80571d6 <vPortFree+0xdc> @ imm = #-0x2
; }
 80571d6: b004         	add	sp, #0x10
 80571d8: bd80         	pop	{r7, pc}

080571da <prvInsertBlockIntoFreeList>:
; {
 80571da: b580         	push	{r7, lr}
 80571dc: 466f         	mov	r7, sp
 80571de: b084         	sub	sp, #0x10
 80571e0: 9003         	str	r0, [sp, #0xc]
;     for( pxIterator = &xStart; heapPROTECT_BLOCK_POINTER( pxIterator->pxNextFreeBlock ) < pxBlockToInsert; pxIterator = heapPROTECT_BLOCK_POINTER( pxIterator->pxNextFreeBlock ) )
 80571e2: f240 306c    	movw	r0, #0x36c
 80571e6: f2c2 0000    	movt	r0, #0x2000
 80571ea: 9002         	str	r0, [sp, #0x8]
 80571ec: e7ff         	b	0x80571ee <prvInsertBlockIntoFreeList+0x14> @ imm = #-0x2
 80571ee: 9802         	ldr	r0, [sp, #0x8]
 80571f0: 6800         	ldr	r0, [r0]
 80571f2: 9903         	ldr	r1, [sp, #0xc]
 80571f4: 4288         	cmp	r0, r1
 80571f6: d205         	bhs	0x8057204 <prvInsertBlockIntoFreeList+0x2a> @ imm = #0xa
 80571f8: e7ff         	b	0x80571fa <prvInsertBlockIntoFreeList+0x20> @ imm = #-0x2
;     }
 80571fa: e7ff         	b	0x80571fc <prvInsertBlockIntoFreeList+0x22> @ imm = #-0x2
;     for( pxIterator = &xStart; heapPROTECT_BLOCK_POINTER( pxIterator->pxNextFreeBlock ) < pxBlockToInsert; pxIterator = heapPROTECT_BLOCK_POINTER( pxIterator->pxNextFreeBlock ) )
 80571fc: 9802         	ldr	r0, [sp, #0x8]
 80571fe: 6800         	ldr	r0, [r0]
 8057200: 9002         	str	r0, [sp, #0x8]
 8057202: e7f4         	b	0x80571ee <prvInsertBlockIntoFreeList+0x14> @ imm = #-0x18
;     if( pxIterator != &xStart )
 8057204: 9802         	ldr	r0, [sp, #0x8]
 8057206: f240 316c    	movw	r1, #0x36c
 805720a: f2c2 0100    	movt	r1, #0x2000
 805720e: 4288         	cmp	r0, r1
 8057210: d021         	beq	0x8057256 <prvInsertBlockIntoFreeList+0x7c> @ imm = #0x42
 8057212: e7ff         	b	0x8057214 <prvInsertBlockIntoFreeList+0x3a> @ imm = #-0x2
;         heapVALIDATE_BLOCK_POINTER( pxIterator );
 8057214: 9902         	ldr	r1, [sp, #0x8]
 8057216: 2000         	movs	r0, #0x0
 8057218: f240 3274    	movw	r2, #0x374
 805721c: f2c2 0200    	movt	r2, #0x2000
 8057220: 4291         	cmp	r1, r2
 8057222: 9000         	str	r0, [sp]
 8057224: d30e         	blo	0x8057244 <prvInsertBlockIntoFreeList+0x6a> @ imm = #0x1c
 8057226: e7ff         	b	0x8057228 <prvInsertBlockIntoFreeList+0x4e> @ imm = #-0x2
 8057228: 9902         	ldr	r1, [sp, #0x8]
 805722a: f240 3074    	movw	r0, #0x374
 805722e: f2c2 0000    	movt	r0, #0x2000
 8057232: f641 72ff    	movw	r2, #0x1fff
 8057236: 4402         	add	r2, r0
 8057238: 2000         	movs	r0, #0x0
 805723a: 4291         	cmp	r1, r2
 805723c: bf98         	it	ls
 805723e: 2001         	movls	r0, #0x1
 8057240: 9000         	str	r0, [sp]
 8057242: e7ff         	b	0x8057244 <prvInsertBlockIntoFreeList+0x6a> @ imm = #-0x2
 8057244: 9800         	ldr	r0, [sp]
;         heapVALIDATE_BLOCK_POINTER( pxIterator );
 8057246: 07c0         	lsls	r0, r0, #0x1f
 8057248: b920         	cbnz	r0, 0x8057254 <prvInsertBlockIntoFreeList+0x7a> @ imm = #0x8
 805724a: e7ff         	b	0x805724c <prvInsertBlockIntoFreeList+0x72> @ imm = #-0x2
 805724c: f000 fa25    	bl	0x805769a <ulSetInterruptMask> @ imm = #0x44a
 8057250: e7ff         	b	0x8057252 <prvInsertBlockIntoFreeList+0x78> @ imm = #-0x2
 8057252: e7fe         	b	0x8057252 <prvInsertBlockIntoFreeList+0x78> @ imm = #-0x4
;     }
 8057254: e7ff         	b	0x8057256 <prvInsertBlockIntoFreeList+0x7c> @ imm = #-0x2
;     puc = ( uint8_t * ) pxIterator;
 8057256: 9802         	ldr	r0, [sp, #0x8]
 8057258: 9001         	str	r0, [sp, #0x4]
;     if( ( puc + pxIterator->xBlockSize ) == ( uint8_t * ) pxBlockToInsert )
 805725a: 9801         	ldr	r0, [sp, #0x4]
 805725c: 9902         	ldr	r1, [sp, #0x8]
 805725e: 6849         	ldr	r1, [r1, #0x4]
 8057260: 4408         	add	r0, r1
 8057262: 9903         	ldr	r1, [sp, #0xc]
 8057264: 4288         	cmp	r0, r1
 8057266: d109         	bne	0x805727c <prvInsertBlockIntoFreeList+0xa2> @ imm = #0x12
 8057268: e7ff         	b	0x805726a <prvInsertBlockIntoFreeList+0x90> @ imm = #-0x2
;         pxIterator->xBlockSize += pxBlockToInsert->xBlockSize;
 805726a: 9803         	ldr	r0, [sp, #0xc]
 805726c: 6842         	ldr	r2, [r0, #0x4]
 805726e: 9902         	ldr	r1, [sp, #0x8]
 8057270: 6848         	ldr	r0, [r1, #0x4]
 8057272: 4410         	add	r0, r2
 8057274: 6048         	str	r0, [r1, #0x4]
;         pxBlockToInsert = pxIterator;
 8057276: 9802         	ldr	r0, [sp, #0x8]
 8057278: 9003         	str	r0, [sp, #0xc]
;     }
 805727a: e000         	b	0x805727e <prvInsertBlockIntoFreeList+0xa4> @ imm = #0x0
 805727c: e7ff         	b	0x805727e <prvInsertBlockIntoFreeList+0xa4> @ imm = #-0x2
;     puc = ( uint8_t * ) pxBlockToInsert;
 805727e: 9803         	ldr	r0, [sp, #0xc]
 8057280: 9001         	str	r0, [sp, #0x4]
;     if( ( puc + pxBlockToInsert->xBlockSize ) == ( uint8_t * ) heapPROTECT_BLOCK_POINTER( pxIterator->pxNextFreeBlock ) )
 8057282: 9801         	ldr	r0, [sp, #0x4]
 8057284: 9903         	ldr	r1, [sp, #0xc]
 8057286: 6849         	ldr	r1, [r1, #0x4]
 8057288: 4408         	add	r0, r1
 805728a: 9902         	ldr	r1, [sp, #0x8]
 805728c: 6809         	ldr	r1, [r1]
 805728e: 4288         	cmp	r0, r1
 8057290: d120         	bne	0x80572d4 <prvInsertBlockIntoFreeList+0xfa> @ imm = #0x40
 8057292: e7ff         	b	0x8057294 <prvInsertBlockIntoFreeList+0xba> @ imm = #-0x2
;         if( heapPROTECT_BLOCK_POINTER( pxIterator->pxNextFreeBlock ) != pxEnd )
 8057294: 9802         	ldr	r0, [sp, #0x8]
 8057296: 6800         	ldr	r0, [r0]
 8057298: f240 3164    	movw	r1, #0x364
 805729c: f2c2 0100    	movt	r1, #0x2000
 80572a0: 6809         	ldr	r1, [r1]
 80572a2: 4288         	cmp	r0, r1
 80572a4: d00d         	beq	0x80572c2 <prvInsertBlockIntoFreeList+0xe8> @ imm = #0x1a
 80572a6: e7ff         	b	0x80572a8 <prvInsertBlockIntoFreeList+0xce> @ imm = #-0x2
;             pxBlockToInsert->xBlockSize += heapPROTECT_BLOCK_POINTER( pxIterator->pxNextFreeBlock )->xBlockSize;
 80572a8: 9802         	ldr	r0, [sp, #0x8]
 80572aa: 6800         	ldr	r0, [r0]
 80572ac: 6842         	ldr	r2, [r0, #0x4]
 80572ae: 9903         	ldr	r1, [sp, #0xc]
 80572b0: 6848         	ldr	r0, [r1, #0x4]
 80572b2: 4410         	add	r0, r2
 80572b4: 6048         	str	r0, [r1, #0x4]
;             pxBlockToInsert->pxNextFreeBlock = heapPROTECT_BLOCK_POINTER( pxIterator->pxNextFreeBlock )->pxNextFreeBlock;
 80572b6: 9802         	ldr	r0, [sp, #0x8]
 80572b8: 6800         	ldr	r0, [r0]
 80572ba: 6800         	ldr	r0, [r0]
 80572bc: 9903         	ldr	r1, [sp, #0xc]
 80572be: 6008         	str	r0, [r1]
;         }
 80572c0: e007         	b	0x80572d2 <prvInsertBlockIntoFreeList+0xf8> @ imm = #0xe
;             pxBlockToInsert->pxNextFreeBlock = heapPROTECT_BLOCK_POINTER( pxEnd );
 80572c2: f240 3064    	movw	r0, #0x364
 80572c6: f2c2 0000    	movt	r0, #0x2000
 80572ca: 6800         	ldr	r0, [r0]
 80572cc: 9903         	ldr	r1, [sp, #0xc]
 80572ce: 6008         	str	r0, [r1]
 80572d0: e7ff         	b	0x80572d2 <prvInsertBlockIntoFreeList+0xf8> @ imm = #-0x2
;     }
 80572d2: e004         	b	0x80572de <prvInsertBlockIntoFreeList+0x104> @ imm = #0x8
;         pxBlockToInsert->pxNextFreeBlock = pxIterator->pxNextFreeBlock;
 80572d4: 9802         	ldr	r0, [sp, #0x8]
 80572d6: 6800         	ldr	r0, [r0]
 80572d8: 9903         	ldr	r1, [sp, #0xc]
 80572da: 6008         	str	r0, [r1]
 80572dc: e7ff         	b	0x80572de <prvInsertBlockIntoFreeList+0x104> @ imm = #-0x2
;     if( pxIterator != pxBlockToInsert )
 80572de: 9802         	ldr	r0, [sp, #0x8]
 80572e0: 9903         	ldr	r1, [sp, #0xc]
 80572e2: 4288         	cmp	r0, r1
 80572e4: d004         	beq	0x80572f0 <prvInsertBlockIntoFreeList+0x116> @ imm = #0x8
 80572e6: e7ff         	b	0x80572e8 <prvInsertBlockIntoFreeList+0x10e> @ imm = #-0x2
;         pxIterator->pxNextFreeBlock = heapPROTECT_BLOCK_POINTER( pxBlockToInsert );
 80572e8: 9803         	ldr	r0, [sp, #0xc]
 80572ea: 9902         	ldr	r1, [sp, #0x8]
 80572ec: 6008         	str	r0, [r1]
;     }
 80572ee: e000         	b	0x80572f2 <prvInsertBlockIntoFreeList+0x118> @ imm = #0x0
 80572f0: e7ff         	b	0x80572f2 <prvInsertBlockIntoFreeList+0x118> @ imm = #-0x2
; }
 80572f2: b004         	add	sp, #0x10
 80572f4: bd80         	pop	{r7, pc}

080572f6 <vPortSetupTimerInterrupt>:
; {
 80572f6: f24e 0110    	movw	r1, #0xe010
 80572fa: f2ce 0100    	movt	r1, #0xe000
 80572fe: 2004         	movs	r0, #0x4
;     portNVIC_SYSTICK_CTRL_REG = portNVIC_SYSTICK_CLK_BIT_CONFIG;
 8057300: 6008         	str	r0, [r1]
 8057302: f24e 0218    	movw	r2, #0xe018
 8057306: f2ce 0200    	movt	r2, #0xe000
 805730a: 2000         	movs	r0, #0x0
;     portNVIC_SYSTICK_CURRENT_VALUE_REG = 0UL;
 805730c: 6010         	str	r0, [r2]
;     portNVIC_SYSTICK_LOAD_REG = ( configSYSTICK_CLOCK_HZ / configTICK_RATE_HZ ) - 1UL;
 805730e: f240 1004    	movw	r0, #0x104
 8057312: f2c2 0000    	movt	r0, #0x2000
 8057316: 6800         	ldr	r0, [r0]
 8057318: f644 52d3    	movw	r2, #0x4dd3
 805731c: f2c1 0262    	movt	r2, #0x1062
 8057320: fba0 0202    	umull	r0, r2, r0, r2
 8057324: f04f 30ff    	mov.w	r0, #0xffffffff
 8057328: eb00 1092    	add.w	r0, r0, r2, lsr #6
 805732c: f24e 0214    	movw	r2, #0xe014
 8057330: f2ce 0200    	movt	r2, #0xe000
 8057334: 6010         	str	r0, [r2]
 8057336: 2007         	movs	r0, #0x7
;     portNVIC_SYSTICK_CTRL_REG = portNVIC_SYSTICK_CLK_BIT_CONFIG | portNVIC_SYSTICK_INT_BIT | portNVIC_SYSTICK_ENABLE_BIT;
 8057338: 6008         	str	r0, [r1]
; }
 805733a: 4770         	bx	lr

0805733c <vPortYield>:
; {
 805733c: f64e 5104    	movw	r1, #0xed04
 8057340: f2ce 0100    	movt	r1, #0xe000
 8057344: f04f 5080    	mov.w	r0, #0x10000000
;     portNVIC_INT_CTRL_REG = portNVIC_PENDSVSET_BIT;
 8057348: 6008         	str	r0, [r1]
;     __asm volatile ( "dsb" ::: "memory" );
 805734a: f3bf 8f4f    	dsb	sy
;     __asm volatile ( "isb" );
 805734e: f3bf 8f6f    	isb	sy
; }
 8057352: 4770         	bx	lr

08057354 <vPortEnterCritical>:
; {
 8057354: b580         	push	{r7, lr}
 8057356: 466f         	mov	r7, sp
;     portDISABLE_INTERRUPTS();
 8057358: f000 f99f    	bl	0x805769a <ulSetInterruptMask> @ imm = #0x33e
;     ulCriticalNesting++;
 805735c: f240 1100    	movw	r1, #0x100
 8057360: f2c2 0100    	movt	r1, #0x2000
 8057364: 6808         	ldr	r0, [r1]
 8057366: 3001         	adds	r0, #0x1
 8057368: 6008         	str	r0, [r1]
;     __asm volatile ( "dsb" ::: "memory" );
 805736a: f3bf 8f4f    	dsb	sy
;     __asm volatile ( "isb" );
 805736e: f3bf 8f6f    	isb	sy
; }
 8057372: bd80         	pop	{r7, pc}

08057374 <vPortExitCritical>:
; {
 8057374: b580         	push	{r7, lr}
 8057376: 466f         	mov	r7, sp
;     configASSERT( ulCriticalNesting );
 8057378: f240 1000    	movw	r0, #0x100
 805737c: f2c2 0000    	movt	r0, #0x2000
 8057380: 6800         	ldr	r0, [r0]
 8057382: b920         	cbnz	r0, 0x805738e <vPortExitCritical+0x1a> @ imm = #0x8
 8057384: e7ff         	b	0x8057386 <vPortExitCritical+0x12> @ imm = #-0x2
 8057386: f000 f988    	bl	0x805769a <ulSetInterruptMask> @ imm = #0x310
 805738a: e7ff         	b	0x805738c <vPortExitCritical+0x18> @ imm = #-0x2
 805738c: e7fe         	b	0x805738c <vPortExitCritical+0x18> @ imm = #-0x4
;     ulCriticalNesting--;
 805738e: f240 1000    	movw	r0, #0x100
 8057392: f2c2 0000    	movt	r0, #0x2000
 8057396: 6801         	ldr	r1, [r0]
 8057398: 3901         	subs	r1, #0x1
 805739a: 6001         	str	r1, [r0]
;     if( ulCriticalNesting == 0 )
 805739c: 6800         	ldr	r0, [r0]
 805739e: b920         	cbnz	r0, 0x80573aa <vPortExitCritical+0x36> @ imm = #0x8
 80573a0: e7ff         	b	0x80573a2 <vPortExitCritical+0x2e> @ imm = #-0x2
 80573a2: 2000         	movs	r0, #0x0
;         portENABLE_INTERRUPTS();
 80573a4: f000 f984    	bl	0x80576b0 <vClearInterruptMask> @ imm = #0x308
;     }
 80573a8: e7ff         	b	0x80573aa <vPortExitCritical+0x36> @ imm = #-0x2
; }
 80573aa: bd80         	pop	{r7, pc}

080573ac <SysTick_Handler>:
; {
 80573ac: b580         	push	{r7, lr}
 80573ae: 466f         	mov	r7, sp
 80573b0: b082         	sub	sp, #0x8
;     ulPreviousMask = portSET_INTERRUPT_MASK_FROM_ISR();
 80573b2: f000 f972    	bl	0x805769a <ulSetInterruptMask> @ imm = #0x2e4
 80573b6: 9001         	str	r0, [sp, #0x4]
;         if( xTaskIncrementTick() != pdFALSE )
 80573b8: f7fe fb2a    	bl	0x8055a10 <xTaskIncrementTick> @ imm = #-0x19ac
 80573bc: b140         	cbz	r0, 0x80573d0 <SysTick_Handler+0x24> @ imm = #0x10
 80573be: e7ff         	b	0x80573c0 <SysTick_Handler+0x14> @ imm = #-0x2
 80573c0: f64e 5104    	movw	r1, #0xed04
 80573c4: f2ce 0100    	movt	r1, #0xe000
 80573c8: f04f 5080    	mov.w	r0, #0x10000000
;             portNVIC_INT_CTRL_REG = portNVIC_PENDSVSET_BIT;
 80573cc: 6008         	str	r0, [r1]
;         }
 80573ce: e000         	b	0x80573d2 <SysTick_Handler+0x26> @ imm = #0x0
 80573d0: e7ff         	b	0x80573d2 <SysTick_Handler+0x26> @ imm = #-0x2
;     portCLEAR_INTERRUPT_MASK_FROM_ISR( ulPreviousMask );
 80573d2: 9801         	ldr	r0, [sp, #0x4]
 80573d4: f000 f96c    	bl	0x80576b0 <vClearInterruptMask> @ imm = #0x2d8
; }
 80573d8: b002         	add	sp, #0x8
 80573da: bd80         	pop	{r7, pc}

080573dc <vPortSVCHandler_C>:
; {
 80573dc: b580         	push	{r7, lr}
 80573de: 466f         	mov	r7, sp
 80573e0: b084         	sub	sp, #0x10
 80573e2: 9003         	str	r0, [sp, #0xc]
;     ulPC = pulCallerStackAddress[ portOFFSET_TO_PC ];
 80573e4: 9803         	ldr	r0, [sp, #0xc]
 80573e6: 6980         	ldr	r0, [r0, #0x18]
 80573e8: 9002         	str	r0, [sp, #0x8]
;     ucSVCNumber = ( ( uint8_t * ) ulPC )[ -2 ];
 80573ea: 9802         	ldr	r0, [sp, #0x8]
 80573ec: f810 0c02    	ldrb	r0, [r0, #-2]
 80573f0: f807 0c09    	strb	r0, [r7, #-9]
;     switch( ucSVCNumber )
 80573f4: f817 0c09    	ldrb	r0, [r7, #-9]
 80573f8: 2802         	cmp	r0, #0x2
 80573fa: d103         	bne	0x8057404 <vPortSVCHandler_C+0x28> @ imm = #0x6
 80573fc: e7ff         	b	0x80573fe <vPortSVCHandler_C+0x22> @ imm = #-0x2
;             vRestoreContextOfFirstTask();
 80573fe: f000 f926    	bl	0x805764e <vRestoreContextOfFirstTask> @ imm = #0x24c
;             break;
 8057402: e003         	b	0x805740c <vPortSVCHandler_C+0x30> @ imm = #0x6
;             configASSERT( pdFALSE );
 8057404: f000 f949    	bl	0x805769a <ulSetInterruptMask> @ imm = #0x292
 8057408: e7ff         	b	0x805740a <vPortSVCHandler_C+0x2e> @ imm = #-0x2
 805740a: e7fe         	b	0x805740a <vPortSVCHandler_C+0x2e> @ imm = #-0x4
; }
 805740c: b004         	add	sp, #0x10
 805740e: bd80         	pop	{r7, pc}

08057410 <pxPortInitialiseStack>:
;     {
 8057410: b084         	sub	sp, #0x10
 8057412: 9003         	str	r0, [sp, #0xc]
 8057414: 9102         	str	r1, [sp, #0x8]
 8057416: 9201         	str	r2, [sp, #0x4]
 8057418: 9300         	str	r3, [sp]
;             pxTopOfStack--;                                          /* Offset added to account for the way the MCU uses the stack on entry/exit of interrupts. */
 805741a: 9803         	ldr	r0, [sp, #0xc]
 805741c: 3804         	subs	r0, #0x4
 805741e: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = portINITIAL_XPSR;                        /* xPSR. */
 8057420: 9903         	ldr	r1, [sp, #0xc]
 8057422: f04f 7080    	mov.w	r0, #0x1000000
 8057426: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 8057428: 9803         	ldr	r0, [sp, #0xc]
 805742a: 3804         	subs	r0, #0x4
 805742c: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) pxCode;                  /* PC. */
 805742e: 9801         	ldr	r0, [sp, #0x4]
 8057430: 9903         	ldr	r1, [sp, #0xc]
 8057432: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 8057434: 9803         	ldr	r0, [sp, #0xc]
 8057436: 3804         	subs	r0, #0x4
 8057438: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) portTASK_RETURN_ADDRESS; /* LR. */
 805743a: 9903         	ldr	r1, [sp, #0xc]
 805743c: f247 501b    	movw	r0, #0x751b
 8057440: f6c0 0005    	movt	r0, #0x805
 8057444: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 8057446: 9803         	ldr	r0, [sp, #0xc]
 8057448: 3804         	subs	r0, #0x4
 805744a: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x12121212UL;            /* R12. */
 805744c: 9903         	ldr	r1, [sp, #0xc]
 805744e: f04f 3012    	mov.w	r0, #0x12121212
 8057452: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 8057454: 9803         	ldr	r0, [sp, #0xc]
 8057456: 3804         	subs	r0, #0x4
 8057458: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x03030303UL;            /* R3. */
 805745a: 9903         	ldr	r1, [sp, #0xc]
 805745c: f04f 3003    	mov.w	r0, #0x3030303
 8057460: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 8057462: 9803         	ldr	r0, [sp, #0xc]
 8057464: 3804         	subs	r0, #0x4
 8057466: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x02020202UL;            /* R2. */
 8057468: 9903         	ldr	r1, [sp, #0xc]
 805746a: f04f 3002    	mov.w	r0, #0x2020202
 805746e: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 8057470: 9803         	ldr	r0, [sp, #0xc]
 8057472: 3804         	subs	r0, #0x4
 8057474: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x01010101UL;            /* R1. */
 8057476: 9903         	ldr	r1, [sp, #0xc]
 8057478: f04f 3001    	mov.w	r0, #0x1010101
 805747c: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 805747e: 9803         	ldr	r0, [sp, #0xc]
 8057480: 3804         	subs	r0, #0x4
 8057482: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) pvParameters;            /* R0. */
 8057484: 9800         	ldr	r0, [sp]
 8057486: 9903         	ldr	r1, [sp, #0xc]
 8057488: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 805748a: 9803         	ldr	r0, [sp, #0xc]
 805748c: 3804         	subs	r0, #0x4
 805748e: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x11111111UL;            /* R11. */
 8057490: 9903         	ldr	r1, [sp, #0xc]
 8057492: f04f 3011    	mov.w	r0, #0x11111111
 8057496: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 8057498: 9803         	ldr	r0, [sp, #0xc]
 805749a: 3804         	subs	r0, #0x4
 805749c: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x10101010UL;            /* R10. */
 805749e: 9903         	ldr	r1, [sp, #0xc]
 80574a0: f04f 3010    	mov.w	r0, #0x10101010
 80574a4: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 80574a6: 9803         	ldr	r0, [sp, #0xc]
 80574a8: 3804         	subs	r0, #0x4
 80574aa: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x09090909UL;            /* R09. */
 80574ac: 9903         	ldr	r1, [sp, #0xc]
 80574ae: f04f 3009    	mov.w	r0, #0x9090909
 80574b2: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 80574b4: 9803         	ldr	r0, [sp, #0xc]
 80574b6: 3804         	subs	r0, #0x4
 80574b8: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x08080808UL;            /* R08. */
 80574ba: 9903         	ldr	r1, [sp, #0xc]
 80574bc: f04f 3008    	mov.w	r0, #0x8080808
 80574c0: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 80574c2: 9803         	ldr	r0, [sp, #0xc]
 80574c4: 3804         	subs	r0, #0x4
 80574c6: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x07070707UL;            /* R07. */
 80574c8: 9903         	ldr	r1, [sp, #0xc]
 80574ca: f04f 3007    	mov.w	r0, #0x7070707
 80574ce: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 80574d0: 9803         	ldr	r0, [sp, #0xc]
 80574d2: 3804         	subs	r0, #0x4
 80574d4: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x06060606UL;            /* R06. */
 80574d6: 9903         	ldr	r1, [sp, #0xc]
 80574d8: f04f 3006    	mov.w	r0, #0x6060606
 80574dc: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 80574de: 9803         	ldr	r0, [sp, #0xc]
 80574e0: 3804         	subs	r0, #0x4
 80574e2: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x05050505UL;            /* R05. */
 80574e4: 9903         	ldr	r1, [sp, #0xc]
 80574e6: f04f 3005    	mov.w	r0, #0x5050505
 80574ea: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 80574ec: 9803         	ldr	r0, [sp, #0xc]
 80574ee: 3804         	subs	r0, #0x4
 80574f0: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x04040404UL;            /* R04. */
 80574f2: 9903         	ldr	r1, [sp, #0xc]
 80574f4: f04f 3004    	mov.w	r0, #0x4040404
 80574f8: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 80574fa: 9803         	ldr	r0, [sp, #0xc]
 80574fc: 3804         	subs	r0, #0x4
 80574fe: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = portINITIAL_EXC_RETURN;                  /* EXC_RETURN. */
 8057500: 9903         	ldr	r1, [sp, #0xc]
 8057502: f06f 0043    	mvn	r0, #0x43
 8057506: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 8057508: 9803         	ldr	r0, [sp, #0xc]
 805750a: 3804         	subs	r0, #0x4
 805750c: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) pxEndOfStack;            /* Slot used to hold this task's PSPLIM value. */
 805750e: 9802         	ldr	r0, [sp, #0x8]
 8057510: 9903         	ldr	r1, [sp, #0xc]
 8057512: 6008         	str	r0, [r1]
;         return pxTopOfStack;
 8057514: 9803         	ldr	r0, [sp, #0xc]
 8057516: b004         	add	sp, #0x10
 8057518: 4770         	bx	lr

0805751a <prvTaskExitError>:
; {
 805751a: b580         	push	{r7, lr}
 805751c: 466f         	mov	r7, sp
 805751e: b082         	sub	sp, #0x8
 8057520: 2000         	movs	r0, #0x0
;     volatile uint32_t ulDummy = 0UL;
 8057522: 9001         	str	r0, [sp, #0x4]
;     configASSERT( ulCriticalNesting == ~0UL );
 8057524: f240 1000    	movw	r0, #0x100
 8057528: f2c2 0000    	movt	r0, #0x2000
 805752c: 6800         	ldr	r0, [r0]
 805752e: 3001         	adds	r0, #0x1
 8057530: b120         	cbz	r0, 0x805753c <prvTaskExitError+0x22> @ imm = #0x8
 8057532: e7ff         	b	0x8057534 <prvTaskExitError+0x1a> @ imm = #-0x2
 8057534: f000 f8b1    	bl	0x805769a <ulSetInterruptMask> @ imm = #0x162
 8057538: e7ff         	b	0x805753a <prvTaskExitError+0x20> @ imm = #-0x2
 805753a: e7fe         	b	0x805753a <prvTaskExitError+0x20> @ imm = #-0x4
;     portDISABLE_INTERRUPTS();
 805753c: f000 f8ad    	bl	0x805769a <ulSetInterruptMask> @ imm = #0x15a
;     while( ulDummy == 0 )
 8057540: e7ff         	b	0x8057542 <prvTaskExitError+0x28> @ imm = #-0x2
 8057542: 9801         	ldr	r0, [sp, #0x4]
 8057544: b908         	cbnz	r0, 0x805754a <prvTaskExitError+0x30> @ imm = #0x2
 8057546: e7ff         	b	0x8057548 <prvTaskExitError+0x2e> @ imm = #-0x2
 8057548: e7fb         	b	0x8057542 <prvTaskExitError+0x28> @ imm = #-0xa
; }
 805754a: b002         	add	sp, #0x8
 805754c: bd80         	pop	{r7, pc}

0805754e <xPortStartScheduler>:
; {
 805754e: b580         	push	{r7, lr}
 8057550: 466f         	mov	r7, sp
 8057552: b084         	sub	sp, #0x10
 8057554: 2000         	movs	r0, #0x0
;         volatile uint32_t ulImplementedPrioBits = 0;
 8057556: 9002         	str	r0, [sp, #0x8]
 8057558: f64e 501c    	movw	r0, #0xed1c
 805755c: f2ce 0000    	movt	r0, #0xe000
;         ulOriginalPriority = portNVIC_SHPR2_REG;
 8057560: 6801         	ldr	r1, [r0]
 8057562: 9103         	str	r1, [sp, #0xc]
 8057564: f04f 417f    	mov.w	r1, #0xff000000
;         portNVIC_SHPR2_REG = 0xFF000000;
 8057568: 6001         	str	r1, [r0]
;         ucMaxPriorityValue = ( uint8_t ) ( ( portNVIC_SHPR2_REG & 0xFF000000 ) >> 24 );
 805756a: 6800         	ldr	r0, [r0]
 805756c: 0e00         	lsrs	r0, r0, #0x18
 805756e: f807 0c09    	strb	r0, [r7, #-9]
;         ucMaxSysCallPriority = configMAX_SYSCALL_INTERRUPT_PRIORITY & ucMaxPriorityValue;
 8057572: f817 0c09    	ldrb	r0, [r7, #-9]
 8057576: f000 01a0    	and	r1, r0, #0xa0
 805757a: f242 3080    	movw	r0, #0x2380
 805757e: f2c2 0000    	movt	r0, #0x2000
 8057582: 7001         	strb	r1, [r0]
;         configASSERT( ucMaxSysCallPriority );
 8057584: 7800         	ldrb	r0, [r0]
 8057586: b920         	cbnz	r0, 0x8057592 <xPortStartScheduler+0x44> @ imm = #0x8
 8057588: e7ff         	b	0x805758a <xPortStartScheduler+0x3c> @ imm = #-0x2
 805758a: f000 f886    	bl	0x805769a <ulSetInterruptMask> @ imm = #0x10c
 805758e: e7ff         	b	0x8057590 <xPortStartScheduler+0x42> @ imm = #-0x2
 8057590: e7fe         	b	0x8057590 <xPortStartScheduler+0x42> @ imm = #-0x4
;         configASSERT( ( configMAX_SYSCALL_INTERRUPT_PRIORITY & ( uint8_t ) ( ~( uint32_t ) ucMaxPriorityValue ) ) == 0U );
 8057592: f817 0c09    	ldrb	r0, [r7, #-9]
 8057596: 43c0         	mvns	r0, r0
 8057598: f010 0fa0    	tst.w	r0, #0xa0
 805759c: d004         	beq	0x80575a8 <xPortStartScheduler+0x5a> @ imm = #0x8
 805759e: e7ff         	b	0x80575a0 <xPortStartScheduler+0x52> @ imm = #-0x2
 80575a0: f000 f87b    	bl	0x805769a <ulSetInterruptMask> @ imm = #0xf6
 80575a4: e7ff         	b	0x80575a6 <xPortStartScheduler+0x58> @ imm = #-0x2
 80575a6: e7fe         	b	0x80575a6 <xPortStartScheduler+0x58> @ imm = #-0x4
;         while( ( ucMaxPriorityValue & portTOP_BIT_OF_BYTE ) == portTOP_BIT_OF_BYTE )
 80575a8: e7ff         	b	0x80575aa <xPortStartScheduler+0x5c> @ imm = #-0x2
 80575aa: f817 0c09    	ldrb	r0, [r7, #-9]
 80575ae: 0600         	lsls	r0, r0, #0x18
 80575b0: 2800         	cmp	r0, #0x0
 80575b2: d509         	bpl	0x80575c8 <xPortStartScheduler+0x7a> @ imm = #0x12
 80575b4: e7ff         	b	0x80575b6 <xPortStartScheduler+0x68> @ imm = #-0x2
;             ulImplementedPrioBits++;
 80575b6: 9802         	ldr	r0, [sp, #0x8]
 80575b8: 3001         	adds	r0, #0x1
 80575ba: 9002         	str	r0, [sp, #0x8]
;             ucMaxPriorityValue <<= ( uint8_t ) 0x01;
 80575bc: f817 0c09    	ldrb	r0, [r7, #-9]
 80575c0: 0040         	lsls	r0, r0, #0x1
 80575c2: f807 0c09    	strb	r0, [r7, #-9]
;         while( ( ucMaxPriorityValue & portTOP_BIT_OF_BYTE ) == portTOP_BIT_OF_BYTE )
 80575c6: e7f0         	b	0x80575aa <xPortStartScheduler+0x5c> @ imm = #-0x20
;         if( ulImplementedPrioBits == 8 )
 80575c8: 9802         	ldr	r0, [sp, #0x8]
 80575ca: 2808         	cmp	r0, #0x8
 80575cc: d107         	bne	0x80575de <xPortStartScheduler+0x90> @ imm = #0xe
 80575ce: e7ff         	b	0x80575d0 <xPortStartScheduler+0x82> @ imm = #-0x2
;             ulMaxPRIGROUPValue = 0;
 80575d0: f242 3184    	movw	r1, #0x2384
 80575d4: f2c2 0100    	movt	r1, #0x2000
 80575d8: 2000         	movs	r0, #0x0
 80575da: 6008         	str	r0, [r1]
;         }
 80575dc: e008         	b	0x80575f0 <xPortStartScheduler+0xa2> @ imm = #0x10
;             ulMaxPRIGROUPValue = portMAX_PRIGROUP_BITS - ulImplementedPrioBits;
 80575de: 9802         	ldr	r0, [sp, #0x8]
 80575e0: f1c0 0007    	rsb.w	r0, r0, #0x7
 80575e4: f242 3184    	movw	r1, #0x2384
 80575e8: f2c2 0100    	movt	r1, #0x2000
 80575ec: 6008         	str	r0, [r1]
 80575ee: e7ff         	b	0x80575f0 <xPortStartScheduler+0xa2> @ imm = #-0x2
;         ulMaxPRIGROUPValue <<= portPRIGROUP_SHIFT;
 80575f0: f242 3184    	movw	r1, #0x2384
 80575f4: f2c2 0100    	movt	r1, #0x2000
 80575f8: 6808         	ldr	r0, [r1]
 80575fa: 0200         	lsls	r0, r0, #0x8
 80575fc: 6008         	str	r0, [r1]
;         ulMaxPRIGROUPValue &= portPRIORITY_GROUP_MASK;
 80575fe: 6808         	ldr	r0, [r1]
 8057600: f400 60e0    	and	r0, r0, #0x700
 8057604: 6008         	str	r0, [r1]
;         portNVIC_SHPR2_REG = ulOriginalPriority;
 8057606: 9803         	ldr	r0, [sp, #0xc]
 8057608: f64e 511c    	movw	r1, #0xed1c
 805760c: f2ce 0100    	movt	r1, #0xe000
 8057610: 6008         	str	r0, [r1]
 8057612: f64e 5120    	movw	r1, #0xed20
 8057616: f2ce 0100    	movt	r1, #0xe000
;     portNVIC_SHPR3_REG |= portNVIC_PENDSV_PRI;
 805761a: 6808         	ldr	r0, [r1]
 805761c: f440 007f    	orr	r0, r0, #0xff0000
 8057620: 6008         	str	r0, [r1]
;     portNVIC_SHPR3_REG |= portNVIC_SYSTICK_PRI;
 8057622: 6808         	ldr	r0, [r1]
 8057624: f040 407f    	orr	r0, r0, #0xff000000
 8057628: 6008         	str	r0, [r1]
;     vPortSetupTimerInterrupt();
 805762a: f7ff fe64    	bl	0x80572f6 <vPortSetupTimerInterrupt> @ imm = #-0x338
;     ulCriticalNesting = 0;
 805762e: f240 1100    	movw	r1, #0x100
 8057632: f2c2 0100    	movt	r1, #0x2000
 8057636: 2000         	movs	r0, #0x0
 8057638: 9000         	str	r0, [sp]
 805763a: 6008         	str	r0, [r1]
;     vStartFirstTask();
 805763c: f000 f81d    	bl	0x805767a <vStartFirstTask> @ imm = #0x3a
;     vTaskSwitchContext();
 8057640: f7fe f8ff    	bl	0x8055842 <vTaskSwitchContext> @ imm = #-0x1e02
;     prvTaskExitError();
 8057644: f7ff ff69    	bl	0x805751a <prvTaskExitError> @ imm = #-0x12e
 8057648: 9800         	ldr	r0, [sp]
;     return 0;
 805764a: b004         	add	sp, #0x10
 805764c: bd80         	pop	{r7, pc}

0805764e <vRestoreContextOfFirstTask>:
;   __asm volatile(
 805764e: f240 1208    	movw	r2, #0x108
 8057652: f2c2 0200    	movt	r2, #0x2000
 8057656: 6811         	ldr	r1, [r2]
 8057658: 6808         	ldr	r0, [r1]
 805765a: c806         	ldm	r0!, {r1, r2}
 805765c: f381 880b    	msr	psplim, r1
 8057660: 2102         	movs	r1, #0x2
 8057662: f381 8814    	msr	control, r1
 8057666: 3020         	adds	r0, #0x20
 8057668: f380 8809    	msr	psp, r0
 805766c: f3bf 8f6f    	isb	sy
 8057670: f04f 0000    	mov.w	r0, #0x0
 8057674: f380 8811    	msr	basepri, r0
 8057678: 4710         	bx	r2

0805767a <vStartFirstTask>:
;   __asm volatile(
 805767a: f64e 5008    	movw	r0, #0xed08
 805767e: f2ce 0000    	movt	r0, #0xe000
 8057682: 6800         	ldr	r0, [r0]
 8057684: 6800         	ldr	r0, [r0]
 8057686: f380 8808    	msr	msp, r0
 805768a: b662         	cpsie i
 805768c: b661         	cpsie f
 805768e: f3bf 8f4f    	dsb	sy
 8057692: f3bf 8f6f    	isb	sy
 8057696: df02         	svc	#0x2
 8057698: bf00         	nop

0805769a <ulSetInterruptMask>:
;   __asm volatile(
 805769a: f3ef 8011    	mrs	r0, basepri
 805769e: f04f 01a0    	mov.w	r1, #0xa0
 80576a2: f381 8811    	msr	basepri, r1
 80576a6: f3bf 8f4f    	dsb	sy
 80576aa: f3bf 8f6f    	isb	sy
 80576ae: 4770         	bx	lr

080576b0 <vClearInterruptMask>:
;   __asm volatile(
 80576b0: f380 8811    	msr	basepri, r0
 80576b4: f3bf 8f4f    	dsb	sy
 80576b8: f3bf 8f6f    	isb	sy
 80576bc: 4770         	bx	lr
 80576be: d4d4         	bmi	0x805766a <vRestoreContextOfFirstTask+0x1c> @ imm = #-0x58

080576c0 <PendSV_Handler>:
;   __asm volatile(
 80576c0: f3ef 8009    	mrs	r0, psp
 80576c4: f3ef 820b    	mrs	r2, psplim
 80576c8: 4673         	mov	r3, lr
 80576ca: e920 0ffc    	stmdb	r0!, {r2, r3, r4, r5, r6, r7, r8, r9, r10, r11}
 80576ce: f240 1208    	movw	r2, #0x108
 80576d2: f2c2 0200    	movt	r2, #0x2000
 80576d6: 6811         	ldr	r1, [r2]
 80576d8: 6008         	str	r0, [r1]
 80576da: f04f 00a0    	mov.w	r0, #0xa0
 80576de: f380 8811    	msr	basepri, r0
 80576e2: f3bf 8f4f    	dsb	sy
 80576e6: f3bf 8f6f    	isb	sy
 80576ea: f7fe f8aa    	bl	0x8055842 <vTaskSwitchContext> @ imm = #-0x1eac
 80576ee: f04f 0000    	mov.w	r0, #0x0
 80576f2: f380 8811    	msr	basepri, r0
 80576f6: f240 1208    	movw	r2, #0x108
 80576fa: f2c2 0200    	movt	r2, #0x2000
 80576fe: 6811         	ldr	r1, [r2]
 8057700: 6808         	ldr	r0, [r1]
 8057702: e8b0 0ffc    	ldm.w	r0!, {r2, r3, r4, r5, r6, r7, r8, r9, r10, r11}
 8057706: f382 880b    	msr	psplim, r2
 805770a: f380 8809    	msr	psp, r0
 805770e: 4718         	bx	r3

08057710 <SVC_Handler>:
;   __asm volatile("   .syntax unified                                 \n"
 8057710: f01e 0f04    	tst.w	lr, #0x4
 8057714: bf0c         	ite	eq
 8057716: f3ef 8008    	mrseq	r0, msp
 805771a: f3ef 8009    	mrsne	r0, psp
 805771e: f247 31dd    	movw	r1, #0x73dd
 8057722: f6c0 0105    	movt	r1, #0x805
 8057726: 4708         	bx	r1
 8057728: bf00         	nop
 805772a: bf00         	nop
 805772c: bf00         	nop
 805772e: bf00         	nop

08057730 <memcpy>:
 8057730: 4684         	mov	r12, r0
 8057732: ea41 0300    	orr.w	r3, r1, r0
 8057736: f013 0303    	ands	r3, r3, #0x3
 805773a: d149         	bne	0x80577d0 <memcpy+0xa0> @ imm = #0x92
 805773c: 3a40         	subs	r2, #0x40
 805773e: d323         	blo	0x8057788 <memcpy+0x58> @ imm = #0x46
 8057740: 680b         	ldr	r3, [r1]
 8057742: 6003         	str	r3, [r0]
 8057744: 684b         	ldr	r3, [r1, #0x4]
 8057746: 6043         	str	r3, [r0, #0x4]
 8057748: 688b         	ldr	r3, [r1, #0x8]
 805774a: 6083         	str	r3, [r0, #0x8]
 805774c: 68cb         	ldr	r3, [r1, #0xc]
 805774e: 60c3         	str	r3, [r0, #0xc]
 8057750: 690b         	ldr	r3, [r1, #0x10]
 8057752: 6103         	str	r3, [r0, #0x10]
 8057754: 694b         	ldr	r3, [r1, #0x14]
 8057756: 6143         	str	r3, [r0, #0x14]
 8057758: 698b         	ldr	r3, [r1, #0x18]
 805775a: 6183         	str	r3, [r0, #0x18]
 805775c: 69cb         	ldr	r3, [r1, #0x1c]
 805775e: 61c3         	str	r3, [r0, #0x1c]
 8057760: 6a0b         	ldr	r3, [r1, #0x20]
 8057762: 6203         	str	r3, [r0, #0x20]
 8057764: 6a4b         	ldr	r3, [r1, #0x24]
 8057766: 6243         	str	r3, [r0, #0x24]
 8057768: 6a8b         	ldr	r3, [r1, #0x28]
 805776a: 6283         	str	r3, [r0, #0x28]
 805776c: 6acb         	ldr	r3, [r1, #0x2c]
 805776e: 62c3         	str	r3, [r0, #0x2c]
 8057770: 6b0b         	ldr	r3, [r1, #0x30]
 8057772: 6303         	str	r3, [r0, #0x30]
 8057774: 6b4b         	ldr	r3, [r1, #0x34]
 8057776: 6343         	str	r3, [r0, #0x34]
 8057778: 6b8b         	ldr	r3, [r1, #0x38]
 805777a: 6383         	str	r3, [r0, #0x38]
 805777c: 6bcb         	ldr	r3, [r1, #0x3c]
 805777e: 63c3         	str	r3, [r0, #0x3c]
 8057780: 3040         	adds	r0, #0x40
 8057782: 3140         	adds	r1, #0x40
 8057784: 3a40         	subs	r2, #0x40
 8057786: d2db         	bhs	0x8057740 <memcpy+0x10> @ imm = #-0x4a
 8057788: 3230         	adds	r2, #0x30
 805778a: d30b         	blo	0x80577a4 <memcpy+0x74> @ imm = #0x16
 805778c: 680b         	ldr	r3, [r1]
 805778e: 6003         	str	r3, [r0]
 8057790: 684b         	ldr	r3, [r1, #0x4]
 8057792: 6043         	str	r3, [r0, #0x4]
 8057794: 688b         	ldr	r3, [r1, #0x8]
 8057796: 6083         	str	r3, [r0, #0x8]
 8057798: 68cb         	ldr	r3, [r1, #0xc]
 805779a: 60c3         	str	r3, [r0, #0xc]
 805779c: 3010         	adds	r0, #0x10
 805779e: 3110         	adds	r1, #0x10
 80577a0: 3a10         	subs	r2, #0x10
 80577a2: d2f3         	bhs	0x805778c <memcpy+0x5c> @ imm = #-0x1a
 80577a4: 320c         	adds	r2, #0xc
 80577a6: d305         	blo	0x80577b4 <memcpy+0x84> @ imm = #0xa
 80577a8: f851 3b04    	ldr	r3, [r1], #4
 80577ac: f840 3b04    	str	r3, [r0], #4
 80577b0: 3a04         	subs	r2, #0x4
 80577b2: d2f9         	bhs	0x80577a8 <memcpy+0x78> @ imm = #-0xe
 80577b4: 3204         	adds	r2, #0x4
 80577b6: d008         	beq	0x80577ca <memcpy+0x9a> @ imm = #0x10
 80577b8: 07d2         	lsls	r2, r2, #0x1f
 80577ba: bf1c         	itt	ne
 80577bc: f811 3b01    	ldrbne	r3, [r1], #1
 80577c0: f800 3b01    	strbne	r3, [r0], #1
 80577c4: d301         	blo	0x80577ca <memcpy+0x9a> @ imm = #0x2
 80577c6: 880b         	ldrh	r3, [r1]
 80577c8: 8003         	strh	r3, [r0]
 80577ca: 4660         	mov	r0, r12
 80577cc: 4770         	bx	lr
 80577ce: bf00         	nop
 80577d0: 2a08         	cmp	r2, #0x8
 80577d2: d313         	blo	0x80577fc <memcpy+0xcc> @ imm = #0x26
 80577d4: 078b         	lsls	r3, r1, #0x1e
 80577d6: d0b1         	beq	0x805773c <memcpy+0xc>  @ imm = #-0x9e
 80577d8: f010 0303    	ands	r3, r0, #0x3
 80577dc: d0ae         	beq	0x805773c <memcpy+0xc>  @ imm = #-0xa4
 80577de: f1c3 0304    	rsb.w	r3, r3, #0x4
 80577e2: 1ad2         	subs	r2, r2, r3
 80577e4: 07db         	lsls	r3, r3, #0x1f
 80577e6: bf1c         	itt	ne
 80577e8: f811 3b01    	ldrbne	r3, [r1], #1
 80577ec: f800 3b01    	strbne	r3, [r0], #1
 80577f0: d3a4         	blo	0x805773c <memcpy+0xc>  @ imm = #-0xb8
 80577f2: f831 3b02    	ldrh	r3, [r1], #2
 80577f6: f820 3b02    	strh	r3, [r0], #2
 80577fa: e79f         	b	0x805773c <memcpy+0xc>  @ imm = #-0xc2
 80577fc: 3a04         	subs	r2, #0x4
 80577fe: d3d9         	blo	0x80577b4 <memcpy+0x84> @ imm = #-0x4e
 8057800: 3a01         	subs	r2, #0x1
 8057802: f811 3b01    	ldrb	r3, [r1], #1
 8057806: f800 3b01    	strb	r3, [r0], #1
 805780a: d2f9         	bhs	0x8057800 <memcpy+0xd0> @ imm = #-0xe
 805780c: 780b         	ldrb	r3, [r1]
 805780e: 7003         	strb	r3, [r0]
 8057810: 784b         	ldrb	r3, [r1, #0x1]
 8057812: 7043         	strb	r3, [r0, #0x1]
 8057814: 788b         	ldrb	r3, [r1, #0x2]
 8057816: 7083         	strb	r3, [r0, #0x2]
 8057818: 4660         	mov	r0, r12
 805781a: 4770         	bx	lr

0805781c <memset>:
 805781c: b570         	push	{r4, r5, r6, lr}
 805781e: 0786         	lsls	r6, r0, #0x1e
 8057820: d048         	beq	0x80578b4 <memset+0x98> @ imm = #0x90
 8057822: 1e54         	subs	r4, r2, #0x1
 8057824: 2a00         	cmp	r2, #0x0
 8057826: d03f         	beq	0x80578a8 <memset+0x8c> @ imm = #0x7e
 8057828: b2ca         	uxtb	r2, r1
 805782a: 4603         	mov	r3, r0
 805782c: e001         	b	0x8057832 <memset+0x16> @ imm = #0x2
 805782e: 3c01         	subs	r4, #0x1
 8057830: d33a         	blo	0x80578a8 <memset+0x8c> @ imm = #0x74
 8057832: f803 2b01    	strb	r2, [r3], #1
 8057836: 079d         	lsls	r5, r3, #0x1e
 8057838: d1f9         	bne	0x805782e <memset+0x12> @ imm = #-0xe
 805783a: 2c03         	cmp	r4, #0x3
 805783c: d92d         	bls	0x805789a <memset+0x7e> @ imm = #0x5a
 805783e: b2cd         	uxtb	r5, r1
 8057840: 2c0f         	cmp	r4, #0xf
 8057842: ea45 2505    	orr.w	r5, r5, r5, lsl #8
 8057846: ea45 4505    	orr.w	r5, r5, r5, lsl #16
 805784a: d936         	bls	0x80578ba <memset+0x9e> @ imm = #0x6c
 805784c: f1a4 0c10    	sub.w	r12, r4, #0x10
 8057850: f103 0e20    	add.w	lr, r3, #0x20
 8057854: f103 0210    	add.w	r2, r3, #0x10
 8057858: f02c 060f    	bic	r6, r12, #0xf
 805785c: ea4f 1c1c    	lsr.w	r12, r12, #0x4
 8057860: 44b6         	add	lr, r6
 8057862: e942 5504    	strd	r5, r5, [r2, #-16]
 8057866: e942 5502    	strd	r5, r5, [r2, #-8]
 805786a: 3210         	adds	r2, #0x10
 805786c: 4572         	cmp	r2, lr
 805786e: d1f8         	bne	0x8057862 <memset+0x46> @ imm = #-0x10
 8057870: f10c 0201    	add.w	r2, r12, #0x1
 8057874: f014 0f0c    	tst.w	r4, #0xc
 8057878: f004 0c0f    	and	r12, r4, #0xf
 805787c: eb03 1202    	add.w	r2, r3, r2, lsl #4
 8057880: d013         	beq	0x80578aa <memset+0x8e> @ imm = #0x26
 8057882: f1ac 0304    	sub.w	r3, r12, #0x4
 8057886: f023 0303    	bic	r3, r3, #0x3
 805788a: 3304         	adds	r3, #0x4
 805788c: 4413         	add	r3, r2
 805788e: f842 5b04    	str	r5, [r2], #4
 8057892: 4293         	cmp	r3, r2
 8057894: d1fb         	bne	0x805788e <memset+0x72> @ imm = #-0xa
 8057896: f00c 0403    	and	r4, r12, #0x3
 805789a: b12c         	cbz	r4, 0x80578a8 <memset+0x8c> @ imm = #0xa
 805789c: b2ca         	uxtb	r2, r1
 805789e: 441c         	add	r4, r3
 80578a0: f803 2b01    	strb	r2, [r3], #1
 80578a4: 429c         	cmp	r4, r3
 80578a6: d1fb         	bne	0x80578a0 <memset+0x84> @ imm = #-0xa
 80578a8: bd70         	pop	{r4, r5, r6, pc}
 80578aa: 4664         	mov	r4, r12
 80578ac: 4613         	mov	r3, r2
 80578ae: 2c00         	cmp	r4, #0x0
 80578b0: d1f4         	bne	0x805789c <memset+0x80> @ imm = #-0x18
 80578b2: e7f9         	b	0x80578a8 <memset+0x8c> @ imm = #-0xe
 80578b4: 4603         	mov	r3, r0
 80578b6: 4614         	mov	r4, r2
 80578b8: e7bf         	b	0x805783a <memset+0x1e> @ imm = #-0x82
 80578ba: 461a         	mov	r2, r3
 80578bc: 46a4         	mov	r12, r4
 80578be: e7e0         	b	0x8057882 <memset+0x66> @ imm = #-0x40

080578c0 <HAL_Init>:
; {
 80578c0: b580         	push	{r7, lr}
 80578c2: 466f         	mov	r7, sp
 80578c4: b082         	sub	sp, #0x8
 80578c6: 2000         	movs	r0, #0x0
;   HAL_StatusTypeDef  status = HAL_OK;
 80578c8: f807 0c01    	strb	r0, [r7, #-1]
;   HAL_NVIC_SetPriorityGrouping(NVIC_PRIORITYGROUP_3);
 80578cc: f000 fae2    	bl	0x8057e94 <HAL_NVIC_SetPriorityGrouping> @ imm = #0x5c4
;   SystemCoreClockUpdate();
 80578d0: f000 f842    	bl	0x8057958 <SystemCoreClockUpdate> @ imm = #0x84
;   if (HAL_InitTick(TICK_INT_PRIORITY) != HAL_OK)
 80578d4: f000 f80c    	bl	0x80578f0 <HAL_InitTick> @ imm = #0x18
 80578d8: b120         	cbz	r0, 0x80578e4 <HAL_Init+0x24> @ imm = #0x8
 80578da: e7ff         	b	0x80578dc <HAL_Init+0x1c> @ imm = #-0x2
 80578dc: 2001         	movs	r0, #0x1
;     status = HAL_ERROR;
 80578de: f807 0c01    	strb	r0, [r7, #-1]
;   }
 80578e2: e002         	b	0x80578ea <HAL_Init+0x2a> @ imm = #0x4
;     HAL_MspInit();
 80578e4: f000 f834    	bl	0x8057950 <HAL_MspInit> @ imm = #0x68
 80578e8: e7ff         	b	0x80578ea <HAL_Init+0x2a> @ imm = #-0x2
;   return status;
 80578ea: b002         	add	sp, #0x8
 80578ec: bd80         	pop	{r7, pc}
 80578ee: d4d4         	bmi	0x805789a <memset+0x7e> @ imm = #-0x58

080578f0 <HAL_InitTick>:
; {
 80578f0: b580         	push	{r7, lr}
 80578f2: 466f         	mov	r7, sp
 80578f4: b082         	sub	sp, #0x8
 80578f6: 2007         	movs	r0, #0x7
 80578f8: 9001         	str	r0, [sp, #0x4]
 80578fa: 2000         	movs	r0, #0x0
;   HAL_StatusTypeDef  status = HAL_OK;
 80578fc: f807 0c05    	strb	r0, [r7, #-5]
 8057900: e7ff         	b	0x8057902 <HAL_InitTick+0x12> @ imm = #-0x2
;     if (HAL_SYSTICK_Config(SystemCoreClock / (1000U / (uint32_t)uwTickFreq)) == 0U)
 8057902: f240 1004    	movw	r0, #0x104
 8057906: f2c2 0000    	movt	r0, #0x2000
 805790a: 6800         	ldr	r0, [r0]
 805790c: f644 51d3    	movw	r1, #0x4dd3
 8057910: f2c1 0162    	movt	r1, #0x1062
 8057914: fba0 0101    	umull	r0, r1, r0, r1
 8057918: 0988         	lsrs	r0, r1, #0x6
 805791a: f000 fb59    	bl	0x8057fd0 <HAL_SYSTICK_Config> @ imm = #0x6b2
 805791e: b968         	cbnz	r0, 0x805793c <HAL_InitTick+0x4c> @ imm = #0x1a
 8057920: e7ff         	b	0x8057922 <HAL_InitTick+0x32> @ imm = #-0x2
;       if (TickPriority < (1UL << __NVIC_PRIO_BITS))
 8057922: 9801         	ldr	r0, [sp, #0x4]
 8057924: 2807         	cmp	r0, #0x7
 8057926: d804         	bhi	0x8057932 <HAL_InitTick+0x42> @ imm = #0x8
 8057928: e7ff         	b	0x805792a <HAL_InitTick+0x3a> @ imm = #-0x2
;         HAL_NVIC_SetPriority(SysTick_IRQn, TickPriority, 0U);
 805792a: 9801         	ldr	r0, [sp, #0x4]
 805792c: f000 fada    	bl	0x8057ee4 <HAL_NVIC_SetPriority> @ imm = #0x5b4
;       }
 8057930: e003         	b	0x805793a <HAL_InitTick+0x4a> @ imm = #0x6
 8057932: 2001         	movs	r0, #0x1
;         status = HAL_ERROR;
 8057934: f807 0c05    	strb	r0, [r7, #-5]
 8057938: e7ff         	b	0x805793a <HAL_InitTick+0x4a> @ imm = #-0x2
;     }
 805793a: e003         	b	0x8057944 <HAL_InitTick+0x54> @ imm = #0x6
 805793c: 2001         	movs	r0, #0x1
;       status = HAL_ERROR;
 805793e: f807 0c05    	strb	r0, [r7, #-5]
 8057942: e7ff         	b	0x8057944 <HAL_InitTick+0x54> @ imm = #-0x2
;   }
 8057944: e7ff         	b	0x8057946 <HAL_InitTick+0x56> @ imm = #-0x2
;   return status;
 8057946: f817 0c05    	ldrb	r0, [r7, #-5]
 805794a: b002         	add	sp, #0x8
 805794c: bd80         	pop	{r7, pc}
 805794e: d4d4         	bmi	0x80578fa <HAL_InitTick+0xa> @ imm = #-0x58

08057950 <HAL_MspInit>:
; }
 8057950: 4770         	bx	lr
 8057952: d4d4         	bmi	0x80578fe <HAL_InitTick+0xe> @ imm = #-0x58

08057954 <SystemInit>:
; }
 8057954: 4770         	bx	lr
 8057956: d4d4         	bmi	0x8057902 <HAL_InitTick+0x12> @ imm = #-0x58

08057958 <SystemCoreClockUpdate>:
; {
 8057958: b086         	sub	sp, #0x18
 805795a: f241 0000    	movw	r0, #0x1000
 805795e: f2c4 0002    	movt	r0, #0x4002
;   if((RCC->CR & RCC_CR_MSIRGSEL) == 0U)
 8057962: 6800         	ldr	r0, [r0]
 8057964: 0700         	lsls	r0, r0, #0x1c
 8057966: 2800         	cmp	r0, #0x0
 8057968: d409         	bmi	0x805797e <SystemCoreClockUpdate+0x26> @ imm = #0x12
 805796a: e7ff         	b	0x805796c <SystemCoreClockUpdate+0x14> @ imm = #-0x2
 805796c: f241 0094    	movw	r0, #0x1094
 8057970: f2c4 0002    	movt	r0, #0x4002
;     msirange = (RCC->CSR & RCC_CSR_MSISRANGE) >> 8U;
 8057974: 6800         	ldr	r0, [r0]
 8057976: f3c0 2003    	ubfx	r0, r0, #0x8, #0x4
 805797a: 9004         	str	r0, [sp, #0x10]
;   }
 805797c: e008         	b	0x8057990 <SystemCoreClockUpdate+0x38> @ imm = #0x10
 805797e: f241 0000    	movw	r0, #0x1000
 8057982: f2c4 0002    	movt	r0, #0x4002
;     msirange = (RCC->CR & RCC_CR_MSIRANGE) >> 4U;
 8057986: 6800         	ldr	r0, [r0]
 8057988: b2c0         	uxtb	r0, r0
 805798a: 0900         	lsrs	r0, r0, #0x4
 805798c: 9004         	str	r0, [sp, #0x10]
 805798e: e7ff         	b	0x8057990 <SystemCoreClockUpdate+0x38> @ imm = #-0x2
;   msirange = MSIRangeTable[msirange];
 8057990: 9804         	ldr	r0, [sp, #0x10]
 8057992: f248 31b8    	movw	r1, #0x83b8
 8057996: f6c0 0105    	movt	r1, #0x805
 805799a: f851 0020    	ldr.w	r0, [r1, r0, lsl #2]
 805799e: 9004         	str	r0, [sp, #0x10]
 80579a0: f241 0008    	movw	r0, #0x1008
 80579a4: f2c4 0002    	movt	r0, #0x4002
;   switch (RCC->CFGR & RCC_CFGR_SWS)
 80579a8: 6800         	ldr	r0, [r0]
 80579aa: f000 000c    	and	r0, r0, #0xc
 80579ae: b148         	cbz	r0, 0x80579c4 <SystemCoreClockUpdate+0x6c> @ imm = #0x12
 80579b0: e7ff         	b	0x80579b2 <SystemCoreClockUpdate+0x5a> @ imm = #-0x2
 80579b2: 2804         	cmp	r0, #0x4
 80579b4: d00d         	beq	0x80579d2 <SystemCoreClockUpdate+0x7a> @ imm = #0x1a
 80579b6: e7ff         	b	0x80579b8 <SystemCoreClockUpdate+0x60> @ imm = #-0x2
 80579b8: 2808         	cmp	r0, #0x8
 80579ba: d014         	beq	0x80579e6 <SystemCoreClockUpdate+0x8e> @ imm = #0x28
 80579bc: e7ff         	b	0x80579be <SystemCoreClockUpdate+0x66> @ imm = #-0x2
 80579be: 280c         	cmp	r0, #0xc
 80579c0: d01b         	beq	0x80579fa <SystemCoreClockUpdate+0xa2> @ imm = #0x36
 80579c2: e062         	b	0x8057a8a <SystemCoreClockUpdate+0x132> @ imm = #0xc4
;       SystemCoreClock = msirange;
 80579c4: 9804         	ldr	r0, [sp, #0x10]
 80579c6: f240 1104    	movw	r1, #0x104
 80579ca: f2c2 0100    	movt	r1, #0x2000
 80579ce: 6008         	str	r0, [r1]
;       break;
 80579d0: e062         	b	0x8057a98 <SystemCoreClockUpdate+0x140> @ imm = #0xc4
;       SystemCoreClock = HSI_VALUE;
 80579d2: f240 1004    	movw	r0, #0x104
 80579d6: f2c2 0000    	movt	r0, #0x2000
 80579da: f242 4100    	movw	r1, #0x2400
 80579de: f2c0 01f4    	movt	r1, #0xf4
 80579e2: 6001         	str	r1, [r0]
;       break;
 80579e4: e058         	b	0x8057a98 <SystemCoreClockUpdate+0x140> @ imm = #0xb0
;       SystemCoreClock = HSE_VALUE;
 80579e6: f240 1004    	movw	r0, #0x104
 80579ea: f2c2 0000    	movt	r0, #0x2000
 80579ee: f242 4100    	movw	r1, #0x2400
 80579f2: f2c0 01f4    	movt	r1, #0xf4
 80579f6: 6001         	str	r1, [r0]
;       break;
 80579f8: e04e         	b	0x8057a98 <SystemCoreClockUpdate+0x140> @ imm = #0x9c
 80579fa: f241 000c    	movw	r0, #0x100c
 80579fe: f2c4 0002    	movt	r0, #0x4002
;       pllsource = (RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC);
 8057a02: 6801         	ldr	r1, [r0]
 8057a04: f001 0103    	and	r1, r1, #0x3
 8057a08: 9102         	str	r1, [sp, #0x8]
;       pllm = ((RCC->PLLCFGR & RCC_PLLCFGR_PLLM) >> 4U) + 1U ;
 8057a0a: 6800         	ldr	r0, [r0]
 8057a0c: b2c0         	uxtb	r0, r0
 8057a0e: 2101         	movs	r1, #0x1
 8057a10: eb01 1010    	add.w	r0, r1, r0, lsr #4
 8057a14: 9001         	str	r0, [sp, #0x4]
;       switch (pllsource)
 8057a16: 9802         	ldr	r0, [sp, #0x8]
 8057a18: 2802         	cmp	r0, #0x2
 8057a1a: d003         	beq	0x8057a24 <SystemCoreClockUpdate+0xcc> @ imm = #0x6
 8057a1c: e7ff         	b	0x8057a1e <SystemCoreClockUpdate+0xc6> @ imm = #-0x2
 8057a1e: 2803         	cmp	r0, #0x3
 8057a20: d009         	beq	0x8057a36 <SystemCoreClockUpdate+0xde> @ imm = #0x12
 8057a22: e011         	b	0x8057a48 <SystemCoreClockUpdate+0xf0> @ imm = #0x22
;           pllvco = (HSI_VALUE / pllm);
 8057a24: 9801         	ldr	r0, [sp, #0x4]
 8057a26: f242 4100    	movw	r1, #0x2400
 8057a2a: f2c0 01f4    	movt	r1, #0xf4
 8057a2e: fbb1 f0f0    	udiv	r0, r1, r0
 8057a32: 9003         	str	r0, [sp, #0xc]
;           break;
 8057a34: e00e         	b	0x8057a54 <SystemCoreClockUpdate+0xfc> @ imm = #0x1c
;           pllvco = (HSE_VALUE / pllm);
 8057a36: 9801         	ldr	r0, [sp, #0x4]
 8057a38: f242 4100    	movw	r1, #0x2400
 8057a3c: f2c0 01f4    	movt	r1, #0xf4
 8057a40: fbb1 f0f0    	udiv	r0, r1, r0
 8057a44: 9003         	str	r0, [sp, #0xc]
;           break;
 8057a46: e005         	b	0x8057a54 <SystemCoreClockUpdate+0xfc> @ imm = #0xa
;           pllvco = (msirange / pllm);
 8057a48: 9804         	ldr	r0, [sp, #0x10]
 8057a4a: 9901         	ldr	r1, [sp, #0x4]
 8057a4c: fbb0 f0f1    	udiv	r0, r0, r1
 8057a50: 9003         	str	r0, [sp, #0xc]
;           break;
 8057a52: e7ff         	b	0x8057a54 <SystemCoreClockUpdate+0xfc> @ imm = #-0x2
;       pllvco = pllvco * ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> 8U);
 8057a54: 9803         	ldr	r0, [sp, #0xc]
 8057a56: f241 010c    	movw	r1, #0x100c
 8057a5a: f2c4 0102    	movt	r1, #0x4002
 8057a5e: 680a         	ldr	r2, [r1]
 8057a60: f3c2 2206    	ubfx	r2, r2, #0x8, #0x7
 8057a64: 4350         	muls	r0, r2, r0
 8057a66: 9003         	str	r0, [sp, #0xc]
;       pllr = (((RCC->PLLCFGR & RCC_PLLCFGR_PLLR) >> 25U) + 1U) * 2U;
 8057a68: 6808         	ldr	r0, [r1]
 8057a6a: f000 60c0    	and	r0, r0, #0x6000000
 8057a6e: 2102         	movs	r1, #0x2
 8057a70: eb01 6010    	add.w	r0, r1, r0, lsr #24
 8057a74: 9000         	str	r0, [sp]
;       SystemCoreClock = pllvco/pllr;
 8057a76: 9803         	ldr	r0, [sp, #0xc]
 8057a78: 9900         	ldr	r1, [sp]
 8057a7a: fbb0 f0f1    	udiv	r0, r0, r1
 8057a7e: f240 1104    	movw	r1, #0x104
 8057a82: f2c2 0100    	movt	r1, #0x2000
 8057a86: 6008         	str	r0, [r1]
;       break;
 8057a88: e006         	b	0x8057a98 <SystemCoreClockUpdate+0x140> @ imm = #0xc
;       SystemCoreClock = msirange;
 8057a8a: 9804         	ldr	r0, [sp, #0x10]
 8057a8c: f240 1104    	movw	r1, #0x104
 8057a90: f2c2 0100    	movt	r1, #0x2000
 8057a94: 6008         	str	r0, [r1]
;       break;
 8057a96: e7ff         	b	0x8057a98 <SystemCoreClockUpdate+0x140> @ imm = #-0x2
 8057a98: f241 0008    	movw	r0, #0x1008
 8057a9c: f2c4 0002    	movt	r0, #0x4002
;   tmp = AHBPrescTable[((RCC->CFGR & RCC_CFGR_HPRE) >> 4U)];
 8057aa0: 6800         	ldr	r0, [r0]
 8057aa2: b2c0         	uxtb	r0, r0
 8057aa4: 0900         	lsrs	r0, r0, #0x4
 8057aa6: f248 31f8    	movw	r1, #0x83f8
 8057aaa: f6c0 0105    	movt	r1, #0x805
 8057aae: 5c08         	ldrb	r0, [r1, r0]
 8057ab0: 9005         	str	r0, [sp, #0x14]
;   SystemCoreClock >>= tmp;
 8057ab2: 9805         	ldr	r0, [sp, #0x14]
 8057ab4: f240 1104    	movw	r1, #0x104
 8057ab8: f2c2 0100    	movt	r1, #0x2000
 8057abc: 680a         	ldr	r2, [r1]
 8057abe: fa22 f000    	lsr.w	r0, r2, r0
 8057ac2: 6008         	str	r0, [r1]
; }
 8057ac4: b006         	add	sp, #0x18
 8057ac6: 4770         	bx	lr

08057ac8 <HAL_GPIO_Init>:
; void HAL_GPIO_Init(GPIO_TypeDef *GPIOx, GPIO_InitTypeDef *GPIO_Init) {
 8057ac8: b085         	sub	sp, #0x14
 8057aca: f640 4100    	movw	r1, #0xc00
 8057ace: f2c4 2102    	movt	r1, #0x4202
 8057ad2: 9104         	str	r1, [sp, #0x10]
 8057ad4: 9003         	str	r0, [sp, #0xc]
 8057ad6: 2000         	movs	r0, #0x0
;   uint32_t position = 0U;
 8057ad8: 9002         	str	r0, [sp, #0x8]
;   while (((GPIO_Init->Pin) >> position) != 0U) {
 8057ada: e7ff         	b	0x8057adc <HAL_GPIO_Init+0x14> @ imm = #-0x2
 8057adc: 9803         	ldr	r0, [sp, #0xc]
 8057ade: 6800         	ldr	r0, [r0]
 8057ae0: 9902         	ldr	r1, [sp, #0x8]
 8057ae2: 40c8         	lsrs	r0, r1
 8057ae4: 2800         	cmp	r0, #0x0
 8057ae6: f000 819c    	beq.w	0x8057e22 <HAL_GPIO_Init+0x35a> @ imm = #0x338
 8057aea: e7ff         	b	0x8057aec <HAL_GPIO_Init+0x24> @ imm = #-0x2
;     iocurrent = (GPIO_Init->Pin) & (1UL << position);
 8057aec: 9803         	ldr	r0, [sp, #0xc]
 8057aee: 6800         	ldr	r0, [r0]
 8057af0: 9902         	ldr	r1, [sp, #0x8]
 8057af2: 2201         	movs	r2, #0x1
 8057af4: fa02 f101    	lsl.w	r1, r2, r1
 8057af8: 4008         	ands	r0, r1
 8057afa: 9001         	str	r0, [sp, #0x4]
;     if (iocurrent != 0U) {
 8057afc: 9801         	ldr	r0, [sp, #0x4]
 8057afe: 2800         	cmp	r0, #0x0
 8057b00: f000 818b    	beq.w	0x8057e1a <HAL_GPIO_Init+0x352> @ imm = #0x316
 8057b04: e7ff         	b	0x8057b06 <HAL_GPIO_Init+0x3e> @ imm = #-0x2
;       if ((GPIO_Init->Mode == GPIO_MODE_OUTPUT_PP) ||
 8057b06: 9803         	ldr	r0, [sp, #0xc]
 8057b08: 6840         	ldr	r0, [r0, #0x4]
 8057b0a: 2801         	cmp	r0, #0x1
 8057b0c: d00f         	beq	0x8057b2e <HAL_GPIO_Init+0x66> @ imm = #0x1e
 8057b0e: e7ff         	b	0x8057b10 <HAL_GPIO_Init+0x48> @ imm = #-0x2
;           (GPIO_Init->Mode == GPIO_MODE_AF_PP) ||
 8057b10: 9803         	ldr	r0, [sp, #0xc]
 8057b12: 6840         	ldr	r0, [r0, #0x4]
 8057b14: 2802         	cmp	r0, #0x2
 8057b16: d00a         	beq	0x8057b2e <HAL_GPIO_Init+0x66> @ imm = #0x14
 8057b18: e7ff         	b	0x8057b1a <HAL_GPIO_Init+0x52> @ imm = #-0x2
;           (GPIO_Init->Mode == GPIO_MODE_OUTPUT_OD) ||
 8057b1a: 9803         	ldr	r0, [sp, #0xc]
 8057b1c: 6840         	ldr	r0, [r0, #0x4]
 8057b1e: 2811         	cmp	r0, #0x11
 8057b20: d005         	beq	0x8057b2e <HAL_GPIO_Init+0x66> @ imm = #0xa
 8057b22: e7ff         	b	0x8057b24 <HAL_GPIO_Init+0x5c> @ imm = #-0x2
;           (GPIO_Init->Mode == GPIO_MODE_AF_OD)) {
 8057b24: 9803         	ldr	r0, [sp, #0xc]
 8057b26: 6840         	ldr	r0, [r0, #0x4]
;       if ((GPIO_Init->Mode == GPIO_MODE_OUTPUT_PP) ||
 8057b28: 2812         	cmp	r0, #0x12
 8057b2a: d12f         	bne	0x8057b8c <HAL_GPIO_Init+0xc4> @ imm = #0x5e
 8057b2c: e7ff         	b	0x8057b2e <HAL_GPIO_Init+0x66> @ imm = #-0x2
;         temp = GPIOx->OSPEEDR;
 8057b2e: 9804         	ldr	r0, [sp, #0x10]
 8057b30: 6880         	ldr	r0, [r0, #0x8]
 8057b32: 9000         	str	r0, [sp]
;         temp &= ~(GPIO_OSPEEDR_OSPEED0 << (position * 2U));
 8057b34: 9802         	ldr	r0, [sp, #0x8]
 8057b36: 0040         	lsls	r0, r0, #0x1
 8057b38: 2103         	movs	r1, #0x3
 8057b3a: fa01 f000    	lsl.w	r0, r1, r0
 8057b3e: 9900         	ldr	r1, [sp]
 8057b40: ea21 0000    	bic.w	r0, r1, r0
 8057b44: 9000         	str	r0, [sp]
;         temp |= (GPIO_Init->Speed << (position * 2U));
 8057b46: 9803         	ldr	r0, [sp, #0xc]
 8057b48: 68c0         	ldr	r0, [r0, #0xc]
 8057b4a: 9902         	ldr	r1, [sp, #0x8]
 8057b4c: 0049         	lsls	r1, r1, #0x1
 8057b4e: 4088         	lsls	r0, r1
 8057b50: 9900         	ldr	r1, [sp]
 8057b52: 4308         	orrs	r0, r1
 8057b54: 9000         	str	r0, [sp]
;         GPIOx->OSPEEDR = temp;
 8057b56: 9800         	ldr	r0, [sp]
 8057b58: 9904         	ldr	r1, [sp, #0x10]
 8057b5a: 6088         	str	r0, [r1, #0x8]
;         temp = GPIOx->OTYPER;
 8057b5c: 9804         	ldr	r0, [sp, #0x10]
 8057b5e: 6840         	ldr	r0, [r0, #0x4]
 8057b60: 9000         	str	r0, [sp]
;         temp &= ~(GPIO_OTYPER_OT0 << position);
 8057b62: 9802         	ldr	r0, [sp, #0x8]
 8057b64: 2101         	movs	r1, #0x1
 8057b66: fa01 f000    	lsl.w	r0, r1, r0
 8057b6a: 9900         	ldr	r1, [sp]
 8057b6c: ea21 0000    	bic.w	r0, r1, r0
 8057b70: 9000         	str	r0, [sp]
;         temp |= (((GPIO_Init->Mode & GPIO_OUTPUT_TYPE) >> 4) << position);
 8057b72: 9803         	ldr	r0, [sp, #0xc]
 8057b74: 6840         	ldr	r0, [r0, #0x4]
 8057b76: f3c0 1000    	ubfx	r0, r0, #0x4, #0x1
 8057b7a: 9902         	ldr	r1, [sp, #0x8]
 8057b7c: 4088         	lsls	r0, r1
 8057b7e: 9900         	ldr	r1, [sp]
 8057b80: 4308         	orrs	r0, r1
 8057b82: 9000         	str	r0, [sp]
;         GPIOx->OTYPER = temp;
 8057b84: 9800         	ldr	r0, [sp]
 8057b86: 9904         	ldr	r1, [sp, #0x10]
 8057b88: 6048         	str	r0, [r1, #0x4]
;       }
 8057b8a: e7ff         	b	0x8057b8c <HAL_GPIO_Init+0xc4> @ imm = #-0x2
;       temp = GPIOx->PUPDR;
 8057b8c: 9804         	ldr	r0, [sp, #0x10]
 8057b8e: 68c0         	ldr	r0, [r0, #0xc]
 8057b90: 9000         	str	r0, [sp]
;       temp &= ~(GPIO_PUPDR_PUPD0 << (position * 2U));
 8057b92: 9802         	ldr	r0, [sp, #0x8]
 8057b94: 0040         	lsls	r0, r0, #0x1
 8057b96: 2103         	movs	r1, #0x3
 8057b98: fa01 f000    	lsl.w	r0, r1, r0
 8057b9c: 9900         	ldr	r1, [sp]
 8057b9e: ea21 0000    	bic.w	r0, r1, r0
 8057ba2: 9000         	str	r0, [sp]
;       temp |= ((GPIO_Init->Pull) << (position * 2U));
 8057ba4: 9803         	ldr	r0, [sp, #0xc]
 8057ba6: 6880         	ldr	r0, [r0, #0x8]
 8057ba8: 9902         	ldr	r1, [sp, #0x8]
 8057baa: 0049         	lsls	r1, r1, #0x1
 8057bac: 4088         	lsls	r0, r1
 8057bae: 9900         	ldr	r1, [sp]
 8057bb0: 4308         	orrs	r0, r1
 8057bb2: 9000         	str	r0, [sp]
;       GPIOx->PUPDR = temp;
 8057bb4: 9800         	ldr	r0, [sp]
 8057bb6: 9904         	ldr	r1, [sp, #0x10]
 8057bb8: 60c8         	str	r0, [r1, #0xc]
;       if ((GPIO_Init->Mode == GPIO_MODE_AF_PP) ||
 8057bba: 9803         	ldr	r0, [sp, #0xc]
 8057bbc: 6840         	ldr	r0, [r0, #0x4]
 8057bbe: 2802         	cmp	r0, #0x2
 8057bc0: d005         	beq	0x8057bce <HAL_GPIO_Init+0x106> @ imm = #0xa
 8057bc2: e7ff         	b	0x8057bc4 <HAL_GPIO_Init+0xfc> @ imm = #-0x2
;           (GPIO_Init->Mode == GPIO_MODE_AF_OD)) {
 8057bc4: 9803         	ldr	r0, [sp, #0xc]
 8057bc6: 6840         	ldr	r0, [r0, #0x4]
;       if ((GPIO_Init->Mode == GPIO_MODE_AF_PP) ||
 8057bc8: 2812         	cmp	r0, #0x12
 8057bca: d126         	bne	0x8057c1a <HAL_GPIO_Init+0x152> @ imm = #0x4c
 8057bcc: e7ff         	b	0x8057bce <HAL_GPIO_Init+0x106> @ imm = #-0x2
;         temp = GPIOx->AFR[position >> 3U];
 8057bce: 9804         	ldr	r0, [sp, #0x10]
 8057bd0: 9902         	ldr	r1, [sp, #0x8]
 8057bd2: f06f 0203    	mvn	r2, #0x3
 8057bd6: ea02 0151    	and.w	r1, r2, r1, lsr #1
 8057bda: 4408         	add	r0, r1
 8057bdc: 6a00         	ldr	r0, [r0, #0x20]
 8057bde: 9000         	str	r0, [sp]
;         temp &= ~(0x0FUL << ((position & 0x07U) * 4U));
 8057be0: 9802         	ldr	r0, [sp, #0x8]
 8057be2: f000 0007    	and	r0, r0, #0x7
 8057be6: 0080         	lsls	r0, r0, #0x2
 8057be8: 210f         	movs	r1, #0xf
 8057bea: fa01 f000    	lsl.w	r0, r1, r0
 8057bee: 9900         	ldr	r1, [sp]
 8057bf0: ea21 0000    	bic.w	r0, r1, r0
 8057bf4: 9000         	str	r0, [sp]
;         temp |= ((GPIO_Init->Alternate) << ((position & 0x07U) * 4U));
 8057bf6: 9803         	ldr	r0, [sp, #0xc]
 8057bf8: 6900         	ldr	r0, [r0, #0x10]
 8057bfa: 9902         	ldr	r1, [sp, #0x8]
 8057bfc: f001 0107    	and	r1, r1, #0x7
 8057c00: 0089         	lsls	r1, r1, #0x2
 8057c02: 4088         	lsls	r0, r1
 8057c04: 9900         	ldr	r1, [sp]
 8057c06: 4308         	orrs	r0, r1
 8057c08: 9000         	str	r0, [sp]
;         GPIOx->AFR[position >> 3U] = temp;
 8057c0a: 9800         	ldr	r0, [sp]
 8057c0c: 9904         	ldr	r1, [sp, #0x10]
 8057c0e: 9b02         	ldr	r3, [sp, #0x8]
 8057c10: ea02 0253    	and.w	r2, r2, r3, lsr #1
 8057c14: 4411         	add	r1, r2
 8057c16: 6208         	str	r0, [r1, #0x20]
;       }
 8057c18: e7ff         	b	0x8057c1a <HAL_GPIO_Init+0x152> @ imm = #-0x2
;       temp = GPIOx->MODER;
 8057c1a: 9804         	ldr	r0, [sp, #0x10]
 8057c1c: 6800         	ldr	r0, [r0]
 8057c1e: 9000         	str	r0, [sp]
;       temp &= ~(GPIO_MODER_MODE0 << (position * 2U));
 8057c20: 9802         	ldr	r0, [sp, #0x8]
 8057c22: 0040         	lsls	r0, r0, #0x1
 8057c24: 2103         	movs	r1, #0x3
 8057c26: fa01 f000    	lsl.w	r0, r1, r0
 8057c2a: 9900         	ldr	r1, [sp]
 8057c2c: ea21 0000    	bic.w	r0, r1, r0
 8057c30: 9000         	str	r0, [sp]
;       temp |= ((GPIO_Init->Mode & GPIO_MODE) << (position * 2U));
 8057c32: 9803         	ldr	r0, [sp, #0xc]
 8057c34: 6840         	ldr	r0, [r0, #0x4]
 8057c36: f000 0003    	and	r0, r0, #0x3
 8057c3a: 9902         	ldr	r1, [sp, #0x8]
 8057c3c: 0049         	lsls	r1, r1, #0x1
 8057c3e: 4088         	lsls	r0, r1
 8057c40: 9900         	ldr	r1, [sp]
 8057c42: 4308         	orrs	r0, r1
 8057c44: 9000         	str	r0, [sp]
;       GPIOx->MODER = temp;
 8057c46: 9800         	ldr	r0, [sp]
 8057c48: 9904         	ldr	r1, [sp, #0x10]
 8057c4a: 6008         	str	r0, [r1]
;       if ((GPIO_Init->Mode & EXTI_MODE) == EXTI_MODE) {
 8057c4c: 9803         	ldr	r0, [sp, #0xc]
 8057c4e: 79c0         	ldrb	r0, [r0, #0x7]
 8057c50: 06c0         	lsls	r0, r0, #0x1b
 8057c52: 2800         	cmp	r0, #0x0
 8057c54: f140 80e0    	bpl.w	0x8057e18 <HAL_GPIO_Init+0x350> @ imm = #0x1c0
 8057c58: e7ff         	b	0x8057c5a <HAL_GPIO_Init+0x192> @ imm = #-0x2
;         temp = EXTI->EXTICR[position >> 2U];
 8057c5a: 9802         	ldr	r0, [sp, #0x8]
 8057c5c: f020 0003    	bic	r0, r0, #0x3
 8057c60: f24f 4160    	movw	r1, #0xf460
 8057c64: f2c4 0102    	movt	r1, #0x4002
 8057c68: 5840         	ldr	r0, [r0, r1]
 8057c6a: 9000         	str	r0, [sp]
;         temp &= ~((0x0FU) << (8U * (position & 0x03U)));
 8057c6c: 9802         	ldr	r0, [sp, #0x8]
 8057c6e: f000 0003    	and	r0, r0, #0x3
 8057c72: 00c0         	lsls	r0, r0, #0x3
 8057c74: 210f         	movs	r1, #0xf
 8057c76: fa01 f000    	lsl.w	r0, r1, r0
 8057c7a: 9900         	ldr	r1, [sp]
 8057c7c: ea21 0000    	bic.w	r0, r1, r0
 8057c80: 9000         	str	r0, [sp]
;         temp |= (GPIO_GET_INDEX(GPIOx) << (8U * (position & 0x03U)));
 8057c82: 9804         	ldr	r0, [sp, #0x10]
 8057c84: 2100         	movs	r1, #0x0
 8057c86: f2c4 2102    	movt	r1, #0x4202
 8057c8a: 4288         	cmp	r0, r1
 8057c8c: d102         	bne	0x8057c94 <HAL_GPIO_Init+0x1cc> @ imm = #0x4
 8057c8e: e7ff         	b	0x8057c90 <HAL_GPIO_Init+0x1c8> @ imm = #-0x2
 8057c90: 2000         	movs	r0, #0x0
;         temp |= (GPIO_GET_INDEX(GPIOx) << (8U * (position & 0x03U)));
 8057c92: e040         	b	0x8057d16 <HAL_GPIO_Init+0x24e> @ imm = #0x80
 8057c94: 9804         	ldr	r0, [sp, #0x10]
 8057c96: f240 4100    	movw	r1, #0x400
 8057c9a: f2c4 2102    	movt	r1, #0x4202
 8057c9e: 4288         	cmp	r0, r1
 8057ca0: d102         	bne	0x8057ca8 <HAL_GPIO_Init+0x1e0> @ imm = #0x4
 8057ca2: e7ff         	b	0x8057ca4 <HAL_GPIO_Init+0x1dc> @ imm = #-0x2
 8057ca4: 2001         	movs	r0, #0x1
;         temp |= (GPIO_GET_INDEX(GPIOx) << (8U * (position & 0x03U)));
 8057ca6: e035         	b	0x8057d14 <HAL_GPIO_Init+0x24c> @ imm = #0x6a
 8057ca8: 9804         	ldr	r0, [sp, #0x10]
 8057caa: f640 0100    	movw	r1, #0x800
 8057cae: f2c4 2102    	movt	r1, #0x4202
 8057cb2: 4288         	cmp	r0, r1
 8057cb4: d102         	bne	0x8057cbc <HAL_GPIO_Init+0x1f4> @ imm = #0x4
 8057cb6: e7ff         	b	0x8057cb8 <HAL_GPIO_Init+0x1f0> @ imm = #-0x2
 8057cb8: 2002         	movs	r0, #0x2
;         temp |= (GPIO_GET_INDEX(GPIOx) << (8U * (position & 0x03U)));
 8057cba: e02a         	b	0x8057d12 <HAL_GPIO_Init+0x24a> @ imm = #0x54
 8057cbc: 9804         	ldr	r0, [sp, #0x10]
 8057cbe: f640 4100    	movw	r1, #0xc00
 8057cc2: f2c4 2102    	movt	r1, #0x4202
 8057cc6: 4288         	cmp	r0, r1
 8057cc8: d102         	bne	0x8057cd0 <HAL_GPIO_Init+0x208> @ imm = #0x4
 8057cca: e7ff         	b	0x8057ccc <HAL_GPIO_Init+0x204> @ imm = #-0x2
 8057ccc: 2003         	movs	r0, #0x3
;         temp |= (GPIO_GET_INDEX(GPIOx) << (8U * (position & 0x03U)));
 8057cce: e01f         	b	0x8057d10 <HAL_GPIO_Init+0x248> @ imm = #0x3e
 8057cd0: 9804         	ldr	r0, [sp, #0x10]
 8057cd2: f241 0100    	movw	r1, #0x1000
 8057cd6: f2c4 2102    	movt	r1, #0x4202
 8057cda: 4288         	cmp	r0, r1
 8057cdc: d102         	bne	0x8057ce4 <HAL_GPIO_Init+0x21c> @ imm = #0x4
 8057cde: e7ff         	b	0x8057ce0 <HAL_GPIO_Init+0x218> @ imm = #-0x2
 8057ce0: 2004         	movs	r0, #0x4
;         temp |= (GPIO_GET_INDEX(GPIOx) << (8U * (position & 0x03U)));
 8057ce2: e014         	b	0x8057d0e <HAL_GPIO_Init+0x246> @ imm = #0x28
 8057ce4: 9804         	ldr	r0, [sp, #0x10]
 8057ce6: f241 4100    	movw	r1, #0x1400
 8057cea: f2c4 2102    	movt	r1, #0x4202
 8057cee: 4288         	cmp	r0, r1
 8057cf0: d102         	bne	0x8057cf8 <HAL_GPIO_Init+0x230> @ imm = #0x4
 8057cf2: e7ff         	b	0x8057cf4 <HAL_GPIO_Init+0x22c> @ imm = #-0x2
 8057cf4: 2005         	movs	r0, #0x5
;         temp |= (GPIO_GET_INDEX(GPIOx) << (8U * (position & 0x03U)));
 8057cf6: e009         	b	0x8057d0c <HAL_GPIO_Init+0x244> @ imm = #0x12
 8057cf8: 9904         	ldr	r1, [sp, #0x10]
 8057cfa: f641 0200    	movw	r2, #0x1800
 8057cfe: f2c4 2202    	movt	r2, #0x4202
 8057d02: 2007         	movs	r0, #0x7
 8057d04: 4291         	cmp	r1, r2
 8057d06: bf08         	it	eq
 8057d08: 2006         	moveq	r0, #0x6
 8057d0a: e7ff         	b	0x8057d0c <HAL_GPIO_Init+0x244> @ imm = #-0x2
 8057d0c: e7ff         	b	0x8057d0e <HAL_GPIO_Init+0x246> @ imm = #-0x2
 8057d0e: e7ff         	b	0x8057d10 <HAL_GPIO_Init+0x248> @ imm = #-0x2
 8057d10: e7ff         	b	0x8057d12 <HAL_GPIO_Init+0x24a> @ imm = #-0x2
 8057d12: e7ff         	b	0x8057d14 <HAL_GPIO_Init+0x24c> @ imm = #-0x2
 8057d14: e7ff         	b	0x8057d16 <HAL_GPIO_Init+0x24e> @ imm = #-0x2
 8057d16: 9902         	ldr	r1, [sp, #0x8]
 8057d18: f001 0103    	and	r1, r1, #0x3
 8057d1c: 00c9         	lsls	r1, r1, #0x3
 8057d1e: 4088         	lsls	r0, r1
 8057d20: 9900         	ldr	r1, [sp]
 8057d22: 4308         	orrs	r0, r1
 8057d24: 9000         	str	r0, [sp]
;         EXTI->EXTICR[position >> 2U] = temp;
 8057d26: 9800         	ldr	r0, [sp]
 8057d28: 9902         	ldr	r1, [sp, #0x8]
 8057d2a: f021 0103    	bic	r1, r1, #0x3
 8057d2e: f24f 4260    	movw	r2, #0xf460
 8057d32: f2c4 0202    	movt	r2, #0x4002
 8057d36: 5088         	str	r0, [r1, r2]
 8057d38: f24f 4080    	movw	r0, #0xf480
 8057d3c: f2c4 0002    	movt	r0, #0x4002
;         temp = EXTI->IMR1;
 8057d40: 6800         	ldr	r0, [r0]
 8057d42: 9000         	str	r0, [sp]
;         temp &= ~(iocurrent);
 8057d44: 9801         	ldr	r0, [sp, #0x4]
 8057d46: 9900         	ldr	r1, [sp]
 8057d48: ea21 0000    	bic.w	r0, r1, r0
 8057d4c: 9000         	str	r0, [sp]
;         if ((GPIO_Init->Mode & GPIO_MODE_IT) == GPIO_MODE_IT) {
 8057d4e: 9803         	ldr	r0, [sp, #0xc]
 8057d50: 7980         	ldrb	r0, [r0, #0x6]
 8057d52: 07c0         	lsls	r0, r0, #0x1f
 8057d54: b128         	cbz	r0, 0x8057d62 <HAL_GPIO_Init+0x29a> @ imm = #0xa
 8057d56: e7ff         	b	0x8057d58 <HAL_GPIO_Init+0x290> @ imm = #-0x2
;           temp |= iocurrent;
 8057d58: 9801         	ldr	r0, [sp, #0x4]
 8057d5a: 9900         	ldr	r1, [sp]
 8057d5c: 4308         	orrs	r0, r1
 8057d5e: 9000         	str	r0, [sp]
;         }
 8057d60: e7ff         	b	0x8057d62 <HAL_GPIO_Init+0x29a> @ imm = #-0x2
;         EXTI->IMR1 = temp;
 8057d62: 9800         	ldr	r0, [sp]
 8057d64: f24f 4180    	movw	r1, #0xf480
 8057d68: f2c4 0102    	movt	r1, #0x4002
 8057d6c: 6008         	str	r0, [r1]
 8057d6e: f24f 4084    	movw	r0, #0xf484
 8057d72: f2c4 0002    	movt	r0, #0x4002
;         temp = EXTI->EMR1;
 8057d76: 6800         	ldr	r0, [r0]
 8057d78: 9000         	str	r0, [sp]
;         temp &= ~(iocurrent);
 8057d7a: 9801         	ldr	r0, [sp, #0x4]
 8057d7c: 9900         	ldr	r1, [sp]
 8057d7e: ea21 0000    	bic.w	r0, r1, r0
 8057d82: 9000         	str	r0, [sp]
;         if ((GPIO_Init->Mode & GPIO_MODE_EVT) == GPIO_MODE_EVT) {
 8057d84: 9803         	ldr	r0, [sp, #0xc]
 8057d86: 7980         	ldrb	r0, [r0, #0x6]
 8057d88: 0780         	lsls	r0, r0, #0x1e
 8057d8a: 2800         	cmp	r0, #0x0
 8057d8c: d505         	bpl	0x8057d9a <HAL_GPIO_Init+0x2d2> @ imm = #0xa
 8057d8e: e7ff         	b	0x8057d90 <HAL_GPIO_Init+0x2c8> @ imm = #-0x2
;           temp |= iocurrent;
 8057d90: 9801         	ldr	r0, [sp, #0x4]
 8057d92: 9900         	ldr	r1, [sp]
 8057d94: 4308         	orrs	r0, r1
 8057d96: 9000         	str	r0, [sp]
;         }
 8057d98: e7ff         	b	0x8057d9a <HAL_GPIO_Init+0x2d2> @ imm = #-0x2
;         EXTI->EMR1 = temp;
 8057d9a: 9800         	ldr	r0, [sp]
 8057d9c: f24f 4184    	movw	r1, #0xf484
 8057da0: f2c4 0102    	movt	r1, #0x4002
 8057da4: 6008         	str	r0, [r1]
 8057da6: f24f 4000    	movw	r0, #0xf400
 8057daa: f2c4 0002    	movt	r0, #0x4002
;         temp = EXTI->RTSR1;
 8057dae: 6800         	ldr	r0, [r0]
 8057db0: 9000         	str	r0, [sp]
;         temp &= ~(iocurrent);
 8057db2: 9801         	ldr	r0, [sp, #0x4]
 8057db4: 9900         	ldr	r1, [sp]
 8057db6: ea21 0000    	bic.w	r0, r1, r0
 8057dba: 9000         	str	r0, [sp]
;         if ((GPIO_Init->Mode & RISING_EDGE) == RISING_EDGE) {
 8057dbc: 9803         	ldr	r0, [sp, #0xc]
 8057dbe: 7980         	ldrb	r0, [r0, #0x6]
 8057dc0: 06c0         	lsls	r0, r0, #0x1b
 8057dc2: 2800         	cmp	r0, #0x0
 8057dc4: d505         	bpl	0x8057dd2 <HAL_GPIO_Init+0x30a> @ imm = #0xa
 8057dc6: e7ff         	b	0x8057dc8 <HAL_GPIO_Init+0x300> @ imm = #-0x2
;           temp |= iocurrent;
 8057dc8: 9801         	ldr	r0, [sp, #0x4]
 8057dca: 9900         	ldr	r1, [sp]
 8057dcc: 4308         	orrs	r0, r1
 8057dce: 9000         	str	r0, [sp]
;         }
 8057dd0: e7ff         	b	0x8057dd2 <HAL_GPIO_Init+0x30a> @ imm = #-0x2
;         EXTI->RTSR1 = temp;
 8057dd2: 9800         	ldr	r0, [sp]
 8057dd4: f24f 4100    	movw	r1, #0xf400
 8057dd8: f2c4 0102    	movt	r1, #0x4002
 8057ddc: 6008         	str	r0, [r1]
 8057dde: f24f 4004    	movw	r0, #0xf404
 8057de2: f2c4 0002    	movt	r0, #0x4002
;         temp = EXTI->FTSR1;
 8057de6: 6800         	ldr	r0, [r0]
 8057de8: 9000         	str	r0, [sp]
;         temp &= ~(iocurrent);
 8057dea: 9801         	ldr	r0, [sp, #0x4]
 8057dec: 9900         	ldr	r1, [sp]
 8057dee: ea21 0000    	bic.w	r0, r1, r0
 8057df2: 9000         	str	r0, [sp]
;         if ((GPIO_Init->Mode & FALLING_EDGE) == FALLING_EDGE) {
 8057df4: 9803         	ldr	r0, [sp, #0xc]
 8057df6: 7980         	ldrb	r0, [r0, #0x6]
 8057df8: 0680         	lsls	r0, r0, #0x1a
 8057dfa: 2800         	cmp	r0, #0x0
 8057dfc: d505         	bpl	0x8057e0a <HAL_GPIO_Init+0x342> @ imm = #0xa
 8057dfe: e7ff         	b	0x8057e00 <HAL_GPIO_Init+0x338> @ imm = #-0x2
;           temp |= iocurrent;
 8057e00: 9801         	ldr	r0, [sp, #0x4]
 8057e02: 9900         	ldr	r1, [sp]
 8057e04: 4308         	orrs	r0, r1
 8057e06: 9000         	str	r0, [sp]
;         }
 8057e08: e7ff         	b	0x8057e0a <HAL_GPIO_Init+0x342> @ imm = #-0x2
;         EXTI->FTSR1 = temp;
 8057e0a: 9800         	ldr	r0, [sp]
 8057e0c: f24f 4104    	movw	r1, #0xf404
 8057e10: f2c4 0102    	movt	r1, #0x4002
 8057e14: 6008         	str	r0, [r1]
;       }
 8057e16: e7ff         	b	0x8057e18 <HAL_GPIO_Init+0x350> @ imm = #-0x2
;     }
 8057e18: e7ff         	b	0x8057e1a <HAL_GPIO_Init+0x352> @ imm = #-0x2
;     position++;
 8057e1a: 9802         	ldr	r0, [sp, #0x8]
 8057e1c: 3001         	adds	r0, #0x1
 8057e1e: 9002         	str	r0, [sp, #0x8]
;   while (((GPIO_Init->Pin) >> position) != 0U) {
 8057e20: e65c         	b	0x8057adc <HAL_GPIO_Init+0x14> @ imm = #-0x348
; }
 8057e22: b005         	add	sp, #0x14
 8057e24: 4770         	bx	lr
 8057e26: d4d4         	bmi	0x8057dd2 <HAL_GPIO_Init+0x30a> @ imm = #-0x58

08057e28 <HAL_GPIO_WritePin>:
;                        GPIO_PinState PinState) {
 8057e28: b082         	sub	sp, #0x8
 8057e2a: f640 4000    	movw	r0, #0xc00
 8057e2e: f2c4 2002    	movt	r0, #0x4202
 8057e32: 9001         	str	r0, [sp, #0x4]
 8057e34: 2008         	movs	r0, #0x8
 8057e36: f8ad 0002    	strh.w	r0, [sp, #0x2]
 8057e3a: 2001         	movs	r0, #0x1
 8057e3c: f88d 0001    	strb.w	r0, [sp, #0x1]
;   if (PinState != GPIO_PIN_RESET) {
 8057e40: f89d 0001    	ldrb.w	r0, [sp, #0x1]
 8057e44: b128         	cbz	r0, 0x8057e52 <HAL_GPIO_WritePin+0x2a> @ imm = #0xa
 8057e46: e7ff         	b	0x8057e48 <HAL_GPIO_WritePin+0x20> @ imm = #-0x2
;     GPIOx->BSRR = (uint32_t)GPIO_Pin;
 8057e48: f8bd 0002    	ldrh.w	r0, [sp, #0x2]
 8057e4c: 9901         	ldr	r1, [sp, #0x4]
 8057e4e: 6188         	str	r0, [r1, #0x18]
;   } else {
 8057e50: e004         	b	0x8057e5c <HAL_GPIO_WritePin+0x34> @ imm = #0x8
;     GPIOx->BRR = (uint32_t)GPIO_Pin;
 8057e52: f8bd 0002    	ldrh.w	r0, [sp, #0x2]
 8057e56: 9901         	ldr	r1, [sp, #0x4]
 8057e58: 6288         	str	r0, [r1, #0x28]
 8057e5a: e7ff         	b	0x8057e5c <HAL_GPIO_WritePin+0x34> @ imm = #-0x2
; }
 8057e5c: b002         	add	sp, #0x8
 8057e5e: 4770         	bx	lr

08057e60 <HAL_GPIO_TogglePin>:
; void HAL_GPIO_TogglePin(GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin) {
 8057e60: b083         	sub	sp, #0xc
 8057e62: f640 4000    	movw	r0, #0xc00
 8057e66: f2c4 2002    	movt	r0, #0x4202
 8057e6a: 9002         	str	r0, [sp, #0x8]
 8057e6c: 2008         	movs	r0, #0x8
 8057e6e: f8ad 0006    	strh.w	r0, [sp, #0x6]
;   odr = GPIOx->ODR;
 8057e72: 9802         	ldr	r0, [sp, #0x8]
 8057e74: 6940         	ldr	r0, [r0, #0x14]
 8057e76: 9000         	str	r0, [sp]
;   GPIOx->BSRR = ((odr & GPIO_Pin) << GPIO_NUMBER) | (~odr & GPIO_Pin);
 8057e78: 9800         	ldr	r0, [sp]
 8057e7a: f8bd 1006    	ldrh.w	r1, [sp, #0x6]
 8057e7e: ea00 0201    	and.w	r2, r0, r1
 8057e82: ea21 0000    	bic.w	r0, r1, r0
 8057e86: ea40 4002    	orr.w	r0, r0, r2, lsl #16
 8057e8a: 9902         	ldr	r1, [sp, #0x8]
 8057e8c: 6188         	str	r0, [r1, #0x18]
; }
 8057e8e: b003         	add	sp, #0xc
 8057e90: 4770         	bx	lr
 8057e92: d4d4         	bmi	0x8057e3e <HAL_GPIO_WritePin+0x16> @ imm = #-0x58

08057e94 <HAL_NVIC_SetPriorityGrouping>:
; {
 8057e94: b580         	push	{r7, lr}
 8057e96: 466f         	mov	r7, sp
 8057e98: b082         	sub	sp, #0x8
 8057e9a: 2004         	movs	r0, #0x4
 8057e9c: 9001         	str	r0, [sp, #0x4]
;   NVIC_SetPriorityGrouping(PriorityGroup);
 8057e9e: 9801         	ldr	r0, [sp, #0x4]
 8057ea0: f000 f802    	bl	0x8057ea8 <__NVIC_SetPriorityGrouping> @ imm = #0x4
; }
 8057ea4: b002         	add	sp, #0x8
 8057ea6: bd80         	pop	{r7, pc}

08057ea8 <__NVIC_SetPriorityGrouping>:
; {
 8057ea8: b083         	sub	sp, #0xc
 8057eaa: 9002         	str	r0, [sp, #0x8]
;   uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);             /* only values 0..7 are used          */
 8057eac: 9802         	ldr	r0, [sp, #0x8]
 8057eae: f000 0007    	and	r0, r0, #0x7
 8057eb2: 9000         	str	r0, [sp]
 8057eb4: f64e 500c    	movw	r0, #0xed0c
 8057eb8: f2ce 0000    	movt	r0, #0xe000
;   reg_value  =  SCB->AIRCR;                                                   /* read old register configuration    */
 8057ebc: 6801         	ldr	r1, [r0]
 8057ebe: 9101         	str	r1, [sp, #0x4]
;   reg_value &= ~((uint32_t)(SCB_AIRCR_VECTKEY_Msk | SCB_AIRCR_PRIGROUP_Msk)); /* clear bits to change               */
 8057ec0: 9901         	ldr	r1, [sp, #0x4]
 8057ec2: f64f 02ff    	movw	r2, #0xf8ff
 8057ec6: 4011         	ands	r1, r2
 8057ec8: 9101         	str	r1, [sp, #0x4]
;   reg_value  =  (reg_value                                   |
 8057eca: 9901         	ldr	r1, [sp, #0x4]
;                 (PriorityGroupTmp << SCB_AIRCR_PRIGROUP_Pos)  );              /* Insert write key and priority group */
 8057ecc: 9a00         	ldr	r2, [sp]
;   reg_value  =  (reg_value                                   |
 8057ece: ea41 2102    	orr.w	r1, r1, r2, lsl #8
 8057ed2: 2200         	movs	r2, #0x0
 8057ed4: f2c0 52fa    	movt	r2, #0x5fa
;                 ((uint32_t)0x5FAUL << SCB_AIRCR_VECTKEY_Pos) |
 8057ed8: 4311         	orrs	r1, r2
;   reg_value  =  (reg_value                                   |
 8057eda: 9101         	str	r1, [sp, #0x4]
;   SCB->AIRCR =  reg_value;
 8057edc: 9901         	ldr	r1, [sp, #0x4]
 8057ede: 6001         	str	r1, [r0]
; }
 8057ee0: b003         	add	sp, #0xc
 8057ee2: 4770         	bx	lr

08057ee4 <HAL_NVIC_SetPriority>:
; {
 8057ee4: b5d0         	push	{r4, r6, r7, lr}
 8057ee6: af02         	add	r7, sp, #0x8
 8057ee8: b084         	sub	sp, #0x10
 8057eea: 21ff         	movs	r1, #0xff
 8057eec: f807 1c09    	strb	r1, [r7, #-9]
 8057ef0: 9002         	str	r0, [sp, #0x8]
 8057ef2: 2000         	movs	r0, #0x0
 8057ef4: 9001         	str	r0, [sp, #0x4]
;   prioritygroup = NVIC_GetPriorityGrouping();
 8057ef6: f000 f80f    	bl	0x8057f18 <__NVIC_GetPriorityGrouping> @ imm = #0x1e
 8057efa: 9000         	str	r0, [sp]
;   NVIC_SetPriority(IRQn, NVIC_EncodePriority(prioritygroup, PreemptPriority, SubPriority));
 8057efc: f917 4c09    	ldrsb	r4, [r7, #-9]
 8057f00: 9800         	ldr	r0, [sp]
 8057f02: 9902         	ldr	r1, [sp, #0x8]
 8057f04: 9a01         	ldr	r2, [sp, #0x4]
 8057f06: f000 f80f    	bl	0x8057f28 <NVIC_EncodePriority> @ imm = #0x1e
 8057f0a: 4601         	mov	r1, r0
 8057f0c: 4620         	mov	r0, r4
 8057f0e: f000 f83d    	bl	0x8057f8c <__NVIC_SetPriority> @ imm = #0x7a
; }
 8057f12: b004         	add	sp, #0x10
 8057f14: bdd0         	pop	{r4, r6, r7, pc}
 8057f16: d4d4         	bmi	0x8057ec2 <__NVIC_SetPriorityGrouping+0x1a> @ imm = #-0x58

08057f18 <__NVIC_GetPriorityGrouping>:
; {
 8057f18: f64e 500c    	movw	r0, #0xed0c
 8057f1c: f2ce 0000    	movt	r0, #0xe000
;   return ((uint32_t)((SCB->AIRCR & SCB_AIRCR_PRIGROUP_Msk) >> SCB_AIRCR_PRIGROUP_Pos));
 8057f20: 6800         	ldr	r0, [r0]
 8057f22: f3c0 2002    	ubfx	r0, r0, #0x8, #0x3
 8057f26: 4770         	bx	lr

08057f28 <NVIC_EncodePriority>:
; {
 8057f28: b086         	sub	sp, #0x18
 8057f2a: 9005         	str	r0, [sp, #0x14]
 8057f2c: 9104         	str	r1, [sp, #0x10]
 8057f2e: 9203         	str	r2, [sp, #0xc]
;   uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);   /* only values 0..7 are used          */
 8057f30: 9805         	ldr	r0, [sp, #0x14]
 8057f32: f000 0007    	and	r0, r0, #0x7
 8057f36: 9002         	str	r0, [sp, #0x8]
;   PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(__NVIC_PRIO_BITS)) ? (uint32_t)(__NVIC_PRIO_BITS) : (uint32_t)(7UL - PriorityGroupTmp);
 8057f38: 9802         	ldr	r0, [sp, #0x8]
 8057f3a: f1c0 0007    	rsb.w	r0, r0, #0x7
 8057f3e: 2804         	cmp	r0, #0x4
 8057f40: d302         	blo	0x8057f48 <NVIC_EncodePriority+0x20> @ imm = #0x4
 8057f42: e7ff         	b	0x8057f44 <NVIC_EncodePriority+0x1c> @ imm = #-0x2
 8057f44: 2003         	movs	r0, #0x3
;   PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(__NVIC_PRIO_BITS)) ? (uint32_t)(__NVIC_PRIO_BITS) : (uint32_t)(7UL - PriorityGroupTmp);
 8057f46: e003         	b	0x8057f50 <NVIC_EncodePriority+0x28> @ imm = #0x6
 8057f48: 9802         	ldr	r0, [sp, #0x8]
 8057f4a: f1c0 0007    	rsb.w	r0, r0, #0x7
 8057f4e: e7ff         	b	0x8057f50 <NVIC_EncodePriority+0x28> @ imm = #-0x2
 8057f50: 9001         	str	r0, [sp, #0x4]
;   SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(__NVIC_PRIO_BITS)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(__NVIC_PRIO_BITS));
 8057f52: 9802         	ldr	r0, [sp, #0x8]
 8057f54: 3003         	adds	r0, #0x3
 8057f56: 2806         	cmp	r0, #0x6
 8057f58: d802         	bhi	0x8057f60 <NVIC_EncodePriority+0x38> @ imm = #0x4
 8057f5a: e7ff         	b	0x8057f5c <NVIC_EncodePriority+0x34> @ imm = #-0x2
 8057f5c: 2000         	movs	r0, #0x0
;   SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(__NVIC_PRIO_BITS)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(__NVIC_PRIO_BITS));
 8057f5e: e002         	b	0x8057f66 <NVIC_EncodePriority+0x3e> @ imm = #0x4
 8057f60: 9802         	ldr	r0, [sp, #0x8]
 8057f62: 3804         	subs	r0, #0x4
 8057f64: e7ff         	b	0x8057f66 <NVIC_EncodePriority+0x3e> @ imm = #-0x2
 8057f66: 9000         	str	r0, [sp]
;            ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
 8057f68: 9804         	ldr	r0, [sp, #0x10]
 8057f6a: 9901         	ldr	r1, [sp, #0x4]
 8057f6c: 2201         	movs	r2, #0x1
 8057f6e: fa02 f101    	lsl.w	r1, r2, r1
 8057f72: 3901         	subs	r1, #0x1
 8057f74: 4008         	ands	r0, r1
 8057f76: 9900         	ldr	r1, [sp]
 8057f78: 4088         	lsls	r0, r1
;            ((SubPriority     & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL)))
 8057f7a: 9b03         	ldr	r3, [sp, #0xc]
 8057f7c: fa02 f101    	lsl.w	r1, r2, r1
 8057f80: 3901         	subs	r1, #0x1
 8057f82: 4019         	ands	r1, r3
;            ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
 8057f84: 4308         	orrs	r0, r1
;   return (
 8057f86: b006         	add	sp, #0x18
 8057f88: 4770         	bx	lr
 8057f8a: d4d4         	bmi	0x8057f36 <NVIC_EncodePriority+0xe> @ imm = #-0x58

08057f8c <__NVIC_SetPriority>:
; {
 8057f8c: b082         	sub	sp, #0x8
 8057f8e: f88d 0007    	strb.w	r0, [sp, #0x7]
 8057f92: 9100         	str	r1, [sp]
;   if ((int32_t)(IRQn) >= 0)
 8057f94: f99d 0007    	ldrsb.w	r0, [sp, #0x7]
 8057f98: 2800         	cmp	r0, #0x0
 8057f9a: d40a         	bmi	0x8057fb2 <__NVIC_SetPriority+0x26> @ imm = #0x14
 8057f9c: e7ff         	b	0x8057f9e <__NVIC_SetPriority+0x12> @ imm = #-0x2
;     NVIC->IPR[((uint32_t)IRQn)]               = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
 8057f9e: 9800         	ldr	r0, [sp]
 8057fa0: 0140         	lsls	r0, r0, #0x5
 8057fa2: f99d 1007    	ldrsb.w	r1, [sp, #0x7]
 8057fa6: f24e 4200    	movw	r2, #0xe400
 8057faa: f2ce 0200    	movt	r2, #0xe000
 8057fae: 5488         	strb	r0, [r1, r2]
;   }
 8057fb0: e00b         	b	0x8057fca <__NVIC_SetPriority+0x3e> @ imm = #0x16
;     SCB->SHPR[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
 8057fb2: 9800         	ldr	r0, [sp]
 8057fb4: 0140         	lsls	r0, r0, #0x5
 8057fb6: f89d 1007    	ldrb.w	r1, [sp, #0x7]
 8057fba: f001 010f    	and	r1, r1, #0xf
 8057fbe: f64e 5214    	movw	r2, #0xed14
 8057fc2: f2ce 0200    	movt	r2, #0xe000
 8057fc6: 5488         	strb	r0, [r1, r2]
 8057fc8: e7ff         	b	0x8057fca <__NVIC_SetPriority+0x3e> @ imm = #-0x2
; }
 8057fca: b002         	add	sp, #0x8
 8057fcc: 4770         	bx	lr
 8057fce: d4d4         	bmi	0x8057f7a <NVIC_EncodePriority+0x52> @ imm = #-0x58

08057fd0 <HAL_SYSTICK_Config>:
; {
 8057fd0: b580         	push	{r7, lr}
 8057fd2: 466f         	mov	r7, sp
 8057fd4: b082         	sub	sp, #0x8
 8057fd6: 9001         	str	r0, [sp, #0x4]
;   return SysTick_Config(TicksNumb);
 8057fd8: 9801         	ldr	r0, [sp, #0x4]
 8057fda: f000 f803    	bl	0x8057fe4 <SysTick_Config> @ imm = #0x6
 8057fde: b002         	add	sp, #0x8
 8057fe0: bd80         	pop	{r7, pc}
 8057fe2: d4d4         	bmi	0x8057f8e <__NVIC_SetPriority+0x2> @ imm = #-0x58

08057fe4 <SysTick_Config>:
; {
 8057fe4: b5d0         	push	{r4, r6, r7, lr}
 8057fe6: af02         	add	r7, sp, #0x8
 8057fe8: b082         	sub	sp, #0x8
 8057fea: 9000         	str	r0, [sp]
;   if ((ticks - 1UL) > SysTick_LOAD_RELOAD_Msk)
 8057fec: 9800         	ldr	r0, [sp]
 8057fee: 3801         	subs	r0, #0x1
 8057ff0: f1b0 7f80    	cmp.w	r0, #0x1000000
 8057ff4: d303         	blo	0x8057ffe <SysTick_Config+0x1a> @ imm = #0x6
 8057ff6: e7ff         	b	0x8057ff8 <SysTick_Config+0x14> @ imm = #-0x2
 8057ff8: 2001         	movs	r0, #0x1
;     return (1UL);                                                   /* Reload value impossible */
 8057ffa: 9001         	str	r0, [sp, #0x4]
 8057ffc: e019         	b	0x8058032 <SysTick_Config+0x4e> @ imm = #0x32
;   SysTick->LOAD  = (uint32_t)(ticks - 1UL);                         /* set reload register */
 8057ffe: 9800         	ldr	r0, [sp]
 8058000: 3801         	subs	r0, #0x1
 8058002: f24e 0114    	movw	r1, #0xe014
 8058006: f2ce 0100    	movt	r1, #0xe000
 805800a: 6008         	str	r0, [r1]
 805800c: 2407         	movs	r4, #0x7
;   NVIC_SetPriority (SysTick_IRQn, (1UL << __NVIC_PRIO_BITS) - 1UL); /* set Priority for Systick Interrupt */
 805800e: f04f 30ff    	mov.w	r0, #0xffffffff
 8058012: 2107         	movs	r1, #0x7
 8058014: f7ff ffba    	bl	0x8057f8c <__NVIC_SetPriority> @ imm = #-0x8c
 8058018: f24e 0018    	movw	r0, #0xe018
 805801c: f2ce 0000    	movt	r0, #0xe000
 8058020: 2100         	movs	r1, #0x0
;   SysTick->VAL   = 0UL;                                             /* Load the SysTick Counter Value */
 8058022: 6001         	str	r1, [r0]
 8058024: f24e 0010    	movw	r0, #0xe010
 8058028: f2ce 0000    	movt	r0, #0xe000
;   SysTick->CTRL  = SysTick_CTRL_CLKSOURCE_Msk |
 805802c: 6004         	str	r4, [r0]
;   return (0UL);                                                     /* Function successful */
 805802e: 9101         	str	r1, [sp, #0x4]
 8058030: e7ff         	b	0x8058032 <SysTick_Config+0x4e> @ imm = #-0x2
; }
 8058032: 9801         	ldr	r0, [sp, #0x4]
 8058034: b002         	add	sp, #0x8
 8058036: bdd0         	pop	{r4, r6, r7, pc}

08058038 <Reset_Handler>:
; void Reset_Handler(void) {
 8058038: b580         	push	{r7, lr}
 805803a: 466f         	mov	r7, sp
 805803c: b088         	sub	sp, #0x20
 805803e: f242 30a0    	movw	r0, #0x23a0
 8058042: f2c2 0000    	movt	r0, #0x2000
 8058046: 9005         	str	r0, [sp, #0x14]
;   __ASM volatile("MSR msplim, %0" : : "r"(MainStackPtrLimit));
 8058048: 9905         	ldr	r1, [sp, #0x14]
 805804a: f381 880a    	msr	msplim, r1
 805804e: f243 31a0    	movw	r1, #0x33a0
 8058052: f2c2 0100    	movt	r1, #0x2000
 8058056: 9106         	str	r1, [sp, #0x18]
;   __ASM volatile("MSR psp, %0" : : "r"(topOfProcStack) :);
 8058058: 9906         	ldr	r1, [sp, #0x18]
 805805a: f381 8809    	msr	psp, r1
 805805e: 9007         	str	r0, [sp, #0x1c]
;   __ASM volatile("MSR psplim, %0" : : "r"(ProcStackPtrLimit));
 8058060: 9807         	ldr	r0, [sp, #0x1c]
 8058062: f380 880b    	msr	psplim, r0
;   SystemInit();      /* CMSIS System Initialization */
 8058066: f7ff fc75    	bl	0x8057954 <SystemInit>  @ imm = #-0x716
;   for (__copy_table_t const *pTable = &__copy_table_start__;
 805806a: f248 4018    	movw	r0, #0x8418
 805806e: f6c0 0005    	movt	r0, #0x805
 8058072: 9004         	str	r0, [sp, #0x10]
 8058074: e7ff         	b	0x8058076 <Reset_Handler+0x3e> @ imm = #-0x2
;        pTable < &__copy_table_end__; ++pTable) {
 8058076: 9804         	ldr	r0, [sp, #0x10]
 8058078: f248 4130    	movw	r1, #0x8430
 805807c: f6c0 0105    	movt	r1, #0x805
;   for (__copy_table_t const *pTable = &__copy_table_start__;
 8058080: 4288         	cmp	r0, r1
 8058082: d219         	bhs	0x80580b8 <Reset_Handler+0x80> @ imm = #0x32
 8058084: e7ff         	b	0x8058086 <Reset_Handler+0x4e> @ imm = #-0x2
 8058086: 2000         	movs	r0, #0x0
;     for (uint32_t i = 0u; i < pTable->wlen; ++i) {
 8058088: 9003         	str	r0, [sp, #0xc]
 805808a: e7ff         	b	0x805808c <Reset_Handler+0x54> @ imm = #-0x2
 805808c: 9803         	ldr	r0, [sp, #0xc]
 805808e: 9904         	ldr	r1, [sp, #0x10]
 8058090: 6889         	ldr	r1, [r1, #0x8]
 8058092: 4288         	cmp	r0, r1
 8058094: d20c         	bhs	0x80580b0 <Reset_Handler+0x78> @ imm = #0x18
 8058096: e7ff         	b	0x8058098 <Reset_Handler+0x60> @ imm = #-0x2
;       pTable->dest[i] = pTable->src[i];
 8058098: 9804         	ldr	r0, [sp, #0x10]
 805809a: 9903         	ldr	r1, [sp, #0xc]
 805809c: 6802         	ldr	r2, [r0]
 805809e: 6840         	ldr	r0, [r0, #0x4]
 80580a0: f852 2021    	ldr.w	r2, [r2, r1, lsl #2]
 80580a4: f840 2021    	str.w	r2, [r0, r1, lsl #2]
;     for (uint32_t i = 0u; i < pTable->wlen; ++i) {
 80580a8: 9803         	ldr	r0, [sp, #0xc]
 80580aa: 3001         	adds	r0, #0x1
 80580ac: 9003         	str	r0, [sp, #0xc]
 80580ae: e7ed         	b	0x805808c <Reset_Handler+0x54> @ imm = #-0x26
;        pTable < &__copy_table_end__; ++pTable) {
 80580b0: 9804         	ldr	r0, [sp, #0x10]
 80580b2: 300c         	adds	r0, #0xc
 80580b4: 9004         	str	r0, [sp, #0x10]
;   for (__copy_table_t const *pTable = &__copy_table_start__;
 80580b6: e7de         	b	0x8058076 <Reset_Handler+0x3e> @ imm = #-0x44
;   for (__zero_table_t const *pTable = &__zero_table_start__;
 80580b8: f248 4030    	movw	r0, #0x8430
 80580bc: f6c0 0005    	movt	r0, #0x805
 80580c0: 9002         	str	r0, [sp, #0x8]
 80580c2: e7ff         	b	0x80580c4 <Reset_Handler+0x8c> @ imm = #-0x2
;        pTable < &__zero_table_end__; ++pTable) {
 80580c4: 9802         	ldr	r0, [sp, #0x8]
 80580c6: f248 4140    	movw	r1, #0x8440
 80580ca: f6c0 0105    	movt	r1, #0x805
;   for (__zero_table_t const *pTable = &__zero_table_start__;
 80580ce: 4288         	cmp	r0, r1
 80580d0: d217         	bhs	0x8058102 <Reset_Handler+0xca> @ imm = #0x2e
 80580d2: e7ff         	b	0x80580d4 <Reset_Handler+0x9c> @ imm = #-0x2
 80580d4: 2000         	movs	r0, #0x0
;     for (uint32_t i = 0u; i < pTable->wlen; ++i) {
 80580d6: 9001         	str	r0, [sp, #0x4]
 80580d8: e7ff         	b	0x80580da <Reset_Handler+0xa2> @ imm = #-0x2
 80580da: 9801         	ldr	r0, [sp, #0x4]
 80580dc: 9902         	ldr	r1, [sp, #0x8]
 80580de: 6849         	ldr	r1, [r1, #0x4]
 80580e0: 4288         	cmp	r0, r1
 80580e2: d20a         	bhs	0x80580fa <Reset_Handler+0xc2> @ imm = #0x14
 80580e4: e7ff         	b	0x80580e6 <Reset_Handler+0xae> @ imm = #-0x2
;       pTable->dest[i] = 0u;
 80580e6: 9802         	ldr	r0, [sp, #0x8]
 80580e8: 6800         	ldr	r0, [r0]
 80580ea: 9901         	ldr	r1, [sp, #0x4]
 80580ec: 2200         	movs	r2, #0x0
 80580ee: f840 2021    	str.w	r2, [r0, r1, lsl #2]
;     for (uint32_t i = 0u; i < pTable->wlen; ++i) {
 80580f2: 9801         	ldr	r0, [sp, #0x4]
 80580f4: 3001         	adds	r0, #0x1
 80580f6: 9001         	str	r0, [sp, #0x4]
 80580f8: e7ef         	b	0x80580da <Reset_Handler+0xa2> @ imm = #-0x22
;        pTable < &__zero_table_end__; ++pTable) {
 80580fa: 9802         	ldr	r0, [sp, #0x8]
 80580fc: 3008         	adds	r0, #0x8
 80580fe: 9002         	str	r0, [sp, #0x8]
;   for (__zero_table_t const *pTable = &__zero_table_start__;
 8058100: e7e0         	b	0x80580c4 <Reset_Handler+0x8c> @ imm = #-0x40
;   main();
 8058102: f000 f903    	bl	0x805830c <main>        @ imm = #0x206
 8058106: d4d4         	bmi	0x80580b2 <Reset_Handler+0x7a> @ imm = #-0x58

08058108 <NMI_Handler>:
; DEFAULT_IRQ_HANDLER(NMI_Handler)
 8058108: e7ff         	b	0x805810a <NMI_Handler+0x2> @ imm = #-0x2
 805810a: e7fe         	b	0x805810a <NMI_Handler+0x2> @ imm = #-0x4

0805810c <HardFault_Handler>:
; DEFAULT_IRQ_HANDLER(HardFault_Handler)
 805810c: e7ff         	b	0x805810e <HardFault_Handler+0x2> @ imm = #-0x2
 805810e: e7fe         	b	0x805810e <HardFault_Handler+0x2> @ imm = #-0x4

08058110 <MemManage_Handler>:
; DEFAULT_IRQ_HANDLER(MemManage_Handler)
 8058110: e7ff         	b	0x8058112 <MemManage_Handler+0x2> @ imm = #-0x2
 8058112: e7fe         	b	0x8058112 <MemManage_Handler+0x2> @ imm = #-0x4

08058114 <BusFault_Handler>:
; DEFAULT_IRQ_HANDLER(BusFault_Handler)
 8058114: e7ff         	b	0x8058116 <BusFault_Handler+0x2> @ imm = #-0x2
 8058116: e7fe         	b	0x8058116 <BusFault_Handler+0x2> @ imm = #-0x4

08058118 <UsageFault_Handler>:
; DEFAULT_IRQ_HANDLER(UsageFault_Handler)
 8058118: e7ff         	b	0x805811a <UsageFault_Handler+0x2> @ imm = #-0x2
 805811a: e7fe         	b	0x805811a <UsageFault_Handler+0x2> @ imm = #-0x4

0805811c <SecureFault_Handler>:
; DEFAULT_IRQ_HANDLER(SecureFault_Handler)
 805811c: e7ff         	b	0x805811e <SecureFault_Handler+0x2> @ imm = #-0x2
 805811e: e7fe         	b	0x805811e <SecureFault_Handler+0x2> @ imm = #-0x4

08058120 <DebugMon_Handler>:
; DEFAULT_IRQ_HANDLER(DebugMon_Handler)
 8058120: e7ff         	b	0x8058122 <DebugMon_Handler+0x2> @ imm = #-0x2
 8058122: e7fe         	b	0x8058122 <DebugMon_Handler+0x2> @ imm = #-0x4

08058124 <WWDG_IRQHandler>:
; DEFAULT_IRQ_HANDLER(WWDG_IRQHandler)
 8058124: e7ff         	b	0x8058126 <WWDG_IRQHandler+0x2> @ imm = #-0x2
 8058126: e7fe         	b	0x8058126 <WWDG_IRQHandler+0x2> @ imm = #-0x4

08058128 <PVD_PVM_IRQHandler>:
; DEFAULT_IRQ_HANDLER(PVD_PVM_IRQHandler)
 8058128: e7ff         	b	0x805812a <PVD_PVM_IRQHandler+0x2> @ imm = #-0x2
 805812a: e7fe         	b	0x805812a <PVD_PVM_IRQHandler+0x2> @ imm = #-0x4

0805812c <RTC_IRQHandler>:
; DEFAULT_IRQ_HANDLER(RTC_IRQHandler)
 805812c: e7ff         	b	0x805812e <RTC_IRQHandler+0x2> @ imm = #-0x2
 805812e: e7fe         	b	0x805812e <RTC_IRQHandler+0x2> @ imm = #-0x4

08058130 <RTC_IRQHandler_S>:
; DEFAULT_IRQ_HANDLER(RTC_IRQHandler_S)
 8058130: e7ff         	b	0x8058132 <RTC_IRQHandler_S+0x2> @ imm = #-0x2
 8058132: e7fe         	b	0x8058132 <RTC_IRQHandler_S+0x2> @ imm = #-0x4

08058134 <TAMP_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TAMP_IRQHandler)
 8058134: e7ff         	b	0x8058136 <TAMP_IRQHandler+0x2> @ imm = #-0x2
 8058136: e7fe         	b	0x8058136 <TAMP_IRQHandler+0x2> @ imm = #-0x4

08058138 <TAMP_IRQHandler_S>:
; DEFAULT_IRQ_HANDLER(TAMP_IRQHandler_S)
 8058138: e7ff         	b	0x805813a <TAMP_IRQHandler_S+0x2> @ imm = #-0x2
 805813a: e7fe         	b	0x805813a <TAMP_IRQHandler_S+0x2> @ imm = #-0x4

0805813c <FLASH_IRQHandler>:
; DEFAULT_IRQ_HANDLER(FLASH_IRQHandler)
 805813c: e7ff         	b	0x805813e <FLASH_IRQHandler+0x2> @ imm = #-0x2
 805813e: e7fe         	b	0x805813e <FLASH_IRQHandler+0x2> @ imm = #-0x4

08058140 <FLASH_IRQHandler_S>:
; DEFAULT_IRQ_HANDLER(FLASH_IRQHandler_S)
 8058140: e7ff         	b	0x8058142 <FLASH_IRQHandler_S+0x2> @ imm = #-0x2
 8058142: e7fe         	b	0x8058142 <FLASH_IRQHandler_S+0x2> @ imm = #-0x4

08058144 <SERR_IRQHandler>:
; DEFAULT_IRQ_HANDLER(SERR_IRQHandler)
 8058144: e7ff         	b	0x8058146 <SERR_IRQHandler+0x2> @ imm = #-0x2
 8058146: e7fe         	b	0x8058146 <SERR_IRQHandler+0x2> @ imm = #-0x4

08058148 <RCC_IRQHandler>:
; DEFAULT_IRQ_HANDLER(RCC_IRQHandler)
 8058148: e7ff         	b	0x805814a <RCC_IRQHandler+0x2> @ imm = #-0x2
 805814a: e7fe         	b	0x805814a <RCC_IRQHandler+0x2> @ imm = #-0x4

0805814c <RCC_IRQHandler_S>:
; DEFAULT_IRQ_HANDLER(RCC_IRQHandler_S)
 805814c: e7ff         	b	0x805814e <RCC_IRQHandler_S+0x2> @ imm = #-0x2
 805814e: e7fe         	b	0x805814e <RCC_IRQHandler_S+0x2> @ imm = #-0x4

08058150 <EXTI0_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI0_IRQHandler)
 8058150: e7ff         	b	0x8058152 <EXTI0_IRQHandler+0x2> @ imm = #-0x2
 8058152: e7fe         	b	0x8058152 <EXTI0_IRQHandler+0x2> @ imm = #-0x4

08058154 <EXTI1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI1_IRQHandler)
 8058154: e7ff         	b	0x8058156 <EXTI1_IRQHandler+0x2> @ imm = #-0x2
 8058156: e7fe         	b	0x8058156 <EXTI1_IRQHandler+0x2> @ imm = #-0x4

08058158 <EXTI2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI2_IRQHandler)
 8058158: e7ff         	b	0x805815a <EXTI2_IRQHandler+0x2> @ imm = #-0x2
 805815a: e7fe         	b	0x805815a <EXTI2_IRQHandler+0x2> @ imm = #-0x4

0805815c <EXTI3_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI3_IRQHandler)
 805815c: e7ff         	b	0x805815e <EXTI3_IRQHandler+0x2> @ imm = #-0x2
 805815e: e7fe         	b	0x805815e <EXTI3_IRQHandler+0x2> @ imm = #-0x4

08058160 <EXTI4_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI4_IRQHandler)
 8058160: e7ff         	b	0x8058162 <EXTI4_IRQHandler+0x2> @ imm = #-0x2
 8058162: e7fe         	b	0x8058162 <EXTI4_IRQHandler+0x2> @ imm = #-0x4

08058164 <EXTI5_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI5_IRQHandler)
 8058164: e7ff         	b	0x8058166 <EXTI5_IRQHandler+0x2> @ imm = #-0x2
 8058166: e7fe         	b	0x8058166 <EXTI5_IRQHandler+0x2> @ imm = #-0x4

08058168 <EXTI6_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI6_IRQHandler)
 8058168: e7ff         	b	0x805816a <EXTI6_IRQHandler+0x2> @ imm = #-0x2
 805816a: e7fe         	b	0x805816a <EXTI6_IRQHandler+0x2> @ imm = #-0x4

0805816c <EXTI7_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI7_IRQHandler)
 805816c: e7ff         	b	0x805816e <EXTI7_IRQHandler+0x2> @ imm = #-0x2
 805816e: e7fe         	b	0x805816e <EXTI7_IRQHandler+0x2> @ imm = #-0x4

08058170 <EXTI8_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI8_IRQHandler)
 8058170: e7ff         	b	0x8058172 <EXTI8_IRQHandler+0x2> @ imm = #-0x2
 8058172: e7fe         	b	0x8058172 <EXTI8_IRQHandler+0x2> @ imm = #-0x4

08058174 <EXTI9_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI9_IRQHandler)
 8058174: e7ff         	b	0x8058176 <EXTI9_IRQHandler+0x2> @ imm = #-0x2
 8058176: e7fe         	b	0x8058176 <EXTI9_IRQHandler+0x2> @ imm = #-0x4

08058178 <EXTI10_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI10_IRQHandler)
 8058178: e7ff         	b	0x805817a <EXTI10_IRQHandler+0x2> @ imm = #-0x2
 805817a: e7fe         	b	0x805817a <EXTI10_IRQHandler+0x2> @ imm = #-0x4

0805817c <EXTI11_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI11_IRQHandler)
 805817c: e7ff         	b	0x805817e <EXTI11_IRQHandler+0x2> @ imm = #-0x2
 805817e: e7fe         	b	0x805817e <EXTI11_IRQHandler+0x2> @ imm = #-0x4

08058180 <EXTI12_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI12_IRQHandler)
 8058180: e7ff         	b	0x8058182 <EXTI12_IRQHandler+0x2> @ imm = #-0x2
 8058182: e7fe         	b	0x8058182 <EXTI12_IRQHandler+0x2> @ imm = #-0x4

08058184 <EXTI13_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI13_IRQHandler)
 8058184: e7ff         	b	0x8058186 <EXTI13_IRQHandler+0x2> @ imm = #-0x2
 8058186: e7fe         	b	0x8058186 <EXTI13_IRQHandler+0x2> @ imm = #-0x4

08058188 <EXTI14_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI14_IRQHandler)
 8058188: e7ff         	b	0x805818a <EXTI14_IRQHandler+0x2> @ imm = #-0x2
 805818a: e7fe         	b	0x805818a <EXTI14_IRQHandler+0x2> @ imm = #-0x4

0805818c <EXTI15_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI15_IRQHandler)
 805818c: e7ff         	b	0x805818e <EXTI15_IRQHandler+0x2> @ imm = #-0x2
 805818e: e7fe         	b	0x805818e <EXTI15_IRQHandler+0x2> @ imm = #-0x4

08058190 <DMAMUX1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMAMUX1_IRQHandler)
 8058190: e7ff         	b	0x8058192 <DMAMUX1_IRQHandler+0x2> @ imm = #-0x2
 8058192: e7fe         	b	0x8058192 <DMAMUX1_IRQHandler+0x2> @ imm = #-0x4

08058194 <DMAMUX1_IRQHandler_S>:
; DEFAULT_IRQ_HANDLER(DMAMUX1_IRQHandler_S)
 8058194: e7ff         	b	0x8058196 <DMAMUX1_IRQHandler_S+0x2> @ imm = #-0x2
 8058196: e7fe         	b	0x8058196 <DMAMUX1_IRQHandler_S+0x2> @ imm = #-0x4

08058198 <DMA1_Channel1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA1_Channel1_IRQHandler)
 8058198: e7ff         	b	0x805819a <DMA1_Channel1_IRQHandler+0x2> @ imm = #-0x2
 805819a: e7fe         	b	0x805819a <DMA1_Channel1_IRQHandler+0x2> @ imm = #-0x4

0805819c <DMA1_Channel2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA1_Channel2_IRQHandler)
 805819c: e7ff         	b	0x805819e <DMA1_Channel2_IRQHandler+0x2> @ imm = #-0x2
 805819e: e7fe         	b	0x805819e <DMA1_Channel2_IRQHandler+0x2> @ imm = #-0x4

080581a0 <DMA1_Channel3_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA1_Channel3_IRQHandler)
 80581a0: e7ff         	b	0x80581a2 <DMA1_Channel3_IRQHandler+0x2> @ imm = #-0x2
 80581a2: e7fe         	b	0x80581a2 <DMA1_Channel3_IRQHandler+0x2> @ imm = #-0x4

080581a4 <DMA1_Channel4_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA1_Channel4_IRQHandler)
 80581a4: e7ff         	b	0x80581a6 <DMA1_Channel4_IRQHandler+0x2> @ imm = #-0x2
 80581a6: e7fe         	b	0x80581a6 <DMA1_Channel4_IRQHandler+0x2> @ imm = #-0x4

080581a8 <DMA1_Channel5_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA1_Channel5_IRQHandler)
 80581a8: e7ff         	b	0x80581aa <DMA1_Channel5_IRQHandler+0x2> @ imm = #-0x2
 80581aa: e7fe         	b	0x80581aa <DMA1_Channel5_IRQHandler+0x2> @ imm = #-0x4

080581ac <DMA1_Channel6_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA1_Channel6_IRQHandler)
 80581ac: e7ff         	b	0x80581ae <DMA1_Channel6_IRQHandler+0x2> @ imm = #-0x2
 80581ae: e7fe         	b	0x80581ae <DMA1_Channel6_IRQHandler+0x2> @ imm = #-0x4

080581b0 <DMA1_Channel7_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA1_Channel7_IRQHandler)
 80581b0: e7ff         	b	0x80581b2 <DMA1_Channel7_IRQHandler+0x2> @ imm = #-0x2
 80581b2: e7fe         	b	0x80581b2 <DMA1_Channel7_IRQHandler+0x2> @ imm = #-0x4

080581b4 <DMA1_Channel8_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA1_Channel8_IRQHandler)
 80581b4: e7ff         	b	0x80581b6 <DMA1_Channel8_IRQHandler+0x2> @ imm = #-0x2
 80581b6: e7fe         	b	0x80581b6 <DMA1_Channel8_IRQHandler+0x2> @ imm = #-0x4

080581b8 <ADC1_2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(ADC1_2_IRQHandler)
 80581b8: e7ff         	b	0x80581ba <ADC1_2_IRQHandler+0x2> @ imm = #-0x2
 80581ba: e7fe         	b	0x80581ba <ADC1_2_IRQHandler+0x2> @ imm = #-0x4

080581bc <DAC_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DAC_IRQHandler)
 80581bc: e7ff         	b	0x80581be <DAC_IRQHandler+0x2> @ imm = #-0x2
 80581be: e7fe         	b	0x80581be <DAC_IRQHandler+0x2> @ imm = #-0x4

080581c0 <FDCAN1_IT0_IRQHandler>:
; DEFAULT_IRQ_HANDLER(FDCAN1_IT0_IRQHandler)
 80581c0: e7ff         	b	0x80581c2 <FDCAN1_IT0_IRQHandler+0x2> @ imm = #-0x2
 80581c2: e7fe         	b	0x80581c2 <FDCAN1_IT0_IRQHandler+0x2> @ imm = #-0x4

080581c4 <FDCAN1_IT1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(FDCAN1_IT1_IRQHandler)
 80581c4: e7ff         	b	0x80581c6 <FDCAN1_IT1_IRQHandler+0x2> @ imm = #-0x2
 80581c6: e7fe         	b	0x80581c6 <FDCAN1_IT1_IRQHandler+0x2> @ imm = #-0x4

080581c8 <TIM1_BRK_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM1_BRK_IRQHandler)
 80581c8: e7ff         	b	0x80581ca <TIM1_BRK_IRQHandler+0x2> @ imm = #-0x2
 80581ca: e7fe         	b	0x80581ca <TIM1_BRK_IRQHandler+0x2> @ imm = #-0x4

080581cc <TIM1_UP_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM1_UP_IRQHandler)
 80581cc: e7ff         	b	0x80581ce <TIM1_UP_IRQHandler+0x2> @ imm = #-0x2
 80581ce: e7fe         	b	0x80581ce <TIM1_UP_IRQHandler+0x2> @ imm = #-0x4

080581d0 <TIM1_TRG_COM_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM1_TRG_COM_IRQHandler)
 80581d0: e7ff         	b	0x80581d2 <TIM1_TRG_COM_IRQHandler+0x2> @ imm = #-0x2
 80581d2: e7fe         	b	0x80581d2 <TIM1_TRG_COM_IRQHandler+0x2> @ imm = #-0x4

080581d4 <TIM1_CC_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM1_CC_IRQHandler)
 80581d4: e7ff         	b	0x80581d6 <TIM1_CC_IRQHandler+0x2> @ imm = #-0x2
 80581d6: e7fe         	b	0x80581d6 <TIM1_CC_IRQHandler+0x2> @ imm = #-0x4

080581d8 <TIM2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM2_IRQHandler)
 80581d8: e7ff         	b	0x80581da <TIM2_IRQHandler+0x2> @ imm = #-0x2
 80581da: e7fe         	b	0x80581da <TIM2_IRQHandler+0x2> @ imm = #-0x4

080581dc <TIM3_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM3_IRQHandler)
 80581dc: e7ff         	b	0x80581de <TIM3_IRQHandler+0x2> @ imm = #-0x2
 80581de: e7fe         	b	0x80581de <TIM3_IRQHandler+0x2> @ imm = #-0x4

080581e0 <TIM4_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM4_IRQHandler)
 80581e0: e7ff         	b	0x80581e2 <TIM4_IRQHandler+0x2> @ imm = #-0x2
 80581e2: e7fe         	b	0x80581e2 <TIM4_IRQHandler+0x2> @ imm = #-0x4

080581e4 <TIM5_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM5_IRQHandler)
 80581e4: e7ff         	b	0x80581e6 <TIM5_IRQHandler+0x2> @ imm = #-0x2
 80581e6: e7fe         	b	0x80581e6 <TIM5_IRQHandler+0x2> @ imm = #-0x4

080581e8 <TIM6_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM6_IRQHandler)
 80581e8: e7ff         	b	0x80581ea <TIM6_IRQHandler+0x2> @ imm = #-0x2
 80581ea: e7fe         	b	0x80581ea <TIM6_IRQHandler+0x2> @ imm = #-0x4

080581ec <TIM7_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM7_IRQHandler)
 80581ec: e7ff         	b	0x80581ee <TIM7_IRQHandler+0x2> @ imm = #-0x2
 80581ee: e7fe         	b	0x80581ee <TIM7_IRQHandler+0x2> @ imm = #-0x4

080581f0 <TIM8_BRK_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM8_BRK_IRQHandler)
 80581f0: e7ff         	b	0x80581f2 <TIM8_BRK_IRQHandler+0x2> @ imm = #-0x2
 80581f2: e7fe         	b	0x80581f2 <TIM8_BRK_IRQHandler+0x2> @ imm = #-0x4

080581f4 <TIM8_UP_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM8_UP_IRQHandler)
 80581f4: e7ff         	b	0x80581f6 <TIM8_UP_IRQHandler+0x2> @ imm = #-0x2
 80581f6: e7fe         	b	0x80581f6 <TIM8_UP_IRQHandler+0x2> @ imm = #-0x4

080581f8 <TIM8_TRG_COM_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM8_TRG_COM_IRQHandler)
 80581f8: e7ff         	b	0x80581fa <TIM8_TRG_COM_IRQHandler+0x2> @ imm = #-0x2
 80581fa: e7fe         	b	0x80581fa <TIM8_TRG_COM_IRQHandler+0x2> @ imm = #-0x4

080581fc <TIM8_CC_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM8_CC_IRQHandler)
 80581fc: e7ff         	b	0x80581fe <TIM8_CC_IRQHandler+0x2> @ imm = #-0x2
 80581fe: e7fe         	b	0x80581fe <TIM8_CC_IRQHandler+0x2> @ imm = #-0x4

08058200 <I2C1_EV_IRQHandler>:
; DEFAULT_IRQ_HANDLER(I2C1_EV_IRQHandler)
 8058200: e7ff         	b	0x8058202 <I2C1_EV_IRQHandler+0x2> @ imm = #-0x2
 8058202: e7fe         	b	0x8058202 <I2C1_EV_IRQHandler+0x2> @ imm = #-0x4

08058204 <I2C1_ER_IRQHandler>:
; DEFAULT_IRQ_HANDLER(I2C1_ER_IRQHandler)
 8058204: e7ff         	b	0x8058206 <I2C1_ER_IRQHandler+0x2> @ imm = #-0x2
 8058206: e7fe         	b	0x8058206 <I2C1_ER_IRQHandler+0x2> @ imm = #-0x4

08058208 <I2C2_EV_IRQHandler>:
; DEFAULT_IRQ_HANDLER(I2C2_EV_IRQHandler)
 8058208: e7ff         	b	0x805820a <I2C2_EV_IRQHandler+0x2> @ imm = #-0x2
 805820a: e7fe         	b	0x805820a <I2C2_EV_IRQHandler+0x2> @ imm = #-0x4

0805820c <I2C2_ER_IRQHandler>:
; DEFAULT_IRQ_HANDLER(I2C2_ER_IRQHandler)
 805820c: e7ff         	b	0x805820e <I2C2_ER_IRQHandler+0x2> @ imm = #-0x2
 805820e: e7fe         	b	0x805820e <I2C2_ER_IRQHandler+0x2> @ imm = #-0x4

08058210 <SPI1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(SPI1_IRQHandler)
 8058210: e7ff         	b	0x8058212 <SPI1_IRQHandler+0x2> @ imm = #-0x2
 8058212: e7fe         	b	0x8058212 <SPI1_IRQHandler+0x2> @ imm = #-0x4

08058214 <SPI2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(SPI2_IRQHandler)
 8058214: e7ff         	b	0x8058216 <SPI2_IRQHandler+0x2> @ imm = #-0x2
 8058216: e7fe         	b	0x8058216 <SPI2_IRQHandler+0x2> @ imm = #-0x4

08058218 <USART1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(USART1_IRQHandler)
 8058218: e7ff         	b	0x805821a <USART1_IRQHandler+0x2> @ imm = #-0x2
 805821a: e7fe         	b	0x805821a <USART1_IRQHandler+0x2> @ imm = #-0x4

0805821c <USART2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(USART2_IRQHandler)
 805821c: e7ff         	b	0x805821e <USART2_IRQHandler+0x2> @ imm = #-0x2
 805821e: e7fe         	b	0x805821e <USART2_IRQHandler+0x2> @ imm = #-0x4

08058220 <USART3_IRQHandler>:
; DEFAULT_IRQ_HANDLER(USART3_IRQHandler)
 8058220: e7ff         	b	0x8058222 <USART3_IRQHandler+0x2> @ imm = #-0x2
 8058222: e7fe         	b	0x8058222 <USART3_IRQHandler+0x2> @ imm = #-0x4

08058224 <UART4_IRQHandler>:
; DEFAULT_IRQ_HANDLER(UART4_IRQHandler)
 8058224: e7ff         	b	0x8058226 <UART4_IRQHandler+0x2> @ imm = #-0x2
 8058226: e7fe         	b	0x8058226 <UART4_IRQHandler+0x2> @ imm = #-0x4

08058228 <UART5_IRQHandler>:
; DEFAULT_IRQ_HANDLER(UART5_IRQHandler)
 8058228: e7ff         	b	0x805822a <UART5_IRQHandler+0x2> @ imm = #-0x2
 805822a: e7fe         	b	0x805822a <UART5_IRQHandler+0x2> @ imm = #-0x4

0805822c <LPUART1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(LPUART1_IRQHandler)
 805822c: e7ff         	b	0x805822e <LPUART1_IRQHandler+0x2> @ imm = #-0x2
 805822e: e7fe         	b	0x805822e <LPUART1_IRQHandler+0x2> @ imm = #-0x4

08058230 <LPTIM1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(LPTIM1_IRQHandler)
 8058230: e7ff         	b	0x8058232 <LPTIM1_IRQHandler+0x2> @ imm = #-0x2
 8058232: e7fe         	b	0x8058232 <LPTIM1_IRQHandler+0x2> @ imm = #-0x4

08058234 <LPTIM2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(LPTIM2_IRQHandler)
 8058234: e7ff         	b	0x8058236 <LPTIM2_IRQHandler+0x2> @ imm = #-0x2
 8058236: e7fe         	b	0x8058236 <LPTIM2_IRQHandler+0x2> @ imm = #-0x4

08058238 <TIM15_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM15_IRQHandler)
 8058238: e7ff         	b	0x805823a <TIM15_IRQHandler+0x2> @ imm = #-0x2
 805823a: e7fe         	b	0x805823a <TIM15_IRQHandler+0x2> @ imm = #-0x4

0805823c <TIM16_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM16_IRQHandler)
 805823c: e7ff         	b	0x805823e <TIM16_IRQHandler+0x2> @ imm = #-0x2
 805823e: e7fe         	b	0x805823e <TIM16_IRQHandler+0x2> @ imm = #-0x4

08058240 <TIM17_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM17_IRQHandler)
 8058240: e7ff         	b	0x8058242 <TIM17_IRQHandler+0x2> @ imm = #-0x2
 8058242: e7fe         	b	0x8058242 <TIM17_IRQHandler+0x2> @ imm = #-0x4

08058244 <COMP_IRQHandler>:
; DEFAULT_IRQ_HANDLER(COMP_IRQHandler)
 8058244: e7ff         	b	0x8058246 <COMP_IRQHandler+0x2> @ imm = #-0x2
 8058246: e7fe         	b	0x8058246 <COMP_IRQHandler+0x2> @ imm = #-0x4

08058248 <USB_FS_IRQHandler>:
; DEFAULT_IRQ_HANDLER(USB_FS_IRQHandler)
 8058248: e7ff         	b	0x805824a <USB_FS_IRQHandler+0x2> @ imm = #-0x2
 805824a: e7fe         	b	0x805824a <USB_FS_IRQHandler+0x2> @ imm = #-0x4

0805824c <CRS_IRQHandler>:
; DEFAULT_IRQ_HANDLER(CRS_IRQHandler)
 805824c: e7ff         	b	0x805824e <CRS_IRQHandler+0x2> @ imm = #-0x2
 805824e: e7fe         	b	0x805824e <CRS_IRQHandler+0x2> @ imm = #-0x4

08058250 <FMC_IRQHandler>:
; DEFAULT_IRQ_HANDLER(FMC_IRQHandler)
 8058250: e7ff         	b	0x8058252 <FMC_IRQHandler+0x2> @ imm = #-0x2
 8058252: e7fe         	b	0x8058252 <FMC_IRQHandler+0x2> @ imm = #-0x4

08058254 <OCTOSPI1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(OCTOSPI1_IRQHandler)
 8058254: e7ff         	b	0x8058256 <OCTOSPI1_IRQHandler+0x2> @ imm = #-0x2
 8058256: e7fe         	b	0x8058256 <OCTOSPI1_IRQHandler+0x2> @ imm = #-0x4

08058258 <SDMMC1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(SDMMC1_IRQHandler)
 8058258: e7ff         	b	0x805825a <SDMMC1_IRQHandler+0x2> @ imm = #-0x2
 805825a: e7fe         	b	0x805825a <SDMMC1_IRQHandler+0x2> @ imm = #-0x4

0805825c <DMA2_Channel1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA2_Channel1_IRQHandler)
 805825c: e7ff         	b	0x805825e <DMA2_Channel1_IRQHandler+0x2> @ imm = #-0x2
 805825e: e7fe         	b	0x805825e <DMA2_Channel1_IRQHandler+0x2> @ imm = #-0x4

08058260 <DMA2_Channel2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA2_Channel2_IRQHandler)
 8058260: e7ff         	b	0x8058262 <DMA2_Channel2_IRQHandler+0x2> @ imm = #-0x2
 8058262: e7fe         	b	0x8058262 <DMA2_Channel2_IRQHandler+0x2> @ imm = #-0x4

08058264 <DMA2_Channel3_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA2_Channel3_IRQHandler)
 8058264: e7ff         	b	0x8058266 <DMA2_Channel3_IRQHandler+0x2> @ imm = #-0x2
 8058266: e7fe         	b	0x8058266 <DMA2_Channel3_IRQHandler+0x2> @ imm = #-0x4

08058268 <DMA2_Channel4_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA2_Channel4_IRQHandler)
 8058268: e7ff         	b	0x805826a <DMA2_Channel4_IRQHandler+0x2> @ imm = #-0x2
 805826a: e7fe         	b	0x805826a <DMA2_Channel4_IRQHandler+0x2> @ imm = #-0x4

0805826c <DMA2_Channel5_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA2_Channel5_IRQHandler)
 805826c: e7ff         	b	0x805826e <DMA2_Channel5_IRQHandler+0x2> @ imm = #-0x2
 805826e: e7fe         	b	0x805826e <DMA2_Channel5_IRQHandler+0x2> @ imm = #-0x4

08058270 <DMA2_Channel6_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA2_Channel6_IRQHandler)
 8058270: e7ff         	b	0x8058272 <DMA2_Channel6_IRQHandler+0x2> @ imm = #-0x2
 8058272: e7fe         	b	0x8058272 <DMA2_Channel6_IRQHandler+0x2> @ imm = #-0x4

08058274 <DMA2_Channel7_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA2_Channel7_IRQHandler)
 8058274: e7ff         	b	0x8058276 <DMA2_Channel7_IRQHandler+0x2> @ imm = #-0x2
 8058276: e7fe         	b	0x8058276 <DMA2_Channel7_IRQHandler+0x2> @ imm = #-0x4

08058278 <DMA2_Channel8_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA2_Channel8_IRQHandler)
 8058278: e7ff         	b	0x805827a <DMA2_Channel8_IRQHandler+0x2> @ imm = #-0x2
 805827a: e7fe         	b	0x805827a <DMA2_Channel8_IRQHandler+0x2> @ imm = #-0x4

0805827c <I2C3_EV_IRQHandler>:
; DEFAULT_IRQ_HANDLER(I2C3_EV_IRQHandler)
 805827c: e7ff         	b	0x805827e <I2C3_EV_IRQHandler+0x2> @ imm = #-0x2
 805827e: e7fe         	b	0x805827e <I2C3_EV_IRQHandler+0x2> @ imm = #-0x4

08058280 <I2C3_ER_IRQHandler>:
; DEFAULT_IRQ_HANDLER(I2C3_ER_IRQHandler)
 8058280: e7ff         	b	0x8058282 <I2C3_ER_IRQHandler+0x2> @ imm = #-0x2
 8058282: e7fe         	b	0x8058282 <I2C3_ER_IRQHandler+0x2> @ imm = #-0x4

08058284 <SAI1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(SAI1_IRQHandler)
 8058284: e7ff         	b	0x8058286 <SAI1_IRQHandler+0x2> @ imm = #-0x2
 8058286: e7fe         	b	0x8058286 <SAI1_IRQHandler+0x2> @ imm = #-0x4

08058288 <SAI2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(SAI2_IRQHandler)
 8058288: e7ff         	b	0x805828a <SAI2_IRQHandler+0x2> @ imm = #-0x2
 805828a: e7fe         	b	0x805828a <SAI2_IRQHandler+0x2> @ imm = #-0x4

0805828c <TSC_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TSC_IRQHandler)
 805828c: e7ff         	b	0x805828e <TSC_IRQHandler+0x2> @ imm = #-0x2
 805828e: e7fe         	b	0x805828e <TSC_IRQHandler+0x2> @ imm = #-0x4

08058290 <AES_IRQHandler>:
; DEFAULT_IRQ_HANDLER(AES_IRQHandler)
 8058290: e7ff         	b	0x8058292 <AES_IRQHandler+0x2> @ imm = #-0x2
 8058292: e7fe         	b	0x8058292 <AES_IRQHandler+0x2> @ imm = #-0x4

08058294 <RNG_IRQHandler>:
; DEFAULT_IRQ_HANDLER(RNG_IRQHandler)
 8058294: e7ff         	b	0x8058296 <RNG_IRQHandler+0x2> @ imm = #-0x2
 8058296: e7fe         	b	0x8058296 <RNG_IRQHandler+0x2> @ imm = #-0x4

08058298 <FPU_IRQHandler>:
; DEFAULT_IRQ_HANDLER(FPU_IRQHandler)
 8058298: e7ff         	b	0x805829a <FPU_IRQHandler+0x2> @ imm = #-0x2
 805829a: e7fe         	b	0x805829a <FPU_IRQHandler+0x2> @ imm = #-0x4

0805829c <HASH_IRQHandler>:
; DEFAULT_IRQ_HANDLER(HASH_IRQHandler)
 805829c: e7ff         	b	0x805829e <HASH_IRQHandler+0x2> @ imm = #-0x2
 805829e: e7fe         	b	0x805829e <HASH_IRQHandler+0x2> @ imm = #-0x4

080582a0 <PKA_IRQHandler>:
; DEFAULT_IRQ_HANDLER(PKA_IRQHandler)
 80582a0: e7ff         	b	0x80582a2 <PKA_IRQHandler+0x2> @ imm = #-0x2
 80582a2: e7fe         	b	0x80582a2 <PKA_IRQHandler+0x2> @ imm = #-0x4

080582a4 <LPTIM3_IRQHandler>:
; DEFAULT_IRQ_HANDLER(LPTIM3_IRQHandler)
 80582a4: e7ff         	b	0x80582a6 <LPTIM3_IRQHandler+0x2> @ imm = #-0x2
 80582a6: e7fe         	b	0x80582a6 <LPTIM3_IRQHandler+0x2> @ imm = #-0x4

080582a8 <SPI3_IRQHandler>:
; DEFAULT_IRQ_HANDLER(SPI3_IRQHandler)
 80582a8: e7ff         	b	0x80582aa <SPI3_IRQHandler+0x2> @ imm = #-0x2
 80582aa: e7fe         	b	0x80582aa <SPI3_IRQHandler+0x2> @ imm = #-0x4

080582ac <I2C4_ER_IRQHandler>:
; DEFAULT_IRQ_HANDLER(I2C4_ER_IRQHandler)
 80582ac: e7ff         	b	0x80582ae <I2C4_ER_IRQHandler+0x2> @ imm = #-0x2
 80582ae: e7fe         	b	0x80582ae <I2C4_ER_IRQHandler+0x2> @ imm = #-0x4

080582b0 <I2C4_EV_IRQHandler>:
; DEFAULT_IRQ_HANDLER(I2C4_EV_IRQHandler)
 80582b0: e7ff         	b	0x80582b2 <I2C4_EV_IRQHandler+0x2> @ imm = #-0x2
 80582b2: e7fe         	b	0x80582b2 <I2C4_EV_IRQHandler+0x2> @ imm = #-0x4

080582b4 <DFSDM1_FLT0_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DFSDM1_FLT0_IRQHandler)
 80582b4: e7ff         	b	0x80582b6 <DFSDM1_FLT0_IRQHandler+0x2> @ imm = #-0x2
 80582b6: e7fe         	b	0x80582b6 <DFSDM1_FLT0_IRQHandler+0x2> @ imm = #-0x4

080582b8 <DFSDM1_FLT1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DFSDM1_FLT1_IRQHandler)
 80582b8: e7ff         	b	0x80582ba <DFSDM1_FLT1_IRQHandler+0x2> @ imm = #-0x2
 80582ba: e7fe         	b	0x80582ba <DFSDM1_FLT1_IRQHandler+0x2> @ imm = #-0x4

080582bc <DFSDM1_FLT2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DFSDM1_FLT2_IRQHandler)
 80582bc: e7ff         	b	0x80582be <DFSDM1_FLT2_IRQHandler+0x2> @ imm = #-0x2
 80582be: e7fe         	b	0x80582be <DFSDM1_FLT2_IRQHandler+0x2> @ imm = #-0x4

080582c0 <DFSDM1_FLT3_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DFSDM1_FLT3_IRQHandler)
 80582c0: e7ff         	b	0x80582c2 <DFSDM1_FLT3_IRQHandler+0x2> @ imm = #-0x2
 80582c2: e7fe         	b	0x80582c2 <DFSDM1_FLT3_IRQHandler+0x2> @ imm = #-0x4

080582c4 <UCPD1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(UCPD1_IRQHandler)
 80582c4: e7ff         	b	0x80582c6 <UCPD1_IRQHandler+0x2> @ imm = #-0x2
 80582c6: e7fe         	b	0x80582c6 <UCPD1_IRQHandler+0x2> @ imm = #-0x4

080582c8 <ICACHE_IRQHandler>:
; DEFAULT_IRQ_HANDLER(ICACHE_IRQHandler)
 80582c8: e7ff         	b	0x80582ca <ICACHE_IRQHandler+0x2> @ imm = #-0x2
 80582ca: e7fe         	b	0x80582ca <ICACHE_IRQHandler+0x2> @ imm = #-0x4

080582cc <OTFDEC1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(OTFDEC1_IRQHandler)
 80582cc: e7ff         	b	0x80582ce <OTFDEC1_IRQHandler+0x2> @ imm = #-0x2
 80582ce: e7fe         	b	0x80582ce <OTFDEC1_IRQHandler+0x2> @ imm = #-0x4

080582d0 <sum>:
; int sum(int a, int b) { return a + b; }
 80582d0: b082         	sub	sp, #0x8
 80582d2: 9001         	str	r0, [sp, #0x4]
 80582d4: 9100         	str	r1, [sp]
 80582d6: 9801         	ldr	r0, [sp, #0x4]
 80582d8: 9900         	ldr	r1, [sp]
 80582da: 4408         	add	r0, r1
 80582dc: b002         	add	sp, #0x8
 80582de: 4770         	bx	lr

080582e0 <testThread>:
; void testThread(void *pvParameters) {
 80582e0: b580         	push	{r7, lr}
 80582e2: 466f         	mov	r7, sp
 80582e4: b084         	sub	sp, #0x10
 80582e6: 9003         	str	r0, [sp, #0xc]
;   while (1) {
 80582e8: e7ff         	b	0x80582ea <testThread+0xa> @ imm = #-0x2
;     HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_3);
 80582ea: f7ff fdb9    	bl	0x8057e60 <HAL_GPIO_TogglePin> @ imm = #-0x48e
 80582ee: 2002         	movs	r0, #0x2
;     int a = 2;
 80582f0: 9002         	str	r0, [sp, #0x8]
 80582f2: 2003         	movs	r0, #0x3
;     int b = 3;
 80582f4: 9001         	str	r0, [sp, #0x4]
;     int c = sum(a, b);
 80582f6: 9802         	ldr	r0, [sp, #0x8]
 80582f8: 9901         	ldr	r1, [sp, #0x4]
 80582fa: f7ff ffe9    	bl	0x80582d0 <sum>         @ imm = #-0x2e
 80582fe: 9000         	str	r0, [sp]
;     vTaskDelay(500);
 8058300: f44f 70fa    	mov.w	r0, #0x1f4
 8058304: f7fd fa74    	bl	0x80557f0 <vTaskDelay>  @ imm = #-0x2b18
;   while (1) {
 8058308: e7ef         	b	0x80582ea <testThread+0xa> @ imm = #-0x22
 805830a: d4d4         	bmi	0x80582b6 <DFSDM1_FLT0_IRQHandler+0x2> @ imm = #-0x58

0805830c <main>:
; int main() {
 805830c: b580         	push	{r7, lr}
 805830e: 466f         	mov	r7, sp
 8058310: b084         	sub	sp, #0x10
 8058312: 2400         	movs	r4, #0x0
 8058314: 9403         	str	r4, [sp, #0xc]
;   HAL_Init();
 8058316: f7ff fad3    	bl	0x80578c0 <HAL_Init>    @ imm = #-0xa5a
;   MX_GPIO_Init();
 805831a: f000 f815    	bl	0x8058348 <MX_GPIO_Init> @ imm = #0x2a
;   xTaskCreate(testThread, "testThread", 256, NULL, 1, NULL);
 805831e: 9401         	str	r4, [sp, #0x4]
 8058320: 2001         	movs	r0, #0x1
 8058322: 9000         	str	r0, [sp]
 8058324: f248 20e1    	movw	r0, #0x82e1
 8058328: f6c0 0005    	movt	r0, #0x805
 805832c: f248 319d    	movw	r1, #0x839d
 8058330: f6c0 0105    	movt	r1, #0x805
 8058334: f44f 7280    	mov.w	r2, #0x100
 8058338: 2300         	movs	r3, #0x0
 805833a: f7fc ff5b    	bl	0x80551f4 <xTaskCreate> @ imm = #-0x314a
;   vTaskStartScheduler();
 805833e: f7fd fae1    	bl	0x8055904 <vTaskStartScheduler> @ imm = #-0x2a3e
;   for (;;)
 8058342: e7ff         	b	0x8058344 <main+0x38>   @ imm = #-0x2
 8058344: e7fe         	b	0x8058344 <main+0x38>   @ imm = #-0x4
 8058346: d4d4         	bmi	0x80582f2 <testThread+0x12> @ imm = #-0x58

08058348 <MX_GPIO_Init>:
; static void MX_GPIO_Init(void) {
 8058348: b580         	push	{r7, lr}
 805834a: 466f         	mov	r7, sp
 805834c: b086         	sub	sp, #0x18
 805834e: 2000         	movs	r0, #0x0
;   GPIO_InitTypeDef GPIO_InitStruct = {0};
 8058350: 9005         	str	r0, [sp, #0x14]
 8058352: 9004         	str	r0, [sp, #0x10]
 8058354: 9003         	str	r0, [sp, #0xc]
 8058356: 9002         	str	r0, [sp, #0x8]
 8058358: 9001         	str	r0, [sp, #0x4]
;   __HAL_RCC_GPIOD_CLK_ENABLE();
 805835a: e7ff         	b	0x805835c <MX_GPIO_Init+0x14> @ imm = #-0x2
 805835c: f241 004c    	movw	r0, #0x104c
 8058360: f2c4 0002    	movt	r0, #0x4002
;   __HAL_RCC_GPIOD_CLK_ENABLE();
 8058364: 6801         	ldr	r1, [r0]
 8058366: f041 0108    	orr	r1, r1, #0x8
 805836a: 6001         	str	r1, [r0]
 805836c: 6800         	ldr	r0, [r0]
 805836e: f000 0008    	and	r0, r0, #0x8
 8058372: 9000         	str	r0, [sp]
 8058374: 9800         	ldr	r0, [sp]
 8058376: e7ff         	b	0x8058378 <MX_GPIO_Init+0x30> @ imm = #-0x2
;   HAL_GPIO_WritePin(LED9_GPIO_Port, LED9_Pin, GPIO_PIN_SET);
 8058378: f7ff fd56    	bl	0x8057e28 <HAL_GPIO_WritePin> @ imm = #-0x554
 805837c: 2008         	movs	r0, #0x8
;   GPIO_InitStruct.Pin = LED9_Pin;
 805837e: 9001         	str	r0, [sp, #0x4]
 8058380: 2001         	movs	r0, #0x1
;   GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
 8058382: 9002         	str	r0, [sp, #0x8]
;   GPIO_InitStruct.Pull = GPIO_PULLUP;
 8058384: 9003         	str	r0, [sp, #0xc]
 8058386: 2003         	movs	r0, #0x3
;   GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
 8058388: 9004         	str	r0, [sp, #0x10]
 805838a: a801         	add	r0, sp, #0x4
;   HAL_GPIO_Init(LED9_GPIO_Port, &GPIO_InitStruct);
 805838c: f7ff fb9c    	bl	0x8057ac8 <HAL_GPIO_Init> @ imm = #-0x8c8
; }
 8058390: b006         	add	sp, #0x18
 8058392: bd80         	pop	{r7, pc}

08058394 <uxTopUsedPriority>:
 8058394: 0f 00 00 00 54 6d 72 51         ....TmrQ
 805839c: 00 74 65 73 74 54 68 72         .testThr
 80583a4: 65 61 64 00 49 44 4c 45         ead.IDLE
 80583ac: 00 54 6d 72 20 53 76 63         .Tmr Svc
 80583b4: 00 d4 d4 d4                     ....

080583b8 <MSIRangeTable>:
 80583b8: a0 86 01 00 40 0d 03 00         ....@...
 80583c0: 80 1a 06 00 00 35 0c 00         .....5..
 80583c8: 40 42 0f 00 80 84 1e 00         @B......
 80583d0: 00 09 3d 00 00 12 7a 00         ..=...z.
 80583d8: 00 24 f4 00 00 36 6e 01         .$...6n.
 80583e0: 00 48 e8 01 00 6c dc 02         .H...l..
 80583e8: 00 00 00 00 00 00 00 00         ........
 80583f0: 00 00 00 00 00 00 00 00         ........

080583f8 <AHBPrescTable>:
 80583f8: 00 00 00 00 00 00 00 00         ........
 8058400: 01 02 03 04 06 07 08 09         ........
