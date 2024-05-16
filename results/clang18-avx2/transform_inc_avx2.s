	.text
	.file	"transform_inc.cpp"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _Z18transform_inc_epi8RSt6vectorIaSaIaEE
.LCPI0_0:
	.zero	32,42
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_1:
	.zero	16,42
	.section	.rodata,"a",@progbits
.LCPI0_2:
	.byte	42                              # 0x2a
	.text
	.globl	_Z18transform_inc_epi8RSt6vectorIaSaIaEE
	.p2align	4, 0x90
	.type	_Z18transform_inc_epi8RSt6vectorIaSaIaEE,@function
_Z18transform_inc_epi8RSt6vectorIaSaIaEE: # @_Z18transform_inc_epi8RSt6vectorIaSaIaEE
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
	vpbroadcastb	.LCPI0_2(%rip), %ymm0   # ymm0 = [42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42]
	.p2align	4, 0x90
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	vpaddb	(%rcx,%rdi), %ymm0, %ymm1
	vpaddb	32(%rcx,%rdi), %ymm0, %ymm2
	vpaddb	64(%rcx,%rdi), %ymm0, %ymm3
	vpaddb	96(%rcx,%rdi), %ymm0, %ymm4
	vmovdqu	%ymm1, (%rcx,%rdi)
	vmovdqu	%ymm2, 32(%rcx,%rdi)
	vmovdqu	%ymm3, 64(%rcx,%rdi)
	vmovdqu	%ymm4, 96(%rcx,%rdi)
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
	vpbroadcastb	.LCPI0_2(%rip), %xmm0   # xmm0 = [42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42]
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	vpaddb	(%rcx,%rsi), %xmm0, %xmm1
	vmovdqu	%xmm1, (%rcx,%rsi)
	addq	$16, %rsi
	cmpq	%rsi, %r8
	jne	.LBB0_5
# %bb.6:
	cmpq	%r8, %rdx
	je	.LBB0_14
	.p2align	4, 0x90
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	addb	$42, (%rdi)
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
	.size	_Z18transform_inc_epi8RSt6vectorIaSaIaEE, .Lfunc_end0-_Z18transform_inc_epi8RSt6vectorIaSaIaEE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z19transform_inc_epi32RSt6vectorIiSaIiEE
.LCPI1_0:
	.long	42                              # 0x2a
	.text
	.globl	_Z19transform_inc_epi32RSt6vectorIiSaIiEE
	.p2align	4, 0x90
	.type	_Z19transform_inc_epi32RSt6vectorIiSaIiEE,@function
_Z19transform_inc_epi32RSt6vectorIiSaIiEE: # @_Z19transform_inc_epi32RSt6vectorIiSaIiEE
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rcx
	movq	8(%rdi), %rax
	cmpq	%rax, %rcx
	je	.LBB1_7
# %bb.1:
	movq	%rax, %rsi
	subq	%rcx, %rsi
	addq	$-4, %rsi
	cmpq	$124, %rsi
	jae	.LBB1_3
# %bb.2:
	movq	%rcx, %rdx
	jmp	.LBB1_6
.LBB1_3:
	shrq	$2, %rsi
	incq	%rsi
	movq	%rsi, %rdi
	andq	$-32, %rdi
	leaq	(%rcx,%rdi,4), %rdx
	xorl	%r8d, %r8d
	vpbroadcastd	.LCPI1_0(%rip), %ymm0   # ymm0 = [42,42,42,42,42,42,42,42]
	.p2align	4, 0x90
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	vpaddd	(%rcx,%r8,4), %ymm0, %ymm1
	vpaddd	32(%rcx,%r8,4), %ymm0, %ymm2
	vpaddd	64(%rcx,%r8,4), %ymm0, %ymm3
	vpaddd	96(%rcx,%r8,4), %ymm0, %ymm4
	vmovdqu	%ymm1, (%rcx,%r8,4)
	vmovdqu	%ymm2, 32(%rcx,%r8,4)
	vmovdqu	%ymm3, 64(%rcx,%r8,4)
	vmovdqu	%ymm4, 96(%rcx,%r8,4)
	addq	$32, %r8
	cmpq	%r8, %rdi
	jne	.LBB1_4
# %bb.5:
	cmpq	%rdi, %rsi
	je	.LBB1_7
	.p2align	4, 0x90
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	addl	$42, (%rdx)
	addq	$4, %rdx
	cmpq	%rax, %rdx
	jne	.LBB1_6
.LBB1_7:
	vzeroupper
	retq
.Lfunc_end1:
	.size	_Z19transform_inc_epi32RSt6vectorIiSaIiEE, .Lfunc_end1-_Z19transform_inc_epi32RSt6vectorIiSaIiEE
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 18.0.0 (https://github.com/llvm/llvm-project.git 2176c5e510e3bfcbc75afb13e78d287141f239a7)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
