	.file	"remove_if.cpp"
	.text
	.p2align 4
	.globl	_Z14remove_if_epi8RSt6vectorIaSaIaEE
	.type	_Z14remove_if_epi8RSt6vectorIaSaIaEE, @function
_Z14remove_if_epi8RSt6vectorIaSaIaEE:
.LFB1535:
	.cfi_startproc
	movq	8(%rdi), %rcx
	movq	(%rdi), %rax
	movq	%rcx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rdx
	sarq	$2, %rdx
	testq	%rdx, %rdx
	jle	.L2
	leaq	(%rax,%rdx,4), %rdx
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L30:
	cmpb	$42, 1(%rax)
	jne	.L26
	cmpb	$42, 2(%rax)
	jne	.L27
	cmpb	$42, 3(%rax)
	jne	.L28
	addq	$4, %rax
	cmpq	%rdx, %rax
	je	.L29
.L7:
	cmpb	$42, (%rax)
	je	.L30
.L3:
	cmpq	%rax, %rcx
	je	.L23
	leaq	1(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L23
	.p2align 4,,10
	.p2align 3
.L14:
	cmpb	$42, (%rdx)
	jne	.L13
	movb	$42, (%rax)
	addq	$1, %rax
.L13:
	addq	$1, %rdx
	cmpq	%rcx, %rdx
	jne	.L14
.L23:
	ret
	.p2align 4,,10
	.p2align 3
.L29:
	movq	%rcx, %rsi
	subq	%rax, %rsi
.L2:
	cmpq	$2, %rsi
	je	.L8
	cmpq	$3, %rsi
	je	.L9
	cmpq	$1, %rsi
	je	.L10
	ret
.L9:
	cmpb	$42, (%rax)
	jne	.L3
	addq	$1, %rax
.L8:
	cmpb	$42, (%rax)
	jne	.L3
	addq	$1, %rax
.L10:
	cmpb	$42, (%rax)
	jne	.L3
	ret
	.p2align 4,,10
	.p2align 3
.L26:
	addq	$1, %rax
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L27:
	addq	$2, %rax
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L28:
	addq	$3, %rax
	jmp	.L3
	.cfi_endproc
.LFE1535:
	.size	_Z14remove_if_epi8RSt6vectorIaSaIaEE, .-_Z14remove_if_epi8RSt6vectorIaSaIaEE
	.p2align 4
	.globl	_Z15remove_if_epi32RSt6vectorIiSaIiEE
	.type	_Z15remove_if_epi32RSt6vectorIiSaIiEE, @function
_Z15remove_if_epi32RSt6vectorIiSaIiEE:
.LFB1539:
	.cfi_startproc
	movq	8(%rdi), %rsi
	movq	(%rdi), %rax
	movq	%rsi, %rdx
	subq	%rax, %rdx
	movq	%rdx, %rcx
	sarq	$4, %rdx
	sarq	$2, %rcx
	testq	%rdx, %rdx
	jle	.L32
	salq	$4, %rdx
	addq	%rax, %rdx
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L59:
	cmpb	$42, 4(%rax)
	jne	.L55
	cmpb	$42, 8(%rax)
	jne	.L56
	cmpb	$42, 12(%rax)
	jne	.L57
	addq	$16, %rax
	cmpq	%rax, %rdx
	je	.L58
.L37:
	cmpb	$42, (%rax)
	je	.L59
.L33:
	cmpq	%rax, %rsi
	je	.L53
	leaq	4(%rax), %rdx
	cmpq	%rdx, %rsi
	je	.L53
	.p2align 4,,10
	.p2align 3
.L44:
	movl	(%rdx), %ecx
	cmpb	$42, %cl
	jne	.L43
	movl	%ecx, (%rax)
	addq	$4, %rax
.L43:
	addq	$4, %rdx
	cmpq	%rdx, %rsi
	jne	.L44
.L53:
	ret
	.p2align 4,,10
	.p2align 3
.L58:
	movq	%rsi, %rcx
	subq	%rax, %rcx
	sarq	$2, %rcx
.L32:
	cmpq	$2, %rcx
	je	.L38
	cmpq	$3, %rcx
	je	.L39
	cmpq	$1, %rcx
	je	.L40
	ret
.L39:
	cmpb	$42, (%rax)
	jne	.L33
	addq	$4, %rax
.L38:
	cmpb	$42, (%rax)
	jne	.L33
	addq	$4, %rax
.L40:
	cmpb	$42, (%rax)
	jne	.L33
	ret
	.p2align 4,,10
	.p2align 3
.L55:
	addq	$4, %rax
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L56:
	addq	$8, %rax
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L57:
	addq	$12, %rax
	jmp	.L33
	.cfi_endproc
.LFE1539:
	.size	_Z15remove_if_epi32RSt6vectorIiSaIiEE, .-_Z15remove_if_epi32RSt6vectorIiSaIiEE
	.ident	"GCC: (GNU) 14.1.0"
	.section	.note.GNU-stack,"",@progbits
