DIM EQU 10
.MODEL small
.STACK
.DATA
TAVOLA DB DIM*DIM DUP (?)   ;LA PARENTESI QUI E' MOLTO IMPORTANTE
.CODE
.STARTUP
MOV CH,1        ;Tabellina dell'..
MOV CL,1        ;Moltiplicata per ..
XOR BX,BX
XOR SI,SI
XOR AH,AH

ciclo:
MOV AL,CH
MUL CL
MOV TAVOLA[BX][SI],AL   
INC CL
INC SI
CMP SI,DIM
JNZ ciclo

INC CH
MOV CL,1
XOR SI,SI
ADD BX,DIM
CMP BX,DIM*DIM
JNZ ciclo

.EXIT
END