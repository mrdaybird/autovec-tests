	.text
	.file	"find_if.cpp"
	.globl	_Z12find_if_epi8RKSt6vectorIaSaIaEE # -- Begin function _Z12find_if_epi8RKSt6vectorIaSaIaEE
	.p2align	4, 0x90
	.type	_Z12find_if_epi8RKSt6vectorIaSaIaEE,@function
_Z12find_if_epi8RKSt6vectorIaSaIaEE:    # @_Z12find_if_epi8RKSt6vectorIaSaIaEE
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rdx
	movq	8(%rdi), %rax
	movq	%rax, %rsi
	subq	%rdx, %rsi
	cmpq	$4, %rsi
	jl	.LBB0_12
# %bb.1:
	shrq	$2, %rsi
	incq	%rsi
	movq	%rdx, %rcx
	addq	$3, %rcx
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movzbl	-3(%rcx), %edi
	cmpl	$42, %edi
	je	.LBB0_19
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	cmpl	$255, %edi
	je	.LBB0_19
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	movzbl	-2(%rcx), %edi
	cmpl	$42, %edi
	je	.LBB0_20
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	cmpl	$255, %edi
	je	.LBB0_20
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	movzbl	-1(%rcx), %edi
	cmpl	$42, %edi
	je	.LBB0_21
# %bb.7:                                #   in Loop: Header=BB0_2 Depth=1
	cmpl	$255, %edi
	je	.LBB0_21
# %bb.8:                                #   in Loop: Header=BB0_2 Depth=1
	movzbl	(%rcx), %edi
	cmpl	$42, %edi
	je	.LBB0_18
# %bb.9:                                #   in Loop: Header=BB0_2 Depth=1
	cmpl	$255, %edi
	je	.LBB0_18
# %bb.10:                               #   in Loop: Header=BB0_2 Depth=1
	decq	%rsi
	addq	$4, %rcx
	addq	$4, %rdx
	cmpq	$1, %rsi
	jg	.LBB0_2
# %bb.11:
	addq	$-3, %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	subq	%rdx, %rdi
	cmpq	$1, %rdi
	jne	.LBB0_13
	jmp	.LBB0_29
.LBB0_12:
	movq	%rdx, %rsi
	movq	%rax, %rdi
	subq	%rdx, %rdi
	cmpq	$1, %rdi
	je	.LBB0_29
.LBB0_13:
	cmpq	$2, %rdi
	je	.LBB0_24
# %bb.14:
	movq	%rax, %rcx
	cmpq	$3, %rdi
	jne	.LBB0_18
# %bb.15:
	movzbl	(%rsi), %ecx
	cmpl	$42, %ecx
	je	.LBB0_22
# %bb.16:
	cmpl	$255, %ecx
	jne	.LBB0_23
# %bb.17:
	movq	%rsi, %rcx
	cmpq	%rax, %rcx
	setne	%al
	retq
.LBB0_19:
	addq	$-3, %rcx
	cmpq	%rax, %rcx
	setne	%al
	retq
.LBB0_20:
	addq	$-2, %rcx
	cmpq	%rax, %rcx
	setne	%al
	retq
.LBB0_21:
	decq	%rcx
	cmpq	%rax, %rcx
	setne	%al
	retq
.LBB0_23:
	incq	%rsi
.LBB0_24:
	movzbl	(%rsi), %ecx
	cmpl	$42, %ecx
	je	.LBB0_22
# %bb.25:
	cmpl	$255, %ecx
	jne	.LBB0_28
.LBB0_22:
	movq	%rsi, %rcx
	cmpq	%rax, %rcx
	setne	%al
	retq
.LBB0_28:
	incq	%rsi
.LBB0_29:
	movq	%rsi, %rcx
	movzbl	(%rsi), %edx
	cmpl	$42, %edx
	je	.LBB0_18
# %bb.30:
	cmpl	$255, %edx
	jne	.LBB0_31
.LBB0_18:
	cmpq	%rax, %rcx
	setne	%al
	retq
.LBB0_31:
	movq	%rax, %rcx
	cmpq	%rax, %rcx
	setne	%al
	retq
.Lfunc_end0:
	.size	_Z12find_if_epi8RKSt6vectorIaSaIaEE, .Lfunc_end0-_Z12find_if_epi8RKSt6vectorIaSaIaEE
	.cfi_endproc
                                        # -- End function
	.globl	_Z13find_if_epi32RKSt6vectorIiSaIiEE # -- Begin function _Z13find_if_epi32RKSt6vectorIiSaIiEE
	.p2align	4, 0x90
	.type	_Z13find_if_epi32RKSt6vectorIiSaIiEE,@function
_Z13find_if_epi32RKSt6vectorIiSaIiEE:   # @_Z13find_if_epi32RKSt6vectorIiSaIiEE
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rsi
	movq	8(%rdi), %rax
	movq	%rax, %rdx
	subq	%rsi, %rdx
	cmpq	$16, %rdx
	jl	.LBB1_12
# %bb.1:
	movq	%rdx, %rdi
	shrq	$4, %rdi
	incq	%rdi
	addq	$8, %rsi
	movq	%rsi, %rcx
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movl	-8(%rcx), %esi
	cmpl	$-1, %esi
	je	.LBB1_19
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	cmpl	$42, %esi
	je	.LBB1_19
# %bb.4:                                #   in Loop: Header=BB1_2 Depth=1
	movl	-4(%rcx), %esi
	cmpl	$-1, %esi
	je	.LBB1_20
# %bb.5:                                #   in Loop: Header=BB1_2 Depth=1
	cmpl	$42, %esi
	je	.LBB1_20
# %bb.6:                                #   in Loop: Header=BB1_2 Depth=1
	movl	(%rcx), %esi
	cmpl	$-1, %esi
	je	.LBB1_18
# %bb.7:                                #   in Loop: Header=BB1_2 Depth=1
	cmpl	$42, %esi
	je	.LBB1_18
# %bb.8:                                #   in Loop: Header=BB1_2 Depth=1
	movl	4(%rcx), %esi
	cmpl	$-1, %esi
	je	.LBB1_21
# %bb.9:                                #   in Loop: Header=BB1_2 Depth=1
	cmpl	$42, %esi
	je	.LBB1_21
# %bb.10:                               #   in Loop: Header=BB1_2 Depth=1
	decq	%rdi
	addq	$16, %rcx
	addq	$-16, %rdx
	cmpq	$1, %rdi
	jg	.LBB1_2
# %bb.11:
	addq	$-8, %rcx
	movq	%rcx, %rsi
.LBB1_12:
	sarq	$2, %rdx
	cmpq	$1, %rdx
	je	.LBB1_29
# %bb.13:
	cmpq	$2, %rdx
	je	.LBB1_24
# %bb.14:
	movq	%rax, %rcx
	cmpq	$3, %rdx
	jne	.LBB1_18
# %bb.15:
	movl	(%rsi), %ecx
	cmpl	$-1, %ecx
	je	.LBB1_22
# %bb.16:
	cmpl	$42, %ecx
	jne	.LBB1_23
# %bb.17:
	movq	%rsi, %rcx
	cmpq	%rax, %rcx
	setne	%al
	retq
.LBB1_19:
	addq	$-8, %rcx
	cmpq	%rax, %rcx
	setne	%al
	retq
.LBB1_20:
	addq	$-4, %rcx
	cmpq	%rax, %rcx
	setne	%al
	retq
.LBB1_21:
	addq	$4, %rcx
	cmpq	%rax, %rcx
	setne	%al
	retq
.LBB1_23:
	addq	$4, %rsi
.LBB1_24:
	movl	(%rsi), %ecx
	cmpl	$-1, %ecx
	je	.LBB1_22
# %bb.25:
	cmpl	$42, %ecx
	jne	.LBB1_28
.LBB1_22:
	movq	%rsi, %rcx
	cmpq	%rax, %rcx
	setne	%al
	retq
.LBB1_28:
	addq	$4, %rsi
.LBB1_29:
	movq	%rsi, %rcx
	movl	(%rsi), %edx
	cmpl	$-1, %edx
	je	.LBB1_18
# %bb.30:
	cmpl	$42, %edx
	jne	.LBB1_31
.LBB1_18:
	cmpq	%rax, %rcx
	setne	%al
	retq
.LBB1_31:
	movq	%rax, %rcx
	cmpq	%rax, %rcx
	setne	%al
	retq
.Lfunc_end1:
	.size	_Z13find_if_epi32RKSt6vectorIiSaIiEE, .Lfunc_end1-_Z13find_if_epi32RKSt6vectorIiSaIiEE
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 18.0.0 (https://github.com/llvm/llvm-project.git 2176c5e510e3bfcbc75afb13e78d287141f239a7)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
