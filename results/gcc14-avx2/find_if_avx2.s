	.file	"find_if.cpp"
	.text
	.p2align 4
	.globl	_Z12find_if_epi8RKSt6vectorIaSaIaEE
	.type	_Z12find_if_epi8RKSt6vectorIaSaIaEE, @function
_Z12find_if_epi8RKSt6vectorIaSaIaEE:
.LFB1535:
	.cfi_startproc
	movq	8(%rdi), %rsi
	movq	(%rdi), %rdx
	movq	%rsi, %rcx
	subq	%rdx, %rcx
	movq	%rcx, %rax
	sarq	$2, %rax
	testq	%rax, %rax
	jle	.L2
	leaq	(%rdx,%rax,4), %rcx
	.p2align 4,,10
	.p2align 3
.L12:
	movsbl	(%rdx), %eax
	cmpl	$42, %eax
	je	.L33
	cmpl	$-1, %eax
	je	.L33
	movsbl	1(%rdx), %eax
	cmpl	$42, %eax
	je	.L21
	cmpl	$-1, %eax
	je	.L21
	movsbl	2(%rdx), %eax
	cmpl	$42, %eax
	je	.L22
	cmpl	$-1, %eax
	je	.L22
	movsbl	3(%rdx), %eax
	cmpl	$42, %eax
	je	.L23
	cmpl	$-1, %eax
	je	.L23
	addq	$4, %rdx
	cmpq	%rcx, %rdx
	jne	.L12
	movq	%rsi, %rcx
	subq	%rdx, %rcx
.L2:
	cmpq	$2, %rcx
	je	.L13
	cmpq	$3, %rcx
	je	.L14
	cmpq	$1, %rcx
	je	.L15
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L21:
	addq	$1, %rdx
.L33:
	cmpq	%rdx, %rsi
	setne	%al
	ret
.L14:
	movsbl	(%rdx), %eax
	cmpl	$42, %eax
	je	.L33
	cmpl	$-1, %eax
	je	.L33
	addq	$1, %rdx
.L13:
	movsbl	(%rdx), %eax
	cmpl	$42, %eax
	je	.L33
	cmpl	$-1, %eax
	je	.L33
	addq	$1, %rdx
.L15:
	movsbl	(%rdx), %ecx
	cmpl	$42, %ecx
	sete	%al
	cmpl	$-1, %ecx
	sete	%cl
	orl	%ecx, %eax
	cmpq	%rdx, %rsi
	setne	%dl
	andl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L22:
	addq	$2, %rdx
	cmpq	%rdx, %rsi
	setne	%al
	ret
	.p2align 4,,10
	.p2align 3
.L23:
	addq	$3, %rdx
	cmpq	%rdx, %rsi
	setne	%al
	ret
	.cfi_endproc
.LFE1535:
	.size	_Z12find_if_epi8RKSt6vectorIaSaIaEE, .-_Z12find_if_epi8RKSt6vectorIaSaIaEE
	.p2align 4
	.globl	_Z13find_if_epi32RKSt6vectorIiSaIiEE
	.type	_Z13find_if_epi32RKSt6vectorIiSaIiEE, @function
_Z13find_if_epi32RKSt6vectorIiSaIiEE:
.LFB1539:
	.cfi_startproc
	movq	8(%rdi), %rsi
	movq	(%rdi), %rdx
	movq	%rsi, %rcx
	subq	%rdx, %rcx
	movq	%rcx, %rax
	sarq	$4, %rcx
	sarq	$2, %rax
	testq	%rcx, %rcx
	jle	.L36
	salq	$4, %rcx
	addq	%rdx, %rcx
	.p2align 4,,10
	.p2align 3
.L46:
	movl	(%rdx), %eax
	cmpl	$42, %eax
	je	.L67
	cmpl	$-1, %eax
	je	.L67
	movl	4(%rdx), %eax
	cmpl	$42, %eax
	je	.L55
	cmpl	$-1, %eax
	je	.L55
	movl	8(%rdx), %eax
	cmpl	$42, %eax
	je	.L56
	cmpl	$-1, %eax
	je	.L56
	movl	12(%rdx), %eax
	cmpl	$42, %eax
	je	.L57
	cmpl	$-1, %eax
	je	.L57
	addq	$16, %rdx
	cmpq	%rcx, %rdx
	jne	.L46
	movq	%rsi, %rax
	subq	%rdx, %rax
	sarq	$2, %rax
.L36:
	cmpq	$2, %rax
	je	.L47
	cmpq	$3, %rax
	je	.L48
	cmpq	$1, %rax
	je	.L49
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L55:
	addq	$4, %rdx
.L67:
	cmpq	%rdx, %rsi
	setne	%al
	ret
.L48:
	movl	(%rdx), %eax
	cmpl	$42, %eax
	je	.L67
	cmpl	$-1, %eax
	je	.L67
	addq	$4, %rdx
.L47:
	movl	(%rdx), %eax
	cmpl	$42, %eax
	je	.L67
	cmpl	$-1, %eax
	je	.L67
	addq	$4, %rdx
.L49:
	movl	(%rdx), %ecx
	cmpl	$42, %ecx
	sete	%al
	cmpl	$-1, %ecx
	sete	%cl
	orl	%ecx, %eax
	cmpq	%rdx, %rsi
	setne	%dl
	andl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L56:
	addq	$8, %rdx
	cmpq	%rdx, %rsi
	setne	%al
	ret
	.p2align 4,,10
	.p2align 3
.L57:
	addq	$12, %rdx
	cmpq	%rdx, %rsi
	setne	%al
	ret
	.cfi_endproc
.LFE1539:
	.size	_Z13find_if_epi32RKSt6vectorIiSaIiEE, .-_Z13find_if_epi32RKSt6vectorIiSaIiEE
	.ident	"GCC: (GNU) 14.1.0"
	.section	.note.GNU-stack,"",@progbits
