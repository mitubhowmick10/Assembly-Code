segment .data
	a: dq 19
	b: dq 19
	st: db "this is the sum %d",10,0
segment .text
	global main
	extern printf
main: 
	push rbp
	mov rdi ,st
	mov rax,0
	add rax,[a]
	add rax,[b]
	mov rsi,rax
	mov rax, 0
	call printf
	mov rax,0
	pop rbp
	ret

