.section .data
	msg:
		.ascii "Hello World\n"
	.equ String_len,13

.section .text
.globl _start
_start:
	movl $4, 	  %eax
	movl $1,  	  %ebx
	movl $msg,	  %ecx
	movl $String_len, %edx
	int $0x80

	movl $1, %eax
	movl $0, %ebx
	int $0x80
