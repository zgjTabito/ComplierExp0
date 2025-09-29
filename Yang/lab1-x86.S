	.text
	.file	"lab1.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp                      # imm = 0x110
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	xorl	%edi, %edi
	callq	_ZNSt8ios_base15sync_with_stdioEb@PLT
	movq	_ZSt3cin@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	_ZSt3cin@GOTPCREL(%rip), %rdi
	addq	-24(%rax), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_ZNSt9basic_iosIcSt11char_traitsIcEE3tieEPSo@PLT
	cmpl	$1, -8(%rbp)
	jle	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$10, %edx
	callq	__isoc23_strtoul@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -156(%rbp)                # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	movl	$100000000, %eax                # imm = 0x5F5E100
	movl	%eax, -156(%rbp)                # 4-byte Spill
	jmp	.LBB0_3
.LBB0_3:
	movl	-156(%rbp), %eax                # 4-byte Reload
	movl	%eax, -20(%rbp)
	cmpl	$2, -8(%rbp)
	jle	.LBB0_5
# %bb.4:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	atoi@PLT
	movl	%eax, -160(%rbp)                # 4-byte Spill
	jmp	.LBB0_6
.LBB0_5:
	movl	$3, %eax
	movl	%eax, -160(%rbp)                # 4-byte Spill
	jmp	.LBB0_6
.LBB0_6:
	movl	-160(%rbp), %eax                # 4-byte Reload
	movl	%eax, -24(%rbp)
	movl	$1000, %edi                     # imm = 0x3E8
	callq	_ZL13factorial_modj
	movq	%rax, -32(%rbp)
	leaq	-56(%rbp), %rdi
	movq	%rdi, -168(%rbp)                # 8-byte Spill
	callq	_ZNSt6vectorIdSaIdEEC2Ev
	movq	-168(%rbp), %rdi                # 8-byte Reload
	movslq	-24(%rbp), %rsi
.Ltmp0:
	callq	_ZNSt6vectorIdSaIdEE7reserveEm
.Ltmp1:
	jmp	.LBB0_7
.LBB0_7:
	movl	$0, -72(%rbp)
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movl	-72(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB0_17
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	callq	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	movq	%rax, -80(%rbp)
	movl	-20(%rbp), %edi
.Ltmp22:
	callq	_ZL13factorial_modj
.Ltmp23:
	movq	%rax, -176(%rbp)                # 8-byte Spill
	jmp	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	movq	-176(%rbp), %rcx                # 8-byte Reload
	movq	-32(%rbp), %rax
	xorq	%rcx, %rax
	movq	%rax, -32(%rbp)
	callq	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	movq	%rax, -88(%rbp)
.Ltmp24:
	leaq	-88(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	callq	_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
.Ltmp25:
	movq	%rax, -184(%rbp)                # 8-byte Spill
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_8 Depth=1
	movq	-184(%rbp), %rax                # 8-byte Reload
	movq	%rax, -112(%rbp)
.Ltmp26:
	leaq	-104(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	callq	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
.Ltmp27:
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
.Ltmp28:
	leaq	-104(%rbp), %rdi
	callq	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv
.Ltmp29:
	movsd	%xmm0, -192(%rbp)               # 8-byte Spill
	jmp	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_8 Depth=1
	movsd	-192(%rbp), %xmm0               # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)
.Ltmp30:
	leaq	-56(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	callq	_ZNSt6vectorIdSaIdEE9push_backEOd
.Ltmp31:
	jmp	.LBB0_14
.LBB0_14:                               #   in Loop: Header=BB0_8 Depth=1
	jmp	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_8 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB0_8
.LBB0_16:
.Ltmp32:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -64(%rbp)
	movl	%eax, -68(%rbp)
	leaq	-56(%rbp), %rdi
	callq	_ZNSt6vectorIdSaIdEED2Ev
	jmp	.LBB0_28
.LBB0_17:
	leaq	-56(%rbp), %rdi
	movq	%rdi, -200(%rbp)                # 8-byte Spill
	callq	_ZNSt6vectorIdSaIdEE5beginEv
	movq	-200(%rbp), %rdi                # 8-byte Reload
	movq	%rax, -120(%rbp)
	callq	_ZNSt6vectorIdSaIdEE5beginEv
	movq	-200(%rbp), %rdi                # 8-byte Reload
	movq	%rax, -136(%rbp)
	callq	_ZNKSt6vectorIdSaIdEE4sizeEv
	movq	%rax, %rsi
	shrq	%rsi
	leaq	-136(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl
	movq	-200(%rbp), %rdi                # 8-byte Reload
	movq	%rax, -128(%rbp)
	callq	_ZNSt6vectorIdSaIdEE3endEv
	movq	%rax, -144(%rbp)
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	-144(%rbp), %rdx
.Ltmp2:
	callq	_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_
.Ltmp3:
	jmp	.LBB0_18
.LBB0_18:
	leaq	-56(%rbp), %rdi
	movq	%rdi, -216(%rbp)                # 8-byte Spill
	callq	_ZNKSt6vectorIdSaIdEE4sizeEv
	movq	-216(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rsi
	shrq	%rsi
	callq	_ZNSt6vectorIdSaIdEEixEm
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)
.Ltmp4:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.Ltmp5:
	movq	%rax, -208(%rbp)                # 8-byte Spill
	jmp	.LBB0_19
.LBB0_19:
	movq	-208(%rbp), %rdi                # 8-byte Reload
	movl	-20(%rbp), %esi
.Ltmp6:
	callq	_ZNSolsEj@PLT
.Ltmp7:
	movq	%rax, -224(%rbp)                # 8-byte Spill
	jmp	.LBB0_20
.LBB0_20:
.Ltmp8:
	movq	-224(%rbp), %rdi                # 8-byte Reload
	leaq	.L.str.1(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.Ltmp9:
	movq	%rax, -232(%rbp)                # 8-byte Spill
	jmp	.LBB0_21
.LBB0_21:
	movq	-232(%rbp), %rdi                # 8-byte Reload
	movl	-24(%rbp), %esi
.Ltmp10:
	callq	_ZNSolsEi@PLT
.Ltmp11:
	movq	%rax, -240(%rbp)                # 8-byte Spill
	jmp	.LBB0_22
.LBB0_22:
.Ltmp12:
	movq	-240(%rbp), %rdi                # 8-byte Reload
	leaq	.L.str.2(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.Ltmp13:
	movq	%rax, -248(%rbp)                # 8-byte Spill
	jmp	.LBB0_23
.LBB0_23:
	movq	-248(%rbp), %rdi                # 8-byte Reload
	movsd	-152(%rbp), %xmm0               # xmm0 = mem[0],zero
.Ltmp14:
	callq	_ZNSolsEd@PLT
.Ltmp15:
	movq	%rax, -256(%rbp)                # 8-byte Spill
	jmp	.LBB0_24
.LBB0_24:
.Ltmp16:
	movq	-256(%rbp), %rdi                # 8-byte Reload
	leaq	.L.str.3(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.Ltmp17:
	movq	%rax, -264(%rbp)                # 8-byte Spill
	jmp	.LBB0_25
.LBB0_25:
	movq	-264(%rbp), %rdi                # 8-byte Reload
	movq	-32(%rbp), %rsi
.Ltmp18:
	callq	_ZNSolsEm@PLT
.Ltmp19:
	movq	%rax, -272(%rbp)                # 8-byte Spill
	jmp	.LBB0_26
.LBB0_26:
.Ltmp20:
	movq	-272(%rbp), %rdi                # 8-byte Reload
	leaq	.L.str.4(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.Ltmp21:
	jmp	.LBB0_27
.LBB0_27:
	movl	$0, -4(%rbp)
	leaq	-56(%rbp), %rdi
	callq	_ZNSt6vectorIdSaIdEED2Ev
	movl	-4(%rbp), %eax
	addq	$272, %rsp                      # imm = 0x110
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_28:
	.cfi_def_cfa %rbp, 16
	movq	-64(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table0:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp21-.Ltmp0                 #   Call between .Ltmp0 and .Ltmp21
	.uleb128 .Ltmp32-.Lfunc_begin0          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 3 <<
	.uleb128 .Lfunc_end0-.Ltmp21            #   Call between .Ltmp21 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function _ZL13factorial_modj
	.type	_ZL13factorial_modj,@function
_ZL13factorial_modj:                    # @_ZL13factorial_modj
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movq	$1000000007, -16(%rbp)          # imm = 0x3B9ACA07
	movq	$1, -24(%rbp)
	movl	$2, -28(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-4(%rbp), %eax
	ja	.LBB1_4
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	imulq	%rcx, %rax
	movl	$1000000007, %ecx               # imm = 0x3B9ACA07
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	%rcx
	movq	%rdx, -24(%rbp)
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB1_1
.LBB1_4:
	movq	-24(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	_ZL13factorial_modj, .Lfunc_end1-_ZL13factorial_modj
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIdSaIdEEC2Ev,"axG",@progbits,_ZNSt6vectorIdSaIdEEC2Ev,comdat
	.weak	_ZNSt6vectorIdSaIdEEC2Ev        # -- Begin function _ZNSt6vectorIdSaIdEEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt6vectorIdSaIdEEC2Ev,@function
_ZNSt6vectorIdSaIdEEC2Ev:               # @_ZNSt6vectorIdSaIdEEC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt12_Vector_baseIdSaIdEEC2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	_ZNSt6vectorIdSaIdEEC2Ev, .Lfunc_end2-_ZNSt6vectorIdSaIdEEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIdSaIdEE7reserveEm,"axG",@progbits,_ZNSt6vectorIdSaIdEE7reserveEm,comdat
	.weak	_ZNSt6vectorIdSaIdEE7reserveEm  # -- Begin function _ZNSt6vectorIdSaIdEE7reserveEm
	.p2align	4, 0x90
	.type	_ZNSt6vectorIdSaIdEE7reserveEm,@function
_ZNSt6vectorIdSaIdEE7reserveEm:         # @_ZNSt6vectorIdSaIdEE7reserveEm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	callq	_ZNKSt6vectorIdSaIdEE8max_sizeEv
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB3_2
# %bb.1:
	leaq	.L.str.5(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB3_2:
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNKSt6vectorIdSaIdEE8capacityEv
	cmpq	-16(%rbp), %rax
	jae	.LBB3_4
# %bb.3:
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNKSt6vectorIdSaIdEE4sizeEv
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rsi
	callq	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	(%rdi), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movq	8(%rdi), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	callq	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	-64(%rbp), %rsi                 # 8-byte Reload
	movq	-56(%rbp), %rdx                 # 8-byte Reload
	movq	%rax, %rcx
	callq	_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	(%rdi), %rsi
	movq	16(%rdi), %rdx
	movq	(%rdi), %rax
	subq	%rax, %rdx
	sarq	$3, %rdx
	callq	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movq	-32(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 8(%rax)
	movq	(%rax), %rcx
	movq	-16(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 16(%rax)
.LBB3_4:
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	_ZNSt6vectorIdSaIdEE7reserveEm, .Lfunc_end3-_ZNSt6vectorIdSaIdEE7reserveEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIdSaIdEE9push_backEOd,"axG",@progbits,_ZNSt6vectorIdSaIdEE9push_backEOd,comdat
	.weak	_ZNSt6vectorIdSaIdEE9push_backEOd # -- Begin function _ZNSt6vectorIdSaIdEE9push_backEOd
	.p2align	4, 0x90
	.type	_ZNSt6vectorIdSaIdEE9push_backEOd,@function
_ZNSt6vectorIdSaIdEE9push_backEOd:      # @_ZNSt6vectorIdSaIdEE9push_backEOd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	_ZNSt6vectorIdSaIdEE9push_backEOd, .Lfunc_end4-_ZNSt6vectorIdSaIdEE9push_backEOd
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,"axG",@progbits,_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,comdat
	.weak	_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE # -- Begin function _ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.p2align	4, 0x90
	.type	_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,@function
_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE: # @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	movq	%rax, -40(%rbp)
	leaq	-32(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE, .Lfunc_end5-_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,"axG",@progbits,_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,comdat
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE # -- Begin function _ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.p2align	4, 0x90
	.type	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,@function
_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE: # @_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	movsd	%xmm0, -24(%rbp)
	leaq	-24(%rbp), %rdi
	callq	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movsd	%xmm0, (%rax)
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE, .Lfunc_end6-_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv,"axG",@progbits,_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv,comdat
	.weak	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv # -- Begin function _ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv
	.p2align	4, 0x90
	.type	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv,@function
_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv: # @_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv, .Lfunc_end7-_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_,"axG",@progbits,_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_,comdat
	.weak	_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_ # -- Begin function _ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_
	.p2align	4, 0x90
	.type	_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_,@function
_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_: # @_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-8(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZN9__gnu_cxxeqIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	testb	$1, %al
	jne	.LBB8_2
# %bb.1:
	leaq	-16(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZN9__gnu_cxxeqIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	testb	$1, %al
	jne	.LBB8_2
	jmp	.LBB8_3
.LBB8_2:
	jmp	.LBB8_4
.LBB8_3:
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-24(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	callq	_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	movq	%rax, %rdi
	callq	_ZSt4__lgIlET_S0_
	shlq	%rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	callq	_ZN9__gnu_cxx5__ops16__iter_less_iterEv
	movq	-64(%rbp), %rcx                 # 8-byte Reload
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_
.LBB8_4:
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_, .Lfunc_end8-_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIdSaIdEE5beginEv,"axG",@progbits,_ZNSt6vectorIdSaIdEE5beginEv,comdat
	.weak	_ZNSt6vectorIdSaIdEE5beginEv    # -- Begin function _ZNSt6vectorIdSaIdEE5beginEv
	.p2align	4, 0x90
	.type	_ZNSt6vectorIdSaIdEE5beginEv,@function
_ZNSt6vectorIdSaIdEE5beginEv:           # @_ZNSt6vectorIdSaIdEE5beginEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rsi
	leaq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end9:
	.size	_ZNSt6vectorIdSaIdEE5beginEv, .Lfunc_end9-_ZNSt6vectorIdSaIdEE5beginEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl # -- Begin function _ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl,@function
_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl: # @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	leaq	-8(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end10:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl, .Lfunc_end10-_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6vectorIdSaIdEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIdSaIdEE4sizeEv,comdat
	.weak	_ZNKSt6vectorIdSaIdEE4sizeEv    # -- Begin function _ZNKSt6vectorIdSaIdEE4sizeEv
	.p2align	4, 0x90
	.type	_ZNKSt6vectorIdSaIdEE4sizeEv,@function
_ZNKSt6vectorIdSaIdEE4sizeEv:           # @_ZNKSt6vectorIdSaIdEE4sizeEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	sarq	$3, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end11:
	.size	_ZNKSt6vectorIdSaIdEE4sizeEv, .Lfunc_end11-_ZNKSt6vectorIdSaIdEE4sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIdSaIdEE3endEv,"axG",@progbits,_ZNSt6vectorIdSaIdEE3endEv,comdat
	.weak	_ZNSt6vectorIdSaIdEE3endEv      # -- Begin function _ZNSt6vectorIdSaIdEE3endEv
	.p2align	4, 0x90
	.type	_ZNSt6vectorIdSaIdEE3endEv,@function
_ZNSt6vectorIdSaIdEE3endEv:             # @_ZNSt6vectorIdSaIdEE3endEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rsi
	addq	$8, %rsi
	leaq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end12:
	.size	_ZNSt6vectorIdSaIdEE3endEv, .Lfunc_end12-_ZNSt6vectorIdSaIdEE3endEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIdSaIdEEixEm,"axG",@progbits,_ZNSt6vectorIdSaIdEEixEm,comdat
	.weak	_ZNSt6vectorIdSaIdEEixEm        # -- Begin function _ZNSt6vectorIdSaIdEEixEm
	.p2align	4, 0x90
	.type	_ZNSt6vectorIdSaIdEEixEm,@function
_ZNSt6vectorIdSaIdEEixEm:               # @_ZNSt6vectorIdSaIdEEixEm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end13:
	.size	_ZNSt6vectorIdSaIdEEixEm, .Lfunc_end13-_ZNSt6vectorIdSaIdEEixEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIdSaIdEED2Ev,"axG",@progbits,_ZNSt6vectorIdSaIdEED2Ev,comdat
	.weak	_ZNSt6vectorIdSaIdEED2Ev        # -- Begin function _ZNSt6vectorIdSaIdEED2Ev
	.p2align	4, 0x90
	.type	_ZNSt6vectorIdSaIdEED2Ev,@function
_ZNSt6vectorIdSaIdEED2Ev:               # @_ZNSt6vectorIdSaIdEED2Ev
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -56(%rbp)                 # 8-byte Spill
	movq	(%rdi), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	8(%rdi), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	callq	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movq	-48(%rbp), %rdx                 # 8-byte Reload
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	movq	%rdx, -8(%rbp)
	movq	%rcx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
.Ltmp33:
	callq	_ZSt8_DestroyIPdEvT_S1_
.Ltmp34:
	jmp	.LBB14_1
.LBB14_1:
	jmp	.LBB14_2
.LBB14_2:
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt12_Vector_baseIdSaIdEED2Ev
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB14_3:
	.cfi_def_cfa %rbp, 16
.Ltmp35:
	movq	%rax, %rdi
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
.Lfunc_end14:
	.size	_ZNSt6vectorIdSaIdEED2Ev, .Lfunc_end14-_ZNSt6vectorIdSaIdEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt6vectorIdSaIdEED2Ev,"aG",@progbits,_ZNSt6vectorIdSaIdEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table14:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp33-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin1          #     jumps to .Ltmp35
	.byte	1                               #   On action: 1
.Lcst_end1:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIdSaIdEEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEEC2Ev,comdat
	.weak	_ZNSt12_Vector_baseIdSaIdEEC2Ev # -- Begin function _ZNSt12_Vector_baseIdSaIdEEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIdSaIdEEC2Ev,@function
_ZNSt12_Vector_baseIdSaIdEEC2Ev:        # @_ZNSt12_Vector_baseIdSaIdEEC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end15:
	.size	_ZNSt12_Vector_baseIdSaIdEEC2Ev, .Lfunc_end15-_ZNSt12_Vector_baseIdSaIdEEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev,comdat
	.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev # -- Begin function _ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev,@function
_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev: # @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	callq	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end16:
	.size	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev, .Lfunc_end16-_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev,comdat
	.weak	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev # -- Begin function _ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev,@function
_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev: # @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end17:
	.size	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev, .Lfunc_end17-_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,"axG",@progbits,_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,comdat
	.weak	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_ # -- Begin function _ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.p2align	4, 0x90
	.type	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,@function
_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_: # @_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rdi
	callq	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rdi
	callq	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	movq	%rax, %rcx
	movq	-56(%rbp), %rax                 # 8-byte Reload
	subq	%rcx, %rax
	movq	%rax, -32(%rbp)
	leaq	-8(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end18:
	.size	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_, .Lfunc_end18-_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,"axG",@progbits,_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,comdat
	.weak	_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv # -- Begin function _ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.p2align	4, 0x90
	.type	_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,@function
_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv: # @_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end19:
	.size	_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, .Lfunc_end19-_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,"axG",@progbits,_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,comdat
	.weak	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv # -- Begin function _ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.p2align	4, 0x90
	.type	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,@function
_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv: # @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end20:
	.size	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv, .Lfunc_end20-_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_,"axG",@progbits,_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_,comdat
	.weak	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_ # -- Begin function _ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_
	.p2align	4, 0x90
	.type	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_,@function
_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_: # @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end21:
	.size	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_, .Lfunc_end21-_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE,"axG",@progbits,_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE,comdat
	.weak	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE # -- Begin function _ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	.p2align	4, 0x90
	.type	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE,@function
_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE: # @_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end22:
	.size	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE, .Lfunc_end22-_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE
.LCPI23_0:
	.quad	0x412e848000000000              # double 1.0E+6
	.section	.text._ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE,"axG",@progbits,_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE,comdat
	.weak	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE
	.p2align	4, 0x90
	.type	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE,@function
_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE: # @_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	cvtsi2sd	%rax, %xmm0
	movsd	.LCPI23_0(%rip), %xmm1          # xmm1 = [1.0E+6,0.0E+0]
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	leaq	-8(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_
	movsd	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end23:
	.size	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE, .Lfunc_end23-_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_,"axG",@progbits,_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_,comdat
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_ # -- Begin function _ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_
	.p2align	4, 0x90
	.type	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_,@function
_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_: # @_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsd	(%rcx), %xmm0                   # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end24:
	.size	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_, .Lfunc_end24-_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv # -- Begin function _ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,@function
_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv: # @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end25:
	.size	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, .Lfunc_end25-_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	4, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__cxa_begin_catch@PLT
	callq	_ZSt9terminatev@PLT
.Lfunc_end26:
	.size	__clang_call_terminate, .Lfunc_end26-__clang_call_terminate
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIdSaIdEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEED2Ev,comdat
	.weak	_ZNSt12_Vector_baseIdSaIdEED2Ev # -- Begin function _ZNSt12_Vector_baseIdSaIdEED2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIdSaIdEED2Ev,@function
_ZNSt12_Vector_baseIdSaIdEED2Ev:        # @_ZNSt12_Vector_baseIdSaIdEED2Ev
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)                 # 8-byte Spill
	movq	(%rdi), %rsi
	movq	16(%rdi), %rdx
	subq	%rsi, %rdx
	sarq	$3, %rdx
.Ltmp36:
	callq	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
.Ltmp37:
	jmp	.LBB27_1
.LBB27_1:
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB27_2:
	.cfi_def_cfa %rbp, 16
.Ltmp38:
	movq	%rax, %rdi
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
.Lfunc_end27:
	.size	_ZNSt12_Vector_baseIdSaIdEED2Ev, .Lfunc_end27-_ZNSt12_Vector_baseIdSaIdEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt12_Vector_baseIdSaIdEED2Ev,"aG",@progbits,_ZNSt12_Vector_baseIdSaIdEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table27:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp36-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin2          #     jumps to .Ltmp38
	.byte	1                               #   On action: 1
.Lcst_end2:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZSt8_DestroyIPdEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPdEvT_S1_,comdat
	.weak	_ZSt8_DestroyIPdEvT_S1_         # -- Begin function _ZSt8_DestroyIPdEvT_S1_
	.p2align	4, 0x90
	.type	_ZSt8_DestroyIPdEvT_S1_,@function
_ZSt8_DestroyIPdEvT_S1_:                # @_ZSt8_DestroyIPdEvT_S1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end28:
	.size	_ZSt8_DestroyIPdEvT_S1_, .Lfunc_end28-_ZSt8_DestroyIPdEvT_S1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_ # -- Begin function _ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_
	.p2align	4, 0x90
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_,@function
_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_: # @_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end29:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_, .Lfunc_end29-_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm,comdat
	.weak	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm # -- Begin function _ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm,@function
_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm: # @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	cmpq	$0, -40(%rbp)
	je	.LBB30_2
# %bb.1:
	movq	-56(%rbp), %rdx                 # 8-byte Reload
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rdx, -8(%rbp)
	movq	%rcx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZNSt15__new_allocatorIdE10deallocateEPdm
.LBB30_2:
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end30:
	.size	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm, .Lfunc_end30-_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev,comdat
	.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev # -- Begin function _ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev,@function
_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev: # @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt15__new_allocatorIdED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end31:
	.size	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev, .Lfunc_end31-_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt15__new_allocatorIdE10deallocateEPdm,"axG",@progbits,_ZNSt15__new_allocatorIdE10deallocateEPdm,comdat
	.weak	_ZNSt15__new_allocatorIdE10deallocateEPdm # -- Begin function _ZNSt15__new_allocatorIdE10deallocateEPdm
	.p2align	4, 0x90
	.type	_ZNSt15__new_allocatorIdE10deallocateEPdm,@function
_ZNSt15__new_allocatorIdE10deallocateEPdm: # @_ZNSt15__new_allocatorIdE10deallocateEPdm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZdlPv@PLT
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end32:
	.size	_ZNSt15__new_allocatorIdE10deallocateEPdm, .Lfunc_end32-_ZNSt15__new_allocatorIdE10deallocateEPdm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt15__new_allocatorIdED2Ev,"axG",@progbits,_ZNSt15__new_allocatorIdED2Ev,comdat
	.weak	_ZNSt15__new_allocatorIdED2Ev   # -- Begin function _ZNSt15__new_allocatorIdED2Ev
	.p2align	4, 0x90
	.type	_ZNSt15__new_allocatorIdED2Ev,@function
_ZNSt15__new_allocatorIdED2Ev:          # @_ZNSt15__new_allocatorIdED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end33:
	.size	_ZNSt15__new_allocatorIdED2Ev, .Lfunc_end33-_ZNSt15__new_allocatorIdED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6vectorIdSaIdEE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorIdSaIdEE8max_sizeEv,comdat
	.weak	_ZNKSt6vectorIdSaIdEE8max_sizeEv # -- Begin function _ZNKSt6vectorIdSaIdEE8max_sizeEv
	.p2align	4, 0x90
	.type	_ZNKSt6vectorIdSaIdEE8max_sizeEv,@function
_ZNKSt6vectorIdSaIdEE8max_sizeEv:       # @_ZNKSt6vectorIdSaIdEE8max_sizeEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	callq	_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end34:
	.size	_ZNKSt6vectorIdSaIdEE8max_sizeEv, .Lfunc_end34-_ZNKSt6vectorIdSaIdEE8max_sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6vectorIdSaIdEE8capacityEv,"axG",@progbits,_ZNKSt6vectorIdSaIdEE8capacityEv,comdat
	.weak	_ZNKSt6vectorIdSaIdEE8capacityEv # -- Begin function _ZNKSt6vectorIdSaIdEE8capacityEv
	.p2align	4, 0x90
	.type	_ZNKSt6vectorIdSaIdEE8capacityEv,@function
_ZNKSt6vectorIdSaIdEE8capacityEv:       # @_ZNKSt6vectorIdSaIdEE8capacityEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	sarq	$3, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end35:
	.size	_ZNKSt6vectorIdSaIdEE8capacityEv, .Lfunc_end35-_ZNKSt6vectorIdSaIdEE8capacityEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm,comdat
	.weak	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm # -- Begin function _ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm,@function
_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm: # @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	cmpq	$0, -32(%rbp)
	je	.LBB36_2
# %bb.1:
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	movq	-32(%rbp), %rax
	movq	%rcx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNSt15__new_allocatorIdE8allocateEmPKv
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	jmp	.LBB36_3
.LBB36_2:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	jmp	.LBB36_3
.LBB36_3:
	movq	-48(%rbp), %rax                 # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end36:
	.size	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm, .Lfunc_end36-_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_,"axG",@progbits,_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_,comdat
	.weak	_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_ # -- Begin function _ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_,@function
_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_: # @_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	_ZSt12__relocate_aIPdS0_SaIdEET0_T_S3_S2_RT1_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end37:
	.size	_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_, .Lfunc_end37-_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_,comdat
	.weak	_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_ # -- Begin function _ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_,@function
_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_: # @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -32(%rbp)
	movabsq	$1152921504606846975, %rax      # imm = 0xFFFFFFFFFFFFFFF
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rax, -48(%rbp)
.Ltmp39:
	leaq	-40(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	callq	_ZSt3minImERKT_S2_S2_
.Ltmp40:
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	jmp	.LBB38_1
.LBB38_1:
	movq	-56(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB38_2:
	.cfi_def_cfa %rbp, 16
.Ltmp41:
	movq	%rax, %rdi
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
.Lfunc_end38:
	.size	_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, .Lfunc_end38-_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_,"aG",@progbits,_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_,comdat
	.p2align	2, 0x0
GCC_except_table38:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp39-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp40-.Ltmp39                #   Call between .Ltmp39 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin3          #     jumps to .Ltmp41
	.byte	1                               #   On action: 1
.Lcst_end3:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv # -- Begin function _ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	.p2align	4, 0x90
	.type	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,@function
_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv: # @_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end39:
	.size	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, .Lfunc_end39-_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_           # -- Begin function _ZSt3minImERKT_S2_S2_
	.p2align	4, 0x90
	.type	_ZSt3minImERKT_S2_S2_,@function
_ZSt3minImERKT_S2_S2_:                  # @_ZSt3minImERKT_S2_S2_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	(%rcx), %rax
	jae	.LBB40_2
# %bb.1:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB40_3
.LBB40_2:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB40_3:
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end40:
	.size	_ZSt3minImERKT_S2_S2_, .Lfunc_end40-_ZSt3minImERKT_S2_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt15__new_allocatorIdE8allocateEmPKv,"axG",@progbits,_ZNSt15__new_allocatorIdE8allocateEmPKv,comdat
	.weak	_ZNSt15__new_allocatorIdE8allocateEmPKv # -- Begin function _ZNSt15__new_allocatorIdE8allocateEmPKv
	.p2align	4, 0x90
	.type	_ZNSt15__new_allocatorIdE8allocateEmPKv,@function
_ZNSt15__new_allocatorIdE8allocateEmPKv: # @_ZNSt15__new_allocatorIdE8allocateEmPKv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, -8(%rbp)
	movabsq	$1152921504606846975, %rcx      # imm = 0xFFFFFFFFFFFFFFF
	cmpq	%rcx, %rax
	jbe	.LBB41_4
# %bb.1:
	movabsq	$2305843009213693951, %rax      # imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rax, -24(%rbp)
	jbe	.LBB41_3
# %bb.2:
	callq	_ZSt28__throw_bad_array_new_lengthv@PLT
.LBB41_3:
	callq	_ZSt17__throw_bad_allocv@PLT
.LBB41_4:
	movq	-24(%rbp), %rdi
	shlq	$3, %rdi
	callq	_Znwm@PLT
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end41:
	.size	_ZNSt15__new_allocatorIdE8allocateEmPKv, .Lfunc_end41-_ZNSt15__new_allocatorIdE8allocateEmPKv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__relocate_aIPdS0_SaIdEET0_T_S3_S2_RT1_,"axG",@progbits,_ZSt12__relocate_aIPdS0_SaIdEET0_T_S3_S2_RT1_,comdat
	.weak	_ZSt12__relocate_aIPdS0_SaIdEET0_T_S3_S2_RT1_ # -- Begin function _ZSt12__relocate_aIPdS0_SaIdEET0_T_S3_S2_RT1_
	.p2align	4, 0x90
	.type	_ZSt12__relocate_aIPdS0_SaIdEET0_T_S3_S2_RT1_,@function
_ZSt12__relocate_aIPdS0_SaIdEET0_T_S3_S2_RT1_: # @_ZSt12__relocate_aIPdS0_SaIdEET0_T_S3_S2_RT1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZSt12__niter_baseIPdET_S1_
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	_ZSt12__niter_baseIPdET_S1_
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	_ZSt12__niter_baseIPdET_S1_
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	-40(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	movq	-32(%rbp), %rcx
	callq	_ZSt14__relocate_a_1IddENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end42:
	.size	_ZSt12__relocate_aIPdS0_SaIdEET0_T_S3_S2_RT1_, .Lfunc_end42-_ZSt12__relocate_aIPdS0_SaIdEET0_T_S3_S2_RT1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt14__relocate_a_1IddENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E,"axG",@progbits,_ZSt14__relocate_a_1IddENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E,comdat
	.weak	_ZSt14__relocate_a_1IddENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E # -- Begin function _ZSt14__relocate_a_1IddENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E
	.p2align	4, 0x90
	.type	_ZSt14__relocate_a_1IddENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E,@function
_ZSt14__relocate_a_1IddENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E: # @_ZSt14__relocate_a_1IddENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	%rcx, %rax
	sarq	$3, %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jle	.LBB43_2
# %bb.1:
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rdx
	shlq	$3, %rdx
	callq	memmove@PLT
.LBB43_2:
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end43:
	.size	_ZSt14__relocate_a_1IddENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E, .Lfunc_end43-_ZSt14__relocate_a_1IddENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__niter_baseIPdET_S1_,"axG",@progbits,_ZSt12__niter_baseIPdET_S1_,comdat
	.weak	_ZSt12__niter_baseIPdET_S1_     # -- Begin function _ZSt12__niter_baseIPdET_S1_
	.p2align	4, 0x90
	.type	_ZSt12__niter_baseIPdET_S1_,@function
_ZSt12__niter_baseIPdET_S1_:            # @_ZSt12__niter_baseIPdET_S1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end44:
	.size	_ZSt12__niter_baseIPdET_S1_, .Lfunc_end44-_ZSt12__niter_baseIPdET_S1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_,"axG",@progbits,_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_,comdat
	.weak	_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_ # -- Begin function _ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_,@function
_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_: # @_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, -80(%rbp)                 # 8-byte Spill
	movq	8(%rcx), %rax
	cmpq	16(%rcx), %rax
	je	.LBB45_2
# %bb.1:
	movq	-80(%rbp), %rax                 # 8-byte Reload
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rcx
	movq	%rax, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	%rsi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movsd	(%rdx), %xmm0                   # xmm0 = mem[0],zero
	movsd	%xmm0, (%rcx)
	movq	8(%rax), %rcx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	jmp	.LBB45_3
.LBB45_2:
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt6vectorIdSaIdEE3endEv
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rsi
	callq	_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_
.LBB45_3:
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt6vectorIdSaIdEE4backEv
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end45:
	.size	_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_, .Lfunc_end45-_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_,"axG",@progbits,_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_,comdat
	.weak	_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_ # -- Begin function _ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_,@function
_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_: # @_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rsi, -56(%rbp)
	movq	%rdi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-64(%rbp), %rdi
	movq	%rdi, -136(%rbp)                # 8-byte Spill
	movl	$1, %esi
	leaq	.L.str.6(%rip), %rdx
	callq	_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc
	movq	-136(%rbp), %rdi                # 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	(%rdi), %rax
	movq	%rax, -88(%rbp)
	movq	8(%rdi), %rax
	movq	%rax, -96(%rbp)
	callq	_ZNSt6vectorIdSaIdEE5beginEv
	movq	%rax, -112(%rbp)
	leaq	-56(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	callq	_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	movq	-136(%rbp), %rdi                # 8-byte Reload
	movq	%rax, -104(%rbp)
	movq	-80(%rbp), %rsi
	callq	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm
	movq	-136(%rbp), %rdx                # 8-byte Reload
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rcx
	movq	-104(%rbp), %rax
	shlq	$3, %rax
	addq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rdx, -8(%rbp)
	movq	%rcx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsd	(%rcx), %xmm0                   # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	movq	$0, -128(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -184(%rbp)                # 8-byte Spill
	leaq	-56(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	movq	-136(%rbp), %rdi                # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)                # 8-byte Spill
	movq	-120(%rbp), %rax
	movq	%rax, -168(%rbp)                # 8-byte Spill
	callq	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movq	-184(%rbp), %rdi                # 8-byte Reload
	movq	-176(%rbp), %rsi                # 8-byte Reload
	movq	-168(%rbp), %rdx                # 8-byte Reload
	movq	%rax, %rcx
	callq	_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -128(%rbp)
	leaq	-56(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	movq	-136(%rbp), %rdi                # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)                # 8-byte Spill
	movq	-96(%rbp), %rax
	movq	%rax, -152(%rbp)                # 8-byte Spill
	movq	-128(%rbp), %rax
	movq	%rax, -144(%rbp)                # 8-byte Spill
	callq	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movq	-160(%rbp), %rdi                # 8-byte Reload
	movq	-152(%rbp), %rsi                # 8-byte Reload
	movq	-144(%rbp), %rdx                # 8-byte Reload
	movq	%rax, %rcx
	callq	_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_
	movq	-136(%rbp), %rdi                # 8-byte Reload
	movq	%rax, -128(%rbp)
	movq	-88(%rbp), %rsi
	movq	16(%rdi), %rdx
	movq	-88(%rbp), %rax
	subq	%rax, %rdx
	sarq	$3, %rdx
	callq	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
	movq	-136(%rbp), %rax                # 8-byte Reload
	movq	-120(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-128(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-120(%rbp), %rcx
	movq	-80(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 16(%rax)
	addq	$192, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end46:
	.size	_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_, .Lfunc_end46-_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIdSaIdEE4backEv,"axG",@progbits,_ZNSt6vectorIdSaIdEE4backEv,comdat
	.weak	_ZNSt6vectorIdSaIdEE4backEv     # -- Begin function _ZNSt6vectorIdSaIdEE4backEv
	.p2align	4, 0x90
	.type	_ZNSt6vectorIdSaIdEE4backEv,@function
_ZNSt6vectorIdSaIdEE4backEv:            # @_ZNSt6vectorIdSaIdEE4backEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt6vectorIdSaIdEE3endEv
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rdi
	movl	$1, %esi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmiEl
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end47:
	.size	_ZNSt6vectorIdSaIdEE4backEv, .Lfunc_end47-_ZNSt6vectorIdSaIdEE4backEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc,comdat
	.weak	_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc # -- Begin function _ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc
	.p2align	4, 0x90
	.type	_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc,@function
_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc: # @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)                 # 8-byte Spill
	callq	_ZNKSt6vectorIdSaIdEE8max_sizeEv
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	callq	_ZNKSt6vectorIdSaIdEE4sizeEv
	movq	%rax, %rcx
	movq	-48(%rbp), %rax                 # 8-byte Reload
	subq	%rcx, %rax
	cmpq	-16(%rbp), %rax
	jae	.LBB48_2
# %bb.1:
	movq	-24(%rbp), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB48_2:
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNKSt6vectorIdSaIdEE4sizeEv
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	callq	_ZNKSt6vectorIdSaIdEE4sizeEv
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	_ZSt3maxImERKT_S2_S2_
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rcx
	movq	-72(%rbp), %rax                 # 8-byte Reload
	addq	(%rcx), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	callq	_ZNKSt6vectorIdSaIdEE4sizeEv
	movq	%rax, %rcx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	jb	.LBB48_4
# %bb.3:
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	callq	_ZNKSt6vectorIdSaIdEE8max_sizeEv
	movq	%rax, %rcx
	movq	-80(%rbp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB48_5
.LBB48_4:
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNKSt6vectorIdSaIdEE8max_sizeEv
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	jmp	.LBB48_6
.LBB48_5:
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
.LBB48_6:
	movq	-88(%rbp), %rax                 # 8-byte Reload
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end48:
	.size	_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc, .Lfunc_end48-_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,"axG",@progbits,_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,comdat
	.weak	_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_ # -- Begin function _ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,@function
_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_: # @_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	movq	%rax, %rcx
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	sarq	$3, %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end49:
	.size	_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, .Lfunc_end49-_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv # -- Begin function _ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv: # @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end50:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv, .Lfunc_end50-_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_           # -- Begin function _ZSt3maxImERKT_S2_S2_
	.p2align	4, 0x90
	.type	_ZSt3maxImERKT_S2_S2_,@function
_ZSt3maxImERKT_S2_S2_:                  # @_ZSt3maxImERKT_S2_S2_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	(%rcx), %rax
	jae	.LBB51_2
# %bb.1:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB51_3
.LBB51_2:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB51_3:
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end51:
	.size	_ZSt3maxImERKT_S2_S2_, .Lfunc_end51-_ZSt3maxImERKT_S2_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmiEl,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmiEl,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmiEl # -- Begin function _ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmiEl
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmiEl,@function
_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmiEl: # @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmiEl
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	subq	-24(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	leaq	-8(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end52:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmiEl, .Lfunc_end52-_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmiEl
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv # -- Begin function _ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv: # @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end53:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv, .Lfunc_end53-_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_,comdat
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_ # -- Begin function _ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_,@function
_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_: # @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end54:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_, .Lfunc_end54-_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxxeqIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,"axG",@progbits,_ZN9__gnu_cxxeqIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,comdat
	.weak	_ZN9__gnu_cxxeqIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_ # -- Begin function _ZN9__gnu_cxxeqIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxxeqIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,@function
_ZN9__gnu_cxxeqIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_: # @_ZN9__gnu_cxxeqIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	movq	%rax, %rcx
	movq	-24(%rbp), %rax                 # 8-byte Reload
	cmpq	(%rcx), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end55:
	.size	_ZN9__gnu_cxxeqIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, .Lfunc_end55-_ZN9__gnu_cxxeqIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_,"axG",@progbits,_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_,comdat
	.weak	_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_ # -- Begin function _ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_
	.p2align	4, 0x90
	.type	_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_,@function
_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_: # @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -40(%rbp)
.LBB56_1:                               # =>This Inner Loop Header: Depth=1
	leaq	-24(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	callq	_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	cmpq	$3, %rax
	jle	.LBB56_8
# %bb.2:                                #   in Loop: Header=BB56_1 Depth=1
	cmpq	$0, -40(%rbp)
	jne	.LBB56_4
# %bb.3:
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-16(%rbp), %rdi
	movl	$1, %esi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_
	jmp	.LBB56_9
.LBB56_4:                               #   in Loop: Header=BB56_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_
	movq	%rax, -96(%rbp)
	leaq	-96(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	_ZN9__gnu_cxxleIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	testb	$1, %al
	jne	.LBB56_5
	jmp	.LBB56_6
.LBB56_5:                               #   in Loop: Header=BB56_1 Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB56_7
.LBB56_6:                               #   in Loop: Header=BB56_1 Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB56_7:                               #   in Loop: Header=BB56_1 Depth=1
	jmp	.LBB56_1
.LBB56_8:
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_
.LBB56_9:
	addq	$144, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end56:
	.size	_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_, .Lfunc_end56-_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt4__lgIlET_S0_,"axG",@progbits,_ZSt4__lgIlET_S0_,comdat
	.weak	_ZSt4__lgIlET_S0_               # -- Begin function _ZSt4__lgIlET_S0_
	.p2align	4, 0x90
	.type	_ZSt4__lgIlET_S0_,@function
_ZSt4__lgIlET_S0_:                      # @_ZSt4__lgIlET_S0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZSt11__bit_widthImEiT_
	subl	$1, %eax
	cltq
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end57:
	.size	_ZSt4__lgIlET_S0_, .Lfunc_end57-_ZSt4__lgIlET_S0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx5__ops16__iter_less_iterEv,"axG",@progbits,_ZN9__gnu_cxx5__ops16__iter_less_iterEv,comdat
	.weak	_ZN9__gnu_cxx5__ops16__iter_less_iterEv # -- Begin function _ZN9__gnu_cxx5__ops16__iter_less_iterEv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx5__ops16__iter_less_iterEv,@function
_ZN9__gnu_cxx5__ops16__iter_less_iterEv: # @_ZN9__gnu_cxx5__ops16__iter_less_iterEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end58:
	.size	_ZN9__gnu_cxx5__ops16__iter_less_iterEv, .Lfunc_end58-_ZN9__gnu_cxx5__ops16__iter_less_iterEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_,"axG",@progbits,_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_,comdat
	.weak	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_ # -- Begin function _ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_
	.p2align	4, 0x90
	.type	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_,@function
_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_: # @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	leaq	-25(%rbp), %rdx
	callq	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB59_1:                               # =>This Inner Loop Header: Depth=1
	leaq	-56(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZN9__gnu_cxxltIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	testb	$1, %al
	jne	.LBB59_2
	jmp	.LBB59_6
.LBB59_2:                               #   in Loop: Header=BB59_1 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	leaq	-25(%rbp), %rdi
	callq	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_
	testb	$1, %al
	jne	.LBB59_3
	jmp	.LBB59_4
.LBB59_3:                               #   in Loop: Header=BB59_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-96(%rbp), %rdx
	leaq	-25(%rbp), %rcx
	callq	_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_
.LBB59_4:                               #   in Loop: Header=BB59_1 Depth=1
	jmp	.LBB59_5
.LBB59_5:                               #   in Loop: Header=BB59_1 Depth=1
	leaq	-56(%rbp), %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv
	jmp	.LBB59_1
.LBB59_6:
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end59:
	.size	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_, .Lfunc_end59-_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_,"axG",@progbits,_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_,comdat
	.weak	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_ # -- Begin function _ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_
	.p2align	4, 0x90
	.type	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_,@function
_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_: # @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	leaq	-16(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	_ZSt4swapIdENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end60:
	.size	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_, .Lfunc_end60-_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_,"axG",@progbits,_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_,comdat
	.weak	_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_ # -- Begin function _ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_
	.p2align	4, 0x90
	.type	_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_,@function
_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_: # @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	leaq	-24(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	movl	$2, %ecx
	cqto
	idivq	%rcx
	movq	%rax, %rsi
	leaq	-16(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-16(%rbp), %rdi
	movl	$1, %esi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	-24(%rbp), %rdi
	movl	$1, %esi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmiEl
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rcx
	callq	_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_
	leaq	-16(%rbp), %rdi
	movl	$1, %esi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-104(%rbp), %rdx
	callq	_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_S9_T0_
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end61:
	.size	_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_, .Lfunc_end61-_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxxleIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,"axG",@progbits,_ZN9__gnu_cxxleIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,comdat
	.weak	_ZN9__gnu_cxxleIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_ # -- Begin function _ZN9__gnu_cxxleIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxxleIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,@function
_ZN9__gnu_cxxleIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_: # @_ZN9__gnu_cxxleIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	movq	%rax, %rcx
	movq	-24(%rbp), %rax                 # 8-byte Reload
	cmpq	(%rcx), %rax
	setbe	%al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end62:
	.size	_ZN9__gnu_cxxleIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, .Lfunc_end62-_ZN9__gnu_cxxleIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_,"axG",@progbits,_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_,comdat
	.weak	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_ # -- Begin function _ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_
	.p2align	4, 0x90
	.type	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_,@function
_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_: # @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	-8(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	_ZN9__gnu_cxxeqIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	testb	$1, %al
	jne	.LBB63_1
	jmp	.LBB63_2
.LBB63_1:
	jmp	.LBB63_9
.LBB63_2:
	leaq	-8(%rbp), %rdi
	movl	$1, %esi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl
	movq	%rax, -32(%rbp)
.LBB63_3:                               # =>This Inner Loop Header: Depth=1
	leaq	-32(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	testb	$1, %al
	jne	.LBB63_4
	jmp	.LBB63_9
.LBB63_4:                               #   in Loop: Header=BB63_3 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	leaq	-17(%rbp), %rdi
	callq	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_
	testb	$1, %al
	jne	.LBB63_5
	jmp	.LBB63_6
.LBB63_5:                               #   in Loop: Header=BB63_3 Depth=1
	leaq	-32(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	leaq	-32(%rbp), %rdi
	movl	$1, %esi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rdx
	callq	_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_
	movq	%rax, -88(%rbp)
	movsd	-56(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)               # 8-byte Spill
	leaq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	movsd	-112(%rbp), %xmm0               # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	jmp	.LBB63_7
.LBB63_6:                               #   in Loop: Header=BB63_3 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE
	movq	-96(%rbp), %rdi
	callq	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops14_Val_less_iterEEvT_T0_
.LBB63_7:                               #   in Loop: Header=BB63_3 Depth=1
	jmp	.LBB63_8
.LBB63_8:                               #   in Loop: Header=BB63_3 Depth=1
	leaq	-32(%rbp), %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv
	jmp	.LBB63_3
.LBB63_9:
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end63:
	.size	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_, .Lfunc_end63-_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_,"axG",@progbits,_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_,comdat
	.weak	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_ # -- Begin function _ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_
	.p2align	4, 0x90
	.type	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_,@function
_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_: # @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-16(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	callq	_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	cmpq	$2, %rax
	jge	.LBB64_2
# %bb.1:
	jmp	.LBB64_6
.LBB64_2:
	leaq	-16(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	callq	_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	subq	$2, %rax
	movl	$2, %ecx
	cqto
	idivq	%rcx
	movq	%rax, -40(%rbp)
.LBB64_3:                               # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rsi
	leaq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl
	movq	%rax, -56(%rbp)
	leaq	-56(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movsd	-48(%rbp), %xmm0                # xmm0 = mem[0],zero
	movq	-64(%rbp), %rdi
	callq	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_
	cmpq	$0, -40(%rbp)
	jne	.LBB64_5
# %bb.4:
	jmp	.LBB64_6
.LBB64_5:                               #   in Loop: Header=BB64_3 Depth=1
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB64_3
.LBB64_6:
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end64:
	.size	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_, .Lfunc_end64-_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxxltIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,"axG",@progbits,_ZN9__gnu_cxxltIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,comdat
	.weak	_ZN9__gnu_cxxltIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_ # -- Begin function _ZN9__gnu_cxxltIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxxltIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,@function
_ZN9__gnu_cxxltIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_: # @_ZN9__gnu_cxxltIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	movq	%rax, %rcx
	movq	-24(%rbp), %rax                 # 8-byte Reload
	cmpq	(%rcx), %rax
	setb	%al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end65:
	.size	_ZN9__gnu_cxxltIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, .Lfunc_end65-_ZN9__gnu_cxxltIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_,"axG",@progbits,_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_,comdat
	.weak	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_ # -- Begin function _ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_,@function
_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_: # @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rsi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rdi, -24(%rbp)
	leaq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)                # 8-byte Spill
	leaq	-16(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	movsd	-32(%rbp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end66:
	.size	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_, .Lfunc_end66-_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_,"axG",@progbits,_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_,comdat
	.weak	_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_ # -- Begin function _ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_
	.p2align	4, 0x90
	.type	_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_,@function
_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_: # @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	leaq	-24(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	leaq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)                # 8-byte Spill
	leaq	-24(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	movsd	-64(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-16(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	callq	_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	movq	%rax, %rdx
	movsd	-40(%rbp), %xmm0                # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end67:
	.size	_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_, .Lfunc_end67-_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv,comdat
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv # -- Begin function _ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv,@function
_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv: # @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	addq	$8, %rcx
	movq	%rcx, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end68:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv, .Lfunc_end68-_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_,"axG",@progbits,_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_,comdat
	.weak	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_ # -- Begin function _ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_
	.p2align	4, 0x90
	.type	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_,@function
_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_: # @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB69_1:                               # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)                # 8-byte Spill
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movl	$2, %ecx
	cqto
	idivq	%rcx
	movq	%rax, %rcx
	movq	-128(%rbp), %rax                # 8-byte Reload
	cmpq	%rcx, %rax
	jge	.LBB69_5
# %bb.2:                                #   in Loop: Header=BB69_1 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	shlq	%rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rsi
	leaq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rsi
	subq	$1, %rsi
	leaq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	leaq	-9(%rbp), %rdi
	callq	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_
	testb	$1, %al
	jne	.LBB69_3
	jmp	.LBB69_4
.LBB69_3:                               #   in Loop: Header=BB69_1 Depth=1
	movq	-56(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
.LBB69_4:                               #   in Loop: Header=BB69_1 Depth=1
	movq	-56(%rbp), %rsi
	leaq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl
	movq	%rax, -80(%rbp)
	leaq	-80(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)               # 8-byte Spill
	movq	-24(%rbp), %rsi
	leaq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl
	movq	%rax, -88(%rbp)
	leaq	-88(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	movsd	-136(%rbp), %xmm0               # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB69_1
.LBB69_5:
	movq	-32(%rbp), %rax
	andq	$1, %rax
	cmpq	$0, %rax
	jne	.LBB69_8
# %bb.6:
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)                # 8-byte Spill
	movq	-32(%rbp), %rax
	subq	$2, %rax
	movl	$2, %ecx
	cqto
	idivq	%rcx
	movq	%rax, %rcx
	movq	-144(%rbp), %rax                # 8-byte Reload
	cmpq	%rcx, %rax
	jne	.LBB69_8
# %bb.7:
	movq	-56(%rbp), %rax
	addq	$1, %rax
	shlq	%rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rsi
	subq	$1, %rsi
	leaq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl
	movq	%rax, -96(%rbp)
	leaq	-96(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)               # 8-byte Spill
	movq	-24(%rbp), %rsi
	leaq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl
	movq	%rax, -104(%rbp)
	leaq	-104(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	movsd	-152(%rbp), %xmm0               # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	movq	-56(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -24(%rbp)
.LBB69_8:
	leaq	-105(%rbp), %rdi
	callq	_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movsd	-40(%rbp), %xmm0                # xmm0 = mem[0],zero
	movq	-120(%rbp), %rdi
	leaq	-105(%rbp), %rcx
	callq	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops14_Iter_less_valEEvT_T0_SA_T1_RT2_
	addq	$160, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end69:
	.size	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_, .Lfunc_end69-_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE,"axG",@progbits,_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE,comdat
	.weak	_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE # -- Begin function _ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE,@function
_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE: # @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end70:
	.size	_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE, .Lfunc_end70-_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops14_Iter_less_valEEvT_T0_SA_T1_RT2_,"axG",@progbits,_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops14_Iter_less_valEEvT_T0_SA_T1_RT2_,comdat
	.weak	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops14_Iter_less_valEEvT_T0_SA_T1_RT2_ # -- Begin function _ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops14_Iter_less_valEEvT_T0_SA_T1_RT2_
	.p2align	4, 0x90
	.type	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops14_Iter_less_valEEvT_T0_SA_T1_RT2_,@function
_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops14_Iter_less_valEEvT_T0_SA_T1_RT2_: # @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops14_Iter_less_valEEvT_T0_SA_T1_RT2_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rax
	subq	$1, %rax
	movl	$2, %ecx
	cqto
	idivq	%rcx
	movq	%rax, -48(%rbp)
.LBB71_1:                               # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	-24(%rbp), %rcx
	movb	%al, -81(%rbp)                  # 1-byte Spill
	jle	.LBB71_3
# %bb.2:                                #   in Loop: Header=BB71_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	movq	-48(%rbp), %rsi
	leaq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl
	movq	-96(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	callq	_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEbT_RT0_
	movb	%al, -81(%rbp)                  # 1-byte Spill
.LBB71_3:                               #   in Loop: Header=BB71_1 Depth=1
	movb	-81(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB71_4
	jmp	.LBB71_5
.LBB71_4:                               #   in Loop: Header=BB71_1 Depth=1
	movq	-48(%rbp), %rsi
	leaq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl
	movq	%rax, -64(%rbp)
	leaq	-64(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)               # 8-byte Spill
	movq	-16(%rbp), %rsi
	leaq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl
	movq	%rax, -72(%rbp)
	leaq	-72(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	movsd	-104(%rbp), %xmm0               # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	$1, %rax
	movl	$2, %ecx
	cqto
	idivq	%rcx
	movq	%rax, -48(%rbp)
	jmp	.LBB71_1
.LBB71_5:
	movsd	-32(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)               # 8-byte Spill
	movq	-16(%rbp), %rsi
	leaq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl
	movq	%rax, -80(%rbp)
	leaq	-80(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	movsd	-112(%rbp), %xmm0               # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end71:
	.size	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops14_Iter_less_valEEvT_T0_SA_T1_RT2_, .Lfunc_end71-_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops14_Iter_less_valEEvT_T0_SA_T1_RT2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEbT_RT0_,"axG",@progbits,_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEbT_RT0_,comdat
	.weak	_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEbT_RT0_ # -- Begin function _ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEbT_RT0_
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEbT_RT0_,@function
_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEbT_RT0_: # @_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEbT_RT0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rsi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	movsd	(%rax), %xmm1                   # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end72:
	.size	_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEbT_RT0_, .Lfunc_end72-_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEbT_RT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt4swapIdENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_,"axG",@progbits,_ZSt4swapIdENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_,comdat
	.weak	_ZSt4swapIdENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_ # -- Begin function _ZSt4swapIdENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_
	.p2align	4, 0x90
	.type	_ZSt4swapIdENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_,@function
_ZSt4swapIdENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_: # @_ZSt4swapIdENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-24(%rbp), %xmm0                # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end73:
	.size	_ZSt4swapIdENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_, .Lfunc_end73-_ZSt4swapIdENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_,"axG",@progbits,_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_,comdat
	.weak	_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_ # -- Begin function _ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_
	.p2align	4, 0x90
	.type	_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_,@function
_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_: # @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	leaq	-33(%rbp), %rdi
	callq	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_
	testb	$1, %al
	jne	.LBB74_1
	jmp	.LBB74_8
.LBB74_1:
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	leaq	-33(%rbp), %rdi
	callq	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_
	testb	$1, %al
	jne	.LBB74_2
	jmp	.LBB74_3
.LBB74_2:
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_
	jmp	.LBB74_7
.LBB74_3:
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rsi
	movq	-104(%rbp), %rdx
	leaq	-33(%rbp), %rdi
	callq	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_
	testb	$1, %al
	jne	.LBB74_4
	jmp	.LBB74_5
.LBB74_4:
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_
	jmp	.LBB74_6
.LBB74_5:
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_
.LBB74_6:
	jmp	.LBB74_7
.LBB74_7:
	jmp	.LBB74_15
.LBB74_8:
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-144(%rbp), %rsi
	movq	-152(%rbp), %rdx
	leaq	-33(%rbp), %rdi
	callq	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_
	testb	$1, %al
	jne	.LBB74_9
	jmp	.LBB74_10
.LBB74_9:
	movq	-8(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_
	jmp	.LBB74_14
.LBB74_10:
	movq	-24(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-176(%rbp), %rsi
	movq	-184(%rbp), %rdx
	leaq	-33(%rbp), %rdi
	callq	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_
	testb	$1, %al
	jne	.LBB74_11
	jmp	.LBB74_12
.LBB74_11:
	movq	-8(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-192(%rbp), %rdi
	movq	-200(%rbp), %rsi
	callq	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_
	jmp	.LBB74_13
.LBB74_12:
	movq	-8(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-208(%rbp), %rdi
	movq	-216(%rbp), %rsi
	callq	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_
.LBB74_13:
	jmp	.LBB74_14
.LBB74_14:
	jmp	.LBB74_15
.LBB74_15:
	addq	$224, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end74:
	.size	_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_, .Lfunc_end74-_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_S9_T0_,"axG",@progbits,_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_S9_T0_,comdat
	.weak	_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_S9_T0_ # -- Begin function _ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_S9_T0_
	.p2align	4, 0x90
	.type	_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_S9_T0_,@function
_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_S9_T0_: # @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_S9_T0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
.LBB75_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB75_2 Depth 2
                                        #     Child Loop BB75_5 Depth 2
	jmp	.LBB75_2
.LBB75_2:                               #   Parent Loop BB75_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	leaq	-33(%rbp), %rdi
	callq	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_
	testb	$1, %al
	jne	.LBB75_3
	jmp	.LBB75_4
.LBB75_3:                               #   in Loop: Header=BB75_2 Depth=2
	leaq	-16(%rbp), %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv
	jmp	.LBB75_2
.LBB75_4:                               #   in Loop: Header=BB75_1 Depth=1
	leaq	-24(%rbp), %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmmEv
.LBB75_5:                               #   Parent Loop BB75_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	leaq	-33(%rbp), %rdi
	callq	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_
	testb	$1, %al
	jne	.LBB75_6
	jmp	.LBB75_7
.LBB75_6:                               #   in Loop: Header=BB75_5 Depth=2
	leaq	-24(%rbp), %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmmEv
	jmp	.LBB75_5
.LBB75_7:                               #   in Loop: Header=BB75_1 Depth=1
	leaq	-16(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZN9__gnu_cxxltIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	testb	$1, %al
	jne	.LBB75_9
# %bb.8:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB75_9:                               #   in Loop: Header=BB75_1 Depth=1
	.cfi_def_cfa %rbp, 16
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_
	leaq	-16(%rbp), %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv
	jmp	.LBB75_1
.Lfunc_end75:
	.size	_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_S9_T0_, .Lfunc_end75-_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_S9_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmmEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmmEv,comdat
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmmEv # -- Begin function _ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmmEv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmmEv,@function
_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmmEv: # @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmmEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	addq	$-8, %rcx
	movq	%rcx, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end76:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmmEv, .Lfunc_end76-_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmmEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,"axG",@progbits,_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,comdat
	.weak	_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_ # -- Begin function _ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,@function
_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_: # @_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	movq	%rax, %rcx
	movq	-24(%rbp), %rax                 # 8-byte Reload
	cmpq	(%rcx), %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end77:
	.size	_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, .Lfunc_end77-_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_,"axG",@progbits,_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_,comdat
	.weak	_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_ # -- Begin function _ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_
	.p2align	4, 0x90
	.type	_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_,@function
_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_: # @_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET1_T0_S8_S7_
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end78:
	.size	_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_, .Lfunc_end78-_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops14_Val_less_iterEEvT_T0_,"axG",@progbits,_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops14_Val_less_iterEEvT_T0_,comdat
	.weak	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops14_Val_less_iterEEvT_T0_ # -- Begin function _ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops14_Val_less_iterEEvT_T0_
	.p2align	4, 0x90
	.type	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops14_Val_less_iterEEvT_T0_,@function
_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops14_Val_less_iterEEvT_T0_: # @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops14_Val_less_iterEEvT_T0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	leaq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmmEv
.LBB79_1:                               # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdx
	leaq	-9(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdNS_17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbRT_T0_
	testb	$1, %al
	jne	.LBB79_2
	jmp	.LBB79_3
.LBB79_2:                               #   in Loop: Header=BB79_1 Depth=1
	leaq	-32(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)                # 8-byte Spill
	leaq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	movsd	-48(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	-32(%rbp), %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmmEv
	jmp	.LBB79_1
.LBB79_3:
	movsd	-24(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)                # 8-byte Spill
	leaq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	movsd	-56(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end79:
	.size	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops14_Val_less_iterEEvT_T0_, .Lfunc_end79-_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops14_Val_less_iterEEvT_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE,"axG",@progbits,_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE,comdat
	.weak	_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE # -- Begin function _ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE,@function
_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE: # @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end80:
	.size	_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE, .Lfunc_end80-_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET1_T0_S8_S7_,"axG",@progbits,_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET1_T0_S8_S7_,comdat
	.weak	_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET1_T0_S8_S7_ # -- Begin function _ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET1_T0_S8_S7_
	.p2align	4, 0x90
	.type	_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET1_T0_S8_S7_,@function
_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET1_T0_S8_S7_: # @_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET1_T0_S8_S7_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	movq	-72(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZSt23__copy_move_backward_a1ILb1EPdS0_ET1_T0_S2_S1_
	movq	%rax, %rsi
	movq	-40(%rbp), %rdi
	callq	_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET_S7_T0_
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end81:
	.size	_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET1_T0_S8_S7_, .Lfunc_end81-_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET1_T0_S8_S7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_,"axG",@progbits,_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_,comdat
	.weak	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_ # -- Begin function _ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_
	.p2align	4, 0x90
	.type	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_,@function
_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_: # @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end82:
	.size	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_, .Lfunc_end82-_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET_S7_T0_,"axG",@progbits,_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET_S7_T0_,comdat
	.weak	_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET_S7_T0_ # -- Begin function _ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET_S7_T0_
	.p2align	4, 0x90
	.type	_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET_S7_T0_,@function
_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET_S7_T0_: # @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET_S7_T0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE
	movq	-40(%rbp), %rsi                 # 8-byte Reload
	subq	%rax, %rsi
	sarq	$3, %rsi
	leaq	-16(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end83:
	.size	_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET_S7_T0_, .Lfunc_end83-_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET_S7_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt23__copy_move_backward_a1ILb1EPdS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt23__copy_move_backward_a1ILb1EPdS0_ET1_T0_S2_S1_,comdat
	.weak	_ZSt23__copy_move_backward_a1ILb1EPdS0_ET1_T0_S2_S1_ # -- Begin function _ZSt23__copy_move_backward_a1ILb1EPdS0_ET1_T0_S2_S1_
	.p2align	4, 0x90
	.type	_ZSt23__copy_move_backward_a1ILb1EPdS0_ET1_T0_S2_S1_,@function
_ZSt23__copy_move_backward_a1ILb1EPdS0_ET1_T0_S2_S1_: # @_ZSt23__copy_move_backward_a1ILb1EPdS0_ET1_T0_S2_S1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end84:
	.size	_ZSt23__copy_move_backward_a1ILb1EPdS0_ET1_T0_S2_S1_, .Lfunc_end84-_ZSt23__copy_move_backward_a1ILb1EPdS0_ET1_T0_S2_S1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE,"axG",@progbits,_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE,comdat
	.weak	_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE # -- Begin function _ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE
	.p2align	4, 0x90
	.type	_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE,@function
_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE: # @_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	movq	(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end85:
	.size	_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE, .Lfunc_end85-_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_,comdat
	.weak	_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_ # -- Begin function _ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_
	.p2align	4, 0x90
	.type	_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_,@function
_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_: # @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIddEEPT0_PT_S6_S4_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end86:
	.size	_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_, .Lfunc_end86-_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIddEEPT0_PT_S6_S4_,"axG",@progbits,_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIddEEPT0_PT_S6_S4_,comdat
	.weak	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIddEEPT0_PT_S6_S4_ # -- Begin function _ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIddEEPT0_PT_S6_S4_
	.p2align	4, 0x90
	.type	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIddEEPT0_PT_S6_S4_,@function
_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIddEEPT0_PT_S6_S4_: # @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIddEEPT0_PT_S6_S4_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	%rcx, %rax
	sarq	$3, %rax
	movq	%rax, -32(%rbp)
	cmpq	$1, -32(%rbp)
	jle	.LBB87_2
# %bb.1:
	movq	-24(%rbp), %rdi
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	-32(%rbp), %rax
	shlq	$3, %rax
	addq	%rax, %rdi
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rdx
	shlq	$3, %rdx
	callq	memmove@PLT
	jmp	.LBB87_5
.LBB87_2:
	cmpq	$1, -32(%rbp)
	jne	.LBB87_4
# %bb.3:
	movq	-24(%rbp), %rdi
	addq	$-8, %rdi
	movq	-8(%rbp), %rsi
	callq	_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE12__assign_oneIddEEvPT_PT0_
.LBB87_4:
	jmp	.LBB87_5
.LBB87_5:
	movq	-24(%rbp), %rax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	subq	-32(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end87:
	.size	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIddEEPT0_PT_S6_S4_, .Lfunc_end87-_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIddEEPT0_PT_S6_S4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE12__assign_oneIddEEvPT_PT0_,"axG",@progbits,_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE12__assign_oneIddEEvPT_PT0_,comdat
	.weak	_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE12__assign_oneIddEEvPT_PT0_ # -- Begin function _ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE12__assign_oneIddEEvPT_PT0_
	.p2align	4, 0x90
	.type	_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE12__assign_oneIddEEvPT_PT0_,@function
_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE12__assign_oneIddEEvPT_PT0_: # @_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE12__assign_oneIddEEvPT_PT0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end88:
	.size	_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE12__assign_oneIddEEvPT_PT0_, .Lfunc_end88-_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE12__assign_oneIddEEvPT_PT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx5__ops14_Val_less_iterclIdNS_17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbRT_T0_,"axG",@progbits,_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdNS_17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbRT_T0_,comdat
	.weak	_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdNS_17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbRT_T0_ # -- Begin function _ZNK9__gnu_cxx5__ops14_Val_less_iterclIdNS_17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbRT_T0_
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdNS_17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbRT_T0_,@function
_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdNS_17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbRT_T0_: # @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdNS_17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbRT_T0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdx, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)                # 8-byte Spill
	leaq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	movsd	-32(%rbp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end89:
	.size	_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdNS_17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbRT_T0_, .Lfunc_end89-_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdNS_17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbRT_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__bit_widthImEiT_,"axG",@progbits,_ZSt11__bit_widthImEiT_,comdat
	.weak	_ZSt11__bit_widthImEiT_         # -- Begin function _ZSt11__bit_widthImEiT_
	.p2align	4, 0x90
	.type	_ZSt11__bit_widthImEiT_,@function
_ZSt11__bit_widthImEiT_:                # @_ZSt11__bit_widthImEiT_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$64, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZSt13__countl_zeroImEiT_
	movl	%eax, %ecx
	movl	$64, %eax
	subl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end90:
	.size	_ZSt11__bit_widthImEiT_, .Lfunc_end90-_ZSt11__bit_widthImEiT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt13__countl_zeroImEiT_,"axG",@progbits,_ZSt13__countl_zeroImEiT_,comdat
	.weak	_ZSt13__countl_zeroImEiT_       # -- Begin function _ZSt13__countl_zeroImEiT_
	.p2align	4, 0x90
	.type	_ZSt13__countl_zeroImEiT_,@function
_ZSt13__countl_zeroImEiT_:              # @_ZSt13__countl_zeroImEiT_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	$64, -20(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB91_2
# %bb.1:
	movl	$64, -4(%rbp)
	jmp	.LBB91_3
.LBB91_2:
	movl	$64, -24(%rbp)
	movl	$64, -28(%rbp)
	movl	$32, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-16(%rbp), %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
                                        # kill: def $eax killed $eax killed $rax
	subl	$0, %eax
	movl	%eax, -4(%rbp)
.LBB91_3:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end91:
	.size	_ZSt13__countl_zeroImEiT_, .Lfunc_end91-_ZSt13__countl_zeroImEiT_
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"n="
	.size	.L.str, 3

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	", trials="
	.size	.L.str.1, 10

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	", median="
	.size	.L.str.2, 10

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	" ms, checksum="
	.size	.L.str.3, 15

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"\n"
	.size	.L.str.4, 2

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"vector::reserve"
	.size	.L.str.5, 16

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"vector::_M_realloc_insert"
	.size	.L.str.6, 26

	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3, 0x0
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _ZNSt8ios_base15sync_with_stdioEb
	.addrsig_sym _ZNSt9basic_iosIcSt11char_traitsIcEE3tieEPSo
	.addrsig_sym __isoc23_strtoul
	.addrsig_sym atoi
	.addrsig_sym _ZL13factorial_modj
	.addrsig_sym _ZNSt6vectorIdSaIdEE7reserveEm
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _ZNSt6chrono3_V212steady_clock3nowEv
	.addrsig_sym _ZNSt6vectorIdSaIdEE9push_backEOd
	.addrsig_sym _ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.addrsig_sym _ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv
	.addrsig_sym _ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_
	.addrsig_sym _ZNSt6vectorIdSaIdEE5beginEv
	.addrsig_sym _ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl
	.addrsig_sym _ZNKSt6vectorIdSaIdEE4sizeEv
	.addrsig_sym _ZNSt6vectorIdSaIdEE3endEv
	.addrsig_sym _ZNSt6vectorIdSaIdEEixEm
	.addrsig_sym _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	.addrsig_sym _ZNSolsEj
	.addrsig_sym _ZNSolsEi
	.addrsig_sym _ZNSolsEd
	.addrsig_sym _ZNSolsEm
	.addrsig_sym _ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.addrsig_sym _ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.addrsig_sym _ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.addrsig_sym _ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	.addrsig_sym _ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE
	.addrsig_sym _ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	.addrsig_sym __clang_call_terminate
	.addrsig_sym __cxa_begin_catch
	.addrsig_sym _ZSt9terminatev
	.addrsig_sym _ZSt8_DestroyIPdEvT_S1_
	.addrsig_sym _ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_
	.addrsig_sym _ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
	.addrsig_sym _ZNSt15__new_allocatorIdE10deallocateEPdm
	.addrsig_sym _ZdlPv
	.addrsig_sym _ZNKSt6vectorIdSaIdEE8max_sizeEv
	.addrsig_sym _ZSt20__throw_length_errorPKc
	.addrsig_sym _ZNKSt6vectorIdSaIdEE8capacityEv
	.addrsig_sym _ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm
	.addrsig_sym _ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_
	.addrsig_sym _ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_
	.addrsig_sym _ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	.addrsig_sym _ZSt3minImERKT_S2_S2_
	.addrsig_sym _ZNSt15__new_allocatorIdE8allocateEmPKv
	.addrsig_sym _ZSt28__throw_bad_array_new_lengthv
	.addrsig_sym _ZSt17__throw_bad_allocv
	.addrsig_sym _Znwm
	.addrsig_sym _ZSt12__relocate_aIPdS0_SaIdEET0_T_S3_S2_RT1_
	.addrsig_sym _ZSt14__relocate_a_1IddENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E
	.addrsig_sym _ZSt12__niter_baseIPdET_S1_
	.addrsig_sym _ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_
	.addrsig_sym _ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_
	.addrsig_sym _ZNSt6vectorIdSaIdEE4backEv
	.addrsig_sym _ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc
	.addrsig_sym _ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.addrsig_sym _ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	.addrsig_sym _ZSt3maxImERKT_S2_S2_
	.addrsig_sym _ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmiEl
	.addrsig_sym _ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	.addrsig_sym _ZN9__gnu_cxxeqIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.addrsig_sym _ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_
	.addrsig_sym _ZSt4__lgIlET_S0_
	.addrsig_sym _ZN9__gnu_cxx5__ops16__iter_less_iterEv
	.addrsig_sym _ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_
	.addrsig_sym _ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_
	.addrsig_sym _ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_
	.addrsig_sym _ZN9__gnu_cxxleIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.addrsig_sym _ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_
	.addrsig_sym _ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_
	.addrsig_sym _ZN9__gnu_cxxltIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.addrsig_sym _ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_
	.addrsig_sym _ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_
	.addrsig_sym _ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv
	.addrsig_sym _ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_
	.addrsig_sym _ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops14_Iter_less_valEEvT_T0_SA_T1_RT2_
	.addrsig_sym _ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEbT_RT0_
	.addrsig_sym _ZSt4swapIdENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_
	.addrsig_sym _ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_
	.addrsig_sym _ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_S9_T0_
	.addrsig_sym _ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmmEv
	.addrsig_sym _ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.addrsig_sym _ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_
	.addrsig_sym _ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops14_Val_less_iterEEvT_T0_
	.addrsig_sym _ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE
	.addrsig_sym _ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET1_T0_S8_S7_
	.addrsig_sym _ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_
	.addrsig_sym _ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET_S7_T0_
	.addrsig_sym _ZSt23__copy_move_backward_a1ILb1EPdS0_ET1_T0_S2_S1_
	.addrsig_sym _ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE
	.addrsig_sym _ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_
	.addrsig_sym _ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIddEEPT0_PT_S6_S4_
	.addrsig_sym _ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE12__assign_oneIddEEvPT_PT0_
	.addrsig_sym _ZNK9__gnu_cxx5__ops14_Val_less_iterclIdNS_17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbRT_T0_
	.addrsig_sym _ZSt11__bit_widthImEiT_
	.addrsig_sym _ZSt13__countl_zeroImEiT_
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZSt3cin
	.addrsig_sym _ZSt4cout
