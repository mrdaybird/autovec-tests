	.file	"transform_inc.cpp"
	.text
	.p2align 4
	.globl	_Z18transform_inc_epi8RSt6vectorIaSaIaEE
	.type	_Z18transform_inc_epi8RSt6vectorIaSaIaEE, @function
_Z18transform_inc_epi8RSt6vectorIaSaIaEE:
.LFB1535:
	.cfi_startproc
	movq	(%rdi), %r8
	movq	8(%rdi), %rsi
	cmpq	%r8, %rsi
	je	.L14
	movq	%rsi, %rdi
	movq	%r8, %rax
	subq	%r8, %rdi
	leaq	-1(%rdi), %rdx
	cmpq	$30, %rdx
	jbe	.L8
	movq	%rdi, %r9
	movl	$707406378, %edx
	andq	$-32, %r9
	vmovd	%edx, %xmm1
	leaq	(%r8,%r9), %rcx
	vpbroadcastd	%xmm1, %ymm1
	.p2align 4,,10
	.p2align 3
.L4:
	vpaddb	(%rax), %ymm1, %ymm0
	addq	$32, %rax
	vmovdqu	%ymm0, -32(%rax)
	cmpq	%rax, %rcx
	jne	.L4
	movq	%rcx, %rax
	cmpq	%r9, %rdi
	je	.L16
	vzeroupper
.L3:
	subq	%r9, %rdi
	leaq	-1(%rdi), %rdx
	cmpq	$14, %rdx
	jbe	.L6
	movl	$707406378, %ecx
	addq	%r9, %r8
	movq	%rdi, %rdx
	vmovd	%ecx, %xmm0
	andq	$-16, %rdx
	vpbroadcastd	%xmm0, %xmm0
	vpaddb	(%r8), %xmm0, %xmm0
	addq	%rdx, %rax
	andl	$15, %edi
	vmovdqu	%xmm0, (%r8)
	je	.L14
.L6:
	leaq	1(%rax), %rdx
	addb	$42, (%rax)
	cmpq	%rdx, %rsi
	je	.L14
	leaq	2(%rax), %rdx
	addb	$42, 1(%rax)
	cmpq	%rdx, %rsi
	je	.L14
	leaq	3(%rax), %rdx
	addb	$42, 2(%rax)
	cmpq	%rdx, %rsi
	je	.L14
	leaq	4(%rax), %rdx
	addb	$42, 3(%rax)
	cmpq	%rdx, %rsi
	je	.L14
	leaq	5(%rax), %rdx
	addb	$42, 4(%rax)
	cmpq	%rdx, %rsi
	je	.L14
	leaq	6(%rax), %rdx
	addb	$42, 5(%rax)
	cmpq	%rdx, %rsi
	je	.L14
	leaq	7(%rax), %rdx
	addb	$42, 6(%rax)
	cmpq	%rdx, %rsi
	je	.L14
	leaq	8(%rax), %rdx
	addb	$42, 7(%rax)
	cmpq	%rdx, %rsi
	je	.L14
	leaq	9(%rax), %rdx
	addb	$42, 8(%rax)
	cmpq	%rdx, %rsi
	je	.L14
	leaq	10(%rax), %rdx
	addb	$42, 9(%rax)
	cmpq	%rdx, %rsi
	je	.L14
	leaq	11(%rax), %rdx
	addb	$42, 10(%rax)
	cmpq	%rdx, %rsi
	je	.L14
	leaq	12(%rax), %rdx
	addb	$42, 11(%rax)
	cmpq	%rdx, %rsi
	je	.L14
	leaq	13(%rax), %rdx
	addb	$42, 12(%rax)
	cmpq	%rdx, %rsi
	je	.L14
	leaq	14(%rax), %rdx
	addb	$42, 13(%rax)
	cmpq	%rdx, %rsi
	je	.L14
	addb	$42, 14(%rax)
.L14:
	ret
.L8:
	xorl	%r9d, %r9d
	jmp	.L3
.L16:
	vzeroupper
	ret
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
	movq	8(%rdi), %r8
	cmpq	%rsi, %r8
	je	.L33
	leaq	-4(%r8), %rdx
	movq	%rsi, %rax
	subq	%rsi, %rdx
	movq	%rdx, %rdi
	shrq	$2, %rdi
	leaq	1(%rdi), %r9
	cmpq	$24, %rdx
	jbe	.L24
	movq	%r9, %rdx
	movl	$42, %ecx
	shrq	$3, %rdx
	vmovd	%ecx, %xmm1
	salq	$5, %rdx
	vpbroadcastd	%xmm1, %ymm1
	addq	%rsi, %rdx
	.p2align 4,,10
	.p2align 3
.L20:
	vpaddd	(%rax), %ymm1, %ymm0
	addq	$32, %rax
	vmovdqu	%ymm0, -32(%rax)
	cmpq	%rax, %rdx
	jne	.L20
	movq	%r9, %rdx
	andq	$-8, %rdx
	andl	$7, %r9d
	leaq	(%rsi,%rdx,4), %rax
	je	.L34
	vzeroupper
.L19:
	subq	%rdx, %rdi
	leaq	1(%rdi), %rcx
	cmpq	$2, %rdi
	jbe	.L22
	leaq	(%rsi,%rdx,4), %rdx
	movl	$42, %esi
	vmovd	%esi, %xmm0
	vpbroadcastd	%xmm0, %xmm0
	vpaddd	(%rdx), %xmm0, %xmm0
	vmovdqu	%xmm0, (%rdx)
	movq	%rcx, %rdx
	andq	$-4, %rdx
	andl	$3, %ecx
	leaq	(%rax,%rdx,4), %rax
	je	.L33
.L22:
	leaq	4(%rax), %rdx
	addl	$42, (%rax)
	cmpq	%rdx, %r8
	je	.L33
	leaq	8(%rax), %rdx
	addl	$42, 4(%rax)
	cmpq	%rdx, %r8
	je	.L33
	addl	$42, 8(%rax)
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
	.size	_Z19transform_inc_epi32RSt6vectorIiSaIiEE, .-_Z19transform_inc_epi32RSt6vectorIiSaIiEE
	.ident	"GCC: (GNU) 14.1.0"
	.section	.note.GNU-stack,"",@progbits
