	.text
	.file	"replace.cpp"
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0                          # -- Begin function _Z12replace_epi8RSt6vectorIaSaIaEE
.LCPI0_0:
	.zero	64,13
.LCPI0_1:
	.zero	64,42
.LCPI0_4:
	.byte	13                              # 0xd
.LCPI0_5:
	.byte	42                              # 0x2a
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI0_2:
	.zero	32,13
.LCPI0_3:
	.zero	32,42
	.text
	.globl	_Z12replace_epi8RSt6vectorIaSaIaEE
	.p2align	4, 0x90
	.type	_Z12replace_epi8RSt6vectorIaSaIaEE,@function
_Z12replace_epi8RSt6vectorIaSaIaEE:     # @_Z12replace_epi8RSt6vectorIaSaIaEE
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rcx
	movq	8(%rdi), %rax
	cmpq	%rax, %rcx
	je	.LBB0_16
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
	leaq	192(%rcx), %rdi
	xorl	%r8d, %r8d
	vpbroadcastb	.LCPI0_4(%rip), %zmm0   # zmm0 = [13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13]
	vpbroadcastb	.LCPI0_5(%rip), %zmm1   # zmm1 = [42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42]
	.p2align	4, 0x90
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	vpcmpeqb	-192(%rdi,%r8), %zmm0, %k1
	vpcmpeqb	-128(%rdi,%r8), %zmm0, %k2
	vpcmpeqb	-64(%rdi,%r8), %zmm0, %k3
	vpcmpeqb	(%rdi,%r8), %zmm0, %k4
	vmovdqu8	%zmm1, -192(%rdi,%r8) {%k1}
	vmovdqu8	%zmm1, -128(%rdi,%r8) {%k2}
	vmovdqu8	%zmm1, -64(%rdi,%r8) {%k3}
	vmovdqu8	%zmm1, (%rdi,%r8) {%k4}
	addq	$256, %r8                       # imm = 0x100
	cmpq	%r8, %rsi
	jne	.LBB0_8
# %bb.9:
	cmpq	%rsi, %rdx
	je	.LBB0_16
# %bb.10:
	testb	$-32, %dl
	je	.LBB0_11
.LBB0_4:
	movq	%rdx, %r8
	andq	$-32, %r8
	leaq	(%rcx,%r8), %rdi
	vpbroadcastb	.LCPI0_4(%rip), %ymm0   # ymm0 = [13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13]
	vpbroadcastb	.LCPI0_5(%rip), %ymm1   # ymm1 = [42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42]
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	vpcmpeqb	(%rcx,%rsi), %ymm0, %k1
	vmovdqu8	%ymm1, (%rcx,%rsi) {%k1}
	addq	$32, %rsi
	cmpq	%rsi, %r8
	jne	.LBB0_5
# %bb.6:
	cmpq	%r8, %rdx
	jne	.LBB0_13
.LBB0_16:
	vzeroupper
	retq
	.p2align	4, 0x90
.LBB0_15:                               #   in Loop: Header=BB0_13 Depth=1
	incq	%rdi
	cmpq	%rax, %rdi
	je	.LBB0_16
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	cmpb	$13, (%rdi)
	jne	.LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=1
	movb	$42, (%rdi)
	jmp	.LBB0_15
.LBB0_11:
	addq	%rsi, %rcx
	jmp	.LBB0_12
.Lfunc_end0:
	.size	_Z12replace_epi8RSt6vectorIaSaIaEE, .Lfunc_end0-_Z12replace_epi8RSt6vectorIaSaIaEE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z13replace_epi32RSt6vectorIiSaIiEE
.LCPI1_0:
	.long	13                              # 0xd
.LCPI1_1:
	.long	42                              # 0x2a
	.text
	.globl	_Z13replace_epi32RSt6vectorIiSaIiEE
	.p2align	4, 0x90
	.type	_Z13replace_epi32RSt6vectorIiSaIiEE,@function
_Z13replace_epi32RSt6vectorIiSaIiEE:    # @_Z13replace_epi32RSt6vectorIiSaIiEE
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rcx
	movq	8(%rdi), %rax
	cmpq	%rax, %rcx
	je	.LBB1_16
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
	leaq	192(%rcx), %r8
	xorl	%r9d, %r9d
	vpbroadcastd	.LCPI1_0(%rip), %zmm0   # zmm0 = [13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13]
	vpbroadcastd	.LCPI1_1(%rip), %zmm1   # zmm1 = [42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42]
	.p2align	4, 0x90
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	vpcmpeqd	-192(%r8,%r9,4), %zmm0, %k1
	vpcmpeqd	-128(%r8,%r9,4), %zmm0, %k2
	vpcmpeqd	-64(%r8,%r9,4), %zmm0, %k3
	vpcmpeqd	(%r8,%r9,4), %zmm0, %k4
	vmovdqu32	%zmm1, -192(%r8,%r9,4) {%k1}
	vmovdqu32	%zmm1, -128(%r8,%r9,4) {%k2}
	vmovdqu32	%zmm1, -64(%r8,%r9,4) {%k3}
	vmovdqu32	%zmm1, (%r8,%r9,4) {%k4}
	addq	$64, %r9
	cmpq	%r9, %rdi
	jne	.LBB1_9
# %bb.10:
	cmpq	%rdi, %rdx
	je	.LBB1_16
# %bb.11:
	testb	$56, %dl
	je	.LBB1_12
.LBB1_5:
	addq	$56, %rsi
	andq	%rdx, %rsi
	leaq	(%rcx,%rsi,4), %r8
	vpbroadcastd	.LCPI1_0(%rip), %ymm0   # ymm0 = [13,13,13,13,13,13,13,13]
	vpbroadcastd	.LCPI1_1(%rip), %ymm1   # ymm1 = [42,42,42,42,42,42,42,42]
	.p2align	4, 0x90
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	vpcmpeqd	(%rcx,%rdi,4), %ymm0, %k1
	vmovdqu32	%ymm1, (%rcx,%rdi,4) {%k1}
	addq	$8, %rdi
	cmpq	%rdi, %rsi
	jne	.LBB1_6
# %bb.7:
	cmpq	%rsi, %rdx
	jne	.LBB1_13
.LBB1_16:
	vzeroupper
	retq
.LBB1_12:
	leaq	(%rcx,%rdi,4), %r8
	jmp	.LBB1_13
	.p2align	4, 0x90
.LBB1_15:                               #   in Loop: Header=BB1_13 Depth=1
	addq	$4, %r8
	cmpq	%rax, %r8
	je	.LBB1_16
.LBB1_13:                               # =>This Inner Loop Header: Depth=1
	cmpl	$13, (%r8)
	jne	.LBB1_15
# %bb.14:                               #   in Loop: Header=BB1_13 Depth=1
	movl	$42, (%r8)
	jmp	.LBB1_15
.Lfunc_end1:
	.size	_Z13replace_epi32RSt6vectorIiSaIiEE, .Lfunc_end1-_Z13replace_epi32RSt6vectorIiSaIiEE
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 18.0.0 (https://github.com/llvm/llvm-project.git 2176c5e510e3bfcbc75afb13e78d287141f239a7)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
