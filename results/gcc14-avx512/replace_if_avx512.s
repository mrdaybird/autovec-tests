	.file	"replace_if.cpp"
	.text
	.p2align 4
	.globl	_Z15replace_if_epi8RSt6vectorIaSaIaEE
	.type	_Z15replace_if_epi8RSt6vectorIaSaIaEE, @function
_Z15replace_if_epi8RSt6vectorIaSaIaEE:
.LFB1535:
	.cfi_startproc
	movq	8(%rdi), %rsi
	movq	(%rdi), %rdi
	cmpq	%rsi, %rdi
	je	.L26
	movq	%rsi, %r9
	movq	%rdi, %rax
	subq	%rdi, %r9
	leaq	-1(%r9), %rdx
	cmpq	$62, %rdx
	jbe	.L13
	movl	$13, %edx
	movq	%r9, %r10
	vpbroadcastb	%edx, %zmm2
	movl	$-12, %edx
	andq	$-64, %r10
	vpbroadcastb	%edx, %zmm1
	movl	$42, %edx
	leaq	(%rdi,%r10), %r8
	vpbroadcastb	%edx, %zmm3
	.p2align 4,,10
	.p2align 3
.L5:
	vmovdqu8	(%rax), %zmm0
	vpcmpb	$0, %zmm2, %zmm0, %k0
	vpcmpb	$0, %zmm1, %zmm0, %k3
	kmovq	%k0, %rdx
	kmovq	%k3, %rcx
	orq	%rcx, %rdx
	je	.L4
	kmovq	%rdx, %k1
	vmovdqu8	%zmm3, (%rax){%k1}
.L4:
	addq	$64, %rax
	cmpq	%r8, %rax
	jne	.L5
	cmpq	%r10, %r9
	je	.L25
.L3:
	subq	%r10, %r9
	leaq	-1(%r9), %rdx
	cmpq	$30, %rdx
	jbe	.L11
	addq	%r10, %rdi
	movl	$218959117, %edx
	movl	$-185273100, %ecx
	vmovdqu8	(%rdi), %ymm1
	vpbroadcastd	%edx, %ymm0
	vpcmpb	$0, %ymm0, %ymm1, %k4
	vpbroadcastd	%ecx, %ymm0
	vpcmpb	$0, %ymm0, %ymm1, %k5
	kmovd	%k4, %edx
	kmovd	%k5, %ecx
	orl	%ecx, %edx
	je	.L8
	movl	$707406378, %ecx
	kmovd	%edx, %k2
	vpbroadcastd	%ecx, %ymm0
	vmovdqu8	%ymm0, (%rdi){%k2}
.L8:
	movq	%r9, %rdx
	andq	$-32, %rdx
	addq	%rdx, %rax
	andl	$31, %r9d
	jne	.L11
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L28:
	addq	$1, %rax
	cmpq	%rax, %rsi
	je	.L25
.L11:
	movzbl	(%rax), %edx
	cmpb	$13, %dl
	je	.L10
	cmpb	$-12, %dl
	jne	.L28
.L10:
	movb	$42, (%rax)
	addq	$1, %rax
	cmpq	%rax, %rsi
	jne	.L11
.L25:
	vzeroupper
.L26:
	ret
.L13:
	xorl	%r10d, %r10d
	jmp	.L3
	.cfi_endproc
.LFE1535:
	.size	_Z15replace_if_epi8RSt6vectorIaSaIaEE, .-_Z15replace_if_epi8RSt6vectorIaSaIaEE
	.p2align 4
	.globl	_Z16replace_if_epi32RSt6vectorIiSaIiEE
	.type	_Z16replace_if_epi32RSt6vectorIiSaIiEE, @function
_Z16replace_if_epi32RSt6vectorIiSaIiEE:
.LFB1539:
	.cfi_startproc
	movq	8(%rdi), %rsi
	movq	(%rdi), %rdi
	cmpq	%rsi, %rdi
	je	.L85
	movq	%rsi, %rdx
	movq	%rdi, %rax
	subq	%rdi, %rdx
	leaq	-4(%rdx), %rcx
	cmpq	$120, %rcx
	jbe	.L50
	andl	$3, %edx
	jne	.L50
	movq	%rcx, %r8
	shrq	$2, %r8
	leaq	1(%r8), %r9
	cmpq	$248, %rcx
	jbe	.L32
	movl	$13, %ecx
	movq	%r9, %r10
	vmovdqa64	.LC9(%rip), %zmm3
	vmovdqa64	.LC10(%rip), %zmm6
	vpbroadcastb	%ecx, %zmm5
	movl	$-12, %ecx
	shrq	$6, %r10
	vpbroadcastb	%ecx, %zmm4
	movl	$42, %ecx
	vpbroadcastd	%ecx, %zmm2
	.p2align 4,,10
	.p2align 3
.L37:
	vmovdqu32	128(%rax), %zmm1
	vmovdqu32	(%rax), %zmm0
	vpermt2w	192(%rax), %zmm3, %zmm1
	vpermt2w	64(%rax), %zmm3, %zmm0
	vpermt2b	%zmm1, %zmm6, %zmm0
	vpcmpb	$0, %zmm5, %zmm0, %k1
	vpcmpb	$0, %zmm4, %zmm0, %k0
	korq	%k0, %k1, %k1
	kshiftrq	$32, %k1, %k2
	kshiftrd	$16, %k1, %k4
	kshiftrd	$16, %k2, %k3
	kortestw	%k1, %k1
	je	.L33
	vmovdqu32	%zmm2, (%rax){%k1}
.L33:
	kortestw	%k4, %k4
	je	.L34
	vmovdqu32	%zmm2, 64(%rax){%k4}
.L34:
	kortestw	%k2, %k2
	je	.L35
	vmovdqu32	%zmm2, 128(%rax){%k2}
.L35:
	kortestw	%k3, %k3
	je	.L36
	vmovdqu32	%zmm2, 192(%rax){%k3}
.L36:
	addq	$1, %rdx
	addq	$256, %rax
	cmpq	%rdx, %r10
	jne	.L37
	movq	%r9, %rdx
	andq	$-64, %rdx
	andl	$63, %r9d
	leaq	(%rdi,%rdx,4), %rax
	je	.L84
.L32:
	subq	%rdx, %r8
	leaq	1(%r8), %r9
	cmpq	$30, %r8
	jbe	.L46
	leaq	(%rdi,%rdx,4), %rdx
	movl	$218959117, %ecx
	vmovdqa	.LC12(%rip), %ymm0
	vmovdqu	(%rdx), %ymm2
	vmovdqu	64(%rdx), %ymm1
	vpermt2w	32(%rdx), %ymm0, %ymm2
	vpermt2w	96(%rdx), %ymm0, %ymm1
	vmovdqa	.LC13(%rip), %ymm0
	vpermi2b	%ymm1, %ymm2, %ymm0
	vpbroadcastd	%ecx, %ymm1
	movl	$-185273100, %ecx
	vpcmpb	$0, %ymm1, %ymm0, %k0
	vpbroadcastd	%ecx, %ymm1
	vpcmpb	$0, %ymm1, %ymm0, %k1
	kord	%k1, %k0, %k1
	kshiftrd	$16, %k1, %k2
	kmovw	%k1, %r8d
	kmovw	%k2, %edi
	kshiftrw	$8, %k1, %k1
	kshiftrw	$8, %k2, %k2
	testb	%r8b, %r8b
	je	.L40
	movl	$42, %ecx
	kmovb	%r8d, %k5
	vpbroadcastd	%ecx, %ymm0
	vmovdqu32	%ymm0, (%rdx){%k5}
.L40:
	kortestb	%k1, %k1
	je	.L41
	movl	$42, %ecx
	vpbroadcastd	%ecx, %ymm0
	vmovdqu32	%ymm0, 32(%rdx){%k1}
.L41:
	testb	%dil, %dil
	je	.L42
	movl	$42, %ecx
	kmovb	%edi, %k6
	vpbroadcastd	%ecx, %ymm0
	vmovdqu32	%ymm0, 64(%rdx){%k6}
.L42:
	kortestb	%k2, %k2
	je	.L43
	movl	$42, %ecx
	vpbroadcastd	%ecx, %ymm0
	vmovdqu32	%ymm0, 96(%rdx){%k2}
.L43:
	movq	%r9, %rdx
	andq	$-32, %rdx
	andl	$31, %r9d
	leaq	(%rax,%rdx,4), %rax
	jne	.L46
	jmp	.L84
	.p2align 4,,10
	.p2align 3
.L87:
	addq	$4, %rax
	cmpq	%rax, %rsi
	je	.L84
.L46:
	movl	(%rax), %edx
	cmpb	$13, %dl
	je	.L45
	cmpb	$-12, %dl
	jne	.L87
.L45:
	movl	$42, (%rax)
	addq	$4, %rax
	cmpq	%rax, %rsi
	jne	.L46
.L84:
	vzeroupper
.L85:
	ret
	.p2align 4,,10
	.p2align 3
.L53:
	movl	$42, (%rax)
	addq	$4, %rax
	cmpq	%rax, %rsi
	je	.L88
.L50:
	movl	(%rax), %edx
	cmpb	$-12, %dl
	je	.L53
	cmpb	$13, %dl
	je	.L53
	addq	$4, %rax
	cmpq	%rax, %rsi
	jne	.L50
.L88:
	ret
	.cfi_endproc
.LFE1539:
	.size	_Z16replace_if_epi32RSt6vectorIiSaIiEE, .-_Z16replace_if_epi32RSt6vectorIiSaIiEE
	.section	.rodata
	.align 64
.LC9:
	.value	0
	.value	2
	.value	4
	.value	6
	.value	8
	.value	10
	.value	12
	.value	14
	.value	16
	.value	18
	.value	20
	.value	22
	.value	24
	.value	26
	.value	28
	.value	30
	.value	32
	.value	34
	.value	36
	.value	38
	.value	40
	.value	42
	.value	44
	.value	46
	.value	48
	.value	50
	.value	52
	.value	54
	.value	56
	.value	58
	.value	60
	.value	62
	.align 64
.LC10:
	.byte	0
	.byte	2
	.byte	4
	.byte	6
	.byte	8
	.byte	10
	.byte	12
	.byte	14
	.byte	16
	.byte	18
	.byte	20
	.byte	22
	.byte	24
	.byte	26
	.byte	28
	.byte	30
	.byte	32
	.byte	34
	.byte	36
	.byte	38
	.byte	40
	.byte	42
	.byte	44
	.byte	46
	.byte	48
	.byte	50
	.byte	52
	.byte	54
	.byte	56
	.byte	58
	.byte	60
	.byte	62
	.byte	64
	.byte	66
	.byte	68
	.byte	70
	.byte	72
	.byte	74
	.byte	76
	.byte	78
	.byte	80
	.byte	82
	.byte	84
	.byte	86
	.byte	88
	.byte	90
	.byte	92
	.byte	94
	.byte	96
	.byte	98
	.byte	100
	.byte	102
	.byte	104
	.byte	106
	.byte	108
	.byte	110
	.byte	112
	.byte	114
	.byte	116
	.byte	118
	.byte	120
	.byte	122
	.byte	124
	.byte	126
	.set	.LC12,.LC9
	.set	.LC13,.LC10
	.ident	"GCC: (GNU) 14.1.0"
	.section	.note.GNU-stack,"",@progbits
