
;Instrucciones de un Ensamblador
;MOV operando destino, operando origen
;    Guardar un dato
;    Mover un dato
 ;   Llevar un dato a una memoria
 ;   Transferir la dirección de una variable

 ;   MOV AX, 5
   ; MOV BX, AX
 ;   MOV AX, 3
 ;   MOV CX, BX
;

;ADD operando destino, operando fuente
 ;   acumuladorA = 3
 ;   acumulador = acumulador+1
 ;   MOV CX, 3
 ;   ADD CX, 5 

;;INT 21h interrupciones ms-dos /// INT 80h
 ;   MOV AH, 9H ;código para mandar a imprimir un mensaje en pantalla
 ;   MOV AH, 4C00H ;termina la ventana de comandos
  ;  MOV AH, 2h ;Imprimir en pantalla un caracter segun el registro DL
  ;  MOV AH, 1h ;lee caracter del teclado


COMMENT !
        Sumar dos numeros por teclado y mostrar resultado
        Autor: Mi nombre
        Fecha: Hoy en formato dd/MM/yyyy
        !
;DIRECTIVAS de ensmablador por acuerdo se escribiran en MAYUSCULAS y en la primera columna de la izquierda
COMMENT ! SUMAR DOS NUMEROS
        !
 
.MODEL SMALL
.586
.STACK  100h
.DATA
        ;variables se definde dentro del .DATA 
        titulo DB 'Programa que suma dos NUMEROS por teclado', 13, 10, '$'
        m1 DB 13,10, 'Introducir primer numero: $'
        m2 DB 13,10, 'Introducir segundo numero: $'
        num1 DB '0'
        num2 DB '0'
        resultadoSuma DB '0'
        msgSuma DB 13,10,'La suma es: $'
.CODE 
.STARTUP ;DIRECTIVA para el inicio de ensamblador
        mov ax, @data
        mov ds, ax

        mov dx, OFFSET titulo
        mov ah, 9h   
        int 21h 

        mov dx, OFFSET m1
        mov ah, 9h
        int 21h

        mov AH, 01H
        INT 21H
        SUB AL, 30H
        mov num1, al

        ;REPETIR PARA NUM2 
        mov dx, OFFSET m2
        mov ah, 9h
        int 21h

        mov AH, 01H
        INT 21H
        SUB AL, 30H
        mov num2, al

        add al, num1 ;alternativa: mov cl, num1     mov ch, num2 add cl, ch
        mov resultadoSuma, al

        mov dx, OFFSET msgSuma
        mov ah, 9h
        int 21h

        mov dl, resultadoSuma
        MOV AH, 02H
        INT 21H

        mov ax, 4c00h
        int 21h
.EXIT ;DIRECTIVA donde terminará el ensablador
END  