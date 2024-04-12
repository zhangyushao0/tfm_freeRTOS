
build/bin/ns_app.elf:	file format elf32-littlearm

Disassembly of section .text:

08055000 <.text>:
 8055000: 33a0         	adds	r3, #0xa0
 8055002: 2000         	movs	r0, #0x0
 8055004: 5ae9         	ldrh	r1, [r5, r3]
 8055006: 0805         	lsrs	r5, r0, #0x20
 8055008: 5bb7         	ldrh	r7, [r6, r6]
 805500a: 0805         	lsrs	r5, r0, #0x20
 805500c: 5bbb         	ldrh	r3, [r7, r6]
 805500e: 0805         	lsrs	r5, r0, #0x20
 8055010: 5bbf         	ldrh	r7, [r7, r6]
 8055012: 0805         	lsrs	r5, r0, #0x20
 8055014: 5bc3         	ldrh	r3, [r0, r7]
 8055016: 0805         	lsrs	r5, r0, #0x20
 8055018: 5bc7         	ldrh	r7, [r0, r7]
 805501a: 0805         	lsrs	r5, r0, #0x20
 805501c: 5bcb         	ldrh	r3, [r1, r7]
 805501e: 0805         	lsrs	r5, r0, #0x20
		...
 805502c: 8601         	strh	r1, [r0, #0x30]
 805502e: 0805         	lsrs	r5, r0, #0x20
 8055030: 5bcf         	ldrh	r7, [r1, r7]
 8055032: 0805         	lsrs	r5, r0, #0x20
 8055034: 0000         	movs	r0, r0
 8055036: 0000         	movs	r0, r0
 8055038: 85b1         	strh	r1, [r6, #0x2c]
 805503a: 0805         	lsrs	r5, r0, #0x20
 805503c: 7fff         	ldrb	r7, [r7, #0x1f]
 805503e: 0805         	lsrs	r5, r0, #0x20
 8055040: 5bd3         	ldrh	r3, [r2, r7]
 8055042: 0805         	lsrs	r5, r0, #0x20
 8055044: 5bd7         	ldrh	r7, [r2, r7]
 8055046: 0805         	lsrs	r5, r0, #0x20
 8055048: 5bdb         	ldrh	r3, [r3, r7]
 805504a: 0805         	lsrs	r5, r0, #0x20
 805504c: 5bdf         	ldrh	r7, [r3, r7]
 805504e: 0805         	lsrs	r5, r0, #0x20
 8055050: 5be3         	ldrh	r3, [r4, r7]
 8055052: 0805         	lsrs	r5, r0, #0x20
 8055054: 5be7         	ldrh	r7, [r4, r7]
 8055056: 0805         	lsrs	r5, r0, #0x20
 8055058: 5beb         	ldrh	r3, [r5, r7]
 805505a: 0805         	lsrs	r5, r0, #0x20
 805505c: 5bef         	ldrh	r7, [r5, r7]
 805505e: 0805         	lsrs	r5, r0, #0x20
 8055060: 5bf3         	ldrh	r3, [r6, r7]
 8055062: 0805         	lsrs	r5, r0, #0x20
 8055064: 5bf7         	ldrh	r7, [r6, r7]
 8055066: 0805         	lsrs	r5, r0, #0x20
 8055068: 5bfb         	ldrh	r3, [r7, r7]
 805506a: 0805         	lsrs	r5, r0, #0x20
 805506c: 5bff         	ldrh	r7, [r7, r7]
 805506e: 0805         	lsrs	r5, r0, #0x20
 8055070: 5c03         	ldrb	r3, [r0, r0]
 8055072: 0805         	lsrs	r5, r0, #0x20
 8055074: 5c07         	ldrb	r7, [r0, r0]
 8055076: 0805         	lsrs	r5, r0, #0x20
 8055078: 5c0b         	ldrb	r3, [r1, r0]
 805507a: 0805         	lsrs	r5, r0, #0x20
 805507c: 5c0f         	ldrb	r7, [r1, r0]
 805507e: 0805         	lsrs	r5, r0, #0x20
 8055080: 5c13         	ldrb	r3, [r2, r0]
 8055082: 0805         	lsrs	r5, r0, #0x20
 8055084: 5c17         	ldrb	r7, [r2, r0]
 8055086: 0805         	lsrs	r5, r0, #0x20
 8055088: 5c1b         	ldrb	r3, [r3, r0]
 805508a: 0805         	lsrs	r5, r0, #0x20
 805508c: 5c1f         	ldrb	r7, [r3, r0]
 805508e: 0805         	lsrs	r5, r0, #0x20
 8055090: 5c23         	ldrb	r3, [r4, r0]
 8055092: 0805         	lsrs	r5, r0, #0x20
 8055094: 5c27         	ldrb	r7, [r4, r0]
 8055096: 0805         	lsrs	r5, r0, #0x20
 8055098: 5c2b         	ldrb	r3, [r5, r0]
 805509a: 0805         	lsrs	r5, r0, #0x20
 805509c: 5c2f         	ldrb	r7, [r5, r0]
 805509e: 0805         	lsrs	r5, r0, #0x20
 80550a0: 5c33         	ldrb	r3, [r6, r0]
 80550a2: 0805         	lsrs	r5, r0, #0x20
 80550a4: 5c37         	ldrb	r7, [r6, r0]
 80550a6: 0805         	lsrs	r5, r0, #0x20
 80550a8: 5c3b         	ldrb	r3, [r7, r0]
 80550aa: 0805         	lsrs	r5, r0, #0x20
 80550ac: 5c3f         	ldrb	r7, [r7, r0]
 80550ae: 0805         	lsrs	r5, r0, #0x20
 80550b0: 5c43         	ldrb	r3, [r0, r1]
 80550b2: 0805         	lsrs	r5, r0, #0x20
 80550b4: 5c47         	ldrb	r7, [r0, r1]
 80550b6: 0805         	lsrs	r5, r0, #0x20
 80550b8: 5c4b         	ldrb	r3, [r1, r1]
 80550ba: 0805         	lsrs	r5, r0, #0x20
 80550bc: 5c4f         	ldrb	r7, [r1, r1]
 80550be: 0805         	lsrs	r5, r0, #0x20
 80550c0: 5c53         	ldrb	r3, [r2, r1]
 80550c2: 0805         	lsrs	r5, r0, #0x20
 80550c4: 5c57         	ldrb	r7, [r2, r1]
 80550c6: 0805         	lsrs	r5, r0, #0x20
 80550c8: 5c5b         	ldrb	r3, [r3, r1]
 80550ca: 0805         	lsrs	r5, r0, #0x20
 80550cc: 5c5f         	ldrb	r7, [r3, r1]
 80550ce: 0805         	lsrs	r5, r0, #0x20
 80550d0: 5c63         	ldrb	r3, [r4, r1]
 80550d2: 0805         	lsrs	r5, r0, #0x20
 80550d4: 5c67         	ldrb	r7, [r4, r1]
 80550d6: 0805         	lsrs	r5, r0, #0x20
 80550d8: 5c6b         	ldrb	r3, [r5, r1]
 80550da: 0805         	lsrs	r5, r0, #0x20
 80550dc: 5c6f         	ldrb	r7, [r5, r1]
 80550de: 0805         	lsrs	r5, r0, #0x20
 80550e0: 5c73         	ldrb	r3, [r6, r1]
 80550e2: 0805         	lsrs	r5, r0, #0x20
 80550e4: 5c77         	ldrb	r7, [r6, r1]
 80550e6: 0805         	lsrs	r5, r0, #0x20
 80550e8: 5c7b         	ldrb	r3, [r7, r1]
 80550ea: 0805         	lsrs	r5, r0, #0x20
 80550ec: 5c7f         	ldrb	r7, [r7, r1]
 80550ee: 0805         	lsrs	r5, r0, #0x20
 80550f0: 5c83         	ldrb	r3, [r0, r2]
 80550f2: 0805         	lsrs	r5, r0, #0x20
 80550f4: 5c87         	ldrb	r7, [r0, r2]
 80550f6: 0805         	lsrs	r5, r0, #0x20
 80550f8: 5c8b         	ldrb	r3, [r1, r2]
 80550fa: 0805         	lsrs	r5, r0, #0x20
 80550fc: 5c8f         	ldrb	r7, [r1, r2]
 80550fe: 0805         	lsrs	r5, r0, #0x20
 8055100: 5c93         	ldrb	r3, [r2, r2]
 8055102: 0805         	lsrs	r5, r0, #0x20
 8055104: 5c97         	ldrb	r7, [r2, r2]
 8055106: 0805         	lsrs	r5, r0, #0x20
 8055108: 5c9b         	ldrb	r3, [r3, r2]
 805510a: 0805         	lsrs	r5, r0, #0x20
 805510c: 5c9f         	ldrb	r7, [r3, r2]
 805510e: 0805         	lsrs	r5, r0, #0x20
 8055110: 5ca3         	ldrb	r3, [r4, r2]
 8055112: 0805         	lsrs	r5, r0, #0x20
 8055114: 5ca7         	ldrb	r7, [r4, r2]
 8055116: 0805         	lsrs	r5, r0, #0x20
 8055118: 5cab         	ldrb	r3, [r5, r2]
 805511a: 0805         	lsrs	r5, r0, #0x20
 805511c: 5caf         	ldrb	r7, [r5, r2]
 805511e: 0805         	lsrs	r5, r0, #0x20
 8055120: 5cb3         	ldrb	r3, [r6, r2]
 8055122: 0805         	lsrs	r5, r0, #0x20
 8055124: 5cb7         	ldrb	r7, [r6, r2]
 8055126: 0805         	lsrs	r5, r0, #0x20
 8055128: 5cbb         	ldrb	r3, [r7, r2]
 805512a: 0805         	lsrs	r5, r0, #0x20
 805512c: 5cbf         	ldrb	r7, [r7, r2]
 805512e: 0805         	lsrs	r5, r0, #0x20
 8055130: 5cc3         	ldrb	r3, [r0, r3]
 8055132: 0805         	lsrs	r5, r0, #0x20
 8055134: 5cc7         	ldrb	r7, [r0, r3]
 8055136: 0805         	lsrs	r5, r0, #0x20
 8055138: 5ccb         	ldrb	r3, [r1, r3]
 805513a: 0805         	lsrs	r5, r0, #0x20
 805513c: 5ccf         	ldrb	r7, [r1, r3]
 805513e: 0805         	lsrs	r5, r0, #0x20
 8055140: 5cd3         	ldrb	r3, [r2, r3]
 8055142: 0805         	lsrs	r5, r0, #0x20
 8055144: 5cd7         	ldrb	r7, [r2, r3]
 8055146: 0805         	lsrs	r5, r0, #0x20
 8055148: 5cdb         	ldrb	r3, [r3, r3]
 805514a: 0805         	lsrs	r5, r0, #0x20
 805514c: 5cdf         	ldrb	r7, [r3, r3]
 805514e: 0805         	lsrs	r5, r0, #0x20
 8055150: 5ce3         	ldrb	r3, [r4, r3]
 8055152: 0805         	lsrs	r5, r0, #0x20
 8055154: 5ce7         	ldrb	r7, [r4, r3]
 8055156: 0805         	lsrs	r5, r0, #0x20
 8055158: 5ceb         	ldrb	r3, [r5, r3]
 805515a: 0805         	lsrs	r5, r0, #0x20
 805515c: 5cef         	ldrb	r7, [r5, r3]
 805515e: 0805         	lsrs	r5, r0, #0x20
 8055160: 5cf3         	ldrb	r3, [r6, r3]
 8055162: 0805         	lsrs	r5, r0, #0x20
 8055164: 5cf7         	ldrb	r7, [r6, r3]
 8055166: 0805         	lsrs	r5, r0, #0x20
 8055168: 5cfb         	ldrb	r3, [r7, r3]
 805516a: 0805         	lsrs	r5, r0, #0x20
 805516c: 5cff         	ldrb	r7, [r7, r3]
 805516e: 0805         	lsrs	r5, r0, #0x20
 8055170: 5d03         	ldrb	r3, [r0, r4]
 8055172: 0805         	lsrs	r5, r0, #0x20
 8055174: 0000         	movs	r0, r0
 8055176: 0000         	movs	r0, r0
 8055178: 5d07         	ldrb	r7, [r0, r4]
 805517a: 0805         	lsrs	r5, r0, #0x20
 805517c: 0000         	movs	r0, r0
 805517e: 0000         	movs	r0, r0
 8055180: 5d0b         	ldrb	r3, [r1, r4]
 8055182: 0805         	lsrs	r5, r0, #0x20
 8055184: 5d0f         	ldrb	r7, [r1, r4]
 8055186: 0805         	lsrs	r5, r0, #0x20
 8055188: 5d13         	ldrb	r3, [r2, r4]
 805518a: 0805         	lsrs	r5, r0, #0x20
 805518c: 5d17         	ldrb	r7, [r2, r4]
 805518e: 0805         	lsrs	r5, r0, #0x20
 8055190: 5d1b         	ldrb	r3, [r3, r4]
 8055192: 0805         	lsrs	r5, r0, #0x20
 8055194: 5d1f         	ldrb	r7, [r3, r4]
 8055196: 0805         	lsrs	r5, r0, #0x20
 8055198: 5d23         	ldrb	r3, [r4, r4]
 805519a: 0805         	lsrs	r5, r0, #0x20
 805519c: 5d27         	ldrb	r7, [r4, r4]
 805519e: 0805         	lsrs	r5, r0, #0x20
 80551a0: 5d2b         	ldrb	r3, [r5, r4]
 80551a2: 0805         	lsrs	r5, r0, #0x20
 80551a4: 5d2f         	ldrb	r7, [r5, r4]
 80551a6: 0805         	lsrs	r5, r0, #0x20
 80551a8: 5d33         	ldrb	r3, [r6, r4]
 80551aa: 0805         	lsrs	r5, r0, #0x20
 80551ac: 5d37         	ldrb	r7, [r6, r4]
 80551ae: 0805         	lsrs	r5, r0, #0x20
 80551b0: 5d3b         	ldrb	r3, [r7, r4]
 80551b2: 0805         	lsrs	r5, r0, #0x20
 80551b4: 5d3f         	ldrb	r7, [r7, r4]
 80551b6: 0805         	lsrs	r5, r0, #0x20
 80551b8: 5d43         	ldrb	r3, [r0, r5]
 80551ba: 0805         	lsrs	r5, r0, #0x20
 80551bc: 5d47         	ldrb	r7, [r0, r5]
 80551be: 0805         	lsrs	r5, r0, #0x20
 80551c0: 5d4b         	ldrb	r3, [r1, r5]
 80551c2: 0805         	lsrs	r5, r0, #0x20
 80551c4: 5d4f         	ldrb	r7, [r1, r5]
 80551c6: 0805         	lsrs	r5, r0, #0x20
 80551c8: 5d53         	ldrb	r3, [r2, r5]
 80551ca: 0805         	lsrs	r5, r0, #0x20
 80551cc: 5d57         	ldrb	r7, [r2, r5]
 80551ce: 0805         	lsrs	r5, r0, #0x20
 80551d0: 5d5b         	ldrb	r3, [r3, r5]
 80551d2: 0805         	lsrs	r5, r0, #0x20
 80551d4: 5d5f         	ldrb	r7, [r3, r5]
 80551d6: 0805         	lsrs	r5, r0, #0x20
 80551d8: 5d63         	ldrb	r3, [r4, r5]
 80551da: 0805         	lsrs	r5, r0, #0x20
 80551dc: 5d67         	ldrb	r7, [r4, r5]
 80551de: 0805         	lsrs	r5, r0, #0x20
 80551e0: 5d6b         	ldrb	r3, [r5, r5]
 80551e2: 0805         	lsrs	r5, r0, #0x20
 80551e4: 5d6f         	ldrb	r7, [r5, r5]
 80551e6: 0805         	lsrs	r5, r0, #0x20
 80551e8: 5d73         	ldrb	r3, [r6, r5]
 80551ea: 0805         	lsrs	r5, r0, #0x20
 80551ec: 5d77         	ldrb	r7, [r6, r5]
 80551ee: 0805         	lsrs	r5, r0, #0x20
 80551f0: 5d7b         	ldrb	r3, [r7, r5]
 80551f2: 0805         	lsrs	r5, r0, #0x20

080551f4 <memcpy>:
 80551f4: 4684         	mov	r12, r0
 80551f6: ea41 0300    	orr.w	r3, r1, r0
 80551fa: f013 0303    	ands	r3, r3, #0x3
 80551fe: d149         	bne	0x8055294 <memcpy+0xa0> @ imm = #0x92
 8055200: 3a40         	subs	r2, #0x40
 8055202: d323         	blo	0x805524c <memcpy+0x58> @ imm = #0x46
 8055204: 680b         	ldr	r3, [r1]
 8055206: 6003         	str	r3, [r0]
 8055208: 684b         	ldr	r3, [r1, #0x4]
 805520a: 6043         	str	r3, [r0, #0x4]
 805520c: 688b         	ldr	r3, [r1, #0x8]
 805520e: 6083         	str	r3, [r0, #0x8]
 8055210: 68cb         	ldr	r3, [r1, #0xc]
 8055212: 60c3         	str	r3, [r0, #0xc]
 8055214: 690b         	ldr	r3, [r1, #0x10]
 8055216: 6103         	str	r3, [r0, #0x10]
 8055218: 694b         	ldr	r3, [r1, #0x14]
 805521a: 6143         	str	r3, [r0, #0x14]
 805521c: 698b         	ldr	r3, [r1, #0x18]
 805521e: 6183         	str	r3, [r0, #0x18]
 8055220: 69cb         	ldr	r3, [r1, #0x1c]
 8055222: 61c3         	str	r3, [r0, #0x1c]
 8055224: 6a0b         	ldr	r3, [r1, #0x20]
 8055226: 6203         	str	r3, [r0, #0x20]
 8055228: 6a4b         	ldr	r3, [r1, #0x24]
 805522a: 6243         	str	r3, [r0, #0x24]
 805522c: 6a8b         	ldr	r3, [r1, #0x28]
 805522e: 6283         	str	r3, [r0, #0x28]
 8055230: 6acb         	ldr	r3, [r1, #0x2c]
 8055232: 62c3         	str	r3, [r0, #0x2c]
 8055234: 6b0b         	ldr	r3, [r1, #0x30]
 8055236: 6303         	str	r3, [r0, #0x30]
 8055238: 6b4b         	ldr	r3, [r1, #0x34]
 805523a: 6343         	str	r3, [r0, #0x34]
 805523c: 6b8b         	ldr	r3, [r1, #0x38]
 805523e: 6383         	str	r3, [r0, #0x38]
 8055240: 6bcb         	ldr	r3, [r1, #0x3c]
 8055242: 63c3         	str	r3, [r0, #0x3c]
 8055244: 3040         	adds	r0, #0x40
 8055246: 3140         	adds	r1, #0x40
 8055248: 3a40         	subs	r2, #0x40
 805524a: d2db         	bhs	0x8055204 <memcpy+0x10> @ imm = #-0x4a
 805524c: 3230         	adds	r2, #0x30
 805524e: d30b         	blo	0x8055268 <memcpy+0x74> @ imm = #0x16
 8055250: 680b         	ldr	r3, [r1]
 8055252: 6003         	str	r3, [r0]
 8055254: 684b         	ldr	r3, [r1, #0x4]
 8055256: 6043         	str	r3, [r0, #0x4]
 8055258: 688b         	ldr	r3, [r1, #0x8]
 805525a: 6083         	str	r3, [r0, #0x8]
 805525c: 68cb         	ldr	r3, [r1, #0xc]
 805525e: 60c3         	str	r3, [r0, #0xc]
 8055260: 3010         	adds	r0, #0x10
 8055262: 3110         	adds	r1, #0x10
 8055264: 3a10         	subs	r2, #0x10
 8055266: d2f3         	bhs	0x8055250 <memcpy+0x5c> @ imm = #-0x1a
 8055268: 320c         	adds	r2, #0xc
 805526a: d305         	blo	0x8055278 <memcpy+0x84> @ imm = #0xa
 805526c: f851 3b04    	ldr	r3, [r1], #4
 8055270: f840 3b04    	str	r3, [r0], #4
 8055274: 3a04         	subs	r2, #0x4
 8055276: d2f9         	bhs	0x805526c <memcpy+0x78> @ imm = #-0xe
 8055278: 3204         	adds	r2, #0x4
 805527a: d008         	beq	0x805528e <memcpy+0x9a> @ imm = #0x10
 805527c: 07d2         	lsls	r2, r2, #0x1f
 805527e: bf1c         	itt	ne
 8055280: f811 3b01    	ldrbne	r3, [r1], #1
 8055284: f800 3b01    	strbne	r3, [r0], #1
 8055288: d301         	blo	0x805528e <memcpy+0x9a> @ imm = #0x2
 805528a: 880b         	ldrh	r3, [r1]
 805528c: 8003         	strh	r3, [r0]
 805528e: 4660         	mov	r0, r12
 8055290: 4770         	bx	lr
 8055292: bf00         	nop
 8055294: 2a08         	cmp	r2, #0x8
 8055296: d313         	blo	0x80552c0 <memcpy+0xcc> @ imm = #0x26
 8055298: 078b         	lsls	r3, r1, #0x1e
 805529a: d0b1         	beq	0x8055200 <memcpy+0xc>  @ imm = #-0x9e
 805529c: f010 0303    	ands	r3, r0, #0x3
 80552a0: d0ae         	beq	0x8055200 <memcpy+0xc>  @ imm = #-0xa4
 80552a2: f1c3 0304    	rsb.w	r3, r3, #0x4
 80552a6: 1ad2         	subs	r2, r2, r3
 80552a8: 07db         	lsls	r3, r3, #0x1f
 80552aa: bf1c         	itt	ne
 80552ac: f811 3b01    	ldrbne	r3, [r1], #1
 80552b0: f800 3b01    	strbne	r3, [r0], #1
 80552b4: d3a4         	blo	0x8055200 <memcpy+0xc>  @ imm = #-0xb8
 80552b6: f831 3b02    	ldrh	r3, [r1], #2
 80552ba: f820 3b02    	strh	r3, [r0], #2
 80552be: e79f         	b	0x8055200 <memcpy+0xc>  @ imm = #-0xc2
 80552c0: 3a04         	subs	r2, #0x4
 80552c2: d3d9         	blo	0x8055278 <memcpy+0x84> @ imm = #-0x4e
 80552c4: 3a01         	subs	r2, #0x1
 80552c6: f811 3b01    	ldrb	r3, [r1], #1
 80552ca: f800 3b01    	strb	r3, [r0], #1
 80552ce: d2f9         	bhs	0x80552c4 <memcpy+0xd0> @ imm = #-0xe
 80552d0: 780b         	ldrb	r3, [r1]
 80552d2: 7003         	strb	r3, [r0]
 80552d4: 784b         	ldrb	r3, [r1, #0x1]
 80552d6: 7043         	strb	r3, [r0, #0x1]
 80552d8: 788b         	ldrb	r3, [r1, #0x2]
 80552da: 7083         	strb	r3, [r0, #0x2]
 80552dc: 4660         	mov	r0, r12
 80552de: 4770         	bx	lr

080552e0 <memset>:
 80552e0: b570         	push	{r4, r5, r6, lr}
 80552e2: 0786         	lsls	r6, r0, #0x1e
 80552e4: d048         	beq	0x8055378 <memset+0x98> @ imm = #0x90
 80552e6: 1e54         	subs	r4, r2, #0x1
 80552e8: 2a00         	cmp	r2, #0x0
 80552ea: d03f         	beq	0x805536c <memset+0x8c> @ imm = #0x7e
 80552ec: b2ca         	uxtb	r2, r1
 80552ee: 4603         	mov	r3, r0
 80552f0: e001         	b	0x80552f6 <memset+0x16> @ imm = #0x2
 80552f2: 3c01         	subs	r4, #0x1
 80552f4: d33a         	blo	0x805536c <memset+0x8c> @ imm = #0x74
 80552f6: f803 2b01    	strb	r2, [r3], #1
 80552fa: 079d         	lsls	r5, r3, #0x1e
 80552fc: d1f9         	bne	0x80552f2 <memset+0x12> @ imm = #-0xe
 80552fe: 2c03         	cmp	r4, #0x3
 8055300: d92d         	bls	0x805535e <memset+0x7e> @ imm = #0x5a
 8055302: b2cd         	uxtb	r5, r1
 8055304: 2c0f         	cmp	r4, #0xf
 8055306: ea45 2505    	orr.w	r5, r5, r5, lsl #8
 805530a: ea45 4505    	orr.w	r5, r5, r5, lsl #16
 805530e: d936         	bls	0x805537e <memset+0x9e> @ imm = #0x6c
 8055310: f1a4 0c10    	sub.w	r12, r4, #0x10
 8055314: f103 0e20    	add.w	lr, r3, #0x20
 8055318: f103 0210    	add.w	r2, r3, #0x10
 805531c: f02c 060f    	bic	r6, r12, #0xf
 8055320: ea4f 1c1c    	lsr.w	r12, r12, #0x4
 8055324: 44b6         	add	lr, r6
 8055326: e942 5504    	strd	r5, r5, [r2, #-16]
 805532a: e942 5502    	strd	r5, r5, [r2, #-8]
 805532e: 3210         	adds	r2, #0x10
 8055330: 4572         	cmp	r2, lr
 8055332: d1f8         	bne	0x8055326 <memset+0x46> @ imm = #-0x10
 8055334: f10c 0201    	add.w	r2, r12, #0x1
 8055338: f014 0f0c    	tst.w	r4, #0xc
 805533c: f004 0c0f    	and	r12, r4, #0xf
 8055340: eb03 1202    	add.w	r2, r3, r2, lsl #4
 8055344: d013         	beq	0x805536e <memset+0x8e> @ imm = #0x26
 8055346: f1ac 0304    	sub.w	r3, r12, #0x4
 805534a: f023 0303    	bic	r3, r3, #0x3
 805534e: 3304         	adds	r3, #0x4
 8055350: 4413         	add	r3, r2
 8055352: f842 5b04    	str	r5, [r2], #4
 8055356: 4293         	cmp	r3, r2
 8055358: d1fb         	bne	0x8055352 <memset+0x72> @ imm = #-0xa
 805535a: f00c 0403    	and	r4, r12, #0x3
 805535e: b12c         	cbz	r4, 0x805536c <memset+0x8c> @ imm = #0xa
 8055360: b2ca         	uxtb	r2, r1
 8055362: 441c         	add	r4, r3
 8055364: f803 2b01    	strb	r2, [r3], #1
 8055368: 429c         	cmp	r4, r3
 805536a: d1fb         	bne	0x8055364 <memset+0x84> @ imm = #-0xa
 805536c: bd70         	pop	{r4, r5, r6, pc}
 805536e: 4664         	mov	r4, r12
 8055370: 4613         	mov	r3, r2
 8055372: 2c00         	cmp	r4, #0x0
 8055374: d1f4         	bne	0x8055360 <memset+0x80> @ imm = #-0x18
 8055376: e7f9         	b	0x805536c <memset+0x8c> @ imm = #-0xe
 8055378: 4603         	mov	r3, r0
 805537a: 4614         	mov	r4, r2
 805537c: e7bf         	b	0x80552fe <memset+0x1e> @ imm = #-0x82
 805537e: 461a         	mov	r2, r3
 8055380: 46a4         	mov	r12, r4
 8055382: e7e0         	b	0x8055346 <memset+0x66> @ imm = #-0x40

08055384 <HAL_Init>:
; {
 8055384: b580         	push	{r7, lr}
 8055386: 466f         	mov	r7, sp
 8055388: b082         	sub	sp, #0x8
 805538a: 2000         	movs	r0, #0x0
;   HAL_StatusTypeDef  status = HAL_OK;
 805538c: f807 0c01    	strb	r0, [r7, #-1]
;   HAL_NVIC_SetPriorityGrouping(NVIC_PRIORITYGROUP_3);
 8055390: f000 fadc    	bl	0x805594c <HAL_NVIC_SetPriorityGrouping> @ imm = #0x5b8
;   SystemCoreClockUpdate();
 8055394: f000 f83e    	bl	0x8055414 <SystemCoreClockUpdate> @ imm = #0x7c
;   if (HAL_InitTick(TICK_INT_PRIORITY) != HAL_OK)
 8055398: f000 f80b    	bl	0x80553b2 <HAL_InitTick> @ imm = #0x16
 805539c: b120         	cbz	r0, 0x80553a8 <HAL_Init+0x24> @ imm = #0x8
 805539e: e7ff         	b	0x80553a0 <HAL_Init+0x1c> @ imm = #-0x2
 80553a0: 2001         	movs	r0, #0x1
;     status = HAL_ERROR;
 80553a2: f807 0c01    	strb	r0, [r7, #-1]
;   }
 80553a6: e002         	b	0x80553ae <HAL_Init+0x2a> @ imm = #0x4
;     HAL_MspInit();
 80553a8: f000 f832    	bl	0x8055410 <HAL_MspInit> @ imm = #0x64
 80553ac: e7ff         	b	0x80553ae <HAL_Init+0x2a> @ imm = #-0x2
;   return status;
 80553ae: b002         	add	sp, #0x8
 80553b0: bd80         	pop	{r7, pc}

080553b2 <HAL_InitTick>:
; {
 80553b2: b580         	push	{r7, lr}
 80553b4: 466f         	mov	r7, sp
 80553b6: b082         	sub	sp, #0x8
 80553b8: 2007         	movs	r0, #0x7
 80553ba: 9001         	str	r0, [sp, #0x4]
 80553bc: 2000         	movs	r0, #0x0
;   HAL_StatusTypeDef  status = HAL_OK;
 80553be: f807 0c05    	strb	r0, [r7, #-5]
 80553c2: e7ff         	b	0x80553c4 <HAL_InitTick+0x12> @ imm = #-0x2
;     if (HAL_SYSTICK_Config(SystemCoreClock / (1000U / (uint32_t)uwTickFreq)) == 0U)
 80553c4: f240 1000    	movw	r0, #0x100
 80553c8: f2c2 0000    	movt	r0, #0x2000
 80553cc: 6800         	ldr	r0, [r0]
 80553ce: f644 51d3    	movw	r1, #0x4dd3
 80553d2: f2c1 0162    	movt	r1, #0x1062
 80553d6: fba0 0101    	umull	r0, r1, r0, r1
 80553da: 0988         	lsrs	r0, r1, #0x6
 80553dc: f000 fb51    	bl	0x8055a82 <HAL_SYSTICK_Config> @ imm = #0x6a2
 80553e0: b968         	cbnz	r0, 0x80553fe <HAL_InitTick+0x4c> @ imm = #0x1a
 80553e2: e7ff         	b	0x80553e4 <HAL_InitTick+0x32> @ imm = #-0x2
;       if (TickPriority < (1UL << __NVIC_PRIO_BITS))
 80553e4: 9801         	ldr	r0, [sp, #0x4]
 80553e6: 2807         	cmp	r0, #0x7
 80553e8: d804         	bhi	0x80553f4 <HAL_InitTick+0x42> @ imm = #0x8
 80553ea: e7ff         	b	0x80553ec <HAL_InitTick+0x3a> @ imm = #-0x2
;         HAL_NVIC_SetPriority(SysTick_IRQn, TickPriority, 0U);
 80553ec: 9801         	ldr	r0, [sp, #0x4]
 80553ee: f000 fad5    	bl	0x805599c <HAL_NVIC_SetPriority> @ imm = #0x5aa
;       }
 80553f2: e003         	b	0x80553fc <HAL_InitTick+0x4a> @ imm = #0x6
 80553f4: 2001         	movs	r0, #0x1
;         status = HAL_ERROR;
 80553f6: f807 0c05    	strb	r0, [r7, #-5]
 80553fa: e7ff         	b	0x80553fc <HAL_InitTick+0x4a> @ imm = #-0x2
;     }
 80553fc: e003         	b	0x8055406 <HAL_InitTick+0x54> @ imm = #0x6
 80553fe: 2001         	movs	r0, #0x1
;       status = HAL_ERROR;
 8055400: f807 0c05    	strb	r0, [r7, #-5]
 8055404: e7ff         	b	0x8055406 <HAL_InitTick+0x54> @ imm = #-0x2
;   }
 8055406: e7ff         	b	0x8055408 <HAL_InitTick+0x56> @ imm = #-0x2
;   return status;
 8055408: f817 0c05    	ldrb	r0, [r7, #-5]
 805540c: b002         	add	sp, #0x8
 805540e: bd80         	pop	{r7, pc}

08055410 <HAL_MspInit>:
; }
 8055410: 4770         	bx	lr

08055412 <SystemInit>:
; }
 8055412: 4770         	bx	lr

08055414 <SystemCoreClockUpdate>:
; {
 8055414: b086         	sub	sp, #0x18
 8055416: f241 0000    	movw	r0, #0x1000
 805541a: f2c4 0002    	movt	r0, #0x4002
;   if((RCC->CR & RCC_CR_MSIRGSEL) == 0U)
 805541e: 6800         	ldr	r0, [r0]
 8055420: 0700         	lsls	r0, r0, #0x1c
 8055422: 2800         	cmp	r0, #0x0
 8055424: d409         	bmi	0x805543a <SystemCoreClockUpdate+0x26> @ imm = #0x12
 8055426: e7ff         	b	0x8055428 <SystemCoreClockUpdate+0x14> @ imm = #-0x2
 8055428: f241 0094    	movw	r0, #0x1094
 805542c: f2c4 0002    	movt	r0, #0x4002
;     msirange = (RCC->CSR & RCC_CSR_MSISRANGE) >> 8U;
 8055430: 6800         	ldr	r0, [r0]
 8055432: f3c0 2003    	ubfx	r0, r0, #0x8, #0x4
 8055436: 9004         	str	r0, [sp, #0x10]
;   }
 8055438: e008         	b	0x805544c <SystemCoreClockUpdate+0x38> @ imm = #0x10
 805543a: f241 0000    	movw	r0, #0x1000
 805543e: f2c4 0002    	movt	r0, #0x4002
;     msirange = (RCC->CR & RCC_CR_MSIRANGE) >> 4U;
 8055442: 6800         	ldr	r0, [r0]
 8055444: b2c0         	uxtb	r0, r0
 8055446: 0900         	lsrs	r0, r0, #0x4
 8055448: 9004         	str	r0, [sp, #0x10]
 805544a: e7ff         	b	0x805544c <SystemCoreClockUpdate+0x38> @ imm = #-0x2
;   msirange = MSIRangeTable[msirange];
 805544c: 9804         	ldr	r0, [sp, #0x10]
 805544e: f248 6120    	movw	r1, #0x8620
 8055452: f6c0 0105    	movt	r1, #0x805
 8055456: f851 0020    	ldr.w	r0, [r1, r0, lsl #2]
 805545a: 9004         	str	r0, [sp, #0x10]
 805545c: f241 0008    	movw	r0, #0x1008
 8055460: f2c4 0002    	movt	r0, #0x4002
;   switch (RCC->CFGR & RCC_CFGR_SWS)
 8055464: 6800         	ldr	r0, [r0]
 8055466: f000 000c    	and	r0, r0, #0xc
 805546a: b148         	cbz	r0, 0x8055480 <SystemCoreClockUpdate+0x6c> @ imm = #0x12
 805546c: e7ff         	b	0x805546e <SystemCoreClockUpdate+0x5a> @ imm = #-0x2
 805546e: 2804         	cmp	r0, #0x4
 8055470: d00d         	beq	0x805548e <SystemCoreClockUpdate+0x7a> @ imm = #0x1a
 8055472: e7ff         	b	0x8055474 <SystemCoreClockUpdate+0x60> @ imm = #-0x2
 8055474: 2808         	cmp	r0, #0x8
 8055476: d014         	beq	0x80554a2 <SystemCoreClockUpdate+0x8e> @ imm = #0x28
 8055478: e7ff         	b	0x805547a <SystemCoreClockUpdate+0x66> @ imm = #-0x2
 805547a: 280c         	cmp	r0, #0xc
 805547c: d01b         	beq	0x80554b6 <SystemCoreClockUpdate+0xa2> @ imm = #0x36
 805547e: e062         	b	0x8055546 <SystemCoreClockUpdate+0x132> @ imm = #0xc4
;       SystemCoreClock = msirange;
 8055480: 9804         	ldr	r0, [sp, #0x10]
 8055482: f240 1100    	movw	r1, #0x100
 8055486: f2c2 0100    	movt	r1, #0x2000
 805548a: 6008         	str	r0, [r1]
;       break;
 805548c: e062         	b	0x8055554 <SystemCoreClockUpdate+0x140> @ imm = #0xc4
;       SystemCoreClock = HSI_VALUE;
 805548e: f240 1000    	movw	r0, #0x100
 8055492: f2c2 0000    	movt	r0, #0x2000
 8055496: f242 4100    	movw	r1, #0x2400
 805549a: f2c0 01f4    	movt	r1, #0xf4
 805549e: 6001         	str	r1, [r0]
;       break;
 80554a0: e058         	b	0x8055554 <SystemCoreClockUpdate+0x140> @ imm = #0xb0
;       SystemCoreClock = HSE_VALUE;
 80554a2: f240 1000    	movw	r0, #0x100
 80554a6: f2c2 0000    	movt	r0, #0x2000
 80554aa: f242 4100    	movw	r1, #0x2400
 80554ae: f2c0 01f4    	movt	r1, #0xf4
 80554b2: 6001         	str	r1, [r0]
;       break;
 80554b4: e04e         	b	0x8055554 <SystemCoreClockUpdate+0x140> @ imm = #0x9c
 80554b6: f241 000c    	movw	r0, #0x100c
 80554ba: f2c4 0002    	movt	r0, #0x4002
;       pllsource = (RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC);
 80554be: 6801         	ldr	r1, [r0]
 80554c0: f001 0103    	and	r1, r1, #0x3
 80554c4: 9102         	str	r1, [sp, #0x8]
;       pllm = ((RCC->PLLCFGR & RCC_PLLCFGR_PLLM) >> 4U) + 1U ;
 80554c6: 6800         	ldr	r0, [r0]
 80554c8: b2c0         	uxtb	r0, r0
 80554ca: 2101         	movs	r1, #0x1
 80554cc: eb01 1010    	add.w	r0, r1, r0, lsr #4
 80554d0: 9001         	str	r0, [sp, #0x4]
;       switch (pllsource)
 80554d2: 9802         	ldr	r0, [sp, #0x8]
 80554d4: 2802         	cmp	r0, #0x2
 80554d6: d003         	beq	0x80554e0 <SystemCoreClockUpdate+0xcc> @ imm = #0x6
 80554d8: e7ff         	b	0x80554da <SystemCoreClockUpdate+0xc6> @ imm = #-0x2
 80554da: 2803         	cmp	r0, #0x3
 80554dc: d009         	beq	0x80554f2 <SystemCoreClockUpdate+0xde> @ imm = #0x12
 80554de: e011         	b	0x8055504 <SystemCoreClockUpdate+0xf0> @ imm = #0x22
;           pllvco = (HSI_VALUE / pllm);
 80554e0: 9801         	ldr	r0, [sp, #0x4]
 80554e2: f242 4100    	movw	r1, #0x2400
 80554e6: f2c0 01f4    	movt	r1, #0xf4
 80554ea: fbb1 f0f0    	udiv	r0, r1, r0
 80554ee: 9003         	str	r0, [sp, #0xc]
;           break;
 80554f0: e00e         	b	0x8055510 <SystemCoreClockUpdate+0xfc> @ imm = #0x1c
;           pllvco = (HSE_VALUE / pllm);
 80554f2: 9801         	ldr	r0, [sp, #0x4]
 80554f4: f242 4100    	movw	r1, #0x2400
 80554f8: f2c0 01f4    	movt	r1, #0xf4
 80554fc: fbb1 f0f0    	udiv	r0, r1, r0
 8055500: 9003         	str	r0, [sp, #0xc]
;           break;
 8055502: e005         	b	0x8055510 <SystemCoreClockUpdate+0xfc> @ imm = #0xa
;           pllvco = (msirange / pllm);
 8055504: 9804         	ldr	r0, [sp, #0x10]
 8055506: 9901         	ldr	r1, [sp, #0x4]
 8055508: fbb0 f0f1    	udiv	r0, r0, r1
 805550c: 9003         	str	r0, [sp, #0xc]
;           break;
 805550e: e7ff         	b	0x8055510 <SystemCoreClockUpdate+0xfc> @ imm = #-0x2
;       pllvco = pllvco * ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> 8U);
 8055510: 9803         	ldr	r0, [sp, #0xc]
 8055512: f241 010c    	movw	r1, #0x100c
 8055516: f2c4 0102    	movt	r1, #0x4002
 805551a: 680a         	ldr	r2, [r1]
 805551c: f3c2 2206    	ubfx	r2, r2, #0x8, #0x7
 8055520: 4350         	muls	r0, r2, r0
 8055522: 9003         	str	r0, [sp, #0xc]
;       pllr = (((RCC->PLLCFGR & RCC_PLLCFGR_PLLR) >> 25U) + 1U) * 2U;
 8055524: 6808         	ldr	r0, [r1]
 8055526: f000 60c0    	and	r0, r0, #0x6000000
 805552a: 2102         	movs	r1, #0x2
 805552c: eb01 6010    	add.w	r0, r1, r0, lsr #24
 8055530: 9000         	str	r0, [sp]
;       SystemCoreClock = pllvco/pllr;
 8055532: 9803         	ldr	r0, [sp, #0xc]
 8055534: 9900         	ldr	r1, [sp]
 8055536: fbb0 f0f1    	udiv	r0, r0, r1
 805553a: f240 1100    	movw	r1, #0x100
 805553e: f2c2 0100    	movt	r1, #0x2000
 8055542: 6008         	str	r0, [r1]
;       break;
 8055544: e006         	b	0x8055554 <SystemCoreClockUpdate+0x140> @ imm = #0xc
;       SystemCoreClock = msirange;
 8055546: 9804         	ldr	r0, [sp, #0x10]
 8055548: f240 1100    	movw	r1, #0x100
 805554c: f2c2 0100    	movt	r1, #0x2000
 8055550: 6008         	str	r0, [r1]
;       break;
 8055552: e7ff         	b	0x8055554 <SystemCoreClockUpdate+0x140> @ imm = #-0x2
 8055554: f241 0008    	movw	r0, #0x1008
 8055558: f2c4 0002    	movt	r0, #0x4002
;   tmp = AHBPrescTable[((RCC->CFGR & RCC_CFGR_HPRE) >> 4U)];
 805555c: 6800         	ldr	r0, [r0]
 805555e: b2c0         	uxtb	r0, r0
 8055560: 0900         	lsrs	r0, r0, #0x4
 8055562: f248 6160    	movw	r1, #0x8660
 8055566: f6c0 0105    	movt	r1, #0x805
 805556a: 5c08         	ldrb	r0, [r1, r0]
 805556c: 9005         	str	r0, [sp, #0x14]
;   SystemCoreClock >>= tmp;
 805556e: 9805         	ldr	r0, [sp, #0x14]
 8055570: f240 1100    	movw	r1, #0x100
 8055574: f2c2 0100    	movt	r1, #0x2000
 8055578: 680a         	ldr	r2, [r1]
 805557a: fa22 f000    	lsr.w	r0, r2, r0
 805557e: 6008         	str	r0, [r1]
; }
 8055580: b006         	add	sp, #0x18
 8055582: 4770         	bx	lr

08055584 <HAL_GPIO_Init>:
; void HAL_GPIO_Init(GPIO_TypeDef *GPIOx, GPIO_InitTypeDef *GPIO_Init) {
 8055584: b085         	sub	sp, #0x14
 8055586: f640 4100    	movw	r1, #0xc00
 805558a: f2c4 2102    	movt	r1, #0x4202
 805558e: 9104         	str	r1, [sp, #0x10]
 8055590: 9003         	str	r0, [sp, #0xc]
 8055592: 2000         	movs	r0, #0x0
;   uint32_t position = 0U;
 8055594: 9002         	str	r0, [sp, #0x8]
;   while (((GPIO_Init->Pin) >> position) != 0U) {
 8055596: e7ff         	b	0x8055598 <HAL_GPIO_Init+0x14> @ imm = #-0x2
 8055598: 9803         	ldr	r0, [sp, #0xc]
 805559a: 6800         	ldr	r0, [r0]
 805559c: 9902         	ldr	r1, [sp, #0x8]
 805559e: 40c8         	lsrs	r0, r1
 80555a0: 2800         	cmp	r0, #0x0
 80555a2: f000 819c    	beq.w	0x80558de <HAL_GPIO_Init+0x35a> @ imm = #0x338
 80555a6: e7ff         	b	0x80555a8 <HAL_GPIO_Init+0x24> @ imm = #-0x2
;     iocurrent = (GPIO_Init->Pin) & (1UL << position);
 80555a8: 9803         	ldr	r0, [sp, #0xc]
 80555aa: 6800         	ldr	r0, [r0]
 80555ac: 9902         	ldr	r1, [sp, #0x8]
 80555ae: 2201         	movs	r2, #0x1
 80555b0: fa02 f101    	lsl.w	r1, r2, r1
 80555b4: 4008         	ands	r0, r1
 80555b6: 9001         	str	r0, [sp, #0x4]
;     if (iocurrent != 0U) {
 80555b8: 9801         	ldr	r0, [sp, #0x4]
 80555ba: 2800         	cmp	r0, #0x0
 80555bc: f000 818b    	beq.w	0x80558d6 <HAL_GPIO_Init+0x352> @ imm = #0x316
 80555c0: e7ff         	b	0x80555c2 <HAL_GPIO_Init+0x3e> @ imm = #-0x2
;       if ((GPIO_Init->Mode == GPIO_MODE_OUTPUT_PP) ||
 80555c2: 9803         	ldr	r0, [sp, #0xc]
 80555c4: 6840         	ldr	r0, [r0, #0x4]
 80555c6: 2801         	cmp	r0, #0x1
 80555c8: d00f         	beq	0x80555ea <HAL_GPIO_Init+0x66> @ imm = #0x1e
 80555ca: e7ff         	b	0x80555cc <HAL_GPIO_Init+0x48> @ imm = #-0x2
;           (GPIO_Init->Mode == GPIO_MODE_AF_PP) ||
 80555cc: 9803         	ldr	r0, [sp, #0xc]
 80555ce: 6840         	ldr	r0, [r0, #0x4]
 80555d0: 2802         	cmp	r0, #0x2
 80555d2: d00a         	beq	0x80555ea <HAL_GPIO_Init+0x66> @ imm = #0x14
 80555d4: e7ff         	b	0x80555d6 <HAL_GPIO_Init+0x52> @ imm = #-0x2
;           (GPIO_Init->Mode == GPIO_MODE_OUTPUT_OD) ||
 80555d6: 9803         	ldr	r0, [sp, #0xc]
 80555d8: 6840         	ldr	r0, [r0, #0x4]
 80555da: 2811         	cmp	r0, #0x11
 80555dc: d005         	beq	0x80555ea <HAL_GPIO_Init+0x66> @ imm = #0xa
 80555de: e7ff         	b	0x80555e0 <HAL_GPIO_Init+0x5c> @ imm = #-0x2
;           (GPIO_Init->Mode == GPIO_MODE_AF_OD)) {
 80555e0: 9803         	ldr	r0, [sp, #0xc]
 80555e2: 6840         	ldr	r0, [r0, #0x4]
;       if ((GPIO_Init->Mode == GPIO_MODE_OUTPUT_PP) ||
 80555e4: 2812         	cmp	r0, #0x12
 80555e6: d12f         	bne	0x8055648 <HAL_GPIO_Init+0xc4> @ imm = #0x5e
 80555e8: e7ff         	b	0x80555ea <HAL_GPIO_Init+0x66> @ imm = #-0x2
;         temp = GPIOx->OSPEEDR;
 80555ea: 9804         	ldr	r0, [sp, #0x10]
 80555ec: 6880         	ldr	r0, [r0, #0x8]
 80555ee: 9000         	str	r0, [sp]
;         temp &= ~(GPIO_OSPEEDR_OSPEED0 << (position * 2U));
 80555f0: 9802         	ldr	r0, [sp, #0x8]
 80555f2: 0040         	lsls	r0, r0, #0x1
 80555f4: 2103         	movs	r1, #0x3
 80555f6: fa01 f000    	lsl.w	r0, r1, r0
 80555fa: 9900         	ldr	r1, [sp]
 80555fc: ea21 0000    	bic.w	r0, r1, r0
 8055600: 9000         	str	r0, [sp]
;         temp |= (GPIO_Init->Speed << (position * 2U));
 8055602: 9803         	ldr	r0, [sp, #0xc]
 8055604: 68c0         	ldr	r0, [r0, #0xc]
 8055606: 9902         	ldr	r1, [sp, #0x8]
 8055608: 0049         	lsls	r1, r1, #0x1
 805560a: 4088         	lsls	r0, r1
 805560c: 9900         	ldr	r1, [sp]
 805560e: 4308         	orrs	r0, r1
 8055610: 9000         	str	r0, [sp]
;         GPIOx->OSPEEDR = temp;
 8055612: 9800         	ldr	r0, [sp]
 8055614: 9904         	ldr	r1, [sp, #0x10]
 8055616: 6088         	str	r0, [r1, #0x8]
;         temp = GPIOx->OTYPER;
 8055618: 9804         	ldr	r0, [sp, #0x10]
 805561a: 6840         	ldr	r0, [r0, #0x4]
 805561c: 9000         	str	r0, [sp]
;         temp &= ~(GPIO_OTYPER_OT0 << position);
 805561e: 9802         	ldr	r0, [sp, #0x8]
 8055620: 2101         	movs	r1, #0x1
 8055622: fa01 f000    	lsl.w	r0, r1, r0
 8055626: 9900         	ldr	r1, [sp]
 8055628: ea21 0000    	bic.w	r0, r1, r0
 805562c: 9000         	str	r0, [sp]
;         temp |= (((GPIO_Init->Mode & GPIO_OUTPUT_TYPE) >> 4) << position);
 805562e: 9803         	ldr	r0, [sp, #0xc]
 8055630: 6840         	ldr	r0, [r0, #0x4]
 8055632: f3c0 1000    	ubfx	r0, r0, #0x4, #0x1
 8055636: 9902         	ldr	r1, [sp, #0x8]
 8055638: 4088         	lsls	r0, r1
 805563a: 9900         	ldr	r1, [sp]
 805563c: 4308         	orrs	r0, r1
 805563e: 9000         	str	r0, [sp]
;         GPIOx->OTYPER = temp;
 8055640: 9800         	ldr	r0, [sp]
 8055642: 9904         	ldr	r1, [sp, #0x10]
 8055644: 6048         	str	r0, [r1, #0x4]
;       }
 8055646: e7ff         	b	0x8055648 <HAL_GPIO_Init+0xc4> @ imm = #-0x2
;       temp = GPIOx->PUPDR;
 8055648: 9804         	ldr	r0, [sp, #0x10]
 805564a: 68c0         	ldr	r0, [r0, #0xc]
 805564c: 9000         	str	r0, [sp]
;       temp &= ~(GPIO_PUPDR_PUPD0 << (position * 2U));
 805564e: 9802         	ldr	r0, [sp, #0x8]
 8055650: 0040         	lsls	r0, r0, #0x1
 8055652: 2103         	movs	r1, #0x3
 8055654: fa01 f000    	lsl.w	r0, r1, r0
 8055658: 9900         	ldr	r1, [sp]
 805565a: ea21 0000    	bic.w	r0, r1, r0
 805565e: 9000         	str	r0, [sp]
;       temp |= ((GPIO_Init->Pull) << (position * 2U));
 8055660: 9803         	ldr	r0, [sp, #0xc]
 8055662: 6880         	ldr	r0, [r0, #0x8]
 8055664: 9902         	ldr	r1, [sp, #0x8]
 8055666: 0049         	lsls	r1, r1, #0x1
 8055668: 4088         	lsls	r0, r1
 805566a: 9900         	ldr	r1, [sp]
 805566c: 4308         	orrs	r0, r1
 805566e: 9000         	str	r0, [sp]
;       GPIOx->PUPDR = temp;
 8055670: 9800         	ldr	r0, [sp]
 8055672: 9904         	ldr	r1, [sp, #0x10]
 8055674: 60c8         	str	r0, [r1, #0xc]
;       if ((GPIO_Init->Mode == GPIO_MODE_AF_PP) ||
 8055676: 9803         	ldr	r0, [sp, #0xc]
 8055678: 6840         	ldr	r0, [r0, #0x4]
 805567a: 2802         	cmp	r0, #0x2
 805567c: d005         	beq	0x805568a <HAL_GPIO_Init+0x106> @ imm = #0xa
 805567e: e7ff         	b	0x8055680 <HAL_GPIO_Init+0xfc> @ imm = #-0x2
;           (GPIO_Init->Mode == GPIO_MODE_AF_OD)) {
 8055680: 9803         	ldr	r0, [sp, #0xc]
 8055682: 6840         	ldr	r0, [r0, #0x4]
;       if ((GPIO_Init->Mode == GPIO_MODE_AF_PP) ||
 8055684: 2812         	cmp	r0, #0x12
 8055686: d126         	bne	0x80556d6 <HAL_GPIO_Init+0x152> @ imm = #0x4c
 8055688: e7ff         	b	0x805568a <HAL_GPIO_Init+0x106> @ imm = #-0x2
;         temp = GPIOx->AFR[position >> 3U];
 805568a: 9804         	ldr	r0, [sp, #0x10]
 805568c: 9902         	ldr	r1, [sp, #0x8]
 805568e: f06f 0203    	mvn	r2, #0x3
 8055692: ea02 0151    	and.w	r1, r2, r1, lsr #1
 8055696: 4408         	add	r0, r1
 8055698: 6a00         	ldr	r0, [r0, #0x20]
 805569a: 9000         	str	r0, [sp]
;         temp &= ~(0x0FUL << ((position & 0x07U) * 4U));
 805569c: 9802         	ldr	r0, [sp, #0x8]
 805569e: f000 0007    	and	r0, r0, #0x7
 80556a2: 0080         	lsls	r0, r0, #0x2
 80556a4: 210f         	movs	r1, #0xf
 80556a6: fa01 f000    	lsl.w	r0, r1, r0
 80556aa: 9900         	ldr	r1, [sp]
 80556ac: ea21 0000    	bic.w	r0, r1, r0
 80556b0: 9000         	str	r0, [sp]
;         temp |= ((GPIO_Init->Alternate) << ((position & 0x07U) * 4U));
 80556b2: 9803         	ldr	r0, [sp, #0xc]
 80556b4: 6900         	ldr	r0, [r0, #0x10]
 80556b6: 9902         	ldr	r1, [sp, #0x8]
 80556b8: f001 0107    	and	r1, r1, #0x7
 80556bc: 0089         	lsls	r1, r1, #0x2
 80556be: 4088         	lsls	r0, r1
 80556c0: 9900         	ldr	r1, [sp]
 80556c2: 4308         	orrs	r0, r1
 80556c4: 9000         	str	r0, [sp]
;         GPIOx->AFR[position >> 3U] = temp;
 80556c6: 9800         	ldr	r0, [sp]
 80556c8: 9904         	ldr	r1, [sp, #0x10]
 80556ca: 9b02         	ldr	r3, [sp, #0x8]
 80556cc: ea02 0253    	and.w	r2, r2, r3, lsr #1
 80556d0: 4411         	add	r1, r2
 80556d2: 6208         	str	r0, [r1, #0x20]
;       }
 80556d4: e7ff         	b	0x80556d6 <HAL_GPIO_Init+0x152> @ imm = #-0x2
;       temp = GPIOx->MODER;
 80556d6: 9804         	ldr	r0, [sp, #0x10]
 80556d8: 6800         	ldr	r0, [r0]
 80556da: 9000         	str	r0, [sp]
;       temp &= ~(GPIO_MODER_MODE0 << (position * 2U));
 80556dc: 9802         	ldr	r0, [sp, #0x8]
 80556de: 0040         	lsls	r0, r0, #0x1
 80556e0: 2103         	movs	r1, #0x3
 80556e2: fa01 f000    	lsl.w	r0, r1, r0
 80556e6: 9900         	ldr	r1, [sp]
 80556e8: ea21 0000    	bic.w	r0, r1, r0
 80556ec: 9000         	str	r0, [sp]
;       temp |= ((GPIO_Init->Mode & GPIO_MODE) << (position * 2U));
 80556ee: 9803         	ldr	r0, [sp, #0xc]
 80556f0: 6840         	ldr	r0, [r0, #0x4]
 80556f2: f000 0003    	and	r0, r0, #0x3
 80556f6: 9902         	ldr	r1, [sp, #0x8]
 80556f8: 0049         	lsls	r1, r1, #0x1
 80556fa: 4088         	lsls	r0, r1
 80556fc: 9900         	ldr	r1, [sp]
 80556fe: 4308         	orrs	r0, r1
 8055700: 9000         	str	r0, [sp]
;       GPIOx->MODER = temp;
 8055702: 9800         	ldr	r0, [sp]
 8055704: 9904         	ldr	r1, [sp, #0x10]
 8055706: 6008         	str	r0, [r1]
;       if ((GPIO_Init->Mode & EXTI_MODE) == EXTI_MODE) {
 8055708: 9803         	ldr	r0, [sp, #0xc]
 805570a: 79c0         	ldrb	r0, [r0, #0x7]
 805570c: 06c0         	lsls	r0, r0, #0x1b
 805570e: 2800         	cmp	r0, #0x0
 8055710: f140 80e0    	bpl.w	0x80558d4 <HAL_GPIO_Init+0x350> @ imm = #0x1c0
 8055714: e7ff         	b	0x8055716 <HAL_GPIO_Init+0x192> @ imm = #-0x2
;         temp = EXTI->EXTICR[position >> 2U];
 8055716: 9802         	ldr	r0, [sp, #0x8]
 8055718: f020 0003    	bic	r0, r0, #0x3
 805571c: f24f 4160    	movw	r1, #0xf460
 8055720: f2c4 0102    	movt	r1, #0x4002
 8055724: 5840         	ldr	r0, [r0, r1]
 8055726: 9000         	str	r0, [sp]
;         temp &= ~((0x0FU) << (8U * (position & 0x03U)));
 8055728: 9802         	ldr	r0, [sp, #0x8]
 805572a: f000 0003    	and	r0, r0, #0x3
 805572e: 00c0         	lsls	r0, r0, #0x3
 8055730: 210f         	movs	r1, #0xf
 8055732: fa01 f000    	lsl.w	r0, r1, r0
 8055736: 9900         	ldr	r1, [sp]
 8055738: ea21 0000    	bic.w	r0, r1, r0
 805573c: 9000         	str	r0, [sp]
;         temp |= (GPIO_GET_INDEX(GPIOx) << (8U * (position & 0x03U)));
 805573e: 9804         	ldr	r0, [sp, #0x10]
 8055740: 2100         	movs	r1, #0x0
 8055742: f2c4 2102    	movt	r1, #0x4202
 8055746: 4288         	cmp	r0, r1
 8055748: d102         	bne	0x8055750 <HAL_GPIO_Init+0x1cc> @ imm = #0x4
 805574a: e7ff         	b	0x805574c <HAL_GPIO_Init+0x1c8> @ imm = #-0x2
 805574c: 2000         	movs	r0, #0x0
;         temp |= (GPIO_GET_INDEX(GPIOx) << (8U * (position & 0x03U)));
 805574e: e040         	b	0x80557d2 <HAL_GPIO_Init+0x24e> @ imm = #0x80
 8055750: 9804         	ldr	r0, [sp, #0x10]
 8055752: f240 4100    	movw	r1, #0x400
 8055756: f2c4 2102    	movt	r1, #0x4202
 805575a: 4288         	cmp	r0, r1
 805575c: d102         	bne	0x8055764 <HAL_GPIO_Init+0x1e0> @ imm = #0x4
 805575e: e7ff         	b	0x8055760 <HAL_GPIO_Init+0x1dc> @ imm = #-0x2
 8055760: 2001         	movs	r0, #0x1
;         temp |= (GPIO_GET_INDEX(GPIOx) << (8U * (position & 0x03U)));
 8055762: e035         	b	0x80557d0 <HAL_GPIO_Init+0x24c> @ imm = #0x6a
 8055764: 9804         	ldr	r0, [sp, #0x10]
 8055766: f640 0100    	movw	r1, #0x800
 805576a: f2c4 2102    	movt	r1, #0x4202
 805576e: 4288         	cmp	r0, r1
 8055770: d102         	bne	0x8055778 <HAL_GPIO_Init+0x1f4> @ imm = #0x4
 8055772: e7ff         	b	0x8055774 <HAL_GPIO_Init+0x1f0> @ imm = #-0x2
 8055774: 2002         	movs	r0, #0x2
;         temp |= (GPIO_GET_INDEX(GPIOx) << (8U * (position & 0x03U)));
 8055776: e02a         	b	0x80557ce <HAL_GPIO_Init+0x24a> @ imm = #0x54
 8055778: 9804         	ldr	r0, [sp, #0x10]
 805577a: f640 4100    	movw	r1, #0xc00
 805577e: f2c4 2102    	movt	r1, #0x4202
 8055782: 4288         	cmp	r0, r1
 8055784: d102         	bne	0x805578c <HAL_GPIO_Init+0x208> @ imm = #0x4
 8055786: e7ff         	b	0x8055788 <HAL_GPIO_Init+0x204> @ imm = #-0x2
 8055788: 2003         	movs	r0, #0x3
;         temp |= (GPIO_GET_INDEX(GPIOx) << (8U * (position & 0x03U)));
 805578a: e01f         	b	0x80557cc <HAL_GPIO_Init+0x248> @ imm = #0x3e
 805578c: 9804         	ldr	r0, [sp, #0x10]
 805578e: f241 0100    	movw	r1, #0x1000
 8055792: f2c4 2102    	movt	r1, #0x4202
 8055796: 4288         	cmp	r0, r1
 8055798: d102         	bne	0x80557a0 <HAL_GPIO_Init+0x21c> @ imm = #0x4
 805579a: e7ff         	b	0x805579c <HAL_GPIO_Init+0x218> @ imm = #-0x2
 805579c: 2004         	movs	r0, #0x4
;         temp |= (GPIO_GET_INDEX(GPIOx) << (8U * (position & 0x03U)));
 805579e: e014         	b	0x80557ca <HAL_GPIO_Init+0x246> @ imm = #0x28
 80557a0: 9804         	ldr	r0, [sp, #0x10]
 80557a2: f241 4100    	movw	r1, #0x1400
 80557a6: f2c4 2102    	movt	r1, #0x4202
 80557aa: 4288         	cmp	r0, r1
 80557ac: d102         	bne	0x80557b4 <HAL_GPIO_Init+0x230> @ imm = #0x4
 80557ae: e7ff         	b	0x80557b0 <HAL_GPIO_Init+0x22c> @ imm = #-0x2
 80557b0: 2005         	movs	r0, #0x5
;         temp |= (GPIO_GET_INDEX(GPIOx) << (8U * (position & 0x03U)));
 80557b2: e009         	b	0x80557c8 <HAL_GPIO_Init+0x244> @ imm = #0x12
 80557b4: 9904         	ldr	r1, [sp, #0x10]
 80557b6: f641 0200    	movw	r2, #0x1800
 80557ba: f2c4 2202    	movt	r2, #0x4202
 80557be: 2007         	movs	r0, #0x7
 80557c0: 4291         	cmp	r1, r2
 80557c2: bf08         	it	eq
 80557c4: 2006         	moveq	r0, #0x6
 80557c6: e7ff         	b	0x80557c8 <HAL_GPIO_Init+0x244> @ imm = #-0x2
 80557c8: e7ff         	b	0x80557ca <HAL_GPIO_Init+0x246> @ imm = #-0x2
 80557ca: e7ff         	b	0x80557cc <HAL_GPIO_Init+0x248> @ imm = #-0x2
 80557cc: e7ff         	b	0x80557ce <HAL_GPIO_Init+0x24a> @ imm = #-0x2
 80557ce: e7ff         	b	0x80557d0 <HAL_GPIO_Init+0x24c> @ imm = #-0x2
 80557d0: e7ff         	b	0x80557d2 <HAL_GPIO_Init+0x24e> @ imm = #-0x2
 80557d2: 9902         	ldr	r1, [sp, #0x8]
 80557d4: f001 0103    	and	r1, r1, #0x3
 80557d8: 00c9         	lsls	r1, r1, #0x3
 80557da: 4088         	lsls	r0, r1
 80557dc: 9900         	ldr	r1, [sp]
 80557de: 4308         	orrs	r0, r1
 80557e0: 9000         	str	r0, [sp]
;         EXTI->EXTICR[position >> 2U] = temp;
 80557e2: 9800         	ldr	r0, [sp]
 80557e4: 9902         	ldr	r1, [sp, #0x8]
 80557e6: f021 0103    	bic	r1, r1, #0x3
 80557ea: f24f 4260    	movw	r2, #0xf460
 80557ee: f2c4 0202    	movt	r2, #0x4002
 80557f2: 5088         	str	r0, [r1, r2]
 80557f4: f24f 4080    	movw	r0, #0xf480
 80557f8: f2c4 0002    	movt	r0, #0x4002
;         temp = EXTI->IMR1;
 80557fc: 6800         	ldr	r0, [r0]
 80557fe: 9000         	str	r0, [sp]
;         temp &= ~(iocurrent);
 8055800: 9801         	ldr	r0, [sp, #0x4]
 8055802: 9900         	ldr	r1, [sp]
 8055804: ea21 0000    	bic.w	r0, r1, r0
 8055808: 9000         	str	r0, [sp]
;         if ((GPIO_Init->Mode & GPIO_MODE_IT) == GPIO_MODE_IT) {
 805580a: 9803         	ldr	r0, [sp, #0xc]
 805580c: 7980         	ldrb	r0, [r0, #0x6]
 805580e: 07c0         	lsls	r0, r0, #0x1f
 8055810: b128         	cbz	r0, 0x805581e <HAL_GPIO_Init+0x29a> @ imm = #0xa
 8055812: e7ff         	b	0x8055814 <HAL_GPIO_Init+0x290> @ imm = #-0x2
;           temp |= iocurrent;
 8055814: 9801         	ldr	r0, [sp, #0x4]
 8055816: 9900         	ldr	r1, [sp]
 8055818: 4308         	orrs	r0, r1
 805581a: 9000         	str	r0, [sp]
;         }
 805581c: e7ff         	b	0x805581e <HAL_GPIO_Init+0x29a> @ imm = #-0x2
;         EXTI->IMR1 = temp;
 805581e: 9800         	ldr	r0, [sp]
 8055820: f24f 4180    	movw	r1, #0xf480
 8055824: f2c4 0102    	movt	r1, #0x4002
 8055828: 6008         	str	r0, [r1]
 805582a: f24f 4084    	movw	r0, #0xf484
 805582e: f2c4 0002    	movt	r0, #0x4002
;         temp = EXTI->EMR1;
 8055832: 6800         	ldr	r0, [r0]
 8055834: 9000         	str	r0, [sp]
;         temp &= ~(iocurrent);
 8055836: 9801         	ldr	r0, [sp, #0x4]
 8055838: 9900         	ldr	r1, [sp]
 805583a: ea21 0000    	bic.w	r0, r1, r0
 805583e: 9000         	str	r0, [sp]
;         if ((GPIO_Init->Mode & GPIO_MODE_EVT) == GPIO_MODE_EVT) {
 8055840: 9803         	ldr	r0, [sp, #0xc]
 8055842: 7980         	ldrb	r0, [r0, #0x6]
 8055844: 0780         	lsls	r0, r0, #0x1e
 8055846: 2800         	cmp	r0, #0x0
 8055848: d505         	bpl	0x8055856 <HAL_GPIO_Init+0x2d2> @ imm = #0xa
 805584a: e7ff         	b	0x805584c <HAL_GPIO_Init+0x2c8> @ imm = #-0x2
;           temp |= iocurrent;
 805584c: 9801         	ldr	r0, [sp, #0x4]
 805584e: 9900         	ldr	r1, [sp]
 8055850: 4308         	orrs	r0, r1
 8055852: 9000         	str	r0, [sp]
;         }
 8055854: e7ff         	b	0x8055856 <HAL_GPIO_Init+0x2d2> @ imm = #-0x2
;         EXTI->EMR1 = temp;
 8055856: 9800         	ldr	r0, [sp]
 8055858: f24f 4184    	movw	r1, #0xf484
 805585c: f2c4 0102    	movt	r1, #0x4002
 8055860: 6008         	str	r0, [r1]
 8055862: f24f 4000    	movw	r0, #0xf400
 8055866: f2c4 0002    	movt	r0, #0x4002
;         temp = EXTI->RTSR1;
 805586a: 6800         	ldr	r0, [r0]
 805586c: 9000         	str	r0, [sp]
;         temp &= ~(iocurrent);
 805586e: 9801         	ldr	r0, [sp, #0x4]
 8055870: 9900         	ldr	r1, [sp]
 8055872: ea21 0000    	bic.w	r0, r1, r0
 8055876: 9000         	str	r0, [sp]
;         if ((GPIO_Init->Mode & RISING_EDGE) == RISING_EDGE) {
 8055878: 9803         	ldr	r0, [sp, #0xc]
 805587a: 7980         	ldrb	r0, [r0, #0x6]
 805587c: 06c0         	lsls	r0, r0, #0x1b
 805587e: 2800         	cmp	r0, #0x0
 8055880: d505         	bpl	0x805588e <HAL_GPIO_Init+0x30a> @ imm = #0xa
 8055882: e7ff         	b	0x8055884 <HAL_GPIO_Init+0x300> @ imm = #-0x2
;           temp |= iocurrent;
 8055884: 9801         	ldr	r0, [sp, #0x4]
 8055886: 9900         	ldr	r1, [sp]
 8055888: 4308         	orrs	r0, r1
 805588a: 9000         	str	r0, [sp]
;         }
 805588c: e7ff         	b	0x805588e <HAL_GPIO_Init+0x30a> @ imm = #-0x2
;         EXTI->RTSR1 = temp;
 805588e: 9800         	ldr	r0, [sp]
 8055890: f24f 4100    	movw	r1, #0xf400
 8055894: f2c4 0102    	movt	r1, #0x4002
 8055898: 6008         	str	r0, [r1]
 805589a: f24f 4004    	movw	r0, #0xf404
 805589e: f2c4 0002    	movt	r0, #0x4002
;         temp = EXTI->FTSR1;
 80558a2: 6800         	ldr	r0, [r0]
 80558a4: 9000         	str	r0, [sp]
;         temp &= ~(iocurrent);
 80558a6: 9801         	ldr	r0, [sp, #0x4]
 80558a8: 9900         	ldr	r1, [sp]
 80558aa: ea21 0000    	bic.w	r0, r1, r0
 80558ae: 9000         	str	r0, [sp]
;         if ((GPIO_Init->Mode & FALLING_EDGE) == FALLING_EDGE) {
 80558b0: 9803         	ldr	r0, [sp, #0xc]
 80558b2: 7980         	ldrb	r0, [r0, #0x6]
 80558b4: 0680         	lsls	r0, r0, #0x1a
 80558b6: 2800         	cmp	r0, #0x0
 80558b8: d505         	bpl	0x80558c6 <HAL_GPIO_Init+0x342> @ imm = #0xa
 80558ba: e7ff         	b	0x80558bc <HAL_GPIO_Init+0x338> @ imm = #-0x2
;           temp |= iocurrent;
 80558bc: 9801         	ldr	r0, [sp, #0x4]
 80558be: 9900         	ldr	r1, [sp]
 80558c0: 4308         	orrs	r0, r1
 80558c2: 9000         	str	r0, [sp]
;         }
 80558c4: e7ff         	b	0x80558c6 <HAL_GPIO_Init+0x342> @ imm = #-0x2
;         EXTI->FTSR1 = temp;
 80558c6: 9800         	ldr	r0, [sp]
 80558c8: f24f 4104    	movw	r1, #0xf404
 80558cc: f2c4 0102    	movt	r1, #0x4002
 80558d0: 6008         	str	r0, [r1]
;       }
 80558d2: e7ff         	b	0x80558d4 <HAL_GPIO_Init+0x350> @ imm = #-0x2
;     }
 80558d4: e7ff         	b	0x80558d6 <HAL_GPIO_Init+0x352> @ imm = #-0x2
;     position++;
 80558d6: 9802         	ldr	r0, [sp, #0x8]
 80558d8: 3001         	adds	r0, #0x1
 80558da: 9002         	str	r0, [sp, #0x8]
;   while (((GPIO_Init->Pin) >> position) != 0U) {
 80558dc: e65c         	b	0x8055598 <HAL_GPIO_Init+0x14> @ imm = #-0x348
; }
 80558de: b005         	add	sp, #0x14
 80558e0: 4770         	bx	lr

080558e2 <HAL_GPIO_WritePin>:
;                        GPIO_PinState PinState) {
 80558e2: b082         	sub	sp, #0x8
 80558e4: f640 4000    	movw	r0, #0xc00
 80558e8: f2c4 2002    	movt	r0, #0x4202
 80558ec: 9001         	str	r0, [sp, #0x4]
 80558ee: 2008         	movs	r0, #0x8
 80558f0: f8ad 0002    	strh.w	r0, [sp, #0x2]
 80558f4: 2001         	movs	r0, #0x1
 80558f6: f88d 0001    	strb.w	r0, [sp, #0x1]
;   if (PinState != GPIO_PIN_RESET) {
 80558fa: f89d 0001    	ldrb.w	r0, [sp, #0x1]
 80558fe: b128         	cbz	r0, 0x805590c <HAL_GPIO_WritePin+0x2a> @ imm = #0xa
 8055900: e7ff         	b	0x8055902 <HAL_GPIO_WritePin+0x20> @ imm = #-0x2
;     GPIOx->BSRR = (uint32_t)GPIO_Pin;
 8055902: f8bd 0002    	ldrh.w	r0, [sp, #0x2]
 8055906: 9901         	ldr	r1, [sp, #0x4]
 8055908: 6188         	str	r0, [r1, #0x18]
;   } else {
 805590a: e004         	b	0x8055916 <HAL_GPIO_WritePin+0x34> @ imm = #0x8
;     GPIOx->BRR = (uint32_t)GPIO_Pin;
 805590c: f8bd 0002    	ldrh.w	r0, [sp, #0x2]
 8055910: 9901         	ldr	r1, [sp, #0x4]
 8055912: 6288         	str	r0, [r1, #0x28]
 8055914: e7ff         	b	0x8055916 <HAL_GPIO_WritePin+0x34> @ imm = #-0x2
; }
 8055916: b002         	add	sp, #0x8
 8055918: 4770         	bx	lr

0805591a <HAL_GPIO_TogglePin>:
; void HAL_GPIO_TogglePin(GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin) {
 805591a: b083         	sub	sp, #0xc
 805591c: f640 4000    	movw	r0, #0xc00
 8055920: f2c4 2002    	movt	r0, #0x4202
 8055924: 9002         	str	r0, [sp, #0x8]
 8055926: 2008         	movs	r0, #0x8
 8055928: f8ad 0006    	strh.w	r0, [sp, #0x6]
;   odr = GPIOx->ODR;
 805592c: 9802         	ldr	r0, [sp, #0x8]
 805592e: 6940         	ldr	r0, [r0, #0x14]
 8055930: 9000         	str	r0, [sp]
;   GPIOx->BSRR = ((odr & GPIO_Pin) << GPIO_NUMBER) | (~odr & GPIO_Pin);
 8055932: 9800         	ldr	r0, [sp]
 8055934: f8bd 1006    	ldrh.w	r1, [sp, #0x6]
 8055938: ea00 0201    	and.w	r2, r0, r1
 805593c: ea21 0000    	bic.w	r0, r1, r0
 8055940: ea40 4002    	orr.w	r0, r0, r2, lsl #16
 8055944: 9902         	ldr	r1, [sp, #0x8]
 8055946: 6188         	str	r0, [r1, #0x18]
; }
 8055948: b003         	add	sp, #0xc
 805594a: 4770         	bx	lr

0805594c <HAL_NVIC_SetPriorityGrouping>:
; {
 805594c: b580         	push	{r7, lr}
 805594e: 466f         	mov	r7, sp
 8055950: b082         	sub	sp, #0x8
 8055952: 2004         	movs	r0, #0x4
 8055954: 9001         	str	r0, [sp, #0x4]
;   NVIC_SetPriorityGrouping(PriorityGroup);
 8055956: 9801         	ldr	r0, [sp, #0x4]
 8055958: f000 f802    	bl	0x8055960 <__NVIC_SetPriorityGrouping> @ imm = #0x4
; }
 805595c: b002         	add	sp, #0x8
 805595e: bd80         	pop	{r7, pc}

08055960 <__NVIC_SetPriorityGrouping>:
; {
 8055960: b083         	sub	sp, #0xc
 8055962: 9002         	str	r0, [sp, #0x8]
;   uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);             /* only values 0..7 are used          */
 8055964: 9802         	ldr	r0, [sp, #0x8]
 8055966: f000 0007    	and	r0, r0, #0x7
 805596a: 9000         	str	r0, [sp]
 805596c: f64e 500c    	movw	r0, #0xed0c
 8055970: f2ce 0000    	movt	r0, #0xe000
;   reg_value  =  SCB->AIRCR;                                                   /* read old register configuration    */
 8055974: 6801         	ldr	r1, [r0]
 8055976: 9101         	str	r1, [sp, #0x4]
;   reg_value &= ~((uint32_t)(SCB_AIRCR_VECTKEY_Msk | SCB_AIRCR_PRIGROUP_Msk)); /* clear bits to change               */
 8055978: 9901         	ldr	r1, [sp, #0x4]
 805597a: f64f 02ff    	movw	r2, #0xf8ff
 805597e: 4011         	ands	r1, r2
 8055980: 9101         	str	r1, [sp, #0x4]
;   reg_value  =  (reg_value                                   |
 8055982: 9901         	ldr	r1, [sp, #0x4]
;                 (PriorityGroupTmp << SCB_AIRCR_PRIGROUP_Pos)  );              /* Insert write key and priority group */
 8055984: 9a00         	ldr	r2, [sp]
;   reg_value  =  (reg_value                                   |
 8055986: ea41 2102    	orr.w	r1, r1, r2, lsl #8
 805598a: 2200         	movs	r2, #0x0
 805598c: f2c0 52fa    	movt	r2, #0x5fa
;                 ((uint32_t)0x5FAUL << SCB_AIRCR_VECTKEY_Pos) |
 8055990: 4311         	orrs	r1, r2
;   reg_value  =  (reg_value                                   |
 8055992: 9101         	str	r1, [sp, #0x4]
;   SCB->AIRCR =  reg_value;
 8055994: 9901         	ldr	r1, [sp, #0x4]
 8055996: 6001         	str	r1, [r0]
; }
 8055998: b003         	add	sp, #0xc
 805599a: 4770         	bx	lr

0805599c <HAL_NVIC_SetPriority>:
; {
 805599c: b5d0         	push	{r4, r6, r7, lr}
 805599e: af02         	add	r7, sp, #0x8
 80559a0: b084         	sub	sp, #0x10
 80559a2: 21ff         	movs	r1, #0xff
 80559a4: f807 1c09    	strb	r1, [r7, #-9]
 80559a8: 9002         	str	r0, [sp, #0x8]
 80559aa: 2000         	movs	r0, #0x0
 80559ac: 9001         	str	r0, [sp, #0x4]
;   prioritygroup = NVIC_GetPriorityGrouping();
 80559ae: f000 f80e    	bl	0x80559ce <__NVIC_GetPriorityGrouping> @ imm = #0x1c
 80559b2: 9000         	str	r0, [sp]
;   NVIC_SetPriority(IRQn, NVIC_EncodePriority(prioritygroup, PreemptPriority, SubPriority));
 80559b4: f917 4c09    	ldrsb	r4, [r7, #-9]
 80559b8: 9800         	ldr	r0, [sp]
 80559ba: 9902         	ldr	r1, [sp, #0x8]
 80559bc: 9a01         	ldr	r2, [sp, #0x4]
 80559be: f000 f80e    	bl	0x80559de <NVIC_EncodePriority> @ imm = #0x1c
 80559c2: 4601         	mov	r1, r0
 80559c4: 4620         	mov	r0, r4
 80559c6: f000 f83b    	bl	0x8055a40 <__NVIC_SetPriority> @ imm = #0x76
; }
 80559ca: b004         	add	sp, #0x10
 80559cc: bdd0         	pop	{r4, r6, r7, pc}

080559ce <__NVIC_GetPriorityGrouping>:
; {
 80559ce: f64e 500c    	movw	r0, #0xed0c
 80559d2: f2ce 0000    	movt	r0, #0xe000
;   return ((uint32_t)((SCB->AIRCR & SCB_AIRCR_PRIGROUP_Msk) >> SCB_AIRCR_PRIGROUP_Pos));
 80559d6: 6800         	ldr	r0, [r0]
 80559d8: f3c0 2002    	ubfx	r0, r0, #0x8, #0x3
 80559dc: 4770         	bx	lr

080559de <NVIC_EncodePriority>:
; {
 80559de: b086         	sub	sp, #0x18
 80559e0: 9005         	str	r0, [sp, #0x14]
 80559e2: 9104         	str	r1, [sp, #0x10]
 80559e4: 9203         	str	r2, [sp, #0xc]
;   uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);   /* only values 0..7 are used          */
 80559e6: 9805         	ldr	r0, [sp, #0x14]
 80559e8: f000 0007    	and	r0, r0, #0x7
 80559ec: 9002         	str	r0, [sp, #0x8]
;   PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(__NVIC_PRIO_BITS)) ? (uint32_t)(__NVIC_PRIO_BITS) : (uint32_t)(7UL - PriorityGroupTmp);
 80559ee: 9802         	ldr	r0, [sp, #0x8]
 80559f0: f1c0 0007    	rsb.w	r0, r0, #0x7
 80559f4: 2804         	cmp	r0, #0x4
 80559f6: d302         	blo	0x80559fe <NVIC_EncodePriority+0x20> @ imm = #0x4
 80559f8: e7ff         	b	0x80559fa <NVIC_EncodePriority+0x1c> @ imm = #-0x2
 80559fa: 2003         	movs	r0, #0x3
;   PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(__NVIC_PRIO_BITS)) ? (uint32_t)(__NVIC_PRIO_BITS) : (uint32_t)(7UL - PriorityGroupTmp);
 80559fc: e003         	b	0x8055a06 <NVIC_EncodePriority+0x28> @ imm = #0x6
 80559fe: 9802         	ldr	r0, [sp, #0x8]
 8055a00: f1c0 0007    	rsb.w	r0, r0, #0x7
 8055a04: e7ff         	b	0x8055a06 <NVIC_EncodePriority+0x28> @ imm = #-0x2
 8055a06: 9001         	str	r0, [sp, #0x4]
;   SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(__NVIC_PRIO_BITS)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(__NVIC_PRIO_BITS));
 8055a08: 9802         	ldr	r0, [sp, #0x8]
 8055a0a: 3003         	adds	r0, #0x3
 8055a0c: 2806         	cmp	r0, #0x6
 8055a0e: d802         	bhi	0x8055a16 <NVIC_EncodePriority+0x38> @ imm = #0x4
 8055a10: e7ff         	b	0x8055a12 <NVIC_EncodePriority+0x34> @ imm = #-0x2
 8055a12: 2000         	movs	r0, #0x0
;   SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(__NVIC_PRIO_BITS)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(__NVIC_PRIO_BITS));
 8055a14: e002         	b	0x8055a1c <NVIC_EncodePriority+0x3e> @ imm = #0x4
 8055a16: 9802         	ldr	r0, [sp, #0x8]
 8055a18: 3804         	subs	r0, #0x4
 8055a1a: e7ff         	b	0x8055a1c <NVIC_EncodePriority+0x3e> @ imm = #-0x2
 8055a1c: 9000         	str	r0, [sp]
;            ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
 8055a1e: 9804         	ldr	r0, [sp, #0x10]
 8055a20: 9901         	ldr	r1, [sp, #0x4]
 8055a22: 2201         	movs	r2, #0x1
 8055a24: fa02 f101    	lsl.w	r1, r2, r1
 8055a28: 3901         	subs	r1, #0x1
 8055a2a: 4008         	ands	r0, r1
 8055a2c: 9900         	ldr	r1, [sp]
 8055a2e: 4088         	lsls	r0, r1
;            ((SubPriority     & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL)))
 8055a30: 9b03         	ldr	r3, [sp, #0xc]
 8055a32: fa02 f101    	lsl.w	r1, r2, r1
 8055a36: 3901         	subs	r1, #0x1
 8055a38: 4019         	ands	r1, r3
;            ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
 8055a3a: 4308         	orrs	r0, r1
;   return (
 8055a3c: b006         	add	sp, #0x18
 8055a3e: 4770         	bx	lr

08055a40 <__NVIC_SetPriority>:
; {
 8055a40: b082         	sub	sp, #0x8
 8055a42: f88d 0007    	strb.w	r0, [sp, #0x7]
 8055a46: 9100         	str	r1, [sp]
;   if ((int32_t)(IRQn) >= 0)
 8055a48: f99d 0007    	ldrsb.w	r0, [sp, #0x7]
 8055a4c: 2800         	cmp	r0, #0x0
 8055a4e: d40a         	bmi	0x8055a66 <__NVIC_SetPriority+0x26> @ imm = #0x14
 8055a50: e7ff         	b	0x8055a52 <__NVIC_SetPriority+0x12> @ imm = #-0x2
;     NVIC->IPR[((uint32_t)IRQn)]               = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
 8055a52: 9800         	ldr	r0, [sp]
 8055a54: 0140         	lsls	r0, r0, #0x5
 8055a56: f99d 1007    	ldrsb.w	r1, [sp, #0x7]
 8055a5a: f24e 4200    	movw	r2, #0xe400
 8055a5e: f2ce 0200    	movt	r2, #0xe000
 8055a62: 5488         	strb	r0, [r1, r2]
;   }
 8055a64: e00b         	b	0x8055a7e <__NVIC_SetPriority+0x3e> @ imm = #0x16
;     SCB->SHPR[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
 8055a66: 9800         	ldr	r0, [sp]
 8055a68: 0140         	lsls	r0, r0, #0x5
 8055a6a: f89d 1007    	ldrb.w	r1, [sp, #0x7]
 8055a6e: f001 010f    	and	r1, r1, #0xf
 8055a72: f64e 5214    	movw	r2, #0xed14
 8055a76: f2ce 0200    	movt	r2, #0xe000
 8055a7a: 5488         	strb	r0, [r1, r2]
 8055a7c: e7ff         	b	0x8055a7e <__NVIC_SetPriority+0x3e> @ imm = #-0x2
; }
 8055a7e: b002         	add	sp, #0x8
 8055a80: 4770         	bx	lr

08055a82 <HAL_SYSTICK_Config>:
; {
 8055a82: b580         	push	{r7, lr}
 8055a84: 466f         	mov	r7, sp
 8055a86: b082         	sub	sp, #0x8
 8055a88: 9001         	str	r0, [sp, #0x4]
;   return SysTick_Config(TicksNumb);
 8055a8a: 9801         	ldr	r0, [sp, #0x4]
 8055a8c: f000 f802    	bl	0x8055a94 <SysTick_Config> @ imm = #0x4
 8055a90: b002         	add	sp, #0x8
 8055a92: bd80         	pop	{r7, pc}

08055a94 <SysTick_Config>:
; {
 8055a94: b5d0         	push	{r4, r6, r7, lr}
 8055a96: af02         	add	r7, sp, #0x8
 8055a98: b082         	sub	sp, #0x8
 8055a9a: 9000         	str	r0, [sp]
;   if ((ticks - 1UL) > SysTick_LOAD_RELOAD_Msk)
 8055a9c: 9800         	ldr	r0, [sp]
 8055a9e: 3801         	subs	r0, #0x1
 8055aa0: f1b0 7f80    	cmp.w	r0, #0x1000000
 8055aa4: d303         	blo	0x8055aae <SysTick_Config+0x1a> @ imm = #0x6
 8055aa6: e7ff         	b	0x8055aa8 <SysTick_Config+0x14> @ imm = #-0x2
 8055aa8: 2001         	movs	r0, #0x1
;     return (1UL);                                                   /* Reload value impossible */
 8055aaa: 9001         	str	r0, [sp, #0x4]
 8055aac: e019         	b	0x8055ae2 <SysTick_Config+0x4e> @ imm = #0x32
;   SysTick->LOAD  = (uint32_t)(ticks - 1UL);                         /* set reload register */
 8055aae: 9800         	ldr	r0, [sp]
 8055ab0: 3801         	subs	r0, #0x1
 8055ab2: f24e 0114    	movw	r1, #0xe014
 8055ab6: f2ce 0100    	movt	r1, #0xe000
 8055aba: 6008         	str	r0, [r1]
 8055abc: 2407         	movs	r4, #0x7
;   NVIC_SetPriority (SysTick_IRQn, (1UL << __NVIC_PRIO_BITS) - 1UL); /* set Priority for Systick Interrupt */
 8055abe: f04f 30ff    	mov.w	r0, #0xffffffff
 8055ac2: 2107         	movs	r1, #0x7
 8055ac4: f7ff ffbc    	bl	0x8055a40 <__NVIC_SetPriority> @ imm = #-0x88
 8055ac8: f24e 0018    	movw	r0, #0xe018
 8055acc: f2ce 0000    	movt	r0, #0xe000
 8055ad0: 2100         	movs	r1, #0x0
;   SysTick->VAL   = 0UL;                                             /* Load the SysTick Counter Value */
 8055ad2: 6001         	str	r1, [r0]
 8055ad4: f24e 0010    	movw	r0, #0xe010
 8055ad8: f2ce 0000    	movt	r0, #0xe000
;   SysTick->CTRL  = SysTick_CTRL_CLKSOURCE_Msk |
 8055adc: 6004         	str	r4, [r0]
;   return (0UL);                                                     /* Function successful */
 8055ade: 9101         	str	r1, [sp, #0x4]
 8055ae0: e7ff         	b	0x8055ae2 <SysTick_Config+0x4e> @ imm = #-0x2
; }
 8055ae2: 9801         	ldr	r0, [sp, #0x4]
 8055ae4: b002         	add	sp, #0x8
 8055ae6: bdd0         	pop	{r4, r6, r7, pc}

08055ae8 <Reset_Handler>:
; void Reset_Handler(void) {
 8055ae8: b580         	push	{r7, lr}
 8055aea: 466f         	mov	r7, sp
 8055aec: b088         	sub	sp, #0x20
 8055aee: f242 30a0    	movw	r0, #0x23a0
 8055af2: f2c2 0000    	movt	r0, #0x2000
 8055af6: 9005         	str	r0, [sp, #0x14]
;   __ASM volatile("MSR msplim, %0" : : "r"(MainStackPtrLimit));
 8055af8: 9905         	ldr	r1, [sp, #0x14]
 8055afa: f381 880a    	msr	msplim, r1
 8055afe: f243 31a0    	movw	r1, #0x33a0
 8055b02: f2c2 0100    	movt	r1, #0x2000
 8055b06: 9106         	str	r1, [sp, #0x18]
;   __ASM volatile("MSR psp, %0" : : "r"(topOfProcStack) :);
 8055b08: 9906         	ldr	r1, [sp, #0x18]
 8055b0a: f381 8809    	msr	psp, r1
 8055b0e: 9007         	str	r0, [sp, #0x1c]
;   __ASM volatile("MSR psplim, %0" : : "r"(ProcStackPtrLimit));
 8055b10: 9807         	ldr	r0, [sp, #0x1c]
 8055b12: f380 880b    	msr	psplim, r0
;   SystemInit();      /* CMSIS System Initialization */
 8055b16: f7ff fc7c    	bl	0x8055412 <SystemInit>  @ imm = #-0x708
;   for (__copy_table_t const *pTable = &__copy_table_start__;
 8055b1a: f248 60a4    	movw	r0, #0x86a4
 8055b1e: f6c0 0005    	movt	r0, #0x805
 8055b22: 9004         	str	r0, [sp, #0x10]
 8055b24: e7ff         	b	0x8055b26 <Reset_Handler+0x3e> @ imm = #-0x2
;        pTable < &__copy_table_end__; ++pTable) {
 8055b26: 9804         	ldr	r0, [sp, #0x10]
 8055b28: f248 61bc    	movw	r1, #0x86bc
 8055b2c: f6c0 0105    	movt	r1, #0x805
;   for (__copy_table_t const *pTable = &__copy_table_start__;
 8055b30: 4288         	cmp	r0, r1
 8055b32: d219         	bhs	0x8055b68 <Reset_Handler+0x80> @ imm = #0x32
 8055b34: e7ff         	b	0x8055b36 <Reset_Handler+0x4e> @ imm = #-0x2
 8055b36: 2000         	movs	r0, #0x0
;     for (uint32_t i = 0u; i < pTable->wlen; ++i) {
 8055b38: 9003         	str	r0, [sp, #0xc]
 8055b3a: e7ff         	b	0x8055b3c <Reset_Handler+0x54> @ imm = #-0x2
 8055b3c: 9803         	ldr	r0, [sp, #0xc]
 8055b3e: 9904         	ldr	r1, [sp, #0x10]
 8055b40: 6889         	ldr	r1, [r1, #0x8]
 8055b42: 4288         	cmp	r0, r1
 8055b44: d20c         	bhs	0x8055b60 <Reset_Handler+0x78> @ imm = #0x18
 8055b46: e7ff         	b	0x8055b48 <Reset_Handler+0x60> @ imm = #-0x2
;       pTable->dest[i] = pTable->src[i];
 8055b48: 9804         	ldr	r0, [sp, #0x10]
 8055b4a: 9903         	ldr	r1, [sp, #0xc]
 8055b4c: 6802         	ldr	r2, [r0]
 8055b4e: 6840         	ldr	r0, [r0, #0x4]
 8055b50: f852 2021    	ldr.w	r2, [r2, r1, lsl #2]
 8055b54: f840 2021    	str.w	r2, [r0, r1, lsl #2]
;     for (uint32_t i = 0u; i < pTable->wlen; ++i) {
 8055b58: 9803         	ldr	r0, [sp, #0xc]
 8055b5a: 3001         	adds	r0, #0x1
 8055b5c: 9003         	str	r0, [sp, #0xc]
 8055b5e: e7ed         	b	0x8055b3c <Reset_Handler+0x54> @ imm = #-0x26
;        pTable < &__copy_table_end__; ++pTable) {
 8055b60: 9804         	ldr	r0, [sp, #0x10]
 8055b62: 300c         	adds	r0, #0xc
 8055b64: 9004         	str	r0, [sp, #0x10]
;   for (__copy_table_t const *pTable = &__copy_table_start__;
 8055b66: e7de         	b	0x8055b26 <Reset_Handler+0x3e> @ imm = #-0x44
;   for (__zero_table_t const *pTable = &__zero_table_start__;
 8055b68: f248 60bc    	movw	r0, #0x86bc
 8055b6c: f6c0 0005    	movt	r0, #0x805
 8055b70: 9002         	str	r0, [sp, #0x8]
 8055b72: e7ff         	b	0x8055b74 <Reset_Handler+0x8c> @ imm = #-0x2
;        pTable < &__zero_table_end__; ++pTable) {
 8055b74: 9802         	ldr	r0, [sp, #0x8]
 8055b76: f248 61cc    	movw	r1, #0x86cc
 8055b7a: f6c0 0105    	movt	r1, #0x805
;   for (__zero_table_t const *pTable = &__zero_table_start__;
 8055b7e: 4288         	cmp	r0, r1
 8055b80: d217         	bhs	0x8055bb2 <Reset_Handler+0xca> @ imm = #0x2e
 8055b82: e7ff         	b	0x8055b84 <Reset_Handler+0x9c> @ imm = #-0x2
 8055b84: 2000         	movs	r0, #0x0
;     for (uint32_t i = 0u; i < pTable->wlen; ++i) {
 8055b86: 9001         	str	r0, [sp, #0x4]
 8055b88: e7ff         	b	0x8055b8a <Reset_Handler+0xa2> @ imm = #-0x2
 8055b8a: 9801         	ldr	r0, [sp, #0x4]
 8055b8c: 9902         	ldr	r1, [sp, #0x8]
 8055b8e: 6849         	ldr	r1, [r1, #0x4]
 8055b90: 4288         	cmp	r0, r1
 8055b92: d20a         	bhs	0x8055baa <Reset_Handler+0xc2> @ imm = #0x14
 8055b94: e7ff         	b	0x8055b96 <Reset_Handler+0xae> @ imm = #-0x2
;       pTable->dest[i] = 0u;
 8055b96: 9802         	ldr	r0, [sp, #0x8]
 8055b98: 6800         	ldr	r0, [r0]
 8055b9a: 9901         	ldr	r1, [sp, #0x4]
 8055b9c: 2200         	movs	r2, #0x0
 8055b9e: f840 2021    	str.w	r2, [r0, r1, lsl #2]
;     for (uint32_t i = 0u; i < pTable->wlen; ++i) {
 8055ba2: 9801         	ldr	r0, [sp, #0x4]
 8055ba4: 3001         	adds	r0, #0x1
 8055ba6: 9001         	str	r0, [sp, #0x4]
 8055ba8: e7ef         	b	0x8055b8a <Reset_Handler+0xa2> @ imm = #-0x22
;        pTable < &__zero_table_end__; ++pTable) {
 8055baa: 9802         	ldr	r0, [sp, #0x8]
 8055bac: 3008         	adds	r0, #0x8
 8055bae: 9002         	str	r0, [sp, #0x8]
;   for (__zero_table_t const *pTable = &__zero_table_start__;
 8055bb0: e7e0         	b	0x8055b74 <Reset_Handler+0x8c> @ imm = #-0x40
;   main();
 8055bb2: f000 f8ff    	bl	0x8055db4 <main>        @ imm = #0x1fe

08055bb6 <NMI_Handler>:
; DEFAULT_IRQ_HANDLER(NMI_Handler)
 8055bb6: e7ff         	b	0x8055bb8 <NMI_Handler+0x2> @ imm = #-0x2
 8055bb8: e7fe         	b	0x8055bb8 <NMI_Handler+0x2> @ imm = #-0x4

08055bba <HardFault_Handler>:
; DEFAULT_IRQ_HANDLER(HardFault_Handler)
 8055bba: e7ff         	b	0x8055bbc <HardFault_Handler+0x2> @ imm = #-0x2
 8055bbc: e7fe         	b	0x8055bbc <HardFault_Handler+0x2> @ imm = #-0x4

08055bbe <MemManage_Handler>:
; DEFAULT_IRQ_HANDLER(MemManage_Handler)
 8055bbe: e7ff         	b	0x8055bc0 <MemManage_Handler+0x2> @ imm = #-0x2
 8055bc0: e7fe         	b	0x8055bc0 <MemManage_Handler+0x2> @ imm = #-0x4

08055bc2 <BusFault_Handler>:
; DEFAULT_IRQ_HANDLER(BusFault_Handler)
 8055bc2: e7ff         	b	0x8055bc4 <BusFault_Handler+0x2> @ imm = #-0x2
 8055bc4: e7fe         	b	0x8055bc4 <BusFault_Handler+0x2> @ imm = #-0x4

08055bc6 <UsageFault_Handler>:
; DEFAULT_IRQ_HANDLER(UsageFault_Handler)
 8055bc6: e7ff         	b	0x8055bc8 <UsageFault_Handler+0x2> @ imm = #-0x2
 8055bc8: e7fe         	b	0x8055bc8 <UsageFault_Handler+0x2> @ imm = #-0x4

08055bca <SecureFault_Handler>:
; DEFAULT_IRQ_HANDLER(SecureFault_Handler)
 8055bca: e7ff         	b	0x8055bcc <SecureFault_Handler+0x2> @ imm = #-0x2
 8055bcc: e7fe         	b	0x8055bcc <SecureFault_Handler+0x2> @ imm = #-0x4

08055bce <DebugMon_Handler>:
; DEFAULT_IRQ_HANDLER(DebugMon_Handler)
 8055bce: e7ff         	b	0x8055bd0 <DebugMon_Handler+0x2> @ imm = #-0x2
 8055bd0: e7fe         	b	0x8055bd0 <DebugMon_Handler+0x2> @ imm = #-0x4

08055bd2 <WWDG_IRQHandler>:
; DEFAULT_IRQ_HANDLER(WWDG_IRQHandler)
 8055bd2: e7ff         	b	0x8055bd4 <WWDG_IRQHandler+0x2> @ imm = #-0x2
 8055bd4: e7fe         	b	0x8055bd4 <WWDG_IRQHandler+0x2> @ imm = #-0x4

08055bd6 <PVD_PVM_IRQHandler>:
; DEFAULT_IRQ_HANDLER(PVD_PVM_IRQHandler)
 8055bd6: e7ff         	b	0x8055bd8 <PVD_PVM_IRQHandler+0x2> @ imm = #-0x2
 8055bd8: e7fe         	b	0x8055bd8 <PVD_PVM_IRQHandler+0x2> @ imm = #-0x4

08055bda <RTC_IRQHandler>:
; DEFAULT_IRQ_HANDLER(RTC_IRQHandler)
 8055bda: e7ff         	b	0x8055bdc <RTC_IRQHandler+0x2> @ imm = #-0x2
 8055bdc: e7fe         	b	0x8055bdc <RTC_IRQHandler+0x2> @ imm = #-0x4

08055bde <RTC_IRQHandler_S>:
; DEFAULT_IRQ_HANDLER(RTC_IRQHandler_S)
 8055bde: e7ff         	b	0x8055be0 <RTC_IRQHandler_S+0x2> @ imm = #-0x2
 8055be0: e7fe         	b	0x8055be0 <RTC_IRQHandler_S+0x2> @ imm = #-0x4

08055be2 <TAMP_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TAMP_IRQHandler)
 8055be2: e7ff         	b	0x8055be4 <TAMP_IRQHandler+0x2> @ imm = #-0x2
 8055be4: e7fe         	b	0x8055be4 <TAMP_IRQHandler+0x2> @ imm = #-0x4

08055be6 <TAMP_IRQHandler_S>:
; DEFAULT_IRQ_HANDLER(TAMP_IRQHandler_S)
 8055be6: e7ff         	b	0x8055be8 <TAMP_IRQHandler_S+0x2> @ imm = #-0x2
 8055be8: e7fe         	b	0x8055be8 <TAMP_IRQHandler_S+0x2> @ imm = #-0x4

08055bea <FLASH_IRQHandler>:
; DEFAULT_IRQ_HANDLER(FLASH_IRQHandler)
 8055bea: e7ff         	b	0x8055bec <FLASH_IRQHandler+0x2> @ imm = #-0x2
 8055bec: e7fe         	b	0x8055bec <FLASH_IRQHandler+0x2> @ imm = #-0x4

08055bee <FLASH_IRQHandler_S>:
; DEFAULT_IRQ_HANDLER(FLASH_IRQHandler_S)
 8055bee: e7ff         	b	0x8055bf0 <FLASH_IRQHandler_S+0x2> @ imm = #-0x2
 8055bf0: e7fe         	b	0x8055bf0 <FLASH_IRQHandler_S+0x2> @ imm = #-0x4

08055bf2 <SERR_IRQHandler>:
; DEFAULT_IRQ_HANDLER(SERR_IRQHandler)
 8055bf2: e7ff         	b	0x8055bf4 <SERR_IRQHandler+0x2> @ imm = #-0x2
 8055bf4: e7fe         	b	0x8055bf4 <SERR_IRQHandler+0x2> @ imm = #-0x4

08055bf6 <RCC_IRQHandler>:
; DEFAULT_IRQ_HANDLER(RCC_IRQHandler)
 8055bf6: e7ff         	b	0x8055bf8 <RCC_IRQHandler+0x2> @ imm = #-0x2
 8055bf8: e7fe         	b	0x8055bf8 <RCC_IRQHandler+0x2> @ imm = #-0x4

08055bfa <RCC_IRQHandler_S>:
; DEFAULT_IRQ_HANDLER(RCC_IRQHandler_S)
 8055bfa: e7ff         	b	0x8055bfc <RCC_IRQHandler_S+0x2> @ imm = #-0x2
 8055bfc: e7fe         	b	0x8055bfc <RCC_IRQHandler_S+0x2> @ imm = #-0x4

08055bfe <EXTI0_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI0_IRQHandler)
 8055bfe: e7ff         	b	0x8055c00 <EXTI0_IRQHandler+0x2> @ imm = #-0x2
 8055c00: e7fe         	b	0x8055c00 <EXTI0_IRQHandler+0x2> @ imm = #-0x4

08055c02 <EXTI1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI1_IRQHandler)
 8055c02: e7ff         	b	0x8055c04 <EXTI1_IRQHandler+0x2> @ imm = #-0x2
 8055c04: e7fe         	b	0x8055c04 <EXTI1_IRQHandler+0x2> @ imm = #-0x4

08055c06 <EXTI2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI2_IRQHandler)
 8055c06: e7ff         	b	0x8055c08 <EXTI2_IRQHandler+0x2> @ imm = #-0x2
 8055c08: e7fe         	b	0x8055c08 <EXTI2_IRQHandler+0x2> @ imm = #-0x4

08055c0a <EXTI3_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI3_IRQHandler)
 8055c0a: e7ff         	b	0x8055c0c <EXTI3_IRQHandler+0x2> @ imm = #-0x2
 8055c0c: e7fe         	b	0x8055c0c <EXTI3_IRQHandler+0x2> @ imm = #-0x4

08055c0e <EXTI4_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI4_IRQHandler)
 8055c0e: e7ff         	b	0x8055c10 <EXTI4_IRQHandler+0x2> @ imm = #-0x2
 8055c10: e7fe         	b	0x8055c10 <EXTI4_IRQHandler+0x2> @ imm = #-0x4

08055c12 <EXTI5_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI5_IRQHandler)
 8055c12: e7ff         	b	0x8055c14 <EXTI5_IRQHandler+0x2> @ imm = #-0x2
 8055c14: e7fe         	b	0x8055c14 <EXTI5_IRQHandler+0x2> @ imm = #-0x4

08055c16 <EXTI6_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI6_IRQHandler)
 8055c16: e7ff         	b	0x8055c18 <EXTI6_IRQHandler+0x2> @ imm = #-0x2
 8055c18: e7fe         	b	0x8055c18 <EXTI6_IRQHandler+0x2> @ imm = #-0x4

08055c1a <EXTI7_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI7_IRQHandler)
 8055c1a: e7ff         	b	0x8055c1c <EXTI7_IRQHandler+0x2> @ imm = #-0x2
 8055c1c: e7fe         	b	0x8055c1c <EXTI7_IRQHandler+0x2> @ imm = #-0x4

08055c1e <EXTI8_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI8_IRQHandler)
 8055c1e: e7ff         	b	0x8055c20 <EXTI8_IRQHandler+0x2> @ imm = #-0x2
 8055c20: e7fe         	b	0x8055c20 <EXTI8_IRQHandler+0x2> @ imm = #-0x4

08055c22 <EXTI9_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI9_IRQHandler)
 8055c22: e7ff         	b	0x8055c24 <EXTI9_IRQHandler+0x2> @ imm = #-0x2
 8055c24: e7fe         	b	0x8055c24 <EXTI9_IRQHandler+0x2> @ imm = #-0x4

08055c26 <EXTI10_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI10_IRQHandler)
 8055c26: e7ff         	b	0x8055c28 <EXTI10_IRQHandler+0x2> @ imm = #-0x2
 8055c28: e7fe         	b	0x8055c28 <EXTI10_IRQHandler+0x2> @ imm = #-0x4

08055c2a <EXTI11_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI11_IRQHandler)
 8055c2a: e7ff         	b	0x8055c2c <EXTI11_IRQHandler+0x2> @ imm = #-0x2
 8055c2c: e7fe         	b	0x8055c2c <EXTI11_IRQHandler+0x2> @ imm = #-0x4

08055c2e <EXTI12_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI12_IRQHandler)
 8055c2e: e7ff         	b	0x8055c30 <EXTI12_IRQHandler+0x2> @ imm = #-0x2
 8055c30: e7fe         	b	0x8055c30 <EXTI12_IRQHandler+0x2> @ imm = #-0x4

08055c32 <EXTI13_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI13_IRQHandler)
 8055c32: e7ff         	b	0x8055c34 <EXTI13_IRQHandler+0x2> @ imm = #-0x2
 8055c34: e7fe         	b	0x8055c34 <EXTI13_IRQHandler+0x2> @ imm = #-0x4

08055c36 <EXTI14_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI14_IRQHandler)
 8055c36: e7ff         	b	0x8055c38 <EXTI14_IRQHandler+0x2> @ imm = #-0x2
 8055c38: e7fe         	b	0x8055c38 <EXTI14_IRQHandler+0x2> @ imm = #-0x4

08055c3a <EXTI15_IRQHandler>:
; DEFAULT_IRQ_HANDLER(EXTI15_IRQHandler)
 8055c3a: e7ff         	b	0x8055c3c <EXTI15_IRQHandler+0x2> @ imm = #-0x2
 8055c3c: e7fe         	b	0x8055c3c <EXTI15_IRQHandler+0x2> @ imm = #-0x4

08055c3e <DMAMUX1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMAMUX1_IRQHandler)
 8055c3e: e7ff         	b	0x8055c40 <DMAMUX1_IRQHandler+0x2> @ imm = #-0x2
 8055c40: e7fe         	b	0x8055c40 <DMAMUX1_IRQHandler+0x2> @ imm = #-0x4

08055c42 <DMAMUX1_IRQHandler_S>:
; DEFAULT_IRQ_HANDLER(DMAMUX1_IRQHandler_S)
 8055c42: e7ff         	b	0x8055c44 <DMAMUX1_IRQHandler_S+0x2> @ imm = #-0x2
 8055c44: e7fe         	b	0x8055c44 <DMAMUX1_IRQHandler_S+0x2> @ imm = #-0x4

08055c46 <DMA1_Channel1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA1_Channel1_IRQHandler)
 8055c46: e7ff         	b	0x8055c48 <DMA1_Channel1_IRQHandler+0x2> @ imm = #-0x2
 8055c48: e7fe         	b	0x8055c48 <DMA1_Channel1_IRQHandler+0x2> @ imm = #-0x4

08055c4a <DMA1_Channel2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA1_Channel2_IRQHandler)
 8055c4a: e7ff         	b	0x8055c4c <DMA1_Channel2_IRQHandler+0x2> @ imm = #-0x2
 8055c4c: e7fe         	b	0x8055c4c <DMA1_Channel2_IRQHandler+0x2> @ imm = #-0x4

08055c4e <DMA1_Channel3_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA1_Channel3_IRQHandler)
 8055c4e: e7ff         	b	0x8055c50 <DMA1_Channel3_IRQHandler+0x2> @ imm = #-0x2
 8055c50: e7fe         	b	0x8055c50 <DMA1_Channel3_IRQHandler+0x2> @ imm = #-0x4

08055c52 <DMA1_Channel4_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA1_Channel4_IRQHandler)
 8055c52: e7ff         	b	0x8055c54 <DMA1_Channel4_IRQHandler+0x2> @ imm = #-0x2
 8055c54: e7fe         	b	0x8055c54 <DMA1_Channel4_IRQHandler+0x2> @ imm = #-0x4

08055c56 <DMA1_Channel5_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA1_Channel5_IRQHandler)
 8055c56: e7ff         	b	0x8055c58 <DMA1_Channel5_IRQHandler+0x2> @ imm = #-0x2
 8055c58: e7fe         	b	0x8055c58 <DMA1_Channel5_IRQHandler+0x2> @ imm = #-0x4

08055c5a <DMA1_Channel6_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA1_Channel6_IRQHandler)
 8055c5a: e7ff         	b	0x8055c5c <DMA1_Channel6_IRQHandler+0x2> @ imm = #-0x2
 8055c5c: e7fe         	b	0x8055c5c <DMA1_Channel6_IRQHandler+0x2> @ imm = #-0x4

08055c5e <DMA1_Channel7_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA1_Channel7_IRQHandler)
 8055c5e: e7ff         	b	0x8055c60 <DMA1_Channel7_IRQHandler+0x2> @ imm = #-0x2
 8055c60: e7fe         	b	0x8055c60 <DMA1_Channel7_IRQHandler+0x2> @ imm = #-0x4

08055c62 <DMA1_Channel8_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA1_Channel8_IRQHandler)
 8055c62: e7ff         	b	0x8055c64 <DMA1_Channel8_IRQHandler+0x2> @ imm = #-0x2
 8055c64: e7fe         	b	0x8055c64 <DMA1_Channel8_IRQHandler+0x2> @ imm = #-0x4

08055c66 <ADC1_2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(ADC1_2_IRQHandler)
 8055c66: e7ff         	b	0x8055c68 <ADC1_2_IRQHandler+0x2> @ imm = #-0x2
 8055c68: e7fe         	b	0x8055c68 <ADC1_2_IRQHandler+0x2> @ imm = #-0x4

08055c6a <DAC_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DAC_IRQHandler)
 8055c6a: e7ff         	b	0x8055c6c <DAC_IRQHandler+0x2> @ imm = #-0x2
 8055c6c: e7fe         	b	0x8055c6c <DAC_IRQHandler+0x2> @ imm = #-0x4

08055c6e <FDCAN1_IT0_IRQHandler>:
; DEFAULT_IRQ_HANDLER(FDCAN1_IT0_IRQHandler)
 8055c6e: e7ff         	b	0x8055c70 <FDCAN1_IT0_IRQHandler+0x2> @ imm = #-0x2
 8055c70: e7fe         	b	0x8055c70 <FDCAN1_IT0_IRQHandler+0x2> @ imm = #-0x4

08055c72 <FDCAN1_IT1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(FDCAN1_IT1_IRQHandler)
 8055c72: e7ff         	b	0x8055c74 <FDCAN1_IT1_IRQHandler+0x2> @ imm = #-0x2
 8055c74: e7fe         	b	0x8055c74 <FDCAN1_IT1_IRQHandler+0x2> @ imm = #-0x4

08055c76 <TIM1_BRK_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM1_BRK_IRQHandler)
 8055c76: e7ff         	b	0x8055c78 <TIM1_BRK_IRQHandler+0x2> @ imm = #-0x2
 8055c78: e7fe         	b	0x8055c78 <TIM1_BRK_IRQHandler+0x2> @ imm = #-0x4

08055c7a <TIM1_UP_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM1_UP_IRQHandler)
 8055c7a: e7ff         	b	0x8055c7c <TIM1_UP_IRQHandler+0x2> @ imm = #-0x2
 8055c7c: e7fe         	b	0x8055c7c <TIM1_UP_IRQHandler+0x2> @ imm = #-0x4

08055c7e <TIM1_TRG_COM_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM1_TRG_COM_IRQHandler)
 8055c7e: e7ff         	b	0x8055c80 <TIM1_TRG_COM_IRQHandler+0x2> @ imm = #-0x2
 8055c80: e7fe         	b	0x8055c80 <TIM1_TRG_COM_IRQHandler+0x2> @ imm = #-0x4

08055c82 <TIM1_CC_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM1_CC_IRQHandler)
 8055c82: e7ff         	b	0x8055c84 <TIM1_CC_IRQHandler+0x2> @ imm = #-0x2
 8055c84: e7fe         	b	0x8055c84 <TIM1_CC_IRQHandler+0x2> @ imm = #-0x4

08055c86 <TIM2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM2_IRQHandler)
 8055c86: e7ff         	b	0x8055c88 <TIM2_IRQHandler+0x2> @ imm = #-0x2
 8055c88: e7fe         	b	0x8055c88 <TIM2_IRQHandler+0x2> @ imm = #-0x4

08055c8a <TIM3_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM3_IRQHandler)
 8055c8a: e7ff         	b	0x8055c8c <TIM3_IRQHandler+0x2> @ imm = #-0x2
 8055c8c: e7fe         	b	0x8055c8c <TIM3_IRQHandler+0x2> @ imm = #-0x4

08055c8e <TIM4_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM4_IRQHandler)
 8055c8e: e7ff         	b	0x8055c90 <TIM4_IRQHandler+0x2> @ imm = #-0x2
 8055c90: e7fe         	b	0x8055c90 <TIM4_IRQHandler+0x2> @ imm = #-0x4

08055c92 <TIM5_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM5_IRQHandler)
 8055c92: e7ff         	b	0x8055c94 <TIM5_IRQHandler+0x2> @ imm = #-0x2
 8055c94: e7fe         	b	0x8055c94 <TIM5_IRQHandler+0x2> @ imm = #-0x4

08055c96 <TIM6_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM6_IRQHandler)
 8055c96: e7ff         	b	0x8055c98 <TIM6_IRQHandler+0x2> @ imm = #-0x2
 8055c98: e7fe         	b	0x8055c98 <TIM6_IRQHandler+0x2> @ imm = #-0x4

08055c9a <TIM7_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM7_IRQHandler)
 8055c9a: e7ff         	b	0x8055c9c <TIM7_IRQHandler+0x2> @ imm = #-0x2
 8055c9c: e7fe         	b	0x8055c9c <TIM7_IRQHandler+0x2> @ imm = #-0x4

08055c9e <TIM8_BRK_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM8_BRK_IRQHandler)
 8055c9e: e7ff         	b	0x8055ca0 <TIM8_BRK_IRQHandler+0x2> @ imm = #-0x2
 8055ca0: e7fe         	b	0x8055ca0 <TIM8_BRK_IRQHandler+0x2> @ imm = #-0x4

08055ca2 <TIM8_UP_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM8_UP_IRQHandler)
 8055ca2: e7ff         	b	0x8055ca4 <TIM8_UP_IRQHandler+0x2> @ imm = #-0x2
 8055ca4: e7fe         	b	0x8055ca4 <TIM8_UP_IRQHandler+0x2> @ imm = #-0x4

08055ca6 <TIM8_TRG_COM_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM8_TRG_COM_IRQHandler)
 8055ca6: e7ff         	b	0x8055ca8 <TIM8_TRG_COM_IRQHandler+0x2> @ imm = #-0x2
 8055ca8: e7fe         	b	0x8055ca8 <TIM8_TRG_COM_IRQHandler+0x2> @ imm = #-0x4

08055caa <TIM8_CC_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM8_CC_IRQHandler)
 8055caa: e7ff         	b	0x8055cac <TIM8_CC_IRQHandler+0x2> @ imm = #-0x2
 8055cac: e7fe         	b	0x8055cac <TIM8_CC_IRQHandler+0x2> @ imm = #-0x4

08055cae <I2C1_EV_IRQHandler>:
; DEFAULT_IRQ_HANDLER(I2C1_EV_IRQHandler)
 8055cae: e7ff         	b	0x8055cb0 <I2C1_EV_IRQHandler+0x2> @ imm = #-0x2
 8055cb0: e7fe         	b	0x8055cb0 <I2C1_EV_IRQHandler+0x2> @ imm = #-0x4

08055cb2 <I2C1_ER_IRQHandler>:
; DEFAULT_IRQ_HANDLER(I2C1_ER_IRQHandler)
 8055cb2: e7ff         	b	0x8055cb4 <I2C1_ER_IRQHandler+0x2> @ imm = #-0x2
 8055cb4: e7fe         	b	0x8055cb4 <I2C1_ER_IRQHandler+0x2> @ imm = #-0x4

08055cb6 <I2C2_EV_IRQHandler>:
; DEFAULT_IRQ_HANDLER(I2C2_EV_IRQHandler)
 8055cb6: e7ff         	b	0x8055cb8 <I2C2_EV_IRQHandler+0x2> @ imm = #-0x2
 8055cb8: e7fe         	b	0x8055cb8 <I2C2_EV_IRQHandler+0x2> @ imm = #-0x4

08055cba <I2C2_ER_IRQHandler>:
; DEFAULT_IRQ_HANDLER(I2C2_ER_IRQHandler)
 8055cba: e7ff         	b	0x8055cbc <I2C2_ER_IRQHandler+0x2> @ imm = #-0x2
 8055cbc: e7fe         	b	0x8055cbc <I2C2_ER_IRQHandler+0x2> @ imm = #-0x4

08055cbe <SPI1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(SPI1_IRQHandler)
 8055cbe: e7ff         	b	0x8055cc0 <SPI1_IRQHandler+0x2> @ imm = #-0x2
 8055cc0: e7fe         	b	0x8055cc0 <SPI1_IRQHandler+0x2> @ imm = #-0x4

08055cc2 <SPI2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(SPI2_IRQHandler)
 8055cc2: e7ff         	b	0x8055cc4 <SPI2_IRQHandler+0x2> @ imm = #-0x2
 8055cc4: e7fe         	b	0x8055cc4 <SPI2_IRQHandler+0x2> @ imm = #-0x4

08055cc6 <USART1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(USART1_IRQHandler)
 8055cc6: e7ff         	b	0x8055cc8 <USART1_IRQHandler+0x2> @ imm = #-0x2
 8055cc8: e7fe         	b	0x8055cc8 <USART1_IRQHandler+0x2> @ imm = #-0x4

08055cca <USART2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(USART2_IRQHandler)
 8055cca: e7ff         	b	0x8055ccc <USART2_IRQHandler+0x2> @ imm = #-0x2
 8055ccc: e7fe         	b	0x8055ccc <USART2_IRQHandler+0x2> @ imm = #-0x4

08055cce <USART3_IRQHandler>:
; DEFAULT_IRQ_HANDLER(USART3_IRQHandler)
 8055cce: e7ff         	b	0x8055cd0 <USART3_IRQHandler+0x2> @ imm = #-0x2
 8055cd0: e7fe         	b	0x8055cd0 <USART3_IRQHandler+0x2> @ imm = #-0x4

08055cd2 <UART4_IRQHandler>:
; DEFAULT_IRQ_HANDLER(UART4_IRQHandler)
 8055cd2: e7ff         	b	0x8055cd4 <UART4_IRQHandler+0x2> @ imm = #-0x2
 8055cd4: e7fe         	b	0x8055cd4 <UART4_IRQHandler+0x2> @ imm = #-0x4

08055cd6 <UART5_IRQHandler>:
; DEFAULT_IRQ_HANDLER(UART5_IRQHandler)
 8055cd6: e7ff         	b	0x8055cd8 <UART5_IRQHandler+0x2> @ imm = #-0x2
 8055cd8: e7fe         	b	0x8055cd8 <UART5_IRQHandler+0x2> @ imm = #-0x4

08055cda <LPUART1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(LPUART1_IRQHandler)
 8055cda: e7ff         	b	0x8055cdc <LPUART1_IRQHandler+0x2> @ imm = #-0x2
 8055cdc: e7fe         	b	0x8055cdc <LPUART1_IRQHandler+0x2> @ imm = #-0x4

08055cde <LPTIM1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(LPTIM1_IRQHandler)
 8055cde: e7ff         	b	0x8055ce0 <LPTIM1_IRQHandler+0x2> @ imm = #-0x2
 8055ce0: e7fe         	b	0x8055ce0 <LPTIM1_IRQHandler+0x2> @ imm = #-0x4

08055ce2 <LPTIM2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(LPTIM2_IRQHandler)
 8055ce2: e7ff         	b	0x8055ce4 <LPTIM2_IRQHandler+0x2> @ imm = #-0x2
 8055ce4: e7fe         	b	0x8055ce4 <LPTIM2_IRQHandler+0x2> @ imm = #-0x4

08055ce6 <TIM15_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM15_IRQHandler)
 8055ce6: e7ff         	b	0x8055ce8 <TIM15_IRQHandler+0x2> @ imm = #-0x2
 8055ce8: e7fe         	b	0x8055ce8 <TIM15_IRQHandler+0x2> @ imm = #-0x4

08055cea <TIM16_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM16_IRQHandler)
 8055cea: e7ff         	b	0x8055cec <TIM16_IRQHandler+0x2> @ imm = #-0x2
 8055cec: e7fe         	b	0x8055cec <TIM16_IRQHandler+0x2> @ imm = #-0x4

08055cee <TIM17_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TIM17_IRQHandler)
 8055cee: e7ff         	b	0x8055cf0 <TIM17_IRQHandler+0x2> @ imm = #-0x2
 8055cf0: e7fe         	b	0x8055cf0 <TIM17_IRQHandler+0x2> @ imm = #-0x4

08055cf2 <COMP_IRQHandler>:
; DEFAULT_IRQ_HANDLER(COMP_IRQHandler)
 8055cf2: e7ff         	b	0x8055cf4 <COMP_IRQHandler+0x2> @ imm = #-0x2
 8055cf4: e7fe         	b	0x8055cf4 <COMP_IRQHandler+0x2> @ imm = #-0x4

08055cf6 <USB_FS_IRQHandler>:
; DEFAULT_IRQ_HANDLER(USB_FS_IRQHandler)
 8055cf6: e7ff         	b	0x8055cf8 <USB_FS_IRQHandler+0x2> @ imm = #-0x2
 8055cf8: e7fe         	b	0x8055cf8 <USB_FS_IRQHandler+0x2> @ imm = #-0x4

08055cfa <CRS_IRQHandler>:
; DEFAULT_IRQ_HANDLER(CRS_IRQHandler)
 8055cfa: e7ff         	b	0x8055cfc <CRS_IRQHandler+0x2> @ imm = #-0x2
 8055cfc: e7fe         	b	0x8055cfc <CRS_IRQHandler+0x2> @ imm = #-0x4

08055cfe <FMC_IRQHandler>:
; DEFAULT_IRQ_HANDLER(FMC_IRQHandler)
 8055cfe: e7ff         	b	0x8055d00 <FMC_IRQHandler+0x2> @ imm = #-0x2
 8055d00: e7fe         	b	0x8055d00 <FMC_IRQHandler+0x2> @ imm = #-0x4

08055d02 <OCTOSPI1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(OCTOSPI1_IRQHandler)
 8055d02: e7ff         	b	0x8055d04 <OCTOSPI1_IRQHandler+0x2> @ imm = #-0x2
 8055d04: e7fe         	b	0x8055d04 <OCTOSPI1_IRQHandler+0x2> @ imm = #-0x4

08055d06 <SDMMC1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(SDMMC1_IRQHandler)
 8055d06: e7ff         	b	0x8055d08 <SDMMC1_IRQHandler+0x2> @ imm = #-0x2
 8055d08: e7fe         	b	0x8055d08 <SDMMC1_IRQHandler+0x2> @ imm = #-0x4

08055d0a <DMA2_Channel1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA2_Channel1_IRQHandler)
 8055d0a: e7ff         	b	0x8055d0c <DMA2_Channel1_IRQHandler+0x2> @ imm = #-0x2
 8055d0c: e7fe         	b	0x8055d0c <DMA2_Channel1_IRQHandler+0x2> @ imm = #-0x4

08055d0e <DMA2_Channel2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA2_Channel2_IRQHandler)
 8055d0e: e7ff         	b	0x8055d10 <DMA2_Channel2_IRQHandler+0x2> @ imm = #-0x2
 8055d10: e7fe         	b	0x8055d10 <DMA2_Channel2_IRQHandler+0x2> @ imm = #-0x4

08055d12 <DMA2_Channel3_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA2_Channel3_IRQHandler)
 8055d12: e7ff         	b	0x8055d14 <DMA2_Channel3_IRQHandler+0x2> @ imm = #-0x2
 8055d14: e7fe         	b	0x8055d14 <DMA2_Channel3_IRQHandler+0x2> @ imm = #-0x4

08055d16 <DMA2_Channel4_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA2_Channel4_IRQHandler)
 8055d16: e7ff         	b	0x8055d18 <DMA2_Channel4_IRQHandler+0x2> @ imm = #-0x2
 8055d18: e7fe         	b	0x8055d18 <DMA2_Channel4_IRQHandler+0x2> @ imm = #-0x4

08055d1a <DMA2_Channel5_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA2_Channel5_IRQHandler)
 8055d1a: e7ff         	b	0x8055d1c <DMA2_Channel5_IRQHandler+0x2> @ imm = #-0x2
 8055d1c: e7fe         	b	0x8055d1c <DMA2_Channel5_IRQHandler+0x2> @ imm = #-0x4

08055d1e <DMA2_Channel6_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA2_Channel6_IRQHandler)
 8055d1e: e7ff         	b	0x8055d20 <DMA2_Channel6_IRQHandler+0x2> @ imm = #-0x2
 8055d20: e7fe         	b	0x8055d20 <DMA2_Channel6_IRQHandler+0x2> @ imm = #-0x4

08055d22 <DMA2_Channel7_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA2_Channel7_IRQHandler)
 8055d22: e7ff         	b	0x8055d24 <DMA2_Channel7_IRQHandler+0x2> @ imm = #-0x2
 8055d24: e7fe         	b	0x8055d24 <DMA2_Channel7_IRQHandler+0x2> @ imm = #-0x4

08055d26 <DMA2_Channel8_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DMA2_Channel8_IRQHandler)
 8055d26: e7ff         	b	0x8055d28 <DMA2_Channel8_IRQHandler+0x2> @ imm = #-0x2
 8055d28: e7fe         	b	0x8055d28 <DMA2_Channel8_IRQHandler+0x2> @ imm = #-0x4

08055d2a <I2C3_EV_IRQHandler>:
; DEFAULT_IRQ_HANDLER(I2C3_EV_IRQHandler)
 8055d2a: e7ff         	b	0x8055d2c <I2C3_EV_IRQHandler+0x2> @ imm = #-0x2
 8055d2c: e7fe         	b	0x8055d2c <I2C3_EV_IRQHandler+0x2> @ imm = #-0x4

08055d2e <I2C3_ER_IRQHandler>:
; DEFAULT_IRQ_HANDLER(I2C3_ER_IRQHandler)
 8055d2e: e7ff         	b	0x8055d30 <I2C3_ER_IRQHandler+0x2> @ imm = #-0x2
 8055d30: e7fe         	b	0x8055d30 <I2C3_ER_IRQHandler+0x2> @ imm = #-0x4

08055d32 <SAI1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(SAI1_IRQHandler)
 8055d32: e7ff         	b	0x8055d34 <SAI1_IRQHandler+0x2> @ imm = #-0x2
 8055d34: e7fe         	b	0x8055d34 <SAI1_IRQHandler+0x2> @ imm = #-0x4

08055d36 <SAI2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(SAI2_IRQHandler)
 8055d36: e7ff         	b	0x8055d38 <SAI2_IRQHandler+0x2> @ imm = #-0x2
 8055d38: e7fe         	b	0x8055d38 <SAI2_IRQHandler+0x2> @ imm = #-0x4

08055d3a <TSC_IRQHandler>:
; DEFAULT_IRQ_HANDLER(TSC_IRQHandler)
 8055d3a: e7ff         	b	0x8055d3c <TSC_IRQHandler+0x2> @ imm = #-0x2
 8055d3c: e7fe         	b	0x8055d3c <TSC_IRQHandler+0x2> @ imm = #-0x4

08055d3e <AES_IRQHandler>:
; DEFAULT_IRQ_HANDLER(AES_IRQHandler)
 8055d3e: e7ff         	b	0x8055d40 <AES_IRQHandler+0x2> @ imm = #-0x2
 8055d40: e7fe         	b	0x8055d40 <AES_IRQHandler+0x2> @ imm = #-0x4

08055d42 <RNG_IRQHandler>:
; DEFAULT_IRQ_HANDLER(RNG_IRQHandler)
 8055d42: e7ff         	b	0x8055d44 <RNG_IRQHandler+0x2> @ imm = #-0x2
 8055d44: e7fe         	b	0x8055d44 <RNG_IRQHandler+0x2> @ imm = #-0x4

08055d46 <FPU_IRQHandler>:
; DEFAULT_IRQ_HANDLER(FPU_IRQHandler)
 8055d46: e7ff         	b	0x8055d48 <FPU_IRQHandler+0x2> @ imm = #-0x2
 8055d48: e7fe         	b	0x8055d48 <FPU_IRQHandler+0x2> @ imm = #-0x4

08055d4a <HASH_IRQHandler>:
; DEFAULT_IRQ_HANDLER(HASH_IRQHandler)
 8055d4a: e7ff         	b	0x8055d4c <HASH_IRQHandler+0x2> @ imm = #-0x2
 8055d4c: e7fe         	b	0x8055d4c <HASH_IRQHandler+0x2> @ imm = #-0x4

08055d4e <PKA_IRQHandler>:
; DEFAULT_IRQ_HANDLER(PKA_IRQHandler)
 8055d4e: e7ff         	b	0x8055d50 <PKA_IRQHandler+0x2> @ imm = #-0x2
 8055d50: e7fe         	b	0x8055d50 <PKA_IRQHandler+0x2> @ imm = #-0x4

08055d52 <LPTIM3_IRQHandler>:
; DEFAULT_IRQ_HANDLER(LPTIM3_IRQHandler)
 8055d52: e7ff         	b	0x8055d54 <LPTIM3_IRQHandler+0x2> @ imm = #-0x2
 8055d54: e7fe         	b	0x8055d54 <LPTIM3_IRQHandler+0x2> @ imm = #-0x4

08055d56 <SPI3_IRQHandler>:
; DEFAULT_IRQ_HANDLER(SPI3_IRQHandler)
 8055d56: e7ff         	b	0x8055d58 <SPI3_IRQHandler+0x2> @ imm = #-0x2
 8055d58: e7fe         	b	0x8055d58 <SPI3_IRQHandler+0x2> @ imm = #-0x4

08055d5a <I2C4_ER_IRQHandler>:
; DEFAULT_IRQ_HANDLER(I2C4_ER_IRQHandler)
 8055d5a: e7ff         	b	0x8055d5c <I2C4_ER_IRQHandler+0x2> @ imm = #-0x2
 8055d5c: e7fe         	b	0x8055d5c <I2C4_ER_IRQHandler+0x2> @ imm = #-0x4

08055d5e <I2C4_EV_IRQHandler>:
; DEFAULT_IRQ_HANDLER(I2C4_EV_IRQHandler)
 8055d5e: e7ff         	b	0x8055d60 <I2C4_EV_IRQHandler+0x2> @ imm = #-0x2
 8055d60: e7fe         	b	0x8055d60 <I2C4_EV_IRQHandler+0x2> @ imm = #-0x4

08055d62 <DFSDM1_FLT0_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DFSDM1_FLT0_IRQHandler)
 8055d62: e7ff         	b	0x8055d64 <DFSDM1_FLT0_IRQHandler+0x2> @ imm = #-0x2
 8055d64: e7fe         	b	0x8055d64 <DFSDM1_FLT0_IRQHandler+0x2> @ imm = #-0x4

08055d66 <DFSDM1_FLT1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DFSDM1_FLT1_IRQHandler)
 8055d66: e7ff         	b	0x8055d68 <DFSDM1_FLT1_IRQHandler+0x2> @ imm = #-0x2
 8055d68: e7fe         	b	0x8055d68 <DFSDM1_FLT1_IRQHandler+0x2> @ imm = #-0x4

08055d6a <DFSDM1_FLT2_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DFSDM1_FLT2_IRQHandler)
 8055d6a: e7ff         	b	0x8055d6c <DFSDM1_FLT2_IRQHandler+0x2> @ imm = #-0x2
 8055d6c: e7fe         	b	0x8055d6c <DFSDM1_FLT2_IRQHandler+0x2> @ imm = #-0x4

08055d6e <DFSDM1_FLT3_IRQHandler>:
; DEFAULT_IRQ_HANDLER(DFSDM1_FLT3_IRQHandler)
 8055d6e: e7ff         	b	0x8055d70 <DFSDM1_FLT3_IRQHandler+0x2> @ imm = #-0x2
 8055d70: e7fe         	b	0x8055d70 <DFSDM1_FLT3_IRQHandler+0x2> @ imm = #-0x4

08055d72 <UCPD1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(UCPD1_IRQHandler)
 8055d72: e7ff         	b	0x8055d74 <UCPD1_IRQHandler+0x2> @ imm = #-0x2
 8055d74: e7fe         	b	0x8055d74 <UCPD1_IRQHandler+0x2> @ imm = #-0x4

08055d76 <ICACHE_IRQHandler>:
; DEFAULT_IRQ_HANDLER(ICACHE_IRQHandler)
 8055d76: e7ff         	b	0x8055d78 <ICACHE_IRQHandler+0x2> @ imm = #-0x2
 8055d78: e7fe         	b	0x8055d78 <ICACHE_IRQHandler+0x2> @ imm = #-0x4

08055d7a <OTFDEC1_IRQHandler>:
; DEFAULT_IRQ_HANDLER(OTFDEC1_IRQHandler)
 8055d7a: e7ff         	b	0x8055d7c <OTFDEC1_IRQHandler+0x2> @ imm = #-0x2
 8055d7c: e7fe         	b	0x8055d7c <OTFDEC1_IRQHandler+0x2> @ imm = #-0x4

08055d7e <sum>:
; int sum(int a, int b) { return a + b; }
 8055d7e: b082         	sub	sp, #0x8
 8055d80: 9001         	str	r0, [sp, #0x4]
 8055d82: 9100         	str	r1, [sp]
 8055d84: 9801         	ldr	r0, [sp, #0x4]
 8055d86: 9900         	ldr	r1, [sp]
 8055d88: 4408         	add	r0, r1
 8055d8a: b002         	add	sp, #0x8
 8055d8c: 4770         	bx	lr

08055d8e <testThread>:
; void testThread(void *pvParameters) {
 8055d8e: b580         	push	{r7, lr}
 8055d90: 466f         	mov	r7, sp
 8055d92: b084         	sub	sp, #0x10
 8055d94: 9003         	str	r0, [sp, #0xc]
;   while (1) {
 8055d96: e7ff         	b	0x8055d98 <testThread+0xa> @ imm = #-0x2
;     HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_3);
 8055d98: f7ff fdbf    	bl	0x805591a <HAL_GPIO_TogglePin> @ imm = #-0x482
 8055d9c: 2002         	movs	r0, #0x2
;     int a = 2;
 8055d9e: 9002         	str	r0, [sp, #0x8]
 8055da0: 2003         	movs	r0, #0x3
;     int b = 3;
 8055da2: 9001         	str	r0, [sp, #0x4]
;     int c = sum(a, b);
 8055da4: 9802         	ldr	r0, [sp, #0x8]
 8055da6: 9901         	ldr	r1, [sp, #0x4]
 8055da8: f7ff ffe9    	bl	0x8055d7e <sum>         @ imm = #-0x2e
 8055dac: 9000         	str	r0, [sp]
;     vTaskDelay(500);
 8055dae: f000 fd36    	bl	0x805681e <vTaskDelay>  @ imm = #0xa6c
;   while (1) {
 8055db2: e7f1         	b	0x8055d98 <testThread+0xa> @ imm = #-0x1e

08055db4 <main>:
; int main() {
 8055db4: b580         	push	{r7, lr}
 8055db6: 466f         	mov	r7, sp
 8055db8: b082         	sub	sp, #0x8
 8055dba: 2400         	movs	r4, #0x0
 8055dbc: 9401         	str	r4, [sp, #0x4]
;   HAL_Init();
 8055dbe: f7ff fae1    	bl	0x8055384 <HAL_Init>    @ imm = #-0xa3e
;   MX_GPIO_Init();
 8055dc2: f000 f812    	bl	0x8055dea <MX_GPIO_Init> @ imm = #0x24
;   xTaskCreate(testThread, "testThread", 256, NULL, 1, NULL);
 8055dc6: 9400         	str	r4, [sp]
 8055dc8: f645 508f    	movw	r0, #0x5d8f
 8055dcc: f6c0 0005    	movt	r0, #0x805
 8055dd0: f248 6175    	movw	r1, #0x8675
 8055dd4: f6c0 0105    	movt	r1, #0x805
 8055dd8: f44f 7280    	mov.w	r2, #0x100
 8055ddc: 2301         	movs	r3, #0x1
 8055dde: f000 f88b    	bl	0x8055ef8 <xTaskCreate> @ imm = #0x116
;   vTaskStartScheduler();
 8055de2: f000 fdc7    	bl	0x8056974 <vTaskStartScheduler> @ imm = #0xb8e
;   for (;;)
 8055de6: e7ff         	b	0x8055de8 <main+0x34>   @ imm = #-0x2
 8055de8: e7fe         	b	0x8055de8 <main+0x34>   @ imm = #-0x4

08055dea <MX_GPIO_Init>:
; static void MX_GPIO_Init(void) {
 8055dea: b580         	push	{r7, lr}
 8055dec: 466f         	mov	r7, sp
 8055dee: b086         	sub	sp, #0x18
 8055df0: 2000         	movs	r0, #0x0
;   GPIO_InitTypeDef GPIO_InitStruct = {0};
 8055df2: 9005         	str	r0, [sp, #0x14]
 8055df4: 9004         	str	r0, [sp, #0x10]
 8055df6: 9003         	str	r0, [sp, #0xc]
 8055df8: 9002         	str	r0, [sp, #0x8]
 8055dfa: 9001         	str	r0, [sp, #0x4]
;   __HAL_RCC_GPIOD_CLK_ENABLE();
 8055dfc: e7ff         	b	0x8055dfe <MX_GPIO_Init+0x14> @ imm = #-0x2
 8055dfe: f241 004c    	movw	r0, #0x104c
 8055e02: f2c4 0002    	movt	r0, #0x4002
;   __HAL_RCC_GPIOD_CLK_ENABLE();
 8055e06: 6801         	ldr	r1, [r0]
 8055e08: f041 0108    	orr	r1, r1, #0x8
 8055e0c: 6001         	str	r1, [r0]
 8055e0e: 6800         	ldr	r0, [r0]
 8055e10: f000 0008    	and	r0, r0, #0x8
 8055e14: 9000         	str	r0, [sp]
 8055e16: 9800         	ldr	r0, [sp]
 8055e18: e7ff         	b	0x8055e1a <MX_GPIO_Init+0x30> @ imm = #-0x2
;   HAL_GPIO_WritePin(LED9_GPIO_Port, LED9_Pin, GPIO_PIN_SET);
 8055e1a: f7ff fd62    	bl	0x80558e2 <HAL_GPIO_WritePin> @ imm = #-0x53c
 8055e1e: 2008         	movs	r0, #0x8
;   GPIO_InitStruct.Pin = LED9_Pin;
 8055e20: 9001         	str	r0, [sp, #0x4]
 8055e22: 2001         	movs	r0, #0x1
;   GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
 8055e24: 9002         	str	r0, [sp, #0x8]
;   GPIO_InitStruct.Pull = GPIO_PULLUP;
 8055e26: 9003         	str	r0, [sp, #0xc]
 8055e28: 2003         	movs	r0, #0x3
;   GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
 8055e2a: 9004         	str	r0, [sp, #0x10]
 8055e2c: a801         	add	r0, sp, #0x4
;   HAL_GPIO_Init(LED9_GPIO_Port, &GPIO_InitStruct);
 8055e2e: f7ff fba9    	bl	0x8055584 <HAL_GPIO_Init> @ imm = #-0x8ae
; }
 8055e32: b006         	add	sp, #0x18
 8055e34: bd80         	pop	{r7, pc}

08055e36 <vTaskSwitchContext>:
;     {
 8055e36: b580         	push	{r7, lr}
 8055e38: 466f         	mov	r7, sp
 8055e3a: b082         	sub	sp, #0x8
;         if( uxSchedulerSuspended != ( UBaseType_t ) 0U )
 8055e3c: f240 1030    	movw	r0, #0x130
 8055e40: f2c2 0000    	movt	r0, #0x2000
 8055e44: 6800         	ldr	r0, [r0]
 8055e46: b138         	cbz	r0, 0x8055e58 <vTaskSwitchContext+0x22> @ imm = #0xe
 8055e48: e7ff         	b	0x8055e4a <vTaskSwitchContext+0x14> @ imm = #-0x2
;             xYieldPendings[ 0 ] = pdTRUE;
 8055e4a: f240 20ac    	movw	r0, #0x2ac
 8055e4e: f2c2 0000    	movt	r0, #0x2000
 8055e52: 2101         	movs	r1, #0x1
 8055e54: 6001         	str	r1, [r0]
;         }
 8055e56: e04d         	b	0x8055ef4 <vTaskSwitchContext+0xbe> @ imm = #0x9a
;             xYieldPendings[ 0 ] = pdFALSE;
 8055e58: f240 20ac    	movw	r0, #0x2ac
 8055e5c: f2c2 0000    	movt	r0, #0x2000
 8055e60: 2100         	movs	r1, #0x0
 8055e62: 6001         	str	r1, [r0]
;             taskSELECT_HIGHEST_PRIORITY_TASK(); /*lint !e9079 void * is used as this macro is used with timers too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
 8055e64: e7ff         	b	0x8055e66 <vTaskSwitchContext+0x30> @ imm = #-0x2
 8055e66: f240 20a8    	movw	r0, #0x2a8
 8055e6a: f2c2 0000    	movt	r0, #0x2000
 8055e6e: 6800         	ldr	r0, [r0]
 8055e70: 9001         	str	r0, [sp, #0x4]
 8055e72: e7ff         	b	0x8055e74 <vTaskSwitchContext+0x3e> @ imm = #-0x2
 8055e74: 9801         	ldr	r0, [sp, #0x4]
 8055e76: eb00 0080    	add.w	r0, r0, r0, lsl #2
 8055e7a: f240 1168    	movw	r1, #0x168
 8055e7e: f2c2 0100    	movt	r1, #0x2000
 8055e82: f851 0020    	ldr.w	r0, [r1, r0, lsl #2]
 8055e86: b958         	cbnz	r0, 0x8055ea0 <vTaskSwitchContext+0x6a> @ imm = #0x16
 8055e88: e7ff         	b	0x8055e8a <vTaskSwitchContext+0x54> @ imm = #-0x2
 8055e8a: 9801         	ldr	r0, [sp, #0x4]
 8055e8c: b920         	cbnz	r0, 0x8055e98 <vTaskSwitchContext+0x62> @ imm = #0x8
 8055e8e: e7ff         	b	0x8055e90 <vTaskSwitchContext+0x5a> @ imm = #-0x2
 8055e90: f002 fb6e    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0x26dc
 8055e94: e7ff         	b	0x8055e96 <vTaskSwitchContext+0x60> @ imm = #-0x2
 8055e96: e7fe         	b	0x8055e96 <vTaskSwitchContext+0x60> @ imm = #-0x4
 8055e98: 9801         	ldr	r0, [sp, #0x4]
 8055e9a: 3801         	subs	r0, #0x1
 8055e9c: 9001         	str	r0, [sp, #0x4]
 8055e9e: e7e9         	b	0x8055e74 <vTaskSwitchContext+0x3e> @ imm = #-0x2e
 8055ea0: e7ff         	b	0x8055ea2 <vTaskSwitchContext+0x6c> @ imm = #-0x2
 8055ea2: 9801         	ldr	r0, [sp, #0x4]
 8055ea4: eb00 0080    	add.w	r0, r0, r0, lsl #2
 8055ea8: f240 1168    	movw	r1, #0x168
 8055eac: f2c2 0100    	movt	r1, #0x2000
 8055eb0: eb01 0080    	add.w	r0, r1, r0, lsl #2
 8055eb4: 9000         	str	r0, [sp]
 8055eb6: 9800         	ldr	r0, [sp]
 8055eb8: 6841         	ldr	r1, [r0, #0x4]
 8055eba: 6849         	ldr	r1, [r1, #0x4]
 8055ebc: 6041         	str	r1, [r0, #0x4]
 8055ebe: 9800         	ldr	r0, [sp]
 8055ec0: 6841         	ldr	r1, [r0, #0x4]
 8055ec2: 3008         	adds	r0, #0x8
 8055ec4: 4281         	cmp	r1, r0
 8055ec6: d104         	bne	0x8055ed2 <vTaskSwitchContext+0x9c> @ imm = #0x8
 8055ec8: e7ff         	b	0x8055eca <vTaskSwitchContext+0x94> @ imm = #-0x2
 8055eca: 9800         	ldr	r0, [sp]
 8055ecc: 68c1         	ldr	r1, [r0, #0xc]
 8055ece: 6041         	str	r1, [r0, #0x4]
 8055ed0: e7ff         	b	0x8055ed2 <vTaskSwitchContext+0x9c> @ imm = #-0x2
 8055ed2: 9800         	ldr	r0, [sp]
 8055ed4: 6840         	ldr	r0, [r0, #0x4]
 8055ed6: 68c0         	ldr	r0, [r0, #0xc]
 8055ed8: f240 1108    	movw	r1, #0x108
 8055edc: f2c2 0100    	movt	r1, #0x2000
 8055ee0: 6008         	str	r0, [r1]
 8055ee2: e7ff         	b	0x8055ee4 <vTaskSwitchContext+0xae> @ imm = #-0x2
 8055ee4: 9801         	ldr	r0, [sp, #0x4]
 8055ee6: f240 21a8    	movw	r1, #0x2a8
 8055eea: f2c2 0100    	movt	r1, #0x2000
 8055eee: 6008         	str	r0, [r1]
 8055ef0: e7ff         	b	0x8055ef2 <vTaskSwitchContext+0xbc> @ imm = #-0x2
 8055ef2: e7ff         	b	0x8055ef4 <vTaskSwitchContext+0xbe> @ imm = #-0x2
;     }
 8055ef4: b002         	add	sp, #0x8
 8055ef6: bd80         	pop	{r7, pc}

08055ef8 <xTaskCreate>:
;     {
 8055ef8: b580         	push	{r7, lr}
 8055efa: 466f         	mov	r7, sp
 8055efc: b08a         	sub	sp, #0x28
 8055efe: f8d7 c008    	ldr.w	r12, [r7, #0x8]
 8055f02: 9009         	str	r0, [sp, #0x24]
 8055f04: 9108         	str	r1, [sp, #0x20]
 8055f06: f827 2c0a    	strh	r2, [r7, #-10]
 8055f0a: 2000         	movs	r0, #0x0
 8055f0c: 9006         	str	r0, [sp, #0x18]
 8055f0e: 9305         	str	r3, [sp, #0x14]
;         pxNewTCB = prvCreateTask( pxTaskCode, pcName, usStackDepth, pvParameters, uxPriority, pxCreatedTask );
 8055f10: 9809         	ldr	r0, [sp, #0x24]
 8055f12: 9908         	ldr	r1, [sp, #0x20]
 8055f14: f837 2c0a    	ldrh	r2, [r7, #-10]
 8055f18: 9b06         	ldr	r3, [sp, #0x18]
 8055f1a: f8dd c014    	ldr.w	r12, [sp, #0x14]
 8055f1e: f8d7 e008    	ldr.w	lr, [r7, #0x8]
 8055f22: f8cd e004    	str.w	lr, [sp, #0x4]
 8055f26: f8cd c000    	str.w	r12, [sp]
 8055f2a: f000 f811    	bl	0x8055f50 <prvCreateTask> @ imm = #0x22
 8055f2e: 9004         	str	r0, [sp, #0x10]
;         if( pxNewTCB != NULL )
 8055f30: 9804         	ldr	r0, [sp, #0x10]
 8055f32: b130         	cbz	r0, 0x8055f42 <xTaskCreate+0x4a> @ imm = #0xc
 8055f34: e7ff         	b	0x8055f36 <xTaskCreate+0x3e> @ imm = #-0x2
;             prvAddNewTaskToReadyList( pxNewTCB );
 8055f36: 9804         	ldr	r0, [sp, #0x10]
 8055f38: f000 f84f    	bl	0x8055fda <prvAddNewTaskToReadyList> @ imm = #0x9e
 8055f3c: 2001         	movs	r0, #0x1
;             xReturn = pdPASS;
 8055f3e: 9003         	str	r0, [sp, #0xc]
;         }
 8055f40: e003         	b	0x8055f4a <xTaskCreate+0x52> @ imm = #0x6
 8055f42: f04f 30ff    	mov.w	r0, #0xffffffff
;             xReturn = errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY;
 8055f46: 9003         	str	r0, [sp, #0xc]
 8055f48: e7ff         	b	0x8055f4a <xTaskCreate+0x52> @ imm = #-0x2
;         return xReturn;
 8055f4a: 9803         	ldr	r0, [sp, #0xc]
 8055f4c: b00a         	add	sp, #0x28
 8055f4e: bd80         	pop	{r7, pc}

08055f50 <prvCreateTask>:
;     {
 8055f50: b5d0         	push	{r4, r6, r7, lr}
 8055f52: af02         	add	r7, sp, #0x8
 8055f54: b08a         	sub	sp, #0x28
 8055f56: f8d7 c00c    	ldr.w	r12, [r7, #0xc]
 8055f5a: f8d7 c008    	ldr.w	r12, [r7, #0x8]
 8055f5e: 9009         	str	r0, [sp, #0x24]
 8055f60: 9108         	str	r1, [sp, #0x20]
 8055f62: f827 2c12    	strh	r2, [r7, #-18]
 8055f66: 9306         	str	r3, [sp, #0x18]
;             pxStack = pvPortMallocStack( ( ( ( size_t ) usStackDepth ) * sizeof( StackType_t ) ) ); /*lint !e9079 All values returned by pvPortMalloc() have at least the alignment required by the MCU's stack and this allocation is the stack. */
 8055f68: f837 0c12    	ldrh	r0, [r7, #-18]
 8055f6c: 0080         	lsls	r0, r0, #0x2
 8055f6e: f001 fd38    	bl	0x80579e2 <pvPortMalloc> @ imm = #0x1a70
 8055f72: 9004         	str	r0, [sp, #0x10]
;             if( pxStack != NULL )
 8055f74: 9804         	ldr	r0, [sp, #0x10]
 8055f76: b1a8         	cbz	r0, 0x8055fa4 <prvCreateTask+0x54> @ imm = #0x2a
 8055f78: e7ff         	b	0x8055f7a <prvCreateTask+0x2a> @ imm = #-0x2
;                 pxNewTCB = ( TCB_t * ) pvPortMalloc( sizeof( TCB_t ) ); /*lint !e9087 !e9079 All values returned by pvPortMalloc() have at least the alignment required by the MCU's stack, and the first member of TCB_t is always a pointer to the task's stack. */
 8055f7a: 205c         	movs	r0, #0x5c
 8055f7c: f001 fd31    	bl	0x80579e2 <pvPortMalloc> @ imm = #0x1a62
 8055f80: 9005         	str	r0, [sp, #0x14]
;                 if( pxNewTCB != NULL )
 8055f82: 9805         	ldr	r0, [sp, #0x14]
 8055f84: b148         	cbz	r0, 0x8055f9a <prvCreateTask+0x4a> @ imm = #0x12
 8055f86: e7ff         	b	0x8055f88 <prvCreateTask+0x38> @ imm = #-0x2
;                     ( void ) memset( ( void * ) pxNewTCB, 0x00, sizeof( TCB_t ) );
 8055f88: 9805         	ldr	r0, [sp, #0x14]
 8055f8a: 2100         	movs	r1, #0x0
 8055f8c: 225c         	movs	r2, #0x5c
 8055f8e: f7ff f9a7    	bl	0x80552e0 <memset>      @ imm = #-0xcb2
;                     pxNewTCB->pxStack = pxStack;
 8055f92: 9804         	ldr	r0, [sp, #0x10]
 8055f94: 9905         	ldr	r1, [sp, #0x14]
 8055f96: 6308         	str	r0, [r1, #0x30]
;                 }
 8055f98: e003         	b	0x8055fa2 <prvCreateTask+0x52> @ imm = #0x6
;                     vPortFreeStack( pxStack );
 8055f9a: 9804         	ldr	r0, [sp, #0x10]
 8055f9c: f001 fec3    	bl	0x8057d26 <vPortFree>   @ imm = #0x1d86
 8055fa0: e7ff         	b	0x8055fa2 <prvCreateTask+0x52> @ imm = #-0x2
;             }
 8055fa2: e002         	b	0x8055faa <prvCreateTask+0x5a> @ imm = #0x4
 8055fa4: 2000         	movs	r0, #0x0
;                 pxNewTCB = NULL;
 8055fa6: 9005         	str	r0, [sp, #0x14]
 8055fa8: e7ff         	b	0x8055faa <prvCreateTask+0x5a> @ imm = #-0x2
;         if( pxNewTCB != NULL )
 8055faa: 9805         	ldr	r0, [sp, #0x14]
 8055fac: b190         	cbz	r0, 0x8055fd4 <prvCreateTask+0x84> @ imm = #0x24
 8055fae: e7ff         	b	0x8055fb0 <prvCreateTask+0x60> @ imm = #-0x2
;             prvInitialiseNewTask( pxTaskCode, pcName, ( uint32_t ) usStackDepth, pvParameters, uxPriority, pxCreatedTask, pxNewTCB, NULL );
 8055fb0: 9809         	ldr	r0, [sp, #0x24]
 8055fb2: 9908         	ldr	r1, [sp, #0x20]
 8055fb4: f837 2c12    	ldrh	r2, [r7, #-18]
 8055fb8: 9b06         	ldr	r3, [sp, #0x18]
 8055fba: f8d7 c008    	ldr.w	r12, [r7, #0x8]
 8055fbe: f8d7 e00c    	ldr.w	lr, [r7, #0xc]
 8055fc2: 9c05         	ldr	r4, [sp, #0x14]
 8055fc4: 9402         	str	r4, [sp, #0x8]
 8055fc6: f8cd e004    	str.w	lr, [sp, #0x4]
 8055fca: f8cd c000    	str.w	r12, [sp]
 8055fce: f000 f8fa    	bl	0x80561c6 <prvInitialiseNewTask> @ imm = #0x1f4
;         }
 8055fd2: e7ff         	b	0x8055fd4 <prvCreateTask+0x84> @ imm = #-0x2
;         return pxNewTCB;
 8055fd4: 9805         	ldr	r0, [sp, #0x14]
 8055fd6: b00a         	add	sp, #0x28
 8055fd8: bdd0         	pop	{r4, r6, r7, pc}

08055fda <prvAddNewTaskToReadyList>:
;     {
 8055fda: b580         	push	{r7, lr}
 8055fdc: 466f         	mov	r7, sp
 8055fde: b082         	sub	sp, #0x8
 8055fe0: 9001         	str	r0, [sp, #0x4]
;         taskENTER_CRITICAL();
 8055fe2: f001 ffe1    	bl	0x8057fa8 <vPortEnterCritical> @ imm = #0x1fc2
;             uxCurrentNumberOfTasks++;
 8055fe6: f240 1028    	movw	r0, #0x128
 8055fea: f2c2 0000    	movt	r0, #0x2000
 8055fee: 6801         	ldr	r1, [r0]
 8055ff0: 3101         	adds	r1, #0x1
 8055ff2: 6001         	str	r1, [r0]
;             if( pxCurrentTCB == NULL )
 8055ff4: f240 1008    	movw	r0, #0x108
 8055ff8: f2c2 0000    	movt	r0, #0x2000
 8055ffc: 6800         	ldr	r0, [r0]
 8055ffe: b998         	cbnz	r0, 0x8056028 <prvAddNewTaskToReadyList+0x4e> @ imm = #0x26
 8056000: e7ff         	b	0x8056002 <prvAddNewTaskToReadyList+0x28> @ imm = #-0x2
;                 pxCurrentTCB = pxNewTCB;
 8056002: 9801         	ldr	r0, [sp, #0x4]
 8056004: f240 1108    	movw	r1, #0x108
 8056008: f2c2 0100    	movt	r1, #0x2000
 805600c: 6008         	str	r0, [r1]
;                 if( uxCurrentNumberOfTasks == ( UBaseType_t ) 1 )
 805600e: f240 1028    	movw	r0, #0x128
 8056012: f2c2 0000    	movt	r0, #0x2000
 8056016: 6800         	ldr	r0, [r0]
 8056018: 2801         	cmp	r0, #0x1
 805601a: d103         	bne	0x8056024 <prvAddNewTaskToReadyList+0x4a> @ imm = #0x6
 805601c: e7ff         	b	0x805601e <prvAddNewTaskToReadyList+0x44> @ imm = #-0x2
;                     prvInitialiseTaskLists();
 805601e: f000 f88c    	bl	0x805613a <prvInitialiseTaskLists> @ imm = #0x118
;                 }
 8056022: e000         	b	0x8056026 <prvAddNewTaskToReadyList+0x4c> @ imm = #0x0
 8056024: e7ff         	b	0x8056026 <prvAddNewTaskToReadyList+0x4c> @ imm = #-0x2
;             }
 8056026: e01c         	b	0x8056062 <prvAddNewTaskToReadyList+0x88> @ imm = #0x38
;                 if( xSchedulerRunning == pdFALSE )
 8056028: f240 102c    	movw	r0, #0x12c
 805602c: f2c2 0000    	movt	r0, #0x2000
 8056030: 6800         	ldr	r0, [r0]
 8056032: b9a0         	cbnz	r0, 0x805605e <prvAddNewTaskToReadyList+0x84> @ imm = #0x28
 8056034: e7ff         	b	0x8056036 <prvAddNewTaskToReadyList+0x5c> @ imm = #-0x2
;                     if( pxCurrentTCB->uxPriority <= pxNewTCB->uxPriority )
 8056036: f240 1008    	movw	r0, #0x108
 805603a: f2c2 0000    	movt	r0, #0x2000
 805603e: 6800         	ldr	r0, [r0]
 8056040: 6ac0         	ldr	r0, [r0, #0x2c]
 8056042: 9901         	ldr	r1, [sp, #0x4]
 8056044: 6ac9         	ldr	r1, [r1, #0x2c]
 8056046: 4288         	cmp	r0, r1
 8056048: d807         	bhi	0x805605a <prvAddNewTaskToReadyList+0x80> @ imm = #0xe
 805604a: e7ff         	b	0x805604c <prvAddNewTaskToReadyList+0x72> @ imm = #-0x2
;                         pxCurrentTCB = pxNewTCB;
 805604c: 9801         	ldr	r0, [sp, #0x4]
 805604e: f240 1108    	movw	r1, #0x108
 8056052: f2c2 0100    	movt	r1, #0x2000
 8056056: 6008         	str	r0, [r1]
;                     }
 8056058: e000         	b	0x805605c <prvAddNewTaskToReadyList+0x82> @ imm = #0x0
 805605a: e7ff         	b	0x805605c <prvAddNewTaskToReadyList+0x82> @ imm = #-0x2
;                 }
 805605c: e000         	b	0x8056060 <prvAddNewTaskToReadyList+0x86> @ imm = #0x0
 805605e: e7ff         	b	0x8056060 <prvAddNewTaskToReadyList+0x86> @ imm = #-0x2
 8056060: e7ff         	b	0x8056062 <prvAddNewTaskToReadyList+0x88> @ imm = #-0x2
;             uxTaskNumber++;
 8056062: f240 100c    	movw	r0, #0x10c
 8056066: f2c2 0000    	movt	r0, #0x2000
 805606a: 6801         	ldr	r1, [r0]
 805606c: 3101         	adds	r1, #0x1
 805606e: 6001         	str	r1, [r0]
;                 pxNewTCB->uxTCBNumber = uxTaskNumber;
 8056070: 6800         	ldr	r0, [r0]
 8056072: 9901         	ldr	r1, [sp, #0x4]
 8056074: 6448         	str	r0, [r1, #0x44]
;             prvAddTaskToReadyList( pxNewTCB );
 8056076: e7ff         	b	0x8056078 <prvAddNewTaskToReadyList+0x9e> @ imm = #-0x2
 8056078: e7ff         	b	0x805607a <prvAddNewTaskToReadyList+0xa0> @ imm = #-0x2
 805607a: 9801         	ldr	r0, [sp, #0x4]
 805607c: 6ac0         	ldr	r0, [r0, #0x2c]
 805607e: f240 21a8    	movw	r1, #0x2a8
 8056082: f2c2 0100    	movt	r1, #0x2000
 8056086: 6809         	ldr	r1, [r1]
 8056088: 4288         	cmp	r0, r1
 805608a: d908         	bls	0x805609e <prvAddNewTaskToReadyList+0xc4> @ imm = #0x10
 805608c: e7ff         	b	0x805608e <prvAddNewTaskToReadyList+0xb4> @ imm = #-0x2
 805608e: 9801         	ldr	r0, [sp, #0x4]
 8056090: 6ac0         	ldr	r0, [r0, #0x2c]
 8056092: f240 21a8    	movw	r1, #0x2a8
 8056096: f2c2 0100    	movt	r1, #0x2000
 805609a: 6008         	str	r0, [r1]
 805609c: e7ff         	b	0x805609e <prvAddNewTaskToReadyList+0xc4> @ imm = #-0x2
 805609e: e7ff         	b	0x80560a0 <prvAddNewTaskToReadyList+0xc6> @ imm = #-0x2
 80560a0: e7ff         	b	0x80560a2 <prvAddNewTaskToReadyList+0xc8> @ imm = #-0x2
 80560a2: 9801         	ldr	r0, [sp, #0x4]
 80560a4: 6ac0         	ldr	r0, [r0, #0x2c]
 80560a6: eb00 0180    	add.w	r1, r0, r0, lsl #2
 80560aa: f240 1068    	movw	r0, #0x168
 80560ae: f2c2 0000    	movt	r0, #0x2000
 80560b2: eb00 0181    	add.w	r1, r0, r1, lsl #2
 80560b6: 6849         	ldr	r1, [r1, #0x4]
 80560b8: 9100         	str	r1, [sp]
 80560ba: 9900         	ldr	r1, [sp]
 80560bc: 9a01         	ldr	r2, [sp, #0x4]
 80560be: 6091         	str	r1, [r2, #0x8]
 80560c0: 9900         	ldr	r1, [sp]
 80560c2: 6889         	ldr	r1, [r1, #0x8]
 80560c4: 9a01         	ldr	r2, [sp, #0x4]
 80560c6: 60d1         	str	r1, [r2, #0xc]
 80560c8: 9901         	ldr	r1, [sp, #0x4]
 80560ca: 3104         	adds	r1, #0x4
 80560cc: 9a00         	ldr	r2, [sp]
 80560ce: 6892         	ldr	r2, [r2, #0x8]
 80560d0: 6051         	str	r1, [r2, #0x4]
 80560d2: 9901         	ldr	r1, [sp, #0x4]
 80560d4: 3104         	adds	r1, #0x4
 80560d6: 9a00         	ldr	r2, [sp]
 80560d8: 6091         	str	r1, [r2, #0x8]
 80560da: 9901         	ldr	r1, [sp, #0x4]
 80560dc: 6aca         	ldr	r2, [r1, #0x2c]
 80560de: eb02 0282    	add.w	r2, r2, r2, lsl #2
 80560e2: eb00 0282    	add.w	r2, r0, r2, lsl #2
 80560e6: 614a         	str	r2, [r1, #0x14]
 80560e8: 9901         	ldr	r1, [sp, #0x4]
 80560ea: 6ac9         	ldr	r1, [r1, #0x2c]
 80560ec: eb01 0181    	add.w	r1, r1, r1, lsl #2
 80560f0: f850 2021    	ldr.w	r2, [r0, r1, lsl #2]
 80560f4: 3201         	adds	r2, #0x1
 80560f6: f840 2021    	str.w	r2, [r0, r1, lsl #2]
 80560fa: e7ff         	b	0x80560fc <prvAddNewTaskToReadyList+0x122> @ imm = #-0x2
 80560fc: e7ff         	b	0x80560fe <prvAddNewTaskToReadyList+0x124> @ imm = #-0x2
;         taskEXIT_CRITICAL();
 80560fe: f001 ff63    	bl	0x8057fc8 <vPortExitCritical> @ imm = #0x1ec6
;         if( xSchedulerRunning != pdFALSE )
 8056102: f240 102c    	movw	r0, #0x12c
 8056106: f2c2 0000    	movt	r0, #0x2000
 805610a: 6800         	ldr	r0, [r0]
 805610c: b190         	cbz	r0, 0x8056134 <prvAddNewTaskToReadyList+0x15a> @ imm = #0x24
 805610e: e7ff         	b	0x8056110 <prvAddNewTaskToReadyList+0x136> @ imm = #-0x2
;             taskYIELD_ANY_CORE_IF_USING_PREEMPTION( pxNewTCB );
 8056110: e7ff         	b	0x8056112 <prvAddNewTaskToReadyList+0x138> @ imm = #-0x2
 8056112: f240 1008    	movw	r0, #0x108
 8056116: f2c2 0000    	movt	r0, #0x2000
 805611a: 6800         	ldr	r0, [r0]
 805611c: 6ac0         	ldr	r0, [r0, #0x2c]
 805611e: 9901         	ldr	r1, [sp, #0x4]
 8056120: 6ac9         	ldr	r1, [r1, #0x2c]
 8056122: 4288         	cmp	r0, r1
 8056124: d203         	bhs	0x805612e <prvAddNewTaskToReadyList+0x154> @ imm = #0x6
 8056126: e7ff         	b	0x8056128 <prvAddNewTaskToReadyList+0x14e> @ imm = #-0x2
 8056128: f001 ff32    	bl	0x8057f90 <vPortYield>  @ imm = #0x1e64
 805612c: e000         	b	0x8056130 <prvAddNewTaskToReadyList+0x156> @ imm = #0x0
 805612e: e7ff         	b	0x8056130 <prvAddNewTaskToReadyList+0x156> @ imm = #-0x2
;             taskYIELD_ANY_CORE_IF_USING_PREEMPTION( pxNewTCB );
 8056130: e7ff         	b	0x8056132 <prvAddNewTaskToReadyList+0x158> @ imm = #-0x2
;         }
 8056132: e000         	b	0x8056136 <prvAddNewTaskToReadyList+0x15c> @ imm = #0x0
 8056134: e7ff         	b	0x8056136 <prvAddNewTaskToReadyList+0x15c> @ imm = #-0x2
;     }
 8056136: b002         	add	sp, #0x8
 8056138: bd80         	pop	{r7, pc}

0805613a <prvInitialiseTaskLists>:
; {
 805613a: b5b0         	push	{r4, r5, r7, lr}
 805613c: af02         	add	r7, sp, #0x8
 805613e: b082         	sub	sp, #0x8
 8056140: 2000         	movs	r0, #0x0
;     for( uxPriority = ( UBaseType_t ) 0U; uxPriority < ( UBaseType_t ) configMAX_PRIORITIES; uxPriority++ )
 8056142: 9001         	str	r0, [sp, #0x4]
 8056144: e7ff         	b	0x8056146 <prvInitialiseTaskLists+0xc> @ imm = #-0x2
 8056146: 9801         	ldr	r0, [sp, #0x4]
 8056148: 280f         	cmp	r0, #0xf
 805614a: d810         	bhi	0x805616e <prvInitialiseTaskLists+0x34> @ imm = #0x20
 805614c: e7ff         	b	0x805614e <prvInitialiseTaskLists+0x14> @ imm = #-0x2
;         vListInitialise( &( pxReadyTasksLists[ uxPriority ] ) );
 805614e: 9801         	ldr	r0, [sp, #0x4]
 8056150: eb00 0080    	add.w	r0, r0, r0, lsl #2
 8056154: f240 1168    	movw	r1, #0x168
 8056158: f2c2 0100    	movt	r1, #0x2000
 805615c: eb01 0080    	add.w	r0, r1, r0, lsl #2
 8056160: f000 fea0    	bl	0x8056ea4 <vListInitialise> @ imm = #0xd40
;     }
 8056164: e7ff         	b	0x8056166 <prvInitialiseTaskLists+0x2c> @ imm = #-0x2
;     for( uxPriority = ( UBaseType_t ) 0U; uxPriority < ( UBaseType_t ) configMAX_PRIORITIES; uxPriority++ )
 8056166: 9801         	ldr	r0, [sp, #0x4]
 8056168: 3001         	adds	r0, #0x1
 805616a: 9001         	str	r0, [sp, #0x4]
 805616c: e7eb         	b	0x8056146 <prvInitialiseTaskLists+0xc> @ imm = #-0x2a
;     vListInitialise( &xDelayedTaskList1 );
 805616e: f240 24c0    	movw	r4, #0x2c0
 8056172: f2c2 0400    	movt	r4, #0x2000
 8056176: 4620         	mov	r0, r4
 8056178: f000 fe94    	bl	0x8056ea4 <vListInitialise> @ imm = #0xd28
;     vListInitialise( &xDelayedTaskList2 );
 805617c: f240 25d4    	movw	r5, #0x2d4
 8056180: f2c2 0500    	movt	r5, #0x2000
 8056184: 4628         	mov	r0, r5
 8056186: f000 fe8d    	bl	0x8056ea4 <vListInitialise> @ imm = #0xd1a
;     vListInitialise( &xPendingReadyList );
 805618a: f240 1040    	movw	r0, #0x140
 805618e: f2c2 0000    	movt	r0, #0x2000
 8056192: f000 fe87    	bl	0x8056ea4 <vListInitialise> @ imm = #0xd0e
;         vListInitialise( &xTasksWaitingTermination );
 8056196: f240 1010    	movw	r0, #0x110
 805619a: f2c2 0000    	movt	r0, #0x2000
 805619e: f000 fe81    	bl	0x8056ea4 <vListInitialise> @ imm = #0xd02
;         vListInitialise( &xSuspendedTaskList );
 80561a2: f240 1054    	movw	r0, #0x154
 80561a6: f2c2 0000    	movt	r0, #0x2000
 80561aa: f000 fe7b    	bl	0x8056ea4 <vListInitialise> @ imm = #0xcf6
;     pxDelayedTaskList = &xDelayedTaskList1;
 80561ae: f240 1038    	movw	r0, #0x138
 80561b2: f2c2 0000    	movt	r0, #0x2000
 80561b6: 6004         	str	r4, [r0]
;     pxOverflowDelayedTaskList = &xDelayedTaskList2;
 80561b8: f240 103c    	movw	r0, #0x13c
 80561bc: f2c2 0000    	movt	r0, #0x2000
 80561c0: 6005         	str	r5, [r0]
; }
 80561c2: b002         	add	sp, #0x8
 80561c4: bdb0         	pop	{r4, r5, r7, pc}

080561c6 <prvInitialiseNewTask>:
; {
 80561c6: b580         	push	{r7, lr}
 80561c8: 466f         	mov	r7, sp
 80561ca: b088         	sub	sp, #0x20
 80561cc: f8d7 c010    	ldr.w	r12, [r7, #0x10]
 80561d0: f8d7 c00c    	ldr.w	r12, [r7, #0xc]
 80561d4: f8d7 c008    	ldr.w	r12, [r7, #0x8]
 80561d8: 9007         	str	r0, [sp, #0x1c]
 80561da: 9106         	str	r1, [sp, #0x18]
 80561dc: 9205         	str	r2, [sp, #0x14]
 80561de: 9304         	str	r3, [sp, #0x10]
 80561e0: 2000         	movs	r0, #0x0
 80561e2: 9003         	str	r0, [sp, #0xc]
;         ( void ) memset( pxNewTCB->pxStack, ( int ) tskSTACK_FILL_BYTE, ( size_t ) ulStackDepth * sizeof( StackType_t ) );
 80561e4: 6938         	ldr	r0, [r7, #0x10]
 80561e6: 6b00         	ldr	r0, [r0, #0x30]
 80561e8: 9905         	ldr	r1, [sp, #0x14]
 80561ea: 008a         	lsls	r2, r1, #0x2
 80561ec: 21a5         	movs	r1, #0xa5
 80561ee: f7ff f877    	bl	0x80552e0 <memset>      @ imm = #-0xf12
;         pxTopOfStack = &( pxNewTCB->pxStack[ ulStackDepth - ( uint32_t ) 1 ] );
 80561f2: 6938         	ldr	r0, [r7, #0x10]
 80561f4: 6b00         	ldr	r0, [r0, #0x30]
 80561f6: 9905         	ldr	r1, [sp, #0x14]
 80561f8: eb00 0081    	add.w	r0, r0, r1, lsl #2
 80561fc: 3804         	subs	r0, #0x4
 80561fe: 9002         	str	r0, [sp, #0x8]
;         pxTopOfStack = ( StackType_t * ) ( ( ( portPOINTER_SIZE_TYPE ) pxTopOfStack ) & ( ~( ( portPOINTER_SIZE_TYPE ) portBYTE_ALIGNMENT_MASK ) ) ); /*lint !e923 !e9033 !e9078 MISRA exception.  Avoiding casts between pointers and integers is not practical.  Size differences accounted for using portPOINTER_SIZE_TYPE type.  Checked by assert(). */
 8056200: 9802         	ldr	r0, [sp, #0x8]
 8056202: f020 0007    	bic	r0, r0, #0x7
 8056206: 9002         	str	r0, [sp, #0x8]
;         configASSERT( ( ( ( portPOINTER_SIZE_TYPE ) pxTopOfStack & ( portPOINTER_SIZE_TYPE ) portBYTE_ALIGNMENT_MASK ) == 0UL ) );
 8056208: f89d 0008    	ldrb.w	r0, [sp, #0x8]
 805620c: 0740         	lsls	r0, r0, #0x1d
 805620e: b120         	cbz	r0, 0x805621a <prvInitialiseNewTask+0x54> @ imm = #0x8
 8056210: e7ff         	b	0x8056212 <prvInitialiseNewTask+0x4c> @ imm = #-0x2
 8056212: f002 f9ad    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0x235a
 8056216: e7ff         	b	0x8056218 <prvInitialiseNewTask+0x52> @ imm = #-0x2
 8056218: e7fe         	b	0x8056218 <prvInitialiseNewTask+0x52> @ imm = #-0x4
;     if( pcName != NULL )
 805621a: 9806         	ldr	r0, [sp, #0x18]
 805621c: b300         	cbz	r0, 0x8056260 <prvInitialiseNewTask+0x9a> @ imm = #0x40
 805621e: e7ff         	b	0x8056220 <prvInitialiseNewTask+0x5a> @ imm = #-0x2
 8056220: 2000         	movs	r0, #0x0
;         for( x = ( UBaseType_t ) 0; x < ( UBaseType_t ) configMAX_TASK_NAME_LEN; x++ )
 8056222: 9001         	str	r0, [sp, #0x4]
 8056224: e7ff         	b	0x8056226 <prvInitialiseNewTask+0x60> @ imm = #-0x2
 8056226: 9801         	ldr	r0, [sp, #0x4]
 8056228: 280f         	cmp	r0, #0xf
 805622a: d813         	bhi	0x8056254 <prvInitialiseNewTask+0x8e> @ imm = #0x26
 805622c: e7ff         	b	0x805622e <prvInitialiseNewTask+0x68> @ imm = #-0x2
;             pxNewTCB->pcTaskName[ x ] = pcName[ x ];
 805622e: 9806         	ldr	r0, [sp, #0x18]
 8056230: 9901         	ldr	r1, [sp, #0x4]
 8056232: 5c40         	ldrb	r0, [r0, r1]
 8056234: 693a         	ldr	r2, [r7, #0x10]
 8056236: 4411         	add	r1, r2
 8056238: f881 0034    	strb.w	r0, [r1, #0x34]
;             if( pcName[ x ] == ( char ) 0x00 )
 805623c: 9806         	ldr	r0, [sp, #0x18]
 805623e: 9901         	ldr	r1, [sp, #0x4]
 8056240: 5c40         	ldrb	r0, [r0, r1]
 8056242: b908         	cbnz	r0, 0x8056248 <prvInitialiseNewTask+0x82> @ imm = #0x2
 8056244: e7ff         	b	0x8056246 <prvInitialiseNewTask+0x80> @ imm = #-0x2
;                 break;
 8056246: e006         	b	0x8056256 <prvInitialiseNewTask+0x90> @ imm = #0xc
 8056248: e7ff         	b	0x805624a <prvInitialiseNewTask+0x84> @ imm = #-0x2
;         }
 805624a: e7ff         	b	0x805624c <prvInitialiseNewTask+0x86> @ imm = #-0x2
;         for( x = ( UBaseType_t ) 0; x < ( UBaseType_t ) configMAX_TASK_NAME_LEN; x++ )
 805624c: 9801         	ldr	r0, [sp, #0x4]
 805624e: 3001         	adds	r0, #0x1
 8056250: 9001         	str	r0, [sp, #0x4]
 8056252: e7e8         	b	0x8056226 <prvInitialiseNewTask+0x60> @ imm = #-0x30
;         pxNewTCB->pcTaskName[ configMAX_TASK_NAME_LEN - 1 ] = '\0';
 8056254: e7ff         	b	0x8056256 <prvInitialiseNewTask+0x90> @ imm = #-0x2
 8056256: 6938         	ldr	r0, [r7, #0x10]
 8056258: 2100         	movs	r1, #0x0
 805625a: f880 1043    	strb.w	r1, [r0, #0x43]
;     }
 805625e: e000         	b	0x8056262 <prvInitialiseNewTask+0x9c> @ imm = #0x0
 8056260: e7ff         	b	0x8056262 <prvInitialiseNewTask+0x9c> @ imm = #-0x2
;     configASSERT( uxPriority < configMAX_PRIORITIES );
 8056262: 68b8         	ldr	r0, [r7, #0x8]
 8056264: 2810         	cmp	r0, #0x10
 8056266: d304         	blo	0x8056272 <prvInitialiseNewTask+0xac> @ imm = #0x8
 8056268: e7ff         	b	0x805626a <prvInitialiseNewTask+0xa4> @ imm = #-0x2
 805626a: f002 f981    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0x2302
 805626e: e7ff         	b	0x8056270 <prvInitialiseNewTask+0xaa> @ imm = #-0x2
 8056270: e7fe         	b	0x8056270 <prvInitialiseNewTask+0xaa> @ imm = #-0x4
;     if( uxPriority >= ( UBaseType_t ) configMAX_PRIORITIES )
 8056272: 68b8         	ldr	r0, [r7, #0x8]
 8056274: 2810         	cmp	r0, #0x10
 8056276: d303         	blo	0x8056280 <prvInitialiseNewTask+0xba> @ imm = #0x6
 8056278: e7ff         	b	0x805627a <prvInitialiseNewTask+0xb4> @ imm = #-0x2
 805627a: 200f         	movs	r0, #0xf
;         uxPriority = ( UBaseType_t ) configMAX_PRIORITIES - ( UBaseType_t ) 1U;
 805627c: 60b8         	str	r0, [r7, #0x8]
;     }
 805627e: e000         	b	0x8056282 <prvInitialiseNewTask+0xbc> @ imm = #0x0
 8056280: e7ff         	b	0x8056282 <prvInitialiseNewTask+0xbc> @ imm = #-0x2
;     pxNewTCB->uxPriority = uxPriority;
 8056282: 68b8         	ldr	r0, [r7, #0x8]
 8056284: 6939         	ldr	r1, [r7, #0x10]
 8056286: 62c8         	str	r0, [r1, #0x2c]
;         pxNewTCB->uxBasePriority = uxPriority;
 8056288: 68b8         	ldr	r0, [r7, #0x8]
 805628a: 6939         	ldr	r1, [r7, #0x10]
 805628c: 64c8         	str	r0, [r1, #0x4c]
;     vListInitialiseItem( &( pxNewTCB->xStateListItem ) );
 805628e: 6938         	ldr	r0, [r7, #0x10]
 8056290: 3004         	adds	r0, #0x4
 8056292: f000 fe1e    	bl	0x8056ed2 <vListInitialiseItem> @ imm = #0xc3c
;     vListInitialiseItem( &( pxNewTCB->xEventListItem ) );
 8056296: 6938         	ldr	r0, [r7, #0x10]
 8056298: 3018         	adds	r0, #0x18
 805629a: f000 fe1a    	bl	0x8056ed2 <vListInitialiseItem> @ imm = #0xc34
;     listSET_LIST_ITEM_OWNER( &( pxNewTCB->xStateListItem ), pxNewTCB );
 805629e: 6938         	ldr	r0, [r7, #0x10]
 80562a0: 6100         	str	r0, [r0, #0x10]
;     listSET_LIST_ITEM_VALUE( &( pxNewTCB->xEventListItem ), ( TickType_t ) configMAX_PRIORITIES - ( TickType_t ) uxPriority ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
 80562a2: 68b8         	ldr	r0, [r7, #0x8]
 80562a4: f1c0 0010    	rsb.w	r0, r0, #0x10
 80562a8: 6939         	ldr	r1, [r7, #0x10]
 80562aa: 6188         	str	r0, [r1, #0x18]
;     listSET_LIST_ITEM_OWNER( &( pxNewTCB->xEventListItem ), pxNewTCB );
 80562ac: 6938         	ldr	r0, [r7, #0x10]
 80562ae: 6240         	str	r0, [r0, #0x24]
;                 pxNewTCB->pxTopOfStack = pxPortInitialiseStack( pxTopOfStack, pxNewTCB->pxStack, pxTaskCode, pvParameters );
 80562b0: 9802         	ldr	r0, [sp, #0x8]
 80562b2: 6939         	ldr	r1, [r7, #0x10]
 80562b4: 6b09         	ldr	r1, [r1, #0x30]
 80562b6: 9a07         	ldr	r2, [sp, #0x1c]
 80562b8: 9b04         	ldr	r3, [sp, #0x10]
 80562ba: f002 f816    	bl	0x80582ea <pxPortInitialiseStack> @ imm = #0x202c
 80562be: 6939         	ldr	r1, [r7, #0x10]
 80562c0: 6008         	str	r0, [r1]
;     if( pxCreatedTask != NULL )
 80562c2: 68f8         	ldr	r0, [r7, #0xc]
 80562c4: b120         	cbz	r0, 0x80562d0 <prvInitialiseNewTask+0x10a> @ imm = #0x8
 80562c6: e7ff         	b	0x80562c8 <prvInitialiseNewTask+0x102> @ imm = #-0x2
;         *pxCreatedTask = ( TaskHandle_t ) pxNewTCB;
 80562c8: 6938         	ldr	r0, [r7, #0x10]
 80562ca: 68f9         	ldr	r1, [r7, #0xc]
 80562cc: 6008         	str	r0, [r1]
;     }
 80562ce: e000         	b	0x80562d2 <prvInitialiseNewTask+0x10c> @ imm = #0x0
 80562d0: e7ff         	b	0x80562d2 <prvInitialiseNewTask+0x10c> @ imm = #-0x2
; }
 80562d2: b008         	add	sp, #0x20
 80562d4: bd80         	pop	{r7, pc}

080562d6 <vTaskSuspendAll>:
;         ++uxSchedulerSuspended;
 80562d6: f240 1030    	movw	r0, #0x130
 80562da: f2c2 0000    	movt	r0, #0x2000
 80562de: 6801         	ldr	r1, [r0]
 80562e0: 3101         	adds	r1, #0x1
 80562e2: 6001         	str	r1, [r0]
; }
 80562e4: 4770         	bx	lr

080562e6 <xTaskResumeAll>:
; {
 80562e6: b5d0         	push	{r4, r6, r7, lr}
 80562e8: af02         	add	r7, sp, #0x8
 80562ea: b088         	sub	sp, #0x20
 80562ec: 2400         	movs	r4, #0x0
;     TCB_t * pxTCB = NULL;
 80562ee: 9407         	str	r4, [sp, #0x1c]
;     BaseType_t xAlreadyYielded = pdFALSE;
 80562f0: 9406         	str	r4, [sp, #0x18]
;         taskENTER_CRITICAL();
 80562f2: f001 fe59    	bl	0x8057fa8 <vPortEnterCritical> @ imm = #0x1cb2
;             xCoreID = ( BaseType_t ) portGET_CORE_ID();
 80562f6: 9405         	str	r4, [sp, #0x14]
;             configASSERT( uxSchedulerSuspended != 0U );
 80562f8: f240 1030    	movw	r0, #0x130
 80562fc: f2c2 0000    	movt	r0, #0x2000
 8056300: 6800         	ldr	r0, [r0]
 8056302: b920         	cbnz	r0, 0x805630e <xTaskResumeAll+0x28> @ imm = #0x8
 8056304: e7ff         	b	0x8056306 <xTaskResumeAll+0x20> @ imm = #-0x2
 8056306: f002 f933    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0x2266
 805630a: e7ff         	b	0x805630c <xTaskResumeAll+0x26> @ imm = #-0x2
 805630c: e7fe         	b	0x805630c <xTaskResumeAll+0x26> @ imm = #-0x4
;             --uxSchedulerSuspended;
 805630e: f240 1030    	movw	r0, #0x130
 8056312: f2c2 0000    	movt	r0, #0x2000
 8056316: 6801         	ldr	r1, [r0]
 8056318: 3901         	subs	r1, #0x1
 805631a: 6001         	str	r1, [r0]
;             if( uxSchedulerSuspended == ( UBaseType_t ) 0U )
 805631c: 6800         	ldr	r0, [r0]
 805631e: 2800         	cmp	r0, #0x0
 8056320: f040 80fb    	bne.w	0x805651a <xTaskResumeAll+0x234> @ imm = #0x1f6
 8056324: e7ff         	b	0x8056326 <xTaskResumeAll+0x40> @ imm = #-0x2
;                 if( uxCurrentNumberOfTasks > ( UBaseType_t ) 0U )
 8056326: f240 1028    	movw	r0, #0x128
 805632a: f2c2 0000    	movt	r0, #0x2000
 805632e: 6800         	ldr	r0, [r0]
 8056330: 2800         	cmp	r0, #0x0
 8056332: f000 80f1    	beq.w	0x8056518 <xTaskResumeAll+0x232> @ imm = #0x1e2
 8056336: e7ff         	b	0x8056338 <xTaskResumeAll+0x52> @ imm = #-0x2
;                     while( listLIST_IS_EMPTY( &xPendingReadyList ) == pdFALSE )
 8056338: e7ff         	b	0x805633a <xTaskResumeAll+0x54> @ imm = #-0x2
 805633a: f240 1040    	movw	r0, #0x140
 805633e: f2c2 0000    	movt	r0, #0x2000
 8056342: 6800         	ldr	r0, [r0]
 8056344: 2800         	cmp	r0, #0x0
 8056346: f000 80a2    	beq.w	0x805648e <xTaskResumeAll+0x1a8> @ imm = #0x144
 805634a: e7ff         	b	0x805634c <xTaskResumeAll+0x66> @ imm = #-0x2
;                         pxTCB = listGET_OWNER_OF_HEAD_ENTRY( ( &xPendingReadyList ) ); /*lint !e9079 void * is used as this macro is used with timers too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
 805634c: f240 1040    	movw	r0, #0x140
 8056350: f2c2 0000    	movt	r0, #0x2000
 8056354: 68c0         	ldr	r0, [r0, #0xc]
 8056356: 68c0         	ldr	r0, [r0, #0xc]
 8056358: 9007         	str	r0, [sp, #0x1c]
;                         listREMOVE_ITEM( &( pxTCB->xEventListItem ) );
 805635a: e7ff         	b	0x805635c <xTaskResumeAll+0x76> @ imm = #-0x2
 805635c: 9807         	ldr	r0, [sp, #0x1c]
 805635e: 6a80         	ldr	r0, [r0, #0x28]
 8056360: 9004         	str	r0, [sp, #0x10]
 8056362: 9807         	ldr	r0, [sp, #0x1c]
 8056364: 69c1         	ldr	r1, [r0, #0x1c]
 8056366: 6a00         	ldr	r0, [r0, #0x20]
 8056368: 6088         	str	r0, [r1, #0x8]
 805636a: 9807         	ldr	r0, [sp, #0x1c]
 805636c: 69c1         	ldr	r1, [r0, #0x1c]
 805636e: 6a00         	ldr	r0, [r0, #0x20]
 8056370: 6041         	str	r1, [r0, #0x4]
 8056372: 9804         	ldr	r0, [sp, #0x10]
 8056374: 6840         	ldr	r0, [r0, #0x4]
 8056376: 9907         	ldr	r1, [sp, #0x1c]
 8056378: 3118         	adds	r1, #0x18
 805637a: 4288         	cmp	r0, r1
 805637c: d105         	bne	0x805638a <xTaskResumeAll+0xa4> @ imm = #0xa
 805637e: e7ff         	b	0x8056380 <xTaskResumeAll+0x9a> @ imm = #-0x2
 8056380: 9807         	ldr	r0, [sp, #0x1c]
 8056382: 6a00         	ldr	r0, [r0, #0x20]
 8056384: 9904         	ldr	r1, [sp, #0x10]
 8056386: 6048         	str	r0, [r1, #0x4]
 8056388: e7ff         	b	0x805638a <xTaskResumeAll+0xa4> @ imm = #-0x2
 805638a: 9807         	ldr	r0, [sp, #0x1c]
 805638c: 2100         	movs	r1, #0x0
 805638e: 6281         	str	r1, [r0, #0x28]
 8056390: 9804         	ldr	r0, [sp, #0x10]
 8056392: 6801         	ldr	r1, [r0]
 8056394: 3901         	subs	r1, #0x1
 8056396: 6001         	str	r1, [r0]
 8056398: e7ff         	b	0x805639a <xTaskResumeAll+0xb4> @ imm = #-0x2
;                         listREMOVE_ITEM( &( pxTCB->xStateListItem ) );
 805639a: e7ff         	b	0x805639c <xTaskResumeAll+0xb6> @ imm = #-0x2
 805639c: 9807         	ldr	r0, [sp, #0x1c]
 805639e: 6940         	ldr	r0, [r0, #0x14]
 80563a0: 9003         	str	r0, [sp, #0xc]
 80563a2: 9807         	ldr	r0, [sp, #0x1c]
 80563a4: 6881         	ldr	r1, [r0, #0x8]
 80563a6: 68c0         	ldr	r0, [r0, #0xc]
 80563a8: 6088         	str	r0, [r1, #0x8]
 80563aa: 9807         	ldr	r0, [sp, #0x1c]
 80563ac: 6881         	ldr	r1, [r0, #0x8]
 80563ae: 68c0         	ldr	r0, [r0, #0xc]
 80563b0: 6041         	str	r1, [r0, #0x4]
 80563b2: 9803         	ldr	r0, [sp, #0xc]
 80563b4: 6840         	ldr	r0, [r0, #0x4]
 80563b6: 9907         	ldr	r1, [sp, #0x1c]
 80563b8: 3104         	adds	r1, #0x4
 80563ba: 4288         	cmp	r0, r1
 80563bc: d105         	bne	0x80563ca <xTaskResumeAll+0xe4> @ imm = #0xa
 80563be: e7ff         	b	0x80563c0 <xTaskResumeAll+0xda> @ imm = #-0x2
 80563c0: 9807         	ldr	r0, [sp, #0x1c]
 80563c2: 68c0         	ldr	r0, [r0, #0xc]
 80563c4: 9903         	ldr	r1, [sp, #0xc]
 80563c6: 6048         	str	r0, [r1, #0x4]
 80563c8: e7ff         	b	0x80563ca <xTaskResumeAll+0xe4> @ imm = #-0x2
 80563ca: 9807         	ldr	r0, [sp, #0x1c]
 80563cc: 2100         	movs	r1, #0x0
 80563ce: 6141         	str	r1, [r0, #0x14]
 80563d0: 9803         	ldr	r0, [sp, #0xc]
 80563d2: 6801         	ldr	r1, [r0]
 80563d4: 3901         	subs	r1, #0x1
 80563d6: 6001         	str	r1, [r0]
 80563d8: e7ff         	b	0x80563da <xTaskResumeAll+0xf4> @ imm = #-0x2
;                         prvAddTaskToReadyList( pxTCB );
 80563da: e7ff         	b	0x80563dc <xTaskResumeAll+0xf6> @ imm = #-0x2
 80563dc: e7ff         	b	0x80563de <xTaskResumeAll+0xf8> @ imm = #-0x2
 80563de: 9807         	ldr	r0, [sp, #0x1c]
 80563e0: 6ac0         	ldr	r0, [r0, #0x2c]
 80563e2: f240 21a8    	movw	r1, #0x2a8
 80563e6: f2c2 0100    	movt	r1, #0x2000
 80563ea: 6809         	ldr	r1, [r1]
 80563ec: 4288         	cmp	r0, r1
 80563ee: d908         	bls	0x8056402 <xTaskResumeAll+0x11c> @ imm = #0x10
 80563f0: e7ff         	b	0x80563f2 <xTaskResumeAll+0x10c> @ imm = #-0x2
 80563f2: 9807         	ldr	r0, [sp, #0x1c]
 80563f4: 6ac0         	ldr	r0, [r0, #0x2c]
 80563f6: f240 21a8    	movw	r1, #0x2a8
 80563fa: f2c2 0100    	movt	r1, #0x2000
 80563fe: 6008         	str	r0, [r1]
 8056400: e7ff         	b	0x8056402 <xTaskResumeAll+0x11c> @ imm = #-0x2
 8056402: e7ff         	b	0x8056404 <xTaskResumeAll+0x11e> @ imm = #-0x2
 8056404: e7ff         	b	0x8056406 <xTaskResumeAll+0x120> @ imm = #-0x2
 8056406: 9807         	ldr	r0, [sp, #0x1c]
 8056408: 6ac0         	ldr	r0, [r0, #0x2c]
 805640a: eb00 0180    	add.w	r1, r0, r0, lsl #2
 805640e: f240 1068    	movw	r0, #0x168
 8056412: f2c2 0000    	movt	r0, #0x2000
 8056416: eb00 0181    	add.w	r1, r0, r1, lsl #2
 805641a: 6849         	ldr	r1, [r1, #0x4]
 805641c: 9102         	str	r1, [sp, #0x8]
 805641e: 9902         	ldr	r1, [sp, #0x8]
 8056420: 9a07         	ldr	r2, [sp, #0x1c]
 8056422: 6091         	str	r1, [r2, #0x8]
 8056424: 9902         	ldr	r1, [sp, #0x8]
 8056426: 6889         	ldr	r1, [r1, #0x8]
 8056428: 9a07         	ldr	r2, [sp, #0x1c]
 805642a: 60d1         	str	r1, [r2, #0xc]
 805642c: 9907         	ldr	r1, [sp, #0x1c]
 805642e: 3104         	adds	r1, #0x4
 8056430: 9a02         	ldr	r2, [sp, #0x8]
 8056432: 6892         	ldr	r2, [r2, #0x8]
 8056434: 6051         	str	r1, [r2, #0x4]
 8056436: 9907         	ldr	r1, [sp, #0x1c]
 8056438: 3104         	adds	r1, #0x4
 805643a: 9a02         	ldr	r2, [sp, #0x8]
 805643c: 6091         	str	r1, [r2, #0x8]
 805643e: 9907         	ldr	r1, [sp, #0x1c]
 8056440: 6aca         	ldr	r2, [r1, #0x2c]
 8056442: eb02 0282    	add.w	r2, r2, r2, lsl #2
 8056446: eb00 0282    	add.w	r2, r0, r2, lsl #2
 805644a: 614a         	str	r2, [r1, #0x14]
 805644c: 9907         	ldr	r1, [sp, #0x1c]
 805644e: 6ac9         	ldr	r1, [r1, #0x2c]
 8056450: eb01 0181    	add.w	r1, r1, r1, lsl #2
 8056454: f850 2021    	ldr.w	r2, [r0, r1, lsl #2]
 8056458: 3201         	adds	r2, #0x1
 805645a: f840 2021    	str.w	r2, [r0, r1, lsl #2]
 805645e: e7ff         	b	0x8056460 <xTaskResumeAll+0x17a> @ imm = #-0x2
 8056460: e7ff         	b	0x8056462 <xTaskResumeAll+0x17c> @ imm = #-0x2
;                             if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
 8056462: 9807         	ldr	r0, [sp, #0x1c]
 8056464: 6ac0         	ldr	r0, [r0, #0x2c]
 8056466: f240 1108    	movw	r1, #0x108
 805646a: f2c2 0100    	movt	r1, #0x2000
 805646e: 6809         	ldr	r1, [r1]
 8056470: 6ac9         	ldr	r1, [r1, #0x2c]
 8056472: 4288         	cmp	r0, r1
 8056474: d909         	bls	0x805648a <xTaskResumeAll+0x1a4> @ imm = #0x12
 8056476: e7ff         	b	0x8056478 <xTaskResumeAll+0x192> @ imm = #-0x2
;                                 xYieldPendings[ xCoreID ] = pdTRUE;
 8056478: 9805         	ldr	r0, [sp, #0x14]
 805647a: f240 21ac    	movw	r1, #0x2ac
 805647e: f2c2 0100    	movt	r1, #0x2000
 8056482: 2201         	movs	r2, #0x1
 8056484: f841 2020    	str.w	r2, [r1, r0, lsl #2]
;                             }
 8056488: e000         	b	0x805648c <xTaskResumeAll+0x1a6> @ imm = #0x0
 805648a: e7ff         	b	0x805648c <xTaskResumeAll+0x1a6> @ imm = #-0x2
;                     while( listLIST_IS_EMPTY( &xPendingReadyList ) == pdFALSE )
 805648c: e755         	b	0x805633a <xTaskResumeAll+0x54> @ imm = #-0x156
;                     if( pxTCB != NULL )
 805648e: 9807         	ldr	r0, [sp, #0x1c]
 8056490: b118         	cbz	r0, 0x805649a <xTaskResumeAll+0x1b4> @ imm = #0x6
 8056492: e7ff         	b	0x8056494 <xTaskResumeAll+0x1ae> @ imm = #-0x2
;                         prvResetNextTaskUnblockTime();
 8056494: f000 f847    	bl	0x8056526 <prvResetNextTaskUnblockTime> @ imm = #0x8e
;                     }
 8056498: e7ff         	b	0x805649a <xTaskResumeAll+0x1b4> @ imm = #-0x2
;                         TickType_t xPendedCounts = xPendedTicks; /* Non-volatile copy. */
 805649a: f240 20b8    	movw	r0, #0x2b8
 805649e: f2c2 0000    	movt	r0, #0x2000
 80564a2: 6800         	ldr	r0, [r0]
 80564a4: 9001         	str	r0, [sp, #0x4]
;                         if( xPendedCounts > ( TickType_t ) 0U )
 80564a6: 9801         	ldr	r0, [sp, #0x4]
 80564a8: b1f0         	cbz	r0, 0x80564e8 <xTaskResumeAll+0x202> @ imm = #0x3c
 80564aa: e7ff         	b	0x80564ac <xTaskResumeAll+0x1c6> @ imm = #-0x2
;                             do
 80564ac: e7ff         	b	0x80564ae <xTaskResumeAll+0x1c8> @ imm = #-0x2
;                                 if( xTaskIncrementTick() != pdFALSE )
 80564ae: f000 f858    	bl	0x8056562 <xTaskIncrementTick> @ imm = #0xb0
 80564b2: b148         	cbz	r0, 0x80564c8 <xTaskResumeAll+0x1e2> @ imm = #0x12
 80564b4: e7ff         	b	0x80564b6 <xTaskResumeAll+0x1d0> @ imm = #-0x2
;                                     xYieldPendings[ xCoreID ] = pdTRUE;
 80564b6: 9805         	ldr	r0, [sp, #0x14]
 80564b8: f240 21ac    	movw	r1, #0x2ac
 80564bc: f2c2 0100    	movt	r1, #0x2000
 80564c0: 2201         	movs	r2, #0x1
 80564c2: f841 2020    	str.w	r2, [r1, r0, lsl #2]
;                                 }
 80564c6: e000         	b	0x80564ca <xTaskResumeAll+0x1e4> @ imm = #0x0
 80564c8: e7ff         	b	0x80564ca <xTaskResumeAll+0x1e4> @ imm = #-0x2
;                                 --xPendedCounts;
 80564ca: 9801         	ldr	r0, [sp, #0x4]
 80564cc: 3801         	subs	r0, #0x1
 80564ce: 9001         	str	r0, [sp, #0x4]
;                             } while( xPendedCounts > ( TickType_t ) 0U );
 80564d0: e7ff         	b	0x80564d2 <xTaskResumeAll+0x1ec> @ imm = #-0x2
 80564d2: 9801         	ldr	r0, [sp, #0x4]
 80564d4: 2800         	cmp	r0, #0x0
 80564d6: d1ea         	bne	0x80564ae <xTaskResumeAll+0x1c8> @ imm = #-0x2c
 80564d8: e7ff         	b	0x80564da <xTaskResumeAll+0x1f4> @ imm = #-0x2
;                             xPendedTicks = 0;
 80564da: f240 20b8    	movw	r0, #0x2b8
 80564de: f2c2 0000    	movt	r0, #0x2000
 80564e2: 2100         	movs	r1, #0x0
 80564e4: 6001         	str	r1, [r0]
;                         }
 80564e6: e000         	b	0x80564ea <xTaskResumeAll+0x204> @ imm = #0x0
 80564e8: e7ff         	b	0x80564ea <xTaskResumeAll+0x204> @ imm = #-0x2
;                     if( xYieldPendings[ xCoreID ] != pdFALSE )
 80564ea: 9805         	ldr	r0, [sp, #0x14]
 80564ec: f240 21ac    	movw	r1, #0x2ac
 80564f0: f2c2 0100    	movt	r1, #0x2000
 80564f4: f851 0020    	ldr.w	r0, [r1, r0, lsl #2]
 80564f8: b160         	cbz	r0, 0x8056514 <xTaskResumeAll+0x22e> @ imm = #0x18
 80564fa: e7ff         	b	0x80564fc <xTaskResumeAll+0x216> @ imm = #-0x2
 80564fc: 2001         	movs	r0, #0x1
;                             xAlreadyYielded = pdTRUE;
 80564fe: 9006         	str	r0, [sp, #0x18]
;                             taskYIELD_TASK_CORE_IF_USING_PREEMPTION( pxCurrentTCB );
 8056500: e7ff         	b	0x8056502 <xTaskResumeAll+0x21c> @ imm = #-0x2
 8056502: f240 1008    	movw	r0, #0x108
 8056506: f2c2 0000    	movt	r0, #0x2000
 805650a: 6800         	ldr	r0, [r0]
 805650c: f001 fd40    	bl	0x8057f90 <vPortYield>  @ imm = #0x1a80
 8056510: e7ff         	b	0x8056512 <xTaskResumeAll+0x22c> @ imm = #-0x2
;                     }
 8056512: e000         	b	0x8056516 <xTaskResumeAll+0x230> @ imm = #0x0
 8056514: e7ff         	b	0x8056516 <xTaskResumeAll+0x230> @ imm = #-0x2
;                 }
 8056516: e7ff         	b	0x8056518 <xTaskResumeAll+0x232> @ imm = #-0x2
;             }
 8056518: e000         	b	0x805651c <xTaskResumeAll+0x236> @ imm = #0x0
 805651a: e7ff         	b	0x805651c <xTaskResumeAll+0x236> @ imm = #-0x2
;         taskEXIT_CRITICAL();
 805651c: f001 fd54    	bl	0x8057fc8 <vPortExitCritical> @ imm = #0x1aa8
;     return xAlreadyYielded;
 8056520: 9806         	ldr	r0, [sp, #0x18]
 8056522: b008         	add	sp, #0x20
 8056524: bdd0         	pop	{r4, r6, r7, pc}

08056526 <prvResetNextTaskUnblockTime>:
;     if( listLIST_IS_EMPTY( pxDelayedTaskList ) != pdFALSE )
 8056526: f240 1038    	movw	r0, #0x138
 805652a: f2c2 0000    	movt	r0, #0x2000
 805652e: 6800         	ldr	r0, [r0]
 8056530: 6800         	ldr	r0, [r0]
 8056532: b940         	cbnz	r0, 0x8056546 <prvResetNextTaskUnblockTime+0x20> @ imm = #0x10
 8056534: e7ff         	b	0x8056536 <prvResetNextTaskUnblockTime+0x10> @ imm = #-0x2
;         xNextTaskUnblockTime = portMAX_DELAY;
 8056536: f240 20b0    	movw	r0, #0x2b0
 805653a: f2c2 0000    	movt	r0, #0x2000
 805653e: f04f 31ff    	mov.w	r1, #0xffffffff
 8056542: 6001         	str	r1, [r0]
;     }
 8056544: e00c         	b	0x8056560 <prvResetNextTaskUnblockTime+0x3a> @ imm = #0x18
;         xNextTaskUnblockTime = listGET_ITEM_VALUE_OF_HEAD_ENTRY( pxDelayedTaskList );
 8056546: f240 1038    	movw	r0, #0x138
 805654a: f2c2 0000    	movt	r0, #0x2000
 805654e: 6800         	ldr	r0, [r0]
 8056550: 68c0         	ldr	r0, [r0, #0xc]
 8056552: 6800         	ldr	r0, [r0]
 8056554: f240 21b0    	movw	r1, #0x2b0
 8056558: f2c2 0100    	movt	r1, #0x2000
 805655c: 6008         	str	r0, [r1]
 805655e: e7ff         	b	0x8056560 <prvResetNextTaskUnblockTime+0x3a> @ imm = #-0x2
; }
 8056560: 4770         	bx	lr

08056562 <xTaskIncrementTick>:
; {
 8056562: b08b         	sub	sp, #0x2c
 8056564: 2000         	movs	r0, #0x0
;     BaseType_t xSwitchRequired = pdFALSE;
 8056566: 9005         	str	r0, [sp, #0x14]
;     if( uxSchedulerSuspended == ( UBaseType_t ) 0U )
 8056568: f240 1030    	movw	r0, #0x130
 805656c: f2c2 0000    	movt	r0, #0x2000
 8056570: 6800         	ldr	r0, [r0]
 8056572: 2800         	cmp	r0, #0x0
 8056574: f040 8148    	bne.w	0x8056808 <xTaskIncrementTick+0x2a6> @ imm = #0x290
 8056578: e7ff         	b	0x805657a <xTaskIncrementTick+0x18> @ imm = #-0x2
;         const TickType_t xConstTickCount = xTickCount + ( TickType_t ) 1;
 805657a: f240 1034    	movw	r0, #0x134
 805657e: f2c2 0000    	movt	r0, #0x2000
 8056582: 6801         	ldr	r1, [r0]
 8056584: 3101         	adds	r1, #0x1
 8056586: 9104         	str	r1, [sp, #0x10]
;         xTickCount = xConstTickCount;
 8056588: 9904         	ldr	r1, [sp, #0x10]
 805658a: 6001         	str	r1, [r0]
;         if( xConstTickCount == ( TickType_t ) 0U ) /*lint !e774 'if' does not always evaluate to false as it is looking for an overflow. */
 805658c: 9804         	ldr	r0, [sp, #0x10]
 805658e: 2800         	cmp	r0, #0x0
 8056590: d149         	bne	0x8056626 <xTaskIncrementTick+0xc4> @ imm = #0x92
 8056592: e7ff         	b	0x8056594 <xTaskIncrementTick+0x32> @ imm = #-0x2
;             taskSWITCH_DELAYED_LISTS();
 8056594: e7ff         	b	0x8056596 <xTaskIncrementTick+0x34> @ imm = #-0x2
 8056596: f240 1038    	movw	r0, #0x138
 805659a: f2c2 0000    	movt	r0, #0x2000
 805659e: 6800         	ldr	r0, [r0]
 80565a0: 6800         	ldr	r0, [r0]
 80565a2: b180         	cbz	r0, 0x80565c6 <xTaskIncrementTick+0x64> @ imm = #0x20
 80565a4: e7ff         	b	0x80565a6 <xTaskIncrementTick+0x44> @ imm = #-0x2
;   __asm volatile("mrs %0, basepri" : "=r"(value));
 80565a6: f3ef 8011    	mrs	r0, basepri
 80565aa: 900a         	str	r0, [sp, #0x28]
;   return value;
 80565ac: 980a         	ldr	r0, [sp, #0x28]
;   uint32_t originalBasepri = readBasepri(); // 读取当前的 BASEPRI 值
 80565ae: 9008         	str	r0, [sp, #0x20]
 80565b0: 20a0         	movs	r0, #0xa0
 80565b2: 9009         	str	r0, [sp, #0x24]
;   __asm volatile("msr basepri, %0" ::"r"(value) : "memory");
 80565b4: 9809         	ldr	r0, [sp, #0x24]
 80565b6: f380 8811    	msr	basepri, r0
;   __asm volatile("dsb");
 80565ba: f3bf 8f4f    	dsb	sy
;   __asm volatile("isb");
 80565be: f3bf 8f6f    	isb	sy
;             taskSWITCH_DELAYED_LISTS();
 80565c2: e7ff         	b	0x80565c4 <xTaskIncrementTick+0x62> @ imm = #-0x2
 80565c4: e7fe         	b	0x80565c4 <xTaskIncrementTick+0x62> @ imm = #-0x4
 80565c6: f240 1038    	movw	r0, #0x138
 80565ca: f2c2 0000    	movt	r0, #0x2000
 80565ce: 6801         	ldr	r1, [r0]
 80565d0: 9103         	str	r1, [sp, #0xc]
 80565d2: f240 113c    	movw	r1, #0x13c
 80565d6: f2c2 0100    	movt	r1, #0x2000
 80565da: 680a         	ldr	r2, [r1]
 80565dc: 6002         	str	r2, [r0]
 80565de: 9a03         	ldr	r2, [sp, #0xc]
 80565e0: 600a         	str	r2, [r1]
 80565e2: f240 21bc    	movw	r1, #0x2bc
 80565e6: f2c2 0100    	movt	r1, #0x2000
 80565ea: 680a         	ldr	r2, [r1]
 80565ec: 3201         	adds	r2, #0x1
 80565ee: 600a         	str	r2, [r1]
;     if( listLIST_IS_EMPTY( pxDelayedTaskList ) != pdFALSE )
 80565f0: 6800         	ldr	r0, [r0]
 80565f2: 6800         	ldr	r0, [r0]
 80565f4: b940         	cbnz	r0, 0x8056608 <xTaskIncrementTick+0xa6> @ imm = #0x10
 80565f6: e7ff         	b	0x80565f8 <xTaskIncrementTick+0x96> @ imm = #-0x2
;         xNextTaskUnblockTime = portMAX_DELAY;
 80565f8: f240 20b0    	movw	r0, #0x2b0
 80565fc: f2c2 0000    	movt	r0, #0x2000
 8056600: f04f 31ff    	mov.w	r1, #0xffffffff
 8056604: 6001         	str	r1, [r0]
;     }
 8056606: e00c         	b	0x8056622 <xTaskIncrementTick+0xc0> @ imm = #0x18
;         xNextTaskUnblockTime = listGET_ITEM_VALUE_OF_HEAD_ENTRY( pxDelayedTaskList );
 8056608: f240 1038    	movw	r0, #0x138
 805660c: f2c2 0000    	movt	r0, #0x2000
 8056610: 6800         	ldr	r0, [r0]
 8056612: 68c0         	ldr	r0, [r0, #0xc]
 8056614: 6800         	ldr	r0, [r0]
 8056616: f240 21b0    	movw	r1, #0x2b0
 805661a: f2c2 0100    	movt	r1, #0x2000
 805661e: 6008         	str	r0, [r1]
 8056620: e7ff         	b	0x8056622 <xTaskIncrementTick+0xc0> @ imm = #-0x2
;             taskSWITCH_DELAYED_LISTS();
 8056622: e7ff         	b	0x8056624 <xTaskIncrementTick+0xc2> @ imm = #-0x2
;         }
 8056624: e000         	b	0x8056628 <xTaskIncrementTick+0xc6> @ imm = #0x0
 8056626: e7ff         	b	0x8056628 <xTaskIncrementTick+0xc6> @ imm = #-0x2
;         if( xConstTickCount >= xNextTaskUnblockTime )
 8056628: 9804         	ldr	r0, [sp, #0x10]
 805662a: f240 21b0    	movw	r1, #0x2b0
 805662e: f2c2 0100    	movt	r1, #0x2000
 8056632: 6809         	ldr	r1, [r1]
 8056634: 4288         	cmp	r0, r1
 8056636: f0c0 80c6    	blo.w	0x80567c6 <xTaskIncrementTick+0x264> @ imm = #0x18c
 805663a: e7ff         	b	0x805663c <xTaskIncrementTick+0xda> @ imm = #-0x2
;             for( ; ; )
 805663c: e7ff         	b	0x805663e <xTaskIncrementTick+0xdc> @ imm = #-0x2
;                 if( listLIST_IS_EMPTY( pxDelayedTaskList ) != pdFALSE )
 805663e: f240 1038    	movw	r0, #0x138
 8056642: f2c2 0000    	movt	r0, #0x2000
 8056646: 6800         	ldr	r0, [r0]
 8056648: 6800         	ldr	r0, [r0]
 805664a: b940         	cbnz	r0, 0x805665e <xTaskIncrementTick+0xfc> @ imm = #0x10
 805664c: e7ff         	b	0x805664e <xTaskIncrementTick+0xec> @ imm = #-0x2
;                     xNextTaskUnblockTime = portMAX_DELAY; /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
 805664e: f240 20b0    	movw	r0, #0x2b0
 8056652: f2c2 0000    	movt	r0, #0x2000
 8056656: f04f 31ff    	mov.w	r1, #0xffffffff
 805665a: 6001         	str	r1, [r0]
;                     break;
 805665c: e0b2         	b	0x80567c4 <xTaskIncrementTick+0x262> @ imm = #0x164
;                     pxTCB = listGET_OWNER_OF_HEAD_ENTRY( pxDelayedTaskList ); /*lint !e9079 void * is used as this macro is used with timers and co-routines too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
 805665e: f240 1038    	movw	r0, #0x138
 8056662: f2c2 0000    	movt	r0, #0x2000
 8056666: 6800         	ldr	r0, [r0]
 8056668: 68c0         	ldr	r0, [r0, #0xc]
 805666a: 68c0         	ldr	r0, [r0, #0xc]
 805666c: 9007         	str	r0, [sp, #0x1c]
;                     xItemValue = listGET_LIST_ITEM_VALUE( &( pxTCB->xStateListItem ) );
 805666e: 9807         	ldr	r0, [sp, #0x1c]
 8056670: 6840         	ldr	r0, [r0, #0x4]
 8056672: 9006         	str	r0, [sp, #0x18]
;                     if( xConstTickCount < xItemValue )
 8056674: 9804         	ldr	r0, [sp, #0x10]
 8056676: 9906         	ldr	r1, [sp, #0x18]
 8056678: 4288         	cmp	r0, r1
 805667a: d207         	bhs	0x805668c <xTaskIncrementTick+0x12a> @ imm = #0xe
 805667c: e7ff         	b	0x805667e <xTaskIncrementTick+0x11c> @ imm = #-0x2
;                         xNextTaskUnblockTime = xItemValue;
 805667e: 9806         	ldr	r0, [sp, #0x18]
 8056680: f240 21b0    	movw	r1, #0x2b0
 8056684: f2c2 0100    	movt	r1, #0x2000
 8056688: 6008         	str	r0, [r1]
;                         break; /*lint !e9011 Code structure here is deemed easier to understand with multiple breaks. */
 805668a: e09b         	b	0x80567c4 <xTaskIncrementTick+0x262> @ imm = #0x136
 805668c: e7ff         	b	0x805668e <xTaskIncrementTick+0x12c> @ imm = #-0x2
;                     listREMOVE_ITEM( &( pxTCB->xStateListItem ) );
 805668e: e7ff         	b	0x8056690 <xTaskIncrementTick+0x12e> @ imm = #-0x2
 8056690: 9807         	ldr	r0, [sp, #0x1c]
 8056692: 6940         	ldr	r0, [r0, #0x14]
 8056694: 9002         	str	r0, [sp, #0x8]
 8056696: 9807         	ldr	r0, [sp, #0x1c]
 8056698: 6881         	ldr	r1, [r0, #0x8]
 805669a: 68c0         	ldr	r0, [r0, #0xc]
 805669c: 6088         	str	r0, [r1, #0x8]
 805669e: 9807         	ldr	r0, [sp, #0x1c]
 80566a0: 6881         	ldr	r1, [r0, #0x8]
 80566a2: 68c0         	ldr	r0, [r0, #0xc]
 80566a4: 6041         	str	r1, [r0, #0x4]
 80566a6: 9802         	ldr	r0, [sp, #0x8]
 80566a8: 6840         	ldr	r0, [r0, #0x4]
 80566aa: 9907         	ldr	r1, [sp, #0x1c]
 80566ac: 3104         	adds	r1, #0x4
 80566ae: 4288         	cmp	r0, r1
 80566b0: d105         	bne	0x80566be <xTaskIncrementTick+0x15c> @ imm = #0xa
 80566b2: e7ff         	b	0x80566b4 <xTaskIncrementTick+0x152> @ imm = #-0x2
 80566b4: 9807         	ldr	r0, [sp, #0x1c]
 80566b6: 68c0         	ldr	r0, [r0, #0xc]
 80566b8: 9902         	ldr	r1, [sp, #0x8]
 80566ba: 6048         	str	r0, [r1, #0x4]
 80566bc: e7ff         	b	0x80566be <xTaskIncrementTick+0x15c> @ imm = #-0x2
 80566be: 9807         	ldr	r0, [sp, #0x1c]
 80566c0: 2100         	movs	r1, #0x0
 80566c2: 6141         	str	r1, [r0, #0x14]
 80566c4: 9802         	ldr	r0, [sp, #0x8]
 80566c6: 6801         	ldr	r1, [r0]
 80566c8: 3901         	subs	r1, #0x1
 80566ca: 6001         	str	r1, [r0]
 80566cc: e7ff         	b	0x80566ce <xTaskIncrementTick+0x16c> @ imm = #-0x2
;                     if( listLIST_ITEM_CONTAINER( &( pxTCB->xEventListItem ) ) != NULL )
 80566ce: 9807         	ldr	r0, [sp, #0x1c]
 80566d0: 6a80         	ldr	r0, [r0, #0x28]
 80566d2: b308         	cbz	r0, 0x8056718 <xTaskIncrementTick+0x1b6> @ imm = #0x42
 80566d4: e7ff         	b	0x80566d6 <xTaskIncrementTick+0x174> @ imm = #-0x2
;                         listREMOVE_ITEM( &( pxTCB->xEventListItem ) );
 80566d6: e7ff         	b	0x80566d8 <xTaskIncrementTick+0x176> @ imm = #-0x2
 80566d8: 9807         	ldr	r0, [sp, #0x1c]
 80566da: 6a80         	ldr	r0, [r0, #0x28]
 80566dc: 9001         	str	r0, [sp, #0x4]
 80566de: 9807         	ldr	r0, [sp, #0x1c]
 80566e0: 69c1         	ldr	r1, [r0, #0x1c]
 80566e2: 6a00         	ldr	r0, [r0, #0x20]
 80566e4: 6088         	str	r0, [r1, #0x8]
 80566e6: 9807         	ldr	r0, [sp, #0x1c]
 80566e8: 69c1         	ldr	r1, [r0, #0x1c]
 80566ea: 6a00         	ldr	r0, [r0, #0x20]
 80566ec: 6041         	str	r1, [r0, #0x4]
 80566ee: 9801         	ldr	r0, [sp, #0x4]
 80566f0: 6840         	ldr	r0, [r0, #0x4]
 80566f2: 9907         	ldr	r1, [sp, #0x1c]
 80566f4: 3118         	adds	r1, #0x18
 80566f6: 4288         	cmp	r0, r1
 80566f8: d105         	bne	0x8056706 <xTaskIncrementTick+0x1a4> @ imm = #0xa
 80566fa: e7ff         	b	0x80566fc <xTaskIncrementTick+0x19a> @ imm = #-0x2
 80566fc: 9807         	ldr	r0, [sp, #0x1c]
 80566fe: 6a00         	ldr	r0, [r0, #0x20]
 8056700: 9901         	ldr	r1, [sp, #0x4]
 8056702: 6048         	str	r0, [r1, #0x4]
 8056704: e7ff         	b	0x8056706 <xTaskIncrementTick+0x1a4> @ imm = #-0x2
 8056706: 9807         	ldr	r0, [sp, #0x1c]
 8056708: 2100         	movs	r1, #0x0
 805670a: 6281         	str	r1, [r0, #0x28]
 805670c: 9801         	ldr	r0, [sp, #0x4]
 805670e: 6801         	ldr	r1, [r0]
 8056710: 3901         	subs	r1, #0x1
 8056712: 6001         	str	r1, [r0]
 8056714: e7ff         	b	0x8056716 <xTaskIncrementTick+0x1b4> @ imm = #-0x2
;                     }
 8056716: e000         	b	0x805671a <xTaskIncrementTick+0x1b8> @ imm = #0x0
 8056718: e7ff         	b	0x805671a <xTaskIncrementTick+0x1b8> @ imm = #-0x2
;                     prvAddTaskToReadyList( pxTCB );
 805671a: e7ff         	b	0x805671c <xTaskIncrementTick+0x1ba> @ imm = #-0x2
 805671c: e7ff         	b	0x805671e <xTaskIncrementTick+0x1bc> @ imm = #-0x2
 805671e: 9807         	ldr	r0, [sp, #0x1c]
 8056720: 6ac0         	ldr	r0, [r0, #0x2c]
 8056722: f240 21a8    	movw	r1, #0x2a8
 8056726: f2c2 0100    	movt	r1, #0x2000
 805672a: 6809         	ldr	r1, [r1]
 805672c: 4288         	cmp	r0, r1
 805672e: d908         	bls	0x8056742 <xTaskIncrementTick+0x1e0> @ imm = #0x10
 8056730: e7ff         	b	0x8056732 <xTaskIncrementTick+0x1d0> @ imm = #-0x2
 8056732: 9807         	ldr	r0, [sp, #0x1c]
 8056734: 6ac0         	ldr	r0, [r0, #0x2c]
 8056736: f240 21a8    	movw	r1, #0x2a8
 805673a: f2c2 0100    	movt	r1, #0x2000
 805673e: 6008         	str	r0, [r1]
 8056740: e7ff         	b	0x8056742 <xTaskIncrementTick+0x1e0> @ imm = #-0x2
 8056742: e7ff         	b	0x8056744 <xTaskIncrementTick+0x1e2> @ imm = #-0x2
 8056744: e7ff         	b	0x8056746 <xTaskIncrementTick+0x1e4> @ imm = #-0x2
 8056746: 9807         	ldr	r0, [sp, #0x1c]
 8056748: 6ac0         	ldr	r0, [r0, #0x2c]
 805674a: eb00 0180    	add.w	r1, r0, r0, lsl #2
 805674e: f240 1068    	movw	r0, #0x168
 8056752: f2c2 0000    	movt	r0, #0x2000
 8056756: eb00 0181    	add.w	r1, r0, r1, lsl #2
 805675a: 6849         	ldr	r1, [r1, #0x4]
 805675c: 9100         	str	r1, [sp]
 805675e: 9900         	ldr	r1, [sp]
 8056760: 9a07         	ldr	r2, [sp, #0x1c]
 8056762: 6091         	str	r1, [r2, #0x8]
 8056764: 9900         	ldr	r1, [sp]
 8056766: 6889         	ldr	r1, [r1, #0x8]
 8056768: 9a07         	ldr	r2, [sp, #0x1c]
 805676a: 60d1         	str	r1, [r2, #0xc]
 805676c: 9907         	ldr	r1, [sp, #0x1c]
 805676e: 3104         	adds	r1, #0x4
 8056770: 9a00         	ldr	r2, [sp]
 8056772: 6892         	ldr	r2, [r2, #0x8]
 8056774: 6051         	str	r1, [r2, #0x4]
 8056776: 9907         	ldr	r1, [sp, #0x1c]
 8056778: 3104         	adds	r1, #0x4
 805677a: 9a00         	ldr	r2, [sp]
 805677c: 6091         	str	r1, [r2, #0x8]
 805677e: 9907         	ldr	r1, [sp, #0x1c]
 8056780: 6aca         	ldr	r2, [r1, #0x2c]
 8056782: eb02 0282    	add.w	r2, r2, r2, lsl #2
 8056786: eb00 0282    	add.w	r2, r0, r2, lsl #2
 805678a: 614a         	str	r2, [r1, #0x14]
 805678c: 9907         	ldr	r1, [sp, #0x1c]
 805678e: 6ac9         	ldr	r1, [r1, #0x2c]
 8056790: eb01 0181    	add.w	r1, r1, r1, lsl #2
 8056794: f850 2021    	ldr.w	r2, [r0, r1, lsl #2]
 8056798: 3201         	adds	r2, #0x1
 805679a: f840 2021    	str.w	r2, [r0, r1, lsl #2]
 805679e: e7ff         	b	0x80567a0 <xTaskIncrementTick+0x23e> @ imm = #-0x2
 80567a0: e7ff         	b	0x80567a2 <xTaskIncrementTick+0x240> @ imm = #-0x2
;                             if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
 80567a2: 9807         	ldr	r0, [sp, #0x1c]
 80567a4: 6ac0         	ldr	r0, [r0, #0x2c]
 80567a6: f240 1108    	movw	r1, #0x108
 80567aa: f2c2 0100    	movt	r1, #0x2000
 80567ae: 6809         	ldr	r1, [r1]
 80567b0: 6ac9         	ldr	r1, [r1, #0x2c]
 80567b2: 4288         	cmp	r0, r1
 80567b4: d903         	bls	0x80567be <xTaskIncrementTick+0x25c> @ imm = #0x6
 80567b6: e7ff         	b	0x80567b8 <xTaskIncrementTick+0x256> @ imm = #-0x2
 80567b8: 2001         	movs	r0, #0x1
;                                 xSwitchRequired = pdTRUE;
 80567ba: 9005         	str	r0, [sp, #0x14]
;                             }
 80567bc: e000         	b	0x80567c0 <xTaskIncrementTick+0x25e> @ imm = #0x0
 80567be: e7ff         	b	0x80567c0 <xTaskIncrementTick+0x25e> @ imm = #-0x2
 80567c0: e7ff         	b	0x80567c2 <xTaskIncrementTick+0x260> @ imm = #-0x2
;             for( ; ; )
 80567c2: e73c         	b	0x805663e <xTaskIncrementTick+0xdc> @ imm = #-0x188
;         }
 80567c4: e7ff         	b	0x80567c6 <xTaskIncrementTick+0x264> @ imm = #-0x2
;                 if( listCURRENT_LIST_LENGTH( &( pxReadyTasksLists[ pxCurrentTCB->uxPriority ] ) ) > ( UBaseType_t ) 1 )
 80567c6: f240 1008    	movw	r0, #0x108
 80567ca: f2c2 0000    	movt	r0, #0x2000
 80567ce: 6800         	ldr	r0, [r0]
 80567d0: 6ac0         	ldr	r0, [r0, #0x2c]
 80567d2: eb00 0080    	add.w	r0, r0, r0, lsl #2
 80567d6: f240 1168    	movw	r1, #0x168
 80567da: f2c2 0100    	movt	r1, #0x2000
 80567de: f851 0020    	ldr.w	r0, [r1, r0, lsl #2]
 80567e2: 2802         	cmp	r0, #0x2
 80567e4: d303         	blo	0x80567ee <xTaskIncrementTick+0x28c> @ imm = #0x6
 80567e6: e7ff         	b	0x80567e8 <xTaskIncrementTick+0x286> @ imm = #-0x2
 80567e8: 2001         	movs	r0, #0x1
;                     xSwitchRequired = pdTRUE;
 80567ea: 9005         	str	r0, [sp, #0x14]
;                 }
 80567ec: e000         	b	0x80567f0 <xTaskIncrementTick+0x28e> @ imm = #0x0
 80567ee: e7ff         	b	0x80567f0 <xTaskIncrementTick+0x28e> @ imm = #-0x2
;                 if( xYieldPendings[ 0 ] != pdFALSE )
 80567f0: f240 20ac    	movw	r0, #0x2ac
 80567f4: f2c2 0000    	movt	r0, #0x2000
 80567f8: 6800         	ldr	r0, [r0]
 80567fa: b118         	cbz	r0, 0x8056804 <xTaskIncrementTick+0x2a2> @ imm = #0x6
 80567fc: e7ff         	b	0x80567fe <xTaskIncrementTick+0x29c> @ imm = #-0x2
 80567fe: 2001         	movs	r0, #0x1
;                     xSwitchRequired = pdTRUE;
 8056800: 9005         	str	r0, [sp, #0x14]
;                 }
 8056802: e000         	b	0x8056806 <xTaskIncrementTick+0x2a4> @ imm = #0x0
 8056804: e7ff         	b	0x8056806 <xTaskIncrementTick+0x2a4> @ imm = #-0x2
;     }
 8056806: e007         	b	0x8056818 <xTaskIncrementTick+0x2b6> @ imm = #0xe
;         ++xPendedTicks;
 8056808: f240 20b8    	movw	r0, #0x2b8
 805680c: f2c2 0000    	movt	r0, #0x2000
 8056810: 6801         	ldr	r1, [r0]
 8056812: 3101         	adds	r1, #0x1
 8056814: 6001         	str	r1, [r0]
 8056816: e7ff         	b	0x8056818 <xTaskIncrementTick+0x2b6> @ imm = #-0x2
;     return xSwitchRequired;
 8056818: 9805         	ldr	r0, [sp, #0x14]
 805681a: b00b         	add	sp, #0x2c
 805681c: 4770         	bx	lr

0805681e <vTaskDelay>:
;     {
 805681e: b580         	push	{r7, lr}
 8056820: 466f         	mov	r7, sp
 8056822: b082         	sub	sp, #0x8
 8056824: f44f 70fa    	mov.w	r0, #0x1f4
 8056828: 9001         	str	r0, [sp, #0x4]
 805682a: 2000         	movs	r0, #0x0
;         BaseType_t xAlreadyYielded = pdFALSE;
 805682c: 9000         	str	r0, [sp]
;         if( xTicksToDelay > ( TickType_t ) 0U )
 805682e: 9801         	ldr	r0, [sp, #0x4]
 8056830: b1b0         	cbz	r0, 0x8056860 <vTaskDelay+0x42> @ imm = #0x2c
 8056832: e7ff         	b	0x8056834 <vTaskDelay+0x16> @ imm = #-0x2
;             vTaskSuspendAll();
 8056834: f7ff fd4f    	bl	0x80562d6 <vTaskSuspendAll> @ imm = #-0x562
;                 configASSERT( uxSchedulerSuspended == 1U );
 8056838: f240 1030    	movw	r0, #0x130
 805683c: f2c2 0000    	movt	r0, #0x2000
 8056840: 6800         	ldr	r0, [r0]
 8056842: 2801         	cmp	r0, #0x1
 8056844: d004         	beq	0x8056850 <vTaskDelay+0x32> @ imm = #0x8
 8056846: e7ff         	b	0x8056848 <vTaskDelay+0x2a> @ imm = #-0x2
 8056848: f001 fe92    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0x1d24
 805684c: e7ff         	b	0x805684e <vTaskDelay+0x30> @ imm = #-0x2
 805684e: e7fe         	b	0x805684e <vTaskDelay+0x30> @ imm = #-0x4
;                 prvAddCurrentTaskToDelayedList( xTicksToDelay, pdFALSE );
 8056850: 9801         	ldr	r0, [sp, #0x4]
 8056852: 2100         	movs	r1, #0x0
 8056854: f000 f80e    	bl	0x8056874 <prvAddCurrentTaskToDelayedList> @ imm = #0x1c
;             xAlreadyYielded = xTaskResumeAll();
 8056858: f7ff fd45    	bl	0x80562e6 <xTaskResumeAll> @ imm = #-0x576
 805685c: 9000         	str	r0, [sp]
;         }
 805685e: e000         	b	0x8056862 <vTaskDelay+0x44> @ imm = #0x0
 8056860: e7ff         	b	0x8056862 <vTaskDelay+0x44> @ imm = #-0x2
;         if( xAlreadyYielded == pdFALSE )
 8056862: 9800         	ldr	r0, [sp]
 8056864: b918         	cbnz	r0, 0x805686e <vTaskDelay+0x50> @ imm = #0x6
 8056866: e7ff         	b	0x8056868 <vTaskDelay+0x4a> @ imm = #-0x2
;             taskYIELD_WITHIN_API();
 8056868: f001 fb92    	bl	0x8057f90 <vPortYield>  @ imm = #0x1724
;         }
 805686c: e000         	b	0x8056870 <vTaskDelay+0x52> @ imm = #0x0
 805686e: e7ff         	b	0x8056870 <vTaskDelay+0x52> @ imm = #-0x2
;     }
 8056870: b002         	add	sp, #0x8
 8056872: bd80         	pop	{r7, pc}

08056874 <prvAddCurrentTaskToDelayedList>:
; {
 8056874: b580         	push	{r7, lr}
 8056876: 466f         	mov	r7, sp
 8056878: b086         	sub	sp, #0x18
 805687a: 9005         	str	r0, [sp, #0x14]
 805687c: 9104         	str	r1, [sp, #0x10]
;     const TickType_t xConstTickCount = xTickCount;
 805687e: f240 1034    	movw	r0, #0x134
 8056882: f2c2 0000    	movt	r0, #0x2000
 8056886: 6800         	ldr	r0, [r0]
 8056888: 9002         	str	r0, [sp, #0x8]
;     if( uxListRemove( &( pxCurrentTCB->xStateListItem ) ) == ( UBaseType_t ) 0 )
 805688a: f240 1008    	movw	r0, #0x108
 805688e: f2c2 0000    	movt	r0, #0x2000
 8056892: 6800         	ldr	r0, [r0]
 8056894: 3004         	adds	r0, #0x4
 8056896: f000 fb58    	bl	0x8056f4a <uxListRemove> @ imm = #0x6b0
 805689a: b908         	cbnz	r0, 0x80568a0 <prvAddCurrentTaskToDelayedList+0x2c> @ imm = #0x2
 805689c: e7ff         	b	0x805689e <prvAddCurrentTaskToDelayedList+0x2a> @ imm = #-0x2
;     }
 805689e: e000         	b	0x80568a2 <prvAddCurrentTaskToDelayedList+0x2e> @ imm = #0x0
 80568a0: e7ff         	b	0x80568a2 <prvAddCurrentTaskToDelayedList+0x2e> @ imm = #-0x2
;         if( ( xTicksToWait == portMAX_DELAY ) && ( xCanBlockIndefinitely != pdFALSE ) )
 80568a2: 9805         	ldr	r0, [sp, #0x14]
 80568a4: 3001         	adds	r0, #0x1
 80568a6: bb28         	cbnz	r0, 0x80568f4 <prvAddCurrentTaskToDelayedList+0x80> @ imm = #0x4a
 80568a8: e7ff         	b	0x80568aa <prvAddCurrentTaskToDelayedList+0x36> @ imm = #-0x2
 80568aa: 9804         	ldr	r0, [sp, #0x10]
 80568ac: b310         	cbz	r0, 0x80568f4 <prvAddCurrentTaskToDelayedList+0x80> @ imm = #0x44
 80568ae: e7ff         	b	0x80568b0 <prvAddCurrentTaskToDelayedList+0x3c> @ imm = #-0x2
;             listINSERT_END( &xSuspendedTaskList, &( pxCurrentTCB->xStateListItem ) );
 80568b0: e7ff         	b	0x80568b2 <prvAddCurrentTaskToDelayedList+0x3e> @ imm = #-0x2
 80568b2: f240 1054    	movw	r0, #0x154
 80568b6: f2c2 0000    	movt	r0, #0x2000
 80568ba: 6841         	ldr	r1, [r0, #0x4]
 80568bc: 9101         	str	r1, [sp, #0x4]
 80568be: 9901         	ldr	r1, [sp, #0x4]
 80568c0: f240 1208    	movw	r2, #0x108
 80568c4: f2c2 0200    	movt	r2, #0x2000
 80568c8: 6813         	ldr	r3, [r2]
 80568ca: 6099         	str	r1, [r3, #0x8]
 80568cc: 9901         	ldr	r1, [sp, #0x4]
 80568ce: 6889         	ldr	r1, [r1, #0x8]
 80568d0: 6813         	ldr	r3, [r2]
 80568d2: 60d9         	str	r1, [r3, #0xc]
 80568d4: 6811         	ldr	r1, [r2]
 80568d6: 3104         	adds	r1, #0x4
 80568d8: 9b01         	ldr	r3, [sp, #0x4]
 80568da: 689b         	ldr	r3, [r3, #0x8]
 80568dc: 6059         	str	r1, [r3, #0x4]
 80568de: 6811         	ldr	r1, [r2]
 80568e0: 3104         	adds	r1, #0x4
 80568e2: 9b01         	ldr	r3, [sp, #0x4]
 80568e4: 6099         	str	r1, [r3, #0x8]
 80568e6: 6811         	ldr	r1, [r2]
 80568e8: 6148         	str	r0, [r1, #0x14]
 80568ea: 6801         	ldr	r1, [r0]
 80568ec: 3101         	adds	r1, #0x1
 80568ee: 6001         	str	r1, [r0]
 80568f0: e7ff         	b	0x80568f2 <prvAddCurrentTaskToDelayedList+0x7e> @ imm = #-0x2
;         }
 80568f2: e03d         	b	0x8056970 <prvAddCurrentTaskToDelayedList+0xfc> @ imm = #0x7a
;             xTimeToWake = xConstTickCount + xTicksToWait;
 80568f4: 9802         	ldr	r0, [sp, #0x8]
 80568f6: 9905         	ldr	r1, [sp, #0x14]
 80568f8: 4408         	add	r0, r1
 80568fa: 9003         	str	r0, [sp, #0xc]
;             listSET_LIST_ITEM_VALUE( &( pxCurrentTCB->xStateListItem ), xTimeToWake );
 80568fc: 9803         	ldr	r0, [sp, #0xc]
 80568fe: f240 1108    	movw	r1, #0x108
 8056902: f2c2 0100    	movt	r1, #0x2000
 8056906: 6809         	ldr	r1, [r1]
 8056908: 6048         	str	r0, [r1, #0x4]
;             if( xTimeToWake < xConstTickCount )
 805690a: 9803         	ldr	r0, [sp, #0xc]
 805690c: 9902         	ldr	r1, [sp, #0x8]
 805690e: 4288         	cmp	r0, r1
 8056910: d20e         	bhs	0x8056930 <prvAddCurrentTaskToDelayedList+0xbc> @ imm = #0x1c
 8056912: e7ff         	b	0x8056914 <prvAddCurrentTaskToDelayedList+0xa0> @ imm = #-0x2
;                 vListInsert( pxOverflowDelayedTaskList, &( pxCurrentTCB->xStateListItem ) );
 8056914: f240 103c    	movw	r0, #0x13c
 8056918: f2c2 0000    	movt	r0, #0x2000
 805691c: 6800         	ldr	r0, [r0]
 805691e: f240 1108    	movw	r1, #0x108
 8056922: f2c2 0100    	movt	r1, #0x2000
 8056926: 6809         	ldr	r1, [r1]
 8056928: 3104         	adds	r1, #0x4
 805692a: f000 fad9    	bl	0x8056ee0 <vListInsert> @ imm = #0x5b2
;             }
 805692e: e01e         	b	0x805696e <prvAddCurrentTaskToDelayedList+0xfa> @ imm = #0x3c
;                 vListInsert( pxDelayedTaskList, &( pxCurrentTCB->xStateListItem ) );
 8056930: f240 1038    	movw	r0, #0x138
 8056934: f2c2 0000    	movt	r0, #0x2000
 8056938: 6800         	ldr	r0, [r0]
 805693a: f240 1108    	movw	r1, #0x108
 805693e: f2c2 0100    	movt	r1, #0x2000
 8056942: 6809         	ldr	r1, [r1]
 8056944: 3104         	adds	r1, #0x4
 8056946: f000 facb    	bl	0x8056ee0 <vListInsert> @ imm = #0x596
;                 if( xTimeToWake < xNextTaskUnblockTime )
 805694a: 9803         	ldr	r0, [sp, #0xc]
 805694c: f240 21b0    	movw	r1, #0x2b0
 8056950: f2c2 0100    	movt	r1, #0x2000
 8056954: 6809         	ldr	r1, [r1]
 8056956: 4288         	cmp	r0, r1
 8056958: d207         	bhs	0x805696a <prvAddCurrentTaskToDelayedList+0xf6> @ imm = #0xe
 805695a: e7ff         	b	0x805695c <prvAddCurrentTaskToDelayedList+0xe8> @ imm = #-0x2
;                     xNextTaskUnblockTime = xTimeToWake;
 805695c: 9803         	ldr	r0, [sp, #0xc]
 805695e: f240 21b0    	movw	r1, #0x2b0
 8056962: f2c2 0100    	movt	r1, #0x2000
 8056966: 6008         	str	r0, [r1]
;                 }
 8056968: e000         	b	0x805696c <prvAddCurrentTaskToDelayedList+0xf8> @ imm = #0x0
 805696a: e7ff         	b	0x805696c <prvAddCurrentTaskToDelayedList+0xf8> @ imm = #-0x2
 805696c: e7ff         	b	0x805696e <prvAddCurrentTaskToDelayedList+0xfa> @ imm = #-0x2
 805696e: e7ff         	b	0x8056970 <prvAddCurrentTaskToDelayedList+0xfc> @ imm = #-0x2
; }
 8056970: b006         	add	sp, #0x18
 8056972: bd80         	pop	{r7, pc}

08056974 <vTaskStartScheduler>:
; {
 8056974: b580         	push	{r7, lr}
 8056976: 466f         	mov	r7, sp
 8056978: b082         	sub	sp, #0x8
;     xReturn = prvCreateIdleTasks();
 805697a: f000 f836    	bl	0x80569ea <prvCreateIdleTasks> @ imm = #0x6c
 805697e: 9001         	str	r0, [sp, #0x4]
;         if( xReturn == pdPASS )
 8056980: 9801         	ldr	r0, [sp, #0x4]
 8056982: 2801         	cmp	r0, #0x1
 8056984: d104         	bne	0x8056990 <vTaskStartScheduler+0x1c> @ imm = #0x8
 8056986: e7ff         	b	0x8056988 <vTaskStartScheduler+0x14> @ imm = #-0x2
;             xReturn = xTimerCreateTimerTask();
 8056988: f000 fb03    	bl	0x8056f92 <xTimerCreateTimerTask> @ imm = #0x606
 805698c: 9001         	str	r0, [sp, #0x4]
;         }
 805698e: e000         	b	0x8056992 <vTaskStartScheduler+0x1e> @ imm = #0x0
 8056990: e7ff         	b	0x8056992 <vTaskStartScheduler+0x1e> @ imm = #-0x2
;     if( xReturn == pdPASS )
 8056992: 9801         	ldr	r0, [sp, #0x4]
 8056994: 2801         	cmp	r0, #0x1
 8056996: d118         	bne	0x80569ca <vTaskStartScheduler+0x56> @ imm = #0x30
 8056998: e7ff         	b	0x805699a <vTaskStartScheduler+0x26> @ imm = #-0x2
;         portDISABLE_INTERRUPTS();
 805699a: f001 fde9    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0x1bd2
;         xNextTaskUnblockTime = portMAX_DELAY;
 805699e: f240 20b0    	movw	r0, #0x2b0
 80569a2: f2c2 0000    	movt	r0, #0x2000
 80569a6: f04f 31ff    	mov.w	r1, #0xffffffff
 80569aa: 6001         	str	r1, [r0]
;         xSchedulerRunning = pdTRUE;
 80569ac: f240 102c    	movw	r0, #0x12c
 80569b0: f2c2 0000    	movt	r0, #0x2000
 80569b4: 2101         	movs	r1, #0x1
 80569b6: 6001         	str	r1, [r0]
;         xTickCount = ( TickType_t ) configINITIAL_TICK_COUNT;
 80569b8: f240 1034    	movw	r0, #0x134
 80569bc: f2c2 0000    	movt	r0, #0x2000
 80569c0: 2100         	movs	r1, #0x0
 80569c2: 6001         	str	r1, [r0]
;         xPortStartScheduler();
 80569c4: f001 fd30    	bl	0x8058428 <xPortStartScheduler> @ imm = #0x1a60
;     }
 80569c8: e008         	b	0x80569dc <vTaskStartScheduler+0x68> @ imm = #0x10
;         configASSERT( xReturn != errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY );
 80569ca: 9801         	ldr	r0, [sp, #0x4]
 80569cc: 3001         	adds	r0, #0x1
 80569ce: b920         	cbnz	r0, 0x80569da <vTaskStartScheduler+0x66> @ imm = #0x8
 80569d0: e7ff         	b	0x80569d2 <vTaskStartScheduler+0x5e> @ imm = #-0x2
 80569d2: f001 fdcd    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0x1b9a
 80569d6: e7ff         	b	0x80569d8 <vTaskStartScheduler+0x64> @ imm = #-0x2
 80569d8: e7fe         	b	0x80569d8 <vTaskStartScheduler+0x64> @ imm = #-0x4
 80569da: e7ff         	b	0x80569dc <vTaskStartScheduler+0x68> @ imm = #-0x2
;     ( void ) uxTopUsedPriority;
 80569dc: f248 6090    	movw	r0, #0x8690
 80569e0: f6c0 0005    	movt	r0, #0x805
 80569e4: 6800         	ldr	r0, [r0]
; }
 80569e6: b002         	add	sp, #0x8
 80569e8: bd80         	pop	{r7, pc}

080569ea <prvCreateIdleTasks>:
; {
 80569ea: b580         	push	{r7, lr}
 80569ec: 466f         	mov	r7, sp
 80569ee: b08a         	sub	sp, #0x28
 80569f0: 2001         	movs	r0, #0x1
;     BaseType_t xReturn = pdPASS;
 80569f2: 9009         	str	r0, [sp, #0x24]
 80569f4: 2000         	movs	r0, #0x0
;     TaskFunction_t pxIdleTaskFunction = NULL;
 80569f6: 9003         	str	r0, [sp, #0xc]
;     for( xIdleTaskNameIndex = ( BaseType_t ) 0; xIdleTaskNameIndex < ( BaseType_t ) configMAX_TASK_NAME_LEN; xIdleTaskNameIndex++ )
 80569f8: 9002         	str	r0, [sp, #0x8]
 80569fa: e7ff         	b	0x80569fc <prvCreateIdleTasks+0x12> @ imm = #-0x2
 80569fc: 9802         	ldr	r0, [sp, #0x8]
 80569fe: 280f         	cmp	r0, #0xf
 8056a00: dc13         	bgt	0x8056a2a <prvCreateIdleTasks+0x40> @ imm = #0x26
 8056a02: e7ff         	b	0x8056a04 <prvCreateIdleTasks+0x1a> @ imm = #-0x2
;         cIdleName[ xIdleTaskNameIndex ] = configIDLE_TASK_NAME[ xIdleTaskNameIndex ];
 8056a04: 9802         	ldr	r0, [sp, #0x8]
 8056a06: f248 6180    	movw	r1, #0x8680
 8056a0a: f6c0 0105    	movt	r1, #0x805
 8056a0e: 5c09         	ldrb	r1, [r1, r0]
 8056a10: aa04         	add	r2, sp, #0x10
 8056a12: 5411         	strb	r1, [r2, r0]
;         if( cIdleName[ xIdleTaskNameIndex ] == ( char ) 0x00 )
 8056a14: 9802         	ldr	r0, [sp, #0x8]
 8056a16: 5c10         	ldrb	r0, [r2, r0]
 8056a18: b908         	cbnz	r0, 0x8056a1e <prvCreateIdleTasks+0x34> @ imm = #0x2
 8056a1a: e7ff         	b	0x8056a1c <prvCreateIdleTasks+0x32> @ imm = #-0x2
;             break;
 8056a1c: e006         	b	0x8056a2c <prvCreateIdleTasks+0x42> @ imm = #0xc
 8056a1e: e7ff         	b	0x8056a20 <prvCreateIdleTasks+0x36> @ imm = #-0x2
;     }
 8056a20: e7ff         	b	0x8056a22 <prvCreateIdleTasks+0x38> @ imm = #-0x2
;     for( xIdleTaskNameIndex = ( BaseType_t ) 0; xIdleTaskNameIndex < ( BaseType_t ) configMAX_TASK_NAME_LEN; xIdleTaskNameIndex++ )
 8056a22: 9802         	ldr	r0, [sp, #0x8]
 8056a24: 3001         	adds	r0, #0x1
 8056a26: 9002         	str	r0, [sp, #0x8]
 8056a28: e7e8         	b	0x80569fc <prvCreateIdleTasks+0x12> @ imm = #-0x30
;     for( xCoreID = ( BaseType_t ) 0; xCoreID < ( BaseType_t ) configNUMBER_OF_CORES; xCoreID++ )
 8056a2a: e7ff         	b	0x8056a2c <prvCreateIdleTasks+0x42> @ imm = #-0x2
 8056a2c: 2000         	movs	r0, #0x0
;     for( xCoreID = ( BaseType_t ) 0; xCoreID < ( BaseType_t ) configNUMBER_OF_CORES; xCoreID++ )
 8056a2e: 9008         	str	r0, [sp, #0x20]
 8056a30: e7ff         	b	0x8056a32 <prvCreateIdleTasks+0x48> @ imm = #-0x2
 8056a32: 9808         	ldr	r0, [sp, #0x20]
 8056a34: 2800         	cmp	r0, #0x0
 8056a36: dc1f         	bgt	0x8056a78 <prvCreateIdleTasks+0x8e> @ imm = #0x3e
 8056a38: e7ff         	b	0x8056a3a <prvCreateIdleTasks+0x50> @ imm = #-0x2
;             pxIdleTaskFunction = prvIdleTask;
 8056a3a: f646 2081    	movw	r0, #0x6a81
 8056a3e: f6c0 0005    	movt	r0, #0x805
 8056a42: 9003         	str	r0, [sp, #0xc]
;             xReturn = xTaskCreate( pxIdleTaskFunction,
 8056a44: 9803         	ldr	r0, [sp, #0xc]
;                                    &xIdleTaskHandles[ xCoreID ] ); /*lint !e961 MISRA exception, justified as it is not a redundant explicit cast to all supported compilers. */
 8056a46: 9908         	ldr	r1, [sp, #0x20]
 8056a48: f240 22b4    	movw	r2, #0x2b4
 8056a4c: f2c2 0200    	movt	r2, #0x2000
 8056a50: eb02 0181    	add.w	r1, r2, r1, lsl #2
;             xReturn = xTaskCreate( pxIdleTaskFunction,
 8056a54: 9100         	str	r1, [sp]
 8056a56: a904         	add	r1, sp, #0x10
 8056a58: f44f 6280    	mov.w	r2, #0x400
 8056a5c: 2300         	movs	r3, #0x0
 8056a5e: f7ff fa4b    	bl	0x8055ef8 <xTaskCreate> @ imm = #-0xb6a
 8056a62: 9009         	str	r0, [sp, #0x24]
;         if( xReturn == pdFAIL )
 8056a64: 9809         	ldr	r0, [sp, #0x24]
 8056a66: b908         	cbnz	r0, 0x8056a6c <prvCreateIdleTasks+0x82> @ imm = #0x2
 8056a68: e7ff         	b	0x8056a6a <prvCreateIdleTasks+0x80> @ imm = #-0x2
;             break;
 8056a6a: e006         	b	0x8056a7a <prvCreateIdleTasks+0x90> @ imm = #0xc
 8056a6c: e7ff         	b	0x8056a6e <prvCreateIdleTasks+0x84> @ imm = #-0x2
;     }
 8056a6e: e7ff         	b	0x8056a70 <prvCreateIdleTasks+0x86> @ imm = #-0x2
;     for( xCoreID = ( BaseType_t ) 0; xCoreID < ( BaseType_t ) configNUMBER_OF_CORES; xCoreID++ )
 8056a70: 9808         	ldr	r0, [sp, #0x20]
 8056a72: 3001         	adds	r0, #0x1
 8056a74: 9008         	str	r0, [sp, #0x20]
 8056a76: e7dc         	b	0x8056a32 <prvCreateIdleTasks+0x48> @ imm = #-0x48
;     return xReturn;
 8056a78: e7ff         	b	0x8056a7a <prvCreateIdleTasks+0x90> @ imm = #-0x2
 8056a7a: 9809         	ldr	r0, [sp, #0x24]
 8056a7c: b00a         	add	sp, #0x28
 8056a7e: bd80         	pop	{r7, pc}

08056a80 <prvIdleTask>:
; {
 8056a80: b580         	push	{r7, lr}
 8056a82: 466f         	mov	r7, sp
 8056a84: b082         	sub	sp, #0x8
 8056a86: 9001         	str	r0, [sp, #0x4]
;     for( ; configCONTROL_INFINITE_LOOP(); )
 8056a88: e7ff         	b	0x8056a8a <prvIdleTask+0xa> @ imm = #-0x2
;         prvCheckTasksWaitingTermination();
 8056a8a: f000 f80d    	bl	0x8056aa8 <prvCheckTasksWaitingTermination> @ imm = #0x1a
;             if( listCURRENT_LIST_LENGTH( &( pxReadyTasksLists[ tskIDLE_PRIORITY ] ) ) > ( UBaseType_t ) configNUMBER_OF_CORES )
 8056a8e: f240 1068    	movw	r0, #0x168
 8056a92: f2c2 0000    	movt	r0, #0x2000
 8056a96: 6800         	ldr	r0, [r0]
 8056a98: 2802         	cmp	r0, #0x2
 8056a9a: d303         	blo	0x8056aa4 <prvIdleTask+0x24> @ imm = #0x6
 8056a9c: e7ff         	b	0x8056a9e <prvIdleTask+0x1e> @ imm = #-0x2
;                 taskYIELD();
 8056a9e: f001 fa77    	bl	0x8057f90 <vPortYield>  @ imm = #0x14ee
;             }
 8056aa2: e000         	b	0x8056aa6 <prvIdleTask+0x26> @ imm = #0x0
 8056aa4: e7ff         	b	0x8056aa6 <prvIdleTask+0x26> @ imm = #-0x2
;     for( ; configCONTROL_INFINITE_LOOP(); )
 8056aa6: e7f0         	b	0x8056a8a <prvIdleTask+0xa> @ imm = #-0x20

08056aa8 <prvCheckTasksWaitingTermination>:
; {
 8056aa8: b580         	push	{r7, lr}
 8056aaa: 466f         	mov	r7, sp
 8056aac: b082         	sub	sp, #0x8
;         while( uxDeletedTasksWaitingCleanUp > ( UBaseType_t ) 0U )
 8056aae: e7ff         	b	0x8056ab0 <prvCheckTasksWaitingTermination+0x8> @ imm = #-0x2
 8056ab0: f240 1024    	movw	r0, #0x124
 8056ab4: f2c2 0000    	movt	r0, #0x2000
 8056ab8: 6800         	ldr	r0, [r0]
 8056aba: b308         	cbz	r0, 0x8056b00 <prvCheckTasksWaitingTermination+0x58> @ imm = #0x42
 8056abc: e7ff         	b	0x8056abe <prvCheckTasksWaitingTermination+0x16> @ imm = #-0x2
;                 taskENTER_CRITICAL();
 8056abe: f001 fa73    	bl	0x8057fa8 <vPortEnterCritical> @ imm = #0x14e6
;                         pxTCB = listGET_OWNER_OF_HEAD_ENTRY( ( &xTasksWaitingTermination ) ); /*lint !e9079 void * is used as this macro is used with timers too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
 8056ac2: f240 1010    	movw	r0, #0x110
 8056ac6: f2c2 0000    	movt	r0, #0x2000
 8056aca: 68c0         	ldr	r0, [r0, #0xc]
 8056acc: 68c0         	ldr	r0, [r0, #0xc]
 8056ace: 9001         	str	r0, [sp, #0x4]
;                         ( void ) uxListRemove( &( pxTCB->xStateListItem ) );
 8056ad0: 9801         	ldr	r0, [sp, #0x4]
 8056ad2: 3004         	adds	r0, #0x4
 8056ad4: f000 fa39    	bl	0x8056f4a <uxListRemove> @ imm = #0x472
;                         --uxCurrentNumberOfTasks;
 8056ad8: f240 1028    	movw	r0, #0x128
 8056adc: f2c2 0000    	movt	r0, #0x2000
 8056ae0: 6801         	ldr	r1, [r0]
 8056ae2: 3901         	subs	r1, #0x1
 8056ae4: 6001         	str	r1, [r0]
;                         --uxDeletedTasksWaitingCleanUp;
 8056ae6: f240 1024    	movw	r0, #0x124
 8056aea: f2c2 0000    	movt	r0, #0x2000
 8056aee: 6801         	ldr	r1, [r0]
 8056af0: 3901         	subs	r1, #0x1
 8056af2: 6001         	str	r1, [r0]
;                 taskEXIT_CRITICAL();
 8056af4: f001 fa68    	bl	0x8057fc8 <vPortExitCritical> @ imm = #0x14d0
;                 prvDeleteTCB( pxTCB );
 8056af8: 9801         	ldr	r0, [sp, #0x4]
 8056afa: f000 f803    	bl	0x8056b04 <prvDeleteTCB> @ imm = #0x6
;         while( uxDeletedTasksWaitingCleanUp > ( UBaseType_t ) 0U )
 8056afe: e7d7         	b	0x8056ab0 <prvCheckTasksWaitingTermination+0x8> @ imm = #-0x52
; }
 8056b00: b002         	add	sp, #0x8
 8056b02: bd80         	pop	{r7, pc}

08056b04 <prvDeleteTCB>:
;     {
 8056b04: b580         	push	{r7, lr}
 8056b06: 466f         	mov	r7, sp
 8056b08: b082         	sub	sp, #0x8
 8056b0a: 9001         	str	r0, [sp, #0x4]
;         portCLEAN_UP_TCB( pxTCB );
 8056b0c: 9801         	ldr	r0, [sp, #0x4]
;             vPortFreeStack( pxTCB->pxStack );
 8056b0e: 6b00         	ldr	r0, [r0, #0x30]
 8056b10: f001 f909    	bl	0x8057d26 <vPortFree>   @ imm = #0x1212
;             vPortFree( pxTCB );
 8056b14: 9801         	ldr	r0, [sp, #0x4]
 8056b16: f001 f906    	bl	0x8057d26 <vPortFree>   @ imm = #0x120c
;     }
 8056b1a: b002         	add	sp, #0x8
 8056b1c: bd80         	pop	{r7, pc}

08056b1e <xTaskGetTickCount>:
; {
 8056b1e: b081         	sub	sp, #0x4
;         xTicks = xTickCount;
 8056b20: f240 1034    	movw	r0, #0x134
 8056b24: f2c2 0000    	movt	r0, #0x2000
 8056b28: 6800         	ldr	r0, [r0]
 8056b2a: 9000         	str	r0, [sp]
;     return xTicks;
 8056b2c: 9800         	ldr	r0, [sp]
 8056b2e: b001         	add	sp, #0x4
 8056b30: 4770         	bx	lr

08056b32 <vTaskPlaceOnEventList>:
; {
 8056b32: b580         	push	{r7, lr}
 8056b34: 466f         	mov	r7, sp
 8056b36: b082         	sub	sp, #0x8
 8056b38: 9001         	str	r0, [sp, #0x4]
 8056b3a: 9100         	str	r1, [sp]
;     configASSERT( pxEventList );
 8056b3c: 9801         	ldr	r0, [sp, #0x4]
 8056b3e: b920         	cbnz	r0, 0x8056b4a <vTaskPlaceOnEventList+0x18> @ imm = #0x8
 8056b40: e7ff         	b	0x8056b42 <vTaskPlaceOnEventList+0x10> @ imm = #-0x2
 8056b42: f001 fd15    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0x1a2a
 8056b46: e7ff         	b	0x8056b48 <vTaskPlaceOnEventList+0x16> @ imm = #-0x2
 8056b48: e7fe         	b	0x8056b48 <vTaskPlaceOnEventList+0x16> @ imm = #-0x4
;     vListInsert( pxEventList, &( pxCurrentTCB->xEventListItem ) );
 8056b4a: 9801         	ldr	r0, [sp, #0x4]
 8056b4c: f240 1108    	movw	r1, #0x108
 8056b50: f2c2 0100    	movt	r1, #0x2000
 8056b54: 6809         	ldr	r1, [r1]
 8056b56: 3118         	adds	r1, #0x18
 8056b58: f000 f9c2    	bl	0x8056ee0 <vListInsert> @ imm = #0x384
;     prvAddCurrentTaskToDelayedList( xTicksToWait, pdTRUE );
 8056b5c: 9800         	ldr	r0, [sp]
 8056b5e: 2101         	movs	r1, #0x1
 8056b60: f7ff fe88    	bl	0x8056874 <prvAddCurrentTaskToDelayedList> @ imm = #-0x2f0
; }
 8056b64: b002         	add	sp, #0x8
 8056b66: bd80         	pop	{r7, pc}

08056b68 <vTaskPlaceOnEventListRestricted>:
;     {
 8056b68: b580         	push	{r7, lr}
 8056b6a: 466f         	mov	r7, sp
 8056b6c: b084         	sub	sp, #0x10
 8056b6e: 9003         	str	r0, [sp, #0xc]
 8056b70: 9102         	str	r1, [sp, #0x8]
 8056b72: 9201         	str	r2, [sp, #0x4]
;         configASSERT( pxEventList );
 8056b74: 9803         	ldr	r0, [sp, #0xc]
 8056b76: b920         	cbnz	r0, 0x8056b82 <vTaskPlaceOnEventListRestricted+0x1a> @ imm = #0x8
 8056b78: e7ff         	b	0x8056b7a <vTaskPlaceOnEventListRestricted+0x12> @ imm = #-0x2
 8056b7a: f001 fcf9    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0x19f2
 8056b7e: e7ff         	b	0x8056b80 <vTaskPlaceOnEventListRestricted+0x18> @ imm = #-0x2
 8056b80: e7fe         	b	0x8056b80 <vTaskPlaceOnEventListRestricted+0x18> @ imm = #-0x4
;         listINSERT_END( pxEventList, &( pxCurrentTCB->xEventListItem ) );
 8056b82: e7ff         	b	0x8056b84 <vTaskPlaceOnEventListRestricted+0x1c> @ imm = #-0x2
 8056b84: 9803         	ldr	r0, [sp, #0xc]
 8056b86: 6840         	ldr	r0, [r0, #0x4]
 8056b88: 9000         	str	r0, [sp]
 8056b8a: 9800         	ldr	r0, [sp]
 8056b8c: f240 1108    	movw	r1, #0x108
 8056b90: f2c2 0100    	movt	r1, #0x2000
 8056b94: 680a         	ldr	r2, [r1]
 8056b96: 61d0         	str	r0, [r2, #0x1c]
 8056b98: 9800         	ldr	r0, [sp]
 8056b9a: 6880         	ldr	r0, [r0, #0x8]
 8056b9c: 680a         	ldr	r2, [r1]
 8056b9e: 6210         	str	r0, [r2, #0x20]
 8056ba0: 6808         	ldr	r0, [r1]
 8056ba2: 3018         	adds	r0, #0x18
 8056ba4: 9a00         	ldr	r2, [sp]
 8056ba6: 6892         	ldr	r2, [r2, #0x8]
 8056ba8: 6050         	str	r0, [r2, #0x4]
 8056baa: 6808         	ldr	r0, [r1]
 8056bac: 3018         	adds	r0, #0x18
 8056bae: 9a00         	ldr	r2, [sp]
 8056bb0: 6090         	str	r0, [r2, #0x8]
 8056bb2: 9803         	ldr	r0, [sp, #0xc]
 8056bb4: 6809         	ldr	r1, [r1]
 8056bb6: 6288         	str	r0, [r1, #0x28]
 8056bb8: 9803         	ldr	r0, [sp, #0xc]
 8056bba: 6801         	ldr	r1, [r0]
 8056bbc: 3101         	adds	r1, #0x1
 8056bbe: 6001         	str	r1, [r0]
 8056bc0: e7ff         	b	0x8056bc2 <vTaskPlaceOnEventListRestricted+0x5a> @ imm = #-0x2
;         if( xWaitIndefinitely != pdFALSE )
 8056bc2: 9801         	ldr	r0, [sp, #0x4]
 8056bc4: b120         	cbz	r0, 0x8056bd0 <vTaskPlaceOnEventListRestricted+0x68> @ imm = #0x8
 8056bc6: e7ff         	b	0x8056bc8 <vTaskPlaceOnEventListRestricted+0x60> @ imm = #-0x2
 8056bc8: f04f 30ff    	mov.w	r0, #0xffffffff
;             xTicksToWait = portMAX_DELAY;
 8056bcc: 9002         	str	r0, [sp, #0x8]
;         }
 8056bce: e7ff         	b	0x8056bd0 <vTaskPlaceOnEventListRestricted+0x68> @ imm = #-0x2
;         prvAddCurrentTaskToDelayedList( xTicksToWait, xWaitIndefinitely );
 8056bd0: 9802         	ldr	r0, [sp, #0x8]
 8056bd2: 9901         	ldr	r1, [sp, #0x4]
 8056bd4: f7ff fe4e    	bl	0x8056874 <prvAddCurrentTaskToDelayedList> @ imm = #-0x364
;     }
 8056bd8: b004         	add	sp, #0x10
 8056bda: bd80         	pop	{r7, pc}

08056bdc <xTaskRemoveFromEventList>:
; {
 8056bdc: b580         	push	{r7, lr}
 8056bde: 466f         	mov	r7, sp
 8056be0: b088         	sub	sp, #0x20
 8056be2: 9007         	str	r0, [sp, #0x1c]
;     pxUnblockedTCB = listGET_OWNER_OF_HEAD_ENTRY( pxEventList ); /*lint !e9079 void * is used as this macro is used with timers and co-routines too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
 8056be4: 9807         	ldr	r0, [sp, #0x1c]
 8056be6: 68c0         	ldr	r0, [r0, #0xc]
 8056be8: 68c0         	ldr	r0, [r0, #0xc]
 8056bea: 9006         	str	r0, [sp, #0x18]
;     configASSERT( pxUnblockedTCB );
 8056bec: 9806         	ldr	r0, [sp, #0x18]
 8056bee: b920         	cbnz	r0, 0x8056bfa <xTaskRemoveFromEventList+0x1e> @ imm = #0x8
 8056bf0: e7ff         	b	0x8056bf2 <xTaskRemoveFromEventList+0x16> @ imm = #-0x2
 8056bf2: f001 fcbd    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0x197a
 8056bf6: e7ff         	b	0x8056bf8 <xTaskRemoveFromEventList+0x1c> @ imm = #-0x2
 8056bf8: e7fe         	b	0x8056bf8 <xTaskRemoveFromEventList+0x1c> @ imm = #-0x4
;     listREMOVE_ITEM( &( pxUnblockedTCB->xEventListItem ) );
 8056bfa: e7ff         	b	0x8056bfc <xTaskRemoveFromEventList+0x20> @ imm = #-0x2
 8056bfc: 9806         	ldr	r0, [sp, #0x18]
 8056bfe: 6a80         	ldr	r0, [r0, #0x28]
 8056c00: 9004         	str	r0, [sp, #0x10]
 8056c02: 9806         	ldr	r0, [sp, #0x18]
 8056c04: 69c1         	ldr	r1, [r0, #0x1c]
 8056c06: 6a00         	ldr	r0, [r0, #0x20]
 8056c08: 6088         	str	r0, [r1, #0x8]
 8056c0a: 9806         	ldr	r0, [sp, #0x18]
 8056c0c: 69c1         	ldr	r1, [r0, #0x1c]
 8056c0e: 6a00         	ldr	r0, [r0, #0x20]
 8056c10: 6041         	str	r1, [r0, #0x4]
 8056c12: 9804         	ldr	r0, [sp, #0x10]
 8056c14: 6840         	ldr	r0, [r0, #0x4]
 8056c16: 9906         	ldr	r1, [sp, #0x18]
 8056c18: 3118         	adds	r1, #0x18
 8056c1a: 4288         	cmp	r0, r1
 8056c1c: d105         	bne	0x8056c2a <xTaskRemoveFromEventList+0x4e> @ imm = #0xa
 8056c1e: e7ff         	b	0x8056c20 <xTaskRemoveFromEventList+0x44> @ imm = #-0x2
 8056c20: 9806         	ldr	r0, [sp, #0x18]
 8056c22: 6a00         	ldr	r0, [r0, #0x20]
 8056c24: 9904         	ldr	r1, [sp, #0x10]
 8056c26: 6048         	str	r0, [r1, #0x4]
 8056c28: e7ff         	b	0x8056c2a <xTaskRemoveFromEventList+0x4e> @ imm = #-0x2
 8056c2a: 9806         	ldr	r0, [sp, #0x18]
 8056c2c: 2100         	movs	r1, #0x0
 8056c2e: 6281         	str	r1, [r0, #0x28]
 8056c30: 9804         	ldr	r0, [sp, #0x10]
 8056c32: 6801         	ldr	r1, [r0]
 8056c34: 3901         	subs	r1, #0x1
 8056c36: 6001         	str	r1, [r0]
 8056c38: e7ff         	b	0x8056c3a <xTaskRemoveFromEventList+0x5e> @ imm = #-0x2
;     if( uxSchedulerSuspended == ( UBaseType_t ) 0U )
 8056c3a: f240 1030    	movw	r0, #0x130
 8056c3e: f2c2 0000    	movt	r0, #0x2000
 8056c42: 6800         	ldr	r0, [r0]
 8056c44: 2800         	cmp	r0, #0x0
 8056c46: d165         	bne	0x8056d14 <xTaskRemoveFromEventList+0x138> @ imm = #0xca
 8056c48: e7ff         	b	0x8056c4a <xTaskRemoveFromEventList+0x6e> @ imm = #-0x2
;         listREMOVE_ITEM( &( pxUnblockedTCB->xStateListItem ) );
 8056c4a: e7ff         	b	0x8056c4c <xTaskRemoveFromEventList+0x70> @ imm = #-0x2
 8056c4c: 9806         	ldr	r0, [sp, #0x18]
 8056c4e: 6940         	ldr	r0, [r0, #0x14]
 8056c50: 9003         	str	r0, [sp, #0xc]
 8056c52: 9806         	ldr	r0, [sp, #0x18]
 8056c54: 6881         	ldr	r1, [r0, #0x8]
 8056c56: 68c0         	ldr	r0, [r0, #0xc]
 8056c58: 6088         	str	r0, [r1, #0x8]
 8056c5a: 9806         	ldr	r0, [sp, #0x18]
 8056c5c: 6881         	ldr	r1, [r0, #0x8]
 8056c5e: 68c0         	ldr	r0, [r0, #0xc]
 8056c60: 6041         	str	r1, [r0, #0x4]
 8056c62: 9803         	ldr	r0, [sp, #0xc]
 8056c64: 6840         	ldr	r0, [r0, #0x4]
 8056c66: 9906         	ldr	r1, [sp, #0x18]
 8056c68: 3104         	adds	r1, #0x4
 8056c6a: 4288         	cmp	r0, r1
 8056c6c: d105         	bne	0x8056c7a <xTaskRemoveFromEventList+0x9e> @ imm = #0xa
 8056c6e: e7ff         	b	0x8056c70 <xTaskRemoveFromEventList+0x94> @ imm = #-0x2
 8056c70: 9806         	ldr	r0, [sp, #0x18]
 8056c72: 68c0         	ldr	r0, [r0, #0xc]
 8056c74: 9903         	ldr	r1, [sp, #0xc]
 8056c76: 6048         	str	r0, [r1, #0x4]
 8056c78: e7ff         	b	0x8056c7a <xTaskRemoveFromEventList+0x9e> @ imm = #-0x2
 8056c7a: 9806         	ldr	r0, [sp, #0x18]
 8056c7c: 2100         	movs	r1, #0x0
 8056c7e: 6141         	str	r1, [r0, #0x14]
 8056c80: 9803         	ldr	r0, [sp, #0xc]
 8056c82: 6801         	ldr	r1, [r0]
 8056c84: 3901         	subs	r1, #0x1
 8056c86: 6001         	str	r1, [r0]
 8056c88: e7ff         	b	0x8056c8a <xTaskRemoveFromEventList+0xae> @ imm = #-0x2
;         prvAddTaskToReadyList( pxUnblockedTCB );
 8056c8a: e7ff         	b	0x8056c8c <xTaskRemoveFromEventList+0xb0> @ imm = #-0x2
 8056c8c: e7ff         	b	0x8056c8e <xTaskRemoveFromEventList+0xb2> @ imm = #-0x2
 8056c8e: 9806         	ldr	r0, [sp, #0x18]
 8056c90: 6ac0         	ldr	r0, [r0, #0x2c]
 8056c92: f240 21a8    	movw	r1, #0x2a8
 8056c96: f2c2 0100    	movt	r1, #0x2000
 8056c9a: 6809         	ldr	r1, [r1]
 8056c9c: 4288         	cmp	r0, r1
 8056c9e: d908         	bls	0x8056cb2 <xTaskRemoveFromEventList+0xd6> @ imm = #0x10
 8056ca0: e7ff         	b	0x8056ca2 <xTaskRemoveFromEventList+0xc6> @ imm = #-0x2
 8056ca2: 9806         	ldr	r0, [sp, #0x18]
 8056ca4: 6ac0         	ldr	r0, [r0, #0x2c]
 8056ca6: f240 21a8    	movw	r1, #0x2a8
 8056caa: f2c2 0100    	movt	r1, #0x2000
 8056cae: 6008         	str	r0, [r1]
 8056cb0: e7ff         	b	0x8056cb2 <xTaskRemoveFromEventList+0xd6> @ imm = #-0x2
 8056cb2: e7ff         	b	0x8056cb4 <xTaskRemoveFromEventList+0xd8> @ imm = #-0x2
 8056cb4: e7ff         	b	0x8056cb6 <xTaskRemoveFromEventList+0xda> @ imm = #-0x2
 8056cb6: 9806         	ldr	r0, [sp, #0x18]
 8056cb8: 6ac0         	ldr	r0, [r0, #0x2c]
 8056cba: eb00 0180    	add.w	r1, r0, r0, lsl #2
 8056cbe: f240 1068    	movw	r0, #0x168
 8056cc2: f2c2 0000    	movt	r0, #0x2000
 8056cc6: eb00 0181    	add.w	r1, r0, r1, lsl #2
 8056cca: 6849         	ldr	r1, [r1, #0x4]
 8056ccc: 9102         	str	r1, [sp, #0x8]
 8056cce: 9902         	ldr	r1, [sp, #0x8]
 8056cd0: 9a06         	ldr	r2, [sp, #0x18]
 8056cd2: 6091         	str	r1, [r2, #0x8]
 8056cd4: 9902         	ldr	r1, [sp, #0x8]
 8056cd6: 6889         	ldr	r1, [r1, #0x8]
 8056cd8: 9a06         	ldr	r2, [sp, #0x18]
 8056cda: 60d1         	str	r1, [r2, #0xc]
 8056cdc: 9906         	ldr	r1, [sp, #0x18]
 8056cde: 3104         	adds	r1, #0x4
 8056ce0: 9a02         	ldr	r2, [sp, #0x8]
 8056ce2: 6892         	ldr	r2, [r2, #0x8]
 8056ce4: 6051         	str	r1, [r2, #0x4]
 8056ce6: 9906         	ldr	r1, [sp, #0x18]
 8056ce8: 3104         	adds	r1, #0x4
 8056cea: 9a02         	ldr	r2, [sp, #0x8]
 8056cec: 6091         	str	r1, [r2, #0x8]
 8056cee: 9906         	ldr	r1, [sp, #0x18]
 8056cf0: 6aca         	ldr	r2, [r1, #0x2c]
 8056cf2: eb02 0282    	add.w	r2, r2, r2, lsl #2
 8056cf6: eb00 0282    	add.w	r2, r0, r2, lsl #2
 8056cfa: 614a         	str	r2, [r1, #0x14]
 8056cfc: 9906         	ldr	r1, [sp, #0x18]
 8056cfe: 6ac9         	ldr	r1, [r1, #0x2c]
 8056d00: eb01 0181    	add.w	r1, r1, r1, lsl #2
 8056d04: f850 2021    	ldr.w	r2, [r0, r1, lsl #2]
 8056d08: 3201         	adds	r2, #0x1
 8056d0a: f840 2021    	str.w	r2, [r0, r1, lsl #2]
 8056d0e: e7ff         	b	0x8056d10 <xTaskRemoveFromEventList+0x134> @ imm = #-0x2
 8056d10: e7ff         	b	0x8056d12 <xTaskRemoveFromEventList+0x136> @ imm = #-0x2
;     }
 8056d12: e01d         	b	0x8056d50 <xTaskRemoveFromEventList+0x174> @ imm = #0x3a
;         listINSERT_END( &( xPendingReadyList ), &( pxUnblockedTCB->xEventListItem ) );
 8056d14: e7ff         	b	0x8056d16 <xTaskRemoveFromEventList+0x13a> @ imm = #-0x2
 8056d16: f240 1040    	movw	r0, #0x140
 8056d1a: f2c2 0000    	movt	r0, #0x2000
 8056d1e: 6841         	ldr	r1, [r0, #0x4]
 8056d20: 9101         	str	r1, [sp, #0x4]
 8056d22: 9901         	ldr	r1, [sp, #0x4]
 8056d24: 9a06         	ldr	r2, [sp, #0x18]
 8056d26: 61d1         	str	r1, [r2, #0x1c]
 8056d28: 9901         	ldr	r1, [sp, #0x4]
 8056d2a: 6889         	ldr	r1, [r1, #0x8]
 8056d2c: 9a06         	ldr	r2, [sp, #0x18]
 8056d2e: 6211         	str	r1, [r2, #0x20]
 8056d30: 9906         	ldr	r1, [sp, #0x18]
 8056d32: 3118         	adds	r1, #0x18
 8056d34: 9a01         	ldr	r2, [sp, #0x4]
 8056d36: 6892         	ldr	r2, [r2, #0x8]
 8056d38: 6051         	str	r1, [r2, #0x4]
 8056d3a: 9906         	ldr	r1, [sp, #0x18]
 8056d3c: 3118         	adds	r1, #0x18
 8056d3e: 9a01         	ldr	r2, [sp, #0x4]
 8056d40: 6091         	str	r1, [r2, #0x8]
 8056d42: 9906         	ldr	r1, [sp, #0x18]
 8056d44: 6288         	str	r0, [r1, #0x28]
 8056d46: 6801         	ldr	r1, [r0]
 8056d48: 3101         	adds	r1, #0x1
 8056d4a: 6001         	str	r1, [r0]
 8056d4c: e7ff         	b	0x8056d4e <xTaskRemoveFromEventList+0x172> @ imm = #-0x2
 8056d4e: e7ff         	b	0x8056d50 <xTaskRemoveFromEventList+0x174> @ imm = #-0x2
;         if( pxUnblockedTCB->uxPriority > pxCurrentTCB->uxPriority )
 8056d50: 9806         	ldr	r0, [sp, #0x18]
 8056d52: 6ac0         	ldr	r0, [r0, #0x2c]
 8056d54: f240 1108    	movw	r1, #0x108
 8056d58: f2c2 0100    	movt	r1, #0x2000
 8056d5c: 6809         	ldr	r1, [r1]
 8056d5e: 6ac9         	ldr	r1, [r1, #0x2c]
 8056d60: 4288         	cmp	r0, r1
 8056d62: d908         	bls	0x8056d76 <xTaskRemoveFromEventList+0x19a> @ imm = #0x10
 8056d64: e7ff         	b	0x8056d66 <xTaskRemoveFromEventList+0x18a> @ imm = #-0x2
 8056d66: 2001         	movs	r0, #0x1
;             xReturn = pdTRUE;
 8056d68: 9005         	str	r0, [sp, #0x14]
;             xYieldPendings[ 0 ] = pdTRUE;
 8056d6a: f240 21ac    	movw	r1, #0x2ac
 8056d6e: f2c2 0100    	movt	r1, #0x2000
 8056d72: 6008         	str	r0, [r1]
;         }
 8056d74: e002         	b	0x8056d7c <xTaskRemoveFromEventList+0x1a0> @ imm = #0x4
 8056d76: 2000         	movs	r0, #0x0
;             xReturn = pdFALSE;
 8056d78: 9005         	str	r0, [sp, #0x14]
 8056d7a: e7ff         	b	0x8056d7c <xTaskRemoveFromEventList+0x1a0> @ imm = #-0x2
;     return xReturn;
 8056d7c: 9805         	ldr	r0, [sp, #0x14]
 8056d7e: b008         	add	sp, #0x20
 8056d80: bd80         	pop	{r7, pc}

08056d82 <vTaskInternalSetTimeOutState>:
; {
 8056d82: b081         	sub	sp, #0x4
 8056d84: 9000         	str	r0, [sp]
;     pxTimeOut->xOverflowCount = xNumOfOverflows;
 8056d86: f240 20bc    	movw	r0, #0x2bc
 8056d8a: f2c2 0000    	movt	r0, #0x2000
 8056d8e: 6800         	ldr	r0, [r0]
 8056d90: 9900         	ldr	r1, [sp]
 8056d92: 6008         	str	r0, [r1]
;     pxTimeOut->xTimeOnEntering = xTickCount;
 8056d94: f240 1034    	movw	r0, #0x134
 8056d98: f2c2 0000    	movt	r0, #0x2000
 8056d9c: 6800         	ldr	r0, [r0]
 8056d9e: 9900         	ldr	r1, [sp]
 8056da0: 6048         	str	r0, [r1, #0x4]
; }
 8056da2: b001         	add	sp, #0x4
 8056da4: 4770         	bx	lr

08056da6 <xTaskCheckForTimeOut>:
; {
 8056da6: b580         	push	{r7, lr}
 8056da8: 466f         	mov	r7, sp
 8056daa: b086         	sub	sp, #0x18
 8056dac: 9005         	str	r0, [sp, #0x14]
 8056dae: 9104         	str	r1, [sp, #0x10]
;     configASSERT( pxTimeOut );
 8056db0: 9805         	ldr	r0, [sp, #0x14]
 8056db2: b920         	cbnz	r0, 0x8056dbe <xTaskCheckForTimeOut+0x18> @ imm = #0x8
 8056db4: e7ff         	b	0x8056db6 <xTaskCheckForTimeOut+0x10> @ imm = #-0x2
 8056db6: f001 fbdb    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0x17b6
 8056dba: e7ff         	b	0x8056dbc <xTaskCheckForTimeOut+0x16> @ imm = #-0x2
 8056dbc: e7fe         	b	0x8056dbc <xTaskCheckForTimeOut+0x16> @ imm = #-0x4
;     configASSERT( pxTicksToWait );
 8056dbe: 9804         	ldr	r0, [sp, #0x10]
 8056dc0: b920         	cbnz	r0, 0x8056dcc <xTaskCheckForTimeOut+0x26> @ imm = #0x8
 8056dc2: e7ff         	b	0x8056dc4 <xTaskCheckForTimeOut+0x1e> @ imm = #-0x2
 8056dc4: f001 fbd4    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0x17a8
 8056dc8: e7ff         	b	0x8056dca <xTaskCheckForTimeOut+0x24> @ imm = #-0x2
 8056dca: e7fe         	b	0x8056dca <xTaskCheckForTimeOut+0x24> @ imm = #-0x4
;     taskENTER_CRITICAL();
 8056dcc: f001 f8ec    	bl	0x8057fa8 <vPortEnterCritical> @ imm = #0x11d8
;         const TickType_t xConstTickCount = xTickCount;
 8056dd0: f240 1034    	movw	r0, #0x134
 8056dd4: f2c2 0000    	movt	r0, #0x2000
 8056dd8: 6800         	ldr	r0, [r0]
 8056dda: 9002         	str	r0, [sp, #0x8]
;         const TickType_t xElapsedTime = xConstTickCount - pxTimeOut->xTimeOnEntering;
 8056ddc: 9802         	ldr	r0, [sp, #0x8]
 8056dde: 9905         	ldr	r1, [sp, #0x14]
 8056de0: 6849         	ldr	r1, [r1, #0x4]
 8056de2: 1a40         	subs	r0, r0, r1
 8056de4: 9001         	str	r0, [sp, #0x4]
;             if( *pxTicksToWait == portMAX_DELAY )
 8056de6: 9804         	ldr	r0, [sp, #0x10]
 8056de8: 6800         	ldr	r0, [r0]
 8056dea: 3001         	adds	r0, #0x1
 8056dec: b918         	cbnz	r0, 0x8056df6 <xTaskCheckForTimeOut+0x50> @ imm = #0x6
 8056dee: e7ff         	b	0x8056df0 <xTaskCheckForTimeOut+0x4a> @ imm = #-0x2
 8056df0: 2000         	movs	r0, #0x0
;                 xReturn = pdFALSE;
 8056df2: 9003         	str	r0, [sp, #0xc]
;             }
 8056df4: e02e         	b	0x8056e54 <xTaskCheckForTimeOut+0xae> @ imm = #0x5c
;         if( ( xNumOfOverflows != pxTimeOut->xOverflowCount ) && ( xConstTickCount >= pxTimeOut->xTimeOnEntering ) ) /*lint !e525 Indentation preferred as is to make code within pre-processor directives clearer. */
 8056df6: f240 20bc    	movw	r0, #0x2bc
 8056dfa: f2c2 0000    	movt	r0, #0x2000
 8056dfe: 6800         	ldr	r0, [r0]
 8056e00: 9905         	ldr	r1, [sp, #0x14]
 8056e02: 6809         	ldr	r1, [r1]
 8056e04: 4288         	cmp	r0, r1
 8056e06: d00c         	beq	0x8056e22 <xTaskCheckForTimeOut+0x7c> @ imm = #0x18
 8056e08: e7ff         	b	0x8056e0a <xTaskCheckForTimeOut+0x64> @ imm = #-0x2
 8056e0a: 9802         	ldr	r0, [sp, #0x8]
 8056e0c: 9905         	ldr	r1, [sp, #0x14]
 8056e0e: 6849         	ldr	r1, [r1, #0x4]
 8056e10: 4288         	cmp	r0, r1
 8056e12: d306         	blo	0x8056e22 <xTaskCheckForTimeOut+0x7c> @ imm = #0xc
 8056e14: e7ff         	b	0x8056e16 <xTaskCheckForTimeOut+0x70> @ imm = #-0x2
 8056e16: 2001         	movs	r0, #0x1
;             xReturn = pdTRUE;
 8056e18: 9003         	str	r0, [sp, #0xc]
;             *pxTicksToWait = ( TickType_t ) 0;
 8056e1a: 9804         	ldr	r0, [sp, #0x10]
 8056e1c: 2100         	movs	r1, #0x0
 8056e1e: 6001         	str	r1, [r0]
;         }
 8056e20: e017         	b	0x8056e52 <xTaskCheckForTimeOut+0xac> @ imm = #0x2e
;         else if( xElapsedTime < *pxTicksToWait ) /*lint !e961 Explicit casting is only redundant with some compilers, whereas others require it to prevent integer conversion errors. */
 8056e22: 9801         	ldr	r0, [sp, #0x4]
 8056e24: 9904         	ldr	r1, [sp, #0x10]
 8056e26: 6809         	ldr	r1, [r1]
 8056e28: 4288         	cmp	r0, r1
 8056e2a: d20b         	bhs	0x8056e44 <xTaskCheckForTimeOut+0x9e> @ imm = #0x16
 8056e2c: e7ff         	b	0x8056e2e <xTaskCheckForTimeOut+0x88> @ imm = #-0x2
;             *pxTicksToWait -= xElapsedTime;
 8056e2e: 9801         	ldr	r0, [sp, #0x4]
 8056e30: 9904         	ldr	r1, [sp, #0x10]
 8056e32: 680a         	ldr	r2, [r1]
 8056e34: 1a10         	subs	r0, r2, r0
 8056e36: 6008         	str	r0, [r1]
;             vTaskInternalSetTimeOutState( pxTimeOut );
 8056e38: 9805         	ldr	r0, [sp, #0x14]
 8056e3a: f7ff ffa2    	bl	0x8056d82 <vTaskInternalSetTimeOutState> @ imm = #-0xbc
 8056e3e: 2000         	movs	r0, #0x0
;             xReturn = pdFALSE;
 8056e40: 9003         	str	r0, [sp, #0xc]
;         }
 8056e42: e005         	b	0x8056e50 <xTaskCheckForTimeOut+0xaa> @ imm = #0xa
;             *pxTicksToWait = ( TickType_t ) 0;
 8056e44: 9804         	ldr	r0, [sp, #0x10]
 8056e46: 2100         	movs	r1, #0x0
 8056e48: 6001         	str	r1, [r0]
 8056e4a: 2001         	movs	r0, #0x1
;             xReturn = pdTRUE;
 8056e4c: 9003         	str	r0, [sp, #0xc]
 8056e4e: e7ff         	b	0x8056e50 <xTaskCheckForTimeOut+0xaa> @ imm = #-0x2
 8056e50: e7ff         	b	0x8056e52 <xTaskCheckForTimeOut+0xac> @ imm = #-0x2
 8056e52: e7ff         	b	0x8056e54 <xTaskCheckForTimeOut+0xae> @ imm = #-0x2
;     taskEXIT_CRITICAL();
 8056e54: f001 f8b8    	bl	0x8057fc8 <vPortExitCritical> @ imm = #0x1170
;     return xReturn;
 8056e58: 9803         	ldr	r0, [sp, #0xc]
 8056e5a: b006         	add	sp, #0x18
 8056e5c: bd80         	pop	{r7, pc}

08056e5e <vTaskMissedYield>:
;     xYieldPendings[ portGET_CORE_ID() ] = pdTRUE;
 8056e5e: f240 20ac    	movw	r0, #0x2ac
 8056e62: f2c2 0000    	movt	r0, #0x2000
 8056e66: 2101         	movs	r1, #0x1
 8056e68: 6001         	str	r1, [r0]
; }
 8056e6a: 4770         	bx	lr

08056e6c <xTaskGetSchedulerState>:
;     {
 8056e6c: b081         	sub	sp, #0x4
;         if( xSchedulerRunning == pdFALSE )
 8056e6e: f240 102c    	movw	r0, #0x12c
 8056e72: f2c2 0000    	movt	r0, #0x2000
 8056e76: 6800         	ldr	r0, [r0]
 8056e78: b918         	cbnz	r0, 0x8056e82 <xTaskGetSchedulerState+0x16> @ imm = #0x6
 8056e7a: e7ff         	b	0x8056e7c <xTaskGetSchedulerState+0x10> @ imm = #-0x2
 8056e7c: 2001         	movs	r0, #0x1
;             xReturn = taskSCHEDULER_NOT_STARTED;
 8056e7e: 9000         	str	r0, [sp]
;         }
 8056e80: e00d         	b	0x8056e9e <xTaskGetSchedulerState+0x32> @ imm = #0x1a
;                 if( uxSchedulerSuspended == ( UBaseType_t ) 0U )
 8056e82: f240 1030    	movw	r0, #0x130
 8056e86: f2c2 0000    	movt	r0, #0x2000
 8056e8a: 6800         	ldr	r0, [r0]
 8056e8c: b918         	cbnz	r0, 0x8056e96 <xTaskGetSchedulerState+0x2a> @ imm = #0x6
 8056e8e: e7ff         	b	0x8056e90 <xTaskGetSchedulerState+0x24> @ imm = #-0x2
 8056e90: 2002         	movs	r0, #0x2
;                     xReturn = taskSCHEDULER_RUNNING;
 8056e92: 9000         	str	r0, [sp]
;                 }
 8056e94: e002         	b	0x8056e9c <xTaskGetSchedulerState+0x30> @ imm = #0x4
 8056e96: 2000         	movs	r0, #0x0
;                     xReturn = taskSCHEDULER_SUSPENDED;
 8056e98: 9000         	str	r0, [sp]
 8056e9a: e7ff         	b	0x8056e9c <xTaskGetSchedulerState+0x30> @ imm = #-0x2
 8056e9c: e7ff         	b	0x8056e9e <xTaskGetSchedulerState+0x32> @ imm = #-0x2
;         return xReturn;
 8056e9e: 9800         	ldr	r0, [sp]
 8056ea0: b001         	add	sp, #0x4
 8056ea2: 4770         	bx	lr

08056ea4 <vListInitialise>:
; {
 8056ea4: b081         	sub	sp, #0x4
 8056ea6: 9000         	str	r0, [sp]
;     pxList->pxIndex = ( ListItem_t * ) &( pxList->xListEnd ); /*lint !e826 !e740 !e9087 The mini list structure is used as the list end to save RAM.  This is checked and valid. */
 8056ea8: 9800         	ldr	r0, [sp]
 8056eaa: f100 0108    	add.w	r1, r0, #0x8
 8056eae: 6041         	str	r1, [r0, #0x4]
;     pxList->xListEnd.xItemValue = portMAX_DELAY;
 8056eb0: 9800         	ldr	r0, [sp]
 8056eb2: f04f 31ff    	mov.w	r1, #0xffffffff
 8056eb6: 6081         	str	r1, [r0, #0x8]
;     pxList->xListEnd.pxNext = ( ListItem_t * ) &( pxList->xListEnd );     /*lint !e826 !e740 !e9087 The mini list structure is used as the list end to save RAM.  This is checked and valid. */
 8056eb8: 9800         	ldr	r0, [sp]
 8056eba: f100 0108    	add.w	r1, r0, #0x8
 8056ebe: 60c1         	str	r1, [r0, #0xc]
;     pxList->xListEnd.pxPrevious = ( ListItem_t * ) &( pxList->xListEnd ); /*lint !e826 !e740 !e9087 The mini list structure is used as the list end to save RAM.  This is checked and valid. */
 8056ec0: 9800         	ldr	r0, [sp]
 8056ec2: f100 0108    	add.w	r1, r0, #0x8
 8056ec6: 6101         	str	r1, [r0, #0x10]
;     pxList->uxNumberOfItems = ( UBaseType_t ) 0U;
 8056ec8: 9800         	ldr	r0, [sp]
 8056eca: 2100         	movs	r1, #0x0
 8056ecc: 6001         	str	r1, [r0]
; }
 8056ece: b001         	add	sp, #0x4
 8056ed0: 4770         	bx	lr

08056ed2 <vListInitialiseItem>:
; {
 8056ed2: b081         	sub	sp, #0x4
 8056ed4: 9000         	str	r0, [sp]
;     pxItem->pxContainer = NULL;
 8056ed6: 9800         	ldr	r0, [sp]
 8056ed8: 2100         	movs	r1, #0x0
 8056eda: 6101         	str	r1, [r0, #0x10]
; }
 8056edc: b001         	add	sp, #0x4
 8056ede: 4770         	bx	lr

08056ee0 <vListInsert>:
; {
 8056ee0: b084         	sub	sp, #0x10
 8056ee2: 9003         	str	r0, [sp, #0xc]
 8056ee4: 9102         	str	r1, [sp, #0x8]
;     const TickType_t xValueOfInsertion = pxNewListItem->xItemValue;
 8056ee6: 9802         	ldr	r0, [sp, #0x8]
 8056ee8: 6800         	ldr	r0, [r0]
 8056eea: 9000         	str	r0, [sp]
;     if( xValueOfInsertion == portMAX_DELAY )
 8056eec: 9800         	ldr	r0, [sp]
 8056eee: 3001         	adds	r0, #0x1
 8056ef0: b920         	cbnz	r0, 0x8056efc <vListInsert+0x1c> @ imm = #0x8
 8056ef2: e7ff         	b	0x8056ef4 <vListInsert+0x14> @ imm = #-0x2
;         pxIterator = pxList->xListEnd.pxPrevious;
 8056ef4: 9803         	ldr	r0, [sp, #0xc]
 8056ef6: 6900         	ldr	r0, [r0, #0x10]
 8056ef8: 9001         	str	r0, [sp, #0x4]
;     }
 8056efa: e010         	b	0x8056f1e <vListInsert+0x3e> @ imm = #0x20
;         for( pxIterator = ( ListItem_t * ) &( pxList->xListEnd ); pxIterator->pxNext->xItemValue <= xValueOfInsertion; pxIterator = pxIterator->pxNext ) /*lint !e826 !e740 !e9087 The mini list structure is used as the list end to save RAM.  This is checked and valid. *//*lint !e440 The iterator moves to a different value, not xValueOfInsertion. */
 8056efc: 9803         	ldr	r0, [sp, #0xc]
 8056efe: 3008         	adds	r0, #0x8
 8056f00: 9001         	str	r0, [sp, #0x4]
 8056f02: e7ff         	b	0x8056f04 <vListInsert+0x24> @ imm = #-0x2
 8056f04: 9801         	ldr	r0, [sp, #0x4]
 8056f06: 6840         	ldr	r0, [r0, #0x4]
 8056f08: 6800         	ldr	r0, [r0]
 8056f0a: 9900         	ldr	r1, [sp]
 8056f0c: 4288         	cmp	r0, r1
 8056f0e: d805         	bhi	0x8056f1c <vListInsert+0x3c> @ imm = #0xa
 8056f10: e7ff         	b	0x8056f12 <vListInsert+0x32> @ imm = #-0x2
;         }
 8056f12: e7ff         	b	0x8056f14 <vListInsert+0x34> @ imm = #-0x2
;         for( pxIterator = ( ListItem_t * ) &( pxList->xListEnd ); pxIterator->pxNext->xItemValue <= xValueOfInsertion; pxIterator = pxIterator->pxNext ) /*lint !e826 !e740 !e9087 The mini list structure is used as the list end to save RAM.  This is checked and valid. *//*lint !e440 The iterator moves to a different value, not xValueOfInsertion. */
 8056f14: 9801         	ldr	r0, [sp, #0x4]
 8056f16: 6840         	ldr	r0, [r0, #0x4]
 8056f18: 9001         	str	r0, [sp, #0x4]
 8056f1a: e7f3         	b	0x8056f04 <vListInsert+0x24> @ imm = #-0x1a
 8056f1c: e7ff         	b	0x8056f1e <vListInsert+0x3e> @ imm = #-0x2
;     pxNewListItem->pxNext = pxIterator->pxNext;
 8056f1e: 9801         	ldr	r0, [sp, #0x4]
 8056f20: 6840         	ldr	r0, [r0, #0x4]
 8056f22: 9902         	ldr	r1, [sp, #0x8]
 8056f24: 6048         	str	r0, [r1, #0x4]
;     pxNewListItem->pxNext->pxPrevious = pxNewListItem;
 8056f26: 9802         	ldr	r0, [sp, #0x8]
 8056f28: 6841         	ldr	r1, [r0, #0x4]
 8056f2a: 6088         	str	r0, [r1, #0x8]
;     pxNewListItem->pxPrevious = pxIterator;
 8056f2c: 9801         	ldr	r0, [sp, #0x4]
 8056f2e: 9902         	ldr	r1, [sp, #0x8]
 8056f30: 6088         	str	r0, [r1, #0x8]
;     pxIterator->pxNext = pxNewListItem;
 8056f32: 9802         	ldr	r0, [sp, #0x8]
 8056f34: 9901         	ldr	r1, [sp, #0x4]
 8056f36: 6048         	str	r0, [r1, #0x4]
;     pxNewListItem->pxContainer = pxList;
 8056f38: 9803         	ldr	r0, [sp, #0xc]
 8056f3a: 9902         	ldr	r1, [sp, #0x8]
 8056f3c: 6108         	str	r0, [r1, #0x10]
;     ( pxList->uxNumberOfItems )++;
 8056f3e: 9803         	ldr	r0, [sp, #0xc]
 8056f40: 6801         	ldr	r1, [r0]
 8056f42: 3101         	adds	r1, #0x1
 8056f44: 6001         	str	r1, [r0]
; }
 8056f46: b004         	add	sp, #0x10
 8056f48: 4770         	bx	lr

08056f4a <uxListRemove>:
; {
 8056f4a: b082         	sub	sp, #0x8
 8056f4c: 9001         	str	r0, [sp, #0x4]
;     List_t * const pxList = pxItemToRemove->pxContainer;
 8056f4e: 9801         	ldr	r0, [sp, #0x4]
 8056f50: 6900         	ldr	r0, [r0, #0x10]
 8056f52: 9000         	str	r0, [sp]
;     pxItemToRemove->pxNext->pxPrevious = pxItemToRemove->pxPrevious;
 8056f54: 9801         	ldr	r0, [sp, #0x4]
 8056f56: 6841         	ldr	r1, [r0, #0x4]
 8056f58: 6880         	ldr	r0, [r0, #0x8]
 8056f5a: 6088         	str	r0, [r1, #0x8]
;     pxItemToRemove->pxPrevious->pxNext = pxItemToRemove->pxNext;
 8056f5c: 9801         	ldr	r0, [sp, #0x4]
 8056f5e: 6841         	ldr	r1, [r0, #0x4]
 8056f60: 6880         	ldr	r0, [r0, #0x8]
 8056f62: 6041         	str	r1, [r0, #0x4]
;     if( pxList->pxIndex == pxItemToRemove )
 8056f64: 9800         	ldr	r0, [sp]
 8056f66: 6840         	ldr	r0, [r0, #0x4]
 8056f68: 9901         	ldr	r1, [sp, #0x4]
 8056f6a: 4288         	cmp	r0, r1
 8056f6c: d105         	bne	0x8056f7a <uxListRemove+0x30> @ imm = #0xa
 8056f6e: e7ff         	b	0x8056f70 <uxListRemove+0x26> @ imm = #-0x2
;         pxList->pxIndex = pxItemToRemove->pxPrevious;
 8056f70: 9801         	ldr	r0, [sp, #0x4]
 8056f72: 6880         	ldr	r0, [r0, #0x8]
 8056f74: 9900         	ldr	r1, [sp]
 8056f76: 6048         	str	r0, [r1, #0x4]
;     }
 8056f78: e000         	b	0x8056f7c <uxListRemove+0x32> @ imm = #0x0
 8056f7a: e7ff         	b	0x8056f7c <uxListRemove+0x32> @ imm = #-0x2
;     pxItemToRemove->pxContainer = NULL;
 8056f7c: 9801         	ldr	r0, [sp, #0x4]
 8056f7e: 2100         	movs	r1, #0x0
 8056f80: 6101         	str	r1, [r0, #0x10]
;     ( pxList->uxNumberOfItems )--;
 8056f82: 9800         	ldr	r0, [sp]
 8056f84: 6801         	ldr	r1, [r0]
 8056f86: 3901         	subs	r1, #0x1
 8056f88: 6001         	str	r1, [r0]
;     return pxList->uxNumberOfItems;
 8056f8a: 9800         	ldr	r0, [sp]
 8056f8c: 6800         	ldr	r0, [r0]
 8056f8e: b002         	add	sp, #0x8
 8056f90: 4770         	bx	lr

08056f92 <xTimerCreateTimerTask>:
;     {
 8056f92: b580         	push	{r7, lr}
 8056f94: 466f         	mov	r7, sp
 8056f96: b082         	sub	sp, #0x8
 8056f98: 2000         	movs	r0, #0x0
;         BaseType_t xReturn = pdFAIL;
 8056f9a: 9001         	str	r0, [sp, #0x4]
;         prvCheckForValidListAndQueue();
 8056f9c: f000 f826    	bl	0x8056fec <prvCheckForValidListAndQueue> @ imm = #0x4c
;         if( xTimerQueue != NULL )
 8056fa0: f240 20e8    	movw	r0, #0x2e8
 8056fa4: f2c2 0000    	movt	r0, #0x2000
 8056fa8: 6800         	ldr	r0, [r0]
 8056faa: b1a0         	cbz	r0, 0x8056fd6 <xTimerCreateTimerTask+0x44> @ imm = #0x28
 8056fac: e7ff         	b	0x8056fae <xTimerCreateTimerTask+0x1c> @ imm = #-0x2
;                     xReturn = xTaskCreate( prvTimerTask,
 8056fae: f240 20ec    	movw	r0, #0x2ec
 8056fb2: f2c2 0000    	movt	r0, #0x2000
 8056fb6: 9000         	str	r0, [sp]
 8056fb8: f247 0063    	movw	r0, #0x7063
 8056fbc: f6c0 0005    	movt	r0, #0x805
 8056fc0: f248 6185    	movw	r1, #0x8685
 8056fc4: f6c0 0105    	movt	r1, #0x805
 8056fc8: f44f 7280    	mov.w	r2, #0x100
 8056fcc: 2302         	movs	r3, #0x2
 8056fce: f7fe ff93    	bl	0x8055ef8 <xTaskCreate> @ imm = #-0x10da
 8056fd2: 9001         	str	r0, [sp, #0x4]
;         }
 8056fd4: e000         	b	0x8056fd8 <xTimerCreateTimerTask+0x46> @ imm = #0x0
 8056fd6: e7ff         	b	0x8056fd8 <xTimerCreateTimerTask+0x46> @ imm = #-0x2
;         configASSERT( xReturn );
 8056fd8: 9801         	ldr	r0, [sp, #0x4]
 8056fda: b920         	cbnz	r0, 0x8056fe6 <xTimerCreateTimerTask+0x54> @ imm = #0x8
 8056fdc: e7ff         	b	0x8056fde <xTimerCreateTimerTask+0x4c> @ imm = #-0x2
 8056fde: f001 fac7    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0x158e
 8056fe2: e7ff         	b	0x8056fe4 <xTimerCreateTimerTask+0x52> @ imm = #-0x2
 8056fe4: e7fe         	b	0x8056fe4 <xTimerCreateTimerTask+0x52> @ imm = #-0x4
;         return xReturn;
 8056fe6: 9801         	ldr	r0, [sp, #0x4]
 8056fe8: b002         	add	sp, #0x8
 8056fea: bd80         	pop	{r7, pc}

08056fec <prvCheckForValidListAndQueue>:
;     {
 8056fec: b5b0         	push	{r4, r5, r7, lr}
 8056fee: af02         	add	r7, sp, #0x8
;         taskENTER_CRITICAL();
 8056ff0: f000 ffda    	bl	0x8057fa8 <vPortEnterCritical> @ imm = #0xfb4
;             if( xTimerQueue == NULL )
 8056ff4: f240 20e8    	movw	r0, #0x2e8
 8056ff8: f2c2 0000    	movt	r0, #0x2000
 8056ffc: 6800         	ldr	r0, [r0]
 8056ffe: bb60         	cbnz	r0, 0x805705a <prvCheckForValidListAndQueue+0x6e> @ imm = #0x58
 8057000: e7ff         	b	0x8057002 <prvCheckForValidListAndQueue+0x16> @ imm = #-0x2
;                 vListInitialise( &xActiveTimerList1 );
 8057002: f240 24fc    	movw	r4, #0x2fc
 8057006: f2c2 0400    	movt	r4, #0x2000
 805700a: 4620         	mov	r0, r4
 805700c: f7ff ff4a    	bl	0x8056ea4 <vListInitialise> @ imm = #-0x16c
;                 vListInitialise( &xActiveTimerList2 );
 8057010: f240 3510    	movw	r5, #0x310
 8057014: f2c2 0500    	movt	r5, #0x2000
 8057018: 4628         	mov	r0, r5
 805701a: f7ff ff43    	bl	0x8056ea4 <vListInitialise> @ imm = #-0x17a
;                 pxCurrentTimerList = &xActiveTimerList1;
 805701e: f240 20f0    	movw	r0, #0x2f0
 8057022: f2c2 0000    	movt	r0, #0x2000
 8057026: 6004         	str	r4, [r0]
;                 pxOverflowTimerList = &xActiveTimerList2;
 8057028: f240 20f4    	movw	r0, #0x2f4
 805702c: f2c2 0000    	movt	r0, #0x2000
 8057030: 6005         	str	r5, [r0]
;                     xTimerQueue = xQueueCreate( ( UBaseType_t ) configTIMER_QUEUE_LENGTH, sizeof( DaemonTaskMessage_t ) );
 8057032: f000 fa8a    	bl	0x805754a <xQueueGenericCreate> @ imm = #0x514
 8057036: f240 21e8    	movw	r1, #0x2e8
 805703a: f2c2 0100    	movt	r1, #0x2000
 805703e: 6008         	str	r0, [r1]
;                     if( xTimerQueue != NULL )
 8057040: 6808         	ldr	r0, [r1]
 8057042: b140         	cbz	r0, 0x8057056 <prvCheckForValidListAndQueue+0x6a> @ imm = #0x10
 8057044: e7ff         	b	0x8057046 <prvCheckForValidListAndQueue+0x5a> @ imm = #-0x2
;                         vQueueAddToRegistry( xTimerQueue, "TmrQ" );
 8057046: f240 20e8    	movw	r0, #0x2e8
 805704a: f2c2 0000    	movt	r0, #0x2000
 805704e: 6800         	ldr	r0, [r0]
 8057050: f000 fc39    	bl	0x80578c6 <vQueueAddToRegistry> @ imm = #0x872
;                     }
 8057054: e000         	b	0x8057058 <prvCheckForValidListAndQueue+0x6c> @ imm = #0x0
 8057056: e7ff         	b	0x8057058 <prvCheckForValidListAndQueue+0x6c> @ imm = #-0x2
;             }
 8057058: e000         	b	0x805705c <prvCheckForValidListAndQueue+0x70> @ imm = #0x0
 805705a: e7ff         	b	0x805705c <prvCheckForValidListAndQueue+0x70> @ imm = #-0x2
;         taskEXIT_CRITICAL();
 805705c: f000 ffb4    	bl	0x8057fc8 <vPortExitCritical> @ imm = #0xf68
;     }
 8057060: bdb0         	pop	{r4, r5, r7, pc}

08057062 <prvTimerTask>:
;     {
 8057062: b580         	push	{r7, lr}
 8057064: 466f         	mov	r7, sp
 8057066: b084         	sub	sp, #0x10
 8057068: 9003         	str	r0, [sp, #0xc]
;         for( ; configCONTROL_INFINITE_LOOP(); )
 805706a: e7ff         	b	0x805706c <prvTimerTask+0xa> @ imm = #-0x2
 805706c: a801         	add	r0, sp, #0x4
;             xNextExpireTime = prvGetNextExpireTime( &xListWasEmpty );
 805706e: f000 f808    	bl	0x8057082 <prvGetNextExpireTime> @ imm = #0x10
 8057072: 9002         	str	r0, [sp, #0x8]
;             prvProcessTimerOrBlockTask( xNextExpireTime, xListWasEmpty );
 8057074: 9802         	ldr	r0, [sp, #0x8]
 8057076: 9901         	ldr	r1, [sp, #0x4]
 8057078: f000 f823    	bl	0x80570c2 <prvProcessTimerOrBlockTask> @ imm = #0x46
;             prvProcessReceivedCommands();
 805707c: f000 f866    	bl	0x805714c <prvProcessReceivedCommands> @ imm = #0xcc
;         for( ; configCONTROL_INFINITE_LOOP(); )
 8057080: e7f4         	b	0x805706c <prvTimerTask+0xa> @ imm = #-0x18

08057082 <prvGetNextExpireTime>:
;     {
 8057082: b082         	sub	sp, #0x8
 8057084: 9001         	str	r0, [sp, #0x4]
;         *pxListWasEmpty = listLIST_IS_EMPTY( pxCurrentTimerList );
 8057086: f240 20f0    	movw	r0, #0x2f0
 805708a: f2c2 0000    	movt	r0, #0x2000
 805708e: 6800         	ldr	r0, [r0]
 8057090: 6800         	ldr	r0, [r0]
 8057092: fab0 f080    	clz	r0, r0
 8057096: 0940         	lsrs	r0, r0, #0x5
 8057098: 9901         	ldr	r1, [sp, #0x4]
 805709a: 6008         	str	r0, [r1]
;         if( *pxListWasEmpty == pdFALSE )
 805709c: 9801         	ldr	r0, [sp, #0x4]
 805709e: 6800         	ldr	r0, [r0]
 80570a0: b948         	cbnz	r0, 0x80570b6 <prvGetNextExpireTime+0x34> @ imm = #0x12
 80570a2: e7ff         	b	0x80570a4 <prvGetNextExpireTime+0x22> @ imm = #-0x2
;             xNextExpireTime = listGET_ITEM_VALUE_OF_HEAD_ENTRY( pxCurrentTimerList );
 80570a4: f240 20f0    	movw	r0, #0x2f0
 80570a8: f2c2 0000    	movt	r0, #0x2000
 80570ac: 6800         	ldr	r0, [r0]
 80570ae: 68c0         	ldr	r0, [r0, #0xc]
 80570b0: 6800         	ldr	r0, [r0]
 80570b2: 9000         	str	r0, [sp]
;         }
 80570b4: e002         	b	0x80570bc <prvGetNextExpireTime+0x3a> @ imm = #0x4
 80570b6: 2000         	movs	r0, #0x0
;             xNextExpireTime = ( TickType_t ) 0U;
 80570b8: 9000         	str	r0, [sp]
 80570ba: e7ff         	b	0x80570bc <prvGetNextExpireTime+0x3a> @ imm = #-0x2
;         return xNextExpireTime;
 80570bc: 9800         	ldr	r0, [sp]
 80570be: b002         	add	sp, #0x8
 80570c0: 4770         	bx	lr

080570c2 <prvProcessTimerOrBlockTask>:
;     {
 80570c2: b580         	push	{r7, lr}
 80570c4: 466f         	mov	r7, sp
 80570c6: b084         	sub	sp, #0x10
 80570c8: 9003         	str	r0, [sp, #0xc]
 80570ca: 9102         	str	r1, [sp, #0x8]
;         vTaskSuspendAll();
 80570cc: f7ff f903    	bl	0x80562d6 <vTaskSuspendAll> @ imm = #-0xdfa
 80570d0: 4668         	mov	r0, sp
;             xTimeNow = prvSampleTimeNow( &xTimerListsWereSwitched );
 80570d2: f000 f8f6    	bl	0x80572c2 <prvSampleTimeNow> @ imm = #0x1ec
 80570d6: 9001         	str	r0, [sp, #0x4]
;             if( xTimerListsWereSwitched == pdFALSE )
 80570d8: 9800         	ldr	r0, [sp]
 80570da: bb90         	cbnz	r0, 0x8057142 <prvProcessTimerOrBlockTask+0x80> @ imm = #0x64
 80570dc: e7ff         	b	0x80570de <prvProcessTimerOrBlockTask+0x1c> @ imm = #-0x2
;                 if( ( xListWasEmpty == pdFALSE ) && ( xNextExpireTime <= xTimeNow ) )
 80570de: 9802         	ldr	r0, [sp, #0x8]
 80570e0: b960         	cbnz	r0, 0x80570fc <prvProcessTimerOrBlockTask+0x3a> @ imm = #0x18
 80570e2: e7ff         	b	0x80570e4 <prvProcessTimerOrBlockTask+0x22> @ imm = #-0x2
 80570e4: 9803         	ldr	r0, [sp, #0xc]
 80570e6: 9901         	ldr	r1, [sp, #0x4]
 80570e8: 4288         	cmp	r0, r1
 80570ea: d807         	bhi	0x80570fc <prvProcessTimerOrBlockTask+0x3a> @ imm = #0xe
 80570ec: e7ff         	b	0x80570ee <prvProcessTimerOrBlockTask+0x2c> @ imm = #-0x2
;                     ( void ) xTaskResumeAll();
 80570ee: f7ff f8fa    	bl	0x80562e6 <xTaskResumeAll> @ imm = #-0xe0c
;                     prvProcessExpiredTimer( xNextExpireTime, xTimeNow );
 80570f2: 9803         	ldr	r0, [sp, #0xc]
 80570f4: 9901         	ldr	r1, [sp, #0x4]
 80570f6: f000 f990    	bl	0x805741a <prvProcessExpiredTimer> @ imm = #0x320
;                 }
 80570fa: e021         	b	0x8057140 <prvProcessTimerOrBlockTask+0x7e> @ imm = #0x42
;                     if( xListWasEmpty != pdFALSE )
 80570fc: 9802         	ldr	r0, [sp, #0x8]
 80570fe: b158         	cbz	r0, 0x8057118 <prvProcessTimerOrBlockTask+0x56> @ imm = #0x16
 8057100: e7ff         	b	0x8057102 <prvProcessTimerOrBlockTask+0x40> @ imm = #-0x2
;                         xListWasEmpty = listLIST_IS_EMPTY( pxOverflowTimerList );
 8057102: f240 20f4    	movw	r0, #0x2f4
 8057106: f2c2 0000    	movt	r0, #0x2000
 805710a: 6800         	ldr	r0, [r0]
 805710c: 6800         	ldr	r0, [r0]
 805710e: fab0 f080    	clz	r0, r0
 8057112: 0940         	lsrs	r0, r0, #0x5
 8057114: 9002         	str	r0, [sp, #0x8]
;                     }
 8057116: e7ff         	b	0x8057118 <prvProcessTimerOrBlockTask+0x56> @ imm = #-0x2
;                     vQueueWaitForMessageRestricted( xTimerQueue, ( xNextExpireTime - xTimeNow ), xListWasEmpty );
 8057118: f240 20e8    	movw	r0, #0x2e8
 805711c: f2c2 0000    	movt	r0, #0x2000
 8057120: 6800         	ldr	r0, [r0]
 8057122: 9903         	ldr	r1, [sp, #0xc]
 8057124: 9a01         	ldr	r2, [sp, #0x4]
 8057126: 1a89         	subs	r1, r1, r2
 8057128: 9a02         	ldr	r2, [sp, #0x8]
 805712a: f000 fc27    	bl	0x805797c <vQueueWaitForMessageRestricted> @ imm = #0x84e
;                     if( xTaskResumeAll() == pdFALSE )
 805712e: f7ff f8da    	bl	0x80562e6 <xTaskResumeAll> @ imm = #-0xe4c
 8057132: b918         	cbnz	r0, 0x805713c <prvProcessTimerOrBlockTask+0x7a> @ imm = #0x6
 8057134: e7ff         	b	0x8057136 <prvProcessTimerOrBlockTask+0x74> @ imm = #-0x2
;                         taskYIELD_WITHIN_API();
 8057136: f000 ff2b    	bl	0x8057f90 <vPortYield>  @ imm = #0xe56
;                     }
 805713a: e000         	b	0x805713e <prvProcessTimerOrBlockTask+0x7c> @ imm = #0x0
 805713c: e7ff         	b	0x805713e <prvProcessTimerOrBlockTask+0x7c> @ imm = #-0x2
 805713e: e7ff         	b	0x8057140 <prvProcessTimerOrBlockTask+0x7e> @ imm = #-0x2
;             }
 8057140: e002         	b	0x8057148 <prvProcessTimerOrBlockTask+0x86> @ imm = #0x4
;                 ( void ) xTaskResumeAll();
 8057142: f7ff f8d0    	bl	0x80562e6 <xTaskResumeAll> @ imm = #-0xe60
 8057146: e7ff         	b	0x8057148 <prvProcessTimerOrBlockTask+0x86> @ imm = #-0x2
;     }
 8057148: b004         	add	sp, #0x10
 805714a: bd80         	pop	{r7, pc}

0805714c <prvProcessReceivedCommands>:
;     {
 805714c: b580         	push	{r7, lr}
 805714e: 466f         	mov	r7, sp
 8057150: b088         	sub	sp, #0x20
;         while( xQueueReceive( xTimerQueue, &xMessage, tmrNO_DELAY ) != pdFAIL ) /*lint !e603 xMessage does not have to be initialised as it is passed out, not in, and it is not used unless xQueueReceive() returns pdTRUE. */
 8057152: e7ff         	b	0x8057154 <prvProcessReceivedCommands+0x8> @ imm = #-0x2
 8057154: f240 20e8    	movw	r0, #0x2e8
 8057158: f2c2 0000    	movt	r0, #0x2000
 805715c: 6800         	ldr	r0, [r0]
 805715e: a904         	add	r1, sp, #0x10
 8057160: f000 fa5f    	bl	0x8057622 <xQueueReceive> @ imm = #0x4be
 8057164: 2800         	cmp	r0, #0x0
 8057166: f000 80aa    	beq.w	0x80572be <prvProcessReceivedCommands+0x172> @ imm = #0x154
 805716a: e7ff         	b	0x805716c <prvProcessReceivedCommands+0x20> @ imm = #-0x2
;                 if( xMessage.xMessageID < ( BaseType_t ) 0 )
 805716c: 9804         	ldr	r0, [sp, #0x10]
 805716e: f1b0 3fff    	cmp.w	r0, #0xffffffff
 8057172: dc10         	bgt	0x8057196 <prvProcessReceivedCommands+0x4a> @ imm = #0x20
 8057174: e7ff         	b	0x8057176 <prvProcessReceivedCommands+0x2a> @ imm = #-0x2
 8057176: a804         	add	r0, sp, #0x10
;                     const CallbackParameters_t * const pxCallback = &( xMessage.u.xCallbackParameters );
 8057178: 3004         	adds	r0, #0x4
 805717a: 9000         	str	r0, [sp]
;                     configASSERT( pxCallback );
 805717c: 9800         	ldr	r0, [sp]
 805717e: b920         	cbnz	r0, 0x805718a <prvProcessReceivedCommands+0x3e> @ imm = #0x8
 8057180: e7ff         	b	0x8057182 <prvProcessReceivedCommands+0x36> @ imm = #-0x2
 8057182: f001 f9f5    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0x13ea
 8057186: e7ff         	b	0x8057188 <prvProcessReceivedCommands+0x3c> @ imm = #-0x2
 8057188: e7fe         	b	0x8057188 <prvProcessReceivedCommands+0x3c> @ imm = #-0x4
;                     pxCallback->pxCallbackFunction( pxCallback->pvParameter1, pxCallback->ulParameter2 );
 805718a: 9900         	ldr	r1, [sp]
 805718c: 680a         	ldr	r2, [r1]
 805718e: 6848         	ldr	r0, [r1, #0x4]
 8057190: 6889         	ldr	r1, [r1, #0x8]
 8057192: 4790         	blx	r2
;                 }
 8057194: e000         	b	0x8057198 <prvProcessReceivedCommands+0x4c> @ imm = #0x0
 8057196: e7ff         	b	0x8057198 <prvProcessReceivedCommands+0x4c> @ imm = #-0x2
;             if( xMessage.xMessageID >= ( BaseType_t ) 0 )
 8057198: 9804         	ldr	r0, [sp, #0x10]
 805719a: 2800         	cmp	r0, #0x0
 805719c: f100 808e    	bmi.w	0x80572bc <prvProcessReceivedCommands+0x170> @ imm = #0x11c
 80571a0: e7ff         	b	0x80571a2 <prvProcessReceivedCommands+0x56> @ imm = #-0x2
;                 pxTimer = xMessage.u.xTimerParameters.pxTimer;
 80571a2: 9806         	ldr	r0, [sp, #0x18]
 80571a4: 9003         	str	r0, [sp, #0xc]
;                 if( listIS_CONTAINED_WITHIN( NULL, &( pxTimer->xTimerListItem ) ) == pdFALSE ) /*lint !e961. The cast is only redundant when NULL is passed into the macro. */
 80571a6: 9803         	ldr	r0, [sp, #0xc]
 80571a8: 6940         	ldr	r0, [r0, #0x14]
 80571aa: b128         	cbz	r0, 0x80571b8 <prvProcessReceivedCommands+0x6c> @ imm = #0xa
 80571ac: e7ff         	b	0x80571ae <prvProcessReceivedCommands+0x62> @ imm = #-0x2
;                     ( void ) uxListRemove( &( pxTimer->xTimerListItem ) );
 80571ae: 9803         	ldr	r0, [sp, #0xc]
 80571b0: 3004         	adds	r0, #0x4
 80571b2: f7ff feca    	bl	0x8056f4a <uxListRemove> @ imm = #-0x26c
;                 }
 80571b6: e000         	b	0x80571ba <prvProcessReceivedCommands+0x6e> @ imm = #0x0
 80571b8: e7ff         	b	0x80571ba <prvProcessReceivedCommands+0x6e> @ imm = #-0x2
 80571ba: a802         	add	r0, sp, #0x8
;                 xTimeNow = prvSampleTimeNow( &xTimerListsWereSwitched );
 80571bc: f000 f881    	bl	0x80572c2 <prvSampleTimeNow> @ imm = #0x102
 80571c0: 9001         	str	r0, [sp, #0x4]
;                 switch( xMessage.xMessageID )
 80571c2: 9804         	ldr	r0, [sp, #0x10]
 80571c4: 1e41         	subs	r1, r0, #0x1
 80571c6: 2902         	cmp	r1, #0x2
 80571c8: d313         	blo	0x80571f2 <prvProcessReceivedCommands+0xa6> @ imm = #0x26
 80571ca: e7ff         	b	0x80571cc <prvProcessReceivedCommands+0x80> @ imm = #-0x2
 80571cc: 2803         	cmp	r0, #0x3
 80571ce: d03d         	beq	0x805724c <prvProcessReceivedCommands+0x100> @ imm = #0x7a
 80571d0: e7ff         	b	0x80571d2 <prvProcessReceivedCommands+0x86> @ imm = #-0x2
 80571d2: 2804         	cmp	r0, #0x4
 80571d4: d042         	beq	0x805725c <prvProcessReceivedCommands+0x110> @ imm = #0x84
 80571d6: e7ff         	b	0x80571d8 <prvProcessReceivedCommands+0x8c> @ imm = #-0x2
 80571d8: 2805         	cmp	r0, #0x5
 80571da: d059         	beq	0x8057290 <prvProcessReceivedCommands+0x144> @ imm = #0xb2
 80571dc: e7ff         	b	0x80571de <prvProcessReceivedCommands+0x92> @ imm = #-0x2
 80571de: 1f81         	subs	r1, r0, #0x6
 80571e0: 2902         	cmp	r1, #0x2
 80571e2: d306         	blo	0x80571f2 <prvProcessReceivedCommands+0xa6> @ imm = #0xc
 80571e4: e7ff         	b	0x80571e6 <prvProcessReceivedCommands+0x9a> @ imm = #-0x2
 80571e6: 2808         	cmp	r0, #0x8
 80571e8: d030         	beq	0x805724c <prvProcessReceivedCommands+0x100> @ imm = #0x60
 80571ea: e7ff         	b	0x80571ec <prvProcessReceivedCommands+0xa0> @ imm = #-0x2
 80571ec: 2809         	cmp	r0, #0x9
 80571ee: d035         	beq	0x805725c <prvProcessReceivedCommands+0x110> @ imm = #0x6a
 80571f0: e062         	b	0x80572b8 <prvProcessReceivedCommands+0x16c> @ imm = #0xc4
;                         pxTimer->ucStatus |= ( uint8_t ) tmrSTATUS_IS_ACTIVE;
 80571f2: 9803         	ldr	r0, [sp, #0xc]
 80571f4: f890 1028    	ldrb.w	r1, [r0, #0x28]
 80571f8: f041 0101    	orr	r1, r1, #0x1
 80571fc: f880 1028    	strb.w	r1, [r0, #0x28]
;                         if( prvInsertTimerInActiveList( pxTimer, xMessage.u.xTimerParameters.xMessageValue + pxTimer->xTimerPeriodInTicks, xTimeNow, xMessage.u.xTimerParameters.xMessageValue ) != pdFALSE )
 8057200: 9803         	ldr	r0, [sp, #0xc]
 8057202: 9b05         	ldr	r3, [sp, #0x14]
 8057204: 6981         	ldr	r1, [r0, #0x18]
 8057206: 4419         	add	r1, r3
 8057208: 9a01         	ldr	r2, [sp, #0x4]
 805720a: f000 f87d    	bl	0x8057308 <prvInsertTimerInActiveList> @ imm = #0xfa
 805720e: b1d8         	cbz	r0, 0x8057248 <prvProcessReceivedCommands+0xfc> @ imm = #0x36
 8057210: e7ff         	b	0x8057212 <prvProcessReceivedCommands+0xc6> @ imm = #-0x2
;                             if( ( pxTimer->ucStatus & tmrSTATUS_IS_AUTORELOAD ) != 0 )
 8057212: 9803         	ldr	r0, [sp, #0xc]
 8057214: f890 0028    	ldrb.w	r0, [r0, #0x28]
 8057218: 0740         	lsls	r0, r0, #0x1d
 805721a: 2800         	cmp	r0, #0x0
 805721c: d508         	bpl	0x8057230 <prvProcessReceivedCommands+0xe4> @ imm = #0x10
 805721e: e7ff         	b	0x8057220 <prvProcessReceivedCommands+0xd4> @ imm = #-0x2
;                                 prvReloadTimer( pxTimer, xMessage.u.xTimerParameters.xMessageValue + pxTimer->xTimerPeriodInTicks, xTimeNow );
 8057220: 9803         	ldr	r0, [sp, #0xc]
 8057222: 9905         	ldr	r1, [sp, #0x14]
 8057224: 6982         	ldr	r2, [r0, #0x18]
 8057226: 4411         	add	r1, r2
 8057228: 9a01         	ldr	r2, [sp, #0x4]
 805722a: f000 f8b1    	bl	0x8057390 <prvReloadTimer> @ imm = #0x162
;                             }
 805722e: e007         	b	0x8057240 <prvProcessReceivedCommands+0xf4> @ imm = #0xe
;                                 pxTimer->ucStatus &= ( ( uint8_t ) ~tmrSTATUS_IS_ACTIVE );
 8057230: 9803         	ldr	r0, [sp, #0xc]
 8057232: f890 1028    	ldrb.w	r1, [r0, #0x28]
 8057236: f001 01fe    	and	r1, r1, #0xfe
 805723a: f880 1028    	strb.w	r1, [r0, #0x28]
 805723e: e7ff         	b	0x8057240 <prvProcessReceivedCommands+0xf4> @ imm = #-0x2
;                             pxTimer->pxCallbackFunction( ( TimerHandle_t ) pxTimer );
 8057240: 9803         	ldr	r0, [sp, #0xc]
 8057242: 6a01         	ldr	r1, [r0, #0x20]
 8057244: 4788         	blx	r1
;                         }
 8057246: e000         	b	0x805724a <prvProcessReceivedCommands+0xfe> @ imm = #0x0
 8057248: e7ff         	b	0x805724a <prvProcessReceivedCommands+0xfe> @ imm = #-0x2
;                         break;
 805724a: e036         	b	0x80572ba <prvProcessReceivedCommands+0x16e> @ imm = #0x6c
;                         pxTimer->ucStatus &= ( ( uint8_t ) ~tmrSTATUS_IS_ACTIVE );
 805724c: 9803         	ldr	r0, [sp, #0xc]
 805724e: f890 1028    	ldrb.w	r1, [r0, #0x28]
 8057252: f001 01fe    	and	r1, r1, #0xfe
 8057256: f880 1028    	strb.w	r1, [r0, #0x28]
;                         break;
 805725a: e02e         	b	0x80572ba <prvProcessReceivedCommands+0x16e> @ imm = #0x5c
;                         pxTimer->ucStatus |= ( uint8_t ) tmrSTATUS_IS_ACTIVE;
 805725c: 9803         	ldr	r0, [sp, #0xc]
 805725e: f890 1028    	ldrb.w	r1, [r0, #0x28]
 8057262: f041 0101    	orr	r1, r1, #0x1
 8057266: f880 1028    	strb.w	r1, [r0, #0x28]
;                         pxTimer->xTimerPeriodInTicks = xMessage.u.xTimerParameters.xMessageValue;
 805726a: 9805         	ldr	r0, [sp, #0x14]
 805726c: 9903         	ldr	r1, [sp, #0xc]
 805726e: 6188         	str	r0, [r1, #0x18]
;                         configASSERT( ( pxTimer->xTimerPeriodInTicks > 0 ) );
 8057270: 9803         	ldr	r0, [sp, #0xc]
 8057272: 6980         	ldr	r0, [r0, #0x18]
 8057274: b920         	cbnz	r0, 0x8057280 <prvProcessReceivedCommands+0x134> @ imm = #0x8
 8057276: e7ff         	b	0x8057278 <prvProcessReceivedCommands+0x12c> @ imm = #-0x2
 8057278: f001 f97a    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0x12f4
 805727c: e7ff         	b	0x805727e <prvProcessReceivedCommands+0x132> @ imm = #-0x2
 805727e: e7fe         	b	0x805727e <prvProcessReceivedCommands+0x132> @ imm = #-0x4
;                         ( void ) prvInsertTimerInActiveList( pxTimer, ( xTimeNow + pxTimer->xTimerPeriodInTicks ), xTimeNow, xTimeNow );
 8057280: 9803         	ldr	r0, [sp, #0xc]
 8057282: 9a01         	ldr	r2, [sp, #0x4]
 8057284: 6981         	ldr	r1, [r0, #0x18]
 8057286: 4411         	add	r1, r2
 8057288: 4613         	mov	r3, r2
 805728a: f000 f83d    	bl	0x8057308 <prvInsertTimerInActiveList> @ imm = #0x7a
;                         break;
 805728e: e014         	b	0x80572ba <prvProcessReceivedCommands+0x16e> @ imm = #0x28
;                             if( ( pxTimer->ucStatus & tmrSTATUS_IS_STATICALLY_ALLOCATED ) == ( uint8_t ) 0 )
 8057290: 9803         	ldr	r0, [sp, #0xc]
 8057292: f890 0028    	ldrb.w	r0, [r0, #0x28]
 8057296: 0780         	lsls	r0, r0, #0x1e
 8057298: 2800         	cmp	r0, #0x0
 805729a: d404         	bmi	0x80572a6 <prvProcessReceivedCommands+0x15a> @ imm = #0x8
 805729c: e7ff         	b	0x805729e <prvProcessReceivedCommands+0x152> @ imm = #-0x2
;                                 vPortFree( pxTimer );
 805729e: 9803         	ldr	r0, [sp, #0xc]
 80572a0: f000 fd41    	bl	0x8057d26 <vPortFree>   @ imm = #0xa82
;                             }
 80572a4: e007         	b	0x80572b6 <prvProcessReceivedCommands+0x16a> @ imm = #0xe
;                                 pxTimer->ucStatus &= ( ( uint8_t ) ~tmrSTATUS_IS_ACTIVE );
 80572a6: 9803         	ldr	r0, [sp, #0xc]
 80572a8: f890 1028    	ldrb.w	r1, [r0, #0x28]
 80572ac: f001 01fe    	and	r1, r1, #0xfe
 80572b0: f880 1028    	strb.w	r1, [r0, #0x28]
 80572b4: e7ff         	b	0x80572b6 <prvProcessReceivedCommands+0x16a> @ imm = #-0x2
;                         break;
 80572b6: e000         	b	0x80572ba <prvProcessReceivedCommands+0x16e> @ imm = #0x0
;                         break;
 80572b8: e7ff         	b	0x80572ba <prvProcessReceivedCommands+0x16e> @ imm = #-0x2
;             }
 80572ba: e7ff         	b	0x80572bc <prvProcessReceivedCommands+0x170> @ imm = #-0x2
;         while( xQueueReceive( xTimerQueue, &xMessage, tmrNO_DELAY ) != pdFAIL ) /*lint !e603 xMessage does not have to be initialised as it is passed out, not in, and it is not used unless xQueueReceive() returns pdTRUE. */
 80572bc: e74a         	b	0x8057154 <prvProcessReceivedCommands+0x8> @ imm = #-0x16c
;     }
 80572be: b008         	add	sp, #0x20
 80572c0: bd80         	pop	{r7, pc}

080572c2 <prvSampleTimeNow>:
;     {
 80572c2: b580         	push	{r7, lr}
 80572c4: 466f         	mov	r7, sp
 80572c6: b082         	sub	sp, #0x8
 80572c8: 9001         	str	r0, [sp, #0x4]
;         xTimeNow = xTaskGetTickCount();
 80572ca: f7ff fc28    	bl	0x8056b1e <xTaskGetTickCount> @ imm = #-0x7b0
 80572ce: 9000         	str	r0, [sp]
;         if( xTimeNow < xLastTime )
 80572d0: 9800         	ldr	r0, [sp]
 80572d2: f240 21f8    	movw	r1, #0x2f8
 80572d6: f2c2 0100    	movt	r1, #0x2000
 80572da: 6809         	ldr	r1, [r1]
 80572dc: 4288         	cmp	r0, r1
 80572de: d206         	bhs	0x80572ee <prvSampleTimeNow+0x2c> @ imm = #0xc
 80572e0: e7ff         	b	0x80572e2 <prvSampleTimeNow+0x20> @ imm = #-0x2
;             prvSwitchTimerLists();
 80572e2: f000 f870    	bl	0x80573c6 <prvSwitchTimerLists> @ imm = #0xe0
;             *pxTimerListsWereSwitched = pdTRUE;
 80572e6: 9801         	ldr	r0, [sp, #0x4]
 80572e8: 2101         	movs	r1, #0x1
 80572ea: 6001         	str	r1, [r0]
;         }
 80572ec: e003         	b	0x80572f6 <prvSampleTimeNow+0x34> @ imm = #0x6
;             *pxTimerListsWereSwitched = pdFALSE;
 80572ee: 9801         	ldr	r0, [sp, #0x4]
 80572f0: 2100         	movs	r1, #0x0
 80572f2: 6001         	str	r1, [r0]
 80572f4: e7ff         	b	0x80572f6 <prvSampleTimeNow+0x34> @ imm = #-0x2
;         xLastTime = xTimeNow;
 80572f6: 9800         	ldr	r0, [sp]
 80572f8: f240 21f8    	movw	r1, #0x2f8
 80572fc: f2c2 0100    	movt	r1, #0x2000
 8057300: 6008         	str	r0, [r1]
;         return xTimeNow;
 8057302: 9800         	ldr	r0, [sp]
 8057304: b002         	add	sp, #0x8
 8057306: bd80         	pop	{r7, pc}

08057308 <prvInsertTimerInActiveList>:
;     {
 8057308: b580         	push	{r7, lr}
 805730a: 466f         	mov	r7, sp
 805730c: b086         	sub	sp, #0x18
 805730e: 9005         	str	r0, [sp, #0x14]
 8057310: 9104         	str	r1, [sp, #0x10]
 8057312: 9203         	str	r2, [sp, #0xc]
 8057314: 9302         	str	r3, [sp, #0x8]
 8057316: 2000         	movs	r0, #0x0
;         BaseType_t xProcessTimerNow = pdFALSE;
 8057318: 9001         	str	r0, [sp, #0x4]
;         listSET_LIST_ITEM_VALUE( &( pxTimer->xTimerListItem ), xNextExpiryTime );
 805731a: 9804         	ldr	r0, [sp, #0x10]
 805731c: 9905         	ldr	r1, [sp, #0x14]
 805731e: 6048         	str	r0, [r1, #0x4]
;         listSET_LIST_ITEM_OWNER( &( pxTimer->xTimerListItem ), pxTimer );
 8057320: 9805         	ldr	r0, [sp, #0x14]
 8057322: 6100         	str	r0, [r0, #0x10]
;         if( xNextExpiryTime <= xTimeNow )
 8057324: 9804         	ldr	r0, [sp, #0x10]
 8057326: 9903         	ldr	r1, [sp, #0xc]
 8057328: 4288         	cmp	r0, r1
 805732a: d816         	bhi	0x805735a <prvInsertTimerInActiveList+0x52> @ imm = #0x2c
 805732c: e7ff         	b	0x805732e <prvInsertTimerInActiveList+0x26> @ imm = #-0x2
;             if( ( ( TickType_t ) ( xTimeNow - xCommandTime ) ) >= pxTimer->xTimerPeriodInTicks ) /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
 805732e: 9803         	ldr	r0, [sp, #0xc]
 8057330: 9902         	ldr	r1, [sp, #0x8]
 8057332: 1a40         	subs	r0, r0, r1
 8057334: 9905         	ldr	r1, [sp, #0x14]
 8057336: 6989         	ldr	r1, [r1, #0x18]
 8057338: 4288         	cmp	r0, r1
 805733a: d303         	blo	0x8057344 <prvInsertTimerInActiveList+0x3c> @ imm = #0x6
 805733c: e7ff         	b	0x805733e <prvInsertTimerInActiveList+0x36> @ imm = #-0x2
 805733e: 2001         	movs	r0, #0x1
;                 xProcessTimerNow = pdTRUE;
 8057340: 9001         	str	r0, [sp, #0x4]
;             }
 8057342: e009         	b	0x8057358 <prvInsertTimerInActiveList+0x50> @ imm = #0x12
;                 vListInsert( pxOverflowTimerList, &( pxTimer->xTimerListItem ) );
 8057344: f240 20f4    	movw	r0, #0x2f4
 8057348: f2c2 0000    	movt	r0, #0x2000
 805734c: 6800         	ldr	r0, [r0]
 805734e: 9905         	ldr	r1, [sp, #0x14]
 8057350: 3104         	adds	r1, #0x4
 8057352: f7ff fdc5    	bl	0x8056ee0 <vListInsert> @ imm = #-0x476
 8057356: e7ff         	b	0x8057358 <prvInsertTimerInActiveList+0x50> @ imm = #-0x2
;         }
 8057358: e017         	b	0x805738a <prvInsertTimerInActiveList+0x82> @ imm = #0x2e
;             if( ( xTimeNow < xCommandTime ) && ( xNextExpiryTime >= xCommandTime ) )
 805735a: 9803         	ldr	r0, [sp, #0xc]
 805735c: 9902         	ldr	r1, [sp, #0x8]
 805735e: 4288         	cmp	r0, r1
 8057360: d208         	bhs	0x8057374 <prvInsertTimerInActiveList+0x6c> @ imm = #0x10
 8057362: e7ff         	b	0x8057364 <prvInsertTimerInActiveList+0x5c> @ imm = #-0x2
 8057364: 9804         	ldr	r0, [sp, #0x10]
 8057366: 9902         	ldr	r1, [sp, #0x8]
 8057368: 4288         	cmp	r0, r1
 805736a: d303         	blo	0x8057374 <prvInsertTimerInActiveList+0x6c> @ imm = #0x6
 805736c: e7ff         	b	0x805736e <prvInsertTimerInActiveList+0x66> @ imm = #-0x2
 805736e: 2001         	movs	r0, #0x1
;                 xProcessTimerNow = pdTRUE;
 8057370: 9001         	str	r0, [sp, #0x4]
;             }
 8057372: e009         	b	0x8057388 <prvInsertTimerInActiveList+0x80> @ imm = #0x12
;                 vListInsert( pxCurrentTimerList, &( pxTimer->xTimerListItem ) );
 8057374: f240 20f0    	movw	r0, #0x2f0
 8057378: f2c2 0000    	movt	r0, #0x2000
 805737c: 6800         	ldr	r0, [r0]
 805737e: 9905         	ldr	r1, [sp, #0x14]
 8057380: 3104         	adds	r1, #0x4
 8057382: f7ff fdad    	bl	0x8056ee0 <vListInsert> @ imm = #-0x4a6
 8057386: e7ff         	b	0x8057388 <prvInsertTimerInActiveList+0x80> @ imm = #-0x2
 8057388: e7ff         	b	0x805738a <prvInsertTimerInActiveList+0x82> @ imm = #-0x2
;         return xProcessTimerNow;
 805738a: 9801         	ldr	r0, [sp, #0x4]
 805738c: b006         	add	sp, #0x18
 805738e: bd80         	pop	{r7, pc}

08057390 <prvReloadTimer>:
;     {
 8057390: b580         	push	{r7, lr}
 8057392: 466f         	mov	r7, sp
 8057394: b084         	sub	sp, #0x10
 8057396: 9003         	str	r0, [sp, #0xc]
 8057398: 9102         	str	r1, [sp, #0x8]
 805739a: 9201         	str	r2, [sp, #0x4]
;         while( prvInsertTimerInActiveList( pxTimer, ( xExpiredTime + pxTimer->xTimerPeriodInTicks ), xTimeNow, xExpiredTime ) != pdFALSE )
 805739c: e7ff         	b	0x805739e <prvReloadTimer+0xe> @ imm = #-0x2
 805739e: 9803         	ldr	r0, [sp, #0xc]
 80573a0: 9b02         	ldr	r3, [sp, #0x8]
 80573a2: 6981         	ldr	r1, [r0, #0x18]
 80573a4: 4419         	add	r1, r3
 80573a6: 9a01         	ldr	r2, [sp, #0x4]
 80573a8: f7ff ffae    	bl	0x8057308 <prvInsertTimerInActiveList> @ imm = #-0xa4
 80573ac: b148         	cbz	r0, 0x80573c2 <prvReloadTimer+0x32> @ imm = #0x12
 80573ae: e7ff         	b	0x80573b0 <prvReloadTimer+0x20> @ imm = #-0x2
;             xExpiredTime += pxTimer->xTimerPeriodInTicks;
 80573b0: 9803         	ldr	r0, [sp, #0xc]
 80573b2: 6980         	ldr	r0, [r0, #0x18]
 80573b4: 9902         	ldr	r1, [sp, #0x8]
 80573b6: 4408         	add	r0, r1
 80573b8: 9002         	str	r0, [sp, #0x8]
;             pxTimer->pxCallbackFunction( ( TimerHandle_t ) pxTimer );
 80573ba: 9803         	ldr	r0, [sp, #0xc]
 80573bc: 6a01         	ldr	r1, [r0, #0x20]
 80573be: 4788         	blx	r1
;         while( prvInsertTimerInActiveList( pxTimer, ( xExpiredTime + pxTimer->xTimerPeriodInTicks ), xTimeNow, xExpiredTime ) != pdFALSE )
 80573c0: e7ed         	b	0x805739e <prvReloadTimer+0xe> @ imm = #-0x26
;     }
 80573c2: b004         	add	sp, #0x10
 80573c4: bd80         	pop	{r7, pc}

080573c6 <prvSwitchTimerLists>:
;     {
 80573c6: b580         	push	{r7, lr}
 80573c8: 466f         	mov	r7, sp
 80573ca: b082         	sub	sp, #0x8
;         while( listLIST_IS_EMPTY( pxCurrentTimerList ) == pdFALSE )
 80573cc: e7ff         	b	0x80573ce <prvSwitchTimerLists+0x8> @ imm = #-0x2
 80573ce: f240 20f0    	movw	r0, #0x2f0
 80573d2: f2c2 0000    	movt	r0, #0x2000
 80573d6: 6800         	ldr	r0, [r0]
 80573d8: 6800         	ldr	r0, [r0]
 80573da: b170         	cbz	r0, 0x80573fa <prvSwitchTimerLists+0x34> @ imm = #0x1c
 80573dc: e7ff         	b	0x80573de <prvSwitchTimerLists+0x18> @ imm = #-0x2
;             xNextExpireTime = listGET_ITEM_VALUE_OF_HEAD_ENTRY( pxCurrentTimerList );
 80573de: f240 20f0    	movw	r0, #0x2f0
 80573e2: f2c2 0000    	movt	r0, #0x2000
 80573e6: 6800         	ldr	r0, [r0]
 80573e8: 68c0         	ldr	r0, [r0, #0xc]
 80573ea: 6800         	ldr	r0, [r0]
 80573ec: 9001         	str	r0, [sp, #0x4]
;             prvProcessExpiredTimer( xNextExpireTime, tmrMAX_TIME_BEFORE_OVERFLOW );
 80573ee: 9801         	ldr	r0, [sp, #0x4]
 80573f0: f04f 31ff    	mov.w	r1, #0xffffffff
 80573f4: f000 f811    	bl	0x805741a <prvProcessExpiredTimer> @ imm = #0x22
;         while( listLIST_IS_EMPTY( pxCurrentTimerList ) == pdFALSE )
 80573f8: e7e9         	b	0x80573ce <prvSwitchTimerLists+0x8> @ imm = #-0x2e
;         pxTemp = pxCurrentTimerList;
 80573fa: f240 20f0    	movw	r0, #0x2f0
 80573fe: f2c2 0000    	movt	r0, #0x2000
 8057402: 6801         	ldr	r1, [r0]
 8057404: 9100         	str	r1, [sp]
;         pxCurrentTimerList = pxOverflowTimerList;
 8057406: f240 21f4    	movw	r1, #0x2f4
 805740a: f2c2 0100    	movt	r1, #0x2000
 805740e: 680a         	ldr	r2, [r1]
 8057410: 6002         	str	r2, [r0]
;         pxOverflowTimerList = pxTemp;
 8057412: 9800         	ldr	r0, [sp]
 8057414: 6008         	str	r0, [r1]
;     }
 8057416: b002         	add	sp, #0x8
 8057418: bd80         	pop	{r7, pc}

0805741a <prvProcessExpiredTimer>:
;     {
 805741a: b580         	push	{r7, lr}
 805741c: 466f         	mov	r7, sp
 805741e: b084         	sub	sp, #0x10
 8057420: 9003         	str	r0, [sp, #0xc]
 8057422: 9102         	str	r1, [sp, #0x8]
;         Timer_t * const pxTimer = ( Timer_t * ) listGET_OWNER_OF_HEAD_ENTRY( pxCurrentTimerList ); /*lint !e9087 !e9079 void * is used as this macro is used with tasks and co-routines too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
 8057424: f240 20f0    	movw	r0, #0x2f0
 8057428: f2c2 0000    	movt	r0, #0x2000
 805742c: 6800         	ldr	r0, [r0]
 805742e: 68c0         	ldr	r0, [r0, #0xc]
 8057430: 68c0         	ldr	r0, [r0, #0xc]
 8057432: 9001         	str	r0, [sp, #0x4]
;         ( void ) uxListRemove( &( pxTimer->xTimerListItem ) );
 8057434: 9801         	ldr	r0, [sp, #0x4]
 8057436: 3004         	adds	r0, #0x4
 8057438: f7ff fd87    	bl	0x8056f4a <uxListRemove> @ imm = #-0x4f2
;         if( ( pxTimer->ucStatus & tmrSTATUS_IS_AUTORELOAD ) != 0 )
 805743c: 9801         	ldr	r0, [sp, #0x4]
 805743e: f890 0028    	ldrb.w	r0, [r0, #0x28]
 8057442: 0740         	lsls	r0, r0, #0x1d
 8057444: 2800         	cmp	r0, #0x0
 8057446: d506         	bpl	0x8057456 <prvProcessExpiredTimer+0x3c> @ imm = #0xc
 8057448: e7ff         	b	0x805744a <prvProcessExpiredTimer+0x30> @ imm = #-0x2
;             prvReloadTimer( pxTimer, xNextExpireTime, xTimeNow );
 805744a: 9801         	ldr	r0, [sp, #0x4]
 805744c: 9903         	ldr	r1, [sp, #0xc]
 805744e: 9a02         	ldr	r2, [sp, #0x8]
 8057450: f7ff ff9e    	bl	0x8057390 <prvReloadTimer> @ imm = #-0xc4
;         }
 8057454: e007         	b	0x8057466 <prvProcessExpiredTimer+0x4c> @ imm = #0xe
;             pxTimer->ucStatus &= ( ( uint8_t ) ~tmrSTATUS_IS_ACTIVE );
 8057456: 9801         	ldr	r0, [sp, #0x4]
 8057458: f890 1028    	ldrb.w	r1, [r0, #0x28]
 805745c: f001 01fe    	and	r1, r1, #0xfe
 8057460: f880 1028    	strb.w	r1, [r0, #0x28]
 8057464: e7ff         	b	0x8057466 <prvProcessExpiredTimer+0x4c> @ imm = #-0x2
;         pxTimer->pxCallbackFunction( ( TimerHandle_t ) pxTimer );
 8057466: 9801         	ldr	r0, [sp, #0x4]
 8057468: 6a01         	ldr	r1, [r0, #0x20]
 805746a: 4788         	blx	r1
;     }
 805746c: b004         	add	sp, #0x10
 805746e: bd80         	pop	{r7, pc}

08057470 <xQueueGenericReset>:
; {
 8057470: b580         	push	{r7, lr}
 8057472: 466f         	mov	r7, sp
 8057474: b084         	sub	sp, #0x10
 8057476: 9003         	str	r0, [sp, #0xc]
 8057478: 2001         	movs	r0, #0x1
 805747a: 9002         	str	r0, [sp, #0x8]
;     BaseType_t xReturn = pdPASS;
 805747c: 9001         	str	r0, [sp, #0x4]
;     Queue_t * const pxQueue = xQueue;
 805747e: 9803         	ldr	r0, [sp, #0xc]
 8057480: 9000         	str	r0, [sp]
;     configASSERT( pxQueue );
 8057482: 9800         	ldr	r0, [sp]
 8057484: b920         	cbnz	r0, 0x8057490 <xQueueGenericReset+0x20> @ imm = #0x8
 8057486: e7ff         	b	0x8057488 <xQueueGenericReset+0x18> @ imm = #-0x2
 8057488: f001 f872    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0x10e4
 805748c: e7ff         	b	0x805748e <xQueueGenericReset+0x1e> @ imm = #-0x2
 805748e: e7fe         	b	0x805748e <xQueueGenericReset+0x1e> @ imm = #-0x4
;     if( ( pxQueue != NULL ) &&
 8057490: 9800         	ldr	r0, [sp]
 8057492: 2800         	cmp	r0, #0x0
 8057494: d04d         	beq	0x8057532 <xQueueGenericReset+0xc2> @ imm = #0x9a
 8057496: e7ff         	b	0x8057498 <xQueueGenericReset+0x28> @ imm = #-0x2
;         ( pxQueue->uxLength >= 1U ) &&
 8057498: 9800         	ldr	r0, [sp]
 805749a: 6bc0         	ldr	r0, [r0, #0x3c]
 805749c: 2800         	cmp	r0, #0x0
 805749e: d048         	beq	0x8057532 <xQueueGenericReset+0xc2> @ imm = #0x90
 80574a0: e7ff         	b	0x80574a2 <xQueueGenericReset+0x32> @ imm = #-0x2
;         ( ( SIZE_MAX / pxQueue->uxLength ) >= pxQueue->uxItemSize ) )
 80574a2: 9800         	ldr	r0, [sp]
 80574a4: 6bc1         	ldr	r1, [r0, #0x3c]
 80574a6: 6c00         	ldr	r0, [r0, #0x40]
 80574a8: f04f 32ff    	mov.w	r2, #0xffffffff
 80574ac: fbb2 f1f1    	udiv	r1, r2, r1
;     if( ( pxQueue != NULL ) &&
 80574b0: 4281         	cmp	r1, r0
 80574b2: d33e         	blo	0x8057532 <xQueueGenericReset+0xc2> @ imm = #0x7c
 80574b4: e7ff         	b	0x80574b6 <xQueueGenericReset+0x46> @ imm = #-0x2
;         taskENTER_CRITICAL();
 80574b6: f000 fd77    	bl	0x8057fa8 <vPortEnterCritical> @ imm = #0xaee
;             pxQueue->u.xQueue.pcTail = pxQueue->pcHead + ( pxQueue->uxLength * pxQueue->uxItemSize ); /*lint !e9016 Pointer arithmetic allowed on char types, especially when it assists conveying intent. */
 80574ba: 9800         	ldr	r0, [sp]
 80574bc: 6801         	ldr	r1, [r0]
 80574be: 6bc2         	ldr	r2, [r0, #0x3c]
 80574c0: 6c03         	ldr	r3, [r0, #0x40]
 80574c2: fb02 1103    	mla	r1, r2, r3, r1
 80574c6: 6081         	str	r1, [r0, #0x8]
;             pxQueue->uxMessagesWaiting = ( UBaseType_t ) 0U;
 80574c8: 9800         	ldr	r0, [sp]
 80574ca: 2100         	movs	r1, #0x0
 80574cc: 6381         	str	r1, [r0, #0x38]
;             pxQueue->pcWriteTo = pxQueue->pcHead;
 80574ce: 9800         	ldr	r0, [sp]
 80574d0: 6801         	ldr	r1, [r0]
 80574d2: 6041         	str	r1, [r0, #0x4]
;             pxQueue->u.xQueue.pcReadFrom = pxQueue->pcHead + ( ( pxQueue->uxLength - 1U ) * pxQueue->uxItemSize ); /*lint !e9016 Pointer arithmetic allowed on char types, especially when it assists conveying intent. */
 80574d4: 9800         	ldr	r0, [sp]
 80574d6: 6801         	ldr	r1, [r0]
 80574d8: 6bc2         	ldr	r2, [r0, #0x3c]
 80574da: 6c03         	ldr	r3, [r0, #0x40]
 80574dc: 3a01         	subs	r2, #0x1
 80574de: fb02 1103    	mla	r1, r2, r3, r1
 80574e2: 60c1         	str	r1, [r0, #0xc]
;             pxQueue->cRxLock = queueUNLOCKED;
 80574e4: 9800         	ldr	r0, [sp]
 80574e6: 21ff         	movs	r1, #0xff
 80574e8: f880 1044    	strb.w	r1, [r0, #0x44]
;             pxQueue->cTxLock = queueUNLOCKED;
 80574ec: 9800         	ldr	r0, [sp]
 80574ee: f880 1045    	strb.w	r1, [r0, #0x45]
;             if( xNewQueue == pdFALSE )
 80574f2: 9802         	ldr	r0, [sp, #0x8]
 80574f4: b988         	cbnz	r0, 0x805751a <xQueueGenericReset+0xaa> @ imm = #0x22
 80574f6: e7ff         	b	0x80574f8 <xQueueGenericReset+0x88> @ imm = #-0x2
;                 if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
 80574f8: 9800         	ldr	r0, [sp]
 80574fa: 6900         	ldr	r0, [r0, #0x10]
 80574fc: b158         	cbz	r0, 0x8057516 <xQueueGenericReset+0xa6> @ imm = #0x16
 80574fe: e7ff         	b	0x8057500 <xQueueGenericReset+0x90> @ imm = #-0x2
;                     if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
 8057500: 9800         	ldr	r0, [sp]
 8057502: 3010         	adds	r0, #0x10
 8057504: f7ff fb6a    	bl	0x8056bdc <xTaskRemoveFromEventList> @ imm = #-0x92c
 8057508: b118         	cbz	r0, 0x8057512 <xQueueGenericReset+0xa2> @ imm = #0x6
 805750a: e7ff         	b	0x805750c <xQueueGenericReset+0x9c> @ imm = #-0x2
;                         queueYIELD_IF_USING_PREEMPTION();
 805750c: f000 fd40    	bl	0x8057f90 <vPortYield>  @ imm = #0xa80
;                     }
 8057510: e000         	b	0x8057514 <xQueueGenericReset+0xa4> @ imm = #0x0
 8057512: e7ff         	b	0x8057514 <xQueueGenericReset+0xa4> @ imm = #-0x2
;                 }
 8057514: e000         	b	0x8057518 <xQueueGenericReset+0xa8> @ imm = #0x0
 8057516: e7ff         	b	0x8057518 <xQueueGenericReset+0xa8> @ imm = #-0x2
;             }
 8057518: e008         	b	0x805752c <xQueueGenericReset+0xbc> @ imm = #0x10
;                 vListInitialise( &( pxQueue->xTasksWaitingToSend ) );
 805751a: 9800         	ldr	r0, [sp]
 805751c: 3010         	adds	r0, #0x10
 805751e: f7ff fcc1    	bl	0x8056ea4 <vListInitialise> @ imm = #-0x67e
;                 vListInitialise( &( pxQueue->xTasksWaitingToReceive ) );
 8057522: 9800         	ldr	r0, [sp]
 8057524: 3024         	adds	r0, #0x24
 8057526: f7ff fcbd    	bl	0x8056ea4 <vListInitialise> @ imm = #-0x686
 805752a: e7ff         	b	0x805752c <xQueueGenericReset+0xbc> @ imm = #-0x2
;         taskEXIT_CRITICAL();
 805752c: f000 fd4c    	bl	0x8057fc8 <vPortExitCritical> @ imm = #0xa98
;     }
 8057530: e002         	b	0x8057538 <xQueueGenericReset+0xc8> @ imm = #0x4
 8057532: 2000         	movs	r0, #0x0
;         xReturn = pdFAIL;
 8057534: 9001         	str	r0, [sp, #0x4]
 8057536: e7ff         	b	0x8057538 <xQueueGenericReset+0xc8> @ imm = #-0x2
;     configASSERT( xReturn != pdFAIL );
 8057538: 9801         	ldr	r0, [sp, #0x4]
 805753a: b920         	cbnz	r0, 0x8057546 <xQueueGenericReset+0xd6> @ imm = #0x8
 805753c: e7ff         	b	0x805753e <xQueueGenericReset+0xce> @ imm = #-0x2
 805753e: f001 f817    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0x102e
 8057542: e7ff         	b	0x8057544 <xQueueGenericReset+0xd4> @ imm = #-0x2
 8057544: e7fe         	b	0x8057544 <xQueueGenericReset+0xd4> @ imm = #-0x4
;     return xReturn;
 8057546: b004         	add	sp, #0x10
 8057548: bd80         	pop	{r7, pc}

0805754a <xQueueGenericCreate>:
;     {
 805754a: b580         	push	{r7, lr}
 805754c: 466f         	mov	r7, sp
 805754e: b088         	sub	sp, #0x20
 8057550: 200a         	movs	r0, #0xa
 8057552: 9007         	str	r0, [sp, #0x1c]
 8057554: 2010         	movs	r0, #0x10
 8057556: 9006         	str	r0, [sp, #0x18]
 8057558: 2000         	movs	r0, #0x0
 805755a: f807 0c09    	strb	r0, [r7, #-9]
;         Queue_t * pxNewQueue = NULL;
 805755e: 9004         	str	r0, [sp, #0x10]
;         if( ( uxQueueLength > ( UBaseType_t ) 0 ) &&
 8057560: 9807         	ldr	r0, [sp, #0x1c]
 8057562: b378         	cbz	r0, 0x80575c4 <xQueueGenericCreate+0x7a> @ imm = #0x5e
 8057564: e7ff         	b	0x8057566 <xQueueGenericCreate+0x1c> @ imm = #-0x2
;             ( ( SIZE_MAX / uxQueueLength ) >= uxItemSize ) &&
 8057566: 9807         	ldr	r0, [sp, #0x1c]
 8057568: f04f 31ff    	mov.w	r1, #0xffffffff
 805756c: fbb1 f0f0    	udiv	r0, r1, r0
 8057570: 9906         	ldr	r1, [sp, #0x18]
 8057572: 4288         	cmp	r0, r1
 8057574: d326         	blo	0x80575c4 <xQueueGenericCreate+0x7a> @ imm = #0x4c
 8057576: e7ff         	b	0x8057578 <xQueueGenericCreate+0x2e> @ imm = #-0x2
;             ( ( UBaseType_t ) ( SIZE_MAX - sizeof( Queue_t ) ) >= ( uxQueueLength * uxItemSize ) ) )
 8057578: 9807         	ldr	r0, [sp, #0x1c]
 805757a: 9906         	ldr	r1, [sp, #0x18]
 805757c: 4348         	muls	r0, r1, r0
;         if( ( uxQueueLength > ( UBaseType_t ) 0 ) &&
 805757e: f110 0f51    	cmn.w	r0, #0x51
 8057582: d81f         	bhi	0x80575c4 <xQueueGenericCreate+0x7a> @ imm = #0x3e
 8057584: e7ff         	b	0x8057586 <xQueueGenericCreate+0x3c> @ imm = #-0x2
;             xQueueSizeInBytes = ( size_t ) ( uxQueueLength * uxItemSize ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
 8057586: 9807         	ldr	r0, [sp, #0x1c]
 8057588: 9906         	ldr	r1, [sp, #0x18]
 805758a: 4348         	muls	r0, r1, r0
 805758c: 9003         	str	r0, [sp, #0xc]
;             pxNewQueue = ( Queue_t * ) pvPortMalloc( sizeof( Queue_t ) + xQueueSizeInBytes ); /*lint !e9087 !e9079 see comment above. */
 805758e: 9803         	ldr	r0, [sp, #0xc]
 8057590: 3050         	adds	r0, #0x50
 8057592: f000 fa26    	bl	0x80579e2 <pvPortMalloc> @ imm = #0x44c
 8057596: 9004         	str	r0, [sp, #0x10]
;             if( pxNewQueue != NULL )
 8057598: 9804         	ldr	r0, [sp, #0x10]
 805759a: b188         	cbz	r0, 0x80575c0 <xQueueGenericCreate+0x76> @ imm = #0x22
 805759c: e7ff         	b	0x805759e <xQueueGenericCreate+0x54> @ imm = #-0x2
;                 pucQueueStorage = ( uint8_t * ) pxNewQueue;
 805759e: 9804         	ldr	r0, [sp, #0x10]
 80575a0: 9002         	str	r0, [sp, #0x8]
;                 pucQueueStorage += sizeof( Queue_t ); /*lint !e9016 Pointer arithmetic allowed on char types, especially when it assists conveying intent. */
 80575a2: 9802         	ldr	r0, [sp, #0x8]
 80575a4: 3050         	adds	r0, #0x50
 80575a6: 9002         	str	r0, [sp, #0x8]
;                 prvInitialiseNewQueue( uxQueueLength, uxItemSize, pucQueueStorage, ucQueueType, pxNewQueue );
 80575a8: 9807         	ldr	r0, [sp, #0x1c]
 80575aa: 9906         	ldr	r1, [sp, #0x18]
 80575ac: 9a02         	ldr	r2, [sp, #0x8]
 80575ae: f817 3c09    	ldrb	r3, [r7, #-9]
 80575b2: f8dd c010    	ldr.w	r12, [sp, #0x10]
 80575b6: f8cd c000    	str.w	r12, [sp]
 80575ba: f000 f80e    	bl	0x80575da <prvInitialiseNewQueue> @ imm = #0x1c
;             }
 80575be: e000         	b	0x80575c2 <xQueueGenericCreate+0x78> @ imm = #0x0
 80575c0: e7ff         	b	0x80575c2 <xQueueGenericCreate+0x78> @ imm = #-0x2
;         }
 80575c2: e007         	b	0x80575d4 <xQueueGenericCreate+0x8a> @ imm = #0xe
;             configASSERT( pxNewQueue );
 80575c4: 9804         	ldr	r0, [sp, #0x10]
 80575c6: b920         	cbnz	r0, 0x80575d2 <xQueueGenericCreate+0x88> @ imm = #0x8
 80575c8: e7ff         	b	0x80575ca <xQueueGenericCreate+0x80> @ imm = #-0x2
 80575ca: f000 ffd1    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0xfa2
 80575ce: e7ff         	b	0x80575d0 <xQueueGenericCreate+0x86> @ imm = #-0x2
 80575d0: e7fe         	b	0x80575d0 <xQueueGenericCreate+0x86> @ imm = #-0x4
 80575d2: e7ff         	b	0x80575d4 <xQueueGenericCreate+0x8a> @ imm = #-0x2
;         return pxNewQueue;
 80575d4: 9804         	ldr	r0, [sp, #0x10]
 80575d6: b008         	add	sp, #0x20
 80575d8: bd80         	pop	{r7, pc}

080575da <prvInitialiseNewQueue>:
; {
 80575da: b580         	push	{r7, lr}
 80575dc: 466f         	mov	r7, sp
 80575de: b084         	sub	sp, #0x10
 80575e0: f8d7 c008    	ldr.w	r12, [r7, #0x8]
 80575e4: 9003         	str	r0, [sp, #0xc]
 80575e6: 9102         	str	r1, [sp, #0x8]
 80575e8: 9201         	str	r2, [sp, #0x4]
 80575ea: f807 3c0d    	strb	r3, [r7, #-13]
;     if( uxItemSize == ( UBaseType_t ) 0 )
 80575ee: 9802         	ldr	r0, [sp, #0x8]
 80575f0: b918         	cbnz	r0, 0x80575fa <prvInitialiseNewQueue+0x20> @ imm = #0x6
 80575f2: e7ff         	b	0x80575f4 <prvInitialiseNewQueue+0x1a> @ imm = #-0x2
;         pxNewQueue->pcHead = ( int8_t * ) pxNewQueue;
 80575f4: 68b8         	ldr	r0, [r7, #0x8]
 80575f6: 6000         	str	r0, [r0]
;     }
 80575f8: e003         	b	0x8057602 <prvInitialiseNewQueue+0x28> @ imm = #0x6
;         pxNewQueue->pcHead = ( int8_t * ) pucQueueStorage;
 80575fa: 9801         	ldr	r0, [sp, #0x4]
 80575fc: 68b9         	ldr	r1, [r7, #0x8]
 80575fe: 6008         	str	r0, [r1]
 8057600: e7ff         	b	0x8057602 <prvInitialiseNewQueue+0x28> @ imm = #-0x2
;     pxNewQueue->uxLength = uxQueueLength;
 8057602: 9803         	ldr	r0, [sp, #0xc]
 8057604: 68b9         	ldr	r1, [r7, #0x8]
 8057606: 63c8         	str	r0, [r1, #0x3c]
;     pxNewQueue->uxItemSize = uxItemSize;
 8057608: 9802         	ldr	r0, [sp, #0x8]
 805760a: 68b9         	ldr	r1, [r7, #0x8]
 805760c: 6408         	str	r0, [r1, #0x40]
;     ( void ) xQueueGenericReset( pxNewQueue, pdTRUE );
 805760e: 68b8         	ldr	r0, [r7, #0x8]
 8057610: f7ff ff2e    	bl	0x8057470 <xQueueGenericReset> @ imm = #-0x1a4
;         pxNewQueue->ucQueueType = ucQueueType;
 8057614: f817 0c0d    	ldrb	r0, [r7, #-13]
 8057618: 68b9         	ldr	r1, [r7, #0x8]
 805761a: f881 004c    	strb.w	r0, [r1, #0x4c]
; }
 805761e: b004         	add	sp, #0x10
 8057620: bd80         	pop	{r7, pc}

08057622 <xQueueReceive>:
; {
 8057622: b580         	push	{r7, lr}
 8057624: 466f         	mov	r7, sp
 8057626: b08a         	sub	sp, #0x28
 8057628: 9008         	str	r0, [sp, #0x20]
 805762a: 9107         	str	r1, [sp, #0x1c]
 805762c: 2000         	movs	r0, #0x0
 805762e: 9006         	str	r0, [sp, #0x18]
;     BaseType_t xEntryTimeSet = pdFALSE;
 8057630: 9005         	str	r0, [sp, #0x14]
;     Queue_t * const pxQueue = xQueue;
 8057632: 9808         	ldr	r0, [sp, #0x20]
 8057634: 9002         	str	r0, [sp, #0x8]
;     configASSERT( ( pxQueue ) );
 8057636: 9802         	ldr	r0, [sp, #0x8]
 8057638: b920         	cbnz	r0, 0x8057644 <xQueueReceive+0x22> @ imm = #0x8
 805763a: e7ff         	b	0x805763c <xQueueReceive+0x1a> @ imm = #-0x2
 805763c: f000 ff98    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0xf30
 8057640: e7ff         	b	0x8057642 <xQueueReceive+0x20> @ imm = #-0x2
 8057642: e7fe         	b	0x8057642 <xQueueReceive+0x20> @ imm = #-0x4
;     configASSERT( !( ( ( pvBuffer ) == NULL ) && ( ( pxQueue )->uxItemSize != ( UBaseType_t ) 0U ) ) );
 8057644: 9907         	ldr	r1, [sp, #0x1c]
 8057646: 2000         	movs	r0, #0x0
 8057648: b931         	cbnz	r1, 0x8057658 <xQueueReceive+0x36> @ imm = #0xc
 805764a: e7ff         	b	0x805764c <xQueueReceive+0x2a> @ imm = #-0x2
 805764c: 9802         	ldr	r0, [sp, #0x8]
 805764e: 6c00         	ldr	r0, [r0, #0x40]
 8057650: 2800         	cmp	r0, #0x0
 8057652: bf18         	it	ne
 8057654: 2001         	movne	r0, #0x1
 8057656: e7ff         	b	0x8057658 <xQueueReceive+0x36> @ imm = #-0x2
 8057658: 07c0         	lsls	r0, r0, #0x1f
 805765a: b120         	cbz	r0, 0x8057666 <xQueueReceive+0x44> @ imm = #0x8
 805765c: e7ff         	b	0x805765e <xQueueReceive+0x3c> @ imm = #-0x2
 805765e: f000 ff87    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0xf0e
 8057662: e7ff         	b	0x8057664 <xQueueReceive+0x42> @ imm = #-0x2
 8057664: e7fe         	b	0x8057664 <xQueueReceive+0x42> @ imm = #-0x4
;         configASSERT( !( ( xTaskGetSchedulerState() == taskSCHEDULER_SUSPENDED ) && ( xTicksToWait != 0 ) ) );
 8057666: f7ff fc01    	bl	0x8056e6c <xTaskGetSchedulerState> @ imm = #-0x7fe
 805766a: 2100         	movs	r1, #0x0
 805766c: b928         	cbnz	r0, 0x805767a <xQueueReceive+0x58> @ imm = #0xa
 805766e: e7ff         	b	0x8057670 <xQueueReceive+0x4e> @ imm = #-0x2
 8057670: 9906         	ldr	r1, [sp, #0x18]
 8057672: 2900         	cmp	r1, #0x0
 8057674: bf18         	it	ne
 8057676: 2101         	movne	r1, #0x1
 8057678: e7ff         	b	0x805767a <xQueueReceive+0x58> @ imm = #-0x2
 805767a: 07c8         	lsls	r0, r1, #0x1f
 805767c: b120         	cbz	r0, 0x8057688 <xQueueReceive+0x66> @ imm = #0x8
 805767e: e7ff         	b	0x8057680 <xQueueReceive+0x5e> @ imm = #-0x2
 8057680: f000 ff76    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0xeec
 8057684: e7ff         	b	0x8057686 <xQueueReceive+0x64> @ imm = #-0x2
 8057686: e7fe         	b	0x8057686 <xQueueReceive+0x64> @ imm = #-0x4
;     for( ; ; )
 8057688: e7ff         	b	0x805768a <xQueueReceive+0x68> @ imm = #-0x2
;         taskENTER_CRITICAL();
 805768a: f000 fc8d    	bl	0x8057fa8 <vPortEnterCritical> @ imm = #0x91a
;             const UBaseType_t uxMessagesWaiting = pxQueue->uxMessagesWaiting;
 805768e: 9802         	ldr	r0, [sp, #0x8]
 8057690: 6b80         	ldr	r0, [r0, #0x38]
 8057692: 9001         	str	r0, [sp, #0x4]
;             if( uxMessagesWaiting > ( UBaseType_t ) 0 )
 8057694: 9801         	ldr	r0, [sp, #0x4]
 8057696: b1e8         	cbz	r0, 0x80576d4 <xQueueReceive+0xb2> @ imm = #0x3a
 8057698: e7ff         	b	0x805769a <xQueueReceive+0x78> @ imm = #-0x2
;                 prvCopyDataFromQueue( pxQueue, pvBuffer );
 805769a: 9802         	ldr	r0, [sp, #0x8]
 805769c: 9907         	ldr	r1, [sp, #0x1c]
 805769e: f000 f881    	bl	0x80577a4 <prvCopyDataFromQueue> @ imm = #0x102
;                 pxQueue->uxMessagesWaiting = ( UBaseType_t ) ( uxMessagesWaiting - ( UBaseType_t ) 1 );
 80576a2: 9801         	ldr	r0, [sp, #0x4]
 80576a4: 3801         	subs	r0, #0x1
 80576a6: 9902         	ldr	r1, [sp, #0x8]
 80576a8: 6388         	str	r0, [r1, #0x38]
;                 if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
 80576aa: 9802         	ldr	r0, [sp, #0x8]
 80576ac: 6900         	ldr	r0, [r0, #0x10]
 80576ae: b158         	cbz	r0, 0x80576c8 <xQueueReceive+0xa6> @ imm = #0x16
 80576b0: e7ff         	b	0x80576b2 <xQueueReceive+0x90> @ imm = #-0x2
;                     if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
 80576b2: 9802         	ldr	r0, [sp, #0x8]
 80576b4: 3010         	adds	r0, #0x10
 80576b6: f7ff fa91    	bl	0x8056bdc <xTaskRemoveFromEventList> @ imm = #-0xade
 80576ba: b118         	cbz	r0, 0x80576c4 <xQueueReceive+0xa2> @ imm = #0x6
 80576bc: e7ff         	b	0x80576be <xQueueReceive+0x9c> @ imm = #-0x2
;                         queueYIELD_IF_USING_PREEMPTION();
 80576be: f000 fc67    	bl	0x8057f90 <vPortYield>  @ imm = #0x8ce
;                     }
 80576c2: e000         	b	0x80576c6 <xQueueReceive+0xa4> @ imm = #0x0
 80576c4: e7ff         	b	0x80576c6 <xQueueReceive+0xa4> @ imm = #-0x2
;                 }
 80576c6: e000         	b	0x80576ca <xQueueReceive+0xa8> @ imm = #0x0
 80576c8: e7ff         	b	0x80576ca <xQueueReceive+0xa8> @ imm = #-0x2
;                 taskEXIT_CRITICAL();
 80576ca: f000 fc7d    	bl	0x8057fc8 <vPortExitCritical> @ imm = #0x8fa
 80576ce: 2001         	movs	r0, #0x1
;                 return pdPASS;
 80576d0: 9009         	str	r0, [sp, #0x24]
 80576d2: e064         	b	0x805779e <xQueueReceive+0x17c> @ imm = #0xc8
;                 if( xTicksToWait == ( TickType_t ) 0 )
 80576d4: 9806         	ldr	r0, [sp, #0x18]
 80576d6: b928         	cbnz	r0, 0x80576e4 <xQueueReceive+0xc2> @ imm = #0xa
 80576d8: e7ff         	b	0x80576da <xQueueReceive+0xb8> @ imm = #-0x2
;                     taskEXIT_CRITICAL();
 80576da: f000 fc75    	bl	0x8057fc8 <vPortExitCritical> @ imm = #0x8ea
 80576de: 2000         	movs	r0, #0x0
;                     return errQUEUE_EMPTY;
 80576e0: 9009         	str	r0, [sp, #0x24]
 80576e2: e05c         	b	0x805779e <xQueueReceive+0x17c> @ imm = #0xb8
;                 else if( xEntryTimeSet == pdFALSE )
 80576e4: 9805         	ldr	r0, [sp, #0x14]
 80576e6: b930         	cbnz	r0, 0x80576f6 <xQueueReceive+0xd4> @ imm = #0xc
 80576e8: e7ff         	b	0x80576ea <xQueueReceive+0xc8> @ imm = #-0x2
 80576ea: a803         	add	r0, sp, #0xc
;                     vTaskInternalSetTimeOutState( &xTimeOut );
 80576ec: f7ff fb49    	bl	0x8056d82 <vTaskInternalSetTimeOutState> @ imm = #-0x96e
 80576f0: 2001         	movs	r0, #0x1
;                     xEntryTimeSet = pdTRUE;
 80576f2: 9005         	str	r0, [sp, #0x14]
;                 }
 80576f4: e000         	b	0x80576f8 <xQueueReceive+0xd6> @ imm = #0x0
 80576f6: e7ff         	b	0x80576f8 <xQueueReceive+0xd6> @ imm = #-0x2
 80576f8: e7ff         	b	0x80576fa <xQueueReceive+0xd8> @ imm = #-0x2
 80576fa: e7ff         	b	0x80576fc <xQueueReceive+0xda> @ imm = #-0x2
;         taskEXIT_CRITICAL();
 80576fc: f000 fc64    	bl	0x8057fc8 <vPortExitCritical> @ imm = #0x8c8
;         vTaskSuspendAll();
 8057700: f7fe fde9    	bl	0x80562d6 <vTaskSuspendAll> @ imm = #-0x142e
;         prvLockQueue( pxQueue );
 8057704: f000 fc50    	bl	0x8057fa8 <vPortEnterCritical> @ imm = #0x8a0
 8057708: 9802         	ldr	r0, [sp, #0x8]
 805770a: f990 0044    	ldrsb.w	r0, [r0, #0x44]
 805770e: 3001         	adds	r0, #0x1
 8057710: b928         	cbnz	r0, 0x805771e <xQueueReceive+0xfc> @ imm = #0xa
 8057712: e7ff         	b	0x8057714 <xQueueReceive+0xf2> @ imm = #-0x2
 8057714: 9802         	ldr	r0, [sp, #0x8]
 8057716: 2100         	movs	r1, #0x0
 8057718: f880 1044    	strb.w	r1, [r0, #0x44]
 805771c: e7ff         	b	0x805771e <xQueueReceive+0xfc> @ imm = #-0x2
 805771e: 9802         	ldr	r0, [sp, #0x8]
 8057720: f990 0045    	ldrsb.w	r0, [r0, #0x45]
 8057724: 3001         	adds	r0, #0x1
 8057726: b928         	cbnz	r0, 0x8057734 <xQueueReceive+0x112> @ imm = #0xa
 8057728: e7ff         	b	0x805772a <xQueueReceive+0x108> @ imm = #-0x2
 805772a: 9802         	ldr	r0, [sp, #0x8]
 805772c: 2100         	movs	r1, #0x0
 805772e: f880 1045    	strb.w	r1, [r0, #0x45]
 8057732: e7ff         	b	0x8057734 <xQueueReceive+0x112> @ imm = #-0x2
 8057734: f000 fc48    	bl	0x8057fc8 <vPortExitCritical> @ imm = #0x890
 8057738: a803         	add	r0, sp, #0xc
 805773a: a906         	add	r1, sp, #0x18
;         if( xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == pdFALSE )
 805773c: f7ff fb33    	bl	0x8056da6 <xTaskCheckForTimeOut> @ imm = #-0x99a
 8057740: b9e8         	cbnz	r0, 0x805777e <xQueueReceive+0x15c> @ imm = #0x3a
 8057742: e7ff         	b	0x8057744 <xQueueReceive+0x122> @ imm = #-0x2
;             if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
 8057744: 9802         	ldr	r0, [sp, #0x8]
 8057746: f000 f84f    	bl	0x80577e8 <prvIsQueueEmpty> @ imm = #0x9e
 805774a: b188         	cbz	r0, 0x8057770 <xQueueReceive+0x14e> @ imm = #0x22
 805774c: e7ff         	b	0x805774e <xQueueReceive+0x12c> @ imm = #-0x2
;                 vTaskPlaceOnEventList( &( pxQueue->xTasksWaitingToReceive ), xTicksToWait );
 805774e: 9802         	ldr	r0, [sp, #0x8]
 8057750: 3024         	adds	r0, #0x24
 8057752: 9906         	ldr	r1, [sp, #0x18]
 8057754: f7ff f9ed    	bl	0x8056b32 <vTaskPlaceOnEventList> @ imm = #-0xc26
;                 prvUnlockQueue( pxQueue );
 8057758: 9802         	ldr	r0, [sp, #0x8]
 805775a: f000 f85a    	bl	0x8057812 <prvUnlockQueue> @ imm = #0xb4
;                 if( xTaskResumeAll() == pdFALSE )
 805775e: f7fe fdc2    	bl	0x80562e6 <xTaskResumeAll> @ imm = #-0x147c
 8057762: b918         	cbnz	r0, 0x805776c <xQueueReceive+0x14a> @ imm = #0x6
 8057764: e7ff         	b	0x8057766 <xQueueReceive+0x144> @ imm = #-0x2
;                     taskYIELD_WITHIN_API();
 8057766: f000 fc13    	bl	0x8057f90 <vPortYield>  @ imm = #0x826
;                 }
 805776a: e000         	b	0x805776e <xQueueReceive+0x14c> @ imm = #0x0
 805776c: e7ff         	b	0x805776e <xQueueReceive+0x14c> @ imm = #-0x2
;             }
 805776e: e005         	b	0x805777c <xQueueReceive+0x15a> @ imm = #0xa
;                 prvUnlockQueue( pxQueue );
 8057770: 9802         	ldr	r0, [sp, #0x8]
 8057772: f000 f84e    	bl	0x8057812 <prvUnlockQueue> @ imm = #0x9c
;                 ( void ) xTaskResumeAll();
 8057776: f7fe fdb6    	bl	0x80562e6 <xTaskResumeAll> @ imm = #-0x1494
 805777a: e7ff         	b	0x805777c <xQueueReceive+0x15a> @ imm = #-0x2
;         }
 805777c: e00e         	b	0x805779c <xQueueReceive+0x17a> @ imm = #0x1c
;             prvUnlockQueue( pxQueue );
 805777e: 9802         	ldr	r0, [sp, #0x8]
 8057780: f000 f847    	bl	0x8057812 <prvUnlockQueue> @ imm = #0x8e
;             ( void ) xTaskResumeAll();
 8057784: f7fe fdaf    	bl	0x80562e6 <xTaskResumeAll> @ imm = #-0x14a2
;             if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
 8057788: 9802         	ldr	r0, [sp, #0x8]
 805778a: f000 f82d    	bl	0x80577e8 <prvIsQueueEmpty> @ imm = #0x5a
 805778e: b118         	cbz	r0, 0x8057798 <xQueueReceive+0x176> @ imm = #0x6
 8057790: e7ff         	b	0x8057792 <xQueueReceive+0x170> @ imm = #-0x2
 8057792: 2000         	movs	r0, #0x0
;                 return errQUEUE_EMPTY;
 8057794: 9009         	str	r0, [sp, #0x24]
 8057796: e002         	b	0x805779e <xQueueReceive+0x17c> @ imm = #0x4
 8057798: e7ff         	b	0x805779a <xQueueReceive+0x178> @ imm = #-0x2
 805779a: e7ff         	b	0x805779c <xQueueReceive+0x17a> @ imm = #-0x2
;     for( ; ; )
 805779c: e775         	b	0x805768a <xQueueReceive+0x68> @ imm = #-0x116
; }
 805779e: 9809         	ldr	r0, [sp, #0x24]
 80577a0: b00a         	add	sp, #0x28
 80577a2: bd80         	pop	{r7, pc}

080577a4 <prvCopyDataFromQueue>:
; {
 80577a4: b580         	push	{r7, lr}
 80577a6: 466f         	mov	r7, sp
 80577a8: b082         	sub	sp, #0x8
 80577aa: 9001         	str	r0, [sp, #0x4]
 80577ac: 9100         	str	r1, [sp]
;     if( pxQueue->uxItemSize != ( UBaseType_t ) 0 )
 80577ae: 9801         	ldr	r0, [sp, #0x4]
 80577b0: 6c00         	ldr	r0, [r0, #0x40]
 80577b2: b1b8         	cbz	r0, 0x80577e4 <prvCopyDataFromQueue+0x40> @ imm = #0x2e
 80577b4: e7ff         	b	0x80577b6 <prvCopyDataFromQueue+0x12> @ imm = #-0x2
;         pxQueue->u.xQueue.pcReadFrom += pxQueue->uxItemSize;           /*lint !e9016 Pointer arithmetic on char types ok, especially in this use case where it is the clearest way of conveying intent. */
 80577b6: 9801         	ldr	r0, [sp, #0x4]
 80577b8: 68c1         	ldr	r1, [r0, #0xc]
 80577ba: 6c02         	ldr	r2, [r0, #0x40]
 80577bc: 4411         	add	r1, r2
 80577be: 60c1         	str	r1, [r0, #0xc]
;         if( pxQueue->u.xQueue.pcReadFrom >= pxQueue->u.xQueue.pcTail ) /*lint !e946 MISRA exception justified as use of the relational operator is the cleanest solutions. */
 80577c0: 9801         	ldr	r0, [sp, #0x4]
 80577c2: 6881         	ldr	r1, [r0, #0x8]
 80577c4: 68c0         	ldr	r0, [r0, #0xc]
 80577c6: 4288         	cmp	r0, r1
 80577c8: d304         	blo	0x80577d4 <prvCopyDataFromQueue+0x30> @ imm = #0x8
 80577ca: e7ff         	b	0x80577cc <prvCopyDataFromQueue+0x28> @ imm = #-0x2
;             pxQueue->u.xQueue.pcReadFrom = pxQueue->pcHead;
 80577cc: 9801         	ldr	r0, [sp, #0x4]
 80577ce: 6801         	ldr	r1, [r0]
 80577d0: 60c1         	str	r1, [r0, #0xc]
;         }
 80577d2: e000         	b	0x80577d6 <prvCopyDataFromQueue+0x32> @ imm = #0x0
 80577d4: e7ff         	b	0x80577d6 <prvCopyDataFromQueue+0x32> @ imm = #-0x2
;         ( void ) memcpy( ( void * ) pvBuffer, ( void * ) pxQueue->u.xQueue.pcReadFrom, ( size_t ) pxQueue->uxItemSize ); /*lint !e961 !e418 !e9087 MISRA exception as the casts are only redundant for some ports.  Also previous logic ensures a null pointer can only be passed to memcpy() when the count is 0.  Cast to void required by function signature and safe as no alignment requirement and copy length specified in bytes. */
 80577d6: 9800         	ldr	r0, [sp]
 80577d8: 9a01         	ldr	r2, [sp, #0x4]
 80577da: 68d1         	ldr	r1, [r2, #0xc]
 80577dc: 6c12         	ldr	r2, [r2, #0x40]
 80577de: f7fd fd09    	bl	0x80551f4 <memcpy>      @ imm = #-0x25ee
;     }
 80577e2: e7ff         	b	0x80577e4 <prvCopyDataFromQueue+0x40> @ imm = #-0x2
; }
 80577e4: b002         	add	sp, #0x8
 80577e6: bd80         	pop	{r7, pc}

080577e8 <prvIsQueueEmpty>:
; {
 80577e8: b580         	push	{r7, lr}
 80577ea: 466f         	mov	r7, sp
 80577ec: b082         	sub	sp, #0x8
 80577ee: 9001         	str	r0, [sp, #0x4]
;     taskENTER_CRITICAL();
 80577f0: f000 fbda    	bl	0x8057fa8 <vPortEnterCritical> @ imm = #0x7b4
;         if( pxQueue->uxMessagesWaiting == ( UBaseType_t ) 0 )
 80577f4: 9801         	ldr	r0, [sp, #0x4]
 80577f6: 6b80         	ldr	r0, [r0, #0x38]
 80577f8: b918         	cbnz	r0, 0x8057802 <prvIsQueueEmpty+0x1a> @ imm = #0x6
 80577fa: e7ff         	b	0x80577fc <prvIsQueueEmpty+0x14> @ imm = #-0x2
 80577fc: 2001         	movs	r0, #0x1
;             xReturn = pdTRUE;
 80577fe: 9000         	str	r0, [sp]
;         }
 8057800: e002         	b	0x8057808 <prvIsQueueEmpty+0x20> @ imm = #0x4
 8057802: 2000         	movs	r0, #0x0
;             xReturn = pdFALSE;
 8057804: 9000         	str	r0, [sp]
 8057806: e7ff         	b	0x8057808 <prvIsQueueEmpty+0x20> @ imm = #-0x2
;     taskEXIT_CRITICAL();
 8057808: f000 fbde    	bl	0x8057fc8 <vPortExitCritical> @ imm = #0x7bc
;     return xReturn;
 805780c: 9800         	ldr	r0, [sp]
 805780e: b002         	add	sp, #0x8
 8057810: bd80         	pop	{r7, pc}

08057812 <prvUnlockQueue>:
; {
 8057812: b580         	push	{r7, lr}
 8057814: 466f         	mov	r7, sp
 8057816: b082         	sub	sp, #0x8
 8057818: 9001         	str	r0, [sp, #0x4]
;     taskENTER_CRITICAL();
 805781a: f000 fbc5    	bl	0x8057fa8 <vPortEnterCritical> @ imm = #0x78a
;         int8_t cTxLock = pxQueue->cTxLock;
 805781e: 9801         	ldr	r0, [sp, #0x4]
 8057820: f890 0045    	ldrb.w	r0, [r0, #0x45]
 8057824: f807 0c05    	strb	r0, [r7, #-5]
;         while( cTxLock > queueLOCKED_UNMODIFIED )
 8057828: e7ff         	b	0x805782a <prvUnlockQueue+0x18> @ imm = #-0x2
 805782a: f917 0c05    	ldrsb	r0, [r7, #-5]
 805782e: 2801         	cmp	r0, #0x1
 8057830: db16         	blt	0x8057860 <prvUnlockQueue+0x4e> @ imm = #0x2c
 8057832: e7ff         	b	0x8057834 <prvUnlockQueue+0x22> @ imm = #-0x2
;                 if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
 8057834: 9801         	ldr	r0, [sp, #0x4]
 8057836: 6a40         	ldr	r0, [r0, #0x24]
 8057838: b158         	cbz	r0, 0x8057852 <prvUnlockQueue+0x40> @ imm = #0x16
 805783a: e7ff         	b	0x805783c <prvUnlockQueue+0x2a> @ imm = #-0x2
;                     if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
 805783c: 9801         	ldr	r0, [sp, #0x4]
 805783e: 3024         	adds	r0, #0x24
 8057840: f7ff f9cc    	bl	0x8056bdc <xTaskRemoveFromEventList> @ imm = #-0xc68
 8057844: b118         	cbz	r0, 0x805784e <prvUnlockQueue+0x3c> @ imm = #0x6
 8057846: e7ff         	b	0x8057848 <prvUnlockQueue+0x36> @ imm = #-0x2
;                         vTaskMissedYield();
 8057848: f7ff fb09    	bl	0x8056e5e <vTaskMissedYield> @ imm = #-0x9ee
;                     }
 805784c: e000         	b	0x8057850 <prvUnlockQueue+0x3e> @ imm = #0x0
 805784e: e7ff         	b	0x8057850 <prvUnlockQueue+0x3e> @ imm = #-0x2
;                 }
 8057850: e000         	b	0x8057854 <prvUnlockQueue+0x42> @ imm = #0x0
;                     break;
 8057852: e006         	b	0x8057862 <prvUnlockQueue+0x50> @ imm = #0xc
;             --cTxLock;
 8057854: f817 0c05    	ldrb	r0, [r7, #-5]
 8057858: 3801         	subs	r0, #0x1
 805785a: f807 0c05    	strb	r0, [r7, #-5]
;         while( cTxLock > queueLOCKED_UNMODIFIED )
 805785e: e7e4         	b	0x805782a <prvUnlockQueue+0x18> @ imm = #-0x38
;         pxQueue->cTxLock = queueUNLOCKED;
 8057860: e7ff         	b	0x8057862 <prvUnlockQueue+0x50> @ imm = #-0x2
 8057862: 9801         	ldr	r0, [sp, #0x4]
 8057864: 21ff         	movs	r1, #0xff
 8057866: f880 1045    	strb.w	r1, [r0, #0x45]
;     taskEXIT_CRITICAL();
 805786a: f000 fbad    	bl	0x8057fc8 <vPortExitCritical> @ imm = #0x75a
;     taskENTER_CRITICAL();
 805786e: f000 fb9b    	bl	0x8057fa8 <vPortEnterCritical> @ imm = #0x736
;         int8_t cRxLock = pxQueue->cRxLock;
 8057872: 9801         	ldr	r0, [sp, #0x4]
 8057874: f890 0044    	ldrb.w	r0, [r0, #0x44]
 8057878: f807 0c06    	strb	r0, [r7, #-6]
;         while( cRxLock > queueLOCKED_UNMODIFIED )
 805787c: e7ff         	b	0x805787e <prvUnlockQueue+0x6c> @ imm = #-0x2
 805787e: f917 0c06    	ldrsb	r0, [r7, #-6]
 8057882: 2801         	cmp	r0, #0x1
 8057884: db16         	blt	0x80578b4 <prvUnlockQueue+0xa2> @ imm = #0x2c
 8057886: e7ff         	b	0x8057888 <prvUnlockQueue+0x76> @ imm = #-0x2
;             if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
 8057888: 9801         	ldr	r0, [sp, #0x4]
 805788a: 6900         	ldr	r0, [r0, #0x10]
 805788c: b180         	cbz	r0, 0x80578b0 <prvUnlockQueue+0x9e> @ imm = #0x20
 805788e: e7ff         	b	0x8057890 <prvUnlockQueue+0x7e> @ imm = #-0x2
;                 if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
 8057890: 9801         	ldr	r0, [sp, #0x4]
 8057892: 3010         	adds	r0, #0x10
 8057894: f7ff f9a2    	bl	0x8056bdc <xTaskRemoveFromEventList> @ imm = #-0xcbc
 8057898: b118         	cbz	r0, 0x80578a2 <prvUnlockQueue+0x90> @ imm = #0x6
 805789a: e7ff         	b	0x805789c <prvUnlockQueue+0x8a> @ imm = #-0x2
;                     vTaskMissedYield();
 805789c: f7ff fadf    	bl	0x8056e5e <vTaskMissedYield> @ imm = #-0xa42
;                 }
 80578a0: e000         	b	0x80578a4 <prvUnlockQueue+0x92> @ imm = #0x0
 80578a2: e7ff         	b	0x80578a4 <prvUnlockQueue+0x92> @ imm = #-0x2
;                 --cRxLock;
 80578a4: f817 0c06    	ldrb	r0, [r7, #-6]
 80578a8: 3801         	subs	r0, #0x1
 80578aa: f807 0c06    	strb	r0, [r7, #-6]
;             }
 80578ae: e000         	b	0x80578b2 <prvUnlockQueue+0xa0> @ imm = #0x0
;                 break;
 80578b0: e001         	b	0x80578b6 <prvUnlockQueue+0xa4> @ imm = #0x2
;         while( cRxLock > queueLOCKED_UNMODIFIED )
 80578b2: e7e4         	b	0x805787e <prvUnlockQueue+0x6c> @ imm = #-0x38
;         pxQueue->cRxLock = queueUNLOCKED;
 80578b4: e7ff         	b	0x80578b6 <prvUnlockQueue+0xa4> @ imm = #-0x2
 80578b6: 9801         	ldr	r0, [sp, #0x4]
 80578b8: 21ff         	movs	r1, #0xff
 80578ba: f880 1044    	strb.w	r1, [r0, #0x44]
;     taskEXIT_CRITICAL();
 80578be: f000 fb83    	bl	0x8057fc8 <vPortExitCritical> @ imm = #0x706
; }
 80578c2: b002         	add	sp, #0x8
 80578c4: bd80         	pop	{r7, pc}

080578c6 <vQueueAddToRegistry>:
;     {
 80578c6: b580         	push	{r7, lr}
 80578c8: 466f         	mov	r7, sp
 80578ca: b084         	sub	sp, #0x10
 80578cc: 9003         	str	r0, [sp, #0xc]
 80578ce: f248 6070    	movw	r0, #0x8670
 80578d2: f6c0 0005    	movt	r0, #0x805
 80578d6: 9002         	str	r0, [sp, #0x8]
 80578d8: 2000         	movs	r0, #0x0
;         QueueRegistryItem_t * pxEntryToWrite = NULL;
 80578da: 9000         	str	r0, [sp]
;         configASSERT( xQueue );
 80578dc: 9803         	ldr	r0, [sp, #0xc]
 80578de: b920         	cbnz	r0, 0x80578ea <vQueueAddToRegistry+0x24> @ imm = #0x8
 80578e0: e7ff         	b	0x80578e2 <vQueueAddToRegistry+0x1c> @ imm = #-0x2
 80578e2: f000 fe45    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0xc8a
 80578e6: e7ff         	b	0x80578e8 <vQueueAddToRegistry+0x22> @ imm = #-0x2
 80578e8: e7fe         	b	0x80578e8 <vQueueAddToRegistry+0x22> @ imm = #-0x4
;         if( pcQueueName != NULL )
 80578ea: 9802         	ldr	r0, [sp, #0x8]
 80578ec: b3d0         	cbz	r0, 0x8057964 <vQueueAddToRegistry+0x9e> @ imm = #0x74
 80578ee: e7ff         	b	0x80578f0 <vQueueAddToRegistry+0x2a> @ imm = #-0x2
 80578f0: 2000         	movs	r0, #0x0
;             for( ux = ( UBaseType_t ) 0U; ux < ( UBaseType_t ) configQUEUE_REGISTRY_SIZE; ux++ )
 80578f2: 9001         	str	r0, [sp, #0x4]
 80578f4: e7ff         	b	0x80578f6 <vQueueAddToRegistry+0x30> @ imm = #-0x2
 80578f6: 9801         	ldr	r0, [sp, #0x4]
 80578f8: 2807         	cmp	r0, #0x7
 80578fa: d831         	bhi	0x8057960 <vQueueAddToRegistry+0x9a> @ imm = #0x62
 80578fc: e7ff         	b	0x80578fe <vQueueAddToRegistry+0x38> @ imm = #-0x2
;                 if( xQueue == xQueueRegistry[ ux ].xHandle )
 80578fe: 9803         	ldr	r0, [sp, #0xc]
 8057900: 9901         	ldr	r1, [sp, #0x4]
 8057902: f240 3224    	movw	r2, #0x324
 8057906: f2c2 0200    	movt	r2, #0x2000
 805790a: eb02 01c1    	add.w	r1, r2, r1, lsl #3
 805790e: 6849         	ldr	r1, [r1, #0x4]
 8057910: 4288         	cmp	r0, r1
 8057912: d109         	bne	0x8057928 <vQueueAddToRegistry+0x62> @ imm = #0x12
 8057914: e7ff         	b	0x8057916 <vQueueAddToRegistry+0x50> @ imm = #-0x2
;                     pxEntryToWrite = &( xQueueRegistry[ ux ] );
 8057916: 9801         	ldr	r0, [sp, #0x4]
 8057918: f240 3124    	movw	r1, #0x324
 805791c: f2c2 0100    	movt	r1, #0x2000
 8057920: eb01 00c0    	add.w	r0, r1, r0, lsl #3
 8057924: 9000         	str	r0, [sp]
;                     break;
 8057926: e01c         	b	0x8057962 <vQueueAddToRegistry+0x9c> @ imm = #0x38
;                 else if( ( pxEntryToWrite == NULL ) && ( xQueueRegistry[ ux ].pcQueueName == NULL ) )
 8057928: 9800         	ldr	r0, [sp]
 805792a: b990         	cbnz	r0, 0x8057952 <vQueueAddToRegistry+0x8c> @ imm = #0x24
 805792c: e7ff         	b	0x805792e <vQueueAddToRegistry+0x68> @ imm = #-0x2
 805792e: 9801         	ldr	r0, [sp, #0x4]
 8057930: f240 3124    	movw	r1, #0x324
 8057934: f2c2 0100    	movt	r1, #0x2000
 8057938: f851 0030    	ldr.w	r0, [r1, r0, lsl #3]
 805793c: b948         	cbnz	r0, 0x8057952 <vQueueAddToRegistry+0x8c> @ imm = #0x12
 805793e: e7ff         	b	0x8057940 <vQueueAddToRegistry+0x7a> @ imm = #-0x2
;                     pxEntryToWrite = &( xQueueRegistry[ ux ] );
 8057940: 9801         	ldr	r0, [sp, #0x4]
 8057942: f240 3124    	movw	r1, #0x324
 8057946: f2c2 0100    	movt	r1, #0x2000
 805794a: eb01 00c0    	add.w	r0, r1, r0, lsl #3
 805794e: 9000         	str	r0, [sp]
;                 }
 8057950: e000         	b	0x8057954 <vQueueAddToRegistry+0x8e> @ imm = #0x0
 8057952: e7ff         	b	0x8057954 <vQueueAddToRegistry+0x8e> @ imm = #-0x2
 8057954: e7ff         	b	0x8057956 <vQueueAddToRegistry+0x90> @ imm = #-0x2
;             }
 8057956: e7ff         	b	0x8057958 <vQueueAddToRegistry+0x92> @ imm = #-0x2
;             for( ux = ( UBaseType_t ) 0U; ux < ( UBaseType_t ) configQUEUE_REGISTRY_SIZE; ux++ )
 8057958: 9801         	ldr	r0, [sp, #0x4]
 805795a: 3001         	adds	r0, #0x1
 805795c: 9001         	str	r0, [sp, #0x4]
 805795e: e7ca         	b	0x80578f6 <vQueueAddToRegistry+0x30> @ imm = #-0x6c
;         }
 8057960: e7ff         	b	0x8057962 <vQueueAddToRegistry+0x9c> @ imm = #-0x2
 8057962: e7ff         	b	0x8057964 <vQueueAddToRegistry+0x9e> @ imm = #-0x2
;         if( pxEntryToWrite != NULL )
 8057964: 9800         	ldr	r0, [sp]
 8057966: b138         	cbz	r0, 0x8057978 <vQueueAddToRegistry+0xb2> @ imm = #0xe
 8057968: e7ff         	b	0x805796a <vQueueAddToRegistry+0xa4> @ imm = #-0x2
;             pxEntryToWrite->pcQueueName = pcQueueName;
 805796a: 9802         	ldr	r0, [sp, #0x8]
 805796c: 9900         	ldr	r1, [sp]
 805796e: 6008         	str	r0, [r1]
;             pxEntryToWrite->xHandle = xQueue;
 8057970: 9803         	ldr	r0, [sp, #0xc]
 8057972: 9900         	ldr	r1, [sp]
 8057974: 6048         	str	r0, [r1, #0x4]
;         }
 8057976: e7ff         	b	0x8057978 <vQueueAddToRegistry+0xb2> @ imm = #-0x2
;     }
 8057978: b004         	add	sp, #0x10
 805797a: bd80         	pop	{r7, pc}

0805797c <vQueueWaitForMessageRestricted>:
;     {
 805797c: b580         	push	{r7, lr}
 805797e: 466f         	mov	r7, sp
 8057980: b084         	sub	sp, #0x10
 8057982: 9003         	str	r0, [sp, #0xc]
 8057984: 9102         	str	r1, [sp, #0x8]
 8057986: 9201         	str	r2, [sp, #0x4]
;         Queue_t * const pxQueue = xQueue;
 8057988: 9803         	ldr	r0, [sp, #0xc]
 805798a: 9000         	str	r0, [sp]
;         prvLockQueue( pxQueue );
 805798c: f000 fb0c    	bl	0x8057fa8 <vPortEnterCritical> @ imm = #0x618
 8057990: 9800         	ldr	r0, [sp]
 8057992: f990 0044    	ldrsb.w	r0, [r0, #0x44]
 8057996: 3001         	adds	r0, #0x1
 8057998: b928         	cbnz	r0, 0x80579a6 <vQueueWaitForMessageRestricted+0x2a> @ imm = #0xa
 805799a: e7ff         	b	0x805799c <vQueueWaitForMessageRestricted+0x20> @ imm = #-0x2
 805799c: 9800         	ldr	r0, [sp]
 805799e: 2100         	movs	r1, #0x0
 80579a0: f880 1044    	strb.w	r1, [r0, #0x44]
 80579a4: e7ff         	b	0x80579a6 <vQueueWaitForMessageRestricted+0x2a> @ imm = #-0x2
 80579a6: 9800         	ldr	r0, [sp]
 80579a8: f990 0045    	ldrsb.w	r0, [r0, #0x45]
 80579ac: 3001         	adds	r0, #0x1
 80579ae: b928         	cbnz	r0, 0x80579bc <vQueueWaitForMessageRestricted+0x40> @ imm = #0xa
 80579b0: e7ff         	b	0x80579b2 <vQueueWaitForMessageRestricted+0x36> @ imm = #-0x2
 80579b2: 9800         	ldr	r0, [sp]
 80579b4: 2100         	movs	r1, #0x0
 80579b6: f880 1045    	strb.w	r1, [r0, #0x45]
 80579ba: e7ff         	b	0x80579bc <vQueueWaitForMessageRestricted+0x40> @ imm = #-0x2
 80579bc: f000 fb04    	bl	0x8057fc8 <vPortExitCritical> @ imm = #0x608
;         if( pxQueue->uxMessagesWaiting == ( UBaseType_t ) 0U )
 80579c0: 9800         	ldr	r0, [sp]
 80579c2: 6b80         	ldr	r0, [r0, #0x38]
 80579c4: b938         	cbnz	r0, 0x80579d6 <vQueueWaitForMessageRestricted+0x5a> @ imm = #0xe
 80579c6: e7ff         	b	0x80579c8 <vQueueWaitForMessageRestricted+0x4c> @ imm = #-0x2
;             vTaskPlaceOnEventListRestricted( &( pxQueue->xTasksWaitingToReceive ), xTicksToWait, xWaitIndefinitely );
 80579c8: 9800         	ldr	r0, [sp]
 80579ca: 3024         	adds	r0, #0x24
 80579cc: 9902         	ldr	r1, [sp, #0x8]
 80579ce: 9a01         	ldr	r2, [sp, #0x4]
 80579d0: f7ff f8ca    	bl	0x8056b68 <vTaskPlaceOnEventListRestricted> @ imm = #-0xe6c
;         }
 80579d4: e000         	b	0x80579d8 <vQueueWaitForMessageRestricted+0x5c> @ imm = #0x0
 80579d6: e7ff         	b	0x80579d8 <vQueueWaitForMessageRestricted+0x5c> @ imm = #-0x2
;         prvUnlockQueue( pxQueue );
 80579d8: 9800         	ldr	r0, [sp]
 80579da: f7ff ff1a    	bl	0x8057812 <prvUnlockQueue> @ imm = #-0x1cc
;     }
 80579de: b004         	add	sp, #0x10
 80579e0: bd80         	pop	{r7, pc}

080579e2 <pvPortMalloc>:
; {
 80579e2: b580         	push	{r7, lr}
 80579e4: 466f         	mov	r7, sp
 80579e6: b086         	sub	sp, #0x18
 80579e8: 9005         	str	r0, [sp, #0x14]
 80579ea: 2000         	movs	r0, #0x0
;     void * pvReturn = NULL;
 80579ec: 9001         	str	r0, [sp, #0x4]
;     if( xWantedSize > 0 )
 80579ee: 9805         	ldr	r0, [sp, #0x14]
 80579f0: b340         	cbz	r0, 0x8057a44 <pvPortMalloc+0x62> @ imm = #0x50
 80579f2: e7ff         	b	0x80579f4 <pvPortMalloc+0x12> @ imm = #-0x2
;         if( heapADD_WILL_OVERFLOW( xWantedSize, xHeapStructSize ) == 0 )
 80579f4: 9805         	ldr	r0, [sp, #0x14]
 80579f6: f110 0f09    	cmn.w	r0, #0x9
 80579fa: d81f         	bhi	0x8057a3c <pvPortMalloc+0x5a> @ imm = #0x3e
 80579fc: e7ff         	b	0x80579fe <pvPortMalloc+0x1c> @ imm = #-0x2
;             xWantedSize += xHeapStructSize;
 80579fe: 9805         	ldr	r0, [sp, #0x14]
 8057a00: 3008         	adds	r0, #0x8
 8057a02: 9005         	str	r0, [sp, #0x14]
;             if( ( xWantedSize & portBYTE_ALIGNMENT_MASK ) != 0x00 )
 8057a04: f89d 0014    	ldrb.w	r0, [sp, #0x14]
 8057a08: 0740         	lsls	r0, r0, #0x1d
 8057a0a: b1a8         	cbz	r0, 0x8057a38 <pvPortMalloc+0x56> @ imm = #0x2a
 8057a0c: e7ff         	b	0x8057a0e <pvPortMalloc+0x2c> @ imm = #-0x2
;                 xAdditionalRequiredSize = portBYTE_ALIGNMENT - ( xWantedSize & portBYTE_ALIGNMENT_MASK );
 8057a0e: 9805         	ldr	r0, [sp, #0x14]
 8057a10: f000 0007    	and	r0, r0, #0x7
 8057a14: f1c0 0008    	rsb.w	r0, r0, #0x8
 8057a18: 9000         	str	r0, [sp]
;                 if( heapADD_WILL_OVERFLOW( xWantedSize, xAdditionalRequiredSize ) == 0 )
 8057a1a: 9805         	ldr	r0, [sp, #0x14]
 8057a1c: 9900         	ldr	r1, [sp]
 8057a1e: 43c9         	mvns	r1, r1
 8057a20: 4288         	cmp	r0, r1
 8057a22: d805         	bhi	0x8057a30 <pvPortMalloc+0x4e> @ imm = #0xa
 8057a24: e7ff         	b	0x8057a26 <pvPortMalloc+0x44> @ imm = #-0x2
;                     xWantedSize += xAdditionalRequiredSize;
 8057a26: 9800         	ldr	r0, [sp]
 8057a28: 9905         	ldr	r1, [sp, #0x14]
 8057a2a: 4408         	add	r0, r1
 8057a2c: 9005         	str	r0, [sp, #0x14]
;                 }
 8057a2e: e002         	b	0x8057a36 <pvPortMalloc+0x54> @ imm = #0x4
 8057a30: 2000         	movs	r0, #0x0
;                     xWantedSize = 0;
 8057a32: 9005         	str	r0, [sp, #0x14]
 8057a34: e7ff         	b	0x8057a36 <pvPortMalloc+0x54> @ imm = #-0x2
;             }
 8057a36: e000         	b	0x8057a3a <pvPortMalloc+0x58> @ imm = #0x0
 8057a38: e7ff         	b	0x8057a3a <pvPortMalloc+0x58> @ imm = #-0x2
;         }
 8057a3a: e002         	b	0x8057a42 <pvPortMalloc+0x60> @ imm = #0x4
 8057a3c: 2000         	movs	r0, #0x0
;             xWantedSize = 0;
 8057a3e: 9005         	str	r0, [sp, #0x14]
 8057a40: e7ff         	b	0x8057a42 <pvPortMalloc+0x60> @ imm = #-0x2
;     }
 8057a42: e000         	b	0x8057a46 <pvPortMalloc+0x64> @ imm = #0x0
 8057a44: e7ff         	b	0x8057a46 <pvPortMalloc+0x64> @ imm = #-0x2
;     vTaskSuspendAll();
 8057a46: f7fe fc46    	bl	0x80562d6 <vTaskSuspendAll> @ imm = #-0x1774
;         if( pxEnd == NULL )
 8057a4a: f240 3064    	movw	r0, #0x364
 8057a4e: f2c2 0000    	movt	r0, #0x2000
 8057a52: 6800         	ldr	r0, [r0]
 8057a54: b918         	cbnz	r0, 0x8057a5e <pvPortMalloc+0x7c> @ imm = #0x6
 8057a56: e7ff         	b	0x8057a58 <pvPortMalloc+0x76> @ imm = #-0x2
;             prvHeapInit();
 8057a58: f000 f910    	bl	0x8057c7c <prvHeapInit> @ imm = #0x220
;         }
 8057a5c: e000         	b	0x8057a60 <pvPortMalloc+0x7e> @ imm = #0x0
 8057a5e: e7ff         	b	0x8057a60 <pvPortMalloc+0x7e> @ imm = #-0x2
;         if( heapBLOCK_SIZE_IS_VALID( xWantedSize ) != 0 )
 8057a60: f89d 0017    	ldrb.w	r0, [sp, #0x17]
 8057a64: 0600         	lsls	r0, r0, #0x18
 8057a66: 2800         	cmp	r0, #0x0
 8057a68: f100 80f9    	bmi.w	0x8057c5e <pvPortMalloc+0x27c> @ imm = #0x1f2
 8057a6c: e7ff         	b	0x8057a6e <pvPortMalloc+0x8c> @ imm = #-0x2
;             if( ( xWantedSize > 0 ) && ( xWantedSize <= xFreeBytesRemaining ) )
 8057a6e: 9805         	ldr	r0, [sp, #0x14]
 8057a70: 2800         	cmp	r0, #0x0
 8057a72: f000 80f2    	beq.w	0x8057c5a <pvPortMalloc+0x278> @ imm = #0x1e4
 8057a76: e7ff         	b	0x8057a78 <pvPortMalloc+0x96> @ imm = #-0x2
 8057a78: 9805         	ldr	r0, [sp, #0x14]
 8057a7a: f240 3168    	movw	r1, #0x368
 8057a7e: f2c2 0100    	movt	r1, #0x2000
 8057a82: 6809         	ldr	r1, [r1]
 8057a84: 4288         	cmp	r0, r1
 8057a86: f200 80e8    	bhi.w	0x8057c5a <pvPortMalloc+0x278> @ imm = #0x1d0
 8057a8a: e7ff         	b	0x8057a8c <pvPortMalloc+0xaa> @ imm = #-0x2
;                 pxPreviousBlock = &xStart;
 8057a8c: f240 306c    	movw	r0, #0x36c
 8057a90: f2c2 0000    	movt	r0, #0x2000
 8057a94: 9003         	str	r0, [sp, #0xc]
;                 pxBlock = heapPROTECT_BLOCK_POINTER( xStart.pxNextFreeBlock );
 8057a96: 6800         	ldr	r0, [r0]
 8057a98: 9004         	str	r0, [sp, #0x10]
;                 heapVALIDATE_BLOCK_POINTER( pxBlock );
 8057a9a: 9904         	ldr	r1, [sp, #0x10]
 8057a9c: 2000         	movs	r0, #0x0
 8057a9e: f240 3274    	movw	r2, #0x374
 8057aa2: f2c2 0200    	movt	r2, #0x2000
 8057aa6: 4291         	cmp	r1, r2
 8057aa8: d30d         	blo	0x8057ac6 <pvPortMalloc+0xe4> @ imm = #0x1a
 8057aaa: e7ff         	b	0x8057aac <pvPortMalloc+0xca> @ imm = #-0x2
 8057aac: 9904         	ldr	r1, [sp, #0x10]
 8057aae: f240 3074    	movw	r0, #0x374
 8057ab2: f2c2 0000    	movt	r0, #0x2000
 8057ab6: f641 72ff    	movw	r2, #0x1fff
 8057aba: 4402         	add	r2, r0
 8057abc: 2000         	movs	r0, #0x0
 8057abe: 4291         	cmp	r1, r2
 8057ac0: bf98         	it	ls
 8057ac2: 2001         	movls	r0, #0x1
 8057ac4: e7ff         	b	0x8057ac6 <pvPortMalloc+0xe4> @ imm = #-0x2
 8057ac6: 07c0         	lsls	r0, r0, #0x1f
 8057ac8: b920         	cbnz	r0, 0x8057ad4 <pvPortMalloc+0xf2> @ imm = #0x8
 8057aca: e7ff         	b	0x8057acc <pvPortMalloc+0xea> @ imm = #-0x2
 8057acc: f000 fd50    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0xaa0
 8057ad0: e7ff         	b	0x8057ad2 <pvPortMalloc+0xf0> @ imm = #-0x2
 8057ad2: e7fe         	b	0x8057ad2 <pvPortMalloc+0xf0> @ imm = #-0x4
;                 while( ( pxBlock->xBlockSize < xWantedSize ) && ( pxBlock->pxNextFreeBlock != heapPROTECT_BLOCK_POINTER( NULL ) ) )
 8057ad4: e7ff         	b	0x8057ad6 <pvPortMalloc+0xf4> @ imm = #-0x2
 8057ad6: 9804         	ldr	r0, [sp, #0x10]
 8057ad8: 6841         	ldr	r1, [r0, #0x4]
 8057ada: 9a05         	ldr	r2, [sp, #0x14]
 8057adc: 2000         	movs	r0, #0x0
 8057ade: 4291         	cmp	r1, r2
 8057ae0: d206         	bhs	0x8057af0 <pvPortMalloc+0x10e> @ imm = #0xc
 8057ae2: e7ff         	b	0x8057ae4 <pvPortMalloc+0x102> @ imm = #-0x2
 8057ae4: 9804         	ldr	r0, [sp, #0x10]
 8057ae6: 6800         	ldr	r0, [r0]
 8057ae8: 2800         	cmp	r0, #0x0
 8057aea: bf18         	it	ne
 8057aec: 2001         	movne	r0, #0x1
 8057aee: e7ff         	b	0x8057af0 <pvPortMalloc+0x10e> @ imm = #-0x2
 8057af0: 07c0         	lsls	r0, r0, #0x1f
 8057af2: b318         	cbz	r0, 0x8057b3c <pvPortMalloc+0x15a> @ imm = #0x46
 8057af4: e7ff         	b	0x8057af6 <pvPortMalloc+0x114> @ imm = #-0x2
;                     pxPreviousBlock = pxBlock;
 8057af6: 9804         	ldr	r0, [sp, #0x10]
 8057af8: 9003         	str	r0, [sp, #0xc]
;                     pxBlock = heapPROTECT_BLOCK_POINTER( pxBlock->pxNextFreeBlock );
 8057afa: 9804         	ldr	r0, [sp, #0x10]
 8057afc: 6800         	ldr	r0, [r0]
 8057afe: 9004         	str	r0, [sp, #0x10]
;                     heapVALIDATE_BLOCK_POINTER( pxBlock );
 8057b00: 9904         	ldr	r1, [sp, #0x10]
 8057b02: 2000         	movs	r0, #0x0
 8057b04: f240 3274    	movw	r2, #0x374
 8057b08: f2c2 0200    	movt	r2, #0x2000
 8057b0c: 4291         	cmp	r1, r2
 8057b0e: d30d         	blo	0x8057b2c <pvPortMalloc+0x14a> @ imm = #0x1a
 8057b10: e7ff         	b	0x8057b12 <pvPortMalloc+0x130> @ imm = #-0x2
 8057b12: 9904         	ldr	r1, [sp, #0x10]
 8057b14: f240 3074    	movw	r0, #0x374
 8057b18: f2c2 0000    	movt	r0, #0x2000
 8057b1c: f641 72ff    	movw	r2, #0x1fff
 8057b20: 4402         	add	r2, r0
 8057b22: 2000         	movs	r0, #0x0
 8057b24: 4291         	cmp	r1, r2
 8057b26: bf98         	it	ls
 8057b28: 2001         	movls	r0, #0x1
 8057b2a: e7ff         	b	0x8057b2c <pvPortMalloc+0x14a> @ imm = #-0x2
 8057b2c: 07c0         	lsls	r0, r0, #0x1f
 8057b2e: b920         	cbnz	r0, 0x8057b3a <pvPortMalloc+0x158> @ imm = #0x8
 8057b30: e7ff         	b	0x8057b32 <pvPortMalloc+0x150> @ imm = #-0x2
 8057b32: f000 fd1d    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0xa3a
 8057b36: e7ff         	b	0x8057b38 <pvPortMalloc+0x156> @ imm = #-0x2
 8057b38: e7fe         	b	0x8057b38 <pvPortMalloc+0x156> @ imm = #-0x4
;                 while( ( pxBlock->xBlockSize < xWantedSize ) && ( pxBlock->pxNextFreeBlock != heapPROTECT_BLOCK_POINTER( NULL ) ) )
 8057b3a: e7cc         	b	0x8057ad6 <pvPortMalloc+0xf4> @ imm = #-0x68
;                 if( pxBlock != pxEnd )
 8057b3c: 9804         	ldr	r0, [sp, #0x10]
 8057b3e: f240 3164    	movw	r1, #0x364
 8057b42: f2c2 0100    	movt	r1, #0x2000
 8057b46: 6809         	ldr	r1, [r1]
 8057b48: 4288         	cmp	r0, r1
 8057b4a: f000 8084    	beq.w	0x8057c56 <pvPortMalloc+0x274> @ imm = #0x108
 8057b4e: e7ff         	b	0x8057b50 <pvPortMalloc+0x16e> @ imm = #-0x2
;                     pvReturn = ( void * ) ( ( ( uint8_t * ) heapPROTECT_BLOCK_POINTER( pxPreviousBlock->pxNextFreeBlock ) ) + xHeapStructSize );
 8057b50: 9803         	ldr	r0, [sp, #0xc]
 8057b52: 6800         	ldr	r0, [r0]
 8057b54: 3008         	adds	r0, #0x8
 8057b56: 9001         	str	r0, [sp, #0x4]
;                     heapVALIDATE_BLOCK_POINTER( pvReturn );
 8057b58: 9901         	ldr	r1, [sp, #0x4]
 8057b5a: 2000         	movs	r0, #0x0
 8057b5c: f240 3274    	movw	r2, #0x374
 8057b60: f2c2 0200    	movt	r2, #0x2000
 8057b64: 4291         	cmp	r1, r2
 8057b66: d30d         	blo	0x8057b84 <pvPortMalloc+0x1a2> @ imm = #0x1a
 8057b68: e7ff         	b	0x8057b6a <pvPortMalloc+0x188> @ imm = #-0x2
 8057b6a: 9901         	ldr	r1, [sp, #0x4]
 8057b6c: f240 3074    	movw	r0, #0x374
 8057b70: f2c2 0000    	movt	r0, #0x2000
 8057b74: f641 72ff    	movw	r2, #0x1fff
 8057b78: 4402         	add	r2, r0
 8057b7a: 2000         	movs	r0, #0x0
 8057b7c: 4291         	cmp	r1, r2
 8057b7e: bf98         	it	ls
 8057b80: 2001         	movls	r0, #0x1
 8057b82: e7ff         	b	0x8057b84 <pvPortMalloc+0x1a2> @ imm = #-0x2
 8057b84: 07c0         	lsls	r0, r0, #0x1f
 8057b86: b920         	cbnz	r0, 0x8057b92 <pvPortMalloc+0x1b0> @ imm = #0x8
 8057b88: e7ff         	b	0x8057b8a <pvPortMalloc+0x1a8> @ imm = #-0x2
 8057b8a: f000 fcf1    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0x9e2
 8057b8e: e7ff         	b	0x8057b90 <pvPortMalloc+0x1ae> @ imm = #-0x2
 8057b90: e7fe         	b	0x8057b90 <pvPortMalloc+0x1ae> @ imm = #-0x4
;                     pxPreviousBlock->pxNextFreeBlock = pxBlock->pxNextFreeBlock;
 8057b92: 9804         	ldr	r0, [sp, #0x10]
 8057b94: 6800         	ldr	r0, [r0]
 8057b96: 9903         	ldr	r1, [sp, #0xc]
 8057b98: 6008         	str	r0, [r1]
;                     configASSERT( heapSUBTRACT_WILL_UNDERFLOW( pxBlock->xBlockSize, xWantedSize ) == 0 );
 8057b9a: 9804         	ldr	r0, [sp, #0x10]
 8057b9c: 6840         	ldr	r0, [r0, #0x4]
 8057b9e: 9905         	ldr	r1, [sp, #0x14]
 8057ba0: 4288         	cmp	r0, r1
 8057ba2: d204         	bhs	0x8057bae <pvPortMalloc+0x1cc> @ imm = #0x8
 8057ba4: e7ff         	b	0x8057ba6 <pvPortMalloc+0x1c4> @ imm = #-0x2
 8057ba6: f000 fce3    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0x9c6
 8057baa: e7ff         	b	0x8057bac <pvPortMalloc+0x1ca> @ imm = #-0x2
 8057bac: e7fe         	b	0x8057bac <pvPortMalloc+0x1ca> @ imm = #-0x4
;                     if( ( pxBlock->xBlockSize - xWantedSize ) > heapMINIMUM_BLOCK_SIZE )
 8057bae: 9804         	ldr	r0, [sp, #0x10]
 8057bb0: 6840         	ldr	r0, [r0, #0x4]
 8057bb2: 9905         	ldr	r1, [sp, #0x14]
 8057bb4: 1a40         	subs	r0, r0, r1
 8057bb6: 2811         	cmp	r0, #0x11
 8057bb8: d31e         	blo	0x8057bf8 <pvPortMalloc+0x216> @ imm = #0x3c
 8057bba: e7ff         	b	0x8057bbc <pvPortMalloc+0x1da> @ imm = #-0x2
;                         pxNewBlockLink = ( void * ) ( ( ( uint8_t * ) pxBlock ) + xWantedSize );
 8057bbc: 9804         	ldr	r0, [sp, #0x10]
 8057bbe: 9905         	ldr	r1, [sp, #0x14]
 8057bc0: 4408         	add	r0, r1
 8057bc2: 9002         	str	r0, [sp, #0x8]
;                         configASSERT( ( ( ( size_t ) pxNewBlockLink ) & portBYTE_ALIGNMENT_MASK ) == 0 );
 8057bc4: f89d 0008    	ldrb.w	r0, [sp, #0x8]
 8057bc8: 0740         	lsls	r0, r0, #0x1d
 8057bca: b120         	cbz	r0, 0x8057bd6 <pvPortMalloc+0x1f4> @ imm = #0x8
 8057bcc: e7ff         	b	0x8057bce <pvPortMalloc+0x1ec> @ imm = #-0x2
 8057bce: f000 fccf    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0x99e
 8057bd2: e7ff         	b	0x8057bd4 <pvPortMalloc+0x1f2> @ imm = #-0x2
 8057bd4: e7fe         	b	0x8057bd4 <pvPortMalloc+0x1f2> @ imm = #-0x4
;                         pxNewBlockLink->xBlockSize = pxBlock->xBlockSize - xWantedSize;
 8057bd6: 9804         	ldr	r0, [sp, #0x10]
 8057bd8: 6840         	ldr	r0, [r0, #0x4]
 8057bda: 9905         	ldr	r1, [sp, #0x14]
 8057bdc: 1a40         	subs	r0, r0, r1
 8057bde: 9902         	ldr	r1, [sp, #0x8]
 8057be0: 6048         	str	r0, [r1, #0x4]
;                         pxBlock->xBlockSize = xWantedSize;
 8057be2: 9805         	ldr	r0, [sp, #0x14]
 8057be4: 9904         	ldr	r1, [sp, #0x10]
 8057be6: 6048         	str	r0, [r1, #0x4]
;                         pxNewBlockLink->pxNextFreeBlock = pxPreviousBlock->pxNextFreeBlock;
 8057be8: 9803         	ldr	r0, [sp, #0xc]
 8057bea: 6800         	ldr	r0, [r0]
 8057bec: 9902         	ldr	r1, [sp, #0x8]
 8057bee: 6008         	str	r0, [r1]
;                         pxPreviousBlock->pxNextFreeBlock = heapPROTECT_BLOCK_POINTER( pxNewBlockLink );
 8057bf0: 9802         	ldr	r0, [sp, #0x8]
 8057bf2: 9903         	ldr	r1, [sp, #0xc]
 8057bf4: 6008         	str	r0, [r1]
;                     }
 8057bf6: e000         	b	0x8057bfa <pvPortMalloc+0x218> @ imm = #0x0
 8057bf8: e7ff         	b	0x8057bfa <pvPortMalloc+0x218> @ imm = #-0x2
;                     xFreeBytesRemaining -= pxBlock->xBlockSize;
 8057bfa: 9804         	ldr	r0, [sp, #0x10]
 8057bfc: 6840         	ldr	r0, [r0, #0x4]
 8057bfe: f240 3168    	movw	r1, #0x368
 8057c02: f2c2 0100    	movt	r1, #0x2000
 8057c06: 680a         	ldr	r2, [r1]
 8057c08: 1a10         	subs	r0, r2, r0
 8057c0a: 6008         	str	r0, [r1]
;                     if( xFreeBytesRemaining < xMinimumEverFreeBytesRemaining )
 8057c0c: 6808         	ldr	r0, [r1]
 8057c0e: f242 3174    	movw	r1, #0x2374
 8057c12: f2c2 0100    	movt	r1, #0x2000
 8057c16: 6809         	ldr	r1, [r1]
 8057c18: 4288         	cmp	r0, r1
 8057c1a: d20b         	bhs	0x8057c34 <pvPortMalloc+0x252> @ imm = #0x16
 8057c1c: e7ff         	b	0x8057c1e <pvPortMalloc+0x23c> @ imm = #-0x2
;                         xMinimumEverFreeBytesRemaining = xFreeBytesRemaining;
 8057c1e: f240 3068    	movw	r0, #0x368
 8057c22: f2c2 0000    	movt	r0, #0x2000
 8057c26: 6800         	ldr	r0, [r0]
 8057c28: f242 3174    	movw	r1, #0x2374
 8057c2c: f2c2 0100    	movt	r1, #0x2000
 8057c30: 6008         	str	r0, [r1]
;                     }
 8057c32: e000         	b	0x8057c36 <pvPortMalloc+0x254> @ imm = #0x0
 8057c34: e7ff         	b	0x8057c36 <pvPortMalloc+0x254> @ imm = #-0x2
;                     heapALLOCATE_BLOCK( pxBlock );
 8057c36: 9804         	ldr	r0, [sp, #0x10]
 8057c38: 6841         	ldr	r1, [r0, #0x4]
 8057c3a: f041 4100    	orr	r1, r1, #0x80000000
 8057c3e: 6041         	str	r1, [r0, #0x4]
;                     pxBlock->pxNextFreeBlock = NULL;
 8057c40: 9804         	ldr	r0, [sp, #0x10]
 8057c42: 2100         	movs	r1, #0x0
 8057c44: 6001         	str	r1, [r0]
;                     xNumberOfSuccessfulAllocations++;
 8057c46: f242 3078    	movw	r0, #0x2378
 8057c4a: f2c2 0000    	movt	r0, #0x2000
 8057c4e: 6801         	ldr	r1, [r0]
 8057c50: 3101         	adds	r1, #0x1
 8057c52: 6001         	str	r1, [r0]
;                 }
 8057c54: e000         	b	0x8057c58 <pvPortMalloc+0x276> @ imm = #0x0
 8057c56: e7ff         	b	0x8057c58 <pvPortMalloc+0x276> @ imm = #-0x2
;             }
 8057c58: e000         	b	0x8057c5c <pvPortMalloc+0x27a> @ imm = #0x0
 8057c5a: e7ff         	b	0x8057c5c <pvPortMalloc+0x27a> @ imm = #-0x2
;         }
 8057c5c: e000         	b	0x8057c60 <pvPortMalloc+0x27e> @ imm = #0x0
 8057c5e: e7ff         	b	0x8057c60 <pvPortMalloc+0x27e> @ imm = #-0x2
;     ( void ) xTaskResumeAll();
 8057c60: f7fe fb41    	bl	0x80562e6 <xTaskResumeAll> @ imm = #-0x197e
;     configASSERT( ( ( ( size_t ) pvReturn ) & ( size_t ) portBYTE_ALIGNMENT_MASK ) == 0 );
 8057c64: f89d 0004    	ldrb.w	r0, [sp, #0x4]
 8057c68: 0740         	lsls	r0, r0, #0x1d
 8057c6a: b120         	cbz	r0, 0x8057c76 <pvPortMalloc+0x294> @ imm = #0x8
 8057c6c: e7ff         	b	0x8057c6e <pvPortMalloc+0x28c> @ imm = #-0x2
 8057c6e: f000 fc7f    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0x8fe
 8057c72: e7ff         	b	0x8057c74 <pvPortMalloc+0x292> @ imm = #-0x2
 8057c74: e7fe         	b	0x8057c74 <pvPortMalloc+0x292> @ imm = #-0x4
;     return pvReturn;
 8057c76: 9801         	ldr	r0, [sp, #0x4]
 8057c78: b006         	add	sp, #0x18
 8057c7a: bd80         	pop	{r7, pc}

08057c7c <prvHeapInit>:
; {
 8057c7c: b084         	sub	sp, #0x10
 8057c7e: f44f 5000    	mov.w	r0, #0x2000
;     size_t xTotalHeapSize = configTOTAL_HEAP_SIZE;
 8057c82: 9000         	str	r0, [sp]
;     uxStartAddress = ( portPOINTER_SIZE_TYPE ) ucHeap;
 8057c84: f240 3074    	movw	r0, #0x374
 8057c88: f2c2 0000    	movt	r0, #0x2000
 8057c8c: 9002         	str	r0, [sp, #0x8]
;     if( ( uxStartAddress & portBYTE_ALIGNMENT_MASK ) != 0 )
 8057c8e: f89d 0008    	ldrb.w	r0, [sp, #0x8]
 8057c92: 0740         	lsls	r0, r0, #0x1d
 8057c94: b188         	cbz	r0, 0x8057cba <prvHeapInit+0x3e> @ imm = #0x22
 8057c96: e7ff         	b	0x8057c98 <prvHeapInit+0x1c> @ imm = #-0x2
;         uxStartAddress += ( portBYTE_ALIGNMENT - 1 );
 8057c98: 9802         	ldr	r0, [sp, #0x8]
 8057c9a: 3007         	adds	r0, #0x7
 8057c9c: 9002         	str	r0, [sp, #0x8]
;         uxStartAddress &= ~( ( portPOINTER_SIZE_TYPE ) portBYTE_ALIGNMENT_MASK );
 8057c9e: 9802         	ldr	r0, [sp, #0x8]
 8057ca0: f020 0007    	bic	r0, r0, #0x7
 8057ca4: 9002         	str	r0, [sp, #0x8]
;         xTotalHeapSize -= ( size_t ) ( uxStartAddress - ( portPOINTER_SIZE_TYPE ) ucHeap );
 8057ca6: 9802         	ldr	r0, [sp, #0x8]
 8057ca8: f240 3174    	movw	r1, #0x374
 8057cac: f2c2 0100    	movt	r1, #0x2000
 8057cb0: 9a00         	ldr	r2, [sp]
 8057cb2: 1a08         	subs	r0, r1, r0
 8057cb4: 4410         	add	r0, r2
 8057cb6: 9000         	str	r0, [sp]
;     }
 8057cb8: e7ff         	b	0x8057cba <prvHeapInit+0x3e> @ imm = #-0x2
;     xStart.pxNextFreeBlock = ( void * ) heapPROTECT_BLOCK_POINTER( uxStartAddress );
 8057cba: 9802         	ldr	r0, [sp, #0x8]
 8057cbc: f240 316c    	movw	r1, #0x36c
 8057cc0: f2c2 0100    	movt	r1, #0x2000
 8057cc4: 6008         	str	r0, [r1]
 8057cc6: 2000         	movs	r0, #0x0
;     xStart.xBlockSize = ( size_t ) 0;
 8057cc8: 6048         	str	r0, [r1, #0x4]
;     uxEndAddress = uxStartAddress + ( portPOINTER_SIZE_TYPE ) xTotalHeapSize;
 8057cca: 9902         	ldr	r1, [sp, #0x8]
 8057ccc: 9a00         	ldr	r2, [sp]
 8057cce: 4411         	add	r1, r2
 8057cd0: 9101         	str	r1, [sp, #0x4]
;     uxEndAddress -= ( portPOINTER_SIZE_TYPE ) xHeapStructSize;
 8057cd2: 9901         	ldr	r1, [sp, #0x4]
 8057cd4: 3908         	subs	r1, #0x8
 8057cd6: 9101         	str	r1, [sp, #0x4]
;     uxEndAddress &= ~( ( portPOINTER_SIZE_TYPE ) portBYTE_ALIGNMENT_MASK );
 8057cd8: 9901         	ldr	r1, [sp, #0x4]
 8057cda: f021 0107    	bic	r1, r1, #0x7
 8057cde: 9101         	str	r1, [sp, #0x4]
;     pxEnd = ( BlockLink_t * ) uxEndAddress;
 8057ce0: 9901         	ldr	r1, [sp, #0x4]
 8057ce2: f240 3264    	movw	r2, #0x364
 8057ce6: f2c2 0200    	movt	r2, #0x2000
 8057cea: 6011         	str	r1, [r2]
;     pxEnd->xBlockSize = 0;
 8057cec: 6811         	ldr	r1, [r2]
 8057cee: 6048         	str	r0, [r1, #0x4]
;     pxEnd->pxNextFreeBlock = heapPROTECT_BLOCK_POINTER( NULL );
 8057cf0: 6811         	ldr	r1, [r2]
 8057cf2: 6008         	str	r0, [r1]
;     pxFirstFreeBlock = ( BlockLink_t * ) uxStartAddress;
 8057cf4: 9802         	ldr	r0, [sp, #0x8]
 8057cf6: 9003         	str	r0, [sp, #0xc]
;     pxFirstFreeBlock->xBlockSize = ( size_t ) ( uxEndAddress - ( portPOINTER_SIZE_TYPE ) pxFirstFreeBlock );
 8057cf8: 9801         	ldr	r0, [sp, #0x4]
 8057cfa: 9903         	ldr	r1, [sp, #0xc]
 8057cfc: 1a40         	subs	r0, r0, r1
 8057cfe: 6048         	str	r0, [r1, #0x4]
;     pxFirstFreeBlock->pxNextFreeBlock = heapPROTECT_BLOCK_POINTER( pxEnd );
 8057d00: 6810         	ldr	r0, [r2]
 8057d02: 9903         	ldr	r1, [sp, #0xc]
 8057d04: 6008         	str	r0, [r1]
;     xMinimumEverFreeBytesRemaining = pxFirstFreeBlock->xBlockSize;
 8057d06: 9803         	ldr	r0, [sp, #0xc]
 8057d08: 6840         	ldr	r0, [r0, #0x4]
 8057d0a: f242 3174    	movw	r1, #0x2374
 8057d0e: f2c2 0100    	movt	r1, #0x2000
 8057d12: 6008         	str	r0, [r1]
;     xFreeBytesRemaining = pxFirstFreeBlock->xBlockSize;
 8057d14: 9803         	ldr	r0, [sp, #0xc]
 8057d16: 6840         	ldr	r0, [r0, #0x4]
 8057d18: f240 3168    	movw	r1, #0x368
 8057d1c: f2c2 0100    	movt	r1, #0x2000
 8057d20: 6008         	str	r0, [r1]
; }
 8057d22: b004         	add	sp, #0x10
 8057d24: 4770         	bx	lr

08057d26 <vPortFree>:
; {
 8057d26: b580         	push	{r7, lr}
 8057d28: 466f         	mov	r7, sp
 8057d2a: b084         	sub	sp, #0x10
 8057d2c: 9003         	str	r0, [sp, #0xc]
;     uint8_t * puc = ( uint8_t * ) pv;
 8057d2e: 9803         	ldr	r0, [sp, #0xc]
 8057d30: 9002         	str	r0, [sp, #0x8]
;     if( pv != NULL )
 8057d32: 9803         	ldr	r0, [sp, #0xc]
 8057d34: 2800         	cmp	r0, #0x0
 8057d36: d061         	beq	0x8057dfc <vPortFree+0xd6> @ imm = #0xc2
 8057d38: e7ff         	b	0x8057d3a <vPortFree+0x14> @ imm = #-0x2
;         puc -= xHeapStructSize;
 8057d3a: 9802         	ldr	r0, [sp, #0x8]
 8057d3c: 3808         	subs	r0, #0x8
 8057d3e: 9002         	str	r0, [sp, #0x8]
;         pxLink = ( void * ) puc;
 8057d40: 9802         	ldr	r0, [sp, #0x8]
 8057d42: 9001         	str	r0, [sp, #0x4]
;         heapVALIDATE_BLOCK_POINTER( pxLink );
 8057d44: 9901         	ldr	r1, [sp, #0x4]
 8057d46: 2000         	movs	r0, #0x0
 8057d48: f240 3274    	movw	r2, #0x374
 8057d4c: f2c2 0200    	movt	r2, #0x2000
 8057d50: 4291         	cmp	r1, r2
 8057d52: d30d         	blo	0x8057d70 <vPortFree+0x4a> @ imm = #0x1a
 8057d54: e7ff         	b	0x8057d56 <vPortFree+0x30> @ imm = #-0x2
 8057d56: 9901         	ldr	r1, [sp, #0x4]
 8057d58: f240 3074    	movw	r0, #0x374
 8057d5c: f2c2 0000    	movt	r0, #0x2000
 8057d60: f641 72ff    	movw	r2, #0x1fff
 8057d64: 4402         	add	r2, r0
 8057d66: 2000         	movs	r0, #0x0
 8057d68: 4291         	cmp	r1, r2
 8057d6a: bf98         	it	ls
 8057d6c: 2001         	movls	r0, #0x1
 8057d6e: e7ff         	b	0x8057d70 <vPortFree+0x4a> @ imm = #-0x2
 8057d70: 07c0         	lsls	r0, r0, #0x1f
 8057d72: b920         	cbnz	r0, 0x8057d7e <vPortFree+0x58> @ imm = #0x8
 8057d74: e7ff         	b	0x8057d76 <vPortFree+0x50> @ imm = #-0x2
 8057d76: f000 fbfb    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0x7f6
 8057d7a: e7ff         	b	0x8057d7c <vPortFree+0x56> @ imm = #-0x2
 8057d7c: e7fe         	b	0x8057d7c <vPortFree+0x56> @ imm = #-0x4
;         configASSERT( heapBLOCK_IS_ALLOCATED( pxLink ) != 0 );
 8057d7e: 9801         	ldr	r0, [sp, #0x4]
 8057d80: 79c0         	ldrb	r0, [r0, #0x7]
 8057d82: 2100         	movs	r1, #0x0
 8057d84: ebb1 1fd0    	cmp.w	r1, r0, lsr #7
 8057d88: d104         	bne	0x8057d94 <vPortFree+0x6e> @ imm = #0x8
 8057d8a: e7ff         	b	0x8057d8c <vPortFree+0x66> @ imm = #-0x2
 8057d8c: f000 fbf0    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0x7e0
 8057d90: e7ff         	b	0x8057d92 <vPortFree+0x6c> @ imm = #-0x2
 8057d92: e7fe         	b	0x8057d92 <vPortFree+0x6c> @ imm = #-0x4
;         configASSERT( pxLink->pxNextFreeBlock == NULL );
 8057d94: 9801         	ldr	r0, [sp, #0x4]
 8057d96: 6800         	ldr	r0, [r0]
 8057d98: b120         	cbz	r0, 0x8057da4 <vPortFree+0x7e> @ imm = #0x8
 8057d9a: e7ff         	b	0x8057d9c <vPortFree+0x76> @ imm = #-0x2
 8057d9c: f000 fbe8    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0x7d0
 8057da0: e7ff         	b	0x8057da2 <vPortFree+0x7c> @ imm = #-0x2
 8057da2: e7fe         	b	0x8057da2 <vPortFree+0x7c> @ imm = #-0x4
;         if( heapBLOCK_IS_ALLOCATED( pxLink ) != 0 )
 8057da4: 9801         	ldr	r0, [sp, #0x4]
 8057da6: 79c0         	ldrb	r0, [r0, #0x7]
 8057da8: 2100         	movs	r1, #0x0
 8057daa: ebb1 1fd0    	cmp.w	r1, r0, lsr #7
 8057dae: d023         	beq	0x8057df8 <vPortFree+0xd2> @ imm = #0x46
 8057db0: e7ff         	b	0x8057db2 <vPortFree+0x8c> @ imm = #-0x2
;             if( pxLink->pxNextFreeBlock == NULL )
 8057db2: 9801         	ldr	r0, [sp, #0x4]
 8057db4: 6800         	ldr	r0, [r0]
 8057db6: b9e8         	cbnz	r0, 0x8057df4 <vPortFree+0xce> @ imm = #0x3a
 8057db8: e7ff         	b	0x8057dba <vPortFree+0x94> @ imm = #-0x2
;                 heapFREE_BLOCK( pxLink );
 8057dba: 9801         	ldr	r0, [sp, #0x4]
 8057dbc: 6841         	ldr	r1, [r0, #0x4]
 8057dbe: f021 4100    	bic	r1, r1, #0x80000000
 8057dc2: 6041         	str	r1, [r0, #0x4]
;                 vTaskSuspendAll();
 8057dc4: f7fe fa87    	bl	0x80562d6 <vTaskSuspendAll> @ imm = #-0x1af2
;                     xFreeBytesRemaining += pxLink->xBlockSize;
 8057dc8: 9801         	ldr	r0, [sp, #0x4]
 8057dca: 6840         	ldr	r0, [r0, #0x4]
 8057dcc: f240 3168    	movw	r1, #0x368
 8057dd0: f2c2 0100    	movt	r1, #0x2000
 8057dd4: 680a         	ldr	r2, [r1]
 8057dd6: 4410         	add	r0, r2
 8057dd8: 6008         	str	r0, [r1]
;                     prvInsertBlockIntoFreeList( ( ( BlockLink_t * ) pxLink ) );
 8057dda: 9801         	ldr	r0, [sp, #0x4]
 8057ddc: f000 f810    	bl	0x8057e00 <prvInsertBlockIntoFreeList> @ imm = #0x20
;                     xNumberOfSuccessfulFrees++;
 8057de0: f242 307c    	movw	r0, #0x237c
 8057de4: f2c2 0000    	movt	r0, #0x2000
 8057de8: 6801         	ldr	r1, [r0]
 8057dea: 3101         	adds	r1, #0x1
 8057dec: 6001         	str	r1, [r0]
;                 ( void ) xTaskResumeAll();
 8057dee: f7fe fa7a    	bl	0x80562e6 <xTaskResumeAll> @ imm = #-0x1b0c
;             }
 8057df2: e000         	b	0x8057df6 <vPortFree+0xd0> @ imm = #0x0
 8057df4: e7ff         	b	0x8057df6 <vPortFree+0xd0> @ imm = #-0x2
;         }
 8057df6: e000         	b	0x8057dfa <vPortFree+0xd4> @ imm = #0x0
 8057df8: e7ff         	b	0x8057dfa <vPortFree+0xd4> @ imm = #-0x2
;     }
 8057dfa: e7ff         	b	0x8057dfc <vPortFree+0xd6> @ imm = #-0x2
; }
 8057dfc: b004         	add	sp, #0x10
 8057dfe: bd80         	pop	{r7, pc}

08057e00 <prvInsertBlockIntoFreeList>:
; {
 8057e00: b580         	push	{r7, lr}
 8057e02: 466f         	mov	r7, sp
 8057e04: b084         	sub	sp, #0x10
 8057e06: 9003         	str	r0, [sp, #0xc]
;     for( pxIterator = &xStart; heapPROTECT_BLOCK_POINTER( pxIterator->pxNextFreeBlock ) < pxBlockToInsert; pxIterator = heapPROTECT_BLOCK_POINTER( pxIterator->pxNextFreeBlock ) )
 8057e08: f240 306c    	movw	r0, #0x36c
 8057e0c: f2c2 0000    	movt	r0, #0x2000
 8057e10: 9002         	str	r0, [sp, #0x8]
 8057e12: e7ff         	b	0x8057e14 <prvInsertBlockIntoFreeList+0x14> @ imm = #-0x2
 8057e14: 9802         	ldr	r0, [sp, #0x8]
 8057e16: 6800         	ldr	r0, [r0]
 8057e18: 9903         	ldr	r1, [sp, #0xc]
 8057e1a: 4288         	cmp	r0, r1
 8057e1c: d205         	bhs	0x8057e2a <prvInsertBlockIntoFreeList+0x2a> @ imm = #0xa
 8057e1e: e7ff         	b	0x8057e20 <prvInsertBlockIntoFreeList+0x20> @ imm = #-0x2
;     }
 8057e20: e7ff         	b	0x8057e22 <prvInsertBlockIntoFreeList+0x22> @ imm = #-0x2
;     for( pxIterator = &xStart; heapPROTECT_BLOCK_POINTER( pxIterator->pxNextFreeBlock ) < pxBlockToInsert; pxIterator = heapPROTECT_BLOCK_POINTER( pxIterator->pxNextFreeBlock ) )
 8057e22: 9802         	ldr	r0, [sp, #0x8]
 8057e24: 6800         	ldr	r0, [r0]
 8057e26: 9002         	str	r0, [sp, #0x8]
 8057e28: e7f4         	b	0x8057e14 <prvInsertBlockIntoFreeList+0x14> @ imm = #-0x18
;     if( pxIterator != &xStart )
 8057e2a: 9802         	ldr	r0, [sp, #0x8]
 8057e2c: f240 316c    	movw	r1, #0x36c
 8057e30: f2c2 0100    	movt	r1, #0x2000
 8057e34: 4288         	cmp	r0, r1
 8057e36: d01e         	beq	0x8057e76 <prvInsertBlockIntoFreeList+0x76> @ imm = #0x3c
 8057e38: e7ff         	b	0x8057e3a <prvInsertBlockIntoFreeList+0x3a> @ imm = #-0x2
;         heapVALIDATE_BLOCK_POINTER( pxIterator );
 8057e3a: 9902         	ldr	r1, [sp, #0x8]
 8057e3c: 2000         	movs	r0, #0x0
 8057e3e: f240 3274    	movw	r2, #0x374
 8057e42: f2c2 0200    	movt	r2, #0x2000
 8057e46: 4291         	cmp	r1, r2
 8057e48: d30d         	blo	0x8057e66 <prvInsertBlockIntoFreeList+0x66> @ imm = #0x1a
 8057e4a: e7ff         	b	0x8057e4c <prvInsertBlockIntoFreeList+0x4c> @ imm = #-0x2
 8057e4c: 9902         	ldr	r1, [sp, #0x8]
 8057e4e: f240 3074    	movw	r0, #0x374
 8057e52: f2c2 0000    	movt	r0, #0x2000
 8057e56: f641 72ff    	movw	r2, #0x1fff
 8057e5a: 4402         	add	r2, r0
 8057e5c: 2000         	movs	r0, #0x0
 8057e5e: 4291         	cmp	r1, r2
 8057e60: bf98         	it	ls
 8057e62: 2001         	movls	r0, #0x1
 8057e64: e7ff         	b	0x8057e66 <prvInsertBlockIntoFreeList+0x66> @ imm = #-0x2
 8057e66: 07c0         	lsls	r0, r0, #0x1f
 8057e68: b920         	cbnz	r0, 0x8057e74 <prvInsertBlockIntoFreeList+0x74> @ imm = #0x8
 8057e6a: e7ff         	b	0x8057e6c <prvInsertBlockIntoFreeList+0x6c> @ imm = #-0x2
 8057e6c: f000 fb80    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0x700
 8057e70: e7ff         	b	0x8057e72 <prvInsertBlockIntoFreeList+0x72> @ imm = #-0x2
 8057e72: e7fe         	b	0x8057e72 <prvInsertBlockIntoFreeList+0x72> @ imm = #-0x4
;     }
 8057e74: e7ff         	b	0x8057e76 <prvInsertBlockIntoFreeList+0x76> @ imm = #-0x2
;     puc = ( uint8_t * ) pxIterator;
 8057e76: 9802         	ldr	r0, [sp, #0x8]
 8057e78: 9001         	str	r0, [sp, #0x4]
;     if( ( puc + pxIterator->xBlockSize ) == ( uint8_t * ) pxBlockToInsert )
 8057e7a: 9801         	ldr	r0, [sp, #0x4]
 8057e7c: 9902         	ldr	r1, [sp, #0x8]
 8057e7e: 6849         	ldr	r1, [r1, #0x4]
 8057e80: 4408         	add	r0, r1
 8057e82: 9903         	ldr	r1, [sp, #0xc]
 8057e84: 4288         	cmp	r0, r1
 8057e86: d109         	bne	0x8057e9c <prvInsertBlockIntoFreeList+0x9c> @ imm = #0x12
 8057e88: e7ff         	b	0x8057e8a <prvInsertBlockIntoFreeList+0x8a> @ imm = #-0x2
;         pxIterator->xBlockSize += pxBlockToInsert->xBlockSize;
 8057e8a: 9803         	ldr	r0, [sp, #0xc]
 8057e8c: 6840         	ldr	r0, [r0, #0x4]
 8057e8e: 9902         	ldr	r1, [sp, #0x8]
 8057e90: 684a         	ldr	r2, [r1, #0x4]
 8057e92: 4410         	add	r0, r2
 8057e94: 6048         	str	r0, [r1, #0x4]
;         pxBlockToInsert = pxIterator;
 8057e96: 9802         	ldr	r0, [sp, #0x8]
 8057e98: 9003         	str	r0, [sp, #0xc]
;     }
 8057e9a: e000         	b	0x8057e9e <prvInsertBlockIntoFreeList+0x9e> @ imm = #0x0
 8057e9c: e7ff         	b	0x8057e9e <prvInsertBlockIntoFreeList+0x9e> @ imm = #-0x2
;     puc = ( uint8_t * ) pxBlockToInsert;
 8057e9e: 9803         	ldr	r0, [sp, #0xc]
 8057ea0: 9001         	str	r0, [sp, #0x4]
;     if( ( puc + pxBlockToInsert->xBlockSize ) == ( uint8_t * ) heapPROTECT_BLOCK_POINTER( pxIterator->pxNextFreeBlock ) )
 8057ea2: 9801         	ldr	r0, [sp, #0x4]
 8057ea4: 9903         	ldr	r1, [sp, #0xc]
 8057ea6: 6849         	ldr	r1, [r1, #0x4]
 8057ea8: 4408         	add	r0, r1
 8057eaa: 9902         	ldr	r1, [sp, #0x8]
 8057eac: 6809         	ldr	r1, [r1]
 8057eae: 4288         	cmp	r0, r1
 8057eb0: d120         	bne	0x8057ef4 <prvInsertBlockIntoFreeList+0xf4> @ imm = #0x40
 8057eb2: e7ff         	b	0x8057eb4 <prvInsertBlockIntoFreeList+0xb4> @ imm = #-0x2
;         if( heapPROTECT_BLOCK_POINTER( pxIterator->pxNextFreeBlock ) != pxEnd )
 8057eb4: 9802         	ldr	r0, [sp, #0x8]
 8057eb6: 6800         	ldr	r0, [r0]
 8057eb8: f240 3164    	movw	r1, #0x364
 8057ebc: f2c2 0100    	movt	r1, #0x2000
 8057ec0: 6809         	ldr	r1, [r1]
 8057ec2: 4288         	cmp	r0, r1
 8057ec4: d00d         	beq	0x8057ee2 <prvInsertBlockIntoFreeList+0xe2> @ imm = #0x1a
 8057ec6: e7ff         	b	0x8057ec8 <prvInsertBlockIntoFreeList+0xc8> @ imm = #-0x2
;             pxBlockToInsert->xBlockSize += heapPROTECT_BLOCK_POINTER( pxIterator->pxNextFreeBlock )->xBlockSize;
 8057ec8: 9802         	ldr	r0, [sp, #0x8]
 8057eca: 6800         	ldr	r0, [r0]
 8057ecc: 6840         	ldr	r0, [r0, #0x4]
 8057ece: 9903         	ldr	r1, [sp, #0xc]
 8057ed0: 684a         	ldr	r2, [r1, #0x4]
 8057ed2: 4410         	add	r0, r2
 8057ed4: 6048         	str	r0, [r1, #0x4]
;             pxBlockToInsert->pxNextFreeBlock = heapPROTECT_BLOCK_POINTER( pxIterator->pxNextFreeBlock )->pxNextFreeBlock;
 8057ed6: 9802         	ldr	r0, [sp, #0x8]
 8057ed8: 6800         	ldr	r0, [r0]
 8057eda: 6800         	ldr	r0, [r0]
 8057edc: 9903         	ldr	r1, [sp, #0xc]
 8057ede: 6008         	str	r0, [r1]
;         }
 8057ee0: e007         	b	0x8057ef2 <prvInsertBlockIntoFreeList+0xf2> @ imm = #0xe
;             pxBlockToInsert->pxNextFreeBlock = heapPROTECT_BLOCK_POINTER( pxEnd );
 8057ee2: f240 3064    	movw	r0, #0x364
 8057ee6: f2c2 0000    	movt	r0, #0x2000
 8057eea: 6800         	ldr	r0, [r0]
 8057eec: 9903         	ldr	r1, [sp, #0xc]
 8057eee: 6008         	str	r0, [r1]
 8057ef0: e7ff         	b	0x8057ef2 <prvInsertBlockIntoFreeList+0xf2> @ imm = #-0x2
;     }
 8057ef2: e004         	b	0x8057efe <prvInsertBlockIntoFreeList+0xfe> @ imm = #0x8
;         pxBlockToInsert->pxNextFreeBlock = pxIterator->pxNextFreeBlock;
 8057ef4: 9802         	ldr	r0, [sp, #0x8]
 8057ef6: 6800         	ldr	r0, [r0]
 8057ef8: 9903         	ldr	r1, [sp, #0xc]
 8057efa: 6008         	str	r0, [r1]
 8057efc: e7ff         	b	0x8057efe <prvInsertBlockIntoFreeList+0xfe> @ imm = #-0x2
;     if( pxIterator != pxBlockToInsert )
 8057efe: 9802         	ldr	r0, [sp, #0x8]
 8057f00: 9903         	ldr	r1, [sp, #0xc]
 8057f02: 4288         	cmp	r0, r1
 8057f04: d004         	beq	0x8057f10 <prvInsertBlockIntoFreeList+0x110> @ imm = #0x8
 8057f06: e7ff         	b	0x8057f08 <prvInsertBlockIntoFreeList+0x108> @ imm = #-0x2
;         pxIterator->pxNextFreeBlock = heapPROTECT_BLOCK_POINTER( pxBlockToInsert );
 8057f08: 9803         	ldr	r0, [sp, #0xc]
 8057f0a: 9902         	ldr	r1, [sp, #0x8]
 8057f0c: 6008         	str	r0, [r1]
;     }
 8057f0e: e000         	b	0x8057f12 <prvInsertBlockIntoFreeList+0x112> @ imm = #0x0
 8057f10: e7ff         	b	0x8057f12 <prvInsertBlockIntoFreeList+0x112> @ imm = #-0x2
; }
 8057f12: b004         	add	sp, #0x10
 8057f14: bd80         	pop	{r7, pc}

08057f16 <vPortSVCHandler_C>:
; {
 8057f16: b580         	push	{r7, lr}
 8057f18: 466f         	mov	r7, sp
 8057f1a: b084         	sub	sp, #0x10
 8057f1c: 9003         	str	r0, [sp, #0xc]
;     ulPC = pulCallerStackAddress[ portOFFSET_TO_PC ];
 8057f1e: 9803         	ldr	r0, [sp, #0xc]
 8057f20: 6980         	ldr	r0, [r0, #0x18]
 8057f22: 9002         	str	r0, [sp, #0x8]
;     ucSVCNumber = ( ( uint8_t * ) ulPC )[ -2 ];
 8057f24: 9802         	ldr	r0, [sp, #0x8]
 8057f26: f810 0c02    	ldrb	r0, [r0, #-2]
 8057f2a: f807 0c09    	strb	r0, [r7, #-9]
;     switch( ucSVCNumber )
 8057f2e: f817 0c09    	ldrb	r0, [r7, #-9]
 8057f32: 2802         	cmp	r0, #0x2
 8057f34: d103         	bne	0x8057f3e <vPortSVCHandler_C+0x28> @ imm = #0x6
 8057f36: e7ff         	b	0x8057f38 <vPortSVCHandler_C+0x22> @ imm = #-0x2
;             vRestoreContextOfFirstTask();
 8057f38: f000 faf4    	bl	0x8058524 <vRestoreContextOfFirstTask> @ imm = #0x5e8
;             break;
 8057f3c: e003         	b	0x8057f46 <vPortSVCHandler_C+0x30> @ imm = #0x6
;             configASSERT( pdFALSE );
 8057f3e: f000 fb17    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0x62e
 8057f42: e7ff         	b	0x8057f44 <vPortSVCHandler_C+0x2e> @ imm = #-0x2
 8057f44: e7fe         	b	0x8057f44 <vPortSVCHandler_C+0x2e> @ imm = #-0x4
; }
 8057f46: b004         	add	sp, #0x10
 8057f48: bd80         	pop	{r7, pc}

08057f4a <vPortSetupTimerInterrupt>:
; {
 8057f4a: f24e 0010    	movw	r0, #0xe010
 8057f4e: f2ce 0000    	movt	r0, #0xe000
 8057f52: 2104         	movs	r1, #0x4
;     portNVIC_SYSTICK_CTRL_REG = portNVIC_SYSTICK_CLK_BIT_CONFIG;
 8057f54: 6001         	str	r1, [r0]
 8057f56: f24e 0118    	movw	r1, #0xe018
 8057f5a: f2ce 0100    	movt	r1, #0xe000
 8057f5e: 2200         	movs	r2, #0x0
;     portNVIC_SYSTICK_CURRENT_VALUE_REG = 0UL;
 8057f60: 600a         	str	r2, [r1]
;     portNVIC_SYSTICK_LOAD_REG = ( configSYSTICK_CLOCK_HZ / configTICK_RATE_HZ ) - 1UL;
 8057f62: f240 1100    	movw	r1, #0x100
 8057f66: f2c2 0100    	movt	r1, #0x2000
 8057f6a: 6809         	ldr	r1, [r1]
 8057f6c: f644 52d3    	movw	r2, #0x4dd3
 8057f70: f2c1 0262    	movt	r2, #0x1062
 8057f74: fba1 1202    	umull	r1, r2, r1, r2
 8057f78: f04f 31ff    	mov.w	r1, #0xffffffff
 8057f7c: eb01 1192    	add.w	r1, r1, r2, lsr #6
 8057f80: f24e 0214    	movw	r2, #0xe014
 8057f84: f2ce 0200    	movt	r2, #0xe000
 8057f88: 6011         	str	r1, [r2]
 8057f8a: 2107         	movs	r1, #0x7
;     portNVIC_SYSTICK_CTRL_REG = portNVIC_SYSTICK_CLK_BIT_CONFIG | portNVIC_SYSTICK_INT_BIT | portNVIC_SYSTICK_ENABLE_BIT;
 8057f8c: 6001         	str	r1, [r0]
; }
 8057f8e: 4770         	bx	lr

08057f90 <vPortYield>:
; {
 8057f90: f64e 5004    	movw	r0, #0xed04
 8057f94: f2ce 0000    	movt	r0, #0xe000
 8057f98: f04f 5180    	mov.w	r1, #0x10000000
;     portNVIC_INT_CTRL_REG = portNVIC_PENDSVSET_BIT;
 8057f9c: 6001         	str	r1, [r0]
;     __asm volatile ( "dsb" ::: "memory" );
 8057f9e: f3bf 8f4f    	dsb	sy
;     __asm volatile ( "isb" );
 8057fa2: f3bf 8f6f    	isb	sy
; }
 8057fa6: 4770         	bx	lr

08057fa8 <vPortEnterCritical>:
; {
 8057fa8: b580         	push	{r7, lr}
 8057faa: 466f         	mov	r7, sp
;     portDISABLE_INTERRUPTS();
 8057fac: f000 fae0    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0x5c0
;     ulCriticalNesting++;
 8057fb0: f240 1004    	movw	r0, #0x104
 8057fb4: f2c2 0000    	movt	r0, #0x2000
 8057fb8: 6801         	ldr	r1, [r0]
 8057fba: 3101         	adds	r1, #0x1
 8057fbc: 6001         	str	r1, [r0]
;     __asm volatile ( "dsb" ::: "memory" );
 8057fbe: f3bf 8f4f    	dsb	sy
;     __asm volatile ( "isb" );
 8057fc2: f3bf 8f6f    	isb	sy
; }
 8057fc6: bd80         	pop	{r7, pc}

08057fc8 <vPortExitCritical>:
; {
 8057fc8: b580         	push	{r7, lr}
 8057fca: 466f         	mov	r7, sp
;     configASSERT( ulCriticalNesting );
 8057fcc: f240 1004    	movw	r0, #0x104
 8057fd0: f2c2 0000    	movt	r0, #0x2000
 8057fd4: 6800         	ldr	r0, [r0]
 8057fd6: b920         	cbnz	r0, 0x8057fe2 <vPortExitCritical+0x1a> @ imm = #0x8
 8057fd8: e7ff         	b	0x8057fda <vPortExitCritical+0x12> @ imm = #-0x2
 8057fda: f000 fac9    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0x592
 8057fde: e7ff         	b	0x8057fe0 <vPortExitCritical+0x18> @ imm = #-0x2
 8057fe0: e7fe         	b	0x8057fe0 <vPortExitCritical+0x18> @ imm = #-0x4
;     ulCriticalNesting--;
 8057fe2: f240 1004    	movw	r0, #0x104
 8057fe6: f2c2 0000    	movt	r0, #0x2000
 8057fea: 6801         	ldr	r1, [r0]
 8057fec: 3901         	subs	r1, #0x1
 8057fee: 6001         	str	r1, [r0]
;     if( ulCriticalNesting == 0 )
 8057ff0: 6800         	ldr	r0, [r0]
 8057ff2: b918         	cbnz	r0, 0x8057ffc <vPortExitCritical+0x34> @ imm = #0x6
 8057ff4: e7ff         	b	0x8057ff6 <vPortExitCritical+0x2e> @ imm = #-0x2
;         portENABLE_INTERRUPTS();
 8057ff6: f000 facc    	bl	0x8058592 <vClearInterruptMask> @ imm = #0x598
;     }
 8057ffa: e7ff         	b	0x8057ffc <vPortExitCritical+0x34> @ imm = #-0x2
; }
 8057ffc: bd80         	pop	{r7, pc}

08057ffe <SysTick_Handler>:
; {
 8057ffe: b091         	sub	sp, #0x44
;   __asm volatile("mrs %0, basepri" : "=r"(value));
 8058000: f3ef 8011    	mrs	r0, basepri
 8058004: 9010         	str	r0, [sp, #0x40]
;   return value;
 8058006: 9810         	ldr	r0, [sp, #0x40]
;   uint32_t originalBasepri = readBasepri(); // 读取当前的 BASEPRI 值
 8058008: 900e         	str	r0, [sp, #0x38]
 805800a: 20a0         	movs	r0, #0xa0
 805800c: 900f         	str	r0, [sp, #0x3c]
;   __asm volatile("msr basepri, %0" ::"r"(value) : "memory");
 805800e: 980f         	ldr	r0, [sp, #0x3c]
 8058010: f380 8811    	msr	basepri, r0
;   __asm volatile("dsb");
 8058014: f3bf 8f4f    	dsb	sy
;   __asm volatile("isb");
 8058018: f3bf 8f6f    	isb	sy
;   return originalBasepri; // 返回旧的 BASEPRI 值
 805801c: 980e         	ldr	r0, [sp, #0x38]
;     ulPreviousMask = portSET_INTERRUPT_MASK_FROM_ISR();
 805801e: 9000         	str	r0, [sp]
 8058020: 2000         	movs	r0, #0x0
;     BaseType_t xSwitchRequired = pdFALSE;
 8058022: 9008         	str	r0, [sp, #0x20]
;     if( uxSchedulerSuspended == ( UBaseType_t ) 0U )
 8058024: f240 1030    	movw	r0, #0x130
 8058028: f2c2 0000    	movt	r0, #0x2000
 805802c: 6800         	ldr	r0, [r0]
 805802e: 2800         	cmp	r0, #0x0
 8058030: f040 813a    	bne.w	0x80582a8 <SysTick_Handler+0x2aa> @ imm = #0x274
 8058034: e7ff         	b	0x8058036 <SysTick_Handler+0x38> @ imm = #-0x2
;         const TickType_t xConstTickCount = xTickCount + ( TickType_t ) 1;
 8058036: f240 1034    	movw	r0, #0x134
 805803a: f2c2 0000    	movt	r0, #0x2000
 805803e: 6801         	ldr	r1, [r0]
 8058040: 3101         	adds	r1, #0x1
 8058042: 9107         	str	r1, [sp, #0x1c]
;         xTickCount = xConstTickCount;
 8058044: 9907         	ldr	r1, [sp, #0x1c]
 8058046: 6001         	str	r1, [r0]
;         if( xConstTickCount == ( TickType_t ) 0U ) /*lint !e774 'if' does not always evaluate to false as it is looking for an overflow. */
 8058048: 9807         	ldr	r0, [sp, #0x1c]
 805804a: 2800         	cmp	r0, #0x0
 805804c: d147         	bne	0x80580de <SysTick_Handler+0xe0> @ imm = #0x8e
 805804e: e7ff         	b	0x8058050 <SysTick_Handler+0x52> @ imm = #-0x2
;             taskSWITCH_DELAYED_LISTS();
 8058050: f240 1038    	movw	r0, #0x138
 8058054: f2c2 0000    	movt	r0, #0x2000
 8058058: 6800         	ldr	r0, [r0]
 805805a: 6800         	ldr	r0, [r0]
 805805c: b180         	cbz	r0, 0x8058080 <SysTick_Handler+0x82> @ imm = #0x20
 805805e: e7ff         	b	0x8058060 <SysTick_Handler+0x62> @ imm = #-0x2
;   __asm volatile("mrs %0, basepri" : "=r"(value));
 8058060: f3ef 8011    	mrs	r0, basepri
 8058064: 900d         	str	r0, [sp, #0x34]
;   return value;
 8058066: 980d         	ldr	r0, [sp, #0x34]
;   uint32_t originalBasepri = readBasepri(); // 读取当前的 BASEPRI 值
 8058068: 900b         	str	r0, [sp, #0x2c]
 805806a: 20a0         	movs	r0, #0xa0
 805806c: 900c         	str	r0, [sp, #0x30]
;   __asm volatile("msr basepri, %0" ::"r"(value) : "memory");
 805806e: 980c         	ldr	r0, [sp, #0x30]
 8058070: f380 8811    	msr	basepri, r0
;   __asm volatile("dsb");
 8058074: f3bf 8f4f    	dsb	sy
;   __asm volatile("isb");
 8058078: f3bf 8f6f    	isb	sy
;             taskSWITCH_DELAYED_LISTS();
 805807c: e7ff         	b	0x805807e <SysTick_Handler+0x80> @ imm = #-0x2
 805807e: e7fe         	b	0x805807e <SysTick_Handler+0x80> @ imm = #-0x4
 8058080: f240 1038    	movw	r0, #0x138
 8058084: f2c2 0000    	movt	r0, #0x2000
 8058088: 6801         	ldr	r1, [r0]
 805808a: 9106         	str	r1, [sp, #0x18]
 805808c: f240 113c    	movw	r1, #0x13c
 8058090: f2c2 0100    	movt	r1, #0x2000
 8058094: 680a         	ldr	r2, [r1]
 8058096: 6002         	str	r2, [r0]
 8058098: 9a06         	ldr	r2, [sp, #0x18]
 805809a: 600a         	str	r2, [r1]
 805809c: f240 21bc    	movw	r1, #0x2bc
 80580a0: f2c2 0100    	movt	r1, #0x2000
 80580a4: 680a         	ldr	r2, [r1]
 80580a6: 3201         	adds	r2, #0x1
 80580a8: 600a         	str	r2, [r1]
;     if( listLIST_IS_EMPTY( pxDelayedTaskList ) != pdFALSE )
 80580aa: 6800         	ldr	r0, [r0]
 80580ac: 6800         	ldr	r0, [r0]
 80580ae: b940         	cbnz	r0, 0x80580c2 <SysTick_Handler+0xc4> @ imm = #0x10
 80580b0: e7ff         	b	0x80580b2 <SysTick_Handler+0xb4> @ imm = #-0x2
;         xNextTaskUnblockTime = portMAX_DELAY;
 80580b2: f240 20b0    	movw	r0, #0x2b0
 80580b6: f2c2 0000    	movt	r0, #0x2000
 80580ba: f04f 31ff    	mov.w	r1, #0xffffffff
 80580be: 6001         	str	r1, [r0]
;     }
 80580c0: e00c         	b	0x80580dc <SysTick_Handler+0xde> @ imm = #0x18
;         xNextTaskUnblockTime = listGET_ITEM_VALUE_OF_HEAD_ENTRY( pxDelayedTaskList );
 80580c2: f240 1038    	movw	r0, #0x138
 80580c6: f2c2 0000    	movt	r0, #0x2000
 80580ca: 6800         	ldr	r0, [r0]
 80580cc: 68c0         	ldr	r0, [r0, #0xc]
 80580ce: 6800         	ldr	r0, [r0]
 80580d0: f240 21b0    	movw	r1, #0x2b0
 80580d4: f2c2 0100    	movt	r1, #0x2000
 80580d8: 6008         	str	r0, [r1]
 80580da: e7ff         	b	0x80580dc <SysTick_Handler+0xde> @ imm = #-0x2
;         }
 80580dc: e000         	b	0x80580e0 <SysTick_Handler+0xe2> @ imm = #0x0
 80580de: e7ff         	b	0x80580e0 <SysTick_Handler+0xe2> @ imm = #-0x2
;         if( xConstTickCount >= xNextTaskUnblockTime )
 80580e0: 9807         	ldr	r0, [sp, #0x1c]
 80580e2: f240 21b0    	movw	r1, #0x2b0
 80580e6: f2c2 0100    	movt	r1, #0x2000
 80580ea: 6809         	ldr	r1, [r1]
 80580ec: 4288         	cmp	r0, r1
 80580ee: f0c0 80ba    	blo.w	0x8058266 <SysTick_Handler+0x268> @ imm = #0x174
 80580f2: e7ff         	b	0x80580f4 <SysTick_Handler+0xf6> @ imm = #-0x2
;             for( ; ; )
 80580f4: e7ff         	b	0x80580f6 <SysTick_Handler+0xf8> @ imm = #-0x2
;                 if( listLIST_IS_EMPTY( pxDelayedTaskList ) != pdFALSE )
 80580f6: f240 1038    	movw	r0, #0x138
 80580fa: f2c2 0000    	movt	r0, #0x2000
 80580fe: 6800         	ldr	r0, [r0]
 8058100: 6800         	ldr	r0, [r0]
 8058102: b940         	cbnz	r0, 0x8058116 <SysTick_Handler+0x118> @ imm = #0x10
 8058104: e7ff         	b	0x8058106 <SysTick_Handler+0x108> @ imm = #-0x2
;                     xNextTaskUnblockTime = portMAX_DELAY; /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
 8058106: f240 20b0    	movw	r0, #0x2b0
 805810a: f2c2 0000    	movt	r0, #0x2000
 805810e: f04f 31ff    	mov.w	r1, #0xffffffff
 8058112: 6001         	str	r1, [r0]
;                     break;
 8058114: e0a6         	b	0x8058264 <SysTick_Handler+0x266> @ imm = #0x14c
;                     pxTCB = listGET_OWNER_OF_HEAD_ENTRY( pxDelayedTaskList ); /*lint !e9079 void * is used as this macro is used with timers and co-routines too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
 8058116: f240 1038    	movw	r0, #0x138
 805811a: f2c2 0000    	movt	r0, #0x2000
 805811e: 6800         	ldr	r0, [r0]
 8058120: 68c0         	ldr	r0, [r0, #0xc]
 8058122: 68c0         	ldr	r0, [r0, #0xc]
 8058124: 900a         	str	r0, [sp, #0x28]
;                     xItemValue = listGET_LIST_ITEM_VALUE( &( pxTCB->xStateListItem ) );
 8058126: 980a         	ldr	r0, [sp, #0x28]
 8058128: 6840         	ldr	r0, [r0, #0x4]
 805812a: 9009         	str	r0, [sp, #0x24]
;                     if( xConstTickCount < xItemValue )
 805812c: 9807         	ldr	r0, [sp, #0x1c]
 805812e: 9909         	ldr	r1, [sp, #0x24]
 8058130: 4288         	cmp	r0, r1
 8058132: d207         	bhs	0x8058144 <SysTick_Handler+0x146> @ imm = #0xe
 8058134: e7ff         	b	0x8058136 <SysTick_Handler+0x138> @ imm = #-0x2
;                         xNextTaskUnblockTime = xItemValue;
 8058136: 9809         	ldr	r0, [sp, #0x24]
 8058138: f240 21b0    	movw	r1, #0x2b0
 805813c: f2c2 0100    	movt	r1, #0x2000
 8058140: 6008         	str	r0, [r1]
;                         break; /*lint !e9011 Code structure here is deemed easier to understand with multiple breaks. */
 8058142: e08f         	b	0x8058264 <SysTick_Handler+0x266> @ imm = #0x11e
;                     listREMOVE_ITEM( &( pxTCB->xStateListItem ) );
 8058144: 980a         	ldr	r0, [sp, #0x28]
 8058146: 6940         	ldr	r0, [r0, #0x14]
 8058148: 9005         	str	r0, [sp, #0x14]
 805814a: 980a         	ldr	r0, [sp, #0x28]
 805814c: 6881         	ldr	r1, [r0, #0x8]
 805814e: 68c0         	ldr	r0, [r0, #0xc]
 8058150: 6088         	str	r0, [r1, #0x8]
 8058152: 980a         	ldr	r0, [sp, #0x28]
 8058154: 6881         	ldr	r1, [r0, #0x8]
 8058156: 68c0         	ldr	r0, [r0, #0xc]
 8058158: 6041         	str	r1, [r0, #0x4]
 805815a: 9805         	ldr	r0, [sp, #0x14]
 805815c: 6840         	ldr	r0, [r0, #0x4]
 805815e: 990a         	ldr	r1, [sp, #0x28]
 8058160: 3104         	adds	r1, #0x4
 8058162: 4288         	cmp	r0, r1
 8058164: d105         	bne	0x8058172 <SysTick_Handler+0x174> @ imm = #0xa
 8058166: e7ff         	b	0x8058168 <SysTick_Handler+0x16a> @ imm = #-0x2
 8058168: 980a         	ldr	r0, [sp, #0x28]
 805816a: 68c0         	ldr	r0, [r0, #0xc]
 805816c: 9905         	ldr	r1, [sp, #0x14]
 805816e: 6048         	str	r0, [r1, #0x4]
 8058170: e7ff         	b	0x8058172 <SysTick_Handler+0x174> @ imm = #-0x2
 8058172: 980a         	ldr	r0, [sp, #0x28]
 8058174: 2100         	movs	r1, #0x0
 8058176: 6141         	str	r1, [r0, #0x14]
 8058178: 9805         	ldr	r0, [sp, #0x14]
 805817a: 6801         	ldr	r1, [r0]
 805817c: 3901         	subs	r1, #0x1
 805817e: 6001         	str	r1, [r0]
;                     if( listLIST_ITEM_CONTAINER( &( pxTCB->xEventListItem ) ) != NULL )
 8058180: 980a         	ldr	r0, [sp, #0x28]
 8058182: 6a80         	ldr	r0, [r0, #0x28]
 8058184: b1f8         	cbz	r0, 0x80581c6 <SysTick_Handler+0x1c8> @ imm = #0x3e
 8058186: e7ff         	b	0x8058188 <SysTick_Handler+0x18a> @ imm = #-0x2
;                         listREMOVE_ITEM( &( pxTCB->xEventListItem ) );
 8058188: 980a         	ldr	r0, [sp, #0x28]
 805818a: 6a80         	ldr	r0, [r0, #0x28]
 805818c: 9004         	str	r0, [sp, #0x10]
 805818e: 980a         	ldr	r0, [sp, #0x28]
 8058190: 69c1         	ldr	r1, [r0, #0x1c]
 8058192: 6a00         	ldr	r0, [r0, #0x20]
 8058194: 6088         	str	r0, [r1, #0x8]
 8058196: 980a         	ldr	r0, [sp, #0x28]
 8058198: 69c1         	ldr	r1, [r0, #0x1c]
 805819a: 6a00         	ldr	r0, [r0, #0x20]
 805819c: 6041         	str	r1, [r0, #0x4]
 805819e: 9804         	ldr	r0, [sp, #0x10]
 80581a0: 6840         	ldr	r0, [r0, #0x4]
 80581a2: 990a         	ldr	r1, [sp, #0x28]
 80581a4: 3118         	adds	r1, #0x18
 80581a6: 4288         	cmp	r0, r1
 80581a8: d105         	bne	0x80581b6 <SysTick_Handler+0x1b8> @ imm = #0xa
 80581aa: e7ff         	b	0x80581ac <SysTick_Handler+0x1ae> @ imm = #-0x2
 80581ac: 980a         	ldr	r0, [sp, #0x28]
 80581ae: 6a00         	ldr	r0, [r0, #0x20]
 80581b0: 9904         	ldr	r1, [sp, #0x10]
 80581b2: 6048         	str	r0, [r1, #0x4]
 80581b4: e7ff         	b	0x80581b6 <SysTick_Handler+0x1b8> @ imm = #-0x2
 80581b6: 980a         	ldr	r0, [sp, #0x28]
 80581b8: 2100         	movs	r1, #0x0
 80581ba: 6281         	str	r1, [r0, #0x28]
 80581bc: 9804         	ldr	r0, [sp, #0x10]
 80581be: 6801         	ldr	r1, [r0]
 80581c0: 3901         	subs	r1, #0x1
 80581c2: 6001         	str	r1, [r0]
;                     }
 80581c4: e000         	b	0x80581c8 <SysTick_Handler+0x1ca> @ imm = #0x0
 80581c6: e7ff         	b	0x80581c8 <SysTick_Handler+0x1ca> @ imm = #-0x2
;                     prvAddTaskToReadyList( pxTCB );
 80581c8: 980a         	ldr	r0, [sp, #0x28]
 80581ca: 6ac0         	ldr	r0, [r0, #0x2c]
 80581cc: f240 21a8    	movw	r1, #0x2a8
 80581d0: f2c2 0100    	movt	r1, #0x2000
 80581d4: 6809         	ldr	r1, [r1]
 80581d6: 4288         	cmp	r0, r1
 80581d8: d908         	bls	0x80581ec <SysTick_Handler+0x1ee> @ imm = #0x10
 80581da: e7ff         	b	0x80581dc <SysTick_Handler+0x1de> @ imm = #-0x2
 80581dc: 980a         	ldr	r0, [sp, #0x28]
 80581de: 6ac0         	ldr	r0, [r0, #0x2c]
 80581e0: f240 21a8    	movw	r1, #0x2a8
 80581e4: f2c2 0100    	movt	r1, #0x2000
 80581e8: 6008         	str	r0, [r1]
 80581ea: e7ff         	b	0x80581ec <SysTick_Handler+0x1ee> @ imm = #-0x2
 80581ec: 980a         	ldr	r0, [sp, #0x28]
 80581ee: 6ac0         	ldr	r0, [r0, #0x2c]
 80581f0: eb00 0180    	add.w	r1, r0, r0, lsl #2
 80581f4: f240 1068    	movw	r0, #0x168
 80581f8: f2c2 0000    	movt	r0, #0x2000
 80581fc: eb00 0181    	add.w	r1, r0, r1, lsl #2
 8058200: 6849         	ldr	r1, [r1, #0x4]
 8058202: 9103         	str	r1, [sp, #0xc]
 8058204: 9903         	ldr	r1, [sp, #0xc]
 8058206: 9a0a         	ldr	r2, [sp, #0x28]
 8058208: 6091         	str	r1, [r2, #0x8]
 805820a: 9903         	ldr	r1, [sp, #0xc]
 805820c: 6889         	ldr	r1, [r1, #0x8]
 805820e: 9a0a         	ldr	r2, [sp, #0x28]
 8058210: 60d1         	str	r1, [r2, #0xc]
 8058212: 990a         	ldr	r1, [sp, #0x28]
 8058214: 3104         	adds	r1, #0x4
 8058216: 9a03         	ldr	r2, [sp, #0xc]
 8058218: 6892         	ldr	r2, [r2, #0x8]
 805821a: 6051         	str	r1, [r2, #0x4]
 805821c: 990a         	ldr	r1, [sp, #0x28]
 805821e: 3104         	adds	r1, #0x4
 8058220: 9a03         	ldr	r2, [sp, #0xc]
 8058222: 6091         	str	r1, [r2, #0x8]
 8058224: 990a         	ldr	r1, [sp, #0x28]
 8058226: 6aca         	ldr	r2, [r1, #0x2c]
 8058228: eb02 0282    	add.w	r2, r2, r2, lsl #2
 805822c: eb00 0282    	add.w	r2, r0, r2, lsl #2
 8058230: 614a         	str	r2, [r1, #0x14]
 8058232: 990a         	ldr	r1, [sp, #0x28]
 8058234: 6ac9         	ldr	r1, [r1, #0x2c]
 8058236: eb01 0181    	add.w	r1, r1, r1, lsl #2
 805823a: f850 2021    	ldr.w	r2, [r0, r1, lsl #2]
 805823e: 3201         	adds	r2, #0x1
 8058240: f840 2021    	str.w	r2, [r0, r1, lsl #2]
;                             if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
 8058244: 980a         	ldr	r0, [sp, #0x28]
 8058246: 6ac0         	ldr	r0, [r0, #0x2c]
 8058248: f240 1108    	movw	r1, #0x108
 805824c: f2c2 0100    	movt	r1, #0x2000
 8058250: 6809         	ldr	r1, [r1]
 8058252: 6ac9         	ldr	r1, [r1, #0x2c]
 8058254: 4288         	cmp	r0, r1
 8058256: d903         	bls	0x8058260 <SysTick_Handler+0x262> @ imm = #0x6
 8058258: e7ff         	b	0x805825a <SysTick_Handler+0x25c> @ imm = #-0x2
 805825a: 2001         	movs	r0, #0x1
;                                 xSwitchRequired = pdTRUE;
 805825c: 9008         	str	r0, [sp, #0x20]
;                             }
 805825e: e000         	b	0x8058262 <SysTick_Handler+0x264> @ imm = #0x0
 8058260: e7ff         	b	0x8058262 <SysTick_Handler+0x264> @ imm = #-0x2
;             for( ; ; )
 8058262: e748         	b	0x80580f6 <SysTick_Handler+0xf8> @ imm = #-0x170
;         }
 8058264: e7ff         	b	0x8058266 <SysTick_Handler+0x268> @ imm = #-0x2
;                 if( listCURRENT_LIST_LENGTH( &( pxReadyTasksLists[ pxCurrentTCB->uxPriority ] ) ) > ( UBaseType_t ) 1 )
 8058266: f240 1008    	movw	r0, #0x108
 805826a: f2c2 0000    	movt	r0, #0x2000
 805826e: 6800         	ldr	r0, [r0]
 8058270: 6ac0         	ldr	r0, [r0, #0x2c]
 8058272: eb00 0080    	add.w	r0, r0, r0, lsl #2
 8058276: f240 1168    	movw	r1, #0x168
 805827a: f2c2 0100    	movt	r1, #0x2000
 805827e: f851 0020    	ldr.w	r0, [r1, r0, lsl #2]
 8058282: 2802         	cmp	r0, #0x2
 8058284: d303         	blo	0x805828e <SysTick_Handler+0x290> @ imm = #0x6
 8058286: e7ff         	b	0x8058288 <SysTick_Handler+0x28a> @ imm = #-0x2
 8058288: 2001         	movs	r0, #0x1
;                     xSwitchRequired = pdTRUE;
 805828a: 9008         	str	r0, [sp, #0x20]
;                 }
 805828c: e000         	b	0x8058290 <SysTick_Handler+0x292> @ imm = #0x0
 805828e: e7ff         	b	0x8058290 <SysTick_Handler+0x292> @ imm = #-0x2
;                 if( xYieldPendings[ 0 ] != pdFALSE )
 8058290: f240 20ac    	movw	r0, #0x2ac
 8058294: f2c2 0000    	movt	r0, #0x2000
 8058298: 6800         	ldr	r0, [r0]
 805829a: b118         	cbz	r0, 0x80582a4 <SysTick_Handler+0x2a6> @ imm = #0x6
 805829c: e7ff         	b	0x805829e <SysTick_Handler+0x2a0> @ imm = #-0x2
 805829e: 2001         	movs	r0, #0x1
;                     xSwitchRequired = pdTRUE;
 80582a0: 9008         	str	r0, [sp, #0x20]
;                 }
 80582a2: e000         	b	0x80582a6 <SysTick_Handler+0x2a8> @ imm = #0x0
 80582a4: e7ff         	b	0x80582a6 <SysTick_Handler+0x2a8> @ imm = #-0x2
;     }
 80582a6: e007         	b	0x80582b8 <SysTick_Handler+0x2ba> @ imm = #0xe
;         ++xPendedTicks;
 80582a8: f240 20b8    	movw	r0, #0x2b8
 80582ac: f2c2 0000    	movt	r0, #0x2000
 80582b0: 6801         	ldr	r1, [r0]
 80582b2: 3101         	adds	r1, #0x1
 80582b4: 6001         	str	r1, [r0]
 80582b6: e7ff         	b	0x80582b8 <SysTick_Handler+0x2ba> @ imm = #-0x2
;     return xSwitchRequired;
 80582b8: 9808         	ldr	r0, [sp, #0x20]
;         if( xTaskIncrementTick() != pdFALSE )
 80582ba: b140         	cbz	r0, 0x80582ce <SysTick_Handler+0x2d0> @ imm = #0x10
 80582bc: e7ff         	b	0x80582be <SysTick_Handler+0x2c0> @ imm = #-0x2
 80582be: f64e 5004    	movw	r0, #0xed04
 80582c2: f2ce 0000    	movt	r0, #0xe000
 80582c6: f04f 5180    	mov.w	r1, #0x10000000
;             portNVIC_INT_CTRL_REG = portNVIC_PENDSVSET_BIT;
 80582ca: 6001         	str	r1, [r0]
;         }
 80582cc: e000         	b	0x80582d0 <SysTick_Handler+0x2d2> @ imm = #0x0
 80582ce: e7ff         	b	0x80582d0 <SysTick_Handler+0x2d2> @ imm = #-0x2
;     portCLEAR_INTERRUPT_MASK_FROM_ISR( ulPreviousMask );
 80582d0: 9800         	ldr	r0, [sp]
 80582d2: 9001         	str	r0, [sp, #0x4]
;   writeBasepri(ulMask); // 设置 BASEPRI 寄存器为 ulMask
 80582d4: 9801         	ldr	r0, [sp, #0x4]
 80582d6: 9002         	str	r0, [sp, #0x8]
;   __asm volatile("msr basepri, %0" ::"r"(value) : "memory");
 80582d8: 9802         	ldr	r0, [sp, #0x8]
 80582da: f380 8811    	msr	basepri, r0
;   __asm volatile("dsb");
 80582de: f3bf 8f4f    	dsb	sy
;   __asm volatile("isb");
 80582e2: f3bf 8f6f    	isb	sy
; }
 80582e6: b011         	add	sp, #0x44
 80582e8: 4770         	bx	lr

080582ea <pxPortInitialiseStack>:
;     {
 80582ea: b084         	sub	sp, #0x10
 80582ec: 9003         	str	r0, [sp, #0xc]
 80582ee: 9102         	str	r1, [sp, #0x8]
 80582f0: 9201         	str	r2, [sp, #0x4]
 80582f2: 9300         	str	r3, [sp]
;             pxTopOfStack--;                                          /* Offset added to account for the way the MCU uses the stack on entry/exit of interrupts. */
 80582f4: 9803         	ldr	r0, [sp, #0xc]
 80582f6: 3804         	subs	r0, #0x4
 80582f8: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = portINITIAL_XPSR;                        /* xPSR. */
 80582fa: 9803         	ldr	r0, [sp, #0xc]
 80582fc: f04f 7180    	mov.w	r1, #0x1000000
 8058300: 6001         	str	r1, [r0]
;             pxTopOfStack--;
 8058302: 9803         	ldr	r0, [sp, #0xc]
 8058304: 3804         	subs	r0, #0x4
 8058306: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) pxCode;                  /* PC. */
 8058308: 9801         	ldr	r0, [sp, #0x4]
 805830a: 9903         	ldr	r1, [sp, #0xc]
 805830c: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 805830e: 9803         	ldr	r0, [sp, #0xc]
 8058310: 3804         	subs	r0, #0x4
 8058312: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) portTASK_RETURN_ADDRESS; /* LR. */
 8058314: 9803         	ldr	r0, [sp, #0xc]
 8058316: f248 31f5    	movw	r1, #0x83f5
 805831a: f6c0 0105    	movt	r1, #0x805
 805831e: 6001         	str	r1, [r0]
;             pxTopOfStack--;
 8058320: 9803         	ldr	r0, [sp, #0xc]
 8058322: 3804         	subs	r0, #0x4
 8058324: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x12121212UL;            /* R12. */
 8058326: 9803         	ldr	r0, [sp, #0xc]
 8058328: f04f 3112    	mov.w	r1, #0x12121212
 805832c: 6001         	str	r1, [r0]
;             pxTopOfStack--;
 805832e: 9803         	ldr	r0, [sp, #0xc]
 8058330: 3804         	subs	r0, #0x4
 8058332: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x03030303UL;            /* R3. */
 8058334: 9803         	ldr	r0, [sp, #0xc]
 8058336: f04f 3103    	mov.w	r1, #0x3030303
 805833a: 6001         	str	r1, [r0]
;             pxTopOfStack--;
 805833c: 9803         	ldr	r0, [sp, #0xc]
 805833e: 3804         	subs	r0, #0x4
 8058340: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x02020202UL;            /* R2. */
 8058342: 9803         	ldr	r0, [sp, #0xc]
 8058344: f04f 3102    	mov.w	r1, #0x2020202
 8058348: 6001         	str	r1, [r0]
;             pxTopOfStack--;
 805834a: 9803         	ldr	r0, [sp, #0xc]
 805834c: 3804         	subs	r0, #0x4
 805834e: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x01010101UL;            /* R1. */
 8058350: 9803         	ldr	r0, [sp, #0xc]
 8058352: f04f 3101    	mov.w	r1, #0x1010101
 8058356: 6001         	str	r1, [r0]
;             pxTopOfStack--;
 8058358: 9803         	ldr	r0, [sp, #0xc]
 805835a: 3804         	subs	r0, #0x4
 805835c: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) pvParameters;            /* R0. */
 805835e: 9800         	ldr	r0, [sp]
 8058360: 9903         	ldr	r1, [sp, #0xc]
 8058362: 6008         	str	r0, [r1]
;             pxTopOfStack--;
 8058364: 9803         	ldr	r0, [sp, #0xc]
 8058366: 3804         	subs	r0, #0x4
 8058368: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x11111111UL;            /* R11. */
 805836a: 9803         	ldr	r0, [sp, #0xc]
 805836c: f04f 3111    	mov.w	r1, #0x11111111
 8058370: 6001         	str	r1, [r0]
;             pxTopOfStack--;
 8058372: 9803         	ldr	r0, [sp, #0xc]
 8058374: 3804         	subs	r0, #0x4
 8058376: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x10101010UL;            /* R10. */
 8058378: 9803         	ldr	r0, [sp, #0xc]
 805837a: f04f 3110    	mov.w	r1, #0x10101010
 805837e: 6001         	str	r1, [r0]
;             pxTopOfStack--;
 8058380: 9803         	ldr	r0, [sp, #0xc]
 8058382: 3804         	subs	r0, #0x4
 8058384: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x09090909UL;            /* R09. */
 8058386: 9803         	ldr	r0, [sp, #0xc]
 8058388: f04f 3109    	mov.w	r1, #0x9090909
 805838c: 6001         	str	r1, [r0]
;             pxTopOfStack--;
 805838e: 9803         	ldr	r0, [sp, #0xc]
 8058390: 3804         	subs	r0, #0x4
 8058392: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x08080808UL;            /* R08. */
 8058394: 9803         	ldr	r0, [sp, #0xc]
 8058396: f04f 3108    	mov.w	r1, #0x8080808
 805839a: 6001         	str	r1, [r0]
;             pxTopOfStack--;
 805839c: 9803         	ldr	r0, [sp, #0xc]
 805839e: 3804         	subs	r0, #0x4
 80583a0: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x07070707UL;            /* R07. */
 80583a2: 9803         	ldr	r0, [sp, #0xc]
 80583a4: f04f 3107    	mov.w	r1, #0x7070707
 80583a8: 6001         	str	r1, [r0]
;             pxTopOfStack--;
 80583aa: 9803         	ldr	r0, [sp, #0xc]
 80583ac: 3804         	subs	r0, #0x4
 80583ae: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x06060606UL;            /* R06. */
 80583b0: 9803         	ldr	r0, [sp, #0xc]
 80583b2: f04f 3106    	mov.w	r1, #0x6060606
 80583b6: 6001         	str	r1, [r0]
;             pxTopOfStack--;
 80583b8: 9803         	ldr	r0, [sp, #0xc]
 80583ba: 3804         	subs	r0, #0x4
 80583bc: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x05050505UL;            /* R05. */
 80583be: 9803         	ldr	r0, [sp, #0xc]
 80583c0: f04f 3105    	mov.w	r1, #0x5050505
 80583c4: 6001         	str	r1, [r0]
;             pxTopOfStack--;
 80583c6: 9803         	ldr	r0, [sp, #0xc]
 80583c8: 3804         	subs	r0, #0x4
 80583ca: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) 0x04040404UL;            /* R04. */
 80583cc: 9803         	ldr	r0, [sp, #0xc]
 80583ce: f04f 3104    	mov.w	r1, #0x4040404
 80583d2: 6001         	str	r1, [r0]
;             pxTopOfStack--;
 80583d4: 9803         	ldr	r0, [sp, #0xc]
 80583d6: 3804         	subs	r0, #0x4
 80583d8: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = portINITIAL_EXC_RETURN;                  /* EXC_RETURN. */
 80583da: 9803         	ldr	r0, [sp, #0xc]
 80583dc: f06f 0143    	mvn	r1, #0x43
 80583e0: 6001         	str	r1, [r0]
;             pxTopOfStack--;
 80583e2: 9803         	ldr	r0, [sp, #0xc]
 80583e4: 3804         	subs	r0, #0x4
 80583e6: 9003         	str	r0, [sp, #0xc]
;             *pxTopOfStack = ( StackType_t ) pxEndOfStack;            /* Slot used to hold this task's PSPLIM value. */
 80583e8: 9802         	ldr	r0, [sp, #0x8]
 80583ea: 9903         	ldr	r1, [sp, #0xc]
 80583ec: 6008         	str	r0, [r1]
;         return pxTopOfStack;
 80583ee: 9803         	ldr	r0, [sp, #0xc]
 80583f0: b004         	add	sp, #0x10
 80583f2: 4770         	bx	lr

080583f4 <prvTaskExitError>:
; {
 80583f4: b580         	push	{r7, lr}
 80583f6: 466f         	mov	r7, sp
 80583f8: b082         	sub	sp, #0x8
 80583fa: 2000         	movs	r0, #0x0
;     volatile uint32_t ulDummy = 0UL;
 80583fc: 9001         	str	r0, [sp, #0x4]
;     configASSERT( ulCriticalNesting == ~0UL );
 80583fe: f240 1004    	movw	r0, #0x104
 8058402: f2c2 0000    	movt	r0, #0x2000
 8058406: 6800         	ldr	r0, [r0]
 8058408: 3001         	adds	r0, #0x1
 805840a: b120         	cbz	r0, 0x8058416 <prvTaskExitError+0x22> @ imm = #0x8
 805840c: e7ff         	b	0x805840e <prvTaskExitError+0x1a> @ imm = #-0x2
 805840e: f000 f8af    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0x15e
 8058412: e7ff         	b	0x8058414 <prvTaskExitError+0x20> @ imm = #-0x2
 8058414: e7fe         	b	0x8058414 <prvTaskExitError+0x20> @ imm = #-0x4
;     portDISABLE_INTERRUPTS();
 8058416: f000 f8ab    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0x156
;     while( ulDummy == 0 )
 805841a: e7ff         	b	0x805841c <prvTaskExitError+0x28> @ imm = #-0x2
 805841c: 9801         	ldr	r0, [sp, #0x4]
 805841e: b908         	cbnz	r0, 0x8058424 <prvTaskExitError+0x30> @ imm = #0x2
 8058420: e7ff         	b	0x8058422 <prvTaskExitError+0x2e> @ imm = #-0x2
 8058422: e7fb         	b	0x805841c <prvTaskExitError+0x28> @ imm = #-0xa
; }
 8058424: b002         	add	sp, #0x8
 8058426: bd80         	pop	{r7, pc}

08058428 <xPortStartScheduler>:
; {
 8058428: b580         	push	{r7, lr}
 805842a: 466f         	mov	r7, sp
 805842c: b084         	sub	sp, #0x10
 805842e: 2000         	movs	r0, #0x0
;         volatile uint32_t ulImplementedPrioBits = 0;
 8058430: 9002         	str	r0, [sp, #0x8]
 8058432: f64e 501c    	movw	r0, #0xed1c
 8058436: f2ce 0000    	movt	r0, #0xe000
;         ulOriginalPriority = portNVIC_SHPR2_REG;
 805843a: 6801         	ldr	r1, [r0]
 805843c: 9103         	str	r1, [sp, #0xc]
 805843e: f04f 417f    	mov.w	r1, #0xff000000
;         portNVIC_SHPR2_REG = 0xFF000000;
 8058442: 6001         	str	r1, [r0]
;         ucMaxPriorityValue = ( uint8_t ) ( ( portNVIC_SHPR2_REG & 0xFF000000 ) >> 24 );
 8058444: 6800         	ldr	r0, [r0]
 8058446: 0e00         	lsrs	r0, r0, #0x18
 8058448: f807 0c09    	strb	r0, [r7, #-9]
;         ucMaxSysCallPriority = configMAX_SYSCALL_INTERRUPT_PRIORITY & ucMaxPriorityValue;
 805844c: f817 0c09    	ldrb	r0, [r7, #-9]
 8058450: f000 00a0    	and	r0, r0, #0xa0
 8058454: f242 3180    	movw	r1, #0x2380
 8058458: f2c2 0100    	movt	r1, #0x2000
 805845c: 7008         	strb	r0, [r1]
;         configASSERT( ucMaxSysCallPriority );
 805845e: 7808         	ldrb	r0, [r1]
 8058460: b920         	cbnz	r0, 0x805846c <xPortStartScheduler+0x44> @ imm = #0x8
 8058462: e7ff         	b	0x8058464 <xPortStartScheduler+0x3c> @ imm = #-0x2
 8058464: f000 f884    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0x108
 8058468: e7ff         	b	0x805846a <xPortStartScheduler+0x42> @ imm = #-0x2
 805846a: e7fe         	b	0x805846a <xPortStartScheduler+0x42> @ imm = #-0x4
;         configASSERT( ( configMAX_SYSCALL_INTERRUPT_PRIORITY & ( uint8_t ) ( ~( uint32_t ) ucMaxPriorityValue ) ) == 0U );
 805846c: f817 0c09    	ldrb	r0, [r7, #-9]
 8058470: 43c0         	mvns	r0, r0
 8058472: f010 0fa0    	tst.w	r0, #0xa0
 8058476: d004         	beq	0x8058482 <xPortStartScheduler+0x5a> @ imm = #0x8
 8058478: e7ff         	b	0x805847a <xPortStartScheduler+0x52> @ imm = #-0x2
 805847a: f000 f879    	bl	0x8058570 <ulSetInterruptMask> @ imm = #0xf2
 805847e: e7ff         	b	0x8058480 <xPortStartScheduler+0x58> @ imm = #-0x2
 8058480: e7fe         	b	0x8058480 <xPortStartScheduler+0x58> @ imm = #-0x4
;         while( ( ucMaxPriorityValue & portTOP_BIT_OF_BYTE ) == portTOP_BIT_OF_BYTE )
 8058482: e7ff         	b	0x8058484 <xPortStartScheduler+0x5c> @ imm = #-0x2
 8058484: f817 0c09    	ldrb	r0, [r7, #-9]
 8058488: 0600         	lsls	r0, r0, #0x18
 805848a: 2800         	cmp	r0, #0x0
 805848c: d509         	bpl	0x80584a2 <xPortStartScheduler+0x7a> @ imm = #0x12
 805848e: e7ff         	b	0x8058490 <xPortStartScheduler+0x68> @ imm = #-0x2
;             ulImplementedPrioBits++;
 8058490: 9802         	ldr	r0, [sp, #0x8]
 8058492: 3001         	adds	r0, #0x1
 8058494: 9002         	str	r0, [sp, #0x8]
;             ucMaxPriorityValue <<= ( uint8_t ) 0x01;
 8058496: f817 0c09    	ldrb	r0, [r7, #-9]
 805849a: 0040         	lsls	r0, r0, #0x1
 805849c: f807 0c09    	strb	r0, [r7, #-9]
;         while( ( ucMaxPriorityValue & portTOP_BIT_OF_BYTE ) == portTOP_BIT_OF_BYTE )
 80584a0: e7f0         	b	0x8058484 <xPortStartScheduler+0x5c> @ imm = #-0x20
;         if( ulImplementedPrioBits == 8 )
 80584a2: 9802         	ldr	r0, [sp, #0x8]
 80584a4: 2808         	cmp	r0, #0x8
 80584a6: d107         	bne	0x80584b8 <xPortStartScheduler+0x90> @ imm = #0xe
 80584a8: e7ff         	b	0x80584aa <xPortStartScheduler+0x82> @ imm = #-0x2
;             ulMaxPRIGROUPValue = 0;
 80584aa: f242 3084    	movw	r0, #0x2384
 80584ae: f2c2 0000    	movt	r0, #0x2000
 80584b2: 2100         	movs	r1, #0x0
 80584b4: 6001         	str	r1, [r0]
;         }
 80584b6: e008         	b	0x80584ca <xPortStartScheduler+0xa2> @ imm = #0x10
;             ulMaxPRIGROUPValue = portMAX_PRIGROUP_BITS - ulImplementedPrioBits;
 80584b8: 9802         	ldr	r0, [sp, #0x8]
 80584ba: f1c0 0007    	rsb.w	r0, r0, #0x7
 80584be: f242 3184    	movw	r1, #0x2384
 80584c2: f2c2 0100    	movt	r1, #0x2000
 80584c6: 6008         	str	r0, [r1]
 80584c8: e7ff         	b	0x80584ca <xPortStartScheduler+0xa2> @ imm = #-0x2
;         ulMaxPRIGROUPValue <<= portPRIGROUP_SHIFT;
 80584ca: f242 3084    	movw	r0, #0x2384
 80584ce: f2c2 0000    	movt	r0, #0x2000
 80584d2: 6801         	ldr	r1, [r0]
 80584d4: 0209         	lsls	r1, r1, #0x8
 80584d6: 6001         	str	r1, [r0]
;         ulMaxPRIGROUPValue &= portPRIORITY_GROUP_MASK;
 80584d8: 6801         	ldr	r1, [r0]
 80584da: f401 61e0    	and	r1, r1, #0x700
 80584de: 6001         	str	r1, [r0]
;         portNVIC_SHPR2_REG = ulOriginalPriority;
 80584e0: 9803         	ldr	r0, [sp, #0xc]
 80584e2: f64e 511c    	movw	r1, #0xed1c
 80584e6: f2ce 0100    	movt	r1, #0xe000
 80584ea: 6008         	str	r0, [r1]
 80584ec: f64e 5020    	movw	r0, #0xed20
 80584f0: f2ce 0000    	movt	r0, #0xe000
;     portNVIC_SHPR3_REG |= portNVIC_PENDSV_PRI;
 80584f4: 6801         	ldr	r1, [r0]
 80584f6: f441 017f    	orr	r1, r1, #0xff0000
 80584fa: 6001         	str	r1, [r0]
;     portNVIC_SHPR3_REG |= portNVIC_SYSTICK_PRI;
 80584fc: 6801         	ldr	r1, [r0]
 80584fe: f041 417f    	orr	r1, r1, #0xff000000
 8058502: 6001         	str	r1, [r0]
;     vPortSetupTimerInterrupt();
 8058504: f7ff fd21    	bl	0x8057f4a <vPortSetupTimerInterrupt> @ imm = #-0x5be
;     ulCriticalNesting = 0;
 8058508: f240 1004    	movw	r0, #0x104
 805850c: f2c2 0000    	movt	r0, #0x2000
 8058510: 2100         	movs	r1, #0x0
 8058512: 6001         	str	r1, [r0]
;     vStartFirstTask();
 8058514: f000 f81c    	bl	0x8058550 <vStartFirstTask> @ imm = #0x38
;     vTaskSwitchContext();
 8058518: f7fd fc8d    	bl	0x8055e36 <vTaskSwitchContext> @ imm = #-0x26e6
;     prvTaskExitError();
 805851c: f7ff ff6a    	bl	0x80583f4 <prvTaskExitError> @ imm = #-0x12c
;     return 0;
 8058520: b004         	add	sp, #0x10
 8058522: bd80         	pop	{r7, pc}

08058524 <vRestoreContextOfFirstTask>:
;   __asm volatile(
 8058524: f240 1208    	movw	r2, #0x108
 8058528: f2c2 0200    	movt	r2, #0x2000
 805852c: 6811         	ldr	r1, [r2]
 805852e: 6808         	ldr	r0, [r1]
 8058530: c806         	ldm	r0!, {r1, r2}
 8058532: f381 880b    	msr	psplim, r1
 8058536: 2102         	movs	r1, #0x2
 8058538: f381 8814    	msr	control, r1
 805853c: 3020         	adds	r0, #0x20
 805853e: f380 8809    	msr	psp, r0
 8058542: f3bf 8f6f    	isb	sy
 8058546: f04f 0000    	mov.w	r0, #0x0
 805854a: f380 8811    	msr	basepri, r0
 805854e: 4710         	bx	r2

08058550 <vStartFirstTask>:
;   __asm volatile(
 8058550: f64e 5008    	movw	r0, #0xed08
 8058554: f2ce 0000    	movt	r0, #0xe000
 8058558: 6800         	ldr	r0, [r0]
 805855a: 6800         	ldr	r0, [r0]
 805855c: f380 8808    	msr	msp, r0
 8058560: b662         	cpsie i
 8058562: b661         	cpsie f
 8058564: f3bf 8f4f    	dsb	sy
 8058568: f3bf 8f6f    	isb	sy
 805856c: df02         	svc	#0x2
 805856e: bf00         	nop

08058570 <ulSetInterruptMask>:
; uint32_t ulSetInterruptMask(void) {
 8058570: b083         	sub	sp, #0xc
;   __asm volatile("mrs %0, basepri" : "=r"(value));
 8058572: f3ef 8011    	mrs	r0, basepri
 8058576: 9002         	str	r0, [sp, #0x8]
;   return value;
 8058578: 9802         	ldr	r0, [sp, #0x8]
;   uint32_t originalBasepri = readBasepri(); // 读取当前的 BASEPRI 值
 805857a: 9000         	str	r0, [sp]
 805857c: 20a0         	movs	r0, #0xa0
 805857e: 9001         	str	r0, [sp, #0x4]
;   __asm volatile("msr basepri, %0" ::"r"(value) : "memory");
 8058580: 9801         	ldr	r0, [sp, #0x4]
 8058582: f380 8811    	msr	basepri, r0
;   __asm volatile("dsb");
 8058586: f3bf 8f4f    	dsb	sy
;   __asm volatile("isb");
 805858a: f3bf 8f6f    	isb	sy
;   return originalBasepri; // 返回旧的 BASEPRI 值
 805858e: b003         	add	sp, #0xc
 8058590: 4770         	bx	lr

08058592 <vClearInterruptMask>:
; void vClearInterruptMask(uint32_t ulMask) {
 8058592: b082         	sub	sp, #0x8
 8058594: 2000         	movs	r0, #0x0
 8058596: 9000         	str	r0, [sp]
;   writeBasepri(ulMask); // 设置 BASEPRI 寄存器为 ulMask
 8058598: 9800         	ldr	r0, [sp]
 805859a: 9001         	str	r0, [sp, #0x4]
;   __asm volatile("msr basepri, %0" ::"r"(value) : "memory");
 805859c: 9801         	ldr	r0, [sp, #0x4]
 805859e: f380 8811    	msr	basepri, r0
;   __asm volatile("dsb");
 80585a2: f3bf 8f4f    	dsb	sy
;   __asm volatile("isb");
 80585a6: f3bf 8f6f    	isb	sy
; }
 80585aa: b002         	add	sp, #0x8
 80585ac: 4770         	bx	lr
 80585ae: d4d4         	bmi	0x805855a <vStartFirstTask+0xa> @ imm = #-0x58

080585b0 <PendSV_Handler>:
;   __asm volatile(
 80585b0: f3ef 8009    	mrs	r0, psp
 80585b4: f3ef 820b    	mrs	r2, psplim
 80585b8: 4673         	mov	r3, lr
 80585ba: e920 0ffc    	stmdb	r0!, {r2, r3, r4, r5, r6, r7, r8, r9, r10, r11}
 80585be: f240 1208    	movw	r2, #0x108
 80585c2: f2c2 0200    	movt	r2, #0x2000
 80585c6: 6811         	ldr	r1, [r2]
 80585c8: 6008         	str	r0, [r1]
 80585ca: f04f 00a0    	mov.w	r0, #0xa0
 80585ce: f380 8811    	msr	basepri, r0
 80585d2: f3bf 8f4f    	dsb	sy
 80585d6: f3bf 8f6f    	isb	sy
 80585da: f7fd fc2c    	bl	0x8055e36 <vTaskSwitchContext> @ imm = #-0x27a8
 80585de: f04f 0000    	mov.w	r0, #0x0
 80585e2: f380 8811    	msr	basepri, r0
 80585e6: f240 1208    	movw	r2, #0x108
 80585ea: f2c2 0200    	movt	r2, #0x2000
 80585ee: 6811         	ldr	r1, [r2]
 80585f0: 6808         	ldr	r0, [r1]
 80585f2: e8b0 0ffc    	ldm.w	r0!, {r2, r3, r4, r5, r6, r7, r8, r9, r10, r11}
 80585f6: f382 880b    	msr	psplim, r2
 80585fa: f380 8809    	msr	psp, r0
 80585fe: 4718         	bx	r3

08058600 <SVC_Handler>:
;   __asm volatile("   .syntax unified                                 \n"
 8058600: f01e 0f04    	tst.w	lr, #0x4
 8058604: bf0c         	ite	eq
 8058606: f3ef 8008    	mrseq	r0, msp
 805860a: f3ef 8009    	mrsne	r0, psp
 805860e: f647 7117    	movw	r1, #0x7f17
 8058612: f6c0 0105    	movt	r1, #0x805
 8058616: 4708         	bx	r1
 8058618: bf00         	nop
 805861a: bf00         	nop
 805861c: bf00         	nop
 805861e: bf00         	nop

08058620 <MSIRangeTable>:
 8058620: a0 86 01 00 40 0d 03 00         ....@...
 8058628: 80 1a 06 00 00 35 0c 00         .....5..
 8058630: 40 42 0f 00 80 84 1e 00         @B......
 8058638: 00 09 3d 00 00 12 7a 00         ..=...z.
 8058640: 00 24 f4 00 00 36 6e 01         .$...6n.
 8058648: 00 48 e8 01 00 6c dc 02         .H...l..
 8058650: 00 00 00 00 00 00 00 00         ........
 8058658: 00 00 00 00 00 00 00 00         ........

08058660 <AHBPrescTable>:
 8058660: 00 00 00 00 00 00 00 00         ........
 8058668: 01 02 03 04 06 07 08 09         ........

08058670 <.L.str.1>:
 8058670: 54 6d 72 51 00                  TmrQ.

08058675 <.L.str>:
 8058675: 74 65 73 74 54 68 72 65         testThre
 805867d: 61 64 00                        ad.

08058680 <.L.str.20>:
 8058680: 49 44 4c 45 00                  IDLE.

08058685 <.L.str.31>:
 8058685: 54 6d 72 20 53 76 63 00         Tmr Svc.
 805868d: d4 d4 d4                        ...

08058690 <uxTopUsedPriority>:
 8058690: 0f 00 00 00                     ....
