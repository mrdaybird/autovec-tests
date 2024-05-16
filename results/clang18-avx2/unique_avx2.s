	.text
	.file	"unique.cpp"
	.globl	_Z11unique_epi8RSt6vectorIaSaIaEE # -- Begin function _Z11unique_epi8RSt6vectorIaSaIaEE
	.p2align	4, 0x90
	.type	_Z11unique_epi8RSt6vectorIaSaIaEE,@function
_Z11unique_epi8RSt6vectorIaSaIaEE:      # @_Z11unique_epi8RSt6vectorIaSaIaEE
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rsi
	movq	8(%rdi), %rax
	cmpq	%rax, %rsi
	je	.LBB0_9
# %bb.1:
	incq	%rsi
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	cmpq	%rax, %rsi
	je	.LBB0_9
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movzbl	-1(%rsi), %ecx
	leaq	1(%rsi), %rdx
	cmpb	(%rsi), %cl
	movq	%rdx, %rsi
	jne	.LBB0_2
# %bb.4:
	cmpq	%rax, %rdx
	je	.LBB0_9
# %bb.5:
	leaq	-2(%rdx), %rsi
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_8:                                #   in Loop: Header=BB0_6 Depth=1
	incq	%rdx
	cmpq	%rax, %rdx
	je	.LBB0_9
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movl	%ecx, %edi
	movzbl	(%rdx), %ecx
	cmpb	%cl, %dil
	je	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	movb	%cl, 1(%rsi)
	incq	%rsi
	jmp	.LBB0_8
.LBB0_9:
	retq
.Lfunc_end0:
	.size	_Z11unique_epi8RSt6vectorIaSaIaEE, .Lfunc_end0-_Z11unique_epi8RSt6vectorIaSaIaEE
	.cfi_endproc
                                        # -- End function
	.globl	_Z12unique_epi32RSt6vectorIiSaIiEE # -- Begin function _Z12unique_epi32RSt6vectorIiSaIiEE
	.p2align	4, 0x90
	.type	_Z12unique_epi32RSt6vectorIiSaIiEE,@function
_Z12unique_epi32RSt6vectorIiSaIiEE:     # @_Z12unique_epi32RSt6vectorIiSaIiEE
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rsi
	movq	8(%rdi), %rax
	cmpq	%rax, %rsi
	je	.LBB1_9
# %bb.1:
	addq	$4, %rsi
	.p2align	4, 0x90
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	cmpq	%rax, %rsi
	je	.LBB1_9
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	movl	-4(%rsi), %ecx
	leaq	4(%rsi), %rdx
	cmpl	(%rsi), %ecx
	movq	%rdx, %rsi
	jne	.LBB1_2
# %bb.4:
	cmpq	%rax, %rdx
	je	.LBB1_9
# %bb.5:
	leaq	-8(%rdx), %rsi
	jmp	.LBB1_6
	.p2align	4, 0x90
.LBB1_8:                                #   in Loop: Header=BB1_6 Depth=1
	addq	$4, %rdx
	cmpq	%rax, %rdx
	je	.LBB1_9
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	movl	%ecx, %edi
	movl	(%rdx), %ecx
	cmpl	%ecx, %edi
	je	.LBB1_8
# %bb.7:                                #   in Loop: Header=BB1_6 Depth=1
	movl	%ecx, 4(%rsi)
	addq	$4, %rsi
	jmp	.LBB1_8
.LBB1_9:
	retq
.Lfunc_end1:
	.size	_Z12unique_epi32RSt6vectorIiSaIiEE, .Lfunc_end1-_Z12unique_epi32RSt6vectorIiSaIiEE
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 18.0.0 (https://github.com/llvm/llvm-project.git 2176c5e510e3bfcbc75afb13e78d287141f239a7)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
