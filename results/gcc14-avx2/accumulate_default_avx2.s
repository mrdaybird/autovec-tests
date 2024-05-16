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
	je	.L8
	movq	%rsi, %rcx
	movq	%rdi, %rax
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rdx
	cmpq	$30, %rdx
	jbe	.L9
	movq	%rcx, %r8
	vpxor	%xmm2, %xmm2, %xmm2
	andq	$-32, %r8
	leaq	(%rdi,%r8), %rdx
	.p2align 4,,10
	.p2align 3
.L4:
	vmovdqu	(%rax), %ymm0
	addq	$32, %rax
	vpmovsxbw	%xmm0, %ymm1
	vextracti128	$0x1, %ymm0, %xmm0
	vpmovsxwd	%xmm1, %ymm3
	vextracti128	$0x1, %ymm1, %xmm1
	vpmovsxbw	%xmm0, %ymm0
	vpaddd	%ymm2, %ymm3, %ymm2
	vpmovsxwd	%xmm1, %ymm1
	vpaddd	%ymm2, %ymm1, %ymm1
	vpmovsxwd	%xmm0, %ymm2
	vextracti128	$0x1, %ymm0, %xmm0
	vpaddd	%ymm1, %ymm2, %ymm2
	vpmovsxwd	%xmm0, %ymm0
	vpaddd	%ymm2, %ymm0, %ymm2
	cmpq	%rax, %rdx
	jne	.L4
	vextracti128	$0x1, %ymm2, %xmm0
	vpaddd	%xmm2, %xmm0, %xmm0
	vpsrldq	$8, %xmm0, %xmm1
	vpaddd	%xmm1, %xmm0, %xmm1
	vpsrldq	$4, %xmm1, %xmm2
	vpaddd	%xmm2, %xmm1, %xmm1
	vmovdqa	%xmm0, %xmm2
	vmovd	%xmm1, %eax
	cmpq	%r8, %rcx
	je	.L16
	vzeroupper
.L3:
	subq	%r8, %rcx
	leaq	-1(%rcx), %r9
	cmpq	$14, %r9
	jbe	.L6
	vmovdqu	(%rdi,%r8), %xmm0
	movq	%rcx, %rdi
	andq	$-16, %rdi
	vpmovsxbw	%xmm0, %xmm1
	vpsrldq	$8, %xmm0, %xmm0
	addq	%rdi, %rdx
	andl	$15, %ecx
	vpmovsxwd	%xmm1, %xmm3
	vpsrldq	$8, %xmm1, %xmm1
	vpmovsxbw	%xmm0, %xmm0
	vpaddd	%xmm2, %xmm3, %xmm2
	vpmovsxwd	%xmm1, %xmm1
	vpaddd	%xmm2, %xmm1, %xmm1
	vpmovsxwd	%xmm0, %xmm2
	vpsrldq	$8, %xmm0, %xmm0
	vpaddd	%xmm1, %xmm2, %xmm1
	vpmovsxwd	%xmm0, %xmm0
	vpaddd	%xmm1, %xmm0, %xmm0
	vpsrldq	$8, %xmm0, %xmm1
	vpaddd	%xmm1, %xmm0, %xmm0
	vpsrldq	$4, %xmm0, %xmm1
	vpaddd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %eax
	je	.L5
.L6:
	movsbl	(%rdx), %ecx
	addl	%ecx, %eax
	leaq	1(%rdx), %rcx
	cmpq	%rcx, %rsi
	je	.L5
	movsbl	1(%rdx), %ecx
	addl	%ecx, %eax
	leaq	2(%rdx), %rcx
	cmpq	%rcx, %rsi
	je	.L5
	movsbl	2(%rdx), %ecx
	addl	%ecx, %eax
	leaq	3(%rdx), %rcx
	cmpq	%rcx, %rsi
	je	.L5
	movsbl	3(%rdx), %ecx
	addl	%ecx, %eax
	leaq	4(%rdx), %rcx
	cmpq	%rcx, %rsi
	je	.L5
	movsbl	4(%rdx), %ecx
	addl	%ecx, %eax
	leaq	5(%rdx), %rcx
	cmpq	%rcx, %rsi
	je	.L5
	movsbl	5(%rdx), %ecx
	addl	%ecx, %eax
	leaq	6(%rdx), %rcx
	cmpq	%rcx, %rsi
	je	.L5
	movsbl	6(%rdx), %ecx
	addl	%ecx, %eax
	leaq	7(%rdx), %rcx
	cmpq	%rcx, %rsi
	je	.L5
	movsbl	7(%rdx), %ecx
	addl	%ecx, %eax
	leaq	8(%rdx), %rcx
	cmpq	%rcx, %rsi
	je	.L5
	movsbl	8(%rdx), %ecx
	addl	%ecx, %eax
	leaq	9(%rdx), %rcx
	cmpq	%rcx, %rsi
	je	.L5
	movsbl	9(%rdx), %ecx
	addl	%ecx, %eax
	leaq	10(%rdx), %rcx
	cmpq	%rcx, %rsi
	je	.L5
	movsbl	10(%rdx), %ecx
	addl	%ecx, %eax
	leaq	11(%rdx), %rcx
	cmpq	%rcx, %rsi
	je	.L5
	movsbl	11(%rdx), %ecx
	addl	%ecx, %eax
	leaq	12(%rdx), %rcx
	cmpq	%rcx, %rsi
	je	.L5
	movsbl	12(%rdx), %ecx
	addl	%ecx, %eax
	leaq	13(%rdx), %rcx
	cmpq	%rcx, %rsi
	je	.L5
	movsbl	13(%rdx), %ecx
	addl	%ecx, %eax
	leaq	14(%rdx), %rcx
	cmpq	%rcx, %rsi
	je	.L5
	movsbl	14(%rdx), %edx
	addl	%edx, %eax
.L5:
	cltq
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	xorl	%eax, %eax
	ret
.L9:
	movq	%rdi, %rdx
	vpxor	%xmm2, %xmm2, %xmm2
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	jmp	.L3
.L16:
	vzeroupper
	jmp	.L5
	.cfi_endproc
.LFE1302:
	.size	_Z15accumulate_epi8RKSt6vectorIaSaIaEE, .-_Z15accumulate_epi8RKSt6vectorIaSaIaEE
	.p2align 4
	.globl	_Z16accumulate_epi32RKSt6vectorIiSaIiEE
	.type	_Z16accumulate_epi32RKSt6vectorIiSaIiEE, @function
_Z16accumulate_epi32RKSt6vectorIiSaIiEE:
.LFB1303:
	.cfi_startproc
	movq	8(%rdi), %r8
	movq	(%rdi), %rcx
	cmpq	%r8, %rcx
	je	.L24
	leaq	-4(%r8), %rdx
	movq	%rcx, %rax
	subq	%rcx, %rdx
	movq	%rdx, %rsi
	shrq	$2, %rsi
	leaq	1(%rsi), %rdi
	cmpq	$24, %rdx
	jbe	.L25
	movq	%rdi, %rdx
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$3, %rdx
	salq	$5, %rdx
	addq	%rcx, %rdx
	.p2align 4,,10
	.p2align 3
.L20:
	vpaddd	(%rax), %ymm0, %ymm0
	addq	$32, %rax
	cmpq	%rax, %rdx
	jne	.L20
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
	je	.L34
	vzeroupper
.L19:
	subq	%r9, %rsi
	leaq	1(%rsi), %rdi
	cmpq	$2, %rsi
	jbe	.L22
	vpaddd	(%rcx,%r9,4), %xmm1, %xmm1
	movq	%rdi, %rcx
	andq	$-4, %rcx
	andl	$3, %edi
	vpsrldq	$8, %xmm1, %xmm0
	leaq	(%rdx,%rcx,4), %rdx
	vpaddd	%xmm0, %xmm1, %xmm1
	vpsrldq	$4, %xmm1, %xmm0
	vpaddd	%xmm0, %xmm1, %xmm0
	vmovd	%xmm0, %eax
	je	.L21
.L22:
	vmovd	(%rdx), %xmm1
	leaq	4(%rdx), %rcx
	vpaddd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %eax
	cmpq	%rcx, %r8
	je	.L21
	vmovd	4(%rdx), %xmm1
	leaq	8(%rdx), %rcx
	vpaddd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %eax
	cmpq	%rcx, %r8
	je	.L21
	vmovd	8(%rdx), %xmm1
	vpaddd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %eax
.L21:
	cltq
	ret
	.p2align 4,,10
	.p2align 3
.L24:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L34:
	cltq
	vzeroupper
	ret
.L25:
	vpxor	%xmm1, %xmm1, %xmm1
	movq	%rcx, %rdx
	xorl	%r9d, %r9d
	vmovdqa	%xmm1, %xmm0
	jmp	.L19
	.cfi_endproc
.LFE1303:
	.size	_Z16accumulate_epi32RKSt6vectorIiSaIiEE, .-_Z16accumulate_epi32RKSt6vectorIiSaIiEE
	.ident	"GCC: (GNU) 14.1.0"
	.section	.note.GNU-stack,"",@progbits
