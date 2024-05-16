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
	vbroadcastss	.LCPI1_0(%rip), %zmm0   # zmm0 = [42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42]
	.p2align	4, 0x90
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	vmovups	%zmm0, (%rcx,%r8,4)
	vmovups	%zmm0, 64(%rcx,%r8,4)
	vmovups	%zmm0, 128(%rcx,%r8,4)
	vmovups	%zmm0, 192(%rcx,%r8,4)
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
	vbroadcastss	.LCPI1_0(%rip), %ymm0   # ymm0 = [42,42,42,42,42,42,42,42]
	.p2align	4, 0x90
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	vmovups	%ymm0, (%rcx,%rdi,4)
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
	movl	$42, (%r8)
	addq	$4, %r8
	cmpq	%rax, %r8
	jne	.LBB1_13
.LBB1_14:
	vzeroupper
	retq
.Lfunc_end1:
	.size	_Z10fill_epi32RSt6vectorIiSaIiEE, .Lfunc_end1-_Z10fill_epi32RSt6vectorIiSaIiEE
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 18.0.0 (https://github.com/llvm/llvm-project.git 2176c5e510e3bfcbc75afb13e78d287141f239a7)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
