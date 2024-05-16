	.file	"count.cpp"
	.text
	.p2align 4
	.globl	_Z10count_epi8RKSt6vectorIaSaIaEE
	.type	_Z10count_epi8RKSt6vectorIaSaIaEE, @function
_Z10count_epi8RKSt6vectorIaSaIaEE:
.LFB1535:
	.cfi_startproc
	movq	8(%rdi), %rsi
	movq	(%rdi), %rdx
	cmpq	%rsi, %rdx
	je	.L9
	leaq	-1(%rsi), %rax
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	subq	%rdx, %rax
	subq	%rdx, %rdi
	cmpq	$62, %rax
	jbe	.L10
	movl	$42, %eax
	movq	%rdi, %r8
	vpxor	%xmm1, %xmm1, %xmm1
	andq	$-64, %r8
	vpbroadcastb	%eax, %zmm3
	movl	$1, %eax
	leaq	(%r8,%rdx), %rdx
	vpbroadcastq	%rax, %zmm0
	.p2align 4,,10
	.p2align 3
.L4:
	vpcmpb	$0, (%rcx), %zmm3, %k1
	vmovdqa64	%zmm1, %zmm2
	addq	$64, %rcx
	vpaddq	%zmm0, %zmm1, %zmm2{%k1}
	kshiftrq	$32, %k1, %k2
	kshiftrd	$16, %k1, %k4
	kshiftrw	$8, %k1, %k1
	vmovdqa64	%zmm2, %zmm1
	kshiftrd	$16, %k2, %k3
	vpaddq	%zmm0, %zmm2, %zmm1{%k1}
	vmovdqa64	%zmm1, %zmm2
	vpaddq	%zmm0, %zmm1, %zmm2{%k4}
	kshiftrw	$8, %k4, %k4
	vmovdqa64	%zmm2, %zmm1
	vpaddq	%zmm0, %zmm2, %zmm1{%k4}
	vmovdqa64	%zmm1, %zmm2
	vpaddq	%zmm0, %zmm1, %zmm2{%k2}
	kshiftrw	$8, %k2, %k2
	vmovdqa64	%zmm2, %zmm1
	vpaddq	%zmm0, %zmm2, %zmm1{%k2}
	vmovdqa64	%zmm1, %zmm2
	vpaddq	%zmm0, %zmm1, %zmm2{%k3}
	kshiftrw	$8, %k3, %k3
	vmovdqa64	%zmm2, %zmm1
	vpaddq	%zmm0, %zmm2, %zmm1{%k3}
	cmpq	%rcx, %rdx
	jne	.L4
	vextracti64x4	$0x1, %zmm1, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm1
	vextracti64x2	$0x1, %ymm1, %xmm0
	vpaddq	%xmm1, %xmm0, %xmm0
	vpsrldq	$8, %xmm0, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %rax
	cmpq	%rdi, %r8
	je	.L15
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L7:
	xorl	%ecx, %ecx
	cmpb	$42, (%rdx)
	sete	%cl
	addq	$1, %rdx
	addq	%rcx, %rax
	cmpq	%rsi, %rdx
	jne	.L7
	ret
	.p2align 4,,10
	.p2align 3
.L9:
	xorl	%eax, %eax
	ret
.L10:
	xorl	%eax, %eax
	jmp	.L7
.L15:
	vzeroupper
	ret
	.cfi_endproc
.LFE1535:
	.size	_Z10count_epi8RKSt6vectorIaSaIaEE, .-_Z10count_epi8RKSt6vectorIaSaIaEE
	.p2align 4
	.globl	_Z11count_epi32RKSt6vectorIiSaIiEE
	.type	_Z11count_epi32RKSt6vectorIiSaIiEE, @function
_Z11count_epi32RKSt6vectorIiSaIiEE:
.LFB1536:
	.cfi_startproc
	movq	8(%rdi), %r8
	movq	(%rdi), %rsi
	cmpq	%r8, %rsi
	je	.L35
	movq	%r8, %rdx
	movq	%rsi, %rcx
	subq	%rsi, %rdx
	leaq	-4(%rdx), %rax
	cmpq	$24, %rax
	jbe	.L37
	andl	$3, %edx
	jne	.L37
	movq	%rax, %rdi
	shrq	$2, %rdi
	leaq	1(%rdi), %r9
	cmpq	$56, %rax
	jbe	.L38
	movl	$42, %eax
	movq	%r9, %rcx
	vpxor	%xmm0, %xmm0, %xmm0
	vpbroadcastd	%eax, %zmm3
	movl	$1, %eax
	shrq	$4, %rcx
	vpbroadcastq	%rax, %zmm2
	.p2align 4,,10
	.p2align 3
.L20:
	movq	%rdx, %rax
	vmovdqa64	%zmm0, %zmm1
	addq	$1, %rdx
	salq	$6, %rax
	vpcmpeqd	(%rsi,%rax), %zmm3, %k1
	vpaddq	%zmm2, %zmm0, %zmm1{%k1}
	kshiftrw	$8, %k1, %k1
	vmovdqa64	%zmm1, %zmm0
	vpaddq	%zmm2, %zmm1, %zmm0{%k1}
	cmpq	%rdx, %rcx
	jne	.L20
	vextracti64x4	$0x1, %zmm0, %ymm1
	movq	%r9, %rdx
	vpaddq	%ymm0, %ymm1, %ymm0
	andq	$-16, %rdx
	andl	$15, %r9d
	vextracti64x2	$0x1, %ymm0, %xmm1
	leaq	(%rsi,%rdx,4), %rcx
	vpaddq	%xmm0, %xmm1, %xmm1
	vpsrldq	$8, %xmm1, %xmm2
	vpaddq	%xmm2, %xmm1, %xmm1
	vmovq	%xmm1, %rax
	je	.L54
.L19:
	subq	%rdx, %rdi
	leaq	1(%rdi), %r9
	cmpq	$6, %rdi
	jbe	.L22
	movl	$42, %eax
	vmovdqa	%ymm0, %ymm3
	vpbroadcastd	%eax, %ymm1
	vpcmpeqd	(%rsi,%rdx,4), %ymm1, %k0
	movq	%r9, %rdx
	andq	$-8, %rdx
	leaq	(%rcx,%rdx,4), %rcx
	kmovb	%k0, %eax
	andl	$15, %eax
	andl	$7, %r9d
	kmovb	%eax, %k1
	movl	$1, %eax
	vpbroadcastq	%rax, %ymm2
	vpaddq	%ymm2, %ymm0, %ymm3{%k1}
	kshiftrb	$4, %k0, %k1
	vpaddq	%ymm2, %ymm3, %ymm3{%k1}
	vextracti64x2	$0x1, %ymm3, %xmm0
	vpaddq	%xmm3, %xmm0, %xmm0
	vpsrldq	$8, %xmm0, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %rax
	je	.L54
.L22:
	xorl	%edx, %edx
	cmpl	$42, (%rcx)
	sete	%dl
	addq	%rdx, %rax
	leaq	4(%rcx), %rdx
	cmpq	%rdx, %r8
	je	.L54
	cmpl	$42, 4(%rcx)
	je	.L55
	leaq	8(%rcx), %rdx
	cmpq	%rdx, %r8
	je	.L54
.L57:
	cmpl	$42, 8(%rcx)
	jne	.L26
	addq	$1, %rax
.L26:
	leaq	12(%rcx), %rdx
	cmpq	%rdx, %r8
	je	.L54
	cmpl	$42, 12(%rcx)
	jne	.L27
	addq	$1, %rax
.L27:
	leaq	16(%rcx), %rdx
	cmpq	%rdx, %r8
	je	.L54
	cmpl	$42, 16(%rcx)
	jne	.L28
	addq	$1, %rax
.L28:
	leaq	20(%rcx), %rdx
	cmpq	%rdx, %r8
	je	.L54
	cmpl	$42, 20(%rcx)
	jne	.L29
	addq	$1, %rax
.L29:
	leaq	24(%rcx), %rdx
	cmpq	%rdx, %r8
	je	.L54
	cmpl	$42, 24(%rcx)
	je	.L56
.L54:
	vzeroupper
	ret
	.p2align 4,,10
	.p2align 3
.L55:
	leaq	8(%rcx), %rdx
	addq	$1, %rax
	cmpq	%rdx, %r8
	jne	.L57
	jmp	.L54
	.p2align 4,,10
	.p2align 3
.L56:
	addq	$1, %rax
	vzeroupper
	ret
	.p2align 4,,10
	.p2align 3
.L37:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L33:
	xorl	%edx, %edx
	cmpl	$42, (%rcx)
	sete	%dl
	addq	$4, %rcx
	addq	%rdx, %rax
	cmpq	%rcx, %r8
	jne	.L33
	ret
	.p2align 4,,10
	.p2align 3
.L35:
	xorl	%eax, %eax
	ret
.L38:
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	jmp	.L19
	.cfi_endproc
.LFE1536:
	.size	_Z11count_epi32RKSt6vectorIiSaIiEE, .-_Z11count_epi32RKSt6vectorIiSaIiEE
	.ident	"GCC: (GNU) 14.1.0"
	.section	.note.GNU-stack,"",@progbits
