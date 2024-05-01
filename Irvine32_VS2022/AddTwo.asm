INCLUDE Irvine32.inc

.data

.code
main proc
	mov	eax,5 ; assign 5 to eax
	add	eax,6 ; add 6 to eax

	invoke ExitProcess,0
main endp
end main