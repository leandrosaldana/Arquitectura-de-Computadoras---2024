ORG 1000h
mensaje db "Hola Buenas Tardes"
cant db ?
ORG 2000h
mov AL,0 ; va a ser el contador
mov CL, offset cant - offset mensaje ; cantidad de caracteres
mov BX, offset mensaje
bucle: 
      cmp byte PTR [BX], 61h ;61h es el valor hexadecimal de "a"
      jnz noEsA
      inc AL
noEsA: 
      inc BX
      dec CL
      jnz bucle
mov cant, AL ;almaceno en la variable la cantidad de "a"
hlt
end
