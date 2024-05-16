	.text
	.file	"all_of.cpp"
	.globl	_Z11all_of_epi8RKSt6vectorIaSaIaEE # -- Begin function _Z11all_of_epi8RKSt6vectorIaSaIaEE
	.p2align	4, 0x90
	.type	_Z11all_of_epi8RKSt6vectorIaSaIaEE,@function
_Z11all_of_epi8RKSt6vectorIaSaIaEE:     # @_Z11all_of_epi8RKSt6vectorIaSaIaEE
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rdx
	movq	8(%rdi), %rax
	movq	%rax, %rsi
	subq	%rdx, %rsi
	cmpq	$4, %rsi
	jl	.LBB0_8
# %bb.1:
	shrq	$2, %rsi
	incq	%rsi
	movq	%rdx, %rcx
	addq	$3, %rcx
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	cmpb	$42, -3(%rcx)
	jne	.LBB0_18
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	cmpb	$42, -2(%rcx)
	jne	.LBB0_19
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	cmpb	$42, -1(%rcx)
	jne	.LBB0_20
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	cmpb	$42, (%rcx)
	jne	.LBB0_16
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	decq	%rsi
	addq	$4, %rcx
	addq	$4, %rdx
	cmpq	$1, %rsi
	jg	.LBB0_2
# %bb.7:
	addq	$-3, %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	subq	%rdx, %rdi
	cmpq	$1, %rdi
	jne	.LBB0_9
	jmp	.LBB0_15
.LBB0_8:
	movq	%rdx, %rsi
	movq	%rax, %rdi
	subq	%rdx, %rdi
	cmpq	$1, %rdi
	je	.LBB0_15
.LBB0_9:
	cmpq	$2, %rdi
	je	.LBB0_13
# %bb.10:
	movq	%rax, %rcx
	cmpq	$3, %rdi
	jne	.LBB0_16
# %bb.11:
	cmpb	$42, (%rsi)
	jne	.LBB0_21
# %bb.12:
	incq	%rsi
.LBB0_13:
	cmpb	$42, (%rsi)
	jne	.LBB0_21
# %bb.14:
	incq	%rsi
.LBB0_15:
	cmpb	$42, (%rsi)
	cmoveq	%rax, %rsi
	movq	%rsi, %rcx
.LBB0_16:
	cmpq	%rax, %rcx
	sete	%al
	retq
.LBB0_21:
	movq	%rsi, %rcx
	cmpq	%rax, %rcx
	sete	%al
	retq
.LBB0_18:
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
.Lfunc_end0:
	.size	_Z11all_of_epi8RKSt6vectorIaSaIaEE, .Lfunc_end0-_Z11all_of_epi8RKSt6vectorIaSaIaEE
	.cfi_endproc
                                        # -- End function
	.globl	_Z12all_of_epi32RKSt6vectorIiSaIiEE # -- Begin function _Z12all_of_epi32RKSt6vectorIiSaIiEE
	.p2align	4, 0x90
	.type	_Z12all_of_epi32RKSt6vectorIiSaIiEE,@function
_Z12all_of_epi32RKSt6vectorIiSaIiEE:    # @_Z12all_of_epi32RKSt6vectorIiSaIiEE
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
	jne	.LBB1_18
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	cmpl	$42, -4(%rdx)
	jne	.LBB1_19
# %bb.4:                                #   in Loop: Header=BB1_2 Depth=1
	cmpl	$42, (%rdx)
	jne	.LBB1_16
# %bb.5:                                #   in Loop: Header=BB1_2 Depth=1
	cmpl	$42, 4(%rdx)
	jne	.LBB1_20
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
	je	.LBB1_15
# %bb.9:
	cmpq	$2, %rcx
	je	.LBB1_13
# %bb.10:
	movq	%rax, %rdx
	cmpq	$3, %rcx
	jne	.LBB1_16
# %bb.11:
	cmpl	$42, (%rsi)
	jne	.LBB1_21
# %bb.12:
	addq	$4, %rsi
.LBB1_13:
	cmpl	$42, (%rsi)
	jne	.LBB1_21
# %bb.14:
	addq	$4, %rsi
.LBB1_15:
	cmpl	$42, (%rsi)
	cmoveq	%rax, %rsi
	movq	%rsi, %rdx
.LBB1_16:
	cmpq	%rax, %rdx
	sete	%al
	retq
.LBB1_21:
	movq	%rsi, %rdx
	cmpq	%rax, %rdx
	sete	%al
	retq
.LBB1_18:
	addq	$-8, %rdx
	cmpq	%rax, %rdx
	sete	%al
	retq
.LBB1_19:
	addq	$-4, %rdx
	cmpq	%rax, %rdx
	sete	%al
	retq
.LBB1_20:
	addq	$4, %rdx
	cmpq	%rax, %rdx
	sete	%al
	retq
.Lfunc_end1:
	.size	_Z12all_of_epi32RKSt6vectorIiSaIiEE, .Lfunc_end1-_Z12all_of_epi32RKSt6vectorIiSaIiEE
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 18.0.0 (https://github.com/llvm/llvm-project.git 2176c5e510e3bfcbc75afb13e78d287141f239a7)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
