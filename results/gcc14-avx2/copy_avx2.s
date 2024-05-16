	.file	"copy.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"vector::_M_realloc_append"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4
	.globl	_Z9copy_epi8RKSt6vectorIaSaIaEERS1_
	.type	_Z9copy_epi8RKSt6vectorIaSaIaEERS1_, @function
_Z9copy_epi8RKSt6vectorIaSaIaEERS1_:
.LFB2400:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	8(%rdi), %r15
	movq	(%rdi), %rbp
	movq	%r15, %rax
	subq	%rbp, %rax
	testq	%rax, %rax
	jle	.L20
	movq	8(%rsi), %rbx
	movq	%rsi, %r12
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L23:
	movzbl	0(%rbp), %eax
	addq	$1, %rbp
	movb	%al, (%rbx)
	movq	8(%r12), %rax
	leaq	1(%rax), %rbx
	movq	%rbx, 8(%r12)
	cmpq	%r15, %rbp
	je	.L20
.L12:
	cmpq	%rbx, 16(%r12)
	jne	.L23
	movabsq	$9223372036854775807, %rax
	movq	(%r12), %r9
	subq	%r9, %rbx
	movq	%rbx, %r14
	cmpq	%rax, %rbx
	je	.L19
	testq	%rbx, %rbx
	movl	$1, %r13d
	cmovne	%rbx, %r13
	addq	%rbx, %r13
	jc	.L7
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, %r13
	cmova	%rax, %r13
.L8:
	movq	%r13, %rdi
	movq	%r9, 8(%rsp)
	call	_Znwm
	testq	%r14, %r14
	movq	8(%rsp), %r9
	movq	%rax, %rcx
	movzbl	0(%rbp), %eax
	leaq	1(%rcx,%r14), %rbx
	movb	%al, (%rcx,%r14)
	jg	.L24
	testq	%r9, %r9
	jne	.L25
.L11:
	movq	%rcx, (%r12)
	addq	$1, %rbp
	addq	%r13, %rcx
	movq	%rbx, 8(%r12)
	movq	%rcx, 16(%r12)
	cmpq	%r15, %rbp
	jne	.L12
.L20:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L24:
	.cfi_restore_state
	movq	%r9, %rsi
	movq	%rcx, %rdi
	movq	%r14, %rdx
	call	memcpy
	movq	16(%r12), %rsi
	movq	8(%rsp), %r9
	movq	%rax, %rcx
	subq	%r9, %rsi
.L10:
	movq	%r9, %rdi
	movq	%rcx, 8(%rsp)
	call	_ZdlPvm
	movq	8(%rsp), %rcx
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L25:
	movq	16(%r12), %rsi
	subq	%r9, %rsi
	jmp	.L10
.L7:
	movabsq	$9223372036854775807, %r13
	jmp	.L8
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	_Z9copy_epi8RKSt6vectorIaSaIaEERS1_.cold, @function
_Z9copy_epi8RKSt6vectorIaSaIaEERS1_.cold:
.LFSB2400:
.L19:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movl	$.LC0, %edi
	call	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE2400:
	.text
	.size	_Z9copy_epi8RKSt6vectorIaSaIaEERS1_, .-_Z9copy_epi8RKSt6vectorIaSaIaEERS1_
	.section	.text.unlikely
	.size	_Z9copy_epi8RKSt6vectorIaSaIaEERS1_.cold, .-_Z9copy_epi8RKSt6vectorIaSaIaEERS1_.cold
.LCOLDE1:
	.text
.LHOTE1:
	.section	.text._ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_,"axG",@progbits,_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_
	.type	_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_, @function
_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_:
.LFB2986:
	.cfi_startproc
	movabsq	$2305843009213693951, %rdx
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	movq	(%rdi), %r14
	movq	8(%rdi), %r13
	subq	%r14, %r13
	movq	%r13, %rax
	sarq	$2, %rax
	cmpq	%rdx, %rax
	je	.L39
	testq	%rax, %rax
	movl	$1, %edx
	movq	%rdi, %r12
	movq	%rsi, %r15
	cmovne	%rax, %rdx
	addq	%rdx, %rax
	jc	.L29
	movabsq	$2305843009213693951, %rdx
	cmpq	%rdx, %rax
	cmova	%rdx, %rax
	leaq	0(,%rax,4), %rbx
.L30:
	movq	%rbx, %rdi
	call	_Znwm
	movq	%rax, %rbp
	movl	(%r15), %eax
	leaq	4(%rbp,%r13), %r15
	movl	%eax, 0(%rbp,%r13)
	testq	%r13, %r13
	jg	.L40
	testq	%r14, %r14
	jne	.L41
.L33:
	movq	%rbp, (%r12)
	addq	%rbx, %rbp
	movq	%r15, 8(%r12)
	movq	%rbp, 16(%r12)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L40:
	.cfi_restore_state
	movq	%r14, %rsi
	movq	%r13, %rdx
	movq	%rbp, %rdi
	call	memcpy
	movq	16(%r12), %rsi
	subq	%r14, %rsi
.L32:
	movq	%r14, %rdi
	call	_ZdlPvm
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L41:
	movq	16(%r12), %rsi
	subq	%r14, %rsi
	jmp	.L32
.L29:
	movabsq	$9223372036854775804, %rbx
	jmp	.L30
.L39:
	movl	$.LC0, %edi
	call	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE2986:
	.size	_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_, .-_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_
	.text
	.p2align 4
	.globl	_Z10copy_epi32RKSt6vectorIiSaIiEERS1_
	.type	_Z10copy_epi32RKSt6vectorIiSaIiEERS1_, @function
_Z10copy_epi32RKSt6vectorIiSaIiEERS1_:
.LFB2401:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	(%rdi), %rbp
	movq	8(%rdi), %rax
	subq	%rbp, %rax
	movq	%rax, %r12
	sarq	$2, %r12
	testq	%rax, %rax
	jle	.L48
	movq	%rsi, %rbx
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L50:
	movl	0(%rbp), %edx
	addq	$4, %rax
	addq	$4, %rbp
	movl	%edx, -4(%rax)
	movq	%rax, 8(%rbx)
	subq	$1, %r12
	je	.L48
.L46:
	movq	8(%rbx), %rax
	cmpq	16(%rbx), %rax
	jne	.L50
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	addq	$4, %rbp
	call	_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_
	subq	$1, %r12
	jne	.L46
.L48:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2401:
	.size	_Z10copy_epi32RKSt6vectorIiSaIiEERS1_, .-_Z10copy_epi32RKSt6vectorIiSaIiEERS1_
	.ident	"GCC: (GNU) 14.1.0"
	.section	.note.GNU-stack,"",@progbits
