	.file	"replace_if.cpp"
	.text
	.p2align 4
	.globl	_Z15replace_if_epi8RSt6vectorIaSaIaEE
	.type	_Z15replace_if_epi8RSt6vectorIaSaIaEE, @function
_Z15replace_if_epi8RSt6vectorIaSaIaEE:
.LFB1535:
	.cfi_startproc
	movq	8(%rdi), %rcx
	movq	(%rdi), %rax
	cmpq	%rcx, %rax
	jne	.L5
	ret
	.p2align 4,,10
	.p2align 3
.L3:
	addq	$1, %rax
	cmpq	%rax, %rcx
	je	.L11
.L5:
	movzbl	(%rax), %edx
	cmpb	$13, %dl
	je	.L6
	cmpb	$-12, %dl
	jne	.L3
.L6:
	movb	$42, (%rax)
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L5
.L11:
	ret
	.cfi_endproc
.LFE1535:
	.size	_Z15replace_if_epi8RSt6vectorIaSaIaEE, .-_Z15replace_if_epi8RSt6vectorIaSaIaEE
	.p2align 4
	.globl	_Z16replace_if_epi32RSt6vectorIiSaIiEE
	.type	_Z16replace_if_epi32RSt6vectorIiSaIiEE, @function
_Z16replace_if_epi32RSt6vectorIiSaIiEE:
.LFB1539:
	.cfi_startproc
	movq	8(%rdi), %r8
	movq	(%rdi), %rdi
	cmpq	%r8, %rdi
	je	.L133
	movq	%r8, %rdx
	movq	%rdi, %rax
	subq	%rdi, %rdx
	leaq	-4(%rdx), %rcx
	cmpq	$56, %rcx
	jbe	.L61
	andl	$3, %edx
	jne	.L61
	movq	%rcx, %rsi
	shrq	$2, %rsi
	leaq	1(%rsi), %r9
	cmpq	$120, %rcx
	jbe	.L63
	movl	$65535, %r10d
	movq	%r9, %rcx
	vmovd	%r10d, %xmm2
	movl	$16711935, %r10d
	shrq	$5, %rcx
	vmovd	%r10d, %xmm4
	movl	$218959117, %r10d
	vpbroadcastd	%xmm2, %ymm2
	vmovd	%r10d, %xmm6
	movl	$-185273100, %r10d
	vpbroadcastd	%xmm4, %ymm4
	vmovd	%r10d, %xmm5
	movl	$42, %r10d
	vpbroadcastd	%xmm6, %ymm6
	vmovd	%r10d, %xmm3
	vpbroadcastd	%xmm5, %ymm5
	vpbroadcastd	%xmm3, %ymm3
	.p2align 4,,10
	.p2align 3
.L21:
	vpand	32(%rax), %ymm2, %ymm0
	vpand	(%rax), %ymm2, %ymm1
	vpand	96(%rax), %ymm2, %ymm7
	vpackusdw	%ymm0, %ymm1, %ymm1
	vpand	64(%rax), %ymm2, %ymm0
	vpermq	$216, %ymm1, %ymm1
	vpackusdw	%ymm7, %ymm0, %ymm0
	vpand	%ymm1, %ymm4, %ymm1
	vpermq	$216, %ymm0, %ymm0
	vpand	%ymm0, %ymm4, %ymm0
	vpackuswb	%ymm0, %ymm1, %ymm1
	vpermq	$216, %ymm1, %ymm1
	vpcmpeqb	%ymm6, %ymm1, %ymm0
	vpcmpeqb	%ymm5, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpmovsxbw	%xmm0, %ymm1
	vextracti128	$0x1, %ymm0, %xmm0
	vpmovsxwd	%xmm1, %ymm8
	vpmovsxbw	%xmm0, %ymm0
	vextracti128	$0x1, %ymm1, %xmm1
	vptest	%ymm8, %ymm8
	vpmovsxwd	%xmm0, %ymm7
	vextracti128	$0x1, %ymm0, %xmm0
	vpmovsxwd	%xmm1, %ymm1
	vpmovsxwd	%xmm0, %ymm0
	je	.L17
	vpmaskmovd	%ymm3, %ymm8, (%rax)
.L17:
	vptest	%ymm1, %ymm1
	je	.L18
	vpmaskmovd	%ymm3, %ymm1, 32(%rax)
.L18:
	vptest	%ymm7, %ymm7
	je	.L19
	vpmaskmovd	%ymm3, %ymm7, 64(%rax)
.L19:
	vptest	%ymm0, %ymm0
	je	.L20
	vpmaskmovd	%ymm3, %ymm0, 96(%rax)
.L20:
	addq	$1, %rdx
	subq	$-128, %rax
	cmpq	%rcx, %rdx
	jne	.L21
	movq	%r9, %rdx
	andq	$-32, %rdx
	andl	$31, %r9d
	leaq	(%rdi,%rdx,4), %rcx
	je	.L134
	vzeroupper
.L16:
	subq	%rdx, %rsi
	leaq	1(%rsi), %r9
	cmpq	$14, %rsi
	jbe	.L23
	movl	$65535, %esi
	leaq	(%rdi,%rdx,4), %rax
	vmovd	%esi, %xmm0
	movl	$16711935, %esi
	vpbroadcastd	%xmm0, %xmm0
	vpand	16(%rax), %xmm0, %xmm2
	vpand	(%rax), %xmm0, %xmm1
	vpackusdw	%xmm2, %xmm1, %xmm1
	vpand	32(%rax), %xmm0, %xmm2
	vpand	48(%rax), %xmm0, %xmm0
	vpackusdw	%xmm0, %xmm2, %xmm0
	vmovd	%esi, %xmm2
	movl	$218959117, %esi
	vpbroadcastd	%xmm2, %xmm2
	vpand	%xmm2, %xmm0, %xmm0
	vpand	%xmm2, %xmm1, %xmm1
	vpackuswb	%xmm0, %xmm1, %xmm1
	vmovd	%esi, %xmm0
	movl	$-185273100, %esi
	vmovd	%esi, %xmm2
	vpbroadcastd	%xmm0, %xmm0
	vpbroadcastd	%xmm2, %xmm2
	vpcmpeqb	%xmm0, %xmm1, %xmm0
	vpcmpeqb	%xmm2, %xmm1, %xmm1
	vpor	%xmm1, %xmm0, %xmm0
	vpmovsxbw	%xmm0, %xmm1
	vpsrldq	$8, %xmm0, %xmm0
	vpmovsxwd	%xmm1, %xmm3
	vpsrldq	$8, %xmm1, %xmm1
	vpmovsxbw	%xmm0, %xmm0
	vptest	%xmm3, %xmm3
	vpmovsxwd	%xmm0, %xmm2
	vpmovsxwd	%xmm1, %xmm1
	vpsrldq	$8, %xmm0, %xmm0
	vpmovsxwd	%xmm0, %xmm0
	je	.L24
	movl	$42, %edi
	vmovd	%edi, %xmm4
	vpbroadcastd	%xmm4, %xmm4
	vpmaskmovd	%xmm4, %xmm3, (%rax)
.L24:
	vptest	%xmm1, %xmm1
	je	.L25
	movl	$42, %esi
	vmovd	%esi, %xmm3
	vpbroadcastd	%xmm3, %xmm3
	vpmaskmovd	%xmm3, %xmm1, 16(%rax)
.L25:
	vptest	%xmm2, %xmm2
	je	.L26
	movl	$42, %edi
	vmovd	%edi, %xmm1
	vpbroadcastd	%xmm1, %xmm1
	vpmaskmovd	%xmm1, %xmm2, 32(%rax)
.L26:
	vptest	%xmm0, %xmm0
	je	.L27
	movl	$42, %esi
	vmovd	%esi, %xmm1
	vpbroadcastd	%xmm1, %xmm1
	vpmaskmovd	%xmm1, %xmm0, 48(%rax)
.L27:
	movq	%r9, %rax
	andq	$-16, %rax
	andl	$15, %r9d
	leaq	(%rcx,%rax,4), %rcx
	je	.L133
.L23:
	movl	(%rcx), %eax
	cmpb	$13, %al
	je	.L64
	cmpb	$-12, %al
	je	.L64
.L29:
	leaq	4(%rcx), %rax
	cmpq	%rax, %r8
	je	.L133
	movl	4(%rcx), %eax
	cmpb	$13, %al
	je	.L65
	cmpb	$-12, %al
	je	.L65
.L31:
	leaq	8(%rcx), %rax
	cmpq	%rax, %r8
	je	.L133
	movl	8(%rcx), %eax
	cmpb	$13, %al
	je	.L66
	cmpb	$-12, %al
	je	.L66
.L33:
	leaq	12(%rcx), %rax
	cmpq	%rax, %r8
	je	.L133
	movl	12(%rcx), %eax
	cmpb	$13, %al
	je	.L67
	cmpb	$-12, %al
	je	.L67
.L35:
	leaq	16(%rcx), %rax
	cmpq	%rax, %r8
	je	.L133
	movl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L68
	cmpb	$-12, %al
	je	.L68
.L37:
	leaq	20(%rcx), %rax
	cmpq	%rax, %r8
	je	.L133
	movl	20(%rcx), %eax
	cmpb	$13, %al
	je	.L69
	cmpb	$-12, %al
	je	.L69
.L39:
	leaq	24(%rcx), %rax
	cmpq	%rax, %r8
	je	.L133
	movl	24(%rcx), %eax
	cmpb	$13, %al
	je	.L70
	cmpb	$-12, %al
	je	.L70
.L41:
	leaq	28(%rcx), %rax
	cmpq	%rax, %r8
	je	.L133
	movl	28(%rcx), %eax
	cmpb	$13, %al
	je	.L71
	cmpb	$-12, %al
	je	.L71
.L43:
	leaq	32(%rcx), %rax
	cmpq	%rax, %r8
	je	.L133
	movl	32(%rcx), %eax
	cmpb	$13, %al
	je	.L72
	cmpb	$-12, %al
	je	.L72
.L45:
	leaq	36(%rcx), %rax
	cmpq	%rax, %r8
	je	.L133
	movl	36(%rcx), %eax
	cmpb	$13, %al
	je	.L73
	cmpb	$-12, %al
	je	.L73
.L47:
	leaq	40(%rcx), %rax
	cmpq	%rax, %r8
	je	.L133
	movl	40(%rcx), %eax
	cmpb	$13, %al
	je	.L74
	cmpb	$-12, %al
	je	.L74
.L49:
	leaq	44(%rcx), %rax
	cmpq	%rax, %r8
	je	.L133
	movl	44(%rcx), %eax
	cmpb	$13, %al
	je	.L75
	cmpb	$-12, %al
	je	.L75
.L51:
	leaq	48(%rcx), %rax
	cmpq	%rax, %r8
	je	.L133
	movl	48(%rcx), %eax
	cmpb	$13, %al
	je	.L76
	cmpb	$-12, %al
	je	.L76
.L53:
	leaq	52(%rcx), %rax
	cmpq	%rax, %r8
	je	.L133
	movl	52(%rcx), %eax
	cmpb	$13, %al
	je	.L77
	cmpb	$-12, %al
	je	.L77
.L55:
	leaq	56(%rcx), %rax
	cmpq	%rax, %r8
	je	.L133
	movl	56(%rcx), %eax
	cmpb	$13, %al
	je	.L57
	cmpb	$-12, %al
	je	.L57
.L133:
	ret
	.p2align 4,,10
	.p2align 3
.L78:
	movl	$42, (%rax)
.L59:
	addq	$4, %rax
	cmpq	%rax, %r8
	je	.L133
.L61:
	movl	(%rax), %edx
	cmpb	$-12, %dl
	je	.L78
	cmpb	$13, %dl
	jne	.L59
	movl	$42, (%rax)
	jmp	.L59
	.p2align 4,,10
	.p2align 3
.L64:
	movl	$42, (%rcx)
	jmp	.L29
	.p2align 4,,10
	.p2align 3
.L65:
	movl	$42, 4(%rcx)
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L66:
	movl	$42, 8(%rcx)
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L67:
	movl	$42, 12(%rcx)
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L68:
	movl	$42, 16(%rcx)
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L69:
	movl	$42, 20(%rcx)
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L70:
	movl	$42, 24(%rcx)
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L71:
	movl	$42, 28(%rcx)
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L72:
	movl	$42, 32(%rcx)
	jmp	.L45
.L57:
	movl	$42, 56(%rcx)
	ret
	.p2align 4,,10
	.p2align 3
.L73:
	movl	$42, 36(%rcx)
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L74:
	movl	$42, 40(%rcx)
	jmp	.L49
.L75:
	movl	$42, 44(%rcx)
	jmp	.L51
.L76:
	movl	$42, 48(%rcx)
	jmp	.L53
.L77:
	movl	$42, 52(%rcx)
	jmp	.L55
.L63:
	movq	%rdi, %rcx
	jmp	.L16
.L134:
	vzeroupper
	ret
	.cfi_endproc
.LFE1539:
	.size	_Z16replace_if_epi32RSt6vectorIiSaIiEE, .-_Z16replace_if_epi32RSt6vectorIiSaIiEE
	.ident	"GCC: (GNU) 14.1.0"
	.section	.note.GNU-stack,"",@progbits
