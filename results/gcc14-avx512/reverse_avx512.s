	.file	"reverse.cpp"
	.text
	.p2align 4
	.globl	_Z12reverse_epi8RSt6vectorIaSaIaEE
	.type	_Z12reverse_epi8RSt6vectorIaSaIaEE, @function
_Z12reverse_epi8RSt6vectorIaSaIaEE:
.LFB1535:
	.cfi_startproc
	movq	8(%rdi), %r8
	movq	(%rdi), %rsi
	cmpq	%r8, %rsi
	je	.L26
	leaq	-1(%r8), %rdx
	cmpq	%rdx, %rsi
	jnb	.L26
	leaq	-2(%r8), %rcx
	movq	%rsi, %rax
	subq	%rsi, %rcx
	cmpq	$61, %rcx
	jbe	.L11
	movq	%rcx, %rdi
	shrq	%rdi
	movq	%rdi, %r10
	leaq	1(%rdi), %r9
	notq	%r10
	leaq	(%rsi,%r9), %r11
	addq	%r8, %r10
	cmpq	%r11, %r10
	jnb	.L14
	cmpq	%r8, %rsi
	jb	.L11
.L14:
	cmpq	$125, %rcx
	jbe	.L5
	movq	%r9, %r10
	leaq	-64(%r8), %rcx
	vmovdqa64	.LC0(%rip), %zmm1
	andq	$-64, %r10
	addq	%r10, %rsi
	.p2align 4,,10
	.p2align 3
.L6:
	vmovdqu8	(%rax), %zmm0
	vpermb	(%rcx), %zmm1, %zmm2
	addq	$64, %rax
	subq	$64, %rcx
	vpermb	%zmm0, %zmm1, %zmm0
	vmovdqu8	%zmm2, -64(%rax)
	vmovdqu8	%zmm0, 64(%rcx)
	cmpq	%rsi, %rax
	jne	.L6
	subq	%r10, %rdx
	movq	%rsi, %rax
	cmpq	%r10, %r9
	je	.L25
	subq	%r10, %rdi
	leaq	1(%rdi), %r9
	cmpq	$30, %rdi
	jbe	.L10
.L13:
	vmovdqu8	(%rsi), %ymm0
	subq	%r10, %r8
	movq	%r9, %rcx
	vmovdqa	.LC1(%rip), %ymm1
	andq	$-32, %rcx
	vpermb	-32(%r8), %ymm1, %ymm2
	vpermb	%ymm0, %ymm1, %ymm0
	subq	%rcx, %rdx
	addq	%rcx, %rax
	andl	$31, %r9d
	vmovdqu8	%ymm2, (%rsi)
	vmovdqu8	%ymm0, -32(%r8)
	je	.L25
	.p2align 4,,10
	.p2align 3
.L10:
	movzbl	(%rax), %ecx
	movzbl	(%rdx), %esi
	addq	$1, %rax
	subq	$1, %rdx
	movb	%sil, -1(%rax)
	movb	%cl, 1(%rdx)
	cmpq	%rdx, %rax
	jb	.L10
.L25:
	vzeroupper
.L26:
	ret
	.p2align 4,,10
	.p2align 3
.L11:
	movzbl	(%rax), %ecx
	movzbl	(%rdx), %esi
	addq	$1, %rax
	subq	$1, %rdx
	movb	%sil, -1(%rax)
	movb	%cl, 1(%rdx)
	cmpq	%rdx, %rax
	jb	.L11
	ret
.L5:
	movq	%rsi, %rax
	xorl	%r10d, %r10d
	jmp	.L13
	.cfi_endproc
.LFE1535:
	.size	_Z12reverse_epi8RSt6vectorIaSaIaEE, .-_Z12reverse_epi8RSt6vectorIaSaIaEE
	.p2align 4
	.globl	_Z13reverse_epi32RSt6vectorIiSaIiEE
	.type	_Z13reverse_epi32RSt6vectorIiSaIiEE, @function
_Z13reverse_epi32RSt6vectorIiSaIiEE:
.LFB1536:
	.cfi_startproc
	movq	8(%rdi), %r8
	movq	(%rdi), %rdi
	cmpq	%r8, %rdi
	je	.L62
	leaq	-4(%r8), %rcx
	cmpq	%rcx, %rdi
	jnb	.L62
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	-5(%r8), %rdx
	movq	%rdi, %rax
	subq	%rdi, %rdx
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	cmpq	$55, %rdx
	jbe	.L37
	movq	%rdx, %r10
	movq	%r8, %rbx
	shrq	$3, %r10
	leaq	1(%r10), %r9
	leaq	0(,%r9,4), %rsi
	leaq	(%rdi,%rsi), %r11
	subq	%rsi, %rbx
	cmpq	%r11, %rbx
	jnb	.L40
	cmpq	%r8, %rdi
	jb	.L37
.L40:
	cmpq	$119, %rdx
	jbe	.L32
	movq	%r9, %rsi
	leaq	-64(%r8), %rdx
	vmovdqa32	.LC2(%rip), %zmm1
	shrq	$4, %rsi
	salq	$6, %rsi
	addq	%rdi, %rsi
	.p2align 4,,10
	.p2align 3
.L33:
	vmovdqu32	(%rax), %zmm0
	vpermd	(%rdx), %zmm1, %zmm2
	addq	$64, %rax
	subq	$64, %rdx
	vpermd	%zmm0, %zmm1, %zmm0
	vmovdqu32	%zmm2, -64(%rax)
	vmovdqu32	%zmm0, 64(%rdx)
	cmpq	%rsi, %rax
	jne	.L33
	movq	%r9, %rdx
	movq	%rdi, %rax
	andq	$-16, %rdx
	movq	%rdx, %rsi
	negq	%rsi
	salq	$2, %rsi
	addq	%rsi, %rcx
	subq	%rsi, %rax
	andl	$15, %r9d
	je	.L59
	subq	%rdx, %r10
	leaq	1(%r10), %r9
	cmpq	$6, %r10
	jbe	.L35
.L39:
	vmovdqa	.LC3(%rip), %ymm1
	salq	$2, %rdx
	addq	%rdx, %rdi
	subq	%rdx, %r8
	movq	%r9, %rdx
	andq	$-8, %rdx
	vmovdqu	(%rdi), %ymm0
	vpermd	-32(%r8), %ymm1, %ymm2
	negq	%rdx
	salq	$2, %rdx
	vpermd	%ymm0, %ymm1, %ymm0
	vmovdqu	%ymm2, (%rdi)
	addq	%rdx, %rcx
	subq	%rdx, %rax
	andl	$7, %r9d
	vmovdqu	%ymm0, -32(%r8)
	je	.L59
.L35:
	movl	(%rax), %edx
	movl	(%rcx), %esi
	movl	%esi, (%rax)
	leaq	4(%rax), %rsi
	movl	%edx, (%rcx)
	leaq	-4(%rcx), %rdx
	cmpq	%rdx, %rsi
	jnb	.L59
	movl	4(%rax), %edx
	movl	-4(%rcx), %esi
	movl	%esi, 4(%rax)
	leaq	8(%rax), %rsi
	movl	%edx, -4(%rcx)
	leaq	-8(%rcx), %rdx
	cmpq	%rdx, %rsi
	jnb	.L59
	movl	8(%rax), %edx
	movl	-8(%rcx), %esi
	movl	%esi, 8(%rax)
	leaq	12(%rax), %rsi
	movl	%edx, -8(%rcx)
	leaq	-12(%rcx), %rdx
	cmpq	%rdx, %rsi
	jnb	.L59
	movl	12(%rax), %edx
	movl	-12(%rcx), %esi
	movl	%esi, 12(%rax)
	leaq	16(%rax), %rsi
	movl	%edx, -12(%rcx)
	leaq	-16(%rcx), %rdx
	cmpq	%rdx, %rsi
	jnb	.L59
	movl	16(%rax), %edx
	movl	-16(%rcx), %esi
	movl	%esi, 16(%rax)
	leaq	20(%rax), %rsi
	movl	%edx, -16(%rcx)
	leaq	-20(%rcx), %rdx
	cmpq	%rdx, %rsi
	jnb	.L59
	movl	20(%rax), %edx
	movl	-20(%rcx), %esi
	movl	%esi, 20(%rax)
	leaq	24(%rax), %rsi
	movl	%edx, -20(%rcx)
	leaq	-24(%rcx), %rdx
	cmpq	%rdx, %rsi
	jnb	.L59
	movl	24(%rax), %edx
	movl	-24(%rcx), %esi
	movl	%esi, 24(%rax)
	movl	%edx, -24(%rcx)
	vzeroupper
.L60:
	movq	-8(%rbp), %rbx
	leave
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L37:
	.cfi_restore_state
	movl	(%rax), %edx
	movl	(%rcx), %esi
	addq	$4, %rax
	subq	$4, %rcx
	movl	%esi, -4(%rax)
	movl	%edx, 4(%rcx)
	cmpq	%rcx, %rax
	jb	.L37
	jmp	.L60
	.p2align 4,,10
	.p2align 3
.L59:
	vzeroupper
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L62:
	.cfi_restore 3
	.cfi_restore 6
	ret
.L32:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	movq	%rdi, %rax
	xorl	%edx, %edx
	jmp	.L39
	.cfi_endproc
.LFE1536:
	.size	_Z13reverse_epi32RSt6vectorIiSaIiEE, .-_Z13reverse_epi32RSt6vectorIiSaIiEE
	.section	.rodata
	.align 64
.LC0:
	.byte	63
	.byte	62
	.byte	61
	.byte	60
	.byte	59
	.byte	58
	.byte	57
	.byte	56
	.byte	55
	.byte	54
	.byte	53
	.byte	52
	.byte	51
	.byte	50
	.byte	49
	.byte	48
	.byte	47
	.byte	46
	.byte	45
	.byte	44
	.byte	43
	.byte	42
	.byte	41
	.byte	40
	.byte	39
	.byte	38
	.byte	37
	.byte	36
	.byte	35
	.byte	34
	.byte	33
	.byte	32
	.byte	31
	.byte	30
	.byte	29
	.byte	28
	.byte	27
	.byte	26
	.byte	25
	.byte	24
	.byte	23
	.byte	22
	.byte	21
	.byte	20
	.byte	19
	.byte	18
	.byte	17
	.byte	16
	.byte	15
	.byte	14
	.byte	13
	.byte	12
	.byte	11
	.byte	10
	.byte	9
	.byte	8
	.byte	7
	.byte	6
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	0
	.set	.LC1,.LC0+32
	.align 64
.LC2:
	.long	15
	.long	14
	.long	13
	.long	12
	.long	11
	.long	10
	.long	9
	.long	8
	.long	7
	.long	6
	.long	5
	.long	4
	.long	3
	.long	2
	.long	1
	.long	0
	.set	.LC3,.LC2+32
	.ident	"GCC: (GNU) 14.1.0"
	.section	.note.GNU-stack,"",@progbits
