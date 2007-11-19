.globl _Null_Node
	.const
	.align 2
_Null_Node:
	.space 12
	.cstring
LC0:
	.ascii "size\0"
	.text
_rx_ary_size:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	%ebx, -12(%ebp)
	movl	%esi, -8(%ebp)
	movl	%edi, -4(%ebp)
	call	L6
"L00000000001$pb":
L6:
	popl	%ebx
	movl	%eax, %esi
	leal	LC0-"L00000000001$pb"(%ebx), %edi
	movl	%edi, (%esp)
	call	L_rb_intern$stub
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	L_rb_funcall$stub
	testb	$1, %al
	je	L2
	movl	%edi, (%esp)
	call	L_rb_intern$stub
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	L_rb_funcall$stub
	sarl	%eax
	jmp	L4
L2:
	leal	LC0-"L00000000001$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	L_rb_intern$stub
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	L_rb_funcall$stub
	movl	%eax, (%esp)
	call	L_rb_num2long$stub
L4:
	movl	-12(%ebp), %ebx
	movl	-8(%ebp), %esi
	movl	-4(%ebp), %edi
	leave
	ret
_problem_free:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	subl	$16, %esp
	movl	8(%ebp), %edi
	cmpl	$0, (%edi)
	jle	L8
	movl	4(%edi), %eax
	movl	%eax, (%esp)
	call	L_free$stub
	cmpl	$0, (%edi)
	jle	L10
	movl	$0, %esi
L12:
	movl	8(%edi), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	L_free$stub
	incl	%esi
	cmpl	(%edi), %esi
	jl	L12
L10:
	movl	8(%edi), %eax
	movl	%eax, (%esp)
	call	L_free$stub
L8:
	movl	%edi, (%esp)
	call	L_free$stub
	addl	$16, %esp
	popl	%esi
	popl	%edi
	leave
	ret
	.cstring
	.align 2
LC1:
	.ascii "Not enough memory for allocating Libsvm::Problem.\0"
	.text
_problem_alloc:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$20, %esp
	call	L19
"L00000000002$pb":
L19:
	popl	%ebx
	movl	$12, 4(%esp)
	movl	$1, (%esp)
	call	L_calloc$stub
	movl	%eax, %edx
	testl	%eax, %eax
	jne	L16
	leal	LC1-"L00000000002$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	L_rb_eNoMemError$non_lazy_ptr-"L00000000002$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	L_rb_raise$stub
L16:
	leal	_problem_free-"L00000000002$pb"(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	L_rb_data_object_alloc$stub
	addl	$20, %esp
	popl	%ebx
	leave
	ret
_cProblem_l:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	subl	$20, %esp
	movl	8(%ebp), %esi
	movl	$34, 4(%esp)
	movl	%esi, (%esp)
	call	L_rb_check_type$stub
	movl	16(%esi), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	L_rb_int2inum$stub
	addl	$20, %esp
	popl	%esi
	leave
	ret
_cProblem_l_set:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%esi, -8(%ebp)
	movl	%edi, -4(%ebp)
	movl	8(%ebp), %esi
	movl	12(%ebp), %edi
	movl	$34, 4(%esp)
	movl	%esi, (%esp)
	call	L_rb_check_type$stub
	movl	16(%esi), %esi
	testl	$1, %edi
	je	L23
	movl	%edi, %eax
	sarl	%eax
	jmp	L25
L23:
	movl	%edi, (%esp)
	call	L_rb_num2long$stub
L25:
	movl	%eax, (%esi)
	movl	$4, %eax
	movl	-8(%ebp), %esi
	movl	-4(%ebp), %edi
	leave
	ret
	.cstring
	.align 2
LC2:
	.ascii "Number of labels (%i) does not match number of features (%i).\0"
LC3:
	.ascii "libsvm.c\0"
LC4:
	.ascii "%s:%i\0"
	.text
_cProblem_examples_set:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	call	L54
"L00000000003$pb":
L54:
	popl	%ebx
	movl	8(%ebp), %esi
	movl	12(%ebp), %eax
	call	_rx_ary_size
	movl	%eax, -36(%ebp)
	movl	16(%ebp), %eax
	call	_rx_ary_size
	cmpl	%eax, -36(%ebp)
	je	L28
	movl	16(%ebp), %eax
	call	_rx_ary_size
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	LC2-"L00000000003$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	L_rb_eArgError$non_lazy_ptr-"L00000000003$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	L_rb_raise$stub
L28:
	movl	$34, 4(%esp)
	movl	%esi, (%esp)
	call	L_rb_check_type$stub
	movl	16(%esi), %esi
	movl	%esi, -40(%ebp)
	cmpl	$0, (%esi)
	jle	L30
	movl	4(%esi), %eax
	movl	%eax, (%esp)
	call	L_free$stub
	cmpl	$0, -36(%ebp)
	je	L32
	movl	$0, %esi
L34:
	movl	-40(%ebp), %edx
	movl	8(%edx), %eax
	movl	(%eax,%esi,4), %eax
	movl	%eax, (%esp)
	call	L_free$stub
	incl	%esi
	cmpl	%esi, -36(%ebp)
	jne	L34
L32:
	movl	-40(%ebp), %ecx
	movl	8(%ecx), %eax
	movl	%eax, (%esp)
	call	L_free$stub
L30:
	movl	$8, 4(%esp)
	movl	-36(%ebp), %esi
	movl	%esi, (%esp)
	call	L_calloc$stub
	movl	-40(%ebp), %edx
	movl	%eax, 4(%edx)
	testl	%eax, %eax
	jne	L35
	movl	$92, 12(%esp)
	leal	LC3-"L00000000003$pb"(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	LC4-"L00000000003$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	L_rb_eNoMemError$non_lazy_ptr-"L00000000003$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	L_rb_raise$stub
L35:
	movl	$4, 4(%esp)
	movl	-36(%ebp), %ecx
	movl	%ecx, (%esp)
	call	L_calloc$stub
	movl	-40(%ebp), %esi
	movl	%eax, 8(%esi)
	testl	%eax, %eax
	jne	L37
	movl	$96, 12(%esp)
	leal	LC3-"L00000000003$pb"(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	LC4-"L00000000003$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	L_rb_eNoMemError$non_lazy_ptr-"L00000000003$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	L_rb_raise$stub
L39:
	movl	$0, -28(%ebp)
L40:
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	call	L_rb_ary_entry$stub
	movl	%eax, (%esp)
	call	L_rb_num2dbl$stub
	movl	-40(%ebp), %ecx
	movl	4(%ecx), %eax
	fstpl	(%eax)
	movl	-28(%ebp), %esi
	movl	%esi, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	L_rb_ary_entry$stub
	movl	%eax, %edi
	call	_rx_ary_size
	movl	%eax, -32(%ebp)
	movl	$12, 4(%esp)
	movl	%eax, (%esp)
	call	L_cmalloc$stub
	movl	%esi, %ecx
	sall	$2, %ecx
	movl	-40(%ebp), %esi
	movl	8(%esi), %edx
	movl	%eax, (%edx,%ecx)
	movl	8(%esi), %eax
	cmpl	$0, (%eax,%ecx)
	jne	L41
	movl	$108, 12(%esp)
	leal	LC3-"L00000000003$pb"(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	LC4-"L00000000003$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	L_rb_eNoMemError$non_lazy_ptr-"L00000000003$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	L_rb_raise$stub
L43:
	movl	$0, %esi
L44:
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	call	L_rb_ary_enttry$stub
	movl	$34, 4(%esp)
	movl	%eax, (%esp)
	call	L_rb_check_type$stub
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	call	L_rb_ary_enttry$stub
	movl	-40(%ebp), %ecx
	movl	8(%ecx), %edx
	movl	(%edx,%esi,4), %ecx
	movl	16(%eax), %edx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	8(%edx), %eax
	movl	%eax, 8(%ecx)
	incl	%esi
	cmpl	%esi, -32(%ebp)
	jne	L44
	movl	-32(%ebp), %edx
	incl	%edx
L46:
	movl	-40(%ebp), %esi
	movl	8(%esi), %eax
	movl	(%eax,%edx,4), %edx
	leal	_Null_Node-"L00000000003$pb"(%ebx), %ecx
	movl	_Null_Node-"L00000000003$pb"(%ebx), %eax
	movl	%eax, (%edx)
	movl	4(%ecx), %eax
	movl	%eax, 4(%edx)
	movl	8(%ecx), %eax
	movl	%eax, 8(%edx)
	incl	-28(%ebp)
	movl	-36(%ebp), %eax
	cmpl	%eax, -28(%ebp)
	je	L47
	jmp	L40
L37:
	cmpl	$0, -36(%ebp)
	je	L47
	jmp	L39
L41:
	movl	$1, %edx
	cmpl	$0, -32(%ebp)
	jle	L46
	jmp	L43
L47:
	movl	-36(%ebp), %ecx
	movl	-40(%ebp), %edx
	movl	%ecx, (%edx)
	movl	$4, %eax
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	leave
	ret
_node_free:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	L_free$stub
	leave
	ret
	.cstring
	.align 2
LC5:
	.ascii "Not enough memory for allocating Node.\0"
	.text
_node_alloc:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$20, %esp
	call	L61
"L00000000004$pb":
L61:
	popl	%ebx
	movl	$12, 4(%esp)
	movl	$1, (%esp)
	call	L_calloc$stub
	movl	%eax, %edx
	testl	%eax, %eax
	jne	L58
	leal	LC5-"L00000000004$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	L_rb_eNoMemError$non_lazy_ptr-"L00000000004$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	L_rb_raise$stub
L58:
	leal	_node_free-"L00000000004$pb"(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	L_rb_data_object_alloc$stub
	addl	$20, %esp
	popl	%ebx
	leave
	ret
_cNode_index:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	subl	$20, %esp
	movl	8(%ebp), %esi
	movl	$34, 4(%esp)
	movl	%esi, (%esp)
	call	L_rb_check_type$stub
	movl	16(%esi), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	L_rb_int2inum$stub
	addl	$20, %esp
	popl	%esi
	leave
	ret
_cNode_index_set:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%esi, -8(%ebp)
	movl	%edi, -4(%ebp)
	movl	8(%ebp), %esi
	movl	12(%ebp), %edi
	movl	$34, 4(%esp)
	movl	%esi, (%esp)
	call	L_rb_check_type$stub
	movl	16(%esi), %esi
	testl	$1, %edi
	je	L65
	movl	%edi, %eax
	sarl	%eax
	jmp	L67
L65:
	movl	%edi, (%esp)
	call	L_rb_num2long$stub
L67:
	movl	%eax, (%esi)
	movl	$4, %eax
	movl	-8(%ebp), %esi
	movl	-4(%ebp), %edi
	leave
	ret
_cNode_value:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	subl	$20, %esp
	movl	8(%ebp), %esi
	movl	$34, 4(%esp)
	movl	%esi, (%esp)
	call	L_rb_check_type$stub
	movl	16(%esi), %eax
	movsd	4(%eax), %xmm0
	movsd	%xmm0, (%esp)
	call	L_DBL2NUM$stub
	addl	$20, %esp
	popl	%esi
	leave
	ret
	.const
	.align 4
LC6:
	.long	0
	.long	1105199104
	.long	0
	.long	0
	.text
_cNode_value_set:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	%ebx, -8(%ebp)
	movl	%esi, -4(%ebp)
	call	L73
"L00000000005$pb":
L73:
	popl	%ebx
	movl	8(%ebp), %esi
	movl	$34, 4(%esp)
	movl	%esi, (%esp)
	call	L_rb_check_type$stub
	movl	16(%esi), %esi
	movl	12(%ebp), %eax
	subl	$2147483648, %eax
	movd	%eax, %xmm0
	cvtdq2pd	%xmm0, %xmm0
	movapd	%xmm0, %xmm1
	addsd	LC6-"L00000000005$pb"(%ebx), %xmm1
	movapd	%xmm1, -24(%ebp)
	fldl	-24(%ebp)
	fstpl	(%esp)
	call	L_rb_float_new$stub
	subl	$2147483648, %eax
	movd	%eax, %xmm0
	cvtdq2pd	%xmm0, %xmm0
	movapd	%xmm0, %xmm1
	addsd	LC6-"L00000000005$pb"(%ebx), %xmm1
	movapd	%xmm1, -40(%ebp)
	fldl	-40(%ebp)
	fstpl	4(%esi)
	movl	$4, %eax
	movl	-8(%ebp), %ebx
	movl	-4(%ebp), %esi
	leave
	ret
	.cstring
LC7:
	.ascii "Libsvm\0"
LC8:
	.ascii "Problem\0"
LC9:
	.ascii "l\0"
LC10:
	.ascii "l=\0"
LC11:
	.ascii "set_examples\0"
LC12:
	.ascii "SvmParameter\0"
LC13:
	.ascii "Node\0"
LC14:
	.ascii "index\0"
LC15:
	.ascii "index=\0"
LC16:
	.ascii "value\0"
LC17:
	.ascii "value=\0"
LC18:
	.ascii "KernelType\0"
LC19:
	.ascii "LINEAR\0"
LC20:
	.ascii "POLY\0"
LC21:
	.ascii "RBF\0"
LC22:
	.ascii "SIGMOID\0"
LC23:
	.ascii "PRECOMPUTED\0"
LC24:
	.ascii "SvmType\0"
LC25:
	.ascii "C_SVC\0"
LC26:
	.ascii "NU_SVC\0"
LC27:
	.ascii "ONE_CLASS\0"
LC28:
	.ascii "EPSILON_SVR\0"
LC29:
	.ascii "NU_SVR\0"
	.text
.globl _Init_libsvm
_Init_libsvm:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$16, %esp
	call	L76
"L00000000006$pb":
L76:
	popl	%ebx
	leal	LC7-"L00000000006$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	L_rb_define_module$stub
	movl	%eax, _mLibsvm-"L00000000006$pb"(%ebx)
	movl	L_rb_cObject$non_lazy_ptr-"L00000000006$pb"(%ebx), %esi
	movl	(%esi), %edx
	movl	%edx, 8(%esp)
	leal	LC8-"L00000000006$pb"(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	L_rb_define_class_under$stub
	movl	%eax, _cProblem-"L00000000006$pb"(%ebx)
	leal	_problem_alloc-"L00000000006$pb"(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	L_rb_define_alloc_func$stub
	movl	$0, 12(%esp)
	leal	_cProblem_l-"L00000000006$pb"(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	LC9-"L00000000006$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_cProblem-"L00000000006$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	L_rb_define_method$stub
	movl	$1, 12(%esp)
	leal	_cProblem_l_set-"L00000000006$pb"(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	LC10-"L00000000006$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_cProblem-"L00000000006$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	L_rb_define_method$stub
	movl	$2, 12(%esp)
	leal	_cProblem_examples_set-"L00000000006$pb"(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	LC11-"L00000000006$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_cProblem-"L00000000006$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	L_rb_define_method$stub
	movl	(%esi), %eax
	movl	%eax, 8(%esp)
	leal	LC12-"L00000000006$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_mLibsvm-"L00000000006$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	L_rb_define_class_under$stub
	movl	%eax, _cSvmParameter-"L00000000006$pb"(%ebx)
	movl	(%esi), %eax
	movl	%eax, 8(%esp)
	leal	LC13-"L00000000006$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_mLibsvm-"L00000000006$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	L_rb_define_class_under$stub
	movl	%eax, _cNode-"L00000000006$pb"(%ebx)
	leal	_node_alloc-"L00000000006$pb"(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	L_rb_define_alloc_func$stub
	movl	$0, 12(%esp)
	leal	_cNode_index-"L00000000006$pb"(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	LC14-"L00000000006$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_cNode-"L00000000006$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	L_rb_define_method$stub
	movl	$1, 12(%esp)
	leal	_cNode_index_set-"L00000000006$pb"(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	LC15-"L00000000006$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_cNode-"L00000000006$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	L_rb_define_method$stub
	movl	$0, 12(%esp)
	leal	_cNode_value-"L00000000006$pb"(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	LC16-"L00000000006$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_cNode-"L00000000006$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	L_rb_define_method$stub
	movl	$1, 12(%esp)
	leal	_cNode_value_set-"L00000000006$pb"(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	LC17-"L00000000006$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_cNode-"L00000000006$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	L_rb_define_method$stub
	leal	LC18-"L00000000006$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_mLibsvm-"L00000000006$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	L_rb_define_module_under$stub
	movl	%eax, _mKernelType-"L00000000006$pb"(%ebx)
	movl	$0, (%esp)
	call	L_rb_int2inum$stub
	movl	%eax, 8(%esp)
	leal	LC19-"L00000000006$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_mKernelType-"L00000000006$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	L_rb_define_const$stub
	movl	$1, (%esp)
	call	L_rb_int2inum$stub
	movl	%eax, 8(%esp)
	leal	LC20-"L00000000006$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_mKernelType-"L00000000006$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	L_rb_define_const$stub
	movl	$2, (%esp)
	call	L_rb_int2inum$stub
	movl	%eax, 8(%esp)
	leal	LC21-"L00000000006$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_mKernelType-"L00000000006$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	L_rb_define_const$stub
	movl	$3, (%esp)
	call	L_rb_int2inum$stub
	movl	%eax, 8(%esp)
	leal	LC22-"L00000000006$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_mKernelType-"L00000000006$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	L_rb_define_const$stub
	movl	$4, (%esp)
	call	L_rb_int2inum$stub
	movl	%eax, 8(%esp)
	leal	LC23-"L00000000006$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_mKernelType-"L00000000006$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	L_rb_define_const$stub
	leal	LC24-"L00000000006$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_mLibsvm-"L00000000006$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	L_rb_define_module_under$stub
	movl	%eax, _mSvmType-"L00000000006$pb"(%ebx)
	movl	$0, (%esp)
	call	L_rb_int2inum$stub
	movl	%eax, 8(%esp)
	leal	LC25-"L00000000006$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_mSvmType-"L00000000006$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	L_rb_define_const$stub
	movl	$1, (%esp)
	call	L_rb_int2inum$stub
	movl	%eax, 8(%esp)
	leal	LC26-"L00000000006$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_mSvmType-"L00000000006$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	L_rb_define_const$stub
	movl	$2, (%esp)
	call	L_rb_int2inum$stub
	movl	%eax, 8(%esp)
	leal	LC27-"L00000000006$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_mSvmType-"L00000000006$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	L_rb_define_const$stub
	movl	$3, (%esp)
	call	L_rb_int2inum$stub
	movl	%eax, 8(%esp)
	leal	LC28-"L00000000006$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_mSvmType-"L00000000006$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	L_rb_define_const$stub
	movl	$4, (%esp)
	call	L_rb_int2inum$stub
	movl	%eax, 8(%esp)
	leal	LC29-"L00000000006$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_mSvmType-"L00000000006$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	L_rb_define_const$stub
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	leave
	ret
.globl _mLibsvm
	.data
.zerofill __DATA, __common, _mLibsvm, 4, 2
.globl _mKernelType
	.data
.zerofill __DATA, __common, _mKernelType, 4, 2
.globl _mSvmType
	.data
.zerofill __DATA, __common, _mSvmType, 4, 2
.globl _cNode
	.data
.zerofill __DATA, __common, _cNode, 4, 2
.globl _cProblem
	.data
.zerofill __DATA, __common, _cProblem, 4, 2
.globl _cSvmParameter
	.data
.zerofill __DATA, __common, _cSvmParameter, 4, 2
	.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5
L_rb_int2inum$stub:
	.indirect_symbol _rb_int2inum
	hlt ; hlt ; hlt ; hlt ; hlt
	.section __IMPORT,__pointers,non_lazy_symbol_pointers
L_rb_cObject$non_lazy_ptr:
	.indirect_symbol _rb_cObject
	.long	0
	.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5
L_rb_ary_enttry$stub:
	.indirect_symbol _rb_ary_enttry
	hlt ; hlt ; hlt ; hlt ; hlt
L_rb_funcall$stub:
	.indirect_symbol _rb_funcall
	hlt ; hlt ; hlt ; hlt ; hlt
L_rb_num2long$stub:
	.indirect_symbol _rb_num2long
	hlt ; hlt ; hlt ; hlt ; hlt
L_rb_define_module$stub:
	.indirect_symbol _rb_define_module
	hlt ; hlt ; hlt ; hlt ; hlt
L_cmalloc$stub:
	.indirect_symbol _cmalloc
	hlt ; hlt ; hlt ; hlt ; hlt
L_rb_define_module_under$stub:
	.indirect_symbol _rb_define_module_under
	hlt ; hlt ; hlt ; hlt ; hlt
L_DBL2NUM$stub:
	.indirect_symbol _DBL2NUM
	hlt ; hlt ; hlt ; hlt ; hlt
L_rb_define_class_under$stub:
	.indirect_symbol _rb_define_class_under
	hlt ; hlt ; hlt ; hlt ; hlt
L_rb_ary_entry$stub:
	.indirect_symbol _rb_ary_entry
	hlt ; hlt ; hlt ; hlt ; hlt
L_rb_float_new$stub:
	.indirect_symbol _rb_float_new
	hlt ; hlt ; hlt ; hlt ; hlt
	.section __IMPORT,__pointers,non_lazy_symbol_pointers
L_rb_eNoMemError$non_lazy_ptr:
	.indirect_symbol _rb_eNoMemError
	.long	0
	.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5
L_rb_define_const$stub:
	.indirect_symbol _rb_define_const
	hlt ; hlt ; hlt ; hlt ; hlt
L_free$stub:
	.indirect_symbol _free
	hlt ; hlt ; hlt ; hlt ; hlt
L_rb_intern$stub:
	.indirect_symbol _rb_intern
	hlt ; hlt ; hlt ; hlt ; hlt
L_rb_define_method$stub:
	.indirect_symbol _rb_define_method
	hlt ; hlt ; hlt ; hlt ; hlt
L_rb_define_alloc_func$stub:
	.indirect_symbol _rb_define_alloc_func
	hlt ; hlt ; hlt ; hlt ; hlt
L_rb_raise$stub:
	.indirect_symbol _rb_raise
	hlt ; hlt ; hlt ; hlt ; hlt
	.section __IMPORT,__pointers,non_lazy_symbol_pointers
L_rb_eArgError$non_lazy_ptr:
	.indirect_symbol _rb_eArgError
	.long	0
	.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5
L_rb_check_type$stub:
	.indirect_symbol _rb_check_type
	hlt ; hlt ; hlt ; hlt ; hlt
L_calloc$stub:
	.indirect_symbol _calloc
	hlt ; hlt ; hlt ; hlt ; hlt
L_rb_data_object_alloc$stub:
	.indirect_symbol _rb_data_object_alloc
	hlt ; hlt ; hlt ; hlt ; hlt
L_rb_num2dbl$stub:
	.indirect_symbol _rb_num2dbl
	hlt ; hlt ; hlt ; hlt ; hlt
	.subsections_via_symbols
