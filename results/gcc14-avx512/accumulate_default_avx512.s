	.file	"accumulate_default.cpp"
	.text
	.p2align 4
	.globl	_Z15accumulate_epi8RKSt6vectorIaSaIaEE
	.type	_Z15accumulate_epi8RKSt6vectorIaSaIaEE, @function
_Z15accumulate_epi8RKSt6vectorIaSaIaEE:
.LFB1302:
	.cfi_startproc
	movq	8(%rdi), %rsi
	movq	(%rdi), %rdi
	cmpq	%rsi, %rdi
	je	.L9
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rax
	cmpq	$62, %rax
	jbe	.L10
	movq	%rcx, %r8
	vpxor	%xmm2, %xmm2, %xmm2
	andq	$-64, %r8
	leaq	(%rdi,%r8), %rax
	.p2align 4,,10
	.p2align 3
.L4:
	vmovdqu8	(%rdx), %zmm0
	addq	$64, %rdx
	vpmovsxbw	%ymm0, %zmm1
	vextracti64x4	$0x1, %zmm0, %ymm0
	vpmovsxwd	%ymm1, %zmm3
	vextracti64x4	$0x1, %zmm1, %ymm1
	vpmovsxbw	%ymm0, %zmm0
	vpaddd	%zmm2, %zmm3, %zmm2
	vpmovsxwd	%ymm1, %zmm1
	vpaddd	%zmm2, %zmm1, %zmm1
	vpmovsxwd	%ymm0, %zmm2
	vextracti64x4	$0x1, %zmm0, %ymm0
	vpaddd	%zmm1, %zmm2, %zmm2
	vpmovsxwd	%ymm0, %zmm0
	vpaddd	%zmm2, %zmm0, %zmm2
	cmpq	%rax, %rdx
	jne	.L4
	vextracti32x8	$0x1, %zmm2, %ymm1
	vpaddd	%ymm2, %ymm1, %ymm1
	vextracti32x4	$0x1, %ymm1, %xmm0
	vpaddd	%xmm1, %xmm0, %xmm0
	vpsrldq	$8, %xmm0, %xmm2
	vpaddd	%xmm2, %xmm0, %xmm0
	vpsrldq	$4, %xmm0, %xmm2
	vpaddd	%xmm2, %xmm0, %xmm0
	vmovdqa	%ymm1, %ymm2
	vmovd	%xmm0, %eax
	cmpq	%r8, %rcx
	je	.L5
.L3:
	subq	%r8, %rcx
	leaq	-1(%rcx), %r9
	cmpq	$30, %r9
	jbe	.L8
	vmovdqu8	(%rdi,%r8), %ymm1
	movq	%rcx, %rdi
	andq	$-32, %rdi
	vpmovsxbw	%xmm1, %ymm0
	vextracti32x4	$0x1, %ymm1, %xmm1
	addq	%rdi, %rdx
	andl	$31, %ecx
	vpmovsxwd	%xmm0, %ymm3
	vextracti32x4	$0x1, %ymm0, %xmm0
	vpmovsxbw	%xmm1, %ymm1
	vpaddd	%ymm2, %ymm3, %ymm2
	vpmovsxwd	%xmm0, %ymm0
	vpaddd	%ymm2, %ymm0, %ymm0
	vpmovsxwd	%xmm1, %ymm2
	vextracti32x4	$0x1, %ymm1, %xmm1
	vpaddd	%ymm0, %ymm2, %ymm0
	vpmovsxwd	%xmm1, %ymm1
	vpaddd	%ymm0, %ymm1, %ymm1
	vextracti32x4	$0x1, %ymm1, %xmm0
	vpaddd	%xmm1, %xmm0, %xmm0
	vpsrldq	$8, %xmm0, %xmm1
	vpaddd	%xmm1, %xmm0, %xmm0
	vpsrldq	$4, %xmm0, %xmm1
	vpaddd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %eax
	je	.L5
	.p2align 4,,10
	.p2align 3
.L8:
	movsbl	(%rdx), %ecx
	addq	$1, %rdx
	addl	%ecx, %eax
	cmpq	%rdx, %rsi
	jne	.L8
.L5:
	cltq
	vzeroupper
	ret
	.p2align 4,,10
	.p2align 3
.L9:
	xorl	%eax, %eax
	ret
.L10:
	vpxor	%xmm2, %xmm2, %xmm2
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	jmp	.L3
	.cfi_endproc
.LFE1302:
	.size	_Z15accumulate_epi8RKSt6vectorIaSaIaEE, .-_Z15accumulate_epi8RKSt6vectorIaSaIaEE
	.p2align 4
	.globl	_Z16accumulate_epi32RKSt6vectorIiSaIiEE
	.type	_Z16accumulate_epi32RKSt6vectorIiSaIiEE, @function
_Z16accumulate_epi32RKSt6vectorIiSaIiEE:
.LFB1303:
	.cfi_startproc
	movq	8(%rdi), %rsi
	movq	(%rdi), %rcx
	cmpq	%rsi, %rcx
	je	.L24
	leaq	-4(%rsi), %rdx
	movq	%rcx, %rax
	subq	%rcx, %rdx
	movq	%rdx, %rdi
	shrq	$2, %rdi
	leaq	1(%rdi), %r8
	cmpq	$56, %rdx
	jbe	.L25
	movq	%r8, %rdx
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$4, %rdx
	salq	$6, %rdx
	addq	%rcx, %rdx
	.p2align 4,,10
	.p2align 3
.L20:
	vpaddd	(%rax), %zmm0, %zmm0
	addq	$64, %rax
	cmpq	%rax, %rdx
	jne	.L20
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
	je	.L21
.L19:
	subq	%r9, %rdi
	leaq	1(%rdi), %r8
	cmpq	$6, %rdi
	jbe	.L22
	vpaddd	(%rcx,%r9,4), %ymm1, %ymm1
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
	je	.L21
.L22:
	vmovd	(%rdx), %xmm1
	leaq	4(%rdx), %rcx
	vpaddd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %eax
	cmpq	%rcx, %rsi
	je	.L21
	vmovd	4(%rdx), %xmm1
	leaq	8(%rdx), %rcx
	vpaddd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %eax
	cmpq	%rcx, %rsi
	je	.L21
	vmovd	8(%rdx), %xmm1
	leaq	12(%rdx), %rcx
	vpaddd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %eax
	cmpq	%rcx, %rsi
	je	.L21
	vmovd	12(%rdx), %xmm1
	leaq	16(%rdx), %rcx
	vpaddd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %eax
	cmpq	%rcx, %rsi
	je	.L21
	vmovd	16(%rdx), %xmm1
	leaq	20(%rdx), %rcx
	vpaddd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %eax
	cmpq	%rcx, %rsi
	je	.L21
	vmovd	20(%rdx), %xmm1
	leaq	24(%rdx), %rcx
	vpaddd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %eax
	cmpq	%rcx, %rsi
	je	.L21
	vmovd	24(%rdx), %xmm1
	vpaddd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %eax
.L21:
	cltq
	vzeroupper
	ret
	.p2align 4,,10
	.p2align 3
.L24:
	xorl	%eax, %eax
	ret
.L25:
	movq	%rcx, %rdx
	vpxor	%xmm1, %xmm1, %xmm1
	xorl	%r9d, %r9d
	vpxor	%xmm0, %xmm0, %xmm0
	jmp	.L19
	.cfi_endproc
.LFE1303:
	.size	_Z16accumulate_epi32RKSt6vectorIiSaIiEE, .-_Z16accumulate_epi32RKSt6vectorIiSaIiEE
	.ident	"GCC: (GNU) 14.1.0"
	.section	.note.GNU-stack,"",@progbits
