	.file	"replace.cpp"
	.text
	.p2align 4
	.globl	_Z12replace_epi8RSt6vectorIaSaIaEE
	.type	_Z12replace_epi8RSt6vectorIaSaIaEE, @function
_Z12replace_epi8RSt6vectorIaSaIaEE:
.LFB1535:
	.cfi_startproc
	movq	8(%rdi), %rdx
	movq	(%rdi), %rsi
	cmpq	%rdx, %rsi
	je	.L26
	movq	%rdx, %r8
	movq	%rsi, %rax
	subq	%rsi, %r8
	leaq	-1(%r8), %rcx
	cmpq	$62, %rcx
	jbe	.L13
	movl	$13, %ecx
	movq	%r8, %r9
	andq	$-64, %r9
	vpbroadcastb	%ecx, %zmm0
	movl	$42, %ecx
	leaq	(%rsi,%r9), %rdi
	vpbroadcastb	%ecx, %zmm1
	.p2align 4,,10
	.p2align 3
.L5:
	vpcmpeqb	(%rax), %zmm0, %k1
	kortestq	%k1, %k1
	je	.L4
	vmovdqu8	%zmm1, (%rax){%k1}
.L4:
	addq	$64, %rax
	cmpq	%rdi, %rax
	jne	.L5
	cmpq	%r9, %r8
	je	.L25
.L3:
	subq	%r9, %r8
	leaq	-1(%r8), %rcx
	cmpq	$30, %rcx
	jbe	.L11
	movl	$218959117, %ecx
	addq	%r9, %rsi
	vpbroadcastd	%ecx, %ymm0
	vpcmpeqb	(%rsi), %ymm0, %k1
	kortestd	%k1, %k1
	je	.L8
	movl	$707406378, %ecx
	vpbroadcastd	%ecx, %ymm0
	vmovdqu8	%ymm0, (%rsi){%k1}
.L8:
	movq	%r8, %rcx
	andq	$-32, %rcx
	addq	%rcx, %rax
	andl	$31, %r8d
	je	.L25
	.p2align 4,,10
	.p2align 3
.L11:
	cmpb	$13, (%rax)
	jne	.L12
	movb	$42, (%rax)
.L12:
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L11
.L25:
	vzeroupper
.L26:
	ret
.L13:
	xorl	%r9d, %r9d
	jmp	.L3
	.cfi_endproc
.LFE1535:
	.size	_Z12replace_epi8RSt6vectorIaSaIaEE, .-_Z12replace_epi8RSt6vectorIaSaIaEE
	.p2align 4
	.globl	_Z13replace_epi32RSt6vectorIiSaIiEE
	.type	_Z13replace_epi32RSt6vectorIiSaIiEE, @function
_Z13replace_epi32RSt6vectorIiSaIiEE:
.LFB1536:
	.cfi_startproc
	movq	8(%rdi), %rsi
	movq	(%rdi), %r8
	cmpq	%rsi, %r8
	je	.L72
	movq	%rsi, %rdx
	movq	%r8, %rax
	subq	%r8, %rdx
	leaq	-4(%rdx), %rcx
	cmpq	$24, %rcx
	jbe	.L47
	andl	$3, %edx
	jne	.L47
	movq	%rcx, %r9
	shrq	$2, %r9
	leaq	1(%r9), %r10
	cmpq	$56, %rcx
	jbe	.L31
	movl	$13, %ecx
	movq	%r10, %rdi
	vpbroadcastd	%ecx, %zmm0
	movl	$42, %ecx
	shrq	$4, %rdi
	vpbroadcastd	%ecx, %zmm1
	.p2align 4,,10
	.p2align 3
.L33:
	vpcmpeqd	(%rax), %zmm0, %k1
	kortestw	%k1, %k1
	je	.L32
	vmovdqu32	%zmm1, (%rax){%k1}
.L32:
	addq	$1, %rdx
	addq	$64, %rax
	cmpq	%rdi, %rdx
	jne	.L33
	movq	%r10, %rdx
	andq	$-16, %rdx
	andl	$15, %r10d
	leaq	(%r8,%rdx,4), %rax
	je	.L71
.L31:
	subq	%rdx, %r9
	leaq	1(%r9), %rdi
	cmpq	$6, %r9
	jbe	.L35
	leaq	(%r8,%rdx,4), %rcx
	movl	$13, %edx
	vpbroadcastd	%edx, %ymm0
	vpcmpeqd	(%rcx), %ymm0, %k1
	kortestb	%k1, %k1
	je	.L36
	movl	$42, %edx
	vpbroadcastd	%edx, %ymm0
	vmovdqu32	%ymm0, (%rcx){%k1}
.L36:
	movq	%rdi, %rdx
	andq	$-8, %rdx
	andl	$7, %edi
	leaq	(%rax,%rdx,4), %rax
	je	.L71
.L35:
	cmpl	$13, (%rax)
	je	.L73
.L38:
	leaq	4(%rax), %rdx
	cmpq	%rdx, %rsi
	je	.L71
	cmpl	$13, 4(%rax)
	je	.L74
	leaq	8(%rax), %rdx
	cmpq	%rdx, %rsi
	je	.L71
.L76:
	cmpl	$13, 8(%rax)
	jne	.L40
	movl	$42, 8(%rax)
.L40:
	leaq	12(%rax), %rdx
	cmpq	%rdx, %rsi
	je	.L71
	cmpl	$13, 12(%rax)
	jne	.L41
	movl	$42, 12(%rax)
.L41:
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rsi
	je	.L71
	cmpl	$13, 16(%rax)
	jne	.L42
	movl	$42, 16(%rax)
.L42:
	leaq	20(%rax), %rdx
	cmpq	%rdx, %rsi
	je	.L71
	cmpl	$13, 20(%rax)
	jne	.L43
	movl	$42, 20(%rax)
.L43:
	leaq	24(%rax), %rdx
	cmpq	%rdx, %rsi
	je	.L71
	cmpl	$13, 24(%rax)
	je	.L75
.L71:
	vzeroupper
.L72:
	ret
	.p2align 4,,10
	.p2align 3
.L47:
	cmpl	$13, (%rax)
	jne	.L46
	movl	$42, (%rax)
.L46:
	addq	$4, %rax
	cmpq	%rax, %rsi
	jne	.L47
	ret
	.p2align 4,,10
	.p2align 3
.L73:
	movl	$42, (%rax)
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L74:
	leaq	8(%rax), %rdx
	movl	$42, 4(%rax)
	cmpq	%rdx, %rsi
	jne	.L76
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L75:
	movl	$42, 24(%rax)
	vzeroupper
	ret
	.cfi_endproc
.LFE1536:
	.size	_Z13replace_epi32RSt6vectorIiSaIiEE, .-_Z13replace_epi32RSt6vectorIiSaIiEE
	.ident	"GCC: (GNU) 14.1.0"
	.section	.note.GNU-stack,"",@progbits
