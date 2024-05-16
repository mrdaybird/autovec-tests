	.file	"transform_abs.cpp"
	.text
	.p2align 4
	.globl	_Z18transform_abs_epi8RSt6vectorIaSaIaEE
	.type	_Z18transform_abs_epi8RSt6vectorIaSaIaEE, @function
_Z18transform_abs_epi8RSt6vectorIaSaIaEE:
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
	andq	$-32, %r8
	leaq	(%rsi,%r8), %rdx
	.p2align 4,,10
	.p2align 3
.L4:
	vpabsb	(%rax), %ymm0
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
	movq	%rdi, %rdx
	addq	%r8, %rsi
	andq	$-16, %rdx
	vpabsb	(%rsi), %xmm0
	vmovdqu	%xmm0, (%rsi)
	addq	%rdx, %rax
	andl	$15, %edi
	je	.L14
.L6:
	movzbl	(%rax), %esi
	movl	%esi, %edx
	negb	%dl
	cmovs	%esi, %edx
	movb	%dl, (%rax)
	leaq	1(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L14
	movzbl	1(%rax), %esi
	movl	%esi, %edx
	negb	%dl
	cmovs	%esi, %edx
	movb	%dl, 1(%rax)
	leaq	2(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L14
	movzbl	2(%rax), %esi
	movl	%esi, %edx
	negb	%dl
	cmovs	%esi, %edx
	movb	%dl, 2(%rax)
	leaq	3(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L14
	movzbl	3(%rax), %esi
	movl	%esi, %edx
	negb	%dl
	cmovs	%esi, %edx
	movb	%dl, 3(%rax)
	leaq	4(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L14
	movzbl	4(%rax), %esi
	movl	%esi, %edx
	negb	%dl
	cmovs	%esi, %edx
	movb	%dl, 4(%rax)
	leaq	5(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L14
	movzbl	5(%rax), %esi
	movl	%esi, %edx
	negb	%dl
	cmovs	%esi, %edx
	movb	%dl, 5(%rax)
	leaq	6(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L14
	movzbl	6(%rax), %esi
	movl	%esi, %edx
	negb	%dl
	cmovs	%esi, %edx
	movb	%dl, 6(%rax)
	leaq	7(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L14
	movzbl	7(%rax), %esi
	movl	%esi, %edx
	negb	%dl
	cmovs	%esi, %edx
	movb	%dl, 7(%rax)
	leaq	8(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L14
	movzbl	8(%rax), %esi
	movl	%esi, %edx
	negb	%dl
	cmovs	%esi, %edx
	movb	%dl, 8(%rax)
	leaq	9(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L14
	movzbl	9(%rax), %esi
	movl	%esi, %edx
	negb	%dl
	cmovs	%esi, %edx
	movb	%dl, 9(%rax)
	leaq	10(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L14
	movzbl	10(%rax), %esi
	movl	%esi, %edx
	negb	%dl
	cmovs	%esi, %edx
	movb	%dl, 10(%rax)
	leaq	11(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L14
	movzbl	11(%rax), %esi
	movl	%esi, %edx
	negb	%dl
	cmovs	%esi, %edx
	movb	%dl, 11(%rax)
	leaq	12(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L14
	movzbl	12(%rax), %esi
	movl	%esi, %edx
	negb	%dl
	cmovs	%esi, %edx
	movb	%dl, 12(%rax)
	leaq	13(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L14
	movzbl	13(%rax), %esi
	movl	%esi, %edx
	negb	%dl
	cmovs	%esi, %edx
	movb	%dl, 13(%rax)
	leaq	14(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L14
	movzbl	14(%rax), %ecx
	movl	%ecx, %edx
	negb	%dl
	cmovs	%ecx, %edx
	movb	%dl, 14(%rax)
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
	.size	_Z18transform_abs_epi8RSt6vectorIaSaIaEE, .-_Z18transform_abs_epi8RSt6vectorIaSaIaEE
	.p2align 4
	.globl	_Z19transform_abs_epi32RSt6vectorIiSaIiEE
	.type	_Z19transform_abs_epi32RSt6vectorIiSaIiEE, @function
_Z19transform_abs_epi32RSt6vectorIiSaIiEE:
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
	shrq	$3, %rdx
	salq	$5, %rdx
	addq	%rcx, %rdx
	.p2align 4,,10
	.p2align 3
.L20:
	vpabsd	(%rax), %ymm0
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
	vpabsd	(%rdx), %xmm0
	vmovdqu	%xmm0, (%rdx)
	movq	%r8, %rdx
	andq	$-4, %rdx
	andl	$3, %r8d
	leaq	(%rax,%rdx,4), %rax
	je	.L33
.L22:
	vmovd	(%rax), %xmm0
	leaq	4(%rax), %rdx
	vpabsd	%xmm0, %xmm0
	vmovd	%xmm0, (%rax)
	cmpq	%rdx, %rdi
	je	.L33
	vmovd	4(%rax), %xmm0
	leaq	8(%rax), %rdx
	vpabsd	%xmm0, %xmm0
	vmovd	%xmm0, 4(%rax)
	cmpq	%rdx, %rdi
	je	.L33
	vmovd	8(%rax), %xmm0
	vpabsd	%xmm0, %xmm0
	vmovd	%xmm0, 8(%rax)
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
	.size	_Z19transform_abs_epi32RSt6vectorIiSaIiEE, .-_Z19transform_abs_epi32RSt6vectorIiSaIiEE
	.ident	"GCC: (GNU) 14.1.0"
	.section	.note.GNU-stack,"",@progbits
