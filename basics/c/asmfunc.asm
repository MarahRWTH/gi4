extern printf ; externe Funktion printf deklarieren

SECTION .data
	msg db 'Hello from asmfunc!',10,0 

SECTION .text

; oeffentliche Funktionen deklarieren
	global asmfunc

; Funktionen implementieren
asmfunc : 
	push rbp		; neuer Stackframe erzeugen
	mov rbp, rsp

	mov rdi, msg
	call printf

	; Rückgabewert auf 0 setzen
	mov eax, 0
	
	mov rsp, rbp		; alter Stackframe restaurieren
	pop rbp 
	ret			; Ruecksprung zum Aufrufer
