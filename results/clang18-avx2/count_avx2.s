	.text
	.file	"count.cpp"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z10count_epi8RKSt6vectorIaSaIaEE
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
	vpbroadcastq	.LCPI0_1(%rip), %ymm1   # ymm1 = [1,1,1,1]
	vpbroadcastb	.LCPI0_2(%rip), %xmm2   # xmm2 = [42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42]
	vpxor	%xmm3, %xmm3, %xmm3
	vpxor	%xmm4, %xmm4, %xmm4
	vpxor	%xmm5, %xmm5, %xmm5
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	vmovd	(%r8,%rax), %xmm6               # xmm6 = mem[0],zero,zero,zero
	vmovd	4(%r8,%rax), %xmm7              # xmm7 = mem[0],zero,zero,zero
	vmovd	8(%r8,%rax), %xmm8              # xmm8 = mem[0],zero,zero,zero
	vmovd	12(%r8,%rax), %xmm9             # xmm9 = mem[0],zero,zero,zero
	vpcmpeqb	%xmm2, %xmm6, %xmm6
	vpmovzxbq	%xmm6, %ymm6            # ymm6 = xmm6[0],zero,zero,zero,zero,zero,zero,zero,xmm6[1],zero,zero,zero,zero,zero,zero,zero,xmm6[2],zero,zero,zero,zero,zero,zero,zero,xmm6[3],zero,zero,zero,zero,zero,zero,zero
	vpand	%ymm1, %ymm6, %ymm6
	vpaddq	%ymm6, %ymm0, %ymm0
	vpcmpeqb	%xmm2, %xmm7, %xmm6
	vpmovzxbq	%xmm6, %ymm6            # ymm6 = xmm6[0],zero,zero,zero,zero,zero,zero,zero,xmm6[1],zero,zero,zero,zero,zero,zero,zero,xmm6[2],zero,zero,zero,zero,zero,zero,zero,xmm6[3],zero,zero,zero,zero,zero,zero,zero
	vpand	%ymm1, %ymm6, %ymm6
	vpaddq	%ymm6, %ymm3, %ymm3
	vpcmpeqb	%xmm2, %xmm8, %xmm6
	vpmovzxbq	%xmm6, %ymm6            # ymm6 = xmm6[0],zero,zero,zero,zero,zero,zero,zero,xmm6[1],zero,zero,zero,zero,zero,zero,zero,xmm6[2],zero,zero,zero,zero,zero,zero,zero,xmm6[3],zero,zero,zero,zero,zero,zero,zero
	vpand	%ymm1, %ymm6, %ymm6
	vpaddq	%ymm6, %ymm4, %ymm4
	vpcmpeqb	%xmm2, %xmm9, %xmm6
	vpmovzxbq	%xmm6, %ymm6            # ymm6 = xmm6[0],zero,zero,zero,zero,zero,zero,zero,xmm6[1],zero,zero,zero,zero,zero,zero,zero,xmm6[2],zero,zero,zero,zero,zero,zero,zero,xmm6[3],zero,zero,zero,zero,zero,zero,zero
	vpand	%ymm1, %ymm6, %ymm6
	vpaddq	%ymm6, %ymm5, %ymm5
	addq	$16, %rax
	cmpq	%rax, %rdi
	jne	.LBB0_6
# %bb.7:
	vpaddq	%ymm0, %ymm3, %ymm0
	vpaddq	%ymm0, %ymm4, %ymm0
	vpaddq	%ymm0, %ymm5, %ymm0
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_1:
	.quad	1                               # 0x1
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
	vpbroadcastd	.LCPI1_0(%rip), %xmm1   # xmm1 = [42,42,42,42]
	vpbroadcastq	.LCPI1_1(%rip), %ymm2   # ymm2 = [1,1,1,1]
	xorl	%eax, %eax
	vpxor	%xmm3, %xmm3, %xmm3
	vpxor	%xmm4, %xmm4, %xmm4
	vpxor	%xmm5, %xmm5, %xmm5
	.p2align	4, 0x90
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	vpcmpeqd	(%r8,%rax,4), %xmm1, %xmm6
	vpmovzxdq	%xmm6, %ymm6            # ymm6 = xmm6[0],zero,xmm6[1],zero,xmm6[2],zero,xmm6[3],zero
	vpand	%ymm2, %ymm6, %ymm6
	vpcmpeqd	16(%r8,%rax,4), %xmm1, %xmm7
	vpaddq	%ymm6, %ymm0, %ymm0
	vpmovzxdq	%xmm7, %ymm6            # ymm6 = xmm7[0],zero,xmm7[1],zero,xmm7[2],zero,xmm7[3],zero
	vpand	%ymm2, %ymm6, %ymm6
	vpaddq	%ymm6, %ymm3, %ymm3
	vpcmpeqd	32(%r8,%rax,4), %xmm1, %xmm6
	vpmovzxdq	%xmm6, %ymm6            # ymm6 = xmm6[0],zero,xmm6[1],zero,xmm6[2],zero,xmm6[3],zero
	vpand	%ymm2, %ymm6, %ymm6
	vpaddq	%ymm6, %ymm4, %ymm4
	vpcmpeqd	48(%r8,%rax,4), %xmm1, %xmm6
	vpmovzxdq	%xmm6, %ymm6            # ymm6 = xmm6[0],zero,xmm6[1],zero,xmm6[2],zero,xmm6[3],zero
	vpand	%ymm2, %ymm6, %ymm6
	vpaddq	%ymm6, %ymm5, %ymm5
	addq	$16, %rax
	cmpq	%rax, %rdi
	jne	.LBB1_6
# %bb.7:
	vpaddq	%ymm0, %ymm3, %ymm0
	vpaddq	%ymm0, %ymm4, %ymm0
	vpaddq	%ymm0, %ymm5, %ymm0
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
