	.text
	.file	"copy_if.cpp"
	.globl	_Z12copy_if_epi8RKSt6vectorIaSaIaEERS1_ # -- Begin function _Z12copy_if_epi8RKSt6vectorIaSaIaEERS1_
	.p2align	4, 0x90
	.type	_Z12copy_if_epi8RKSt6vectorIaSaIaEERS1_,@function
_Z12copy_if_epi8RKSt6vectorIaSaIaEERS1_: # @_Z12copy_if_epi8RKSt6vectorIaSaIaEERS1_
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	(%rdi), %rbp
	movq	8(%rdi), %rax
	cmpq	%rax, %rbp
	je	.LBB0_12
# %bb.1:
	movq	%rsi, %rbx
	movabsq	$9223372036854775807, %rcx      # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_2 Depth=1
	movb	%r12b, (%r14)
	incq	8(%rbx)
.LBB0_11:                               #   in Loop: Header=BB0_2 Depth=1
	incq	%rbp
	cmpq	%rax, %rbp
	je	.LBB0_12
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rbp), %r12d
	testb	%r12b, %r12b
	jle	.LBB0_11
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movq	8(%rbx), %r14
	cmpq	16(%rbx), %r14
	jne	.LBB0_4
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	movq	(%rbx), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	subq	%rax, %r14
	cmpq	%rcx, %r14
	je	.LBB0_13
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	cmpq	$1, %r14
	movq	%r14, %rax
	adcq	$0, %rax
	movq	%rax, %r15
	addq	%r14, %r15
	cmovsq	%rcx, %r15
	addq	%r14, %rax
	cmovbq	%rcx, %r15
	movq	%r15, %rdi
	callq	_Znwm@PLT
	movq	%rax, %r13
	movb	%r12b, (%rax,%r14)
	testq	%r14, %r14
	movq	16(%rsp), %r12                  # 8-byte Reload
	jle	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_2 Depth=1
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
.LBB0_8:                                #   in Loop: Header=BB0_2 Depth=1
	testq	%r12, %r12
	je	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_2 Depth=1
	movq	%r12, %rdi
	callq	_ZdlPv@PLT
.LBB0_10:                               #   in Loop: Header=BB0_2 Depth=1
	addq	%r13, %r14
	incq	%r14
	movq	%r13, (%rbx)
	movq	%r14, 8(%rbx)
	addq	%r13, %r15
	movq	%r15, 16(%rbx)
	movq	8(%rsp), %rax                   # 8-byte Reload
	movabsq	$9223372036854775807, %rcx      # imm = 0x7FFFFFFFFFFFFFFF
	jmp	.LBB0_11
.LBB0_12:
	addq	$24, %rsp
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
.LBB0_13:
	.cfi_def_cfa_offset 80
	leaq	.L.str(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Lfunc_end0:
	.size	_Z12copy_if_epi8RKSt6vectorIaSaIaEERS1_, .Lfunc_end0-_Z12copy_if_epi8RKSt6vectorIaSaIaEERS1_
	.cfi_endproc
                                        # -- End function
	.globl	_Z13copy_if_epi32RKSt6vectorIiSaIiEERS1_ # -- Begin function _Z13copy_if_epi32RKSt6vectorIiSaIiEERS1_
	.p2align	4, 0x90
	.type	_Z13copy_if_epi32RKSt6vectorIiSaIiEERS1_,@function
_Z13copy_if_epi32RKSt6vectorIiSaIiEERS1_: # @_Z13copy_if_epi32RKSt6vectorIiSaIiEERS1_
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	(%rdi), %r13
	movq	8(%rdi), %rax
	cmpq	%rax, %r13
	je	.LBB1_12
# %bb.1:
	movq	%rsi, %rbx
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	jmp	.LBB1_2
	.p2align	4, 0x90
.LBB1_4:                                #   in Loop: Header=BB1_2 Depth=1
	movl	%r15d, (%r14)
	addq	$4, %r14
	movq	%r14, 8(%rbx)
.LBB1_11:                               #   in Loop: Header=BB1_2 Depth=1
	addq	$4, %r13
	cmpq	%rax, %r13
	je	.LBB1_12
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movl	(%r13), %r15d
	testl	%r15d, %r15d
	jle	.LBB1_11
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	movq	8(%rbx), %r14
	cmpq	16(%rbx), %r14
	jne	.LBB1_4
# %bb.5:                                #   in Loop: Header=BB1_2 Depth=1
	movq	(%rbx), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	subq	%rax, %r14
	movabsq	$9223372036854775804, %rax      # imm = 0x7FFFFFFFFFFFFFFC
	cmpq	%rax, %r14
	je	.LBB1_13
# %bb.6:                                #   in Loop: Header=BB1_2 Depth=1
	movq	%r14, %rax
	sarq	$2, %rax
	cmpq	$1, %rax
	movq	%rax, %rcx
	adcq	$0, %rcx
	leaq	(%rcx,%rax), %rbp
	movabsq	$2305843009213693951, %rdx      # imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rdx, %rbp
	cmovaq	%rdx, %rbp
	addq	%rax, %rcx
	cmovbq	%rdx, %rbp
	leaq	(,%rbp,4), %rdi
	callq	_Znwm@PLT
	movq	%rax, %r12
	movl	%r15d, (%rax,%r14)
	testq	%r14, %r14
	movq	16(%rsp), %r15                  # 8-byte Reload
	jle	.LBB1_8
# %bb.7:                                #   in Loop: Header=BB1_2 Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
.LBB1_8:                                #   in Loop: Header=BB1_2 Depth=1
	testq	%r15, %r15
	je	.LBB1_10
# %bb.9:                                #   in Loop: Header=BB1_2 Depth=1
	movq	%r15, %rdi
	callq	_ZdlPv@PLT
.LBB1_10:                               #   in Loop: Header=BB1_2 Depth=1
	addq	%r12, %r14
	addq	$4, %r14
	movq	%r12, (%rbx)
	movq	%r14, 8(%rbx)
	leaq	(%r12,%rbp,4), %rax
	movq	%rax, 16(%rbx)
	movq	8(%rsp), %rax                   # 8-byte Reload
	jmp	.LBB1_11
.LBB1_12:
	addq	$24, %rsp
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
.LBB1_13:
	.cfi_def_cfa_offset 80
	leaq	.L.str(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Lfunc_end1:
	.size	_Z13copy_if_epi32RKSt6vectorIiSaIiEERS1_, .Lfunc_end1-_Z13copy_if_epi32RKSt6vectorIiSaIiEERS1_
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
