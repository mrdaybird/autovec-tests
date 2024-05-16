	.text
	.file	"replace_if.cpp"
	.globl	_Z15replace_if_epi8RSt6vectorIaSaIaEE # -- Begin function _Z15replace_if_epi8RSt6vectorIaSaIaEE
	.p2align	4, 0x90
	.type	_Z15replace_if_epi8RSt6vectorIaSaIaEE,@function
_Z15replace_if_epi8RSt6vectorIaSaIaEE:  # @_Z15replace_if_epi8RSt6vectorIaSaIaEE
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	cmpq	%rcx, %rax
	je	.LBB0_20
# %bb.1:
	movl	%ecx, %esi
	subl	%eax, %esi
	movq	%rax, %rdx
	notq	%rdx
	addq	%rcx, %rdx
	andl	$3, %esi
	jne	.LBB0_2
.LBB0_6:
	cmpq	$3, %rdx
	jae	.LBB0_7
.LBB0_20:
	retq
	.p2align	4, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_2 Depth=1
	movb	$42, (%rax)
.LBB0_5:                                #   in Loop: Header=BB0_2 Depth=1
	incq	%rax
	decq	%rsi
	je	.LBB0_6
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %edi
	cmpl	$244, %edi
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	cmpl	$13, %edi
	je	.LBB0_4
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_18:                               #   in Loop: Header=BB0_7 Depth=1
	movb	$42, 3(%rax)
.LBB0_19:                               #   in Loop: Header=BB0_7 Depth=1
	addq	$4, %rax
	cmpq	%rcx, %rax
	je	.LBB0_20
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %edx
	cmpl	$244, %edx
	je	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	cmpl	$13, %edx
	jne	.LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	movb	$42, (%rax)
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=1
	movzbl	1(%rax), %edx
	cmpl	$244, %edx
	je	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_7 Depth=1
	cmpl	$13, %edx
	jne	.LBB0_13
.LBB0_12:                               #   in Loop: Header=BB0_7 Depth=1
	movb	$42, 1(%rax)
.LBB0_13:                               #   in Loop: Header=BB0_7 Depth=1
	movzbl	2(%rax), %edx
	cmpl	$244, %edx
	je	.LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_7 Depth=1
	cmpl	$13, %edx
	jne	.LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_7 Depth=1
	movb	$42, 2(%rax)
.LBB0_16:                               #   in Loop: Header=BB0_7 Depth=1
	movzbl	3(%rax), %edx
	cmpl	$244, %edx
	je	.LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_7 Depth=1
	cmpl	$13, %edx
	je	.LBB0_18
	jmp	.LBB0_19
.Lfunc_end0:
	.size	_Z15replace_if_epi8RSt6vectorIaSaIaEE, .Lfunc_end0-_Z15replace_if_epi8RSt6vectorIaSaIaEE
	.cfi_endproc
                                        # -- End function
	.globl	_Z16replace_if_epi32RSt6vectorIiSaIiEE # -- Begin function _Z16replace_if_epi32RSt6vectorIiSaIiEE
	.p2align	4, 0x90
	.type	_Z16replace_if_epi32RSt6vectorIiSaIiEE,@function
_Z16replace_if_epi32RSt6vectorIiSaIiEE: # @_Z16replace_if_epi32RSt6vectorIiSaIiEE
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	jmp	.LBB1_1
	.p2align	4, 0x90
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
	movl	$42, (%rax)
.LBB1_5:                                #   in Loop: Header=BB1_1 Depth=1
	addq	$4, %rax
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	cmpq	%rcx, %rax
	je	.LBB1_6
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movzbl	(%rax), %edx
	cmpl	$244, %edx
	je	.LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	cmpl	$13, %edx
	je	.LBB1_4
	jmp	.LBB1_5
.LBB1_6:
	retq
.Lfunc_end1:
	.size	_Z16replace_if_epi32RSt6vectorIiSaIiEE, .Lfunc_end1-_Z16replace_if_epi32RSt6vectorIiSaIiEE
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 18.0.0 (https://github.com/llvm/llvm-project.git 2176c5e510e3bfcbc75afb13e78d287141f239a7)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
