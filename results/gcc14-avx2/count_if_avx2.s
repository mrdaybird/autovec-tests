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
	je	.L8
	movq	%rsi, %rcx
	movq	%rdi, %rax
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rdx
	cmpq	$30, %rdx
	jbe	.L9
	movl	$42, %r9d
	vpxor	%xmm6, %xmm6, %xmm6
	vpcmpeqd	%ymm5, %ymm5, %ymm5
	movq	%rcx, %r8
	vmovd	%r9d, %xmm4
	movl	$1, %r9d
	andq	$-32, %r8
	vmovd	%r9d, %xmm3
	leaq	(%rdi,%r8), %rdx
	vpbroadcastd	%xmm4, %ymm4
	vpbroadcastd	%xmm3, %ymm3
	.p2align 4,,10
	.p2align 3
.L4:
	vmovdqu	(%rax), %ymm0
	addq	$32, %rax
	vpmovsxbw	%xmm0, %ymm2
	vextracti128	$0x1, %ymm0, %xmm0
	vpmovsxwd	%xmm2, %ymm8
	vextracti128	$0x1, %ymm2, %xmm2
	vpmovsxbw	%xmm0, %ymm0
	vpmovsxwd	%xmm2, %ymm2
	vpmovsxwd	%xmm0, %ymm7
	vextracti128	$0x1, %ymm0, %xmm0
	vpcmpeqd	%ymm4, %ymm2, %ymm1
	vpcmpeqd	%ymm5, %ymm2, %ymm2
	vpmovsxwd	%xmm0, %ymm0
	vpcmpeqd	%ymm4, %ymm7, %ymm9
	vpcmpeqd	%ymm5, %ymm7, %ymm7
	vpor	%ymm2, %ymm1, %ymm1
	vpcmpeqd	%ymm4, %ymm8, %ymm2
	vpcmpeqd	%ymm5, %ymm8, %ymm8
	vpor	%ymm7, %ymm9, %ymm9
	vpand	%ymm3, %ymm1, %ymm1
	vpcmpeqd	%ymm4, %ymm0, %ymm7
	vpcmpeqd	%ymm5, %ymm0, %ymm0
	vpor	%ymm8, %ymm2, %ymm2
	vpand	%ymm3, %ymm2, %ymm2
	vpor	%ymm0, %ymm7, %ymm7
	vpand	%ymm3, %ymm9, %ymm0
	vpmovzxdq	%xmm2, %ymm8
	vextracti128	$0x1, %ymm2, %xmm2
	vpand	%ymm3, %ymm7, %ymm7
	vpaddq	%ymm6, %ymm8, %ymm6
	vpmovzxdq	%xmm2, %ymm2
	vpaddq	%ymm6, %ymm2, %ymm2
	vpmovzxdq	%xmm1, %ymm6
	vextracti128	$0x1, %ymm1, %xmm1
	vpaddq	%ymm2, %ymm6, %ymm2
	vpmovzxdq	%xmm1, %ymm1
	vpmovzxdq	%xmm7, %ymm6
	vpaddq	%ymm2, %ymm1, %ymm1
	vpmovzxdq	%xmm0, %ymm2
	vextracti128	$0x1, %ymm0, %xmm0
	vpaddq	%ymm1, %ymm2, %ymm1
	vpmovzxdq	%xmm0, %ymm0
	vextracti128	$0x1, %ymm7, %xmm7
	vpaddq	%ymm1, %ymm0, %ymm0
	vpmovzxdq	%xmm7, %ymm7
	vpaddq	%ymm0, %ymm6, %ymm6
	vpaddq	%ymm6, %ymm7, %ymm6
	cmpq	%rax, %rdx
	jne	.L4
	vextracti128	$0x1, %ymm6, %xmm4
	vpaddq	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm4, %xmm0
	vpaddq	%xmm0, %xmm4, %xmm0
	vmovq	%xmm0, %rax
	cmpq	%r8, %rcx
	je	.L16
	vzeroupper
.L3:
	subq	%r8, %rcx
	leaq	-1(%rcx), %r9
	cmpq	$14, %r9
	jbe	.L6
	vmovdqu	(%rdi,%r8), %xmm1
	movl	$42, %eax
	vpcmpeqd	%xmm6, %xmm6, %xmm6
	movq	%rcx, %rdi
	vmovd	%eax, %xmm0
	movl	$1, %eax
	andq	$-16, %rdi
	vpmovsxbw	%xmm1, %xmm2
	vpbroadcastd	%xmm0, %xmm0
	addq	%rdi, %rdx
	andl	$15, %ecx
	vpmovsxwd	%xmm2, %xmm5
	vpsrldq	$8, %xmm2, %xmm2
	vpmovsxwd	%xmm2, %xmm2
	vpsrldq	$8, %xmm1, %xmm1
	vpcmpeqd	%xmm0, %xmm2, %xmm3
	vpcmpeqd	%xmm6, %xmm2, %xmm2
	vpmovsxbw	%xmm1, %xmm1
	vpmovsxwd	%xmm1, %xmm7
	vpsrldq	$8, %xmm1, %xmm1
	vpmovsxwd	%xmm1, %xmm1
	vpor	%xmm2, %xmm3, %xmm3
	vpcmpeqd	%xmm0, %xmm7, %xmm2
	vpcmpeqd	%xmm6, %xmm7, %xmm7
	vpor	%xmm7, %xmm2, %xmm7
	vpcmpeqd	%xmm0, %xmm1, %xmm2
	vpcmpeqd	%xmm0, %xmm5, %xmm0
	vpcmpeqd	%xmm6, %xmm5, %xmm5
	vpcmpeqd	%xmm6, %xmm1, %xmm1
	vpor	%xmm5, %xmm0, %xmm0
	vmovd	%eax, %xmm5
	vpbroadcastd	%xmm5, %xmm5
	vpor	%xmm1, %xmm2, %xmm2
	vpand	%xmm5, %xmm0, %xmm0
	vpand	%xmm5, %xmm3, %xmm3
	vpand	%xmm5, %xmm7, %xmm1
	vpand	%xmm5, %xmm2, %xmm2
	vpmovzxdq	%xmm0, %xmm5
	vpsrldq	$8, %xmm0, %xmm0
	vpaddq	%xmm4, %xmm5, %xmm4
	vpmovzxdq	%xmm0, %xmm0
	vpaddq	%xmm4, %xmm0, %xmm0
	vpmovzxdq	%xmm3, %xmm4
	vpsrldq	$8, %xmm3, %xmm3
	vpaddq	%xmm0, %xmm4, %xmm0
	vpmovzxdq	%xmm3, %xmm3
	vpaddq	%xmm0, %xmm3, %xmm3
	vpmovzxdq	%xmm1, %xmm0
	vpsrldq	$8, %xmm1, %xmm1
	vpaddq	%xmm3, %xmm0, %xmm0
	vpmovzxdq	%xmm1, %xmm1
	vpaddq	%xmm0, %xmm1, %xmm1
	vpmovzxdq	%xmm2, %xmm0
	vpaddq	%xmm1, %xmm0, %xmm1
	vpsrldq	$8, %xmm2, %xmm0
	vpmovzxdq	%xmm0, %xmm0
	vpaddq	%xmm1, %xmm0, %xmm0
	vpsrldq	$8, %xmm0, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %rax
	je	.L1
.L6:
	movsbl	(%rdx), %edi
	cmpl	$42, %edi
	sete	%cl
	cmpl	$-1, %edi
	sete	%dil
	orl	%edi, %ecx
	movzbl	%cl, %ecx
	addq	%rcx, %rax
	leaq	1(%rdx), %rcx
	cmpq	%rcx, %rsi
	je	.L1
	movsbl	1(%rdx), %edi
	cmpl	$-1, %edi
	sete	%cl
	cmpl	$42, %edi
	sete	%dil
	orl	%edi, %ecx
	movzbl	%cl, %ecx
	addq	%rcx, %rax
	leaq	2(%rdx), %rcx
	cmpq	%rcx, %rsi
	je	.L1
	movsbl	2(%rdx), %edi
	cmpl	$42, %edi
	sete	%cl
	cmpl	$-1, %edi
	sete	%dil
	orl	%edi, %ecx
	movzbl	%cl, %ecx
	addq	%rcx, %rax
	leaq	3(%rdx), %rcx
	cmpq	%rcx, %rsi
	je	.L1
	movsbl	3(%rdx), %edi
	cmpl	$42, %edi
	sete	%cl
	cmpl	$-1, %edi
	sete	%dil
	orl	%edi, %ecx
	movzbl	%cl, %ecx
	addq	%rcx, %rax
	leaq	4(%rdx), %rcx
	cmpq	%rcx, %rsi
	je	.L1
	movsbl	4(%rdx), %edi
	cmpl	$42, %edi
	sete	%cl
	cmpl	$-1, %edi
	sete	%dil
	orl	%edi, %ecx
	movzbl	%cl, %ecx
	addq	%rcx, %rax
	leaq	5(%rdx), %rcx
	cmpq	%rcx, %rsi
	je	.L1
	movsbl	5(%rdx), %edi
	cmpl	$42, %edi
	sete	%cl
	cmpl	$-1, %edi
	sete	%dil
	orl	%edi, %ecx
	movzbl	%cl, %ecx
	addq	%rcx, %rax
	leaq	6(%rdx), %rcx
	cmpq	%rcx, %rsi
	je	.L1
	movsbl	6(%rdx), %edi
	cmpl	$42, %edi
	sete	%cl
	cmpl	$-1, %edi
	sete	%dil
	orl	%edi, %ecx
	movzbl	%cl, %ecx
	addq	%rcx, %rax
	leaq	7(%rdx), %rcx
	cmpq	%rcx, %rsi
	je	.L1
	movsbl	7(%rdx), %edi
	cmpl	$42, %edi
	sete	%cl
	cmpl	$-1, %edi
	sete	%dil
	orl	%edi, %ecx
	movzbl	%cl, %ecx
	addq	%rcx, %rax
	leaq	8(%rdx), %rcx
	cmpq	%rcx, %rsi
	je	.L1
	movsbl	8(%rdx), %edi
	cmpl	$42, %edi
	sete	%cl
	cmpl	$-1, %edi
	sete	%dil
	orl	%edi, %ecx
	movzbl	%cl, %ecx
	addq	%rcx, %rax
	leaq	9(%rdx), %rcx
	cmpq	%rcx, %rsi
	je	.L1
	movsbl	9(%rdx), %edi
	cmpl	$42, %edi
	sete	%cl
	cmpl	$-1, %edi
	sete	%dil
	orl	%edi, %ecx
	movzbl	%cl, %ecx
	addq	%rcx, %rax
	leaq	10(%rdx), %rcx
	cmpq	%rcx, %rsi
	je	.L1
	movsbl	10(%rdx), %edi
	cmpl	$42, %edi
	sete	%cl
	cmpl	$-1, %edi
	sete	%dil
	orl	%edi, %ecx
	movzbl	%cl, %ecx
	addq	%rcx, %rax
	leaq	11(%rdx), %rcx
	cmpq	%rcx, %rsi
	je	.L1
	movsbl	11(%rdx), %edi
	cmpl	$42, %edi
	sete	%cl
	cmpl	$-1, %edi
	sete	%dil
	orl	%edi, %ecx
	movzbl	%cl, %ecx
	addq	%rcx, %rax
	leaq	12(%rdx), %rcx
	cmpq	%rcx, %rsi
	je	.L1
	movsbl	12(%rdx), %edi
	cmpl	$42, %edi
	sete	%cl
	cmpl	$-1, %edi
	sete	%dil
	orl	%edi, %ecx
	movzbl	%cl, %ecx
	addq	%rcx, %rax
	leaq	13(%rdx), %rcx
	cmpq	%rcx, %rsi
	je	.L1
	movsbl	13(%rdx), %edi
	cmpl	$42, %edi
	sete	%cl
	cmpl	$-1, %edi
	sete	%dil
	orl	%edi, %ecx
	movzbl	%cl, %ecx
	addq	%rcx, %rax
	leaq	14(%rdx), %rcx
	cmpq	%rcx, %rsi
	je	.L1
	movsbl	14(%rdx), %ecx
	cmpl	$42, %ecx
	sete	%dl
	cmpl	$-1, %ecx
	sete	%cl
	orl	%ecx, %edx
	movzbl	%dl, %edx
	addq	%rdx, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	xorl	%eax, %eax
.L1:
	ret
.L9:
	movq	%rdi, %rdx
	vpxor	%xmm4, %xmm4, %xmm4
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	jmp	.L3
.L16:
	vzeroupper
	ret
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
	movq	(%rdi), %r9
	cmpq	%r8, %r9
	je	.L24
	leaq	-4(%r8), %rdx
	movq	%r9, %rax
	subq	%r9, %rdx
	movq	%rdx, %rsi
	shrq	$2, %rsi
	leaq	1(%rsi), %rdi
	cmpq	$24, %rdx
	jbe	.L25
	movl	$42, %ecx
	vpxor	%xmm2, %xmm2, %xmm2
	vpcmpeqd	%ymm5, %ymm5, %ymm5
	movq	%rdi, %rdx
	vmovd	%ecx, %xmm4
	shrq	$3, %rdx
	movl	$1, %ecx
	salq	$5, %rdx
	vmovd	%ecx, %xmm3
	vpbroadcastd	%xmm4, %ymm4
	addq	%r9, %rdx
	vpbroadcastd	%xmm3, %ymm3
	.p2align 4,,10
	.p2align 3
.L20:
	vmovdqu	(%rax), %ymm1
	addq	$32, %rax
	vpcmpeqd	%ymm4, %ymm1, %ymm0
	vpcmpeqd	%ymm5, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpand	%ymm3, %ymm0, %ymm0
	vpmovzxdq	%xmm0, %ymm1
	vextracti128	$0x1, %ymm0, %xmm0
	vpaddq	%ymm2, %ymm1, %ymm2
	vpmovzxdq	%xmm0, %ymm0
	vpaddq	%ymm2, %ymm0, %ymm2
	cmpq	%rax, %rdx
	jne	.L20
	vextracti128	$0x1, %ymm2, %xmm0
	movq	%rdi, %rdx
	vpaddq	%xmm2, %xmm0, %xmm0
	andq	$-8, %rdx
	andl	$7, %edi
	vpsrldq	$8, %xmm0, %xmm1
	leaq	(%r9,%rdx,4), %rcx
	vpaddq	%xmm1, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovdqa	%xmm0, %xmm1
	je	.L34
	vzeroupper
.L19:
	subq	%rdx, %rsi
	leaq	1(%rsi), %rdi
	cmpq	$2, %rsi
	jbe	.L22
	movl	$42, %eax
	vmovdqu	(%r9,%rdx,4), %xmm2
	vpcmpeqd	%xmm3, %xmm3, %xmm3
	movq	%rdi, %rdx
	vmovd	%eax, %xmm0
	movl	$1, %eax
	andq	$-4, %rdx
	andl	$3, %edi
	vpbroadcastd	%xmm0, %xmm0
	leaq	(%rcx,%rdx,4), %rcx
	vpcmpeqd	%xmm0, %xmm2, %xmm0
	vpcmpeqd	%xmm3, %xmm2, %xmm2
	vpor	%xmm2, %xmm0, %xmm0
	vmovd	%eax, %xmm2
	vpbroadcastd	%xmm2, %xmm2
	vpand	%xmm2, %xmm0, %xmm0
	vpmovzxdq	%xmm0, %xmm2
	vpsrldq	$8, %xmm0, %xmm0
	vpaddq	%xmm1, %xmm2, %xmm1
	vpmovzxdq	%xmm0, %xmm0
	vpaddq	%xmm1, %xmm0, %xmm0
	vpsrldq	$8, %xmm0, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %rax
	je	.L17
.L22:
	movl	(%rcx), %esi
	cmpl	$42, %esi
	sete	%dl
	cmpl	$-1, %esi
	sete	%sil
	orl	%esi, %edx
	movzbl	%dl, %edx
	addq	%rdx, %rax
	leaq	4(%rcx), %rdx
	cmpq	%rdx, %r8
	je	.L17
	movl	4(%rcx), %esi
	cmpl	$42, %esi
	sete	%dl
	cmpl	$-1, %esi
	sete	%sil
	orl	%esi, %edx
	movzbl	%dl, %edx
	addq	%rdx, %rax
	leaq	8(%rcx), %rdx
	cmpq	%rdx, %r8
	je	.L17
	movl	8(%rcx), %ecx
	cmpl	$42, %ecx
	sete	%dl
	cmpl	$-1, %ecx
	sete	%cl
	orl	%ecx, %edx
	movzbl	%dl, %edx
	addq	%rdx, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L24:
	xorl	%eax, %eax
.L17:
	ret
	.p2align 4,,10
	.p2align 3
.L34:
	vzeroupper
	ret
.L25:
	movq	%r9, %rcx
	vpxor	%xmm1, %xmm1, %xmm1
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.L19
	.cfi_endproc
.LFE1539:
	.size	_Z14count_if_epi32RKSt6vectorIiSaIiEE, .-_Z14count_if_epi32RKSt6vectorIiSaIiEE
	.ident	"GCC: (GNU) 14.1.0"
	.section	.note.GNU-stack,"",@progbits
