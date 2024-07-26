.section .text
.globl _start
_start:
	nop
	movl $25,%eax
	movw $4,%bx
	movb $1,%cl
	
	movl $1,%eax
	movl $0,%ebx
	int $0x80
