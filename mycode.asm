
data segment
 loopcount EQU 10D
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
 
   mov ax,data
   mov ds,ax
   mov es,ax
   MOV BX,0000H
   mov cx,loopcount
   
    _LOOP:
      
      INC BX
      DEC CX
   JNZ CX _LOOP  
 
 
 
 
 
 
ends

end start 
