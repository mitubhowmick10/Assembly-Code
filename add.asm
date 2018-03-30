segment .data
  a: dq 10
  b: dq 20
  res: dq 0
  st: db "The result of addition : %d",0
  fmt: db "%s",10,0

segment .text
	global main
	extern printf

main: 
	push rbp
	mov rdi, st
	mov rax,0
	add rax,[a]
	add rax,[b]
	mov rsi, rax
	mov rax,0
	call printf
	mov rax, 0
	pop rbp
	ret
