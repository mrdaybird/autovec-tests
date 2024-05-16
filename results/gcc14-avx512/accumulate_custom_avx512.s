	.file	"accumulate_custom.cpp"
	.text
	.p2align 4
	.globl	_Z22accumulate_custom_epi8RKSt6vectorIaSaIaEE
	.type	_Z22accumulate_custom_epi8RKSt6vectorIaSaIaEE, @function
_Z22accumulate_custom_epi8RKSt6vectorIaSaIaEE:
.LFB1302:
	.cfi_startproc
	movq	8(%rdi), %rsi
	movq	(%rdi), %rdx
	cmpq	%rsi, %rdx
	je	.L4
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L3:
	movsbl	(%rdx), %ecx
	movsbl	%al, %eax
	addq	$1, %rdx
	subl	%ecx, %eax
	cmpq	%rsi, %rdx
	jne	.L3
	cltq
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE1302:
	.size	_Z22accumulate_custom_epi8RKSt6vectorIaSaIaEE, .-_Z22accumulate_custom_epi8RKSt6vectorIaSaIaEE
	.p2align 4
	.globl	_Z23accumulate_custom_epi32RKSt6vectorIiSaIiEE
	.type	_Z23accumulate_custom_epi32RKSt6vectorIiSaIiEE, @function
_Z23accumulate_custom_epi32RKSt6vectorIiSaIiEE:
.LFB1306:
	.cfi_startproc
	movq	8(%rdi), %rsi
	movq	(%rdi), %rcx
	cmpq	%rsi, %rcx
	je	.L14
	leaq	-4(%rsi), %rdx
	movq	%rcx, %rax
	subq	%rcx, %rdx
	movq	%rdx, %rdi
	shrq	$2, %rdi
	leaq	1(%rdi), %r8
	cmpq	$56, %rdx
	jbe	.L15
	movq	%r8, %rdx
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$4, %rdx
	salq	$6, %rdx
	addq	%rcx, %rdx
	.p2align 4,,10
	.p2align 3
.L10:
	vpsubd	(%rax), %zmm0, %zmm0
	addq	$64, %rax
	cmpq	%rax, %rdx
	jne	.L10
	vextracti32x8	$0x1, %zmm0, %ymm1
	movq	%r8, %r9
	vpaddd	%ymm0, %ymm1, %ymm1
	andq	$-16, %r9
	andl	$15, %r8d
	vextracti32x4	$0x1, %ymm1, %xmm0
	leaq	(%rcx,%r9,4), %rdx
	vpaddd	%xmm1, %xmm0, %xmm0
	vpsrldq	$8, %xmm0, %xmm2
	vpaddd	%xmm2, %xmm0, %xmm0
	vpsrldq	$4, %xmm0, %xmm2
	vpaddd	%xmm2, %xmm0, %xmm0
	vmovd	%xmm0, %eax
	je	.L11
.L9:
	subq	%r9, %rdi
	leaq	1(%rdi), %r8
	cmpq	$6, %rdi
	jbe	.L12
	vpsubd	(%rcx,%r9,4), %ymm1, %ymm1
	movq	%r8, %rcx
	andq	$-8, %rcx
	andl	$7, %r8d
	vextracti32x4	$0x1, %ymm1, %xmm0
	leaq	(%rdx,%rcx,4), %rdx
	vpaddd	%xmm1, %xmm0, %xmm0
	vpsrldq	$8, %xmm0, %xmm1
	vpaddd	%xmm1, %xmm0, %xmm0
	vpsrldq	$4, %xmm0, %xmm1
	vpaddd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %eax
	je	.L11
.L12:
	vmovd	(%rdx), %xmm1
	leaq	4(%rdx), %rcx
	vpsubd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %eax
	cmpq	%rcx, %rsi
	je	.L11
	vmovd	4(%rdx), %xmm1
	leaq	8(%rdx), %rcx
	vpsubd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %eax
	cmpq	%rcx, %rsi
	je	.L11
	vmovd	8(%rdx), %xmm1
	leaq	12(%rdx), %rcx
	vpsubd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %eax
	cmpq	%rcx, %rsi
	je	.L11
	vmovd	12(%rdx), %xmm1
	leaq	16(%rdx), %rcx
	vpsubd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %eax
	cmpq	%rcx, %rsi
	je	.L11
	vmovd	16(%rdx), %xmm1
	leaq	20(%rdx), %rcx
	vpsubd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %eax
	cmpq	%rcx, %rsi
	je	.L11
	vmovd	20(%rdx), %xmm1
	leaq	24(%rdx), %rcx
	vpsubd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %eax
	cmpq	%rcx, %rsi
	je	.L11
	vmovd	24(%rdx), %xmm1
	vpsubd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %eax
.L11:
	cltq
	vzeroupper
	ret
	.p2align 4,,10
	.p2align 3
.L14:
	xorl	%eax, %eax
	ret
.L15:
	movq	%rcx, %rdx
	vpxor	%xmm1, %xmm1, %xmm1
	xorl	%r9d, %r9d
	vpxor	%xmm0, %xmm0, %xmm0
	jmp	.L9
	.cfi_endproc
.LFE1306:
	.size	_Z23accumulate_custom_epi32RKSt6vectorIiSaIiEE, .-_Z23accumulate_custom_epi32RKSt6vectorIiSaIiEE
	.ident	"GCC: (GNU) 14.1.0"
	.section	.note.GNU-stack,"",@progbits
