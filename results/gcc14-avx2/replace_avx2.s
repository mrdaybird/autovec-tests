	.file	"replace.cpp"
	.text
	.p2align 4
	.globl	_Z12replace_epi8RSt6vectorIaSaIaEE
	.type	_Z12replace_epi8RSt6vectorIaSaIaEE, @function
_Z12replace_epi8RSt6vectorIaSaIaEE:
.LFB1535:
	.cfi_startproc
	movq	8(%rdi), %rdx
	movq	(%rdi), %rax
	cmpq	%rdx, %rax
	je	.L6
	.p2align 4,,10
	.p2align 3
.L4:
	cmpb	$13, (%rax)
	jne	.L3
	movb	$42, (%rax)
.L3:
	addq	$1, %rax
	cmpq	%rdx, %rax
	jne	.L4
.L6:
	ret
	.cfi_endproc
.LFE1535:
	.size	_Z12replace_epi8RSt6vectorIaSaIaEE, .-_Z12replace_epi8RSt6vectorIaSaIaEE
	.p2align 4
	.globl	_Z13replace_epi32RSt6vectorIiSaIiEE
	.type	_Z13replace_epi32RSt6vectorIiSaIiEE, @function
_Z13replace_epi32RSt6vectorIiSaIiEE:
.LFB1536:
	.cfi_startproc
	movq	8(%rdi), %r8
	movq	(%rdi), %rdi
	cmpq	%r8, %rdi
	je	.L35
	movq	%r8, %rdx
	movq	%rdi, %rax
	subq	%rdi, %rdx
	leaq	-4(%rdx), %rcx
	cmpq	$8, %rcx
	jbe	.L23
	andl	$3, %edx
	jne	.L23
	movq	%rcx, %r9
	shrq	$2, %r9
	leaq	1(%r9), %r10
	cmpq	$24, %rcx
	jbe	.L11
	movl	$13, %ecx
	movq	%r10, %rsi
	vmovd	%ecx, %xmm1
	movl	$42, %ecx
	shrq	$3, %rsi
	vmovd	%ecx, %xmm2
	vpbroadcastd	%xmm1, %ymm1
	vpbroadcastd	%xmm2, %ymm2
	.p2align 4,,10
	.p2align 3
.L13:
	vpcmpeqd	(%rax), %ymm1, %ymm0
	vptest	%ymm0, %ymm0
	je	.L12
	vpmaskmovd	%ymm2, %ymm0, (%rax)
.L12:
	addq	$1, %rdx
	addq	$32, %rax
	cmpq	%rsi, %rdx
	jne	.L13
	movq	%r10, %rdx
	andq	$-8, %rdx
	andl	$7, %r10d
	leaq	(%rdi,%rdx,4), %rax
	je	.L36
	vzeroupper
.L11:
	subq	%rdx, %r9
	leaq	1(%r9), %rcx
	cmpq	$2, %r9
	jbe	.L15
	movl	$13, %esi
	leaq	(%rdi,%rdx,4), %rdx
	vmovd	%esi, %xmm0
	vpbroadcastd	%xmm0, %xmm0
	vpcmpeqd	(%rdx), %xmm0, %xmm0
	vptest	%xmm0, %xmm0
	je	.L16
	movl	$42, %esi
	vmovd	%esi, %xmm1
	vpbroadcastd	%xmm1, %xmm1
	vpmaskmovd	%xmm1, %xmm0, (%rdx)
.L16:
	movq	%rcx, %rdx
	andq	$-4, %rdx
	andl	$3, %ecx
	leaq	(%rax,%rdx,4), %rax
	je	.L35
.L15:
	cmpl	$13, (%rax)
	jne	.L18
	movl	$42, (%rax)
.L18:
	leaq	4(%rax), %rdx
	cmpq	%rdx, %r8
	je	.L35
	cmpl	$13, 4(%rax)
	jne	.L19
	movl	$42, 4(%rax)
.L19:
	leaq	8(%rax), %rdx
	cmpq	%rdx, %r8
	je	.L35
	cmpl	$13, 8(%rax)
	je	.L37
.L35:
	ret
	.p2align 4,,10
	.p2align 3
.L23:
	cmpl	$13, (%rax)
	jne	.L22
	movl	$42, (%rax)
.L22:
	addq	$4, %rax
	cmpq	%rax, %r8
	jne	.L23
	ret
	.p2align 4,,10
	.p2align 3
.L37:
	movl	$42, 8(%rax)
	ret
.L36:
	vzeroupper
	ret
	.cfi_endproc
.LFE1536:
	.size	_Z13replace_epi32RSt6vectorIiSaIiEE, .-_Z13replace_epi32RSt6vectorIiSaIiEE
	.ident	"GCC: (GNU) 14.1.0"
	.section	.note.GNU-stack,"",@progbits
