	.file	"count.cpp"
	.text
	.p2align 4
	.globl	_Z10count_epi8RKSt6vectorIaSaIaEE
	.type	_Z10count_epi8RKSt6vectorIaSaIaEE, @function
_Z10count_epi8RKSt6vectorIaSaIaEE:
.LFB1535:
	.cfi_startproc
	movq	8(%rdi), %r8
	movq	(%rdi), %rsi
	cmpq	%r8, %rsi
	je	.L24
	movq	%r8, %rcx
	movq	%rsi, %rax
	subq	%rsi, %rcx
	leaq	-1(%rcx), %rdx
	cmpq	$30, %rdx
	jbe	.L25
	movq	%rcx, %rdi
	movl	$707406378, %r9d
	vpxor	%xmm6, %xmm6, %xmm6
	andq	$-32, %rdi
	vmovd	%r9d, %xmm3
	leaq	(%rsi,%rdi), %rdx
	vpbroadcastd	%xmm3, %ymm3
	.p2align 4,,10
	.p2align 3
.L4:
	vpcmpeqb	(%rax), %ymm3, %ymm1
	addq	$32, %rax
	vpmovsxbw	%xmm1, %ymm2
	vextracti128	$0x1, %ymm1, %xmm1
	vpmovsxwd	%xmm2, %ymm5
	vextracti128	$0x1, %ymm2, %xmm2
	vpmovsxbw	%xmm1, %ymm1
	vpmovsxdq	%xmm5, %ymm0
	vextracti128	$0x1, %ymm5, %xmm5
	vpmovsxwd	%xmm2, %ymm2
	vpsubq	%ymm0, %ymm6, %ymm0
	vpmovsxdq	%xmm5, %ymm5
	vpmovsxwd	%xmm1, %ymm4
	vpsubq	%ymm5, %ymm0, %ymm0
	vpmovsxdq	%xmm2, %ymm5
	vextracti128	$0x1, %ymm2, %xmm2
	vpmovsxdq	%xmm2, %ymm2
	vpsubq	%ymm5, %ymm0, %ymm0
	vextracti128	$0x1, %ymm1, %xmm1
	vpsubq	%ymm2, %ymm0, %ymm0
	vpmovsxdq	%xmm4, %ymm2
	vextracti128	$0x1, %ymm4, %xmm4
	vpmovsxwd	%xmm1, %ymm1
	vpsubq	%ymm2, %ymm0, %ymm0
	vpmovsxdq	%xmm4, %ymm4
	vpmovsxdq	%xmm1, %ymm2
	vpsubq	%ymm4, %ymm0, %ymm0
	vextracti128	$0x1, %ymm1, %xmm1
	vpsubq	%ymm2, %ymm0, %ymm0
	vpmovsxdq	%xmm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm6
	cmpq	%rax, %rdx
	jne	.L4
	vextracti128	$0x1, %ymm6, %xmm0
	vpaddq	%xmm6, %xmm0, %xmm0
	vpsrldq	$8, %xmm0, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	cmpq	%rdi, %rcx
	je	.L32
	vzeroupper
.L3:
	subq	%rdi, %rcx
	leaq	-1(%rcx), %r9
	cmpq	$14, %r9
	jbe	.L6
	movl	$707406378, %eax
	vmovd	%eax, %xmm1
	vpbroadcastd	%xmm1, %xmm1
	vpcmpeqb	(%rsi,%rdi), %xmm1, %xmm1
	movq	%rcx, %rsi
	andq	$-16, %rsi
	addq	%rsi, %rdx
	andl	$15, %ecx
	vpmovsxbw	%xmm1, %xmm2
	vpsrldq	$8, %xmm1, %xmm1
	vpmovsxwd	%xmm2, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpmovsxbw	%xmm1, %xmm1
	vpmovsxdq	%xmm3, %xmm5
	vpsrldq	$8, %xmm3, %xmm3
	vpmovsxwd	%xmm2, %xmm2
	vpmovsxdq	%xmm3, %xmm3
	vpsubq	%xmm5, %xmm0, %xmm0
	vpmovsxwd	%xmm1, %xmm4
	vpsubq	%xmm3, %xmm0, %xmm0
	vpsrldq	$8, %xmm1, %xmm1
	vpmovsxdq	%xmm2, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpsubq	%xmm3, %xmm0, %xmm0
	vpmovsxwd	%xmm1, %xmm1
	vpmovsxdq	%xmm2, %xmm2
	vpsubq	%xmm2, %xmm0, %xmm0
	vpmovsxdq	%xmm4, %xmm2
	vpsubq	%xmm2, %xmm0, %xmm0
	vpsrldq	$8, %xmm4, %xmm2
	vpmovsxdq	%xmm2, %xmm2
	vpsubq	%xmm2, %xmm0, %xmm0
	vpmovsxdq	%xmm1, %xmm2
	vpsrldq	$8, %xmm1, %xmm1
	vpsubq	%xmm2, %xmm0, %xmm0
	vpmovsxdq	%xmm1, %xmm1
	vpsubq	%xmm1, %xmm0, %xmm0
	vpsrldq	$8, %xmm0, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %rax
	je	.L1
.L6:
	xorl	%ecx, %ecx
	cmpb	$42, (%rdx)
	sete	%cl
	addq	%rcx, %rax
	leaq	1(%rdx), %rcx
	cmpq	%rcx, %r8
	je	.L1
	cmpb	$42, 1(%rdx)
	je	.L33
.L9:
	leaq	2(%rdx), %rcx
	cmpq	%rcx, %r8
	je	.L1
	cmpb	$42, 2(%rdx)
	je	.L34
.L10:
	leaq	3(%rdx), %rcx
	cmpq	%rcx, %r8
	je	.L1
	cmpb	$42, 3(%rdx)
	je	.L35
.L11:
	leaq	4(%rdx), %rcx
	cmpq	%rcx, %r8
	je	.L1
	cmpb	$42, 4(%rdx)
	je	.L36
	leaq	5(%rdx), %rcx
	cmpq	%rcx, %r8
	je	.L1
.L41:
	cmpb	$42, 5(%rdx)
	jne	.L13
	addq	$1, %rax
.L13:
	leaq	6(%rdx), %rcx
	cmpq	%rcx, %r8
	je	.L1
	cmpb	$42, 6(%rdx)
	jne	.L14
	addq	$1, %rax
.L14:
	leaq	7(%rdx), %rcx
	cmpq	%rcx, %r8
	je	.L1
	cmpb	$42, 7(%rdx)
	jne	.L15
	addq	$1, %rax
.L15:
	leaq	8(%rdx), %rcx
	cmpq	%rcx, %r8
	je	.L1
	cmpb	$42, 8(%rdx)
	jne	.L16
	addq	$1, %rax
.L16:
	leaq	9(%rdx), %rcx
	cmpq	%rcx, %r8
	je	.L1
	cmpb	$42, 9(%rdx)
	je	.L37
.L17:
	leaq	10(%rdx), %rcx
	cmpq	%rcx, %r8
	je	.L1
	cmpb	$42, 10(%rdx)
	je	.L38
.L18:
	leaq	11(%rdx), %rcx
	cmpq	%rcx, %r8
	je	.L1
	cmpb	$42, 11(%rdx)
	je	.L39
.L19:
	leaq	12(%rdx), %rcx
	cmpq	%rcx, %r8
	je	.L1
	cmpb	$42, 12(%rdx)
	je	.L40
.L20:
	leaq	13(%rdx), %rcx
	cmpq	%rcx, %r8
	je	.L1
	cmpb	$42, 13(%rdx)
	jne	.L21
	addq	$1, %rax
.L21:
	leaq	14(%rdx), %rcx
	cmpq	%rcx, %r8
	je	.L1
	cmpb	$42, 14(%rdx)
	jne	.L1
	addq	$1, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L24:
	xorl	%eax, %eax
.L1:
	ret
	.p2align 4,,10
	.p2align 3
.L33:
	addq	$1, %rax
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L34:
	addq	$1, %rax
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L35:
	addq	$1, %rax
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L36:
	leaq	5(%rdx), %rcx
	addq	$1, %rax
	cmpq	%rcx, %r8
	jne	.L41
	ret
	.p2align 4,,10
	.p2align 3
.L37:
	addq	$1, %rax
	jmp	.L17
.L38:
	addq	$1, %rax
	jmp	.L18
.L39:
	addq	$1, %rax
	jmp	.L19
.L40:
	addq	$1, %rax
	jmp	.L20
.L25:
	movq	%rsi, %rdx
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%edi, %edi
	xorl	%eax, %eax
	jmp	.L3
.L32:
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
	je	.L53
	leaq	-4(%r8), %rdx
	movq	%rsi, %rax
	subq	%rsi, %rdx
	movq	%rdx, %rdi
	shrq	$2, %rdi
	leaq	1(%rdi), %r9
	cmpq	$24, %rdx
	jbe	.L54
	movq	%r9, %rdx
	movl	$42, %ecx
	vpxor	%xmm1, %xmm1, %xmm1
	shrq	$3, %rdx
	vmovd	%ecx, %xmm3
	salq	$5, %rdx
	vpbroadcastd	%xmm3, %ymm3
	addq	%rsi, %rdx
	.p2align 4,,10
	.p2align 3
.L45:
	vpcmpeqd	(%rax), %ymm3, %ymm0
	addq	$32, %rax
	vpmovsxdq	%xmm0, %ymm2
	vextracti128	$0x1, %ymm0, %xmm0
	vpsubq	%ymm2, %ymm1, %ymm1
	vpmovsxdq	%xmm0, %ymm0
	vpsubq	%ymm0, %ymm1, %ymm1
	cmpq	%rax, %rdx
	jne	.L45
	vextracti128	$0x1, %ymm1, %xmm0
	movq	%r9, %rcx
	vpaddq	%xmm1, %xmm0, %xmm0
	andq	$-8, %rcx
	andl	$7, %r9d
	vpsrldq	$8, %xmm0, %xmm1
	leaq	(%rsi,%rcx,4), %rdx
	vpaddq	%xmm1, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	je	.L63
	vzeroupper
.L44:
	subq	%rcx, %rdi
	leaq	1(%rdi), %r9
	cmpq	$2, %rdi
	jbe	.L47
	movl	$42, %eax
	vmovd	%eax, %xmm1
	vpbroadcastd	%xmm1, %xmm1
	vpcmpeqd	(%rsi,%rcx,4), %xmm1, %xmm1
	movq	%r9, %rcx
	andq	$-4, %rcx
	andl	$3, %r9d
	leaq	(%rdx,%rcx,4), %rdx
	vpmovsxdq	%xmm1, %xmm2
	vpsrldq	$8, %xmm1, %xmm1
	vpmovsxdq	%xmm1, %xmm1
	vpsubq	%xmm2, %xmm0, %xmm0
	vpsubq	%xmm1, %xmm0, %xmm0
	vpsrldq	$8, %xmm0, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %rax
	je	.L42
.L47:
	xorl	%ecx, %ecx
	cmpl	$42, (%rdx)
	sete	%cl
	addq	%rcx, %rax
	leaq	4(%rdx), %rcx
	cmpq	%rcx, %r8
	je	.L42
	cmpl	$42, 4(%rdx)
	jne	.L50
	addq	$1, %rax
.L50:
	leaq	8(%rdx), %rcx
	cmpq	%rcx, %r8
	je	.L42
	cmpl	$42, 8(%rdx)
	je	.L64
.L42:
	ret
	.p2align 4,,10
	.p2align 3
.L64:
	addq	$1, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L53:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L63:
	vzeroupper
	ret
.L54:
	movq	%rsi, %rdx
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	jmp	.L44
	.cfi_endproc
.LFE1536:
	.size	_Z11count_epi32RKSt6vectorIiSaIiEE, .-_Z11count_epi32RKSt6vectorIiSaIiEE
	.ident	"GCC: (GNU) 14.1.0"
	.section	.note.GNU-stack,"",@progbits
