
data segment
 SONUC DB 00H
 SAYI EQU 04D  

ends

stack segment
    dw   128  dup(0)
ends

code segment   
    FAKTORIYEL_AL PROC NEAR
    CMP BL,00H
    JZ BIR
    CMP BL,01H
    JZ BIR
    dec bl
    DONGU:
      mul bl
      dec bl
      cmp bl,00h
    
    JNZ DONGU 
    JMP CIKIS
    BIR:
    MOV AX,0001H
    CIKIS:
    RET
FAKTORIYEL_AL ENDP
    
START:

    MOV AX, DATA
    MOV DS, AX
    MOV ES, AX 
    
    MOV BX,0000H
    MOV BL,SAYI
    MOV AL,BL
    CALL FAKTORIYEL_AL
    lea SI,SONUC
    MOV [SI],AX  

ENDS
END START
HLT