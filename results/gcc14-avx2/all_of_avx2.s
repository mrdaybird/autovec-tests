	.file	"all_of.cpp"
	.text
	.p2align 4
	.globl	_Z11all_of_epi8RKSt6vectorIaSaIaEE
	.type	_Z11all_of_epi8RKSt6vectorIaSaIaEE, @function
_Z11all_of_epi8RKSt6vectorIaSaIaEE:
.LFB1535:
	.cfi_startproc
	movq	8(%rdi), %rcx
	movq	(%rdi), %rdx
	movq	%rcx, %rsi
	subq	%rdx, %rsi
	movq	%rsi, %rax
	sarq	$2, %rax
	testq	%rax, %rax
	jle	.L2
	leaq	(%rdx,%rax,4), %rax
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L3:
	cmpb	$42, 1(%rdx)
	jne	.L23
	cmpb	$42, 2(%rdx)
	jne	.L24
	cmpb	$42, 3(%rdx)
	jne	.L25
	addq	$4, %rdx
	cmpq	%rax, %rdx
	je	.L26
.L8:
	cmpb	$42, (%rdx)
	je	.L3
.L21:
	cmpq	%rdx, %rcx
	sete	%al
	ret
	.p2align 4,,10
	.p2align 3
.L26:
	movq	%rcx, %rsi
	subq	%rdx, %rsi
.L2:
	cmpq	$2, %rsi
	je	.L9
	cmpq	$3, %rsi
	je	.L10
	cmpq	$1, %rsi
	je	.L11
	movl	$1, %eax
	ret
.L10:
	cmpb	$42, (%rdx)
	jne	.L21
	addq	$1, %rdx
.L9:
	cmpb	$42, (%rdx)
	jne	.L21
	addq	$1, %rdx
.L11:
	cmpb	$42, (%rdx)
	sete	%al
	cmpq	%rdx, %rcx
	sete	%dl
	orl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L23:
	addq	$1, %rdx
	cmpq	%rdx, %rcx
	sete	%al
	ret
	.p2align 4,,10
	.p2align 3
.L24:
	addq	$2, %rdx
	cmpq	%rdx, %rcx
	sete	%al
	ret
	.p2align 4,,10
	.p2align 3
.L25:
	addq	$3, %rdx
	cmpq	%rdx, %rcx
	sete	%al
	ret
	.cfi_endproc
.LFE1535:
	.size	_Z11all_of_epi8RKSt6vectorIaSaIaEE, .-_Z11all_of_epi8RKSt6vectorIaSaIaEE
	.p2align 4
	.globl	_Z12all_of_epi32RKSt6vectorIiSaIiEE
	.type	_Z12all_of_epi32RKSt6vectorIiSaIiEE, @function
_Z12all_of_epi32RKSt6vectorIiSaIiEE:
.LFB1539:
	.cfi_startproc
	movq	8(%rdi), %rcx
	movq	(%rdi), %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	movq	%rax, %rsi
	sarq	$4, %rax
	sarq	$2, %rsi
	testq	%rax, %rax
	jle	.L28
	salq	$4, %rax
	addq	%rdx, %rax
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L29:
	cmpl	$42, 4(%rdx)
	jne	.L48
	cmpl	$42, 8(%rdx)
	jne	.L49
	cmpl	$42, 12(%rdx)
	jne	.L50
	addq	$16, %rdx
	cmpq	%rax, %rdx
	je	.L51
.L34:
	cmpl	$42, (%rdx)
	je	.L29
.L47:
	cmpq	%rdx, %rcx
	sete	%al
	ret
	.p2align 4,,10
	.p2align 3
.L51:
	movq	%rcx, %rsi
	subq	%rdx, %rsi
	sarq	$2, %rsi
.L28:
	cmpq	$2, %rsi
	je	.L35
	cmpq	$3, %rsi
	je	.L36
	cmpq	$1, %rsi
	je	.L37
	movl	$1, %eax
	ret
.L36:
	cmpl	$42, (%rdx)
	jne	.L47
	addq	$4, %rdx
.L35:
	cmpl	$42, (%rdx)
	jne	.L47
	addq	$4, %rdx
.L37:
	cmpl	$42, (%rdx)
	sete	%al
	cmpq	%rdx, %rcx
	sete	%dl
	orl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L48:
	addq	$4, %rdx
	cmpq	%rdx, %rcx
	sete	%al
	ret
	.p2align 4,,10
	.p2align 3
.L49:
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	sete	%al
	ret
	.p2align 4,,10
	.p2align 3
.L50:
	addq	$12, %rdx
	cmpq	%rdx, %rcx
	sete	%al
	ret
	.cfi_endproc
.LFE1539:
	.size	_Z12all_of_epi32RKSt6vectorIiSaIiEE, .-_Z12all_of_epi32RKSt6vectorIiSaIiEE
	.ident	"GCC: (GNU) 14.1.0"
	.section	.note.GNU-stack,"",@progbits
