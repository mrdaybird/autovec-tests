	.file	"fill.cpp"
	.text
	.p2align 4
	.globl	_Z9fill_epi8RSt6vectorIaSaIaEE
	.type	_Z9fill_epi8RSt6vectorIaSaIaEE, @function
_Z9fill_epi8RSt6vectorIaSaIaEE:
.LFB1535:
	.cfi_startproc
	movq	8(%rdi), %rdx
	movq	(%rdi), %rdi
	cmpq	%rdx, %rdi
	je	.L3
	subq	%rdi, %rdx
	movl	$42, %esi
	jmp	memset
	.p2align 4,,10
	.p2align 3
.L3:
	ret
	.cfi_endproc
.LFE1535:
	.size	_Z9fill_epi8RSt6vectorIaSaIaEE, .-_Z9fill_epi8RSt6vectorIaSaIaEE
	.p2align 4
	.globl	_Z10fill_epi32RSt6vectorIiSaIiEE
	.type	_Z10fill_epi32RSt6vectorIiSaIiEE, @function
_Z10fill_epi32RSt6vectorIiSaIiEE:
.LFB1536:
	.cfi_startproc
	movq	8(%rdi), %rsi
	movq	(%rdi), %rcx
	cmpq	%rsi, %rcx
	je	.L33
	leaq	-4(%rsi), %rdx
	movq	%rcx, %rax
	subq	%rcx, %rdx
	movq	%rdx, %rdi
	shrq	$2, %rdi
	leaq	1(%rdi), %r10
	cmpq	$56, %rdx
	jbe	.L12
	movq	%r10, %r9
	movl	$42, %edx
	shrq	$4, %r9
	vpbroadcastd	%edx, %zmm0
	salq	$6, %r9
	leaq	(%r9,%rcx), %r8
	andl	$64, %r9d
	je	.L8
	leaq	64(%rcx), %rax
	vmovdqu32	%zmm0, (%rcx)
	cmpq	%rax, %r8
	je	.L25
	.p2align 4,,10
	.p2align 3
.L8:
	vmovdqu32	%zmm0, (%rax)
	subq	$-128, %rax
	vmovdqu32	%zmm0, -64(%rax)
	cmpq	%rax, %r8
	jne	.L8
.L25:
	movq	%r10, %rdx
	andq	$-16, %rdx
	andl	$15, %r10d
	leaq	(%rcx,%rdx,4), %rax
	je	.L32
.L7:
	subq	%rdx, %rdi
	leaq	1(%rdi), %r8
	cmpq	$6, %rdi
	jbe	.L10
	movl	$42, %edi
	vpbroadcastd	%edi, %ymm0
	vmovdqu	%ymm0, (%rcx,%rdx,4)
	movq	%r8, %rdx
	andq	$-8, %rdx
	andl	$7, %r8d
	leaq	(%rax,%rdx,4), %rax
	je	.L32
.L10:
	leaq	4(%rax), %rdx
	movl	$42, (%rax)
	cmpq	%rdx, %rsi
	je	.L32
	leaq	8(%rax), %rdx
	movl	$42, 4(%rax)
	cmpq	%rdx, %rsi
	je	.L32
	leaq	12(%rax), %rdx
	movl	$42, 8(%rax)
	cmpq	%rdx, %rsi
	je	.L32
	leaq	16(%rax), %rdx
	movl	$42, 12(%rax)
	cmpq	%rdx, %rsi
	je	.L32
	leaq	20(%rax), %rdx
	movl	$42, 16(%rax)
	cmpq	%rdx, %rsi
	je	.L32
	leaq	24(%rax), %rdx
	movl	$42, 20(%rax)
	cmpq	%rdx, %rsi
	je	.L32
	movl	$42, 24(%rax)
	vzeroupper
	ret
	.p2align 4,,10
	.p2align 3
.L32:
	vzeroupper
.L33:
	ret
.L12:
	xorl	%edx, %edx
	jmp	.L7
	.cfi_endproc
.LFE1536:
	.size	_Z10fill_epi32RSt6vectorIiSaIiEE, .-_Z10fill_epi32RSt6vectorIiSaIiEE
	.ident	"GCC: (GNU) 14.1.0"
	.section	.note.GNU-stack,"",@progbits
