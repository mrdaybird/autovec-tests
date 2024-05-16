	.text
	.file	"accumulate_custom.cpp"
	.globl	_Z22accumulate_custom_epi8RKSt6vectorIaSaIaEE # -- Begin function _Z22accumulate_custom_epi8RKSt6vectorIaSaIaEE
	.p2align	4, 0x90
	.type	_Z22accumulate_custom_epi8RKSt6vectorIaSaIaEE,@function
_Z22accumulate_custom_epi8RKSt6vectorIaSaIaEE: # @_Z22accumulate_custom_epi8RKSt6vectorIaSaIaEE
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rcx
	movq	8(%rdi), %rsi
	xorl	%eax, %eax
	cmpq	%rsi, %rcx
	je	.LBB0_8
# %bb.1:
	movq	%rcx, %rdi
	notq	%rdi
	addq	%rsi, %rdi
	subq	%rcx, %rsi
	movl	%esi, %edx
	andl	$3, %edx
	cmpq	$3, %rdi
	jb	.LBB0_4
# %bb.2:
	andq	$-4, %rsi
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx), %edi
	addb	1(%rcx), %dil
	subb	%dil, %al
	movzbl	%al, %eax
	movzbl	2(%rcx), %edi
	subl	%edi, %eax
	movsbl	3(%rcx), %edi
	movsbl	%al, %eax
	subl	%edi, %eax
	addq	$4, %rcx
	addq	$-4, %rsi
	jne	.LBB0_3
.LBB0_4:
	testq	%rdx, %rdx
	je	.LBB0_7
# %bb.5:
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movsbl	(%rcx,%rsi), %edi
	movsbl	%al, %eax
	subl	%edi, %eax
	incq	%rsi
	cmpq	%rsi, %rdx
	jne	.LBB0_6
.LBB0_7:
	cltq
.LBB0_8:
	retq
.Lfunc_end0:
	.size	_Z22accumulate_custom_epi8RKSt6vectorIaSaIaEE, .Lfunc_end0-_Z22accumulate_custom_epi8RKSt6vectorIaSaIaEE
	.cfi_endproc
                                        # -- End function
	.globl	_Z23accumulate_custom_epi32RKSt6vectorIiSaIiEE # -- Begin function _Z23accumulate_custom_epi32RKSt6vectorIiSaIiEE
	.p2align	4, 0x90
	.type	_Z23accumulate_custom_epi32RKSt6vectorIiSaIiEE,@function
_Z23accumulate_custom_epi32RKSt6vectorIiSaIiEE: # @_Z23accumulate_custom_epi32RKSt6vectorIiSaIiEE
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
	vpsubd	(%r8,%rax,4), %ymm0, %ymm0
	vpsubd	32(%r8,%rax,4), %ymm1, %ymm1
	vpsubd	64(%r8,%rax,4), %ymm2, %ymm2
	vpsubd	96(%r8,%rax,4), %ymm3, %ymm3
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
	subl	(%rdx), %eax
	addq	$4, %rdx
	cmpq	%rcx, %rdx
	jne	.LBB1_6
.LBB1_7:
	cltq
.LBB1_8:
	vzeroupper
	retq
.Lfunc_end1:
	.size	_Z23accumulate_custom_epi32RKSt6vectorIiSaIiEE, .Lfunc_end1-_Z23accumulate_custom_epi32RKSt6vectorIiSaIiEE
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 18.0.0 (https://github.com/llvm/llvm-project.git 2176c5e510e3bfcbc75afb13e78d287141f239a7)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
