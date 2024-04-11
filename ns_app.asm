 80558c6: f64e 5090    	movw	r0, #0xed90
 80558ca: f2ce 0000    	movt	r0, #0xe000
 80558ce: 9008         	str	r0, [sp, #0x20]
 80558d0: 9808         	ldr	r0, [sp, #0x20]
 80558d2: 6840         	ldr	r0, [r0, #0x4] # mpu->ctrl
 80558d4: 9007         	str	r0, [sp, #0x1c]
 80558d6: 9808         	ldr	r0, [sp, #0x20] # mpu
 80558d8: 6043         	str	r3, [r0, #0x4] # set mpu->ctrl
 80558da: 9808         	lsdr	r0, [sp, #0x20] # mpu
 80558dc: 6083         	str	r3, [r0, #0x8] # set mpu->rnr
 80558de: 9807         	ldr	r0, [sp, #0x1c]
 80558e0: 9908         	ldr	r1, [sp, #0x20]
 80558e2: 6048         	str	r0, [r1, #0x4] # set mpu->ctrl