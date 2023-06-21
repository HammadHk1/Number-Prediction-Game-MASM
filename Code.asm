;##################;
; HAMMAD KHALID    ;
; PREDICTION GAME  ;           
;##################;

.model small
.stack 100h
.data
var1 db ?
space db 10,13,'$'
MSG db 'Enter Random Number to Guess',10,13,'$' 
.code
start:
	mov ax,@data
	mov ds,ax
		;USING 07H TO TAKE INPUT FROM THE USER WITHOUT ECHO...
		mov ah,07h
		int 21h
		mov var1,al
		mov dx,offset space
		mov ah,09h
		int 21h
		mov dx,offset MSG
		mov ah,09h
		int 21h
		;SETTING THE VALUES FOR THE SI DI TO 
		mov si,0
		mov di,3
		;FIRST JMP TO TAKE INPUT FROM THE USER TO START THE GAME AND MATCH WITH LAST ENTERED NUMBER.....
		L1:
		   cmp si,di  ;COMPARING THE VALUES TO COMPLETE THREE CHANCES GIVEN TO USER...
           je exit
		   mov ah,01h
		   int 21h
		   cmp var1,al ;IF CONDITION STATISFIES THEN IT JUMPS TO WINING CONDITION AND EXIT THE PROGRAM....
           je won
		   
           mov dx,offset space
		   mov ah,09h
		   int 21h		   
		   mov dl,'F' ;IF USER ENTERS WRONG MESSAGE THEN IT DISPLAY 'F' ON SCREEN.........
		   mov ah,02h
		   int 21h
		   mov dx,offset space
		   mov ah,09h
		   int 21h
		   inc si
		jmp L1
	;JUMP FOR THE PLAYER IF HE Won THIS NUMBER PREDICTION GAME....
	Won:
	mov dx,offset space
	mov ah,09h
	int 21h
	mov dl,'W'
    mov ah,02h
    int 21h	
    mov ah,4ch
	int 21h
	;LAST WHEN IT COMPLETES ITS THREE CHANCES IT DISPLAY 'L' ON SCREEN AND EXIT THE PROGRAM....
    exit:
	mov dx,offset space
	mov ah,09h
	int 21h
    mov dl,'L'
    mov ah,02h
    int 21h	
    mov ah,4ch
	int 21h
end start
