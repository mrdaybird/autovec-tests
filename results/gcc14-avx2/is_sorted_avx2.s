	.file	"is_sorted.cpp"
	.text
	.p2align 4
	.globl	_Z14is_sorted_epi8RKSt6vectorIaSaIaEE
	.type	_Z14is_sorted_epi8RKSt6vectorIaSaIaEE, @function
_Z14is_sorted_epi8RKSt6vectorIaSaIaEE:
.LFB1535:
	.cfi_startproc
	movq	8(%rdi), %rsi
	movq	(%rdi), %rdx
	movl	$1, %ecx
	cmpq	%rsi, %rdx
	je	.L1
	leaq	1(%rdx), %rax
	cmpq	%rsi, %rax
	je	.L1
	movzbl	(%rdx), %edx
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L3:
	addq	$1, %rax
	cmpq	%rax, %rsi
	je	.L9
.L4:
	movl	%edx, %ecx
	movzbl	(%rax), %edx
	cmpb	%cl, %dl
	jge	.L3
	cmpq	%rax, %rsi
	sete	%cl
.L1:
	movl	%ecx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L9:
	movl	$1, %ecx
	movl	%ecx, %eax
	ret
	.cfi_endproc
.LFE1535:
	.size	_Z14is_sorted_epi8RKSt6vectorIaSaIaEE, .-_Z14is_sorted_epi8RKSt6vectorIaSaIaEE
	.p2align 4
	.globl	_Z15is_sorted_epi32RKSt6vectorIiSaIiEE
	.type	_Z15is_sorted_epi32RKSt6vectorIiSaIiEE, @function
_Z15is_sorted_epi32RKSt6vectorIiSaIiEE:
.LFB1536:
	.cfi_startproc
	movq	8(%rdi), %rsi
	movq	(%rdi), %rdx
	movl	$1, %ecx
	cmpq	%rsi, %rdx
	je	.L10
	leaq	4(%rdx), %rax
	cmpq	%rsi, %rax
	je	.L10
	movl	(%rdx), %edx
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L12:
	addq	$4, %rax
	cmpq	%rax, %rsi
	je	.L17
.L13:
	movl	%edx, %ecx
	movl	(%rax), %edx
	cmpl	%ecx, %edx
	jge	.L12
	cmpq	%rax, %rsi
	sete	%cl
.L10:
	movl	%ecx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L17:
	movl	$1, %ecx
	movl	%ecx, %eax
	ret
	.cfi_endproc
.LFE1536:
	.size	_Z15is_sorted_epi32RKSt6vectorIiSaIiEE, .-_Z15is_sorted_epi32RKSt6vectorIiSaIiEE
	.ident	"GCC: (GNU) 14.1.0"
	.section	.note.GNU-stack,"",@progbits
