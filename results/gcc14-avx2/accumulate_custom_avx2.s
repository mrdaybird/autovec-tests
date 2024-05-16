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
	movq	8(%rdi), %r8
	movq	(%rdi), %rcx
	cmpq	%r8, %rcx
	je	.L14
	leaq	-4(%r8), %rdx
	movq	%rcx, %rax
	subq	%rcx, %rdx
	movq	%rdx, %rsi
	shrq	$2, %rsi
	leaq	1(%rsi), %rdi
	cmpq	$24, %rdx
	jbe	.L15
	movq	%rdi, %rdx
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$3, %rdx
	salq	$5, %rdx
	addq	%rcx, %rdx
	.p2align 4,,10
	.p2align 3
.L10:
	vpsubd	(%rax), %ymm0, %ymm0
	addq	$32, %rax
	cmpq	%rax, %rdx
	jne	.L10
	vextracti128	$0x1, %ymm0, %xmm1
	movq	%rdi, %r9
	vpaddd	%xmm0, %xmm1, %xmm1
	andq	$-8, %r9
	andl	$7, %edi
	vpsrldq	$8, %xmm1, %xmm0
	leaq	(%rcx,%r9,4), %rdx
	vpaddd	%xmm0, %xmm1, %xmm0
	vpsrldq	$4, %xmm0, %xmm2
	vpaddd	%xmm2, %xmm0, %xmm0
	vmovd	%xmm0, %eax
	je	.L24
	vzeroupper
.L9:
	subq	%r9, %rsi
	leaq	1(%rsi), %rdi
	cmpq	$2, %rsi
	jbe	.L12
	vpsubd	(%rcx,%r9,4), %xmm1, %xmm1
	movq	%rdi, %rcx
	andq	$-4, %rcx
	andl	$3, %edi
	vpsrldq	$8, %xmm1, %xmm0
	leaq	(%rdx,%rcx,4), %rdx
	vpaddd	%xmm0, %xmm1, %xmm1
	vpsrldq	$4, %xmm1, %xmm0
	vpaddd	%xmm0, %xmm1, %xmm0
	vmovd	%xmm0, %eax
	je	.L11
.L12:
	vmovd	(%rdx), %xmm1
	leaq	4(%rdx), %rcx
	vpsubd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %eax
	cmpq	%rcx, %r8
	je	.L11
	vmovd	4(%rdx), %xmm1
	leaq	8(%rdx), %rcx
	vpsubd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %eax
	cmpq	%rcx, %r8
	je	.L11
	vmovd	8(%rdx), %xmm1
	vpsubd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %eax
.L11:
	cltq
	ret
	.p2align 4,,10
	.p2align 3
.L14:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L24:
	cltq
	vzeroupper
	ret
.L15:
	vpxor	%xmm1, %xmm1, %xmm1
	movq	%rcx, %rdx
	xorl	%r9d, %r9d
	vmovdqa	%xmm1, %xmm0
	jmp	.L9
	.cfi_endproc
.LFE1306:
	.size	_Z23accumulate_custom_epi32RKSt6vectorIiSaIiEE, .-_Z23accumulate_custom_epi32RKSt6vectorIiSaIiEE
	.ident	"GCC: (GNU) 14.1.0"
	.section	.note.GNU-stack,"",@progbits
