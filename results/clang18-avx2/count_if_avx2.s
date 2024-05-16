	.text
	.file	"count_if.cpp"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z13count_if_epi8RKSt6vectorIaSaIaEE
.LCPI0_0:
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
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_1:
	.quad	1                               # 0x1
	.section	.rodata,"a",@progbits
.LCPI0_2:
	.byte	42                              # 0x2a
	.text
	.globl	_Z13count_if_epi8RKSt6vectorIaSaIaEE
	.p2align	4, 0x90
	.type	_Z13count_if_epi8RKSt6vectorIaSaIaEE,@function
_Z13count_if_epi8RKSt6vectorIaSaIaEE:   # @_Z13count_if_epi8RKSt6vectorIaSaIaEE
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %r8
	movq	8(%rdi), %rcx
	cmpq	%rcx, %r8
	je	.LBB0_1
# %bb.3:
	movq	%rcx, %rsi
	subq	%r8, %rsi
	cmpq	$16, %rsi
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
	andq	$-16, %rdi
	leaq	(%r8,%rdi), %rdx
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	vpbroadcastb	.LCPI0_2(%rip), %xmm1   # xmm1 = [42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42]
	vpbroadcastq	.LCPI0_1(%rip), %ymm2   # ymm2 = [1,1,1,1]
	vpcmpeqd	%xmm3, %xmm3, %xmm3
	vpxor	%xmm4, %xmm4, %xmm4
	vpxor	%xmm5, %xmm5, %xmm5
	vpxor	%xmm6, %xmm6, %xmm6
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	vmovd	(%r8,%rax), %xmm7               # xmm7 = mem[0],zero,zero,zero
	vmovd	4(%r8,%rax), %xmm8              # xmm8 = mem[0],zero,zero,zero
	vmovd	8(%r8,%rax), %xmm9              # xmm9 = mem[0],zero,zero,zero
	vmovd	12(%r8,%rax), %xmm10            # xmm10 = mem[0],zero,zero,zero
	vpcmpeqb	%xmm1, %xmm7, %xmm11
	vpcmpeqb	%xmm1, %xmm8, %xmm12
	vpcmpeqb	%xmm1, %xmm9, %xmm13
	vpcmpeqb	%xmm1, %xmm10, %xmm14
	vpcmpeqb	%xmm3, %xmm7, %xmm7
	vpor	%xmm7, %xmm11, %xmm7
	vpcmpeqb	%xmm3, %xmm8, %xmm8
	vpor	%xmm8, %xmm12, %xmm8
	vpcmpeqb	%xmm3, %xmm9, %xmm9
	vpor	%xmm9, %xmm13, %xmm9
	vpcmpeqb	%xmm3, %xmm10, %xmm10
	vpor	%xmm10, %xmm14, %xmm10
	vpmovzxbq	%xmm7, %ymm7            # ymm7 = xmm7[0],zero,zero,zero,zero,zero,zero,zero,xmm7[1],zero,zero,zero,zero,zero,zero,zero,xmm7[2],zero,zero,zero,zero,zero,zero,zero,xmm7[3],zero,zero,zero,zero,zero,zero,zero
	vpand	%ymm2, %ymm7, %ymm7
	vpaddq	%ymm7, %ymm0, %ymm0
	vpmovzxbq	%xmm8, %ymm7            # ymm7 = xmm8[0],zero,zero,zero,zero,zero,zero,zero,xmm8[1],zero,zero,zero,zero,zero,zero,zero,xmm8[2],zero,zero,zero,zero,zero,zero,zero,xmm8[3],zero,zero,zero,zero,zero,zero,zero
	vpand	%ymm2, %ymm7, %ymm7
	vpaddq	%ymm7, %ymm4, %ymm4
	vpmovzxbq	%xmm9, %ymm7            # ymm7 = xmm9[0],zero,zero,zero,zero,zero,zero,zero,xmm9[1],zero,zero,zero,zero,zero,zero,zero,xmm9[2],zero,zero,zero,zero,zero,zero,zero,xmm9[3],zero,zero,zero,zero,zero,zero,zero
	vpand	%ymm2, %ymm7, %ymm7
	vpaddq	%ymm7, %ymm5, %ymm5
	vpmovzxbq	%xmm10, %ymm7           # ymm7 = xmm10[0],zero,zero,zero,zero,zero,zero,zero,xmm10[1],zero,zero,zero,zero,zero,zero,zero,xmm10[2],zero,zero,zero,zero,zero,zero,zero,xmm10[3],zero,zero,zero,zero,zero,zero,zero
	vpand	%ymm2, %ymm7, %ymm7
	vpaddq	%ymm7, %ymm6, %ymm6
	addq	$16, %rax
	cmpq	%rax, %rdi
	jne	.LBB0_6
# %bb.7:
	vpaddq	%ymm0, %ymm4, %ymm0
	vpaddq	%ymm0, %ymm5, %ymm0
	vpaddq	%ymm0, %ymm6, %ymm0
	vextracti128	$1, %ymm0, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vpshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	vpaddq	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %rax
	cmpq	%rdi, %rsi
	je	.LBB0_2
	.p2align	4, 0x90
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdx), %esi
	cmpb	$42, %sil
	sete	%dil
	cmpb	$-1, %sil
	sete	%sil
	orb	%dil, %sil
	movzbl	%sil, %esi
	addq	%rsi, %rax
	incq	%rdx
	cmpq	%rcx, %rdx
	jne	.LBB0_8
.LBB0_2:
	vzeroupper
	retq
.Lfunc_end0:
	.size	_Z13count_if_epi8RKSt6vectorIaSaIaEE, .Lfunc_end0-_Z13count_if_epi8RKSt6vectorIaSaIaEE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z14count_if_epi32RKSt6vectorIiSaIiEE
.LCPI1_0:
	.long	42                              # 0x2a
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_1:
	.quad	1                               # 0x1
	.text
	.globl	_Z14count_if_epi32RKSt6vectorIiSaIiEE
	.p2align	4, 0x90
	.type	_Z14count_if_epi32RKSt6vectorIiSaIiEE,@function
_Z14count_if_epi32RKSt6vectorIiSaIiEE:  # @_Z14count_if_epi32RKSt6vectorIiSaIiEE
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
	cmpq	$60, %rsi
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
	andq	$-16, %rdi
	leaq	(%r8,%rdi,4), %rdx
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	vpbroadcastd	.LCPI1_0(%rip), %xmm1   # xmm1 = [42,42,42,42]
	vpbroadcastq	.LCPI1_1(%rip), %ymm2   # ymm2 = [1,1,1,1]
	vpcmpeqd	%xmm3, %xmm3, %xmm3
	vpxor	%xmm4, %xmm4, %xmm4
	vpxor	%xmm5, %xmm5, %xmm5
	vpxor	%xmm6, %xmm6, %xmm6
	.p2align	4, 0x90
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	vmovdqu	(%r8,%rax,4), %xmm7
	vmovdqu	16(%r8,%rax,4), %xmm8
	vmovdqu	32(%r8,%rax,4), %xmm9
	vmovdqu	48(%r8,%rax,4), %xmm10
	vpcmpeqd	%xmm1, %xmm7, %xmm11
	vpcmpeqd	%xmm1, %xmm8, %xmm12
	vpcmpeqd	%xmm1, %xmm9, %xmm13
	vpcmpeqd	%xmm1, %xmm10, %xmm14
	vpcmpeqd	%xmm3, %xmm7, %xmm7
	vpor	%xmm7, %xmm11, %xmm7
	vpcmpeqd	%xmm3, %xmm8, %xmm8
	vpor	%xmm8, %xmm12, %xmm8
	vpcmpeqd	%xmm3, %xmm9, %xmm9
	vpor	%xmm9, %xmm13, %xmm9
	vpcmpeqd	%xmm3, %xmm10, %xmm10
	vpor	%xmm10, %xmm14, %xmm10
	vpmovzxdq	%xmm7, %ymm7            # ymm7 = xmm7[0],zero,xmm7[1],zero,xmm7[2],zero,xmm7[3],zero
	vpand	%ymm2, %ymm7, %ymm7
	vpaddq	%ymm7, %ymm0, %ymm0
	vpmovzxdq	%xmm8, %ymm7            # ymm7 = xmm8[0],zero,xmm8[1],zero,xmm8[2],zero,xmm8[3],zero
	vpand	%ymm2, %ymm7, %ymm7
	vpaddq	%ymm7, %ymm4, %ymm4
	vpmovzxdq	%xmm9, %ymm7            # ymm7 = xmm9[0],zero,xmm9[1],zero,xmm9[2],zero,xmm9[3],zero
	vpand	%ymm2, %ymm7, %ymm7
	vpaddq	%ymm7, %ymm5, %ymm5
	vpmovzxdq	%xmm10, %ymm7           # ymm7 = xmm10[0],zero,xmm10[1],zero,xmm10[2],zero,xmm10[3],zero
	vpand	%ymm2, %ymm7, %ymm7
	vpaddq	%ymm7, %ymm6, %ymm6
	addq	$16, %rax
	cmpq	%rax, %rdi
	jne	.LBB1_6
# %bb.7:
	vpaddq	%ymm0, %ymm4, %ymm0
	vpaddq	%ymm0, %ymm5, %ymm0
	vpaddq	%ymm0, %ymm6, %ymm0
	vextracti128	$1, %ymm0, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vpshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	vpaddq	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %rax
	cmpq	%rdi, %rsi
	je	.LBB1_2
	.p2align	4, 0x90
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	movl	(%rdx), %esi
	cmpl	$42, %esi
	sete	%dil
	cmpl	$-1, %esi
	sete	%sil
	orb	%dil, %sil
	movzbl	%sil, %esi
	addq	%rsi, %rax
	addq	$4, %rdx
	cmpq	%rcx, %rdx
	jne	.LBB1_8
.LBB1_2:
	vzeroupper
	retq
.Lfunc_end1:
	.size	_Z14count_if_epi32RKSt6vectorIiSaIiEE, .Lfunc_end1-_Z14count_if_epi32RKSt6vectorIiSaIiEE
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 18.0.0 (https://github.com/llvm/llvm-project.git 2176c5e510e3bfcbc75afb13e78d287141f239a7)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
