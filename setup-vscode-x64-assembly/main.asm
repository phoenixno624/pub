; hello.asm
section .data
    msg     db  "Hello, World!", 0xa, 0  ; message w/newline and null terminator
section .bss
section .text
    global  main
main:
push rbp
mov rbp, rsp        ; for correct debugging

    mov rax, 1      ; 1 = write
    mov rdi, 1      ; 1 = to stdout
    mov rsi, msg    ; string to display in rsi
    mov rdx, 14     ; length of the string, without 0
    syscall         ; display the string

mov rsp, rbp
pop rbp
ret