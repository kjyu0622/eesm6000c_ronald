	.file	"fir.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/ubuntu/Desktop/EESM6000C/eesm6000c_ronald/lab4/Lab4-2/lab-caravel_fir/testbench/counter_la_fir" "fir.c"
	.globl	taps
	.data
	.align	2
	.type	taps, @object
	.size	taps, 44
taps:
	.word	0
	.word	-10
	.word	-9
	.word	23
	.word	56
	.word	63
	.word	56
	.word	23
	.word	-9
	.word	-10
	.word	0
	.globl	outputbuffer
	.bss
	.align	2
	.type	outputbuffer, @object
	.size	outputbuffer, 256
outputbuffer:
	.zero	256
	.section	.mprjram,"ax",@progbits
	.align	2
	.globl	initfir
	.type	initfir, @function
initfir:
.LFB0:
	.file 1 "fir.c"
	.loc 1 6 61
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 8 6
	li	a5,805306368
	addi	a5,a5,16
	.loc 1 8 40
	li	a4,64
	sw	a4,0(a5)
	.loc 1 9 6
	li	a5,805306368
	addi	a5,a5,20
	.loc 1 9 40
	li	a4,11
	sw	a4,0(a5)
.LBB2:
	.loc 1 11 17
	sb	zero,-17(s0)
	.loc 1 11 5
	j	.L2
.L3:
	.loc 1 12 62 discriminator 3
	lbu	a5,-17(s0)
	lui	a4,%hi(taps)
	addi	a4,a4,%lo(taps)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a3,0(a5)
	.loc 1 12 49 discriminator 3
	lbu	a5,-17(s0)
	slli	a4,a5,2
	.loc 1 12 44 discriminator 3
	li	a5,805306368
	addi	a5,a5,64
	add	a5,a4,a5
	.loc 1 12 62 discriminator 3
	mv	a4,a3
	.loc 1 12 56 discriminator 3
	sw	a4,0(a5)
	.loc 1 11 29 discriminator 3
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L2:
	.loc 1 11 23 discriminator 1
	lbu	a4,-17(s0)
	li	a5,10
	bleu	a4,a5,.L3
.LBE2:
	.loc 1 14 1
	nop
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	initfir, .-initfir
	.align	2
	.globl	fir
	.type	fir, @function
fir:
.LFB1:
	.loc 1 16 56
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 17 2
	call	initfir
	.loc 1 19 6
	li	a5,805306368
	.loc 1 19 40
	li	a4,1
	sw	a4,0(a5)
.LBB3:
	.loc 1 20 19
	sh	zero,-18(s0)
	.loc 1 20 5
	j	.L5
.L6:
	.loc 1 21 47 discriminator 3
	lhu	a5,-18(s0)
	addi	a4,a5,1
	.loc 1 21 10 discriminator 3
	li	a5,805306368
	addi	a5,a5,128
	.loc 1 21 44 discriminator 3
	sw	a4,0(a5)
	.loc 1 22 28 discriminator 3
	li	a5,805306368
	addi	a5,a5,132
	lw	a4,0(a5)
	.loc 1 22 21 discriminator 3
	lhu	a5,-18(s0)
	.loc 1 22 28 discriminator 3
	mv	a3,a4
	.loc 1 22 25 discriminator 3
	lui	a4,%hi(outputbuffer)
	addi	a4,a4,%lo(outputbuffer)
	slli	a5,a5,2
	add	a5,a4,a5
	sw	a3,0(a5)
	.loc 1 20 31 discriminator 3
	lhu	a5,-18(s0)
	addi	a5,a5,1
	sh	a5,-18(s0)
.L5:
	.loc 1 20 25 discriminator 1
	lhu	a4,-18(s0)
	li	a5,63
	bleu	a4,a5,.L6
.LBE3:
	.loc 1 24 9
	lui	a5,%hi(outputbuffer)
	addi	a5,a5,%lo(outputbuffer)
	.loc 1 25 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	fir, .-fir
	.text
.Letext0:
	.file 2 "fir.h"
	.file 3 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint-gcc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x12a
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.4byte	.LASF16
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x3
	.4byte	0x3d
	.4byte	0x36
	.byte	0x4
	.4byte	0x36
	.byte	0xa
	.byte	0
	.byte	0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.byte	0x9
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x5
	.4byte	.LASF3
	.byte	0xf
	.4byte	0x26
	.byte	0x5
	.byte	0x3
	.4byte	taps
	.byte	0x3
	.4byte	0x3d
	.4byte	0x64
	.byte	0x4
	.4byte	0x36
	.byte	0x3f
	.byte	0
	.byte	0x5
	.4byte	.LASF4
	.byte	0x10
	.4byte	0x54
	.byte	0x5
	.byte	0x3
	.4byte	outputbuffer
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.byte	0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.byte	0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.byte	0x2
	.4byte	.LASF10
	.byte	0x2e
	.byte	0x17
	.4byte	0x9b
	.byte	0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x2
	.4byte	.LASF11
	.byte	0x31
	.byte	0x1c
	.4byte	0xad
	.byte	0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.byte	0x2
	.4byte	.LASF13
	.byte	0x34
	.byte	0x1b
	.4byte	0xbf
	.byte	0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.byte	0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF15
	.byte	0xa
	.string	"fir"
	.byte	0x1
	.byte	0x10
	.byte	0x33
	.4byte	0xfe
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0xfe
	.byte	0x6
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.byte	0x7
	.string	"i"
	.byte	0x14
	.byte	0x13
	.4byte	0xa2
	.byte	0x2
	.byte	0x91
	.byte	0x6e
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0x3d
	.byte	0xc
	.4byte	.LASF17
	.byte	0x1
	.byte	0x6
	.byte	0x33
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.byte	0x6
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.byte	0x7
	.string	"i"
	.byte	0xb
	.byte	0x11
	.4byte	0x90
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x3
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x2
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0x5
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0x21
	.byte	0x1
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0x1f
	.byte	0x1b
	.byte	0x1f
	.byte	0x55
	.byte	0x17
	.byte	0x11
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7a
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	0
	.4byte	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.4byte	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.LLRL0:
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x6
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"unsigned int"
.LASF3:
	.string	"taps"
.LASF14:
	.string	"long unsigned int"
.LASF15:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint8_t"
.LASF9:
	.string	"unsigned char"
.LASF17:
	.string	"initfir"
.LASF13:
	.string	"uint32_t"
.LASF7:
	.string	"long int"
.LASF12:
	.string	"short unsigned int"
.LASF5:
	.string	"signed char"
.LASF11:
	.string	"uint16_t"
.LASF6:
	.string	"short int"
.LASF16:
	.string	"GNU C17 12.1.0 -mabi=ilp32 -mtune=rocket -misa-spec=2.2 -march=rv32i -g -ffreestanding"
.LASF4:
	.string	"outputbuffer"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"fir.c"
.LASF1:
	.string	"/home/ubuntu/Desktop/EESM6000C/eesm6000c_ronald/lab4/Lab4-2/lab-caravel_fir/testbench/counter_la_fir"
	.ident	"GCC: (g1ea978e3066) 12.1.0"
