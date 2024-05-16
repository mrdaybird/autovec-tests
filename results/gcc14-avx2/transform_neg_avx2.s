	.file	"transform_neg.cpp"
	.text
	.p2align 4
	.globl	_Z18transform_neg_epi8RSt6vectorIaSaIaEE
	.type	_Z18transform_neg_epi8RSt6vectorIaSaIaEE, @function
_Z18transform_neg_epi8RSt6vectorIaSaIaEE:
.LFB1535:
	.cfi_startproc
	movq	(%rdi), %rsi
	movq	8(%rdi), %rcx
	cmpq	%rsi, %rcx
	je	.L14
	movq	%rcx, %rdi
	movq	%rsi, %rax
	subq	%rsi, %rdi
	leaq	-1(%rdi), %rdx
	cmpq	$30, %rdx
	jbe	.L8
	movq	%rdi, %r8
	vpxor	%xmm1, %xmm1, %xmm1
	andq	$-32, %r8
	leaq	(%rsi,%r8), %rdx
	.p2align 4,,10
	.p2align 3
.L4:
	vpsubb	(%rax), %ymm1, %ymm0
	addq	$32, %rax
	vmovdqu	%ymm0, -32(%rax)
	cmpq	%rax, %rdx
	jne	.L4
	movq	%rdx, %rax
	cmpq	%r8, %rdi
	je	.L16
	vzeroupper
.L3:
	subq	%r8, %rdi
	leaq	-1(%rdi), %rdx
	cmpq	$14, %rdx
	jbe	.L6
	addq	%r8, %rsi
	movq	%rdi, %rdx
	vpxor	%xmm0, %xmm0, %xmm0
	andq	$-16, %rdx
	vpsubb	(%rsi), %xmm0, %xmm0
	addq	%rdx, %rax
	andl	$15, %edi
	vmovdqu	%xmm0, (%rsi)
	je	.L14
.L6:
	leaq	1(%rax), %rdx
	negb	(%rax)
	cmpq	%rdx, %rcx
	je	.L14
	leaq	2(%rax), %rdx
	negb	1(%rax)
	cmpq	%rdx, %rcx
	je	.L14
	leaq	3(%rax), %rdx
	negb	2(%rax)
	cmpq	%rdx, %rcx
	je	.L14
	leaq	4(%rax), %rdx
	negb	3(%rax)
	cmpq	%rdx, %rcx
	je	.L14
	leaq	5(%rax), %rdx
	negb	4(%rax)
	cmpq	%rdx, %rcx
	je	.L14
	leaq	6(%rax), %rdx
	negb	5(%rax)
	cmpq	%rdx, %rcx
	je	.L14
	leaq	7(%rax), %rdx
	negb	6(%rax)
	cmpq	%rdx, %rcx
	je	.L14
	leaq	8(%rax), %rdx
	negb	7(%rax)
	cmpq	%rdx, %rcx
	je	.L14
	leaq	9(%rax), %rdx
	negb	8(%rax)
	cmpq	%rdx, %rcx
	je	.L14
	leaq	10(%rax), %rdx
	negb	9(%rax)
	cmpq	%rdx, %rcx
	je	.L14
	leaq	11(%rax), %rdx
	negb	10(%rax)
	cmpq	%rdx, %rcx
	je	.L14
	leaq	12(%rax), %rdx
	negb	11(%rax)
	cmpq	%rdx, %rcx
	je	.L14
	leaq	13(%rax), %rdx
	negb	12(%rax)
	cmpq	%rdx, %rcx
	je	.L14
	leaq	14(%rax), %rdx
	negb	13(%rax)
	cmpq	%rdx, %rcx
	je	.L14
	negb	14(%rax)
.L14:
	ret
.L8:
	xorl	%r8d, %r8d
	jmp	.L3
.L16:
	vzeroupper
	ret
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
	movq	8(%rdi), %rdi
	cmpq	%rcx, %rdi
	je	.L33
	leaq	-4(%rdi), %rdx
	movq	%rcx, %rax
	subq	%rcx, %rdx
	movq	%rdx, %rsi
	shrq	$2, %rsi
	leaq	1(%rsi), %r8
	cmpq	$24, %rdx
	jbe	.L24
	movq	%r8, %rdx
	vpxor	%xmm1, %xmm1, %xmm1
	shrq	$3, %rdx
	salq	$5, %rdx
	addq	%rcx, %rdx
	.p2align 4,,10
	.p2align 3
.L20:
	vpsubd	(%rax), %ymm1, %ymm0
	addq	$32, %rax
	vmovdqu	%ymm0, -32(%rax)
	cmpq	%rax, %rdx
	jne	.L20
	movq	%r8, %rdx
	andq	$-8, %rdx
	andl	$7, %r8d
	leaq	(%rcx,%rdx,4), %rax
	je	.L34
	vzeroupper
.L19:
	subq	%rdx, %rsi
	leaq	1(%rsi), %r8
	cmpq	$2, %rsi
	jbe	.L22
	leaq	(%rcx,%rdx,4), %rdx
	vpxor	%xmm0, %xmm0, %xmm0
	vpsubd	(%rdx), %xmm0, %xmm0
	vmovdqu	%xmm0, (%rdx)
	movq	%r8, %rdx
	andq	$-4, %rdx
	andl	$3, %r8d
	leaq	(%rax,%rdx,4), %rax
	je	.L33
.L22:
	leaq	4(%rax), %rdx
	negl	(%rax)
	cmpq	%rdx, %rdi
	je	.L33
	leaq	8(%rax), %rdx
	negl	4(%rax)
	cmpq	%rdx, %rdi
	je	.L33
	negl	8(%rax)
.L33:
	ret
	.p2align 4,,10
	.p2align 3
.L34:
	vzeroupper
	ret
.L24:
	xorl	%edx, %edx
	jmp	.L19
	.cfi_endproc
.LFE1539:
	.size	_Z19transform_neg_epi32RSt6vectorIiSaIiEE, .-_Z19transform_neg_epi32RSt6vectorIiSaIiEE
	.ident	"GCC: (GNU) 14.1.0"
	.section	.note.GNU-stack,"",@progbits
