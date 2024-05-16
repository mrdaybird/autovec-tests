	.file	"copy_if.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"vector::_M_realloc_append"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4
	.globl	_Z12copy_if_epi8RKSt6vectorIaSaIaEERS1_
	.type	_Z12copy_if_epi8RKSt6vectorIaSaIaEERS1_, @function
_Z12copy_if_epi8RKSt6vectorIaSaIaEERS1_:
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
	movq	8(%rdi), %r13
	movq	(%rdi), %rbx
	cmpq	%r13, %rbx
	je	.L21
	movq	%rsi, %rbp
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L3:
	addq	$1, %rbx
	cmpq	%rbx, %r13
	je	.L21
.L12:
	movzbl	(%rbx), %eax
	testb	%al, %al
	jle	.L3
	movq	8(%rbp), %rdx
	cmpq	16(%rbp), %rdx
	je	.L4
	addq	$1, %rbx
	movb	%al, (%rdx)
	addq	$1, 8(%rbp)
	cmpq	%rbx, %r13
	jne	.L12
.L21:
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
.L4:
	.cfi_restore_state
	movabsq	$9223372036854775807, %rax
	movq	0(%rbp), %rcx
	subq	%rcx, %rdx
	movq	%rdx, %r12
	cmpq	%rax, %rdx
	je	.L20
	testq	%rdx, %rdx
	movl	$1, %r14d
	cmovne	%rdx, %r14
	addq	%rdx, %r14
	jc	.L7
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, %r14
	cmova	%rax, %r14
.L8:
	movq	%r14, %rdi
	movq	%rcx, (%rsp)
	call	_Znwm
	testq	%r12, %r12
	movq	(%rsp), %rcx
	movq	%rax, %r15
	movzbl	(%rbx), %eax
	leaq	1(%r15,%r12), %r8
	movb	%al, (%r15,%r12)
	jg	.L24
	testq	%rcx, %rcx
	jne	.L25
.L11:
	movq	%r15, 0(%rbp)
	addq	%r14, %r15
	movq	%r8, 8(%rbp)
	movq	%r15, 16(%rbp)
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L24:
	movq	%rcx, %rsi
	movq	%r12, %rdx
	movq	%r15, %rdi
	movq	%r8, 8(%rsp)
	call	memcpy
	movq	16(%rbp), %rsi
	movq	(%rsp), %rcx
	movq	8(%rsp), %r8
	subq	%rcx, %rsi
.L10:
	movq	%rcx, %rdi
	movq	%r8, (%rsp)
	call	_ZdlPvm
	movq	(%rsp), %r8
	jmp	.L11
.L25:
	movq	16(%rbp), %rsi
	subq	%rcx, %rsi
	jmp	.L10
.L7:
	movq	%rax, %r14
	jmp	.L8
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	_Z12copy_if_epi8RKSt6vectorIaSaIaEERS1_.cold, @function
_Z12copy_if_epi8RKSt6vectorIaSaIaEERS1_.cold:
.LFSB2400:
.L20:
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
	.size	_Z12copy_if_epi8RKSt6vectorIaSaIaEERS1_, .-_Z12copy_if_epi8RKSt6vectorIaSaIaEERS1_
	.section	.text.unlikely
	.size	_Z12copy_if_epi8RKSt6vectorIaSaIaEERS1_.cold, .-_Z12copy_if_epi8RKSt6vectorIaSaIaEERS1_.cold
.LCOLDE1:
	.text
.LHOTE1:
	.section	.text._ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_,"axG",@progbits,_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_
	.type	_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_, @function
_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_:
.LFB2946:
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
.LFE2946:
	.size	_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_, .-_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_
	.text
	.p2align 4
	.globl	_Z13copy_if_epi32RKSt6vectorIiSaIiEERS1_
	.type	_Z13copy_if_epi32RKSt6vectorIiSaIiEERS1_, @function
_Z13copy_if_epi32RKSt6vectorIiSaIiEERS1_:
.LFB2404:
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
	movq	8(%rdi), %r12
	movq	(%rdi), %rbx
	cmpq	%r12, %rbx
	je	.L48
	movq	%rsi, %rbp
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L44:
	addq	$4, %rbx
	cmpq	%rbx, %r12
	je	.L48
.L46:
	movl	(%rbx), %eax
	testl	%eax, %eax
	jle	.L44
	movq	8(%rbp), %rdx
	cmpq	16(%rbp), %rdx
	je	.L45
	movl	%eax, (%rdx)
	addq	$4, %rbx
	addq	$4, %rdx
	movq	%rdx, 8(%rbp)
	cmpq	%rbx, %r12
	jne	.L46
.L48:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L45:
	.cfi_restore_state
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_
	jmp	.L44
	.cfi_endproc
.LFE2404:
	.size	_Z13copy_if_epi32RKSt6vectorIiSaIiEERS1_, .-_Z13copy_if_epi32RKSt6vectorIiSaIiEERS1_
	.ident	"GCC: (GNU) 14.1.0"
	.section	.note.GNU-stack,"",@progbits
