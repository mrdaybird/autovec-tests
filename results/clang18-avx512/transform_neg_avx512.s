	.text
	.file	"transform_neg.cpp"
	.globl	_Z18transform_neg_epi8RSt6vectorIaSaIaEE # -- Begin function _Z18transform_neg_epi8RSt6vectorIaSaIaEE
	.p2align	4, 0x90
	.type	_Z18transform_neg_epi8RSt6vectorIaSaIaEE,@function
_Z18transform_neg_epi8RSt6vectorIaSaIaEE: # @_Z18transform_neg_epi8RSt6vectorIaSaIaEE
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rcx
	movq	8(%rdi), %rax
	cmpq	%rax, %rcx
	je	.LBB0_14
# %bb.1:
	movq	%rax, %rdx
	subq	%rcx, %rdx
	cmpq	$32, %rdx
	jae	.LBB0_2
.LBB0_12:
	movq	%rcx, %rdi
	jmp	.LBB0_13
.LBB0_2:
	cmpq	$256, %rdx                      # imm = 0x100
	jae	.LBB0_7
# %bb.3:
	xorl	%esi, %esi
	jmp	.LBB0_4
.LBB0_7:
	movq	%rdx, %rsi
	andq	$-256, %rsi
	xorl	%edi, %edi
	vpxor	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	vpsubb	(%rcx,%rdi), %zmm0, %zmm1
	vpsubb	64(%rcx,%rdi), %zmm0, %zmm2
	vpsubb	128(%rcx,%rdi), %zmm0, %zmm3
	vpsubb	192(%rcx,%rdi), %zmm0, %zmm4
	vmovdqu64	%zmm1, (%rcx,%rdi)
	vmovdqu64	%zmm2, 64(%rcx,%rdi)
	vmovdqu64	%zmm3, 128(%rcx,%rdi)
	vmovdqu64	%zmm4, 192(%rcx,%rdi)
	addq	$256, %rdi                      # imm = 0x100
	cmpq	%rdi, %rsi
	jne	.LBB0_8
# %bb.9:
	cmpq	%rsi, %rdx
	je	.LBB0_14
# %bb.10:
	testb	$-32, %dl
	je	.LBB0_11
.LBB0_4:
	movq	%rdx, %r8
	andq	$-32, %r8
	leaq	(%rcx,%r8), %rdi
	vpxor	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	vpsubb	(%rcx,%rsi), %ymm0, %ymm1
	vmovdqu	%ymm1, (%rcx,%rsi)
	addq	$32, %rsi
	cmpq	%rsi, %r8
	jne	.LBB0_5
# %bb.6:
	cmpq	%r8, %rdx
	je	.LBB0_14
	.p2align	4, 0x90
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	negb	(%rdi)
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
	.size	_Z18transform_neg_epi8RSt6vectorIaSaIaEE, .Lfunc_end0-_Z18transform_neg_epi8RSt6vectorIaSaIaEE
	.cfi_endproc
                                        # -- End function
	.globl	_Z19transform_neg_epi32RSt6vectorIiSaIiEE # -- Begin function _Z19transform_neg_epi32RSt6vectorIiSaIiEE
	.p2align	4, 0x90
	.type	_Z19transform_neg_epi32RSt6vectorIiSaIiEE,@function
_Z19transform_neg_epi32RSt6vectorIiSaIiEE: # @_Z19transform_neg_epi32RSt6vectorIiSaIiEE
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rcx
	movq	8(%rdi), %rax
	cmpq	%rax, %rcx
	je	.LBB1_14
# %bb.1:
	movq	%rax, %rdi
	subq	%rcx, %rdi
	addq	$-4, %rdi
	cmpq	$28, %rdi
	jae	.LBB1_3
# %bb.2:
	movq	%rcx, %r8
	jmp	.LBB1_13
.LBB1_3:
	movq	%rdi, %rdx
	shrq	$2, %rdx
	incq	%rdx
	movabsq	$9223372036854775744, %rsi      # imm = 0x7FFFFFFFFFFFFFC0
	cmpq	$252, %rdi
	jae	.LBB1_8
# %bb.4:
	xorl	%edi, %edi
	jmp	.LBB1_5
.LBB1_8:
	movq	%rdx, %rdi
	andq	%rsi, %rdi
	xorl	%r8d, %r8d
	vpxor	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	vpsubd	(%rcx,%r8,4), %zmm0, %zmm1
	vpsubd	64(%rcx,%r8,4), %zmm0, %zmm2
	vpsubd	128(%rcx,%r8,4), %zmm0, %zmm3
	vpsubd	192(%rcx,%r8,4), %zmm0, %zmm4
	vmovdqu64	%zmm1, (%rcx,%r8,4)
	vmovdqu64	%zmm2, 64(%rcx,%r8,4)
	vmovdqu64	%zmm3, 128(%rcx,%r8,4)
	vmovdqu64	%zmm4, 192(%rcx,%r8,4)
	addq	$64, %r8
	cmpq	%r8, %rdi
	jne	.LBB1_9
# %bb.10:
	cmpq	%rdi, %rdx
	je	.LBB1_14
# %bb.11:
	testb	$56, %dl
	je	.LBB1_12
.LBB1_5:
	addq	$56, %rsi
	andq	%rdx, %rsi
	leaq	(%rcx,%rsi,4), %r8
	vpxor	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	vpsubd	(%rcx,%rdi,4), %ymm0, %ymm1
	vmovdqu	%ymm1, (%rcx,%rdi,4)
	addq	$8, %rdi
	cmpq	%rdi, %rsi
	jne	.LBB1_6
# %bb.7:
	cmpq	%rsi, %rdx
	jne	.LBB1_13
	jmp	.LBB1_14
.LBB1_12:
	leaq	(%rcx,%rdi,4), %r8
	.p2align	4, 0x90
.LBB1_13:                               # =>This Inner Loop Header: Depth=1
	negl	(%r8)
	addq	$4, %r8
	cmpq	%rax, %r8
	jne	.LBB1_13
.LBB1_14:
	vzeroupper
	retq
.Lfunc_end1:
	.size	_Z19transform_neg_epi32RSt6vectorIiSaIiEE, .Lfunc_end1-_Z19transform_neg_epi32RSt6vectorIiSaIiEE
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 18.0.0 (https://github.com/llvm/llvm-project.git 2176c5e510e3bfcbc75afb13e78d287141f239a7)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
