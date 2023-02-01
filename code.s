.section .data
txt:	.ascii "ahamiat=0\n"
.equ len, . - txt
.section .text
.globl _start

_start:
pushq %rbp
movq $1, %rax
movq $len, %rdx
movq $1, %rdi
movq $txt, %rsi
syscall

popq %rbp
movq $0, %rdi
movq $60, %rax
syscall
