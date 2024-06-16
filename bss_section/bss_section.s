.section .bss
    .comm buffer,15 # comma memory
.section .text
.globl _start
_start:
    # read syscall for taking user input
    # write syscall for printing the buffer
    