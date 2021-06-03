
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


COMMENT ! Programa para imprimir en pantalla
        utilizando el codigo 9H de la interrupción 21H
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
        mensaje DB 'Programa que suma dos NUMEROS', 13, 10, '$'
        msgResultado DB 'La suma es: ', 13, 10, '$'
        resultadoSuma DB '0'
        ;NUM DB 3
        ;NUM DB 2
        ;Message DB 'Bienvenido, a ensamblador', 13, 10, '$'
        ;OtroTipoMsg DB 'Otro forma de cadena',0DH,0ah,'$' 
        ;Cadena DB 13,10,'Es una cadena de tipo DB = BYTE','$'
.CODE 
.STARTUP ;DIRECTIVA para el inicio de ensamblador
        mov ax, @data
        mov ds, ax

        mov dx, OFFSET mensaje
        mov ah, 9h   
        int 21h 

        ;MOV CL, 3 ;asigno los valores
        ;MOV DL, 2

        ;ADD CL, DL

        MOV DL, 12H
        ADD DL, 33H
        INC DL

        MOV AL, 2h
        MOV BL, 4H
        MUL BL ;Verificar el resultado del registro de 16 bits AX

        MOV dx, OFFSET msgResultado
        mov ah, 9h
        int 21h

        ADD CL, 48 ;es para desplazarnos en los caracteres imprimibles del codigo 
        MOV resultadoSuma, CL

        MOV AH, 2h ;imprimir en pantalla un caracter segun el registro DL
        MOV DL, resultadoSuma
        INT 21h

        mov ax, 4c00h
        int 21h
.EXIT ;DIRECTIVA donde terminará el ensablador
END  