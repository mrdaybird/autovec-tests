	.text
	.file	"count.cpp"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z10count_epi8RKSt6vectorIaSaIaEE
.LCPI0_0:
	.byte	42                              # 0x2a
	.byte	42                              # 0x2a
	.byte	42                              # 0x2a
	.byte	42                              # 0x2a
	.byte	42                              # 0x2a
	.byte	42                              # 0x2a
	.byte	42                              # 0x2a
	.byte	42                              # 0x2a
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.section	.rodata,"a",@progbits
.LCPI0_1:
	.byte	42                              # 0x2a
	.text
	.globl	_Z10count_epi8RKSt6vectorIaSaIaEE
	.p2align	4, 0x90
	.type	_Z10count_epi8RKSt6vectorIaSaIaEE,@function
_Z10count_epi8RKSt6vectorIaSaIaEE:      # @_Z10count_epi8RKSt6vectorIaSaIaEE
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %r8
	movq	8(%rdi), %rcx
	cmpq	%rcx, %r8
	je	.LBB0_1
# %bb.3:
	movq	%rcx, %rsi
	subq	%r8, %rsi
	cmpq	$32, %rsi
	jae	.LBB0_5
# %bb.4:
	xorl	%eax, %eax
	movq	%r8, %rdx
	jmp	.LBB0_8
.LBB0_1:
	xorl	%eax, %eax
	retq
.LBB0_5:
	movq	%rsi, %rdi
	andq	$-32, %rdi
	leaq	(%r8,%rdi), %rdx
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	vpbroadcastb	.LCPI0_1(%rip), %xmm1   # xmm1 = [42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42]
	vpxor	%xmm2, %xmm2, %xmm2
	vpxor	%xmm3, %xmm3, %xmm3
	vpxor	%xmm4, %xmm4, %xmm4
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	vmovq	(%r8,%rax), %xmm5               # xmm5 = mem[0],zero
	vmovq	8(%r8,%rax), %xmm6              # xmm6 = mem[0],zero
	vmovq	16(%r8,%rax), %xmm7             # xmm7 = mem[0],zero
	vmovq	24(%r8,%rax), %xmm8             # xmm8 = mem[0],zero
	vpcmpeqb	%xmm1, %xmm5, %k0
	vpcmpeqb	%xmm1, %xmm6, %k1
	vpcmpeqb	%xmm1, %xmm7, %k2
	vpcmpeqb	%xmm1, %xmm8, %k3
	vpmovm2q	%k0, %zmm5
	vpsubq	%zmm5, %zmm0, %zmm0
	vpmovm2q	%k1, %zmm5
	vpsubq	%zmm5, %zmm2, %zmm2
	vpmovm2q	%k2, %zmm5
	vpsubq	%zmm5, %zmm3, %zmm3
	vpmovm2q	%k3, %zmm5
	vpsubq	%zmm5, %zmm4, %zmm4
	addq	$32, %rax
	cmpq	%rax, %rdi
	jne	.LBB0_6
# %bb.7:
	vpaddq	%zmm0, %zmm2, %zmm0
	vpaddq	%zmm3, %zmm4, %zmm1
	vpaddq	%zmm0, %zmm1, %zmm0
	vextracti64x4	$1, %zmm0, %ymm1
	vpaddq	%zmm1, %zmm0, %zmm0
	vextracti128	$1, %ymm0, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vpshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	vpaddq	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %rax
	cmpq	%rdi, %rsi
	je	.LBB0_2
	.p2align	4, 0x90
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	xorl	%esi, %esi
	cmpb	$42, (%rdx)
	sete	%sil
	addq	%rsi, %rax
	incq	%rdx
	cmpq	%rcx, %rdx
	jne	.LBB0_8
.LBB0_2:
	vzeroupper
	retq
.Lfunc_end0:
	.size	_Z10count_epi8RKSt6vectorIaSaIaEE, .Lfunc_end0-_Z10count_epi8RKSt6vectorIaSaIaEE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z11count_epi32RKSt6vectorIiSaIiEE
.LCPI1_0:
	.long	42                              # 0x2a
	.text
	.globl	_Z11count_epi32RKSt6vectorIiSaIiEE
	.p2align	4, 0x90
	.type	_Z11count_epi32RKSt6vectorIiSaIiEE,@function
_Z11count_epi32RKSt6vectorIiSaIiEE:     # @_Z11count_epi32RKSt6vectorIiSaIiEE
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %r8
	movq	8(%rdi), %rcx
	cmpq	%rcx, %r8
	je	.LBB1_1
# %bb.3:
	movq	%rcx, %rsi
	subq	%r8, %rsi
	addq	$-4, %rsi
	cmpq	$124, %rsi
	jae	.LBB1_5
# %bb.4:
	xorl	%eax, %eax
	movq	%r8, %rdx
	jmp	.LBB1_8
.LBB1_1:
	xorl	%eax, %eax
	retq
.LBB1_5:
	shrq	$2, %rsi
	incq	%rsi
	movq	%rsi, %rdi
	andq	$-32, %rdi
	leaq	(%r8,%rdi,4), %rdx
	vpxor	%xmm0, %xmm0, %xmm0
	vpbroadcastd	.LCPI1_0(%rip), %ymm1   # ymm1 = [42,42,42,42,42,42,42,42]
	xorl	%eax, %eax
	vpxor	%xmm2, %xmm2, %xmm2
	vpxor	%xmm3, %xmm3, %xmm3
	vpxor	%xmm4, %xmm4, %xmm4
	.p2align	4, 0x90
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	vpcmpeqd	(%r8,%rax,4), %ymm1, %k0
	vpcmpeqd	32(%r8,%rax,4), %ymm1, %k1
	vpcmpeqd	64(%r8,%rax,4), %ymm1, %k2
	vpcmpeqd	96(%r8,%rax,4), %ymm1, %k3
	vpmovm2q	%k0, %zmm5
	vpsubq	%zmm5, %zmm0, %zmm0
	vpmovm2q	%k1, %zmm5
	vpsubq	%zmm5, %zmm2, %zmm2
	vpmovm2q	%k2, %zmm5
	vpsubq	%zmm5, %zmm3, %zmm3
	vpmovm2q	%k3, %zmm5
	vpsubq	%zmm5, %zmm4, %zmm4
	addq	$32, %rax
	cmpq	%rax, %rdi
	jne	.LBB1_6
# %bb.7:
	vpaddq	%zmm0, %zmm2, %zmm0
	vpaddq	%zmm3, %zmm4, %zmm1
	vpaddq	%zmm0, %zmm1, %zmm0
	vextracti64x4	$1, %zmm0, %ymm1
	vpaddq	%zmm1, %zmm0, %zmm0
	vextracti128	$1, %ymm0, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vpshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	vpaddq	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %rax
	cmpq	%rdi, %rsi
	je	.LBB1_2
	.p2align	4, 0x90
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	xorl	%esi, %esi
	cmpl	$42, (%rdx)
	sete	%sil
	addq	%rsi, %rax
	addq	$4, %rdx
	cmpq	%rcx, %rdx
	jne	.LBB1_8
.LBB1_2:
	vzeroupper
	retq
.Lfunc_end1:
	.size	_Z11count_epi32RKSt6vectorIiSaIiEE, .Lfunc_end1-_Z11count_epi32RKSt6vectorIiSaIiEE
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 18.0.0 (https://github.com/llvm/llvm-project.git 2176c5e510e3bfcbc75afb13e78d287141f239a7)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
