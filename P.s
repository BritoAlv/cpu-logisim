	.file	1 "P.cpp"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	main
$LFB0 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,24,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	.cfi_def_cfa_offset 24
	sw	$fp,20($sp)
	.cfi_offset 30, -4
	move	$fp,$sp
	.cfi_def_cfa_register 30
	li	$2,1			# 0x1
	sw	$2,0($fp)
	li	$2,1			# 0x1
	sw	$2,4($fp)
	li	$2,1			# 0x1
	sw	$2,8($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L3:
	lw	$3,0($fp)
	lw	$2,4($fp)
	addu	$2,$3,$2
	sw	$2,12($fp)
	lw	$2,4($fp)
	sw	$2,0($fp)
	lw	$2,12($fp)
	sw	$2,4($fp)
	lw	$2,8($fp)
	addiu	$2,$2,1
	sw	$2,8($fp)
$L2:
	lw	$2,8($fp)
	slt	$2,$2,10
	bne	$2,$0,$L3
	nop

	move	$2,$0
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.cfi_endproc
$LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 12.3.0-1ubuntu1) 12.3.0"
	.section	.note.GNU-stack,"",@progbits
