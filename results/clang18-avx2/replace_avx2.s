	.text
	.file	"replace.cpp"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _Z12replace_epi8RSt6vectorIaSaIaEE
.LCPI0_0:
	.zero	32,13
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_1:
	.zero	16,13
	.section	.rodata,"a",@progbits
.LCPI0_2:
	.byte	13                              # 0xd
	.text
	.globl	_Z12replace_epi8RSt6vectorIaSaIaEE
	.p2align	4, 0x90
	.type	_Z12replace_epi8RSt6vectorIaSaIaEE,@function
_Z12replace_epi8RSt6vectorIaSaIaEE:     # @_Z12replace_epi8RSt6vectorIaSaIaEE
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rcx
	movq	8(%rdi), %rax
	cmpq	%rax, %rcx
	je	.LBB0_112
# %bb.1:
	movq	%rax, %rdx
	subq	%rcx, %rdx
	cmpq	$16, %rdx
	jae	.LBB0_2
.LBB0_108:
	movq	%rcx, %rdi
	jmp	.LBB0_109
.LBB0_2:
	cmpq	$32, %rdx
	jae	.LBB0_39
# %bb.3:
	xorl	%esi, %esi
	jmp	.LBB0_4
.LBB0_39:
	movq	%rdx, %rsi
	andq	$-32, %rsi
	xorl	%edi, %edi
	vpbroadcastb	.LCPI0_2(%rip), %xmm0   # xmm0 = [13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13]
	vmovdqa	.LCPI0_0+16(%rip), %xmm1
	jmp	.LBB0_40
	.p2align	4, 0x90
.LBB0_104:                              #   in Loop: Header=BB0_40 Depth=1
	addq	$32, %rdi
	cmpq	%rdi, %rsi
	je	.LBB0_105
.LBB0_40:                               # =>This Inner Loop Header: Depth=1
	vmovdqu	(%rcx,%rdi), %ymm2
	vpcmpeqb	(%rcx,%rdi), %xmm0, %xmm3
	vmovd	%xmm3, %r8d
	testb	$1, %r8b
	jne	.LBB0_41
# %bb.42:                               #   in Loop: Header=BB0_40 Depth=1
	vpcmpeqb	%xmm0, %xmm2, %xmm3
	vpextrb	$1, %xmm3, %r8d
	testb	$1, %r8b
	jne	.LBB0_43
.LBB0_44:                               #   in Loop: Header=BB0_40 Depth=1
	vpcmpeqb	%xmm0, %xmm2, %xmm3
	vpextrb	$2, %xmm3, %r8d
	testb	$1, %r8b
	jne	.LBB0_45
.LBB0_46:                               #   in Loop: Header=BB0_40 Depth=1
	vpcmpeqb	%xmm0, %xmm2, %xmm3
	vpextrb	$3, %xmm3, %r8d
	testb	$1, %r8b
	jne	.LBB0_47
.LBB0_48:                               #   in Loop: Header=BB0_40 Depth=1
	vpcmpeqb	%xmm0, %xmm2, %xmm3
	vpextrb	$4, %xmm3, %r8d
	testb	$1, %r8b
	jne	.LBB0_49
.LBB0_50:                               #   in Loop: Header=BB0_40 Depth=1
	vpcmpeqb	%xmm0, %xmm2, %xmm3
	vpextrb	$5, %xmm3, %r8d
	testb	$1, %r8b
	jne	.LBB0_51
.LBB0_52:                               #   in Loop: Header=BB0_40 Depth=1
	vpcmpeqb	%xmm0, %xmm2, %xmm3
	vpextrb	$6, %xmm3, %r8d
	testb	$1, %r8b
	jne	.LBB0_53
.LBB0_54:                               #   in Loop: Header=BB0_40 Depth=1
	vpcmpeqb	%xmm0, %xmm2, %xmm3
	vpextrb	$7, %xmm3, %r8d
	testb	$1, %r8b
	jne	.LBB0_55
.LBB0_56:                               #   in Loop: Header=BB0_40 Depth=1
	vpcmpeqb	%xmm0, %xmm2, %xmm3
	vpextrb	$8, %xmm3, %r8d
	testb	$1, %r8b
	jne	.LBB0_57
.LBB0_58:                               #   in Loop: Header=BB0_40 Depth=1
	vpcmpeqb	%xmm0, %xmm2, %xmm3
	vpextrb	$9, %xmm3, %r8d
	testb	$1, %r8b
	jne	.LBB0_59
.LBB0_60:                               #   in Loop: Header=BB0_40 Depth=1
	vpcmpeqb	%xmm0, %xmm2, %xmm3
	vpextrb	$10, %xmm3, %r8d
	testb	$1, %r8b
	jne	.LBB0_61
.LBB0_62:                               #   in Loop: Header=BB0_40 Depth=1
	vpcmpeqb	%xmm0, %xmm2, %xmm3
	vpextrb	$11, %xmm3, %r8d
	testb	$1, %r8b
	jne	.LBB0_63
.LBB0_64:                               #   in Loop: Header=BB0_40 Depth=1
	vpcmpeqb	%xmm0, %xmm2, %xmm3
	vpextrb	$12, %xmm3, %r8d
	testb	$1, %r8b
	jne	.LBB0_65
.LBB0_66:                               #   in Loop: Header=BB0_40 Depth=1
	vpcmpeqb	%xmm0, %xmm2, %xmm3
	vpextrb	$13, %xmm3, %r8d
	testb	$1, %r8b
	jne	.LBB0_67
.LBB0_68:                               #   in Loop: Header=BB0_40 Depth=1
	vpcmpeqb	%xmm0, %xmm2, %xmm3
	vpextrb	$14, %xmm3, %r8d
	testb	$1, %r8b
	jne	.LBB0_69
.LBB0_70:                               #   in Loop: Header=BB0_40 Depth=1
	vpcmpeqb	%xmm0, %xmm2, %xmm3
	vpextrb	$15, %xmm3, %r8d
	testb	$1, %r8b
	je	.LBB0_72
.LBB0_71:                               #   in Loop: Header=BB0_40 Depth=1
	movb	$42, 15(%rcx,%rdi)
.LBB0_72:                               #   in Loop: Header=BB0_40 Depth=1
	vextracti128	$1, %ymm2, %xmm2
	vpcmpeqb	%xmm1, %xmm2, %xmm2
	vmovd	%xmm2, %r8d
	testb	$1, %r8b
	jne	.LBB0_73
# %bb.74:                               #   in Loop: Header=BB0_40 Depth=1
	vpextrb	$1, %xmm2, %r8d
	testb	$1, %r8b
	jne	.LBB0_75
.LBB0_76:                               #   in Loop: Header=BB0_40 Depth=1
	vpextrb	$2, %xmm2, %r8d
	testb	$1, %r8b
	jne	.LBB0_77
.LBB0_78:                               #   in Loop: Header=BB0_40 Depth=1
	vpextrb	$3, %xmm2, %r8d
	testb	$1, %r8b
	jne	.LBB0_79
.LBB0_80:                               #   in Loop: Header=BB0_40 Depth=1
	vpextrb	$4, %xmm2, %r8d
	testb	$1, %r8b
	jne	.LBB0_81
.LBB0_82:                               #   in Loop: Header=BB0_40 Depth=1
	vpextrb	$5, %xmm2, %r8d
	testb	$1, %r8b
	jne	.LBB0_83
.LBB0_84:                               #   in Loop: Header=BB0_40 Depth=1
	vpextrb	$6, %xmm2, %r8d
	testb	$1, %r8b
	jne	.LBB0_85
.LBB0_86:                               #   in Loop: Header=BB0_40 Depth=1
	vpextrb	$7, %xmm2, %r8d
	testb	$1, %r8b
	jne	.LBB0_87
.LBB0_88:                               #   in Loop: Header=BB0_40 Depth=1
	vpextrb	$8, %xmm2, %r8d
	testb	$1, %r8b
	jne	.LBB0_89
.LBB0_90:                               #   in Loop: Header=BB0_40 Depth=1
	vpextrb	$9, %xmm2, %r8d
	testb	$1, %r8b
	jne	.LBB0_91
.LBB0_92:                               #   in Loop: Header=BB0_40 Depth=1
	vpextrb	$10, %xmm2, %r8d
	testb	$1, %r8b
	jne	.LBB0_93
.LBB0_94:                               #   in Loop: Header=BB0_40 Depth=1
	vpextrb	$11, %xmm2, %r8d
	testb	$1, %r8b
	jne	.LBB0_95
.LBB0_96:                               #   in Loop: Header=BB0_40 Depth=1
	vpextrb	$12, %xmm2, %r8d
	testb	$1, %r8b
	jne	.LBB0_97
.LBB0_98:                               #   in Loop: Header=BB0_40 Depth=1
	vpextrb	$13, %xmm2, %r8d
	testb	$1, %r8b
	jne	.LBB0_99
.LBB0_100:                              #   in Loop: Header=BB0_40 Depth=1
	vpextrb	$14, %xmm2, %r8d
	testb	$1, %r8b
	jne	.LBB0_101
.LBB0_102:                              #   in Loop: Header=BB0_40 Depth=1
	vpextrb	$15, %xmm2, %r8d
	testb	$1, %r8b
	je	.LBB0_104
	jmp	.LBB0_103
	.p2align	4, 0x90
.LBB0_41:                               #   in Loop: Header=BB0_40 Depth=1
	movb	$42, (%rcx,%rdi)
	vpcmpeqb	%xmm0, %xmm2, %xmm3
	vpextrb	$1, %xmm3, %r8d
	testb	$1, %r8b
	je	.LBB0_44
.LBB0_43:                               #   in Loop: Header=BB0_40 Depth=1
	movb	$42, 1(%rcx,%rdi)
	vpcmpeqb	%xmm0, %xmm2, %xmm3
	vpextrb	$2, %xmm3, %r8d
	testb	$1, %r8b
	je	.LBB0_46
.LBB0_45:                               #   in Loop: Header=BB0_40 Depth=1
	movb	$42, 2(%rcx,%rdi)
	vpcmpeqb	%xmm0, %xmm2, %xmm3
	vpextrb	$3, %xmm3, %r8d
	testb	$1, %r8b
	je	.LBB0_48
.LBB0_47:                               #   in Loop: Header=BB0_40 Depth=1
	movb	$42, 3(%rcx,%rdi)
	vpcmpeqb	%xmm0, %xmm2, %xmm3
	vpextrb	$4, %xmm3, %r8d
	testb	$1, %r8b
	je	.LBB0_50
.LBB0_49:                               #   in Loop: Header=BB0_40 Depth=1
	movb	$42, 4(%rcx,%rdi)
	vpcmpeqb	%xmm0, %xmm2, %xmm3
	vpextrb	$5, %xmm3, %r8d
	testb	$1, %r8b
	je	.LBB0_52
.LBB0_51:                               #   in Loop: Header=BB0_40 Depth=1
	movb	$42, 5(%rcx,%rdi)
	vpcmpeqb	%xmm0, %xmm2, %xmm3
	vpextrb	$6, %xmm3, %r8d
	testb	$1, %r8b
	je	.LBB0_54
.LBB0_53:                               #   in Loop: Header=BB0_40 Depth=1
	movb	$42, 6(%rcx,%rdi)
	vpcmpeqb	%xmm0, %xmm2, %xmm3
	vpextrb	$7, %xmm3, %r8d
	testb	$1, %r8b
	je	.LBB0_56
.LBB0_55:                               #   in Loop: Header=BB0_40 Depth=1
	movb	$42, 7(%rcx,%rdi)
	vpcmpeqb	%xmm0, %xmm2, %xmm3
	vpextrb	$8, %xmm3, %r8d
	testb	$1, %r8b
	je	.LBB0_58
.LBB0_57:                               #   in Loop: Header=BB0_40 Depth=1
	movb	$42, 8(%rcx,%rdi)
	vpcmpeqb	%xmm0, %xmm2, %xmm3
	vpextrb	$9, %xmm3, %r8d
	testb	$1, %r8b
	je	.LBB0_60
.LBB0_59:                               #   in Loop: Header=BB0_40 Depth=1
	movb	$42, 9(%rcx,%rdi)
	vpcmpeqb	%xmm0, %xmm2, %xmm3
	vpextrb	$10, %xmm3, %r8d
	testb	$1, %r8b
	je	.LBB0_62
.LBB0_61:                               #   in Loop: Header=BB0_40 Depth=1
	movb	$42, 10(%rcx,%rdi)
	vpcmpeqb	%xmm0, %xmm2, %xmm3
	vpextrb	$11, %xmm3, %r8d
	testb	$1, %r8b
	je	.LBB0_64
.LBB0_63:                               #   in Loop: Header=BB0_40 Depth=1
	movb	$42, 11(%rcx,%rdi)
	vpcmpeqb	%xmm0, %xmm2, %xmm3
	vpextrb	$12, %xmm3, %r8d
	testb	$1, %r8b
	je	.LBB0_66
.LBB0_65:                               #   in Loop: Header=BB0_40 Depth=1
	movb	$42, 12(%rcx,%rdi)
	vpcmpeqb	%xmm0, %xmm2, %xmm3
	vpextrb	$13, %xmm3, %r8d
	testb	$1, %r8b
	je	.LBB0_68
.LBB0_67:                               #   in Loop: Header=BB0_40 Depth=1
	movb	$42, 13(%rcx,%rdi)
	vpcmpeqb	%xmm0, %xmm2, %xmm3
	vpextrb	$14, %xmm3, %r8d
	testb	$1, %r8b
	je	.LBB0_70
.LBB0_69:                               #   in Loop: Header=BB0_40 Depth=1
	movb	$42, 14(%rcx,%rdi)
	vpcmpeqb	%xmm0, %xmm2, %xmm3
	vpextrb	$15, %xmm3, %r8d
	testb	$1, %r8b
	jne	.LBB0_71
	jmp	.LBB0_72
	.p2align	4, 0x90
.LBB0_73:                               #   in Loop: Header=BB0_40 Depth=1
	movb	$42, 16(%rcx,%rdi)
	vpextrb	$1, %xmm2, %r8d
	testb	$1, %r8b
	je	.LBB0_76
.LBB0_75:                               #   in Loop: Header=BB0_40 Depth=1
	movb	$42, 17(%rcx,%rdi)
	vpextrb	$2, %xmm2, %r8d
	testb	$1, %r8b
	je	.LBB0_78
.LBB0_77:                               #   in Loop: Header=BB0_40 Depth=1
	movb	$42, 18(%rcx,%rdi)
	vpextrb	$3, %xmm2, %r8d
	testb	$1, %r8b
	je	.LBB0_80
.LBB0_79:                               #   in Loop: Header=BB0_40 Depth=1
	movb	$42, 19(%rcx,%rdi)
	vpextrb	$4, %xmm2, %r8d
	testb	$1, %r8b
	je	.LBB0_82
.LBB0_81:                               #   in Loop: Header=BB0_40 Depth=1
	movb	$42, 20(%rcx,%rdi)
	vpextrb	$5, %xmm2, %r8d
	testb	$1, %r8b
	je	.LBB0_84
.LBB0_83:                               #   in Loop: Header=BB0_40 Depth=1
	movb	$42, 21(%rcx,%rdi)
	vpextrb	$6, %xmm2, %r8d
	testb	$1, %r8b
	je	.LBB0_86
.LBB0_85:                               #   in Loop: Header=BB0_40 Depth=1
	movb	$42, 22(%rcx,%rdi)
	vpextrb	$7, %xmm2, %r8d
	testb	$1, %r8b
	je	.LBB0_88
.LBB0_87:                               #   in Loop: Header=BB0_40 Depth=1
	movb	$42, 23(%rcx,%rdi)
	vpextrb	$8, %xmm2, %r8d
	testb	$1, %r8b
	je	.LBB0_90
.LBB0_89:                               #   in Loop: Header=BB0_40 Depth=1
	movb	$42, 24(%rcx,%rdi)
	vpextrb	$9, %xmm2, %r8d
	testb	$1, %r8b
	je	.LBB0_92
.LBB0_91:                               #   in Loop: Header=BB0_40 Depth=1
	movb	$42, 25(%rcx,%rdi)
	vpextrb	$10, %xmm2, %r8d
	testb	$1, %r8b
	je	.LBB0_94
.LBB0_93:                               #   in Loop: Header=BB0_40 Depth=1
	movb	$42, 26(%rcx,%rdi)
	vpextrb	$11, %xmm2, %r8d
	testb	$1, %r8b
	je	.LBB0_96
.LBB0_95:                               #   in Loop: Header=BB0_40 Depth=1
	movb	$42, 27(%rcx,%rdi)
	vpextrb	$12, %xmm2, %r8d
	testb	$1, %r8b
	je	.LBB0_98
.LBB0_97:                               #   in Loop: Header=BB0_40 Depth=1
	movb	$42, 28(%rcx,%rdi)
	vpextrb	$13, %xmm2, %r8d
	testb	$1, %r8b
	je	.LBB0_100
.LBB0_99:                               #   in Loop: Header=BB0_40 Depth=1
	movb	$42, 29(%rcx,%rdi)
	vpextrb	$14, %xmm2, %r8d
	testb	$1, %r8b
	je	.LBB0_102
.LBB0_101:                              #   in Loop: Header=BB0_40 Depth=1
	movb	$42, 30(%rcx,%rdi)
	vpextrb	$15, %xmm2, %r8d
	testb	$1, %r8b
	je	.LBB0_104
.LBB0_103:                              #   in Loop: Header=BB0_40 Depth=1
	movb	$42, 31(%rcx,%rdi)
	jmp	.LBB0_104
.LBB0_105:
	cmpq	%rsi, %rdx
	je	.LBB0_112
# %bb.106:
	testb	$16, %dl
	jne	.LBB0_4
# %bb.107:
	addq	%rsi, %rcx
	jmp	.LBB0_108
.LBB0_4:
	movq	%rdx, %r8
	andq	$-16, %r8
	leaq	(%rcx,%r8), %rdi
	vpbroadcastb	.LCPI0_2(%rip), %xmm0   # xmm0 = [13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13]
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_37:                               #   in Loop: Header=BB0_5 Depth=1
	addq	$16, %rsi
	cmpq	%rsi, %r8
	je	.LBB0_38
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	vpcmpeqb	(%rcx,%rsi), %xmm0, %xmm1
	vmovd	%xmm1, %r9d
	testb	$1, %r9b
	jne	.LBB0_6
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	vpextrb	$1, %xmm1, %r9d
	testb	$1, %r9b
	jne	.LBB0_8
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=1
	vpextrb	$2, %xmm1, %r9d
	testb	$1, %r9b
	jne	.LBB0_10
.LBB0_11:                               #   in Loop: Header=BB0_5 Depth=1
	vpextrb	$3, %xmm1, %r9d
	testb	$1, %r9b
	jne	.LBB0_12
.LBB0_13:                               #   in Loop: Header=BB0_5 Depth=1
	vpextrb	$4, %xmm1, %r9d
	testb	$1, %r9b
	jne	.LBB0_14
.LBB0_15:                               #   in Loop: Header=BB0_5 Depth=1
	vpextrb	$5, %xmm1, %r9d
	testb	$1, %r9b
	jne	.LBB0_16
.LBB0_17:                               #   in Loop: Header=BB0_5 Depth=1
	vpextrb	$6, %xmm1, %r9d
	testb	$1, %r9b
	jne	.LBB0_18
.LBB0_19:                               #   in Loop: Header=BB0_5 Depth=1
	vpextrb	$7, %xmm1, %r9d
	testb	$1, %r9b
	jne	.LBB0_20
.LBB0_21:                               #   in Loop: Header=BB0_5 Depth=1
	vpextrb	$8, %xmm1, %r9d
	testb	$1, %r9b
	jne	.LBB0_22
.LBB0_23:                               #   in Loop: Header=BB0_5 Depth=1
	vpextrb	$9, %xmm1, %r9d
	testb	$1, %r9b
	jne	.LBB0_24
.LBB0_25:                               #   in Loop: Header=BB0_5 Depth=1
	vpextrb	$10, %xmm1, %r9d
	testb	$1, %r9b
	jne	.LBB0_26
.LBB0_27:                               #   in Loop: Header=BB0_5 Depth=1
	vpextrb	$11, %xmm1, %r9d
	testb	$1, %r9b
	jne	.LBB0_28
.LBB0_29:                               #   in Loop: Header=BB0_5 Depth=1
	vpextrb	$12, %xmm1, %r9d
	testb	$1, %r9b
	jne	.LBB0_30
.LBB0_31:                               #   in Loop: Header=BB0_5 Depth=1
	vpextrb	$13, %xmm1, %r9d
	testb	$1, %r9b
	jne	.LBB0_32
.LBB0_33:                               #   in Loop: Header=BB0_5 Depth=1
	vpextrb	$14, %xmm1, %r9d
	testb	$1, %r9b
	jne	.LBB0_34
.LBB0_35:                               #   in Loop: Header=BB0_5 Depth=1
	vpextrb	$15, %xmm1, %r9d
	testb	$1, %r9b
	je	.LBB0_37
	jmp	.LBB0_36
	.p2align	4, 0x90
.LBB0_6:                                #   in Loop: Header=BB0_5 Depth=1
	movb	$42, (%rcx,%rsi)
	vpextrb	$1, %xmm1, %r9d
	testb	$1, %r9b
	je	.LBB0_9
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=1
	movb	$42, 1(%rcx,%rsi)
	vpextrb	$2, %xmm1, %r9d
	testb	$1, %r9b
	je	.LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_5 Depth=1
	movb	$42, 2(%rcx,%rsi)
	vpextrb	$3, %xmm1, %r9d
	testb	$1, %r9b
	je	.LBB0_13
.LBB0_12:                               #   in Loop: Header=BB0_5 Depth=1
	movb	$42, 3(%rcx,%rsi)
	vpextrb	$4, %xmm1, %r9d
	testb	$1, %r9b
	je	.LBB0_15
.LBB0_14:                               #   in Loop: Header=BB0_5 Depth=1
	movb	$42, 4(%rcx,%rsi)
	vpextrb	$5, %xmm1, %r9d
	testb	$1, %r9b
	je	.LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_5 Depth=1
	movb	$42, 5(%rcx,%rsi)
	vpextrb	$6, %xmm1, %r9d
	testb	$1, %r9b
	je	.LBB0_19
.LBB0_18:                               #   in Loop: Header=BB0_5 Depth=1
	movb	$42, 6(%rcx,%rsi)
	vpextrb	$7, %xmm1, %r9d
	testb	$1, %r9b
	je	.LBB0_21
.LBB0_20:                               #   in Loop: Header=BB0_5 Depth=1
	movb	$42, 7(%rcx,%rsi)
	vpextrb	$8, %xmm1, %r9d
	testb	$1, %r9b
	je	.LBB0_23
.LBB0_22:                               #   in Loop: Header=BB0_5 Depth=1
	movb	$42, 8(%rcx,%rsi)
	vpextrb	$9, %xmm1, %r9d
	testb	$1, %r9b
	je	.LBB0_25
.LBB0_24:                               #   in Loop: Header=BB0_5 Depth=1
	movb	$42, 9(%rcx,%rsi)
	vpextrb	$10, %xmm1, %r9d
	testb	$1, %r9b
	je	.LBB0_27
.LBB0_26:                               #   in Loop: Header=BB0_5 Depth=1
	movb	$42, 10(%rcx,%rsi)
	vpextrb	$11, %xmm1, %r9d
	testb	$1, %r9b
	je	.LBB0_29
.LBB0_28:                               #   in Loop: Header=BB0_5 Depth=1
	movb	$42, 11(%rcx,%rsi)
	vpextrb	$12, %xmm1, %r9d
	testb	$1, %r9b
	je	.LBB0_31
.LBB0_30:                               #   in Loop: Header=BB0_5 Depth=1
	movb	$42, 12(%rcx,%rsi)
	vpextrb	$13, %xmm1, %r9d
	testb	$1, %r9b
	je	.LBB0_33
.LBB0_32:                               #   in Loop: Header=BB0_5 Depth=1
	movb	$42, 13(%rcx,%rsi)
	vpextrb	$14, %xmm1, %r9d
	testb	$1, %r9b
	je	.LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_5 Depth=1
	movb	$42, 14(%rcx,%rsi)
	vpextrb	$15, %xmm1, %r9d
	testb	$1, %r9b
	je	.LBB0_37
.LBB0_36:                               #   in Loop: Header=BB0_5 Depth=1
	movb	$42, 15(%rcx,%rsi)
	jmp	.LBB0_37
.LBB0_38:
	cmpq	%r8, %rdx
	jne	.LBB0_109
.LBB0_112:
	vzeroupper
	retq
	.p2align	4, 0x90
.LBB0_111:                              #   in Loop: Header=BB0_109 Depth=1
	incq	%rdi
	cmpq	%rax, %rdi
	je	.LBB0_112
.LBB0_109:                              # =>This Inner Loop Header: Depth=1
	cmpb	$13, (%rdi)
	jne	.LBB0_111
# %bb.110:                              #   in Loop: Header=BB0_109 Depth=1
	movb	$42, (%rdi)
	jmp	.LBB0_111
.Lfunc_end0:
	.size	_Z12replace_epi8RSt6vectorIaSaIaEE, .Lfunc_end0-_Z12replace_epi8RSt6vectorIaSaIaEE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z13replace_epi32RSt6vectorIiSaIiEE
.LCPI1_0:
	.long	13                              # 0xd
.LCPI1_1:
	.long	42                              # 0x2a
	.text
	.globl	_Z13replace_epi32RSt6vectorIiSaIiEE
	.p2align	4, 0x90
	.type	_Z13replace_epi32RSt6vectorIiSaIiEE,@function
_Z13replace_epi32RSt6vectorIiSaIiEE:    # @_Z13replace_epi32RSt6vectorIiSaIiEE
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rdx
	movq	8(%rdi), %rax
	cmpq	%rax, %rdx
	je	.LBB1_9
# %bb.1:
	movq	%rax, %rsi
	subq	%rdx, %rsi
	addq	$-4, %rsi
	cmpq	$124, %rsi
	jae	.LBB1_3
# %bb.2:
	movq	%rdx, %rcx
	jmp	.LBB1_6
.LBB1_3:
	shrq	$2, %rsi
	incq	%rsi
	movq	%rsi, %rdi
	andq	$-32, %rdi
	leaq	(%rdx,%rdi,4), %rcx
	addq	$96, %rdx
	xorl	%r8d, %r8d
	vpbroadcastd	.LCPI1_0(%rip), %ymm0   # ymm0 = [13,13,13,13,13,13,13,13]
	vpbroadcastd	.LCPI1_1(%rip), %ymm1   # ymm1 = [42,42,42,42,42,42,42,42]
	.p2align	4, 0x90
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	vpcmpeqd	-96(%rdx,%r8,4), %ymm0, %ymm2
	vpcmpeqd	-64(%rdx,%r8,4), %ymm0, %ymm3
	vpcmpeqd	-32(%rdx,%r8,4), %ymm0, %ymm4
	vpcmpeqd	(%rdx,%r8,4), %ymm0, %ymm5
	vpmaskmovd	%ymm1, %ymm2, -96(%rdx,%r8,4)
	vpmaskmovd	%ymm1, %ymm3, -64(%rdx,%r8,4)
	vpmaskmovd	%ymm1, %ymm4, -32(%rdx,%r8,4)
	vpmaskmovd	%ymm1, %ymm5, (%rdx,%r8,4)
	addq	$32, %r8
	cmpq	%r8, %rdi
	jne	.LBB1_4
# %bb.5:
	cmpq	%rdi, %rsi
	jne	.LBB1_6
.LBB1_9:
	vzeroupper
	retq
	.p2align	4, 0x90
.LBB1_8:                                #   in Loop: Header=BB1_6 Depth=1
	addq	$4, %rcx
	cmpq	%rax, %rcx
	je	.LBB1_9
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	cmpl	$13, (%rcx)
	jne	.LBB1_8
# %bb.7:                                #   in Loop: Header=BB1_6 Depth=1
	movl	$42, (%rcx)
	jmp	.LBB1_8
.Lfunc_end1:
	.size	_Z13replace_epi32RSt6vectorIiSaIiEE, .Lfunc_end1-_Z13replace_epi32RSt6vectorIiSaIiEE
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 18.0.0 (https://github.com/llvm/llvm-project.git 2176c5e510e3bfcbc75afb13e78d287141f239a7)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
