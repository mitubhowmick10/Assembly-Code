segment .data
	M: db "Moon-Munna",10, 0
	fmt:db "%s",10,0

segment .text
	global main
	extern printf
main:
	push rbp
	mov rdi,fmt
	mov rsi,M
	mov rax,0
	call printf
	mov rax,0
	pop rbp
	ret
	

