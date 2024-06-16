.section .bss
    .comm buffer,15 # comma memory
.section .text
.globl _start
_start:
    # read syscall for taking user input
    movl $3,%eax # syscall number
    movl $0,%ebx # file descriptor for input
    movl $buffer,%ecx # buffer pointer
    movl $15,%edx     # buffer size
    int $0x80
    # write syscall for printing the buffer
    movl $4,%eax
    movl $1,%ebx
    movl $buffer,%ecx
    movl $15,%edx
    int $0x80
    # exit syscall to exit the program
    movl $1,%eax
    movl $0,%ebx
    int $0x80
    