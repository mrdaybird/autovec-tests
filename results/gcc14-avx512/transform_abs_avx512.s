	.file	"transform_abs.cpp"
	.text
	.p2align 4
	.globl	_Z18transform_abs_epi8RSt6vectorIaSaIaEE
	.type	_Z18transform_abs_epi8RSt6vectorIaSaIaEE, @function
_Z18transform_abs_epi8RSt6vectorIaSaIaEE:
.LFB1535:
	.cfi_startproc
	movq	(%rdi), %rcx
	movq	8(%rdi), %rsi
	cmpq	%rcx, %rsi
	je	.L16
	movq	%rsi, %rdi
	movq	%rcx, %rax
	subq	%rcx, %rdi
	leaq	-1(%rdi), %rdx
	cmpq	$62, %rdx
	jbe	.L9
	movq	%rdi, %r8
	andq	$-64, %r8
	leaq	(%rcx,%r8), %rdx
	.p2align 4,,10
	.p2align 3
.L4:
	vpabsb	(%rax), %zmm0
	addq	$64, %rax
	vmovdqu8	%zmm0, -64(%rax)
	cmpq	%rdx, %rax
	jne	.L4
	cmpq	%r8, %rdi
	je	.L15
.L3:
	subq	%r8, %rdi
	leaq	-1(%rdi), %rdx
	cmpq	$30, %rdx
	jbe	.L8
	movq	%rdi, %rdx
	addq	%r8, %rcx
	andq	$-32, %rdx
	vpabsb	(%rcx), %ymm0
	vmovdqu8	%ymm0, (%rcx)
	addq	%rdx, %rax
	andl	$31, %edi
	je	.L15
	.p2align 4,,10
	.p2align 3
.L8:
	movzbl	(%rax), %ecx
	movl	%ecx, %edx
	negb	%dl
	cmovs	%ecx, %edx
	addq	$1, %rax
	movb	%dl, -1(%rax)
	cmpq	%rax, %rsi
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
	.size	_Z18transform_abs_epi8RSt6vectorIaSaIaEE, .-_Z18transform_abs_epi8RSt6vectorIaSaIaEE
	.p2align 4
	.globl	_Z19transform_abs_epi32RSt6vectorIiSaIiEE
	.type	_Z19transform_abs_epi32RSt6vectorIiSaIiEE, @function
_Z19transform_abs_epi32RSt6vectorIiSaIiEE:
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
	shrq	$4, %rdx
	salq	$6, %rdx
	addq	%rcx, %rdx
	.p2align 4,,10
	.p2align 3
.L21:
	vpabsd	(%rax), %zmm0
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
	vpabsd	(%rdx), %ymm0
	vmovdqu	%ymm0, (%rdx)
	movq	%r8, %rdx
	andq	$-8, %rdx
	andl	$7, %r8d
	leaq	(%rax,%rdx,4), %rax
	je	.L39
.L23:
	vmovd	(%rax), %xmm0
	leaq	4(%rax), %rdx
	vpabsd	%xmm0, %xmm0
	vmovd	%xmm0, (%rax)
	cmpq	%rdx, %rsi
	je	.L39
	vmovd	4(%rax), %xmm0
	leaq	8(%rax), %rdx
	vpabsd	%xmm0, %xmm0
	vmovd	%xmm0, 4(%rax)
	cmpq	%rdx, %rsi
	je	.L39
	vmovd	8(%rax), %xmm0
	leaq	12(%rax), %rdx
	vpabsd	%xmm0, %xmm0
	vmovd	%xmm0, 8(%rax)
	cmpq	%rdx, %rsi
	je	.L39
	vmovd	12(%rax), %xmm0
	leaq	16(%rax), %rdx
	vpabsd	%xmm0, %xmm0
	vmovd	%xmm0, 12(%rax)
	cmpq	%rdx, %rsi
	je	.L39
	vmovd	16(%rax), %xmm0
	leaq	20(%rax), %rdx
	vpabsd	%xmm0, %xmm0
	vmovd	%xmm0, 16(%rax)
	cmpq	%rdx, %rsi
	je	.L39
	vmovd	20(%rax), %xmm0
	leaq	24(%rax), %rdx
	vpabsd	%xmm0, %xmm0
	vmovd	%xmm0, 20(%rax)
	cmpq	%rdx, %rsi
	je	.L39
	vmovd	24(%rax), %xmm0
	vpabsd	%xmm0, %xmm0
	vmovd	%xmm0, 24(%rax)
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
	.size	_Z19transform_abs_epi32RSt6vectorIiSaIiEE, .-_Z19transform_abs_epi32RSt6vectorIiSaIiEE
	.ident	"GCC: (GNU) 14.1.0"
	.section	.note.GNU-stack,"",@progbits
