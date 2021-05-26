.global _start
.section .text

_start:
	mov r7, #4
	mov r0, #0
	ldr r1, =msg
	mov r2, #12
	swi 0

	mov r7, #1
	mov r0, #0
	swi 0

.section .data
msg:
	.ascii "hello world\n"
