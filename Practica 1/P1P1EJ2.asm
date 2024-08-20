ORG 1000h
c db "S"
res db ?

ORG 3000H
NoEsMayus: MOV byte ptr [offset res],0
jmp Fin

ORG 2000h
mov AL,C ; paso la letra al registro
cmp AL,41h; comparo con A mayus
js NoEsMayus ; salta si es menor a 48h
cmp AL,5Ah;comparo con Z mayus
jns NoEsMayus ; salta si es mayor a 5Ah
mov byte ptr [offset res],0ffh


Fin: hlt
end
