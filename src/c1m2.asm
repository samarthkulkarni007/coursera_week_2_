
c1m2.out:     file format elf32-littlearm


Disassembly of section .text:

00000140 <deregister_tm_clones>:
 140:	4803      	ldr	r0, [pc, #12]	; (150 <deregister_tm_clones+0x10>)
 142:	4b04      	ldr	r3, [pc, #16]	; (154 <deregister_tm_clones+0x14>)
 144:	4283      	cmp	r3, r0
 146:	d002      	beq.n	14e <deregister_tm_clones+0xe>
 148:	4b03      	ldr	r3, [pc, #12]	; (158 <deregister_tm_clones+0x18>)
 14a:	b103      	cbz	r3, 14e <deregister_tm_clones+0xe>
 14c:	4718      	bx	r3
 14e:	4770      	bx	lr
 150:	20000438 	.word	0x20000438
 154:	20000438 	.word	0x20000438
 158:	00000000 	.word	0x00000000

0000015c <register_tm_clones>:
 15c:	4805      	ldr	r0, [pc, #20]	; (174 <register_tm_clones+0x18>)
 15e:	4906      	ldr	r1, [pc, #24]	; (178 <register_tm_clones+0x1c>)
 160:	1a0b      	subs	r3, r1, r0
 162:	0fd9      	lsrs	r1, r3, #31
 164:	eb01 01a3 	add.w	r1, r1, r3, asr #2
 168:	1049      	asrs	r1, r1, #1
 16a:	d002      	beq.n	172 <register_tm_clones+0x16>
 16c:	4b03      	ldr	r3, [pc, #12]	; (17c <register_tm_clones+0x20>)
 16e:	b103      	cbz	r3, 172 <register_tm_clones+0x16>
 170:	4718      	bx	r3
 172:	4770      	bx	lr
 174:	20000438 	.word	0x20000438
 178:	20000438 	.word	0x20000438
 17c:	00000000 	.word	0x00000000

00000180 <__do_global_dtors_aux>:
 180:	b510      	push	{r4, lr}
 182:	4c06      	ldr	r4, [pc, #24]	; (19c <__do_global_dtors_aux+0x1c>)
 184:	7823      	ldrb	r3, [r4, #0]
 186:	b943      	cbnz	r3, 19a <__do_global_dtors_aux+0x1a>
 188:	f7ff ffda 	bl	140 <deregister_tm_clones>
 18c:	4b04      	ldr	r3, [pc, #16]	; (1a0 <__do_global_dtors_aux+0x20>)
 18e:	b113      	cbz	r3, 196 <__do_global_dtors_aux+0x16>
 190:	4804      	ldr	r0, [pc, #16]	; (1a4 <__do_global_dtors_aux+0x24>)
 192:	f3af 8000 	nop.w
 196:	2301      	movs	r3, #1
 198:	7023      	strb	r3, [r4, #0]
 19a:	bd10      	pop	{r4, pc}
 19c:	20000438 	.word	0x20000438
 1a0:	00000000 	.word	0x00000000
 1a4:	00000a4c 	.word	0x00000a4c

000001a8 <frame_dummy>:
 1a8:	b508      	push	{r3, lr}
 1aa:	4b04      	ldr	r3, [pc, #16]	; (1bc <frame_dummy+0x14>)
 1ac:	b11b      	cbz	r3, 1b6 <frame_dummy+0xe>
 1ae:	4904      	ldr	r1, [pc, #16]	; (1c0 <frame_dummy+0x18>)
 1b0:	4804      	ldr	r0, [pc, #16]	; (1c4 <frame_dummy+0x1c>)
 1b2:	f3af 8000 	nop.w
 1b6:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 1ba:	e7cf      	b.n	15c <register_tm_clones>
 1bc:	00000000 	.word	0x00000000
 1c0:	2000043c 	.word	0x2000043c
 1c4:	00000a4c 	.word	0x00000a4c

000001c8 <_stack_init>:
 1c8:	f5a3 3a80 	sub.w	sl, r3, #65536	; 0x10000
 1cc:	4770      	bx	lr
 1ce:	bf00      	nop

000001d0 <_mainCRTStartup>:
 1d0:	4b15      	ldr	r3, [pc, #84]	; (228 <_mainCRTStartup+0x58>)
 1d2:	2b00      	cmp	r3, #0
 1d4:	bf08      	it	eq
 1d6:	4b11      	ldreq	r3, [pc, #68]	; (21c <_mainCRTStartup+0x4c>)
 1d8:	469d      	mov	sp, r3
 1da:	f7ff fff5 	bl	1c8 <_stack_init>
 1de:	2100      	movs	r1, #0
 1e0:	468b      	mov	fp, r1
 1e2:	460f      	mov	r7, r1
 1e4:	4811      	ldr	r0, [pc, #68]	; (22c <_mainCRTStartup+0x5c>)
 1e6:	4a12      	ldr	r2, [pc, #72]	; (230 <_mainCRTStartup+0x60>)
 1e8:	1a12      	subs	r2, r2, r0
 1ea:	f000 faf1 	bl	7d0 <memset>
 1ee:	4b0c      	ldr	r3, [pc, #48]	; (220 <_mainCRTStartup+0x50>)
 1f0:	2b00      	cmp	r3, #0
 1f2:	d000      	beq.n	1f6 <_mainCRTStartup+0x26>
 1f4:	4798      	blx	r3
 1f6:	4b0b      	ldr	r3, [pc, #44]	; (224 <_mainCRTStartup+0x54>)
 1f8:	2b00      	cmp	r3, #0
 1fa:	d000      	beq.n	1fe <_mainCRTStartup+0x2e>
 1fc:	4798      	blx	r3
 1fe:	2000      	movs	r0, #0
 200:	2100      	movs	r1, #0
 202:	0004      	movs	r4, r0
 204:	000d      	movs	r5, r1
 206:	480b      	ldr	r0, [pc, #44]	; (234 <_mainCRTStartup+0x64>)
 208:	f000 fa8e 	bl	728 <atexit>
 20c:	f000 fabc 	bl	788 <__libc_init_array>
 210:	0020      	movs	r0, r4
 212:	0029      	movs	r1, r5
 214:	f000 f810 	bl	238 <main>
 218:	f000 fa8c 	bl	734 <exit>
 21c:	00080000 	.word	0x00080000
	...
 228:	20000460 	.word	0x20000460
 22c:	20000438 	.word	0x20000438
 230:	20000460 	.word	0x20000460
 234:	00000755 	.word	0x00000755

00000238 <main>:
 238:	b580      	push	{r7, lr}
 23a:	b082      	sub	sp, #8
 23c:	af00      	add	r7, sp, #0
 23e:	210a      	movs	r1, #10
 240:	4828      	ldr	r0, [pc, #160]	; (2e4 <main+0xac>)
 242:	f000 f89e 	bl	382 <clear_all>
 246:	4b28      	ldr	r3, [pc, #160]	; (2e8 <main+0xb0>)
 248:	2202      	movs	r2, #2
 24a:	212b      	movs	r1, #43	; 0x2b
 24c:	4618      	mov	r0, r3
 24e:	f000 f87c 	bl	34a <set_all>
 252:	2261      	movs	r2, #97	; 0x61
 254:	2100      	movs	r1, #0
 256:	4823      	ldr	r0, [pc, #140]	; (2e4 <main+0xac>)
 258:	f000 f848 	bl	2ec <set_value>
 25c:	2109      	movs	r1, #9
 25e:	4821      	ldr	r0, [pc, #132]	; (2e4 <main+0xac>)
 260:	f000 f864 	bl	32c <get_value>
 264:	4603      	mov	r3, r0
 266:	70fb      	strb	r3, [r7, #3]
 268:	78fb      	ldrb	r3, [r7, #3]
 26a:	3327      	adds	r3, #39	; 0x27
 26c:	b2db      	uxtb	r3, r3
 26e:	461a      	mov	r2, r3
 270:	2109      	movs	r1, #9
 272:	481c      	ldr	r0, [pc, #112]	; (2e4 <main+0xac>)
 274:	f000 f83a 	bl	2ec <set_value>
 278:	2237      	movs	r2, #55	; 0x37
 27a:	2103      	movs	r1, #3
 27c:	4819      	ldr	r0, [pc, #100]	; (2e4 <main+0xac>)
 27e:	f000 f835 	bl	2ec <set_value>
 282:	2258      	movs	r2, #88	; 0x58
 284:	2101      	movs	r1, #1
 286:	4817      	ldr	r0, [pc, #92]	; (2e4 <main+0xac>)
 288:	f000 f830 	bl	2ec <set_value>
 28c:	2232      	movs	r2, #50	; 0x32
 28e:	2104      	movs	r1, #4
 290:	4814      	ldr	r0, [pc, #80]	; (2e4 <main+0xac>)
 292:	f000 f82b 	bl	2ec <set_value>
 296:	2101      	movs	r1, #1
 298:	4812      	ldr	r0, [pc, #72]	; (2e4 <main+0xac>)
 29a:	f000 f847 	bl	32c <get_value>
 29e:	4603      	mov	r3, r0
 2a0:	70fb      	strb	r3, [r7, #3]
 2a2:	2279      	movs	r2, #121	; 0x79
 2a4:	2102      	movs	r1, #2
 2a6:	480f      	ldr	r0, [pc, #60]	; (2e4 <main+0xac>)
 2a8:	f000 f820 	bl	2ec <set_value>
 2ac:	78fb      	ldrb	r3, [r7, #3]
 2ae:	3b0c      	subs	r3, #12
 2b0:	b2db      	uxtb	r3, r3
 2b2:	461a      	mov	r2, r3
 2b4:	2107      	movs	r1, #7
 2b6:	480b      	ldr	r0, [pc, #44]	; (2e4 <main+0xac>)
 2b8:	f000 f818 	bl	2ec <set_value>
 2bc:	225f      	movs	r2, #95	; 0x5f
 2be:	2105      	movs	r1, #5
 2c0:	4808      	ldr	r0, [pc, #32]	; (2e4 <main+0xac>)
 2c2:	f000 f813 	bl	2ec <set_value>
 2c6:	2300      	movs	r3, #0
 2c8:	607b      	str	r3, [r7, #4]
 2ca:	e002      	b.n	2d2 <main+0x9a>
 2cc:	687b      	ldr	r3, [r7, #4]
 2ce:	3301      	adds	r3, #1
 2d0:	607b      	str	r3, [r7, #4]
 2d2:	687b      	ldr	r3, [r7, #4]
 2d4:	2b09      	cmp	r3, #9
 2d6:	d9f9      	bls.n	2cc <main+0x94>
 2d8:	2300      	movs	r3, #0
 2da:	4618      	mov	r0, r3
 2dc:	3708      	adds	r7, #8
 2de:	46bd      	mov	sp, r7
 2e0:	bd80      	pop	{r7, pc}
 2e2:	bf00      	nop
 2e4:	20000454 	.word	0x20000454
 2e8:	2000045c 	.word	0x2000045c

000002ec <set_value>:
 2ec:	b480      	push	{r7}
 2ee:	b085      	sub	sp, #20
 2f0:	af00      	add	r7, sp, #0
 2f2:	60f8      	str	r0, [r7, #12]
 2f4:	60b9      	str	r1, [r7, #8]
 2f6:	4613      	mov	r3, r2
 2f8:	71fb      	strb	r3, [r7, #7]
 2fa:	68fa      	ldr	r2, [r7, #12]
 2fc:	68bb      	ldr	r3, [r7, #8]
 2fe:	4413      	add	r3, r2
 300:	79fa      	ldrb	r2, [r7, #7]
 302:	701a      	strb	r2, [r3, #0]
 304:	bf00      	nop
 306:	3714      	adds	r7, #20
 308:	46bd      	mov	sp, r7
 30a:	f85d 7b04 	ldr.w	r7, [sp], #4
 30e:	4770      	bx	lr

00000310 <clear_value>:
 310:	b580      	push	{r7, lr}
 312:	b082      	sub	sp, #8
 314:	af00      	add	r7, sp, #0
 316:	6078      	str	r0, [r7, #4]
 318:	6039      	str	r1, [r7, #0]
 31a:	2200      	movs	r2, #0
 31c:	6839      	ldr	r1, [r7, #0]
 31e:	6878      	ldr	r0, [r7, #4]
 320:	f7ff ffe4 	bl	2ec <set_value>
 324:	bf00      	nop
 326:	3708      	adds	r7, #8
 328:	46bd      	mov	sp, r7
 32a:	bd80      	pop	{r7, pc}

0000032c <get_value>:
 32c:	b480      	push	{r7}
 32e:	b083      	sub	sp, #12
 330:	af00      	add	r7, sp, #0
 332:	6078      	str	r0, [r7, #4]
 334:	6039      	str	r1, [r7, #0]
 336:	687a      	ldr	r2, [r7, #4]
 338:	683b      	ldr	r3, [r7, #0]
 33a:	4413      	add	r3, r2
 33c:	781b      	ldrb	r3, [r3, #0]
 33e:	4618      	mov	r0, r3
 340:	370c      	adds	r7, #12
 342:	46bd      	mov	sp, r7
 344:	f85d 7b04 	ldr.w	r7, [sp], #4
 348:	4770      	bx	lr

0000034a <set_all>:
 34a:	b580      	push	{r7, lr}
 34c:	b086      	sub	sp, #24
 34e:	af00      	add	r7, sp, #0
 350:	60f8      	str	r0, [r7, #12]
 352:	460b      	mov	r3, r1
 354:	607a      	str	r2, [r7, #4]
 356:	72fb      	strb	r3, [r7, #11]
 358:	2300      	movs	r3, #0
 35a:	617b      	str	r3, [r7, #20]
 35c:	e008      	b.n	370 <set_all+0x26>
 35e:	7afb      	ldrb	r3, [r7, #11]
 360:	461a      	mov	r2, r3
 362:	6979      	ldr	r1, [r7, #20]
 364:	68f8      	ldr	r0, [r7, #12]
 366:	f7ff ffc1 	bl	2ec <set_value>
 36a:	697b      	ldr	r3, [r7, #20]
 36c:	3301      	adds	r3, #1
 36e:	617b      	str	r3, [r7, #20]
 370:	697a      	ldr	r2, [r7, #20]
 372:	687b      	ldr	r3, [r7, #4]
 374:	429a      	cmp	r2, r3
 376:	d3f2      	bcc.n	35e <set_all+0x14>
 378:	bf00      	nop
 37a:	bf00      	nop
 37c:	3718      	adds	r7, #24
 37e:	46bd      	mov	sp, r7
 380:	bd80      	pop	{r7, pc}

00000382 <clear_all>:
 382:	b580      	push	{r7, lr}
 384:	b082      	sub	sp, #8
 386:	af00      	add	r7, sp, #0
 388:	6078      	str	r0, [r7, #4]
 38a:	6039      	str	r1, [r7, #0]
 38c:	683a      	ldr	r2, [r7, #0]
 38e:	2100      	movs	r1, #0
 390:	6878      	ldr	r0, [r7, #4]
 392:	f7ff ffda 	bl	34a <set_all>
 396:	bf00      	nop
 398:	3708      	adds	r7, #8
 39a:	46bd      	mov	sp, r7
 39c:	bd80      	pop	{r7, pc}
	...

000003a0 <SystemCoreClockUpdate>:
 3a0:	b480      	push	{r7}
 3a2:	b089      	sub	sp, #36	; 0x24
 3a4:	af00      	add	r7, sp, #0
 3a6:	4ba8      	ldr	r3, [pc, #672]	; (648 <SystemCoreClockUpdate+0x2a8>)
 3a8:	689b      	ldr	r3, [r3, #8]
 3aa:	0c1b      	lsrs	r3, r3, #16
 3ac:	f003 0307 	and.w	r3, r3, #7
 3b0:	60fb      	str	r3, [r7, #12]
 3b2:	2201      	movs	r2, #1
 3b4:	68fb      	ldr	r3, [r7, #12]
 3b6:	fa02 f303 	lsl.w	r3, r2, r3
 3ba:	72fb      	strb	r3, [r7, #11]
 3bc:	4ba2      	ldr	r3, [pc, #648]	; (648 <SystemCoreClockUpdate+0x2a8>)
 3be:	689b      	ldr	r3, [r3, #8]
 3c0:	f003 0307 	and.w	r3, r3, #7
 3c4:	607b      	str	r3, [r7, #4]
 3c6:	687b      	ldr	r3, [r7, #4]
 3c8:	2b05      	cmp	r3, #5
 3ca:	f200 8163 	bhi.w	694 <SystemCoreClockUpdate+0x2f4>
 3ce:	a201      	add	r2, pc, #4	; (adr r2, 3d4 <SystemCoreClockUpdate+0x34>)
 3d0:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 3d4:	000003ed 	.word	0x000003ed
 3d8:	0000046d 	.word	0x0000046d
 3dc:	0000047f 	.word	0x0000047f
 3e0:	000004ad 	.word	0x000004ad
 3e4:	000005cd 	.word	0x000005cd
 3e8:	000005dd 	.word	0x000005dd
 3ec:	4b97      	ldr	r3, [pc, #604]	; (64c <SystemCoreClockUpdate+0x2ac>)
 3ee:	781b      	ldrb	r3, [r3, #0]
 3f0:	b2db      	uxtb	r3, r3
 3f2:	2b00      	cmp	r3, #0
 3f4:	d031      	beq.n	45a <SystemCoreClockUpdate+0xba>
 3f6:	4b94      	ldr	r3, [pc, #592]	; (648 <SystemCoreClockUpdate+0x2a8>)
 3f8:	f646 125a 	movw	r2, #26970	; 0x695a
 3fc:	601a      	str	r2, [r3, #0]
 3fe:	4b92      	ldr	r3, [pc, #584]	; (648 <SystemCoreClockUpdate+0x2a8>)
 400:	6d1b      	ldr	r3, [r3, #80]	; 0x50
 402:	4a91      	ldr	r2, [pc, #580]	; (648 <SystemCoreClockUpdate+0x2a8>)
 404:	f043 0301 	orr.w	r3, r3, #1
 408:	6513      	str	r3, [r2, #80]	; 0x50
 40a:	4b8f      	ldr	r3, [pc, #572]	; (648 <SystemCoreClockUpdate+0x2a8>)
 40c:	2201      	movs	r2, #1
 40e:	601a      	str	r2, [r3, #0]
 410:	4b8e      	ldr	r3, [pc, #568]	; (64c <SystemCoreClockUpdate+0x2ac>)
 412:	781b      	ldrb	r3, [r3, #0]
 414:	b2db      	uxtb	r3, r3
 416:	2b00      	cmp	r3, #0
 418:	d016      	beq.n	448 <SystemCoreClockUpdate+0xa8>
 41a:	4b8d      	ldr	r3, [pc, #564]	; (650 <SystemCoreClockUpdate+0x2b0>)
 41c:	781b      	ldrb	r3, [r3, #0]
 41e:	b2db      	uxtb	r3, r3
 420:	2b00      	cmp	r3, #0
 422:	d008      	beq.n	436 <SystemCoreClockUpdate+0x96>
 424:	7afb      	ldrb	r3, [r7, #11]
 426:	f44f 32fa 	mov.w	r2, #128000	; 0x1f400
 42a:	fb92 f3f3 	sdiv	r3, r2, r3
 42e:	461a      	mov	r2, r3
 430:	4b88      	ldr	r3, [pc, #544]	; (654 <SystemCoreClockUpdate+0x2b4>)
 432:	601a      	str	r2, [r3, #0]
 434:	e12e      	b.n	694 <SystemCoreClockUpdate+0x2f4>
 436:	7afb      	ldrb	r3, [r7, #11]
 438:	f44f 42fa 	mov.w	r2, #32000	; 0x7d00
 43c:	fb92 f3f3 	sdiv	r3, r2, r3
 440:	461a      	mov	r2, r3
 442:	4b84      	ldr	r3, [pc, #528]	; (654 <SystemCoreClockUpdate+0x2b4>)
 444:	601a      	str	r2, [r3, #0]
 446:	e125      	b.n	694 <SystemCoreClockUpdate+0x2f4>
 448:	7afb      	ldrb	r3, [r7, #11]
 44a:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 44e:	fb92 f3f3 	sdiv	r3, r2, r3
 452:	461a      	mov	r2, r3
 454:	4b7f      	ldr	r3, [pc, #508]	; (654 <SystemCoreClockUpdate+0x2b4>)
 456:	601a      	str	r2, [r3, #0]
 458:	e11c      	b.n	694 <SystemCoreClockUpdate+0x2f4>
 45a:	7afb      	ldrb	r3, [r7, #11]
 45c:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 460:	fb92 f3f3 	sdiv	r3, r2, r3
 464:	461a      	mov	r2, r3
 466:	4b7b      	ldr	r3, [pc, #492]	; (654 <SystemCoreClockUpdate+0x2b4>)
 468:	601a      	str	r2, [r3, #0]
 46a:	e113      	b.n	694 <SystemCoreClockUpdate+0x2f4>
 46c:	7afb      	ldrb	r3, [r7, #11]
 46e:	f242 7210 	movw	r2, #10000	; 0x2710
 472:	fb92 f3f3 	sdiv	r3, r2, r3
 476:	461a      	mov	r2, r3
 478:	4b76      	ldr	r3, [pc, #472]	; (654 <SystemCoreClockUpdate+0x2b4>)
 47a:	601a      	str	r2, [r3, #0]
 47c:	e10a      	b.n	694 <SystemCoreClockUpdate+0x2f4>
 47e:	4b74      	ldr	r3, [pc, #464]	; (650 <SystemCoreClockUpdate+0x2b0>)
 480:	781b      	ldrb	r3, [r3, #0]
 482:	b2db      	uxtb	r3, r3
 484:	2b00      	cmp	r3, #0
 486:	d008      	beq.n	49a <SystemCoreClockUpdate+0xfa>
 488:	7afb      	ldrb	r3, [r7, #11]
 48a:	f44f 32fa 	mov.w	r2, #128000	; 0x1f400
 48e:	fb92 f3f3 	sdiv	r3, r2, r3
 492:	461a      	mov	r2, r3
 494:	4b6f      	ldr	r3, [pc, #444]	; (654 <SystemCoreClockUpdate+0x2b4>)
 496:	601a      	str	r2, [r3, #0]
 498:	e0fc      	b.n	694 <SystemCoreClockUpdate+0x2f4>
 49a:	7afb      	ldrb	r3, [r7, #11]
 49c:	f44f 42fa 	mov.w	r2, #32000	; 0x7d00
 4a0:	fb92 f3f3 	sdiv	r3, r2, r3
 4a4:	461a      	mov	r2, r3
 4a6:	4b6b      	ldr	r3, [pc, #428]	; (654 <SystemCoreClockUpdate+0x2b4>)
 4a8:	601a      	str	r2, [r3, #0]
 4aa:	e0f3      	b.n	694 <SystemCoreClockUpdate+0x2f4>
 4ac:	4b66      	ldr	r3, [pc, #408]	; (648 <SystemCoreClockUpdate+0x2a8>)
 4ae:	685b      	ldr	r3, [r3, #4]
 4b0:	b21b      	sxth	r3, r3
 4b2:	f3c3 0309 	ubfx	r3, r3, #0, #10
 4b6:	827b      	strh	r3, [r7, #18]
 4b8:	4b63      	ldr	r3, [pc, #396]	; (648 <SystemCoreClockUpdate+0x2a8>)
 4ba:	685b      	ldr	r3, [r3, #4]
 4bc:	f403 23e0 	and.w	r3, r3, #458752	; 0x70000
 4c0:	f5b3 2fa0 	cmp.w	r3, #327680	; 0x50000
 4c4:	d029      	beq.n	51a <SystemCoreClockUpdate+0x17a>
 4c6:	f5b3 2fa0 	cmp.w	r3, #327680	; 0x50000
 4ca:	d829      	bhi.n	520 <SystemCoreClockUpdate+0x180>
 4cc:	f5b3 2f80 	cmp.w	r3, #262144	; 0x40000
 4d0:	d020      	beq.n	514 <SystemCoreClockUpdate+0x174>
 4d2:	f5b3 2f80 	cmp.w	r3, #262144	; 0x40000
 4d6:	d823      	bhi.n	520 <SystemCoreClockUpdate+0x180>
 4d8:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 4dc:	d017      	beq.n	50e <SystemCoreClockUpdate+0x16e>
 4de:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 4e2:	d81d      	bhi.n	520 <SystemCoreClockUpdate+0x180>
 4e4:	f5b3 3f00 	cmp.w	r3, #131072	; 0x20000
 4e8:	d00e      	beq.n	508 <SystemCoreClockUpdate+0x168>
 4ea:	f5b3 3f00 	cmp.w	r3, #131072	; 0x20000
 4ee:	d817      	bhi.n	520 <SystemCoreClockUpdate+0x180>
 4f0:	2b00      	cmp	r3, #0
 4f2:	d003      	beq.n	4fc <SystemCoreClockUpdate+0x15c>
 4f4:	f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
 4f8:	d003      	beq.n	502 <SystemCoreClockUpdate+0x162>
 4fa:	e011      	b.n	520 <SystemCoreClockUpdate+0x180>
 4fc:	4b56      	ldr	r3, [pc, #344]	; (658 <SystemCoreClockUpdate+0x2b8>)
 4fe:	617b      	str	r3, [r7, #20]
 500:	e00e      	b.n	520 <SystemCoreClockUpdate+0x180>
 502:	4b56      	ldr	r3, [pc, #344]	; (65c <SystemCoreClockUpdate+0x2bc>)
 504:	617b      	str	r3, [r7, #20]
 506:	e00b      	b.n	520 <SystemCoreClockUpdate+0x180>
 508:	4b55      	ldr	r3, [pc, #340]	; (660 <SystemCoreClockUpdate+0x2c0>)
 50a:	617b      	str	r3, [r7, #20]
 50c:	e008      	b.n	520 <SystemCoreClockUpdate+0x180>
 50e:	4b55      	ldr	r3, [pc, #340]	; (664 <SystemCoreClockUpdate+0x2c4>)
 510:	617b      	str	r3, [r7, #20]
 512:	e005      	b.n	520 <SystemCoreClockUpdate+0x180>
 514:	4b54      	ldr	r3, [pc, #336]	; (668 <SystemCoreClockUpdate+0x2c8>)
 516:	617b      	str	r3, [r7, #20]
 518:	e002      	b.n	520 <SystemCoreClockUpdate+0x180>
 51a:	4b54      	ldr	r3, [pc, #336]	; (66c <SystemCoreClockUpdate+0x2cc>)
 51c:	617b      	str	r3, [r7, #20]
 51e:	bf00      	nop
 520:	f9b7 3012 	ldrsh.w	r3, [r7, #18]
 524:	2b00      	cmp	r3, #0
 526:	d103      	bne.n	530 <SystemCoreClockUpdate+0x190>
 528:	4a4a      	ldr	r2, [pc, #296]	; (654 <SystemCoreClockUpdate+0x2b4>)
 52a:	697b      	ldr	r3, [r7, #20]
 52c:	6013      	str	r3, [r2, #0]
 52e:	e0b1      	b.n	694 <SystemCoreClockUpdate+0x2f4>
 530:	8a7b      	ldrh	r3, [r7, #18]
 532:	f403 5380 	and.w	r3, r3, #4096	; 0x1000
 536:	2b00      	cmp	r3, #0
 538:	d005      	beq.n	546 <SystemCoreClockUpdate+0x1a6>
 53a:	8a7b      	ldrh	r3, [r7, #18]
 53c:	ea6f 5303 	mvn.w	r3, r3, lsl #20
 540:	ea6f 5313 	mvn.w	r3, r3, lsr #20
 544:	827b      	strh	r3, [r7, #18]
 546:	4b4a      	ldr	r3, [pc, #296]	; (670 <SystemCoreClockUpdate+0x2d0>)
 548:	781b      	ldrb	r3, [r3, #0]
 54a:	b2db      	uxtb	r3, r3
 54c:	2b00      	cmp	r3, #0
 54e:	d006      	beq.n	55e <SystemCoreClockUpdate+0x1be>
 550:	4b48      	ldr	r3, [pc, #288]	; (674 <SystemCoreClockUpdate+0x2d4>)
 552:	681b      	ldr	r3, [r3, #0]
 554:	61fb      	str	r3, [r7, #28]
 556:	4b48      	ldr	r3, [pc, #288]	; (678 <SystemCoreClockUpdate+0x2d8>)
 558:	6edb      	ldr	r3, [r3, #108]	; 0x6c
 55a:	61bb      	str	r3, [r7, #24]
 55c:	e005      	b.n	56a <SystemCoreClockUpdate+0x1ca>
 55e:	4b47      	ldr	r3, [pc, #284]	; (67c <SystemCoreClockUpdate+0x2dc>)
 560:	681b      	ldr	r3, [r3, #0]
 562:	61fb      	str	r3, [r7, #28]
 564:	4b44      	ldr	r3, [pc, #272]	; (678 <SystemCoreClockUpdate+0x2d8>)
 566:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 568:	61bb      	str	r3, [r7, #24]
 56a:	697b      	ldr	r3, [r7, #20]
 56c:	ee07 3a90 	vmov	s15, r3
 570:	eef8 6a67 	vcvt.f32.u32	s13, s15
 574:	f9b7 3012 	ldrsh.w	r3, [r7, #18]
 578:	ee07 3a90 	vmov	s15, r3
 57c:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
 580:	edd7 7a07 	vldr	s15, [r7, #28]
 584:	ee27 6a27 	vmul.f32	s12, s14, s15
 588:	69bb      	ldr	r3, [r7, #24]
 58a:	f5c3 7340 	rsb	r3, r3, #768	; 0x300
 58e:	ee07 3a90 	vmov	s15, r3
 592:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
 596:	edd7 7a07 	vldr	s15, [r7, #28]
 59a:	ee67 7a27 	vmul.f32	s15, s14, s15
 59e:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
 5a2:	ee77 7a87 	vadd.f32	s15, s15, s14
 5a6:	eeb2 7a00 	vmov.f32	s14, #32	; 0x41000000  8.0
 5aa:	ee27 7a87 	vmul.f32	s14, s15, s14
 5ae:	eec6 7a07 	vdiv.f32	s15, s12, s14
 5b2:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
 5b6:	ee37 7a67 	vsub.f32	s14, s14, s15
 5ba:	eec6 7a87 	vdiv.f32	s15, s13, s14
 5be:	eefc 7ae7 	vcvt.u32.f32	s15, s15
 5c2:	ee17 2a90 	vmov	r2, s15
 5c6:	4b23      	ldr	r3, [pc, #140]	; (654 <SystemCoreClockUpdate+0x2b4>)
 5c8:	601a      	str	r2, [r3, #0]
 5ca:	e063      	b.n	694 <SystemCoreClockUpdate+0x2f4>
 5cc:	7afb      	ldrb	r3, [r7, #11]
 5ce:	4a26      	ldr	r2, [pc, #152]	; (668 <SystemCoreClockUpdate+0x2c8>)
 5d0:	fb92 f3f3 	sdiv	r3, r2, r3
 5d4:	461a      	mov	r2, r3
 5d6:	4b1f      	ldr	r3, [pc, #124]	; (654 <SystemCoreClockUpdate+0x2b4>)
 5d8:	601a      	str	r2, [r3, #0]
 5da:	e05b      	b.n	694 <SystemCoreClockUpdate+0x2f4>
 5dc:	4b28      	ldr	r3, [pc, #160]	; (680 <SystemCoreClockUpdate+0x2e0>)
 5de:	781b      	ldrb	r3, [r3, #0]
 5e0:	b2db      	uxtb	r3, r3
 5e2:	2b00      	cmp	r3, #0
 5e4:	d04e      	beq.n	684 <SystemCoreClockUpdate+0x2e4>
 5e6:	4b18      	ldr	r3, [pc, #96]	; (648 <SystemCoreClockUpdate+0x2a8>)
 5e8:	f646 125a 	movw	r2, #26970	; 0x695a
 5ec:	601a      	str	r2, [r3, #0]
 5ee:	4b16      	ldr	r3, [pc, #88]	; (648 <SystemCoreClockUpdate+0x2a8>)
 5f0:	6d1b      	ldr	r3, [r3, #80]	; 0x50
 5f2:	4a15      	ldr	r2, [pc, #84]	; (648 <SystemCoreClockUpdate+0x2a8>)
 5f4:	f043 0302 	orr.w	r3, r3, #2
 5f8:	6513      	str	r3, [r2, #80]	; 0x50
 5fa:	4b13      	ldr	r3, [pc, #76]	; (648 <SystemCoreClockUpdate+0x2a8>)
 5fc:	2201      	movs	r2, #1
 5fe:	601a      	str	r2, [r3, #0]
 600:	4b1f      	ldr	r3, [pc, #124]	; (680 <SystemCoreClockUpdate+0x2e0>)
 602:	781b      	ldrb	r3, [r3, #0]
 604:	b2db      	uxtb	r3, r3
 606:	2b00      	cmp	r3, #0
 608:	d016      	beq.n	638 <SystemCoreClockUpdate+0x298>
 60a:	4b11      	ldr	r3, [pc, #68]	; (650 <SystemCoreClockUpdate+0x2b0>)
 60c:	781b      	ldrb	r3, [r3, #0]
 60e:	b2db      	uxtb	r3, r3
 610:	2b00      	cmp	r3, #0
 612:	d008      	beq.n	626 <SystemCoreClockUpdate+0x286>
 614:	7afb      	ldrb	r3, [r7, #11]
 616:	f44f 32fa 	mov.w	r2, #128000	; 0x1f400
 61a:	fb92 f3f3 	sdiv	r3, r2, r3
 61e:	461a      	mov	r2, r3
 620:	4b0c      	ldr	r3, [pc, #48]	; (654 <SystemCoreClockUpdate+0x2b4>)
 622:	601a      	str	r2, [r3, #0]
 624:	e035      	b.n	692 <SystemCoreClockUpdate+0x2f2>
 626:	7afb      	ldrb	r3, [r7, #11]
 628:	f44f 42fa 	mov.w	r2, #32000	; 0x7d00
 62c:	fb92 f3f3 	sdiv	r3, r2, r3
 630:	461a      	mov	r2, r3
 632:	4b08      	ldr	r3, [pc, #32]	; (654 <SystemCoreClockUpdate+0x2b4>)
 634:	601a      	str	r2, [r3, #0]
 636:	e02c      	b.n	692 <SystemCoreClockUpdate+0x2f2>
 638:	7afb      	ldrb	r3, [r7, #11]
 63a:	4a0c      	ldr	r2, [pc, #48]	; (66c <SystemCoreClockUpdate+0x2cc>)
 63c:	fb92 f3f3 	sdiv	r3, r2, r3
 640:	461a      	mov	r2, r3
 642:	4b04      	ldr	r3, [pc, #16]	; (654 <SystemCoreClockUpdate+0x2b4>)
 644:	601a      	str	r2, [r3, #0]
 646:	e024      	b.n	692 <SystemCoreClockUpdate+0x2f2>
 648:	40010400 	.word	0x40010400
 64c:	42208900 	.word	0x42208900
 650:	4220863c 	.word	0x4220863c
 654:	20000004 	.word	0x20000004
 658:	0016e360 	.word	0x0016e360
 65c:	002dc6c0 	.word	0x002dc6c0
 660:	005b8d80 	.word	0x005b8d80
 664:	00b71b00 	.word	0x00b71b00
 668:	016e3600 	.word	0x016e3600
 66c:	02dc6c00 	.word	0x02dc6c00
 670:	422080d8 	.word	0x422080d8
 674:	00201084 	.word	0x00201084
 678:	00201000 	.word	0x00201000
 67c:	00201064 	.word	0x00201064
 680:	42208904 	.word	0x42208904
 684:	7afb      	ldrb	r3, [r7, #11]
 686:	4a06      	ldr	r2, [pc, #24]	; (6a0 <SystemCoreClockUpdate+0x300>)
 688:	fb92 f3f3 	sdiv	r3, r2, r3
 68c:	461a      	mov	r2, r3
 68e:	4b05      	ldr	r3, [pc, #20]	; (6a4 <SystemCoreClockUpdate+0x304>)
 690:	601a      	str	r2, [r3, #0]
 692:	bf00      	nop
 694:	bf00      	nop
 696:	3724      	adds	r7, #36	; 0x24
 698:	46bd      	mov	sp, r7
 69a:	f85d 7b04 	ldr.w	r7, [sp], #4
 69e:	4770      	bx	lr
 6a0:	02dc6c00 	.word	0x02dc6c00
 6a4:	20000004 	.word	0x20000004

000006a8 <SystemInit>:
 6a8:	b480      	push	{r7}
 6aa:	af00      	add	r7, sp, #0
 6ac:	4b19      	ldr	r3, [pc, #100]	; (714 <SystemInit+0x6c>)
 6ae:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 6b2:	4a18      	ldr	r2, [pc, #96]	; (714 <SystemInit+0x6c>)
 6b4:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 6b8:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 6bc:	4b16      	ldr	r3, [pc, #88]	; (718 <SystemInit+0x70>)
 6be:	f44f 42b5 	mov.w	r2, #23168	; 0x5a80
 6c2:	819a      	strh	r2, [r3, #12]
 6c4:	4b15      	ldr	r3, [pc, #84]	; (71c <SystemInit+0x74>)
 6c6:	2280      	movs	r2, #128	; 0x80
 6c8:	615a      	str	r2, [r3, #20]
 6ca:	4b15      	ldr	r3, [pc, #84]	; (720 <SystemInit+0x78>)
 6cc:	f646 125a 	movw	r2, #26970	; 0x695a
 6d0:	601a      	str	r2, [r3, #0]
 6d2:	4b13      	ldr	r3, [pc, #76]	; (720 <SystemInit+0x78>)
 6d4:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 6d8:	605a      	str	r2, [r3, #4]
 6da:	4b11      	ldr	r3, [pc, #68]	; (720 <SystemInit+0x78>)
 6dc:	689b      	ldr	r3, [r3, #8]
 6de:	f023 1307 	bic.w	r3, r3, #458759	; 0x70007
 6e2:	4a0f      	ldr	r2, [pc, #60]	; (720 <SystemInit+0x78>)
 6e4:	f043 0303 	orr.w	r3, r3, #3
 6e8:	6093      	str	r3, [r2, #8]
 6ea:	4b0d      	ldr	r3, [pc, #52]	; (720 <SystemInit+0x78>)
 6ec:	2200      	movs	r2, #0
 6ee:	601a      	str	r2, [r3, #0]
 6f0:	4b0c      	ldr	r3, [pc, #48]	; (724 <SystemInit+0x7c>)
 6f2:	691b      	ldr	r3, [r3, #16]
 6f4:	4a0b      	ldr	r2, [pc, #44]	; (724 <SystemInit+0x7c>)
 6f6:	f023 0330 	bic.w	r3, r3, #48	; 0x30
 6fa:	6113      	str	r3, [r2, #16]
 6fc:	4b09      	ldr	r3, [pc, #36]	; (724 <SystemInit+0x7c>)
 6fe:	695b      	ldr	r3, [r3, #20]
 700:	4a08      	ldr	r2, [pc, #32]	; (724 <SystemInit+0x7c>)
 702:	f023 0330 	bic.w	r3, r3, #48	; 0x30
 706:	6153      	str	r3, [r2, #20]
 708:	bf00      	nop
 70a:	46bd      	mov	sp, r7
 70c:	f85d 7b04 	ldr.w	r7, [sp], #4
 710:	4770      	bx	lr
 712:	bf00      	nop
 714:	e000ed00 	.word	0xe000ed00
 718:	40004800 	.word	0x40004800
 71c:	e0043000 	.word	0xe0043000
 720:	40010400 	.word	0x40010400
 724:	40011000 	.word	0x40011000

00000728 <atexit>:
 728:	2300      	movs	r3, #0
 72a:	4601      	mov	r1, r0
 72c:	461a      	mov	r2, r3
 72e:	4618      	mov	r0, r3
 730:	f000 b89e 	b.w	870 <__register_exitproc>

00000734 <exit>:
 734:	b508      	push	{r3, lr}
 736:	2100      	movs	r1, #0
 738:	4604      	mov	r4, r0
 73a:	f000 f8cd 	bl	8d8 <__call_exitprocs>
 73e:	4b04      	ldr	r3, [pc, #16]	; (750 <exit+0x1c>)
 740:	6818      	ldr	r0, [r3, #0]
 742:	6bc3      	ldr	r3, [r0, #60]	; 0x3c
 744:	b103      	cbz	r3, 748 <exit+0x14>
 746:	4798      	blx	r3
 748:	4620      	mov	r0, r4
 74a:	f000 f913 	bl	974 <_exit>
 74e:	bf00      	nop
 750:	00000a48 	.word	0x00000a48

00000754 <__libc_fini_array>:
 754:	b538      	push	{r3, r4, r5, lr}
 756:	4c0a      	ldr	r4, [pc, #40]	; (780 <__libc_fini_array+0x2c>)
 758:	4d0a      	ldr	r5, [pc, #40]	; (784 <__libc_fini_array+0x30>)
 75a:	1b64      	subs	r4, r4, r5
 75c:	10a4      	asrs	r4, r4, #2
 75e:	d00a      	beq.n	776 <__libc_fini_array+0x22>
 760:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 764:	3b01      	subs	r3, #1
 766:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 76a:	3c01      	subs	r4, #1
 76c:	f855 3904 	ldr.w	r3, [r5], #-4
 770:	4798      	blx	r3
 772:	2c00      	cmp	r4, #0
 774:	d1f9      	bne.n	76a <__libc_fini_array+0x16>
 776:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 77a:	f000 b911 	b.w	9a0 <_fini>
 77e:	bf00      	nop
	...

00000788 <__libc_init_array>:
 788:	b570      	push	{r4, r5, r6, lr}
 78a:	4e0d      	ldr	r6, [pc, #52]	; (7c0 <__libc_init_array+0x38>)
 78c:	4d0d      	ldr	r5, [pc, #52]	; (7c4 <__libc_init_array+0x3c>)
 78e:	1b76      	subs	r6, r6, r5
 790:	10b6      	asrs	r6, r6, #2
 792:	d006      	beq.n	7a2 <__libc_init_array+0x1a>
 794:	2400      	movs	r4, #0
 796:	3401      	adds	r4, #1
 798:	f855 3b04 	ldr.w	r3, [r5], #4
 79c:	4798      	blx	r3
 79e:	42a6      	cmp	r6, r4
 7a0:	d1f9      	bne.n	796 <__libc_init_array+0xe>
 7a2:	4e09      	ldr	r6, [pc, #36]	; (7c8 <__libc_init_array+0x40>)
 7a4:	4d09      	ldr	r5, [pc, #36]	; (7cc <__libc_init_array+0x44>)
 7a6:	1b76      	subs	r6, r6, r5
 7a8:	f000 f8f4 	bl	994 <_init>
 7ac:	10b6      	asrs	r6, r6, #2
 7ae:	d006      	beq.n	7be <__libc_init_array+0x36>
 7b0:	2400      	movs	r4, #0
 7b2:	3401      	adds	r4, #1
 7b4:	f855 3b04 	ldr.w	r3, [r5], #4
 7b8:	4798      	blx	r3
 7ba:	42a6      	cmp	r6, r4
 7bc:	d1f9      	bne.n	7b2 <__libc_init_array+0x2a>
 7be:	bd70      	pop	{r4, r5, r6, pc}
	...
 7c8:	00000994 	.word	0x00000994
 7cc:	0000098c 	.word	0x0000098c

000007d0 <memset>:
 7d0:	b4f0      	push	{r4, r5, r6, r7}
 7d2:	0786      	lsls	r6, r0, #30
 7d4:	d046      	beq.n	864 <memset+0x94>
 7d6:	1e54      	subs	r4, r2, #1
 7d8:	2a00      	cmp	r2, #0
 7da:	d03c      	beq.n	856 <memset+0x86>
 7dc:	b2ca      	uxtb	r2, r1
 7de:	4603      	mov	r3, r0
 7e0:	e002      	b.n	7e8 <memset+0x18>
 7e2:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 7e6:	d336      	bcc.n	856 <memset+0x86>
 7e8:	f803 2b01 	strb.w	r2, [r3], #1
 7ec:	079d      	lsls	r5, r3, #30
 7ee:	d1f8      	bne.n	7e2 <memset+0x12>
 7f0:	2c03      	cmp	r4, #3
 7f2:	d929      	bls.n	848 <memset+0x78>
 7f4:	b2cd      	uxtb	r5, r1
 7f6:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 7fa:	2c0f      	cmp	r4, #15
 7fc:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 800:	d933      	bls.n	86a <memset+0x9a>
 802:	f1a4 0610 	sub.w	r6, r4, #16
 806:	0936      	lsrs	r6, r6, #4
 808:	f103 0720 	add.w	r7, r3, #32
 80c:	eb07 1706 	add.w	r7, r7, r6, lsl #4
 810:	f103 0210 	add.w	r2, r3, #16
 814:	e942 5504 	strd	r5, r5, [r2, #-16]
 818:	e942 5502 	strd	r5, r5, [r2, #-8]
 81c:	3210      	adds	r2, #16
 81e:	42ba      	cmp	r2, r7
 820:	d1f8      	bne.n	814 <memset+0x44>
 822:	1c72      	adds	r2, r6, #1
 824:	f014 0f0c 	tst.w	r4, #12
 828:	eb03 1202 	add.w	r2, r3, r2, lsl #4
 82c:	f004 060f 	and.w	r6, r4, #15
 830:	d013      	beq.n	85a <memset+0x8a>
 832:	1f33      	subs	r3, r6, #4
 834:	f023 0303 	bic.w	r3, r3, #3
 838:	3304      	adds	r3, #4
 83a:	4413      	add	r3, r2
 83c:	f842 5b04 	str.w	r5, [r2], #4
 840:	4293      	cmp	r3, r2
 842:	d1fb      	bne.n	83c <memset+0x6c>
 844:	f006 0403 	and.w	r4, r6, #3
 848:	b12c      	cbz	r4, 856 <memset+0x86>
 84a:	b2c9      	uxtb	r1, r1
 84c:	441c      	add	r4, r3
 84e:	f803 1b01 	strb.w	r1, [r3], #1
 852:	429c      	cmp	r4, r3
 854:	d1fb      	bne.n	84e <memset+0x7e>
 856:	bcf0      	pop	{r4, r5, r6, r7}
 858:	4770      	bx	lr
 85a:	4634      	mov	r4, r6
 85c:	4613      	mov	r3, r2
 85e:	2c00      	cmp	r4, #0
 860:	d1f3      	bne.n	84a <memset+0x7a>
 862:	e7f8      	b.n	856 <memset+0x86>
 864:	4614      	mov	r4, r2
 866:	4603      	mov	r3, r0
 868:	e7c2      	b.n	7f0 <memset+0x20>
 86a:	461a      	mov	r2, r3
 86c:	4626      	mov	r6, r4
 86e:	e7e0      	b.n	832 <memset+0x62>

00000870 <__register_exitproc>:
 870:	b4f0      	push	{r4, r5, r6, r7}
 872:	4c18      	ldr	r4, [pc, #96]	; (8d4 <__register_exitproc+0x64>)
 874:	6825      	ldr	r5, [r4, #0]
 876:	f8d5 4148 	ldr.w	r4, [r5, #328]	; 0x148
 87a:	b314      	cbz	r4, 8c2 <__register_exitproc+0x52>
 87c:	6865      	ldr	r5, [r4, #4]
 87e:	2d1f      	cmp	r5, #31
 880:	dc24      	bgt.n	8cc <__register_exitproc+0x5c>
 882:	b938      	cbnz	r0, 894 <__register_exitproc+0x24>
 884:	1cab      	adds	r3, r5, #2
 886:	3501      	adds	r5, #1
 888:	6065      	str	r5, [r4, #4]
 88a:	f844 1023 	str.w	r1, [r4, r3, lsl #2]
 88e:	2000      	movs	r0, #0
 890:	bcf0      	pop	{r4, r5, r6, r7}
 892:	4770      	bx	lr
 894:	eb04 0685 	add.w	r6, r4, r5, lsl #2
 898:	2701      	movs	r7, #1
 89a:	f8c6 2088 	str.w	r2, [r6, #136]	; 0x88
 89e:	fa07 f205 	lsl.w	r2, r7, r5
 8a2:	f8d4 7188 	ldr.w	r7, [r4, #392]	; 0x188
 8a6:	2802      	cmp	r0, #2
 8a8:	ea47 0702 	orr.w	r7, r7, r2
 8ac:	f8c4 7188 	str.w	r7, [r4, #392]	; 0x188
 8b0:	f8c6 3108 	str.w	r3, [r6, #264]	; 0x108
 8b4:	d1e6      	bne.n	884 <__register_exitproc+0x14>
 8b6:	f8d4 318c 	ldr.w	r3, [r4, #396]	; 0x18c
 8ba:	431a      	orrs	r2, r3
 8bc:	f8c4 218c 	str.w	r2, [r4, #396]	; 0x18c
 8c0:	e7e0      	b.n	884 <__register_exitproc+0x14>
 8c2:	f505 74a6 	add.w	r4, r5, #332	; 0x14c
 8c6:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
 8ca:	e7d7      	b.n	87c <__register_exitproc+0xc>
 8cc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8d0:	e7de      	b.n	890 <__register_exitproc+0x20>
 8d2:	bf00      	nop
 8d4:	00000a48 	.word	0x00000a48

000008d8 <__call_exitprocs>:
 8d8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8dc:	4b24      	ldr	r3, [pc, #144]	; (970 <__call_exitprocs+0x98>)
 8de:	b083      	sub	sp, #12
 8e0:	f8d3 b000 	ldr.w	fp, [r3]
 8e4:	9001      	str	r0, [sp, #4]
 8e6:	468a      	mov	sl, r1
 8e8:	f04f 0800 	mov.w	r8, #0
 8ec:	f8db 6148 	ldr.w	r6, [fp, #328]	; 0x148
 8f0:	b196      	cbz	r6, 918 <__call_exitprocs+0x40>
 8f2:	6874      	ldr	r4, [r6, #4]
 8f4:	1e65      	subs	r5, r4, #1
 8f6:	d40f      	bmi.n	918 <__call_exitprocs+0x40>
 8f8:	3401      	adds	r4, #1
 8fa:	eb06 0484 	add.w	r4, r6, r4, lsl #2
 8fe:	2701      	movs	r7, #1
 900:	f1ba 0f00 	cmp.w	sl, #0
 904:	d00b      	beq.n	91e <__call_exitprocs+0x46>
 906:	f8d4 3100 	ldr.w	r3, [r4, #256]	; 0x100
 90a:	4553      	cmp	r3, sl
 90c:	d007      	beq.n	91e <__call_exitprocs+0x46>
 90e:	3d01      	subs	r5, #1
 910:	1c6b      	adds	r3, r5, #1
 912:	f1a4 0404 	sub.w	r4, r4, #4
 916:	d1f3      	bne.n	900 <__call_exitprocs+0x28>
 918:	b003      	add	sp, #12
 91a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 91e:	6873      	ldr	r3, [r6, #4]
 920:	6822      	ldr	r2, [r4, #0]
 922:	3b01      	subs	r3, #1
 924:	42ab      	cmp	r3, r5
 926:	bf0c      	ite	eq
 928:	6075      	streq	r5, [r6, #4]
 92a:	f8c4 8000 	strne.w	r8, [r4]
 92e:	2a00      	cmp	r2, #0
 930:	d0ed      	beq.n	90e <__call_exitprocs+0x36>
 932:	f8d6 1188 	ldr.w	r1, [r6, #392]	; 0x188
 936:	f8d6 9004 	ldr.w	r9, [r6, #4]
 93a:	fa07 fc05 	lsl.w	ip, r7, r5
 93e:	ea1c 0f01 	tst.w	ip, r1
 942:	d108      	bne.n	956 <__call_exitprocs+0x7e>
 944:	4790      	blx	r2
 946:	6872      	ldr	r2, [r6, #4]
 948:	454a      	cmp	r2, r9
 94a:	d1cf      	bne.n	8ec <__call_exitprocs+0x14>
 94c:	f8db 3148 	ldr.w	r3, [fp, #328]	; 0x148
 950:	42b3      	cmp	r3, r6
 952:	d0dc      	beq.n	90e <__call_exitprocs+0x36>
 954:	e7ca      	b.n	8ec <__call_exitprocs+0x14>
 956:	f8d6 318c 	ldr.w	r3, [r6, #396]	; 0x18c
 95a:	f8d4 1080 	ldr.w	r1, [r4, #128]	; 0x80
 95e:	ea1c 0f03 	tst.w	ip, r3
 962:	d102      	bne.n	96a <__call_exitprocs+0x92>
 964:	9801      	ldr	r0, [sp, #4]
 966:	4790      	blx	r2
 968:	e7ed      	b.n	946 <__call_exitprocs+0x6e>
 96a:	4608      	mov	r0, r1
 96c:	4790      	blx	r2
 96e:	e7ea      	b.n	946 <__call_exitprocs+0x6e>
 970:	00000a48 	.word	0x00000a48

00000974 <_exit>:
 974:	e7fe      	b.n	974 <_exit>
 976:	bf00      	nop

00000978 <register_fini>:
 978:	4b02      	ldr	r3, [pc, #8]	; (984 <register_fini+0xc>)
 97a:	b113      	cbz	r3, 982 <register_fini+0xa>
 97c:	4802      	ldr	r0, [pc, #8]	; (988 <register_fini+0x10>)
 97e:	f7ff bed3 	b.w	728 <atexit>
 982:	4770      	bx	lr
 984:	00000000 	.word	0x00000000
 988:	00000755 	.word	0x00000755

0000098c <__frame_dummy_init_array_entry>:
 98c:	000001a9 00000979                       ....y...

00000994 <_init>:
 994:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 996:	bf00      	nop
 998:	bcf8      	pop	{r3, r4, r5, r6, r7}
 99a:	bc08      	pop	{r3}
 99c:	469e      	mov	lr, r3
 99e:	4770      	bx	lr

000009a0 <_fini>:
 9a0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 9a2:	bf00      	nop

000009a4 <__do_global_dtors_aux_fini_array_entry>:
 9a4:	0181 0000 bcf8 bc08 469e 4770               .........FpG

Disassembly of section .text:Reset_Handler:

000009b0 <Reset_Handler>:
 9b0:	4668      	mov	r0, sp
 9b2:	f020 0107 	bic.w	r1, r0, #7
 9b6:	468d      	mov	sp, r1
 9b8:	b581      	push	{r0, r7, lr}
 9ba:	b083      	sub	sp, #12
 9bc:	af00      	add	r7, sp, #0
 9be:	4b12      	ldr	r3, [pc, #72]	; (a08 <zero_loop+0x20>)
 9c0:	607b      	str	r3, [r7, #4]
 9c2:	4b12      	ldr	r3, [pc, #72]	; (a0c <zero_loop+0x24>)
 9c4:	603b      	str	r3, [r7, #0]
 9c6:	e007      	b.n	9d8 <Reset_Handler+0x28>
 9c8:	687a      	ldr	r2, [r7, #4]
 9ca:	1d13      	adds	r3, r2, #4
 9cc:	607b      	str	r3, [r7, #4]
 9ce:	683b      	ldr	r3, [r7, #0]
 9d0:	1d19      	adds	r1, r3, #4
 9d2:	6039      	str	r1, [r7, #0]
 9d4:	6812      	ldr	r2, [r2, #0]
 9d6:	601a      	str	r2, [r3, #0]
 9d8:	683b      	ldr	r3, [r7, #0]
 9da:	4a0d      	ldr	r2, [pc, #52]	; (a10 <zero_loop+0x28>)
 9dc:	4293      	cmp	r3, r2
 9de:	d3f3      	bcc.n	9c8 <Reset_Handler+0x18>
 9e0:	480c      	ldr	r0, [pc, #48]	; (a14 <zero_loop+0x2c>)
 9e2:	490d      	ldr	r1, [pc, #52]	; (a18 <zero_loop+0x30>)
 9e4:	f04f 0200 	mov.w	r2, #0

000009e8 <zero_loop>:
 9e8:	4288      	cmp	r0, r1
 9ea:	bfb8      	it	lt
 9ec:	f840 2b04 	strlt.w	r2, [r0], #4
 9f0:	dbfa      	blt.n	9e8 <zero_loop>
 9f2:	f7ff fe59 	bl	6a8 <SystemInit>
 9f6:	f7ff fc1f 	bl	238 <main>
 9fa:	bf00      	nop
 9fc:	370c      	adds	r7, #12
 9fe:	46bd      	mov	sp, r7
 a00:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
 a04:	4685      	mov	sp, r0
 a06:	4770      	bx	lr
 a08:	00000a58 	.word	0x00000a58
 a0c:	20000000 	.word	0x20000000
 a10:	20000438 	.word	0x20000438
 a14:	20000438 	.word	0x20000438
 a18:	20000460 	.word	0x20000460

Disassembly of section .text:NMI_Handler:

00000a1c <NMI_Handler>:
 a1c:	4668      	mov	r0, sp
 a1e:	f020 0107 	bic.w	r1, r0, #7
 a22:	468d      	mov	sp, r1
 a24:	b481      	push	{r0, r7}
 a26:	af00      	add	r7, sp, #0
 a28:	e7fe      	b.n	a28 <NMI_Handler+0xc>

Disassembly of section .text:HardFault_Handler:

00000a2a <HardFault_Handler>:
 a2a:	4668      	mov	r0, sp
 a2c:	f020 0107 	bic.w	r1, r0, #7
 a30:	468d      	mov	sp, r1
 a32:	b481      	push	{r0, r7}
 a34:	af00      	add	r7, sp, #0
 a36:	e7fe      	b.n	a36 <HardFault_Handler+0xc>

Disassembly of section .text:Default_Handler:

00000a38 <Default_Handler>:
 a38:	4668      	mov	r0, sp
 a3a:	f020 0107 	bic.w	r1, r0, #7
 a3e:	468d      	mov	sp, r1
 a40:	b481      	push	{r0, r7}
 a42:	af00      	add	r7, sp, #0
 a44:	e7fe      	b.n	a44 <Default_Handler+0xc>
