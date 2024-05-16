	.text
	.file	"transform_abs.cpp"
	.globl	_Z18transform_abs_epi8RSt6vectorIaSaIaEE # -- Begin function _Z18transform_abs_epi8RSt6vectorIaSaIaEE
	.p2align	4, 0x90
	.type	_Z18transform_abs_epi8RSt6vectorIaSaIaEE,@function
_Z18transform_abs_epi8RSt6vectorIaSaIaEE: # @_Z18transform_abs_epi8RSt6vectorIaSaIaEE
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rcx
	movq	8(%rdi), %rax
	cmpq	%rax, %rcx
	je	.LBB0_14
# %bb.1:
	movq	%rax, %rdx
	subq	%rcx, %rdx
	cmpq	$16, %rdx
	jae	.LBB0_2
.LBB0_12:
	movq	%rcx, %rdi
	jmp	.LBB0_13
.LBB0_2:
	cmpq	$128, %rdx
	jae	.LBB0_7
# %bb.3:
	xorl	%esi, %esi
	jmp	.LBB0_4
.LBB0_7:
	movq	%rdx, %rsi
	andq	$-128, %rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	vpabsb	(%rcx,%rdi), %ymm0
	vpabsb	32(%rcx,%rdi), %ymm1
	vpabsb	64(%rcx,%rdi), %ymm2
	vpabsb	96(%rcx,%rdi), %ymm3
	vmovdqu	%ymm0, (%rcx,%rdi)
	vmovdqu	%ymm1, 32(%rcx,%rdi)
	vmovdqu	%ymm2, 64(%rcx,%rdi)
	vmovdqu	%ymm3, 96(%rcx,%rdi)
	subq	$-128, %rdi
	cmpq	%rdi, %rsi
	jne	.LBB0_8
# %bb.9:
	cmpq	%rsi, %rdx
	je	.LBB0_14
# %bb.10:
	testb	$112, %dl
	je	.LBB0_11
.LBB0_4:
	movq	%rdx, %r8
	andq	$-16, %r8
	leaq	(%rcx,%r8), %rdi
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	vpabsb	(%rcx,%rsi), %xmm0
	vmovdqu	%xmm0, (%rcx,%rsi)
	addq	$16, %rsi
	cmpq	%rsi, %r8
	jne	.LBB0_5
# %bb.6:
	cmpq	%r8, %rdx
	je	.LBB0_14
	.p2align	4, 0x90
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi), %ecx
	movl	%ecx, %edx
	sarb	$7, %dl
	xorb	%dl, %cl
	subb	%dl, %cl
	movb	%cl, (%rdi)
	incq	%rdi
	cmpq	%rax, %rdi
	jne	.LBB0_13
.LBB0_14:
	vzeroupper
	retq
.LBB0_11:
	addq	%rsi, %rcx
	jmp	.LBB0_12
.Lfunc_end0:
	.size	_Z18transform_abs_epi8RSt6vectorIaSaIaEE, .Lfunc_end0-_Z18transform_abs_epi8RSt6vectorIaSaIaEE
	.cfi_endproc
                                        # -- End function
	.globl	_Z19transform_abs_epi32RSt6vectorIiSaIiEE # -- Begin function _Z19transform_abs_epi32RSt6vectorIiSaIiEE
	.p2align	4, 0x90
	.type	_Z19transform_abs_epi32RSt6vectorIiSaIiEE,@function
_Z19transform_abs_epi32RSt6vectorIiSaIiEE: # @_Z19transform_abs_epi32RSt6vectorIiSaIiEE
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rdx
	movq	8(%rdi), %rax
	cmpq	%rax, %rdx
	je	.LBB1_7
# %bb.1:
	movq	%rax, %rsi
	subq	%rdx, %rsi
	addq	$-4, %rsi
	cmpq	$124, %rsi
	jae	.LBB1_3
# %bb.2:
	movq	%rdx, %rcx
	jmp	.LBB1_6
.LBB1_3:
	shrq	$2, %rsi
	incq	%rsi
	movq	%rsi, %rdi
	andq	$-32, %rdi
	leaq	(%rdx,%rdi,4), %rcx
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	vpabsd	(%rdx,%r8,4), %ymm0
	vpabsd	32(%rdx,%r8,4), %ymm1
	vpabsd	64(%rdx,%r8,4), %ymm2
	vpabsd	96(%rdx,%r8,4), %ymm3
	vmovdqu	%ymm0, (%rdx,%r8,4)
	vmovdqu	%ymm1, 32(%rdx,%r8,4)
	vmovdqu	%ymm2, 64(%rdx,%r8,4)
	vmovdqu	%ymm3, 96(%rdx,%r8,4)
	addq	$32, %r8
	cmpq	%r8, %rdi
	jne	.LBB1_4
# %bb.5:
	cmpq	%rdi, %rsi
	je	.LBB1_7
	.p2align	4, 0x90
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	movl	(%rcx), %edx
	movl	%edx, %esi
	negl	%esi
	cmovsl	%edx, %esi
	movl	%esi, (%rcx)
	addq	$4, %rcx
	cmpq	%rax, %rcx
	jne	.LBB1_6
.LBB1_7:
	vzeroupper
	retq
.Lfunc_end1:
	.size	_Z19transform_abs_epi32RSt6vectorIiSaIiEE, .Lfunc_end1-_Z19transform_abs_epi32RSt6vectorIiSaIiEE
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 18.0.0 (https://github.com/llvm/llvm-project.git 2176c5e510e3bfcbc75afb13e78d287141f239a7)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
