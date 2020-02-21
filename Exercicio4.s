	.file	"Exercicio4.c"
	.text
	.section	.rodata
.LC0:
	.string	"Insira o nome completo: "
.LC1:
	.string	"%[^\n]%*c"
.LC2:
	.string	"\nVogais: %d\nConsoantes: %d\n"
.LC3:
	.string	"Nome: "
.LC4:
	.string	"\tApelido: "
.LC5:
	.string	"\nReverse:"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$7307211820097561924, %r8
	movl	$1868851555, %r9d
	movq	%r8, -256(%rbp)
	movq	%r9, -248(%rbp)
	leaq	-240(%rbp), %rdx
	movl	$0, %eax
	movl	$13, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%r8, -128(%rbp)
	movq	%r9, -120(%rbp)
	leaq	-112(%rbp), %rdx
	movl	$0, %eax
	movl	$13, %ecx
	movq	%rdx, %rdi
	rep stosq
	movl	$0, -280(%rbp)
	movl	-280(%rbp), %eax
	movl	%eax, -284(%rbp)
	movl	-284(%rbp), %eax
	movl	%eax, -288(%rbp)
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-256(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	$0, -276(%rbp)
	jmp	.L2
.L8:
	movl	-276(%rbp), %eax
	cltq
	movzbl	-256(%rbp,%rax), %eax
	cmpb	$97, %al
	je	.L3
	movl	-276(%rbp), %eax
	cltq
	movzbl	-256(%rbp,%rax), %eax
	cmpb	$65, %al
	je	.L3
	movl	-276(%rbp), %eax
	cltq
	movzbl	-256(%rbp,%rax), %eax
	cmpb	$101, %al
	je	.L3
	movl	-276(%rbp), %eax
	cltq
	movzbl	-256(%rbp,%rax), %eax
	cmpb	$69, %al
	je	.L3
	movl	-276(%rbp), %eax
	cltq
	movzbl	-256(%rbp,%rax), %eax
	cmpb	$105, %al
	je	.L3
	movl	-276(%rbp), %eax
	cltq
	movzbl	-256(%rbp,%rax), %eax
	cmpb	$73, %al
	je	.L3
	movl	-276(%rbp), %eax
	cltq
	movzbl	-256(%rbp,%rax), %eax
	cmpb	$111, %al
	je	.L3
	movl	-276(%rbp), %eax
	cltq
	movzbl	-256(%rbp,%rax), %eax
	cmpb	$79, %al
	je	.L3
	movl	-276(%rbp), %eax
	cltq
	movzbl	-256(%rbp,%rax), %eax
	cmpb	$117, %al
	je	.L3
	movl	-276(%rbp), %eax
	cltq
	movzbl	-256(%rbp,%rax), %eax
	cmpb	$85, %al
	jne	.L4
.L3:
	addl	$1, -288(%rbp)
	jmp	.L5
.L4:
	movl	-276(%rbp), %eax
	cltq
	movzbl	-256(%rbp,%rax), %eax
	cmpb	$96, %al
	jle	.L6
	movl	-276(%rbp), %eax
	cltq
	movzbl	-256(%rbp,%rax), %eax
	cmpb	$122, %al
	jle	.L7
.L6:
	movl	-276(%rbp), %eax
	cltq
	movzbl	-256(%rbp,%rax), %eax
	cmpb	$64, %al
	jle	.L5
	movl	-276(%rbp), %eax
	cltq
	movzbl	-256(%rbp,%rax), %eax
	cmpb	$90, %al
	jg	.L5
.L7:
	addl	$1, -284(%rbp)
.L5:
	addl	$1, -276(%rbp)
.L2:
	movl	-276(%rbp), %eax
	cltq
	movzbl	-256(%rbp,%rax), %eax
	testb	%al, %al
	jne	.L8
	movl	-284(%rbp), %edx
	movl	-288(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -272(%rbp)
	jmp	.L9
.L10:
	movl	-272(%rbp), %eax
	cltq
	movzbl	-256(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar@PLT
	addl	$1, -272(%rbp)
.L9:
	movl	-272(%rbp), %eax
	cltq
	movzbl	-256(%rbp,%rax), %eax
	cmpb	$32, %al
	jne	.L10
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -268(%rbp)
	jmp	.L11
.L14:
	movl	-268(%rbp), %eax
	cltq
	movzbl	-256(%rbp,%rax), %eax
	cmpb	$32, %al
	jne	.L12
.L13:
	addl	$1, -268(%rbp)
	movl	-268(%rbp), %eax
	cltq
	movzbl	-256(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar@PLT
	movl	-268(%rbp), %eax
	cltq
	movzbl	-256(%rbp,%rax), %eax
	testb	%al, %al
	jne	.L13
.L12:
	addl	$1, -268(%rbp)
.L11:
	movl	-268(%rbp), %eax
	cltq
	movzbl	-256(%rbp,%rax), %eax
	testb	%al, %al
	jne	.L14
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -264(%rbp)
	jmp	.L15
.L16:
	addl	$1, -280(%rbp)
	addl	$1, -264(%rbp)
.L15:
	movl	-264(%rbp), %eax
	cltq
	movzbl	-256(%rbp,%rax), %eax
	cmpb	$32, %al
	jne	.L16
	movl	-280(%rbp), %eax
	movl	%eax, -260(%rbp)
	jmp	.L17
.L18:
	movl	-260(%rbp), %eax
	cltq
	movzbl	-256(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar@PLT
	subl	$1, -260(%rbp)
.L17:
	cmpl	$0, -260(%rbp)
	jns	.L18
	movl	$10, %edi
	call	putchar@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L20
	call	__stack_chk_fail@PLT
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
