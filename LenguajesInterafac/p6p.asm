COMMENT ! Sumar dos numeros
        !
.MODEL SMALL
.586
.STACK  100h
.DATA
        Message DB 'Programa que resta tres numeros', 13, 10, '$'
        msgResultado DB 'La resta es: ',13,10, '$'
        num1 DB '0'
        num2 DB '0'
        num2 DB '0'
        resultadoResta DB '0'
.CODE 
        .STARTUP 
                mov ax, @data
                mov ds, ax

                mov dx, OFFSET Message
                mov ah, 9h
                int 21h

                ;Num1
                mov dx, OFFSET num1
                mov ah, 9h
                int 21h

                mov AH, 01H
                INT 21H
                SUB AL, 30H
                mov al, num1

                ;Num2
                mov dx, OFFSET num2
                mov ah, 9h
                int 21h

                mov AH, 01H
                INT 21H
                SUB AL, 30H
                mov num2, bl

                sub bl, al

                ;Num3
                mov dx, OFFSET num3
                mov ah, 9h
                int 21h

                MOV AH, 01H
                INT 21h
                SUB AL, 30H
                mov num3, cl

                sub cl, bl

                mov resultadoSuma, cl
                mov dl, resultadoSuma
                MOV AH, 02H
                INT 21H
                
                mov resultado                
                mov ax, 4c00h
                int 21h
        .EXIT 
END