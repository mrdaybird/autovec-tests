	.file	"transform_neg.cpp"
	.text
	.p2align 4
	.globl	_Z18transform_neg_epi8RSt6vectorIaSaIaEE
	.type	_Z18transform_neg_epi8RSt6vectorIaSaIaEE, @function
_Z18transform_neg_epi8RSt6vectorIaSaIaEE:
.LFB1535:
	.cfi_startproc
	movq	(%rdi), %rsi
	movq	8(%rdi), %rdx
	cmpq	%rsi, %rdx
	je	.L16
	movq	%rdx, %rdi
	movq	%rsi, %rax
	subq	%rsi, %rdi
	leaq	-1(%rdi), %rcx
	cmpq	$62, %rcx
	jbe	.L9
	movq	%rdi, %r8
	vpxor	%xmm1, %xmm1, %xmm1
	andq	$-64, %r8
	leaq	(%rsi,%r8), %rcx
	.p2align 4,,10
	.p2align 3
.L4:
	vpsubb	(%rax), %zmm1, %zmm0
	addq	$64, %rax
	vmovdqu8	%zmm0, -64(%rax)
	cmpq	%rcx, %rax
	jne	.L4
	cmpq	%r8, %rdi
	je	.L15
.L3:
	subq	%r8, %rdi
	leaq	-1(%rdi), %rcx
	cmpq	$30, %rcx
	jbe	.L8
	addq	%r8, %rsi
	movq	%rdi, %rcx
	vpxor	%xmm0, %xmm0, %xmm0
	andq	$-32, %rcx
	vpsubb	(%rsi), %ymm0, %ymm0
	addq	%rcx, %rax
	andl	$31, %edi
	vmovdqu8	%ymm0, (%rsi)
	je	.L15
	.p2align 4,,10
	.p2align 3
.L8:
	negb	(%rax)
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L8
.L15:
	vzeroupper
.L16:
	ret
.L9:
	xorl	%r8d, %r8d
	jmp	.L3
	.cfi_endproc
.LFE1535:
	.size	_Z18transform_neg_epi8RSt6vectorIaSaIaEE, .-_Z18transform_neg_epi8RSt6vectorIaSaIaEE
	.p2align 4
	.globl	_Z19transform_neg_epi32RSt6vectorIiSaIiEE
	.type	_Z19transform_neg_epi32RSt6vectorIiSaIiEE, @function
_Z19transform_neg_epi32RSt6vectorIiSaIiEE:
.LFB1539:
	.cfi_startproc
	movq	(%rdi), %rcx
	movq	8(%rdi), %rsi
	cmpq	%rcx, %rsi
	je	.L40
	leaq	-4(%rsi), %rdx
	movq	%rcx, %rax
	subq	%rcx, %rdx
	movq	%rdx, %rdi
	shrq	$2, %rdi
	leaq	1(%rdi), %r8
	cmpq	$56, %rdx
	jbe	.L25
	movq	%r8, %rdx
	vpxor	%xmm1, %xmm1, %xmm1
	shrq	$4, %rdx
	salq	$6, %rdx
	addq	%rcx, %rdx
	.p2align 4,,10
	.p2align 3
.L21:
	vpsubd	(%rax), %zmm1, %zmm0
	addq	$64, %rax
	vmovdqu32	%zmm0, -64(%rax)
	cmpq	%rax, %rdx
	jne	.L21
	movq	%r8, %rdx
	andq	$-16, %rdx
	andl	$15, %r8d
	leaq	(%rcx,%rdx,4), %rax
	je	.L39
.L20:
	subq	%rdx, %rdi
	leaq	1(%rdi), %r8
	cmpq	$6, %rdi
	jbe	.L23
	leaq	(%rcx,%rdx,4), %rdx
	vpxor	%xmm0, %xmm0, %xmm0
	vpsubd	(%rdx), %ymm0, %ymm0
	vmovdqu	%ymm0, (%rdx)
	movq	%r8, %rdx
	andq	$-8, %rdx
	andl	$7, %r8d
	leaq	(%rax,%rdx,4), %rax
	je	.L39
.L23:
	leaq	4(%rax), %rdx
	negl	(%rax)
	cmpq	%rdx, %rsi
	je	.L39
	leaq	8(%rax), %rdx
	negl	4(%rax)
	cmpq	%rdx, %rsi
	je	.L39
	leaq	12(%rax), %rdx
	negl	8(%rax)
	cmpq	%rdx, %rsi
	je	.L39
	leaq	16(%rax), %rdx
	negl	12(%rax)
	cmpq	%rdx, %rsi
	je	.L39
	leaq	20(%rax), %rdx
	negl	16(%rax)
	cmpq	%rdx, %rsi
	je	.L39
	leaq	24(%rax), %rdx
	negl	20(%rax)
	cmpq	%rdx, %rsi
	je	.L39
	negl	24(%rax)
	vzeroupper
	ret
	.p2align 4,,10
	.p2align 3
.L39:
	vzeroupper
.L40:
	ret
.L25:
	xorl	%edx, %edx
	jmp	.L20
	.cfi_endproc
.LFE1539:
	.size	_Z19transform_neg_epi32RSt6vectorIiSaIiEE, .-_Z19transform_neg_epi32RSt6vectorIiSaIiEE
	.ident	"GCC: (GNU) 14.1.0"
	.section	.note.GNU-stack,"",@progbits
