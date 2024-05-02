INCLUDE Irvine32.inc

.data
	bufffer BYTE "Hello, World!",0 ; string to be displayed
.code

main PROC
	mov edx,OFFSET bufffer ; load the offset of the string into edx
	call WriteString ; display the string
	call Crlf ; display a carriage return and line feed
	call WaitMsg ; display "Press any key to continue..."
	Invoke ExitProcess,0 ; exit the program
main ENDP
END main