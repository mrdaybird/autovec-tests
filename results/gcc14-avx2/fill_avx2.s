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
	movq	8(%rdi), %r9
	movq	(%rdi), %rcx
	cmpq	%r9, %rcx
	je	.L27
	leaq	-4(%r9), %rdx
	movq	%rcx, %rax
	subq	%rcx, %rdx
	movq	%rdx, %rsi
	shrq	$2, %rsi
	leaq	1(%rsi), %r10
	cmpq	$24, %rdx
	jbe	.L12
	movq	%r10, %r8
	movl	$42, %edx
	shrq	$3, %r8
	vmovd	%edx, %xmm0
	salq	$5, %r8
	vpbroadcastd	%xmm0, %ymm0
	leaq	(%r8,%rcx), %rdi
	andl	$32, %r8d
	je	.L8
	leaq	32(%rcx), %rax
	vmovdqu	%ymm0, (%rcx)
	cmpq	%rax, %rdi
	je	.L25
	.p2align 4,,10
	.p2align 3
.L8:
	vmovdqu	%ymm0, (%rax)
	addq	$64, %rax
	vmovdqu	%ymm0, -32(%rax)
	cmpq	%rax, %rdi
	jne	.L8
.L25:
	movq	%r10, %rdx
	andq	$-8, %rdx
	andl	$7, %r10d
	leaq	(%rcx,%rdx,4), %rax
	je	.L28
	vzeroupper
.L7:
	subq	%rdx, %rsi
	leaq	1(%rsi), %rdi
	cmpq	$2, %rsi
	jbe	.L10
	movl	$42, %esi
	vmovd	%esi, %xmm0
	vpbroadcastd	%xmm0, %xmm0
	vmovdqu	%xmm0, (%rcx,%rdx,4)
	movq	%rdi, %rdx
	andq	$-4, %rdx
	andl	$3, %edi
	leaq	(%rax,%rdx,4), %rax
	je	.L27
.L10:
	leaq	4(%rax), %rdx
	movl	$42, (%rax)
	cmpq	%rdx, %r9
	je	.L27
	leaq	8(%rax), %rdx
	movl	$42, 4(%rax)
	cmpq	%rdx, %r9
	je	.L27
	movl	$42, 8(%rax)
.L27:
	ret
	.p2align 4,,10
	.p2align 3
.L28:
	vzeroupper
	ret
.L12:
	xorl	%edx, %edx
	jmp	.L7
	.cfi_endproc
.LFE1536:
	.size	_Z10fill_epi32RSt6vectorIiSaIiEE, .-_Z10fill_epi32RSt6vectorIiSaIiEE
	.ident	"GCC: (GNU) 14.1.0"
	.section	.note.GNU-stack,"",@progbits
