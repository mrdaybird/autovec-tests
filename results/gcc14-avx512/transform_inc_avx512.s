	.file	"transform_inc.cpp"
	.text
	.p2align 4
	.globl	_Z18transform_inc_epi8RSt6vectorIaSaIaEE
	.type	_Z18transform_inc_epi8RSt6vectorIaSaIaEE, @function
_Z18transform_inc_epi8RSt6vectorIaSaIaEE:
.LFB1535:
	.cfi_startproc
	movq	(%rdi), %rsi
	movq	8(%rdi), %rdi
	cmpq	%rsi, %rdi
	je	.L21
	movq	%rdi, %r8
	movq	%rsi, %rax
	subq	%rsi, %r8
	leaq	-1(%r8), %rdx
	cmpq	$62, %rdx
	jbe	.L9
	movq	%r8, %r9
	movl	$42, %edx
	andq	$-64, %r9
	vpbroadcastb	%edx, %zmm1
	leaq	(%rsi,%r9), %rcx
	.p2align 4,,10
	.p2align 3
.L4:
	vpaddb	(%rax), %zmm1, %zmm0
	addq	$64, %rax
	vmovdqu8	%zmm0, -64(%rax)
	cmpq	%rcx, %rax
	jne	.L4
	cmpq	%r9, %r8
	je	.L20
.L3:
	subq	%r9, %r8
	leaq	-1(%r8), %rdx
	cmpq	$30, %rdx
	jbe	.L6
	movl	$707406378, %edx
	addq	%r9, %rsi
	vpbroadcastd	%edx, %ymm0
	movq	%r8, %rdx
	vpaddb	(%rsi), %ymm0, %ymm0
	andq	$-32, %rdx
	addq	%rdx, %rax
	andl	$31, %r8d
	vmovdqu8	%ymm0, (%rsi)
	je	.L20
.L6:
	movq	%rdi, %rdx
	subq	%rax, %rdx
	andl	$1, %edx
	je	.L8
	addb	$42, (%rax)
	addq	$1, %rax
	cmpq	%rax, %rdi
	je	.L20
	.p2align 4,,10
	.p2align 3
.L8:
	addb	$42, (%rax)
	addb	$42, 1(%rax)
	addq	$2, %rax
	cmpq	%rax, %rdi
	jne	.L8
.L20:
	vzeroupper
.L21:
	ret
.L9:
	xorl	%r9d, %r9d
	jmp	.L3
	.cfi_endproc
.LFE1535:
	.size	_Z18transform_inc_epi8RSt6vectorIaSaIaEE, .-_Z18transform_inc_epi8RSt6vectorIaSaIaEE
	.p2align 4
	.globl	_Z19transform_inc_epi32RSt6vectorIiSaIiEE
	.type	_Z19transform_inc_epi32RSt6vectorIiSaIiEE, @function
_Z19transform_inc_epi32RSt6vectorIiSaIiEE:
.LFB1539:
	.cfi_startproc
	movq	(%rdi), %rsi
	movq	8(%rdi), %rdi
	cmpq	%rsi, %rdi
	je	.L45
	leaq	-4(%rdi), %rdx
	movq	%rsi, %rax
	subq	%rsi, %rdx
	movq	%rdx, %r8
	shrq	$2, %r8
	leaq	1(%r8), %r9
	cmpq	$56, %rdx
	jbe	.L30
	movq	%r9, %rdx
	movl	$42, %ecx
	shrq	$4, %rdx
	vpbroadcastd	%ecx, %zmm1
	salq	$6, %rdx
	addq	%rsi, %rdx
	.p2align 4,,10
	.p2align 3
.L26:
	vpaddd	(%rax), %zmm1, %zmm0
	addq	$64, %rax
	vmovdqu32	%zmm0, -64(%rax)
	cmpq	%rax, %rdx
	jne	.L26
	movq	%r9, %rdx
	andq	$-16, %rdx
	andl	$15, %r9d
	leaq	(%rsi,%rdx,4), %rax
	je	.L44
.L25:
	subq	%rdx, %r8
	leaq	1(%r8), %rcx
	cmpq	$6, %r8
	jbe	.L28
	leaq	(%rsi,%rdx,4), %rsi
	movl	$42, %edx
	vpbroadcastd	%edx, %ymm0
	movq	%rcx, %rdx
	vpaddd	(%rsi), %ymm0, %ymm0
	andq	$-8, %rdx
	andl	$7, %ecx
	vmovdqu	%ymm0, (%rsi)
	leaq	(%rax,%rdx,4), %rax
	je	.L44
.L28:
	leaq	4(%rax), %rdx
	addl	$42, (%rax)
	cmpq	%rdx, %rdi
	je	.L44
	leaq	8(%rax), %rdx
	addl	$42, 4(%rax)
	cmpq	%rdx, %rdi
	je	.L44
	leaq	12(%rax), %rdx
	addl	$42, 8(%rax)
	cmpq	%rdx, %rdi
	je	.L44
	leaq	16(%rax), %rdx
	addl	$42, 12(%rax)
	cmpq	%rdx, %rdi
	je	.L44
	leaq	20(%rax), %rdx
	addl	$42, 16(%rax)
	cmpq	%rdx, %rdi
	je	.L44
	leaq	24(%rax), %rdx
	addl	$42, 20(%rax)
	cmpq	%rdx, %rdi
	je	.L44
	addl	$42, 24(%rax)
	vzeroupper
	ret
	.p2align 4,,10
	.p2align 3
.L44:
	vzeroupper
.L45:
	ret
.L30:
	xorl	%edx, %edx
	jmp	.L25
	.cfi_endproc
.LFE1539:
	.size	_Z19transform_inc_epi32RSt6vectorIiSaIiEE, .-_Z19transform_inc_epi32RSt6vectorIiSaIiEE
	.ident	"GCC: (GNU) 14.1.0"
	.section	.note.GNU-stack,"",@progbits
