.section .text
.global _start

_start:
    ldr r0, =var1
    ldr r0, [r0, #8]
    mov r7, #1
    swi 0

.section .data
var1: .word 1
var2: .word 2
var3: .word 3
