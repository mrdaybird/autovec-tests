	.file	"reverse.cpp"
	.text
	.p2align 4
	.globl	_Z12reverse_epi8RSt6vectorIaSaIaEE
	.type	_Z12reverse_epi8RSt6vectorIaSaIaEE, @function
_Z12reverse_epi8RSt6vectorIaSaIaEE:
.LFB1535:
	.cfi_startproc
	movq	8(%rdi), %r8
	movq	(%rdi), %rsi
	cmpq	%r8, %rsi
	je	.L24
	leaq	-1(%r8), %rdx
	cmpq	%rdx, %rsi
	jnb	.L24
	leaq	-2(%r8), %rcx
	movq	%rsi, %rax
	subq	%rsi, %rcx
	cmpq	$29, %rcx
	jbe	.L10
	movq	%rcx, %rdi
	shrq	%rdi
	movq	%rdi, %r10
	leaq	1(%rdi), %r9
	notq	%r10
	leaq	(%rsi,%r9), %r11
	addq	%r8, %r10
	cmpq	%r11, %r10
	jnb	.L13
	cmpq	%r8, %rsi
	jb	.L10
.L13:
	cmpq	$61, %rcx
	jbe	.L5
	movq	%r9, %r10
	vmovdqa	.LC0(%rip), %ymm2
	leaq	-32(%r8), %rcx
	andq	$-32, %r10
	addq	%r10, %rsi
	.p2align 4,,10
	.p2align 3
.L6:
	vmovdqu	(%rcx), %ymm1
	vmovdqu	(%rax), %ymm0
	addq	$32, %rax
	subq	$32, %rcx
	vperm2i128	$1, %ymm1, %ymm1, %ymm1
	vperm2i128	$1, %ymm0, %ymm0, %ymm0
	vpshufb	%ymm2, %ymm1, %ymm1
	vpshufb	%ymm2, %ymm0, %ymm0
	vmovdqu	%ymm1, -32(%rax)
	vmovdqu	%ymm0, 32(%rcx)
	cmpq	%rsi, %rax
	jne	.L6
	subq	%r10, %rdx
	movq	%rsi, %rax
	cmpq	%r10, %r9
	je	.L22
	subq	%r10, %rdi
	leaq	1(%rdi), %r9
	cmpq	$14, %rdi
	jbe	.L23
	vzeroupper
.L12:
	subq	%r10, %r8
	vmovdqu	(%rsi), %xmm0
	vmovdqa	.LC1(%rip), %xmm2
	movq	%r9, %rcx
	vmovdqu	-16(%r8), %xmm1
	andq	$-16, %rcx
	vpshufb	%xmm2, %xmm0, %xmm0
	subq	%rcx, %rdx
	addq	%rcx, %rax
	andl	$15, %r9d
	vpshufb	%xmm2, %xmm1, %xmm1
	vmovdqu	%xmm1, (%rsi)
	vmovdqu	%xmm0, -16(%r8)
	je	.L24
.L8:
	movzbl	(%rax), %ecx
	movzbl	(%rdx), %esi
	movb	%sil, (%rax)
	leaq	1(%rax), %rsi
	movb	%cl, (%rdx)
	leaq	-1(%rdx), %rcx
	cmpq	%rcx, %rsi
	jnb	.L24
	movzbl	1(%rax), %ecx
	movzbl	-1(%rdx), %esi
	movb	%sil, 1(%rax)
	leaq	2(%rax), %rsi
	movb	%cl, -1(%rdx)
	leaq	-2(%rdx), %rcx
	cmpq	%rcx, %rsi
	jnb	.L24
	movzbl	2(%rax), %ecx
	movzbl	-2(%rdx), %esi
	movb	%sil, 2(%rax)
	leaq	3(%rax), %rsi
	movb	%cl, -2(%rdx)
	leaq	-3(%rdx), %rcx
	cmpq	%rcx, %rsi
	jnb	.L24
	movzbl	3(%rax), %ecx
	movzbl	-3(%rdx), %esi
	movb	%sil, 3(%rax)
	leaq	4(%rax), %rsi
	movb	%cl, -3(%rdx)
	leaq	-4(%rdx), %rcx
	cmpq	%rcx, %rsi
	jnb	.L24
	movzbl	4(%rax), %ecx
	movzbl	-4(%rdx), %esi
	movb	%sil, 4(%rax)
	leaq	5(%rax), %rsi
	movb	%cl, -4(%rdx)
	leaq	-5(%rdx), %rcx
	cmpq	%rcx, %rsi
	jnb	.L24
	movzbl	5(%rax), %ecx
	movzbl	-5(%rdx), %esi
	movb	%sil, 5(%rax)
	leaq	6(%rax), %rsi
	movb	%cl, -5(%rdx)
	leaq	-6(%rdx), %rcx
	cmpq	%rcx, %rsi
	jnb	.L24
	movzbl	6(%rax), %ecx
	movzbl	-6(%rdx), %esi
	movb	%sil, 6(%rax)
	leaq	7(%rax), %rsi
	movb	%cl, -6(%rdx)
	leaq	-7(%rdx), %rcx
	cmpq	%rcx, %rsi
	jnb	.L24
	movzbl	7(%rax), %ecx
	movzbl	-7(%rdx), %esi
	movb	%sil, 7(%rax)
	leaq	8(%rax), %rsi
	movb	%cl, -7(%rdx)
	leaq	-8(%rdx), %rcx
	cmpq	%rcx, %rsi
	jnb	.L24
	movzbl	8(%rax), %ecx
	movzbl	-8(%rdx), %esi
	movb	%sil, 8(%rax)
	leaq	9(%rax), %rsi
	movb	%cl, -8(%rdx)
	leaq	-9(%rdx), %rcx
	cmpq	%rcx, %rsi
	jnb	.L24
	movzbl	9(%rax), %ecx
	movzbl	-9(%rdx), %esi
	movb	%sil, 9(%rax)
	leaq	10(%rax), %rsi
	movb	%cl, -9(%rdx)
	leaq	-10(%rdx), %rcx
	cmpq	%rcx, %rsi
	jnb	.L24
	movzbl	10(%rax), %ecx
	movzbl	-10(%rdx), %esi
	movb	%sil, 10(%rax)
	leaq	11(%rax), %rsi
	movb	%cl, -10(%rdx)
	leaq	-11(%rdx), %rcx
	cmpq	%rcx, %rsi
	jnb	.L24
	movzbl	11(%rax), %ecx
	movzbl	-11(%rdx), %esi
	movb	%sil, 11(%rax)
	leaq	12(%rax), %rsi
	movb	%cl, -11(%rdx)
	leaq	-12(%rdx), %rcx
	cmpq	%rcx, %rsi
	jnb	.L24
	movzbl	12(%rax), %ecx
	movzbl	-12(%rdx), %esi
	movb	%sil, 12(%rax)
	leaq	13(%rax), %rsi
	movb	%cl, -12(%rdx)
	leaq	-13(%rdx), %rcx
	cmpq	%rcx, %rsi
	jnb	.L24
	movzbl	13(%rax), %ecx
	movzbl	-13(%rdx), %esi
	movb	%sil, 13(%rax)
	leaq	14(%rax), %rsi
	movb	%cl, -13(%rdx)
	leaq	-14(%rdx), %rcx
	cmpq	%rcx, %rsi
	jnb	.L24
	movzbl	14(%rax), %ecx
	movzbl	-14(%rdx), %esi
	movb	%sil, 14(%rax)
	movb	%cl, -14(%rdx)
	ret
	.p2align 4,,10
	.p2align 3
.L10:
	movzbl	(%rax), %ecx
	movzbl	(%rdx), %esi
	addq	$1, %rax
	subq	$1, %rdx
	movb	%sil, -1(%rax)
	movb	%cl, 1(%rdx)
	cmpq	%rdx, %rax
	jb	.L10
	ret
.L22:
	vzeroupper
.L24:
	ret
.L23:
	vzeroupper
	jmp	.L8
.L5:
	movq	%rsi, %rax
	xorl	%r10d, %r10d
	jmp	.L12
	.cfi_endproc
.LFE1535:
	.size	_Z12reverse_epi8RSt6vectorIaSaIaEE, .-_Z12reverse_epi8RSt6vectorIaSaIaEE
	.p2align 4
	.globl	_Z13reverse_epi32RSt6vectorIiSaIiEE
	.type	_Z13reverse_epi32RSt6vectorIiSaIiEE, @function
_Z13reverse_epi32RSt6vectorIiSaIiEE:
.LFB1536:
	.cfi_startproc
	movq	8(%rdi), %r8
	movq	(%rdi), %rdi
	cmpq	%r8, %rdi
	je	.L54
	leaq	-4(%r8), %rsi
	cmpq	%rsi, %rdi
	jnb	.L54
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	-5(%r8), %rdx
	movq	%rdi, %rax
	subq	%rdi, %rdx
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	cmpq	$23, %rdx
	jbe	.L28
	movq	%rdx, %r10
	movq	%r8, %rbx
	shrq	$3, %r10
	leaq	1(%r10), %r9
	leaq	0(,%r9,4), %rcx
	leaq	(%rdi,%rcx), %r11
	subq	%rcx, %rbx
	cmpq	%r11, %rbx
	jnb	.L38
	cmpq	%r8, %rdi
	jb	.L28
.L38:
	cmpq	$55, %rdx
	jbe	.L30
	movq	%r9, %rcx
	vmovdqa	.LC2(%rip), %ymm1
	leaq	-32(%r8), %rdx
	shrq	$3, %rcx
	salq	$5, %rcx
	addq	%rdi, %rcx
	.p2align 4,,10
	.p2align 3
.L31:
	vmovdqu	(%rax), %ymm0
	vpermd	(%rdx), %ymm1, %ymm2
	addq	$32, %rax
	subq	$32, %rdx
	vpermd	%ymm0, %ymm1, %ymm0
	vmovdqu	%ymm2, -32(%rax)
	vmovdqu	%ymm0, 32(%rdx)
	cmpq	%rcx, %rax
	jne	.L31
	movq	%r9, %rdx
	movq	%rdi, %rax
	andq	$-8, %rdx
	movq	%rdx, %rcx
	negq	%rcx
	salq	$2, %rcx
	addq	%rcx, %rsi
	subq	%rcx, %rax
	andl	$7, %r9d
	je	.L50
	subq	%rdx, %r10
	leaq	1(%r10), %r9
	cmpq	$2, %r10
	jbe	.L51
	vzeroupper
.L37:
	salq	$2, %rdx
	addq	%rdx, %rdi
	subq	%rdx, %r8
	movq	%r9, %rdx
	andq	$-4, %rdx
	vmovdqu	(%rdi), %xmm0
	vpshufd	$27, -16(%r8), %xmm1
	vmovdqu	%xmm1, (%rdi)
	negq	%rdx
	salq	$2, %rdx
	vpshufd	$27, %xmm0, %xmm0
	addq	%rdx, %rsi
	subq	%rdx, %rax
	andl	$3, %r9d
	vmovdqu	%xmm0, -16(%r8)
	je	.L52
.L33:
	movl	(%rax), %edx
	movl	(%rsi), %ecx
	movl	%ecx, (%rax)
	leaq	4(%rax), %rcx
	movl	%edx, (%rsi)
	leaq	-4(%rsi), %rdx
	cmpq	%rdx, %rcx
	jnb	.L52
	movl	4(%rax), %edx
	movl	-4(%rsi), %ecx
	movl	%ecx, 4(%rax)
	leaq	8(%rax), %rcx
	movl	%edx, -4(%rsi)
	leaq	-8(%rsi), %rdx
	cmpq	%rdx, %rcx
	jnb	.L52
	movl	8(%rax), %edx
	movl	-8(%rsi), %ecx
	movl	%ecx, 8(%rax)
	movl	%edx, -8(%rsi)
.L52:
	movq	-8(%rbp), %rbx
	leave
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L28:
	.cfi_restore_state
	movq	%rsi, %rdx
	.p2align 4,,10
	.p2align 3
.L35:
	movl	(%rax), %ecx
	movl	(%rdx), %esi
	addq	$4, %rax
	subq	$4, %rdx
	movl	%esi, -4(%rax)
	movl	%ecx, 4(%rdx)
	cmpq	%rdx, %rax
	jb	.L35
	movq	-8(%rbp), %rbx
	leave
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L50:
	.cfi_restore_state
	vzeroupper
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L54:
	.cfi_def_cfa 7, 8
	.cfi_restore 3
	.cfi_restore 6
	ret
.L30:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	movq	%rdi, %rax
	xorl	%edx, %edx
	jmp	.L37
.L51:
	vzeroupper
	jmp	.L33
	.cfi_endproc
.LFE1536:
	.size	_Z13reverse_epi32RSt6vectorIiSaIiEE, .-_Z13reverse_epi32RSt6vectorIiSaIiEE
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC0:
	.byte	15
	.byte	14
	.byte	13
	.byte	12
	.byte	11
	.byte	10
	.byte	9
	.byte	8
	.byte	7
	.byte	6
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	0
	.byte	15
	.byte	14
	.byte	13
	.byte	12
	.byte	11
	.byte	10
	.byte	9
	.byte	8
	.byte	7
	.byte	6
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	0
	.set	.LC1,.LC0
	.align 32
.LC2:
	.long	7
	.long	6
	.long	5
	.long	4
	.long	3
	.long	2
	.long	1
	.long	0
	.ident	"GCC: (GNU) 14.1.0"
	.section	.note.GNU-stack,"",@progbits
