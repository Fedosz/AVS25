	.file	"avs25.c"
	.intel_syntax noprefix
	.text
	.globl	countWords
	.type	countWords, @function
countWords:
.LFB6:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r14
	push	r13
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	mov	DWORD PTR -36[rbp], edi
	mov	QWORD PTR -48[rbp], rsi
	mov	r14d, 0
	mov	DWORD PTR -24[rbp], 0
	jmp	.L2
.L11:
	mov	DWORD PTR -20[rbp], 0
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	add	rax, 1
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	mov	r13d, eax
	mov	BYTE PTR -25[rbp], 1
	jmp	.L3
.L10:
	mov	eax, r13d
	cmp	al, 64
	jle	.L4
	mov	eax, r13d
	cmp	al, 90
	jle	.L5
.L4:
	mov	eax, r13d
	cmp	al, 96
	jle	.L6
	mov	eax, r13d
	cmp	al, 122
	jg	.L6
.L5:
	cmp	BYTE PTR -25[rbp], 0
	je	.L8
	mov	eax, r14d
	add	eax, 1
	mov	r14d, eax
	mov	BYTE PTR -25[rbp], 0
	jmp	.L8
.L6:
	mov	eax, r13d
	cmp	al, 47
	jle	.L9
	mov	eax, r13d
	cmp	al, 57
	jle	.L8
.L9:
	mov	BYTE PTR -25[rbp], 1
.L8:
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	add	rax, 1
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	mov	r13d, eax
.L3:
	mov	eax, r13d
	test	al, al
	jne	.L10
	add	DWORD PTR -24[rbp], 1
.L2:
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, 1
	cmp	DWORD PTR -24[rbp], eax
	jl	.L11
	mov	eax, r14d
	pop	r13
	pop	r14
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	countWords, .-countWords
	.section	.rodata
.LC0:
	.string	" - "
.LC1:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 136
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	mov	DWORD PTR -116[rbp], edi
	mov	QWORD PTR -128[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -56[rbp], rax
	xor	eax, eax
	mov	rax, rsp
	mov	r15, rax
	mov	rdx, QWORD PTR -128[rbp]
	mov	eax, DWORD PTR -116[rbp]
	mov	rsi, rdx
	mov	edi, eax
	call	countWords
	mov	r14d, eax
	mov	eax, r14d
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -88[rbp], rdx
	movsx	rdx, eax
	mov	QWORD PTR -144[rbp], rdx
	mov	QWORD PTR -136[rbp], 0
	movsx	rdx, eax
	mov	r12, rdx
	mov	r13d, 0
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	esi, 16
	mov	edx, 0
	div	rsi
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
.L14:
	cmp	rsp, rdx
	je	.L15
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L14
.L15:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L16
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L16:
	mov	rax, rsp
	add	rax, 7
	shr	rax, 3
	sal	rax, 3
	mov	QWORD PTR -80[rbp], rax
	mov	r12d, 0
	mov	eax, r14d
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -72[rbp], rdx
	movsx	rdx, eax
	mov	QWORD PTR -160[rbp], rdx
	mov	QWORD PTR -152[rbp], 0
	movsx	rdx, eax
	mov	QWORD PTR -176[rbp], rdx
	mov	QWORD PTR -168[rbp], 0
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	ebx, 16
	mov	edx, 0
	div	rbx
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
.L17:
	cmp	rsp, rdx
	je	.L18
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L17
.L18:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L19
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L19:
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -64[rbp], rax
	mov	DWORD PTR -96[rbp], 0
	jmp	.L20
.L21:
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -96[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], 0
	add	DWORD PTR -96[rbp], 1
.L20:
	mov	eax, r14d
	cmp	DWORD PTR -96[rbp], eax
	jl	.L21
	mov	DWORD PTR -96[rbp], 0
	jmp	.L22
.L34:
	mov	DWORD PTR -92[rbp], 0
	mov	eax, DWORD PTR -96[rbp]
	cdqe
	add	rax, 1
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -128[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -92[rbp]
	cdqe
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	mov	r13d, eax
	mov	edx, r12d
	mov	rax, QWORD PTR -64[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], 0
	mov	BYTE PTR -97[rbp], 1
	jmp	.L23
.L32:
	mov	eax, r13d
	cmp	al, 64
	jle	.L24
	mov	eax, r13d
	cmp	al, 90
	jle	.L25
.L24:
	mov	eax, r13d
	cmp	al, 96
	jle	.L26
	mov	eax, r13d
	cmp	al, 122
	jg	.L26
.L25:
	mov	eax, r12d
	mov	rdx, QWORD PTR -64[rbp]
	movsx	rcx, eax
	mov	edx, DWORD PTR [rdx+rcx*4]
	lea	ecx, 1[rdx]
	mov	rdx, QWORD PTR -64[rbp]
	cdqe
	mov	DWORD PTR [rdx+rax*4], ecx
	cmp	BYTE PTR -97[rbp], 0
	je	.L28
	mov	BYTE PTR -97[rbp], 0
	jmp	.L28
.L26:
	mov	eax, r13d
	cmp	al, 47
	jle	.L29
	mov	eax, r13d
	cmp	al, 57
	jg	.L29
	movzx	eax, BYTE PTR -97[rbp]
	xor	eax, 1
	test	al, al
	je	.L28
	mov	eax, r12d
	mov	rdx, QWORD PTR -64[rbp]
	movsx	rcx, eax
	mov	edx, DWORD PTR [rdx+rcx*4]
	lea	ecx, 1[rdx]
	mov	rdx, QWORD PTR -64[rbp]
	cdqe
	mov	DWORD PTR [rdx+rax*4], ecx
	jmp	.L28
.L29:
	movzx	eax, BYTE PTR -97[rbp]
	xor	eax, 1
	test	al, al
	je	.L31
	mov	edx, r12d
	mov	rax, QWORD PTR -64[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	cdqe
	mov	ebx, r12d
	mov	rdi, rax
	call	malloc@PLT
	mov	rcx, rax
	mov	rax, QWORD PTR -80[rbp]
	movsx	rdx, ebx
	mov	QWORD PTR [rax+rdx*8], rcx
	mov	eax, r12d
	add	eax, 1
	mov	r12d, eax
.L31:
	mov	BYTE PTR -97[rbp], 1
.L28:
	add	DWORD PTR -92[rbp], 1
	mov	eax, DWORD PTR -96[rbp]
	cdqe
	add	rax, 1
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -128[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -92[rbp]
	cdqe
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	mov	r13d, eax
.L23:
	mov	eax, r13d
	test	al, al
	jne	.L32
	movzx	eax, BYTE PTR -97[rbp]
	xor	eax, 1
	test	al, al
	je	.L33
	mov	edx, r12d
	mov	rax, QWORD PTR -64[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	cdqe
	mov	ebx, r12d
	mov	rdi, rax
	call	malloc@PLT
	mov	rcx, rax
	mov	rax, QWORD PTR -80[rbp]
	movsx	rdx, ebx
	mov	QWORD PTR [rax+rdx*8], rcx
	mov	eax, r12d
	add	eax, 1
	mov	r12d, eax
.L33:
	add	DWORD PTR -96[rbp], 1
.L22:
	mov	eax, DWORD PTR -116[rbp]
	sub	eax, 1
	cmp	DWORD PTR -96[rbp], eax
	jl	.L34
	mov	r12d, 0
	mov	r11d, 0
	mov	DWORD PTR -96[rbp], 0
	jmp	.L35
.L46:
	mov	DWORD PTR -92[rbp], 0
	mov	eax, DWORD PTR -96[rbp]
	cdqe
	add	rax, 1
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -128[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -92[rbp]
	cdqe
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	mov	r13d, eax
	mov	BYTE PTR -97[rbp], 1
	jmp	.L36
.L45:
	mov	eax, r13d
	cmp	al, 64
	jle	.L37
	mov	eax, r13d
	cmp	al, 90
	jle	.L38
.L37:
	mov	eax, r13d
	cmp	al, 96
	jle	.L39
	mov	eax, r13d
	cmp	al, 122
	jg	.L39
.L38:
	mov	edx, r12d
	mov	rax, QWORD PTR -80[rbp]
	movsx	rdx, edx
	mov	rdx, QWORD PTR [rax+rdx*8]
	mov	eax, r11d
	cdqe
	add	rax, rdx
	mov	edx, r13d
	mov	BYTE PTR [rax], dl
	mov	eax, r11d
	add	eax, 1
	mov	r11d, eax
	cmp	BYTE PTR -97[rbp], 0
	je	.L41
	mov	BYTE PTR -97[rbp], 0
	jmp	.L41
.L39:
	mov	eax, r13d
	cmp	al, 47
	jle	.L42
	mov	eax, r13d
	cmp	al, 57
	jg	.L42
	movzx	eax, BYTE PTR -97[rbp]
	xor	eax, 1
	test	al, al
	je	.L41
	mov	edx, r12d
	mov	rax, QWORD PTR -80[rbp]
	movsx	rdx, edx
	mov	rdx, QWORD PTR [rax+rdx*8]
	mov	eax, r11d
	cdqe
	add	rax, rdx
	mov	edx, r13d
	mov	BYTE PTR [rax], dl
	mov	eax, r11d
	add	eax, 1
	mov	r11d, eax
	jmp	.L41
.L42:
	movzx	eax, BYTE PTR -97[rbp]
	xor	eax, 1
	test	al, al
	je	.L44
	mov	eax, r12d
	add	eax, 1
	mov	r12d, eax
	mov	r11d, 0
.L44:
	mov	BYTE PTR -97[rbp], 1
.L41:
	add	DWORD PTR -92[rbp], 1
	mov	eax, DWORD PTR -96[rbp]
	cdqe
	add	rax, 1
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -128[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -92[rbp]
	cdqe
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	mov	r13d, eax
.L36:
	mov	eax, r13d
	test	al, al
	jne	.L45
	add	DWORD PTR -96[rbp], 1
.L35:
	mov	eax, DWORD PTR -116[rbp]
	sub	eax, 1
	cmp	DWORD PTR -96[rbp], eax
	jl	.L46
	mov	r12d, 0
	mov	r9d, 0
	mov	DWORD PTR -96[rbp], 0
	jmp	.L47
.L61:
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -96[rbp]
	movsx	rdx, edx
	mov	rax, QWORD PTR [rax+rdx*8]
	movzx	eax, BYTE PTR [rax]
	cmp	al, 33
	je	.L66
	mov	DWORD PTR -92[rbp], 0
	jmp	.L49
.L50:
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -96[rbp]
	movsx	rdx, edx
	mov	rdx, QWORD PTR [rax+rdx*8]
	mov	eax, DWORD PTR -92[rbp]
	cdqe
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	edi, eax
	call	putchar@PLT
	add	DWORD PTR -92[rbp], 1
.L49:
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -96[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	cmp	DWORD PTR -92[rbp], eax
	jl	.L50
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	r10d, 1
	mov	eax, DWORD PTR -96[rbp]
	add	eax, 1
	mov	DWORD PTR -92[rbp], eax
	jmp	.L53
.L60:
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -96[rbp]
	movsx	rdx, edx
	mov	ecx, DWORD PTR [rax+rdx*4]
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -92[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	cmp	ecx, eax
	jne	.L67
	mov	r9d, 0
	jmp	.L56
.L59:
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -96[rbp]
	movsx	rdx, edx
	mov	rdx, QWORD PTR [rax+rdx*8]
	mov	eax, r9d
	cdqe
	add	rax, rdx
	movzx	ecx, BYTE PTR [rax]
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -92[rbp]
	movsx	rdx, edx
	mov	rdx, QWORD PTR [rax+rdx*8]
	mov	eax, r9d
	cdqe
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	cl, al
	jne	.L68
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -96[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	sub	eax, 1
	mov	edx, r9d
	cmp	eax, edx
	jne	.L58
	mov	eax, r10d
	add	eax, 1
	mov	r10d, eax
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -92[rbp]
	movsx	rdx, edx
	mov	rax, QWORD PTR [rax+rdx*8]
	mov	BYTE PTR [rax], 33
.L58:
	mov	eax, r9d
	add	eax, 1
	mov	r9d, eax
.L56:
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -96[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	mov	edx, r9d
	cmp	eax, edx
	jg	.L59
	jmp	.L55
.L67:
	nop
	jmp	.L55
.L68:
	nop
.L55:
	add	DWORD PTR -92[rbp], 1
.L53:
	mov	eax, r14d
	cmp	DWORD PTR -92[rbp], eax
	jl	.L60
	mov	eax, r10d
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L52
.L66:
	nop
.L52:
	add	DWORD PTR -96[rbp], 1
.L47:
	mov	eax, r14d
	cmp	DWORD PTR -96[rbp], eax
	jl	.L61
	mov	DWORD PTR -96[rbp], 0
	jmp	.L62
.L63:
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -96[rbp]
	movsx	rdx, edx
	mov	rax, QWORD PTR [rax+rdx*8]
	mov	rdi, rax
	call	free@PLT
	add	DWORD PTR -96[rbp], 1
.L62:
	mov	eax, r14d
	cmp	DWORD PTR -96[rbp], eax
	jl	.L63
	mov	eax, 0
	mov	rsp, r15
	mov	rdx, QWORD PTR -56[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L65
	call	__stack_chk_fail@PLT
.L65:
	lea	rsp, -40[rbp]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
