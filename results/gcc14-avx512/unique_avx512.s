	.file	"unique.cpp"
	.text
	.p2align 4
	.globl	_Z11unique_epi8RSt6vectorIaSaIaEE
	.type	_Z11unique_epi8RSt6vectorIaSaIaEE, @function
_Z11unique_epi8RSt6vectorIaSaIaEE:
.LFB1535:
	.cfi_startproc
	movq	8(%rdi), %rsi
	movq	(%rdi), %rdx
	cmpq	%rsi, %rdx
	jne	.L2
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	movzbl	1(%rax), %ecx
	cmpb	%cl, -1(%rdx)
	je	.L3
.L2:
	movq	%rdx, %rax
	leaq	1(%rdx), %rdx
	cmpq	%rdx, %rsi
	jne	.L4
	ret
	.p2align 4,,10
	.p2align 3
.L3:
	cmpq	%rax, %rsi
	je	.L11
	leaq	2(%rax), %rdx
	cmpq	%rdx, %rsi
	je	.L11
	movzbl	(%rax), %edi
	movzbl	(%rdx), %ecx
	cmpb	%cl, %dil
	je	.L6
	.p2align 4,,10
	.p2align 3
.L14:
	addq	$1, %rdx
	movb	%cl, 1(%rax)
	leaq	1(%rax), %rdi
	cmpq	%rdx, %rsi
	je	.L13
	movq	%rdi, %rax
.L7:
	movl	%ecx, %edi
	movzbl	(%rdx), %ecx
	cmpb	%cl, %dil
	jne	.L14
.L6:
	addq	$1, %rdx
	cmpq	%rsi, %rdx
	jne	.L7
	ret
	.p2align 4,,10
	.p2align 3
.L11:
	ret
	.p2align 4,,10
	.p2align 3
.L13:
	ret
	.cfi_endproc
.LFE1535:
	.size	_Z11unique_epi8RSt6vectorIaSaIaEE, .-_Z11unique_epi8RSt6vectorIaSaIaEE
	.p2align 4
	.globl	_Z12unique_epi32RSt6vectorIiSaIiEE
	.type	_Z12unique_epi32RSt6vectorIiSaIiEE, @function
_Z12unique_epi32RSt6vectorIiSaIiEE:
.LFB1536:
	.cfi_startproc
	movq	8(%rdi), %rsi
	movq	(%rdi), %rdx
	cmpq	%rsi, %rdx
	jne	.L16
	ret
	.p2align 4,,10
	.p2align 3
.L18:
	movl	4(%rax), %ecx
	cmpl	%ecx, -4(%rdx)
	je	.L17
.L16:
	movq	%rdx, %rax
	leaq	4(%rdx), %rdx
	cmpq	%rdx, %rsi
	jne	.L18
	ret
	.p2align 4,,10
	.p2align 3
.L17:
	cmpq	%rax, %rsi
	je	.L25
	leaq	8(%rax), %rdx
	cmpq	%rdx, %rsi
	je	.L25
	movl	(%rax), %edi
	movl	(%rdx), %ecx
	cmpl	%ecx, %edi
	je	.L20
	.p2align 4,,10
	.p2align 3
.L27:
	addq	$4, %rdx
	movl	%ecx, 4(%rax)
	leaq	4(%rax), %rdi
	cmpq	%rdx, %rsi
	je	.L26
	movq	%rdi, %rax
.L21:
	movl	%ecx, %edi
	movl	(%rdx), %ecx
	cmpl	%ecx, %edi
	jne	.L27
.L20:
	addq	$4, %rdx
	cmpq	%rsi, %rdx
	jne	.L21
	ret
	.p2align 4,,10
	.p2align 3
.L25:
	ret
	.p2align 4,,10
	.p2align 3
.L26:
	ret
	.cfi_endproc
.LFE1536:
	.size	_Z12unique_epi32RSt6vectorIiSaIiEE, .-_Z12unique_epi32RSt6vectorIiSaIiEE
	.ident	"GCC: (GNU) 14.1.0"
	.section	.note.GNU-stack,"",@progbits
