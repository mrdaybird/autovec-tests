	.file	"remove.cpp"
	.text
	.p2align 4
	.globl	_Z11remove_epi8RSt6vectorIaSaIaEE
	.type	_Z11remove_epi8RSt6vectorIaSaIaEE, @function
_Z11remove_epi8RSt6vectorIaSaIaEE:
.LFB1535:
	.cfi_startproc
	movq	8(%rdi), %rsi
	movq	(%rdi), %rax
	movq	%rsi, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rdx
	sarq	$2, %rdx
	testq	%rdx, %rdx
	jle	.L2
	leaq	(%rax,%rdx,4), %rdx
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L33:
	cmpb	$42, 1(%rax)
	je	.L29
	cmpb	$42, 2(%rax)
	je	.L30
	cmpb	$42, 3(%rax)
	je	.L31
	addq	$4, %rax
	cmpq	%rdx, %rax
	je	.L32
.L7:
	cmpb	$42, (%rax)
	jne	.L33
.L3:
	cmpq	%rsi, %rax
	je	.L26
	leaq	1(%rax), %rdx
	cmpq	%rdx, %rsi
	je	.L26
	.p2align 4,,10
	.p2align 3
.L14:
	movzbl	(%rdx), %ecx
	cmpb	$42, %cl
	je	.L13
	movb	%cl, (%rax)
	addq	$1, %rax
.L13:
	addq	$1, %rdx
	cmpq	%rsi, %rdx
	jne	.L14
.L26:
	ret
	.p2align 4,,10
	.p2align 3
.L32:
	movq	%rsi, %rcx
	subq	%rax, %rcx
.L2:
	cmpq	$2, %rcx
	je	.L8
	cmpq	$3, %rcx
	je	.L9
	cmpq	$1, %rcx
	je	.L10
	ret
.L9:
	cmpb	$42, (%rax)
	je	.L3
	addq	$1, %rax
.L8:
	cmpb	$42, (%rax)
	je	.L3
	addq	$1, %rax
.L10:
	cmpb	$42, (%rax)
	je	.L3
	ret
	.p2align 4,,10
	.p2align 3
.L29:
	addq	$1, %rax
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L30:
	addq	$2, %rax
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L31:
	addq	$3, %rax
	jmp	.L3
	.cfi_endproc
.LFE1535:
	.size	_Z11remove_epi8RSt6vectorIaSaIaEE, .-_Z11remove_epi8RSt6vectorIaSaIaEE
	.p2align 4
	.globl	_Z12remove_epi32RSt6vectorIiSaIiEE
	.type	_Z12remove_epi32RSt6vectorIiSaIiEE, @function
_Z12remove_epi32RSt6vectorIiSaIiEE:
.LFB1536:
	.cfi_startproc
	movq	8(%rdi), %rsi
	movq	(%rdi), %rax
	movq	%rsi, %rdx
	subq	%rax, %rdx
	movq	%rdx, %rcx
	sarq	$4, %rdx
	sarq	$2, %rcx
	testq	%rdx, %rdx
	jle	.L35
	salq	$4, %rdx
	addq	%rax, %rdx
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L65:
	cmpl	$42, 4(%rax)
	je	.L61
	cmpl	$42, 8(%rax)
	je	.L62
	cmpl	$42, 12(%rax)
	je	.L63
	addq	$16, %rax
	cmpq	%rax, %rdx
	je	.L64
.L40:
	cmpl	$42, (%rax)
	jne	.L65
.L36:
	cmpq	%rsi, %rax
	je	.L59
	leaq	4(%rax), %rdx
	cmpq	%rdx, %rsi
	je	.L59
	.p2align 4,,10
	.p2align 3
.L47:
	movl	(%rdx), %ecx
	cmpl	$42, %ecx
	je	.L46
	movl	%ecx, (%rax)
	addq	$4, %rax
.L46:
	addq	$4, %rdx
	cmpq	%rdx, %rsi
	jne	.L47
.L59:
	ret
	.p2align 4,,10
	.p2align 3
.L64:
	movq	%rsi, %rcx
	subq	%rax, %rcx
	sarq	$2, %rcx
.L35:
	cmpq	$2, %rcx
	je	.L41
	cmpq	$3, %rcx
	je	.L42
	cmpq	$1, %rcx
	je	.L43
	ret
.L42:
	cmpl	$42, (%rax)
	je	.L36
	addq	$4, %rax
.L41:
	cmpl	$42, (%rax)
	je	.L36
	addq	$4, %rax
.L43:
	cmpl	$42, (%rax)
	je	.L36
	ret
	.p2align 4,,10
	.p2align 3
.L61:
	addq	$4, %rax
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L62:
	addq	$8, %rax
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L63:
	addq	$12, %rax
	jmp	.L36
	.cfi_endproc
.LFE1536:
	.size	_Z12remove_epi32RSt6vectorIiSaIiEE, .-_Z12remove_epi32RSt6vectorIiSaIiEE
	.ident	"GCC: (GNU) 14.1.0"
	.section	.note.GNU-stack,"",@progbits
