	.text
	.file	"copy.cpp"
	.globl	_Z9copy_epi8RKSt6vectorIaSaIaEERS1_ # -- Begin function _Z9copy_epi8RKSt6vectorIaSaIaEERS1_
	.p2align	4, 0x90
	.type	_Z9copy_epi8RKSt6vectorIaSaIaEERS1_,@function
_Z9copy_epi8RKSt6vectorIaSaIaEERS1_:    # @_Z9copy_epi8RKSt6vectorIaSaIaEERS1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	(%rdi), %rbp
	movq	8(%rdi), %rbx
	subq	%rbp, %rbx
	testq	%rbx, %rbx
	jle	.LBB0_15
# %bb.1:
	movabsq	$9223372036854775807, %r12      # imm = 0x7FFFFFFFFFFFFFFF
	movq	8(%rsi), %r14
	incq	%rbx
	movq	%rsi, (%rsp)                    # 8-byte Spill
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_3:                                #   in Loop: Header=BB0_2 Depth=1
	movzbl	(%rbp), %eax
	movb	%al, (%r14)
	movq	8(%rsi), %r14
	incq	%r14
	movq	%r14, 8(%rsi)
	incq	%rbp
	decq	%rbx
	cmpq	$1, %rbx
	jle	.LBB0_15
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	cmpq	16(%rsi), %r14
	jne	.LBB0_3
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	movq	(%rsi), %r15
	subq	%r15, %r14
	cmpq	%r12, %r14
	je	.LBB0_16
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	cmpq	$1, %r14
	movq	%r14, %rax
	adcq	$0, %rax
	movq	%rax, %rdx
	addq	%r14, %rdx
	movq	%r12, %rcx
	js	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	movq	%rdx, %rcx
.LBB0_7:                                #   in Loop: Header=BB0_2 Depth=1
	addq	%r14, %rax
	jb	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %r12
.LBB0_9:                                #   in Loop: Header=BB0_2 Depth=1
	movq	%r12, %rdi
	callq	_Znwm@PLT
	movq	%rax, %r13
	movzbl	(%rbp), %eax
	movb	%al, (%r13,%r14)
	testq	%r14, %r14
	jle	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_2 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
.LBB0_11:                               #   in Loop: Header=BB0_2 Depth=1
	testq	%r15, %r15
	je	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_2 Depth=1
	movq	%r15, %rdi
	callq	_ZdlPv@PLT
.LBB0_13:                               #   in Loop: Header=BB0_2 Depth=1
	addq	%r13, %r14
	incq	%r14
	movq	(%rsp), %rsi                    # 8-byte Reload
	movq	%r13, (%rsi)
	movq	%r14, 8(%rsi)
	addq	%r13, %r12
	movq	%r12, 16(%rsi)
	movabsq	$9223372036854775807, %r12      # imm = 0x7FFFFFFFFFFFFFFF
	incq	%rbp
	decq	%rbx
	cmpq	$1, %rbx
	jg	.LBB0_2
.LBB0_15:
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB0_16:
	.cfi_def_cfa_offset 64
	leaq	.L.str(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Lfunc_end0:
	.size	_Z9copy_epi8RKSt6vectorIaSaIaEERS1_, .Lfunc_end0-_Z9copy_epi8RKSt6vectorIaSaIaEERS1_
	.cfi_endproc
                                        # -- End function
	.globl	_Z10copy_epi32RKSt6vectorIiSaIiEERS1_ # -- Begin function _Z10copy_epi32RKSt6vectorIiSaIiEERS1_
	.p2align	4, 0x90
	.type	_Z10copy_epi32RKSt6vectorIiSaIiEERS1_,@function
_Z10copy_epi32RKSt6vectorIiSaIiEERS1_:  # @_Z10copy_epi32RKSt6vectorIiSaIiEERS1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	(%rdi), %r13
	movq	8(%rdi), %rbp
	subq	%r13, %rbp
	testq	%rbp, %rbp
	jle	.LBB1_15
# %bb.1:
	movabsq	$2305843009213693951, %rbx      # imm = 0x1FFFFFFFFFFFFFFF
	shrq	$2, %rbp
	movq	8(%rsi), %rax
	movq	16(%rsi), %r14
	incq	%rbp
	movq	%rsi, (%rsp)                    # 8-byte Spill
	jmp	.LBB1_2
	.p2align	4, 0x90
.LBB1_3:                                #   in Loop: Header=BB1_2 Depth=1
	movl	(%r13), %ecx
	movl	%ecx, (%rax)
	addq	$4, %rax
	movq	%rax, 8(%rsi)
	addq	$4, %r13
	decq	%rbp
	cmpq	$1, %rbp
	jle	.LBB1_15
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	cmpq	%r14, %rax
	jne	.LBB1_3
# %bb.4:                                #   in Loop: Header=BB1_2 Depth=1
	movq	(%rsi), %r15
	subq	%r15, %r14
	movabsq	$9223372036854775804, %rax      # imm = 0x7FFFFFFFFFFFFFFC
	cmpq	%rax, %r14
	je	.LBB1_16
# %bb.5:                                #   in Loop: Header=BB1_2 Depth=1
	movq	%r14, %rax
	sarq	$2, %rax
	cmpq	$1, %rax
	movq	%rax, %rcx
	adcq	$0, %rcx
	leaq	(%rcx,%rax), %rdi
	movq	%rbx, %rdx
	cmpq	%rbx, %rdi
	ja	.LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_2 Depth=1
	movq	%rdi, %rdx
.LBB1_7:                                #   in Loop: Header=BB1_2 Depth=1
	addq	%rax, %rcx
	jb	.LBB1_9
# %bb.8:                                #   in Loop: Header=BB1_2 Depth=1
	movq	%rdx, %rbx
.LBB1_9:                                #   in Loop: Header=BB1_2 Depth=1
	leaq	(,%rbx,4), %rdi
	callq	_Znwm@PLT
	movq	%rax, %r12
	movl	(%r13), %eax
	movl	%eax, (%r12,%r14)
	testq	%r14, %r14
	jle	.LBB1_11
# %bb.10:                               #   in Loop: Header=BB1_2 Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
.LBB1_11:                               #   in Loop: Header=BB1_2 Depth=1
	testq	%r15, %r15
	je	.LBB1_13
# %bb.12:                               #   in Loop: Header=BB1_2 Depth=1
	movq	%r15, %rdi
	callq	_ZdlPv@PLT
.LBB1_13:                               #   in Loop: Header=BB1_2 Depth=1
	addq	%r12, %r14
	movq	%r14, %rax
	addq	$4, %rax
	movq	(%rsp), %rsi                    # 8-byte Reload
	movq	%r12, (%rsi)
	movq	%rax, 8(%rsi)
	leaq	(%r12,%rbx,4), %r14
	movq	%r14, 16(%rsi)
	movabsq	$2305843009213693951, %rbx      # imm = 0x1FFFFFFFFFFFFFFF
	addq	$4, %r13
	decq	%rbp
	cmpq	$1, %rbp
	jg	.LBB1_2
.LBB1_15:
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB1_16:
	.cfi_def_cfa_offset 64
	leaq	.L.str(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Lfunc_end1:
	.size	_Z10copy_epi32RKSt6vectorIiSaIiEERS1_, .Lfunc_end1-_Z10copy_epi32RKSt6vectorIiSaIiEERS1_
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"vector::_M_realloc_append"
	.size	.L.str, 26

	.ident	"clang version 18.0.0 (https://github.com/llvm/llvm-project.git 2176c5e510e3bfcbc75afb13e78d287141f239a7)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
