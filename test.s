.intel_syntax noprefix
.globl main
main:
        mov rax, 1
        mov rdi, 1
        lea rsi, [rip+msg]
        mov rdx, 13
        syscall
        mov rax, 0
        ret

msg:
    .ascii "Hello, World\n"
