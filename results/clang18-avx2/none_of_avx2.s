	.text
	.file	"none_of.cpp"
	.globl	_Z12none_of_epi8RKSt6vectorIaSaIaEE # -- Begin function _Z12none_of_epi8RKSt6vectorIaSaIaEE
	.p2align	4, 0x90
	.type	_Z12none_of_epi8RKSt6vectorIaSaIaEE,@function
_Z12none_of_epi8RKSt6vectorIaSaIaEE:    # @_Z12none_of_epi8RKSt6vectorIaSaIaEE
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rdx
	movq	8(%rdi), %rax
	movq	%rax, %rsi
	subq	%rdx, %rsi
	cmpq	$4, %rsi
	jl	.LBB0_1
# %bb.2:
	shrq	$2, %rsi
	incq	%rsi
	movq	%rdx, %rcx
	addq	$3, %rcx
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	cmpb	$42, -3(%rcx)
	je	.LBB0_21
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	cmpb	$42, -2(%rcx)
	je	.LBB0_19
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	cmpb	$42, -1(%rcx)
	je	.LBB0_20
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	cmpb	$42, (%rcx)
	je	.LBB0_22
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	decq	%rsi
	addq	$4, %rcx
	addq	$4, %rdx
	cmpq	$1, %rsi
	jg	.LBB0_3
# %bb.8:
	addq	$-3, %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	subq	%rdx, %rdi
	cmpq	$1, %rdi
	jne	.LBB0_10
	jmp	.LBB0_18
.LBB0_1:
	movq	%rdx, %rsi
	movq	%rax, %rdi
	subq	%rdx, %rdi
	cmpq	$1, %rdi
	je	.LBB0_18
.LBB0_10:
	cmpq	$2, %rdi
	je	.LBB0_15
# %bb.11:
	movq	%rax, %rcx
	cmpq	$3, %rdi
	jne	.LBB0_22
# %bb.12:
	cmpb	$42, (%rsi)
	jne	.LBB0_14
# %bb.13:
	movq	%rsi, %rcx
.LBB0_22:
	cmpq	%rax, %rcx
	sete	%al
	retq
.LBB0_21:
	addq	$-3, %rcx
	cmpq	%rax, %rcx
	sete	%al
	retq
.LBB0_19:
	addq	$-2, %rcx
	cmpq	%rax, %rcx
	sete	%al
	retq
.LBB0_20:
	decq	%rcx
	cmpq	%rax, %rcx
	sete	%al
	retq
.LBB0_14:
	incq	%rsi
.LBB0_15:
	cmpb	$42, (%rsi)
	jne	.LBB0_17
# %bb.16:
	movq	%rsi, %rcx
	cmpq	%rax, %rcx
	sete	%al
	retq
.LBB0_17:
	incq	%rsi
.LBB0_18:
	cmpb	$42, (%rsi)
	cmovneq	%rax, %rsi
	movq	%rsi, %rcx
	cmpq	%rax, %rcx
	sete	%al
	retq
.Lfunc_end0:
	.size	_Z12none_of_epi8RKSt6vectorIaSaIaEE, .Lfunc_end0-_Z12none_of_epi8RKSt6vectorIaSaIaEE
	.cfi_endproc
                                        # -- End function
	.globl	_Z13none_of_epi32RKSt6vectorIiSaIiEE # -- Begin function _Z13none_of_epi32RKSt6vectorIiSaIiEE
	.p2align	4, 0x90
	.type	_Z13none_of_epi32RKSt6vectorIiSaIiEE,@function
_Z13none_of_epi32RKSt6vectorIiSaIiEE:   # @_Z13none_of_epi32RKSt6vectorIiSaIiEE
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rsi
	movq	8(%rdi), %rax
	movq	%rax, %rcx
	subq	%rsi, %rcx
	cmpq	$16, %rcx
	jl	.LBB1_8
# %bb.1:
	movq	%rcx, %rdi
	shrq	$4, %rdi
	incq	%rdi
	addq	$8, %rsi
	movq	%rsi, %rdx
	.p2align	4, 0x90
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	cmpl	$42, -8(%rdx)
	je	.LBB1_20
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	cmpl	$42, -4(%rdx)
	je	.LBB1_18
# %bb.4:                                #   in Loop: Header=BB1_2 Depth=1
	cmpl	$42, (%rdx)
	je	.LBB1_21
# %bb.5:                                #   in Loop: Header=BB1_2 Depth=1
	cmpl	$42, 4(%rdx)
	je	.LBB1_19
# %bb.6:                                #   in Loop: Header=BB1_2 Depth=1
	decq	%rdi
	addq	$16, %rdx
	addq	$-16, %rcx
	cmpq	$1, %rdi
	jg	.LBB1_2
# %bb.7:
	addq	$-8, %rdx
	movq	%rdx, %rsi
.LBB1_8:
	sarq	$2, %rcx
	cmpq	$1, %rcx
	je	.LBB1_17
# %bb.9:
	cmpq	$2, %rcx
	je	.LBB1_14
# %bb.10:
	movq	%rax, %rdx
	cmpq	$3, %rcx
	jne	.LBB1_21
# %bb.11:
	cmpl	$42, (%rsi)
	jne	.LBB1_13
# %bb.12:
	movq	%rsi, %rdx
.LBB1_21:
	cmpq	%rax, %rdx
	sete	%al
	retq
.LBB1_20:
	addq	$-8, %rdx
	cmpq	%rax, %rdx
	sete	%al
	retq
.LBB1_18:
	addq	$-4, %rdx
	cmpq	%rax, %rdx
	sete	%al
	retq
.LBB1_19:
	addq	$4, %rdx
	cmpq	%rax, %rdx
	sete	%al
	retq
.LBB1_13:
	addq	$4, %rsi
.LBB1_14:
	cmpl	$42, (%rsi)
	jne	.LBB1_16
# %bb.15:
	movq	%rsi, %rdx
	cmpq	%rax, %rdx
	sete	%al
	retq
.LBB1_16:
	addq	$4, %rsi
.LBB1_17:
	cmpl	$42, (%rsi)
	cmovneq	%rax, %rsi
	movq	%rsi, %rdx
	cmpq	%rax, %rdx
	sete	%al
	retq
.Lfunc_end1:
	.size	_Z13none_of_epi32RKSt6vectorIiSaIiEE, .Lfunc_end1-_Z13none_of_epi32RKSt6vectorIiSaIiEE
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 18.0.0 (https://github.com/llvm/llvm-project.git 2176c5e510e3bfcbc75afb13e78d287141f239a7)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
