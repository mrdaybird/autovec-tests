	.text
	.file	"fill.cpp"
	.globl	_Z9fill_epi8RSt6vectorIaSaIaEE  # -- Begin function _Z9fill_epi8RSt6vectorIaSaIaEE
	.p2align	4, 0x90
	.type	_Z9fill_epi8RSt6vectorIaSaIaEE,@function
_Z9fill_epi8RSt6vectorIaSaIaEE:         # @_Z9fill_epi8RSt6vectorIaSaIaEE
	.cfi_startproc
# %bb.0:
	movq	%rdi, %rax
	movq	(%rdi), %rdi
	movq	8(%rax), %rdx
	cmpq	%rdx, %rdi
	je	.LBB0_1
# %bb.2:
	subq	%rdi, %rdx
	movl	$42, %esi
	jmp	memset@PLT                      # TAILCALL
.LBB0_1:
	retq
.Lfunc_end0:
	.size	_Z9fill_epi8RSt6vectorIaSaIaEE, .Lfunc_end0-_Z9fill_epi8RSt6vectorIaSaIaEE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z10fill_epi32RSt6vectorIiSaIiEE
.LCPI1_0:
	.long	42                              # 0x2a
	.text
	.globl	_Z10fill_epi32RSt6vectorIiSaIiEE
	.p2align	4, 0x90
	.type	_Z10fill_epi32RSt6vectorIiSaIiEE,@function
_Z10fill_epi32RSt6vectorIiSaIiEE:       # @_Z10fill_epi32RSt6vectorIiSaIiEE
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
	vbroadcastss	.LCPI1_0(%rip), %ymm0   # ymm0 = [42,42,42,42,42,42,42,42]
	.p2align	4, 0x90
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	vmovups	%ymm0, (%rcx,%r8,4)
	vmovups	%ymm0, 32(%rcx,%r8,4)
	vmovups	%ymm0, 64(%rcx,%r8,4)
	vmovups	%ymm0, 96(%rcx,%r8,4)
	addq	$32, %r8
	cmpq	%r8, %rdi
	jne	.LBB1_4
# %bb.5:
	cmpq	%rdi, %rsi
	je	.LBB1_7
	.p2align	4, 0x90
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	movl	$42, (%rdx)
	addq	$4, %rdx
	cmpq	%rax, %rdx
	jne	.LBB1_6
.LBB1_7:
	vzeroupper
	retq
.Lfunc_end1:
	.size	_Z10fill_epi32RSt6vectorIiSaIiEE, .Lfunc_end1-_Z10fill_epi32RSt6vectorIiSaIiEE
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 18.0.0 (https://github.com/llvm/llvm-project.git 2176c5e510e3bfcbc75afb13e78d287141f239a7)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
