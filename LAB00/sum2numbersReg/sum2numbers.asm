.MODEL small
.STACK
.DATA
    dato1 DW 10
    dato2 DW 24
RESULT DW ?
.CODE
.STARTUP
MOV AX, dato1
ADD AX, dato2
MOV RESULT, AX
.EXIT
END