	.text
	.file	"remove_if.cpp"
	.globl	_Z14remove_if_epi8RSt6vectorIaSaIaEE # -- Begin function _Z14remove_if_epi8RSt6vectorIaSaIaEE
	.p2align	4, 0x90
	.type	_Z14remove_if_epi8RSt6vectorIaSaIaEE,@function
_Z14remove_if_epi8RSt6vectorIaSaIaEE:   # @_Z14remove_if_epi8RSt6vectorIaSaIaEE
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rdx
	movq	8(%rdi), %rax
	movq	%rax, %rsi
	subq	%rdx, %rsi
	cmpq	$4, %rsi
	jl	.LBB0_1
# %bb.2:
	shrq	$2, %rsi
	incq	%rsi
	movq	%rdx, %rcx
	addq	$3, %rcx
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	cmpb	$42, -3(%rcx)
	jne	.LBB0_19
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	cmpb	$42, -2(%rcx)
	jne	.LBB0_17
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	cmpb	$42, -1(%rcx)
	jne	.LBB0_18
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	cmpb	$42, (%rcx)
	jne	.LBB0_20
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	decq	%rsi
	addq	$4, %rcx
	addq	$4, %rdx
	cmpq	$1, %rsi
	jg	.LBB0_3
# %bb.8:
	addq	$-3, %rcx
	movq	%rax, %rsi
	subq	%rdx, %rsi
	cmpq	$1, %rsi
	jne	.LBB0_10
	jmp	.LBB0_16
.LBB0_1:
	movq	%rdx, %rcx
	movq	%rax, %rsi
	subq	%rdx, %rsi
	cmpq	$1, %rsi
	je	.LBB0_16
.LBB0_10:
	cmpq	$2, %rsi
	je	.LBB0_14
# %bb.11:
	cmpq	$3, %rsi
	jne	.LBB0_36
# %bb.12:
	cmpb	$42, (%rcx)
	jne	.LBB0_20
# %bb.13:
	incq	%rcx
.LBB0_14:
	cmpb	$42, (%rcx)
	jne	.LBB0_20
# %bb.15:
	incq	%rcx
.LBB0_16:
	cmpb	$42, (%rcx)
	cmoveq	%rax, %rcx
	cmpq	%rax, %rcx
	jne	.LBB0_21
	jmp	.LBB0_36
.LBB0_19:
	addq	$-3, %rcx
	cmpq	%rax, %rcx
	jne	.LBB0_21
	jmp	.LBB0_36
.LBB0_17:
	addq	$-2, %rcx
.LBB0_20:
	cmpq	%rax, %rcx
	je	.LBB0_36
.LBB0_21:
	leaq	1(%rcx), %rdx
	cmpq	%rax, %rdx
	je	.LBB0_36
# %bb.22:
	movl	%ecx, %esi
	notl	%esi
	leal	(%rax,%rsi), %edi
	movq	%rax, %rsi
	subq	%rcx, %rsi
	addq	$-2, %rsi
	andl	$3, %edi
	jne	.LBB0_23
.LBB0_26:
	cmpq	$3, %rsi
	jae	.LBB0_27
.LBB0_36:
	retq
	.p2align	4, 0x90
.LBB0_25:                               #   in Loop: Header=BB0_23 Depth=1
	incq	%rdx
	decq	%rdi
	je	.LBB0_26
.LBB0_23:                               # =>This Inner Loop Header: Depth=1
	cmpb	$42, (%rdx)
	jne	.LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_23 Depth=1
	movb	$42, (%rcx)
	incq	%rcx
	jmp	.LBB0_25
	.p2align	4, 0x90
.LBB0_35:                               #   in Loop: Header=BB0_27 Depth=1
	addq	$4, %rdx
	cmpq	%rax, %rdx
	je	.LBB0_36
.LBB0_27:                               # =>This Inner Loop Header: Depth=1
	cmpb	$42, (%rdx)
	je	.LBB0_28
# %bb.29:                               #   in Loop: Header=BB0_27 Depth=1
	cmpb	$42, 1(%rdx)
	je	.LBB0_30
.LBB0_31:                               #   in Loop: Header=BB0_27 Depth=1
	cmpb	$42, 2(%rdx)
	je	.LBB0_32
.LBB0_33:                               #   in Loop: Header=BB0_27 Depth=1
	cmpb	$42, 3(%rdx)
	jne	.LBB0_35
	jmp	.LBB0_34
	.p2align	4, 0x90
.LBB0_28:                               #   in Loop: Header=BB0_27 Depth=1
	movb	$42, (%rcx)
	incq	%rcx
	cmpb	$42, 1(%rdx)
	jne	.LBB0_31
.LBB0_30:                               #   in Loop: Header=BB0_27 Depth=1
	movb	$42, (%rcx)
	incq	%rcx
	cmpb	$42, 2(%rdx)
	jne	.LBB0_33
.LBB0_32:                               #   in Loop: Header=BB0_27 Depth=1
	movb	$42, (%rcx)
	incq	%rcx
	cmpb	$42, 3(%rdx)
	jne	.LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_27 Depth=1
	movb	$42, (%rcx)
	incq	%rcx
	jmp	.LBB0_35
.LBB0_18:
	decq	%rcx
	cmpq	%rax, %rcx
	jne	.LBB0_21
	jmp	.LBB0_36
.Lfunc_end0:
	.size	_Z14remove_if_epi8RSt6vectorIaSaIaEE, .Lfunc_end0-_Z14remove_if_epi8RSt6vectorIaSaIaEE
	.cfi_endproc
                                        # -- End function
	.globl	_Z15remove_if_epi32RSt6vectorIiSaIiEE # -- Begin function _Z15remove_if_epi32RSt6vectorIiSaIiEE
	.p2align	4, 0x90
	.type	_Z15remove_if_epi32RSt6vectorIiSaIiEE,@function
_Z15remove_if_epi32RSt6vectorIiSaIiEE:  # @_Z15remove_if_epi32RSt6vectorIiSaIiEE
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	movq	%rcx, %rdx
	subq	%rax, %rdx
	cmpq	$16, %rdx
	jl	.LBB1_8
# %bb.1:
	movq	%rdx, %rsi
	shrq	$4, %rsi
	incq	%rsi
	addq	$8, %rax
	.p2align	4, 0x90
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	cmpb	$42, -8(%rax)
	jne	.LBB1_18
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	cmpb	$42, -4(%rax)
	jne	.LBB1_16
# %bb.4:                                #   in Loop: Header=BB1_2 Depth=1
	cmpb	$42, (%rax)
	jne	.LBB1_19
# %bb.5:                                #   in Loop: Header=BB1_2 Depth=1
	cmpb	$42, 4(%rax)
	jne	.LBB1_17
# %bb.6:                                #   in Loop: Header=BB1_2 Depth=1
	decq	%rsi
	addq	$16, %rax
	addq	$-16, %rdx
	cmpq	$1, %rsi
	jg	.LBB1_2
# %bb.7:
	addq	$-8, %rax
.LBB1_8:
	sarq	$2, %rdx
	cmpq	$1, %rdx
	je	.LBB1_15
# %bb.9:
	cmpq	$2, %rdx
	je	.LBB1_13
# %bb.10:
	cmpq	$3, %rdx
	jne	.LBB1_25
# %bb.11:
	cmpb	$42, (%rax)
	jne	.LBB1_19
# %bb.12:
	addq	$4, %rax
.LBB1_13:
	cmpb	$42, (%rax)
	jne	.LBB1_19
# %bb.14:
	addq	$4, %rax
.LBB1_15:
	cmpb	$42, (%rax)
	cmoveq	%rcx, %rax
	cmpq	%rcx, %rax
	jne	.LBB1_20
	jmp	.LBB1_25
.LBB1_18:
	addq	$-8, %rax
	cmpq	%rcx, %rax
	jne	.LBB1_20
	jmp	.LBB1_25
.LBB1_16:
	addq	$-4, %rax
.LBB1_19:
	cmpq	%rcx, %rax
	je	.LBB1_25
.LBB1_20:
	leaq	4(%rax), %rdx
	jmp	.LBB1_21
	.p2align	4, 0x90
.LBB1_24:                               #   in Loop: Header=BB1_21 Depth=1
	addq	$4, %rdx
.LBB1_21:                               # =>This Inner Loop Header: Depth=1
	cmpq	%rcx, %rdx
	je	.LBB1_25
# %bb.22:                               #   in Loop: Header=BB1_21 Depth=1
	movl	(%rdx), %esi
	cmpb	$42, %sil
	jne	.LBB1_24
# %bb.23:                               #   in Loop: Header=BB1_21 Depth=1
	movl	%esi, (%rax)
	addq	$4, %rax
	jmp	.LBB1_24
.LBB1_17:
	addq	$4, %rax
	cmpq	%rcx, %rax
	jne	.LBB1_20
.LBB1_25:
	retq
.Lfunc_end1:
	.size	_Z15remove_if_epi32RSt6vectorIiSaIiEE, .Lfunc_end1-_Z15remove_if_epi32RSt6vectorIiSaIiEE
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 18.0.0 (https://github.com/llvm/llvm-project.git 2176c5e510e3bfcbc75afb13e78d287141f239a7)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
