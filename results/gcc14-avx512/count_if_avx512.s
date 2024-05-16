	.file	"count_if.cpp"
	.text
	.p2align 4
	.globl	_Z13count_if_epi8RKSt6vectorIaSaIaEE
	.type	_Z13count_if_epi8RKSt6vectorIaSaIaEE, @function
_Z13count_if_epi8RKSt6vectorIaSaIaEE:
.LFB1535:
	.cfi_startproc
	movq	8(%rdi), %rsi
	movq	(%rdi), %rdi
	cmpq	%rsi, %rdi
	je	.L9
	movq	%rsi, %rdx
	movq	%rdi, %rax
	subq	%rdi, %rdx
	leaq	-1(%rdx), %rcx
	cmpq	$62, %rcx
	jbe	.L10
	movl	$42, %r9d
	movq	%rdx, %r8
	vpxor	%xmm7, %xmm7, %xmm7
	andq	$-64, %r8
	vpbroadcastd	%r9d, %zmm6
	movl	$1, %r9d
	leaq	(%rdi,%r8), %rcx
	vpxor	%xmm3, %xmm3, %xmm3
	vpternlogd	$0xFF, %zmm7, %zmm7, %zmm7
	vpbroadcastd	%r9d, %zmm5
	.p2align 4,,10
	.p2align 3
.L4:
	vmovdqu8	(%rax), %zmm0
	addq	$64, %rax
	vpmovsxbw	%ymm0, %zmm1
	vextracti64x4	$0x1, %zmm0, %ymm0
	vpmovsxwd	%ymm1, %zmm2
	vextracti64x4	$0x1, %zmm1, %ymm1
	vpmovsxbw	%ymm0, %zmm0
	vpmovsxwd	%ymm1, %zmm1
	vpmovsxwd	%ymm0, %zmm4
	vextracti64x4	$0x1, %zmm0, %ymm0
	vpcmpd	$0, %zmm7, %zmm1, %k0
	vpcmpd	$0, %zmm6, %zmm1, %k3
	vpmovsxwd	%ymm0, %zmm0
	vpcmpd	$0, %zmm6, %zmm4, %k2
	vpcmpd	$0, %zmm6, %zmm0, %k1
	vpcmpd	$0, %zmm6, %zmm2, %k4
	korw	%k0, %k3, %k3
	vpcmpd	$0, %zmm7, %zmm4, %k0
	vmovdqa32	%zmm5, %zmm1{%k3}{z}
	korw	%k0, %k2, %k2
	vpcmpd	$0, %zmm7, %zmm0, %k0
	vmovdqa32	%zmm5, %zmm0{%k2}{z}
	korw	%k0, %k1, %k1
	vpcmpd	$0, %zmm7, %zmm2, %k0
	vmovdqa32	%zmm5, %zmm4{%k1}{z}
	korw	%k0, %k4, %k4
	vmovdqa32	%zmm5, %zmm2{%k4}{z}
	vpmovzxdq	%ymm2, %zmm8
	vextracti32x8	$0x1, %zmm2, %ymm2
	vpaddq	%zmm3, %zmm8, %zmm3
	vpmovzxdq	%ymm2, %zmm2
	vpaddq	%zmm3, %zmm2, %zmm2
	vpmovzxdq	%ymm1, %zmm3
	vextracti32x8	$0x1, %zmm1, %ymm1
	vpaddq	%zmm2, %zmm3, %zmm2
	vpmovzxdq	%ymm1, %zmm1
	vpmovzxdq	%ymm4, %zmm3
	vpaddq	%zmm2, %zmm1, %zmm1
	vpmovzxdq	%ymm0, %zmm2
	vextracti32x8	$0x1, %zmm0, %ymm0
	vpaddq	%zmm1, %zmm2, %zmm1
	vpmovzxdq	%ymm0, %zmm0
	vextracti32x8	$0x1, %zmm4, %ymm4
	vpaddq	%zmm1, %zmm0, %zmm0
	vpmovzxdq	%ymm4, %zmm4
	vpaddq	%zmm0, %zmm3, %zmm3
	vpaddq	%zmm3, %zmm4, %zmm3
	cmpq	%rax, %rcx
	jne	.L4
	vextracti64x4	$0x1, %zmm3, %ymm0
	vpaddq	%ymm3, %ymm0, %ymm0
	vextracti64x2	$0x1, %ymm0, %xmm1
	vmovdqa	%ymm0, %ymm4
	vpaddq	%xmm0, %xmm1, %xmm1
	vpsrldq	$8, %xmm1, %xmm2
	vpaddq	%xmm2, %xmm1, %xmm1
	vmovq	%xmm1, %rax
	cmpq	%r8, %rdx
	je	.L16
.L3:
	subq	%r8, %rdx
	leaq	-1(%rdx), %r9
	cmpq	$30, %r9
	jbe	.L8
	vmovdqu8	(%rdi,%r8), %ymm0
	movl	$42, %eax
	vpcmpeqd	%ymm5, %ymm5, %ymm5
	movq	%rdx, %rdi
	vpbroadcastd	%eax, %ymm2
	movl	$1, %eax
	andq	$-32, %rdi
	vpmovsxbw	%xmm0, %ymm1
	vextracti32x4	$0x1, %ymm0, %xmm0
	addq	%rdi, %rcx
	andl	$31, %edx
	vpmovsxwd	%xmm1, %ymm3
	vextracti32x4	$0x1, %ymm1, %xmm1
	vpmovsxbw	%xmm0, %ymm0
	vpmovsxwd	%xmm1, %ymm1
	vpmovsxwd	%xmm0, %ymm6
	vextracti32x4	$0x1, %ymm0, %xmm0
	vpcmpd	$0, %ymm5, %ymm1, %k0
	vpcmpd	$0, %ymm2, %ymm1, %k3
	vpmovsxwd	%xmm0, %ymm0
	vpcmpd	$0, %ymm2, %ymm6, %k2
	vpcmpd	$0, %ymm2, %ymm0, %k1
	vpcmpd	$0, %ymm2, %ymm3, %k4
	korb	%k0, %k3, %k3
	vpcmpd	$0, %ymm5, %ymm6, %k0
	vpbroadcastd	%eax, %ymm2{%k3}{z}
	korb	%k0, %k2, %k2
	vpcmpd	$0, %ymm5, %ymm0, %k0
	vpbroadcastd	%eax, %ymm1{%k2}{z}
	korb	%k0, %k1, %k1
	vpcmpd	$0, %ymm5, %ymm3, %k0
	vpbroadcastd	%eax, %ymm0{%k1}{z}
	korb	%k0, %k4, %k4
	vpbroadcastd	%eax, %ymm3{%k4}{z}
	vpmovzxdq	%xmm3, %ymm5
	vextracti32x4	$0x1, %ymm3, %xmm3
	vpaddq	%ymm4, %ymm5, %ymm4
	vpmovzxdq	%xmm3, %ymm3
	vpaddq	%ymm4, %ymm3, %ymm3
	vpmovzxdq	%xmm2, %ymm4
	vextracti32x4	$0x1, %ymm2, %xmm2
	vpaddq	%ymm3, %ymm4, %ymm3
	vpmovzxdq	%xmm2, %ymm2
	vpaddq	%ymm3, %ymm2, %ymm2
	vpmovzxdq	%xmm1, %ymm3
	vextracti32x4	$0x1, %ymm1, %xmm1
	vpaddq	%ymm2, %ymm3, %ymm2
	vpmovzxdq	%xmm1, %ymm1
	vpaddq	%ymm2, %ymm1, %ymm1
	vpmovzxdq	%xmm0, %ymm2
	vextracti32x4	$0x1, %ymm0, %xmm0
	vpaddq	%ymm1, %ymm2, %ymm1
	vpmovzxdq	%xmm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vextracti64x2	$0x1, %ymm0, %xmm1
	vpaddq	%xmm0, %xmm1, %xmm0
	vpsrldq	$8, %xmm0, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %rax
	je	.L16
	.p2align 4,,10
	.p2align 3
.L8:
	movsbl	(%rcx), %edi
	cmpl	$42, %edi
	sete	%dl
	cmpl	$-1, %edi
	sete	%dil
	addq	$1, %rcx
	orl	%edi, %edx
	movzbl	%dl, %edx
	addq	%rdx, %rax
	cmpq	%rcx, %rsi
	jne	.L8
.L16:
	vzeroupper
	ret
	.p2align 4,,10
	.p2align 3
.L9:
	xorl	%eax, %eax
	ret
.L10:
	movq	%rdi, %rcx
	vpxor	%xmm4, %xmm4, %xmm4
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	jmp	.L3
	.cfi_endproc
.LFE1535:
	.size	_Z13count_if_epi8RKSt6vectorIaSaIaEE, .-_Z13count_if_epi8RKSt6vectorIaSaIaEE
	.p2align 4
	.globl	_Z14count_if_epi32RKSt6vectorIiSaIiEE
	.type	_Z14count_if_epi32RKSt6vectorIiSaIiEE, @function
_Z14count_if_epi32RKSt6vectorIiSaIiEE:
.LFB1539:
	.cfi_startproc
	movq	8(%rdi), %r8
	movq	(%rdi), %rsi
	cmpq	%r8, %rsi
	je	.L25
	leaq	-4(%r8), %rdx
	movq	%rsi, %rax
	subq	%rsi, %rdx
	movq	%rdx, %rdi
	shrq	$2, %rdi
	leaq	1(%rdi), %r9
	cmpq	$56, %rdx
	jbe	.L26
	movq	%r9, %rdx
	movl	$42, %ecx
	vpxor	%xmm5, %xmm5, %xmm5
	shrq	$4, %rdx
	vpbroadcastd	%ecx, %zmm4
	movl	$1, %ecx
	salq	$6, %rdx
	vpxor	%xmm1, %xmm1, %xmm1
	vpternlogd	$0xFF, %zmm5, %zmm5, %zmm5
	addq	%rsi, %rdx
	vpbroadcastd	%ecx, %zmm3
	.p2align 4,,10
	.p2align 3
.L21:
	vmovdqu32	(%rax), %zmm0
	addq	$64, %rax
	vpcmpd	$0, %zmm4, %zmm0, %k1
	vpcmpd	$0, %zmm5, %zmm0, %k0
	korw	%k0, %k1, %k1
	vmovdqa32	%zmm3, %zmm0{%k1}{z}
	vpmovzxdq	%ymm0, %zmm2
	vextracti32x8	$0x1, %zmm0, %ymm0
	vpaddq	%zmm1, %zmm2, %zmm1
	vpmovzxdq	%ymm0, %zmm0
	vpaddq	%zmm1, %zmm0, %zmm1
	cmpq	%rax, %rdx
	jne	.L21
	vextracti64x4	$0x1, %zmm1, %ymm0
	movq	%r9, %rcx
	vpaddq	%ymm1, %ymm0, %ymm0
	andq	$-16, %rcx
	andl	$15, %r9d
	vextracti64x2	$0x1, %ymm0, %xmm1
	leaq	(%rsi,%rcx,4), %rdx
	vpaddq	%xmm0, %xmm1, %xmm1
	vpsrldq	$8, %xmm1, %xmm2
	vpaddq	%xmm2, %xmm1, %xmm1
	vmovq	%xmm1, %rax
	vmovdqa	%ymm0, %ymm1
	je	.L40
.L20:
	subq	%rcx, %rdi
	leaq	1(%rdi), %r9
	cmpq	$6, %rdi
	jbe	.L23
	vmovdqu	(%rsi,%rcx,4), %ymm2
	movl	$42, %eax
	movq	%r9, %rcx
	vpbroadcastd	%eax, %ymm0
	movl	$1, %eax
	andq	$-8, %rcx
	andl	$7, %r9d
	vpcmpd	$0, %ymm0, %ymm2, %k1
	vpcmpeqd	%ymm0, %ymm0, %ymm0
	leaq	(%rdx,%rcx,4), %rdx
	vpcmpd	$0, %ymm0, %ymm2, %k0
	korb	%k0, %k1, %k1
	vpbroadcastd	%eax, %ymm0{%k1}{z}
	vpmovzxdq	%xmm0, %ymm2
	vextracti32x4	$0x1, %ymm0, %xmm0
	vpaddq	%ymm1, %ymm2, %ymm1
	vpmovzxdq	%xmm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	vextracti64x2	$0x1, %ymm0, %xmm1
	vpaddq	%xmm0, %xmm1, %xmm0
	vpsrldq	$8, %xmm0, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %rax
	je	.L40
.L23:
	movl	(%rdx), %esi
	cmpl	$42, %esi
	sete	%cl
	cmpl	$-1, %esi
	sete	%sil
	orl	%esi, %ecx
	movzbl	%cl, %ecx
	addq	%rcx, %rax
	leaq	4(%rdx), %rcx
	cmpq	%rcx, %r8
	je	.L40
	movl	4(%rdx), %esi
	cmpl	$42, %esi
	sete	%cl
	cmpl	$-1, %esi
	sete	%sil
	orl	%esi, %ecx
	movzbl	%cl, %ecx
	addq	%rcx, %rax
	leaq	8(%rdx), %rcx
	cmpq	%rcx, %r8
	je	.L40
	movl	8(%rdx), %esi
	cmpl	$42, %esi
	sete	%cl
	cmpl	$-1, %esi
	sete	%sil
	orl	%esi, %ecx
	movzbl	%cl, %ecx
	addq	%rcx, %rax
	leaq	12(%rdx), %rcx
	cmpq	%rcx, %r8
	je	.L40
	movl	12(%rdx), %esi
	cmpl	$42, %esi
	sete	%cl
	cmpl	$-1, %esi
	sete	%sil
	orl	%esi, %ecx
	movzbl	%cl, %ecx
	addq	%rcx, %rax
	leaq	16(%rdx), %rcx
	cmpq	%rcx, %r8
	je	.L40
	movl	16(%rdx), %esi
	cmpl	$42, %esi
	sete	%cl
	cmpl	$-1, %esi
	sete	%sil
	orl	%esi, %ecx
	movzbl	%cl, %ecx
	addq	%rcx, %rax
	leaq	20(%rdx), %rcx
	cmpq	%rcx, %r8
	je	.L40
	movl	20(%rdx), %esi
	cmpl	$42, %esi
	sete	%cl
	cmpl	$-1, %esi
	sete	%sil
	orl	%esi, %ecx
	movzbl	%cl, %ecx
	addq	%rcx, %rax
	leaq	24(%rdx), %rcx
	cmpq	%rcx, %r8
	je	.L40
	movl	24(%rdx), %ecx
	cmpl	$42, %ecx
	sete	%dl
	cmpl	$-1, %ecx
	sete	%cl
	orl	%ecx, %edx
	movzbl	%dl, %edx
	addq	%rdx, %rax
	vzeroupper
	ret
	.p2align 4,,10
	.p2align 3
.L40:
	vzeroupper
	ret
	.p2align 4,,10
	.p2align 3
.L25:
	xorl	%eax, %eax
	ret
.L26:
	movq	%rsi, %rdx
	vpxor	%xmm1, %xmm1, %xmm1
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	jmp	.L20
	.cfi_endproc
.LFE1539:
	.size	_Z14count_if_epi32RKSt6vectorIiSaIiEE, .-_Z14count_if_epi32RKSt6vectorIiSaIiEE
	.ident	"GCC: (GNU) 14.1.0"
	.section	.note.GNU-stack,"",@progbits
