ORG 1000H
MSJ DB "AC Informatica"
    DB 55H
    DB 4EH
    DB 4CH
    DB 50H
FIN DB ?

ORG 2000H
MOV BX, OFFSET MSJ;En bx almacena la direccion de mem donde empieza a imprimir
MOV AL, OFFSET FIN-OFFSET MSJ;En al guarda la cant de caracteres a imprimir
INT 7
INT 0
END
