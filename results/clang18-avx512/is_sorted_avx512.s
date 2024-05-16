	.text
	.file	"is_sorted.cpp"
	.globl	_Z14is_sorted_epi8RKSt6vectorIaSaIaEE # -- Begin function _Z14is_sorted_epi8RKSt6vectorIaSaIaEE
	.p2align	4, 0x90
	.type	_Z14is_sorted_epi8RKSt6vectorIaSaIaEE,@function
_Z14is_sorted_epi8RKSt6vectorIaSaIaEE:  # @_Z14is_sorted_epi8RKSt6vectorIaSaIaEE
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rcx
	movq	8(%rdi), %rax
	cmpq	%rax, %rcx
	je	.LBB0_6
# %bb.1:
	incq	%rcx
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	cmpq	%rax, %rcx
	je	.LBB0_3
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	movzbl	(%rcx), %esi
	leaq	1(%rcx), %rdx
	cmpb	-1(%rcx), %sil
	movq	%rdx, %rcx
	jge	.LBB0_2
# %bb.5:
	decq	%rdx
	movq	%rdx, %rcx
.LBB0_6:
	cmpq	%rax, %rcx
	sete	%al
	retq
.LBB0_3:
	movq	%rax, %rcx
	cmpq	%rax, %rcx
	sete	%al
	retq
.Lfunc_end0:
	.size	_Z14is_sorted_epi8RKSt6vectorIaSaIaEE, .Lfunc_end0-_Z14is_sorted_epi8RKSt6vectorIaSaIaEE
	.cfi_endproc
                                        # -- End function
	.globl	_Z15is_sorted_epi32RKSt6vectorIiSaIiEE # -- Begin function _Z15is_sorted_epi32RKSt6vectorIiSaIiEE
	.p2align	4, 0x90
	.type	_Z15is_sorted_epi32RKSt6vectorIiSaIiEE,@function
_Z15is_sorted_epi32RKSt6vectorIiSaIiEE: # @_Z15is_sorted_epi32RKSt6vectorIiSaIiEE
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rcx
	movq	8(%rdi), %rax
	cmpq	%rax, %rcx
	je	.LBB1_6
# %bb.1:
	addq	$4, %rcx
	.p2align	4, 0x90
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	cmpq	%rax, %rcx
	je	.LBB1_3
# %bb.4:                                #   in Loop: Header=BB1_2 Depth=1
	movl	(%rcx), %esi
	leaq	4(%rcx), %rdx
	cmpl	-4(%rcx), %esi
	movq	%rdx, %rcx
	jge	.LBB1_2
# %bb.5:
	addq	$-4, %rdx
	movq	%rdx, %rcx
.LBB1_6:
	cmpq	%rax, %rcx
	sete	%al
	retq
.LBB1_3:
	movq	%rax, %rcx
	cmpq	%rax, %rcx
	sete	%al
	retq
.Lfunc_end1:
	.size	_Z15is_sorted_epi32RKSt6vectorIiSaIiEE, .Lfunc_end1-_Z15is_sorted_epi32RKSt6vectorIiSaIiEE
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 18.0.0 (https://github.com/llvm/llvm-project.git 2176c5e510e3bfcbc75afb13e78d287141f239a7)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
