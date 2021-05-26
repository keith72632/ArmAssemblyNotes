.section .text
.global _start

_start:
    mov r7, #1
    mov r0, #7
    svc 0
