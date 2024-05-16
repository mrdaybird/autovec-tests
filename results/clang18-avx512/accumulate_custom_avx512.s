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
	movq	(%rdi), %rdx
	movq	8(%rdi), %rcx
	xorl	%eax, %eax
	cmpq	%rcx, %rdx
	je	.LBB1_15
# %bb.1:
	movq	%rcx, %r8
	subq	%rdx, %r8
	addq	$-4, %r8
	cmpq	$28, %r8
	jae	.LBB1_3
# %bb.2:
	movq	%rdx, %r9
	jmp	.LBB1_13
.LBB1_3:
	movq	%r8, %rsi
	shrq	$2, %rsi
	incq	%rsi
	movabsq	$9223372036854775744, %rdi      # imm = 0x7FFFFFFFFFFFFFC0
	cmpq	$252, %r8
	jae	.LBB1_8
# %bb.4:
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	jmp	.LBB1_5
.LBB1_8:
	movq	%rsi, %r8
	andq	%rdi, %r8
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	vpxor	%xmm1, %xmm1, %xmm1
	vpxor	%xmm2, %xmm2, %xmm2
	vpxor	%xmm3, %xmm3, %xmm3
	.p2align	4, 0x90
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	vpsubd	(%rdx,%rax,4), %zmm0, %zmm0
	vpsubd	64(%rdx,%rax,4), %zmm1, %zmm1
	vpsubd	128(%rdx,%rax,4), %zmm2, %zmm2
	vpsubd	192(%rdx,%rax,4), %zmm3, %zmm3
	addq	$64, %rax
	cmpq	%rax, %r8
	jne	.LBB1_9
# %bb.10:
	vpaddd	%zmm0, %zmm1, %zmm0
	vpaddd	%zmm2, %zmm3, %zmm1
	vpaddd	%zmm0, %zmm1, %zmm0
	vextracti64x4	$1, %zmm0, %ymm1
	vpaddd	%zmm1, %zmm0, %zmm0
	vextracti128	$1, %ymm0, %xmm1
	vpaddd	%xmm1, %xmm0, %xmm0
	vpshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	vpaddd	%xmm1, %xmm0, %xmm0
	vpshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	vpaddd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %eax
	cmpq	%r8, %rsi
	je	.LBB1_14
# %bb.11:
	testb	$56, %sil
	je	.LBB1_12
.LBB1_5:
	addq	$56, %rdi
	andq	%rsi, %rdi
	leaq	(%rdx,%rdi,4), %r9
	vmovd	%eax, %xmm0
	.p2align	4, 0x90
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	vpsubd	(%rdx,%r8,4), %ymm0, %ymm0
	addq	$8, %r8
	cmpq	%r8, %rdi
	jne	.LBB1_6
# %bb.7:
	vextracti128	$1, %ymm0, %xmm1
	vpaddd	%xmm1, %xmm0, %xmm0
	vpshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	vpaddd	%xmm1, %xmm0, %xmm0
	vpshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	vpaddd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %eax
	cmpq	%rdi, %rsi
	jne	.LBB1_13
	jmp	.LBB1_14
.LBB1_12:
	leaq	(%rdx,%r8,4), %r9
	.p2align	4, 0x90
.LBB1_13:                               # =>This Inner Loop Header: Depth=1
	subl	(%r9), %eax
	addq	$4, %r9
	cmpq	%rcx, %r9
	jne	.LBB1_13
.LBB1_14:
	cltq
.LBB1_15:
	vzeroupper
	retq
.Lfunc_end1:
	.size	_Z23accumulate_custom_epi32RKSt6vectorIiSaIiEE, .Lfunc_end1-_Z23accumulate_custom_epi32RKSt6vectorIiSaIiEE
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 18.0.0 (https://github.com/llvm/llvm-project.git 2176c5e510e3bfcbc75afb13e78d287141f239a7)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
