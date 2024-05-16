	.text
	.file	"accumulate_default.cpp"
	.globl	_Z15accumulate_epi8RKSt6vectorIaSaIaEE # -- Begin function _Z15accumulate_epi8RKSt6vectorIaSaIaEE
	.p2align	4, 0x90
	.type	_Z15accumulate_epi8RKSt6vectorIaSaIaEE,@function
_Z15accumulate_epi8RKSt6vectorIaSaIaEE: # @_Z15accumulate_epi8RKSt6vectorIaSaIaEE
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %r8
	movq	8(%rdi), %rcx
	xorl	%eax, %eax
	cmpq	%rcx, %r8
	je	.LBB0_8
# %bb.1:
	movq	%rcx, %rsi
	subq	%r8, %rsi
	cmpq	$32, %rsi
	jae	.LBB0_3
# %bb.2:
	movq	%r8, %rdx
	jmp	.LBB0_6
.LBB0_3:
	movq	%rsi, %rdi
	andq	$-32, %rdi
	leaq	(%r8,%rdi), %rdx
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	vpxor	%xmm1, %xmm1, %xmm1
	vpxor	%xmm2, %xmm2, %xmm2
	vpxor	%xmm3, %xmm3, %xmm3
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	vpmovsxbd	(%r8,%rax), %ymm4
	vpaddd	%ymm4, %ymm0, %ymm0
	vpmovsxbd	8(%r8,%rax), %ymm4
	vpaddd	%ymm4, %ymm1, %ymm1
	vpmovsxbd	16(%r8,%rax), %ymm4
	vpmovsxbd	24(%r8,%rax), %ymm5
	vpaddd	%ymm4, %ymm2, %ymm2
	vpaddd	%ymm5, %ymm3, %ymm3
	addq	$32, %rax
	cmpq	%rax, %rdi
	jne	.LBB0_4
# %bb.5:
	vpaddd	%ymm0, %ymm1, %ymm0
	vpaddd	%ymm0, %ymm2, %ymm0
	vpaddd	%ymm0, %ymm3, %ymm0
	vextracti128	$1, %ymm0, %xmm1
	vpaddd	%xmm1, %xmm0, %xmm0
	vpshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	vpaddd	%xmm1, %xmm0, %xmm0
	vpshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	vpaddd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %eax
	cmpq	%rdi, %rsi
	je	.LBB0_7
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movsbl	(%rdx), %esi
	addl	%esi, %eax
	incq	%rdx
	cmpq	%rcx, %rdx
	jne	.LBB0_6
.LBB0_7:
	cltq
.LBB0_8:
	vzeroupper
	retq
.Lfunc_end0:
	.size	_Z15accumulate_epi8RKSt6vectorIaSaIaEE, .Lfunc_end0-_Z15accumulate_epi8RKSt6vectorIaSaIaEE
	.cfi_endproc
                                        # -- End function
	.globl	_Z16accumulate_epi32RKSt6vectorIiSaIiEE # -- Begin function _Z16accumulate_epi32RKSt6vectorIiSaIiEE
	.p2align	4, 0x90
	.type	_Z16accumulate_epi32RKSt6vectorIiSaIiEE,@function
_Z16accumulate_epi32RKSt6vectorIiSaIiEE: # @_Z16accumulate_epi32RKSt6vectorIiSaIiEE
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %r8
	movq	8(%rdi), %rcx
	xorl	%eax, %eax
	cmpq	%rcx, %r8
	je	.LBB1_8
# %bb.1:
	movq	%rcx, %rsi
	subq	%r8, %rsi
	addq	$-4, %rsi
	cmpq	$124, %rsi
	jae	.LBB1_3
# %bb.2:
	movq	%r8, %rdx
	jmp	.LBB1_6
.LBB1_3:
	shrq	$2, %rsi
	incq	%rsi
	movq	%rsi, %rdi
	andq	$-32, %rdi
	leaq	(%r8,%rdi,4), %rdx
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	vpxor	%xmm1, %xmm1, %xmm1
	vpxor	%xmm2, %xmm2, %xmm2
	vpxor	%xmm3, %xmm3, %xmm3
	.p2align	4, 0x90
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	vpaddd	(%r8,%rax,4), %ymm0, %ymm0
	vpaddd	32(%r8,%rax,4), %ymm1, %ymm1
	vpaddd	64(%r8,%rax,4), %ymm2, %ymm2
	vpaddd	96(%r8,%rax,4), %ymm3, %ymm3
	addq	$32, %rax
	cmpq	%rax, %rdi
	jne	.LBB1_4
# %bb.5:
	vpaddd	%ymm0, %ymm1, %ymm0
	vpaddd	%ymm2, %ymm3, %ymm1
	vpaddd	%ymm0, %ymm1, %ymm0
	vextracti128	$1, %ymm0, %xmm1
	vpaddd	%xmm1, %xmm0, %xmm0
	vpshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	vpaddd	%xmm1, %xmm0, %xmm0
	vpshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	vpaddd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %eax
	cmpq	%rdi, %rsi
	je	.LBB1_7
	.p2align	4, 0x90
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	addl	(%rdx), %eax
	addq	$4, %rdx
	cmpq	%rcx, %rdx
	jne	.LBB1_6
.LBB1_7:
	cltq
.LBB1_8:
	vzeroupper
	retq
.Lfunc_end1:
	.size	_Z16accumulate_epi32RKSt6vectorIiSaIiEE, .Lfunc_end1-_Z16accumulate_epi32RKSt6vectorIiSaIiEE
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 18.0.0 (https://github.com/llvm/llvm-project.git 2176c5e510e3bfcbc75afb13e78d287141f239a7)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
