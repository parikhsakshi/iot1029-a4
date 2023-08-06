.global _start

.equ agrade, 90
.equ bgrade, 75
.equ cgrade, 50

_start:

    MOV R5, #99
    LDR R6, =agrade
    LDR R7, =bgrade
    LDR R8, =cgrade

    LDR R1, =amessage
    LDR R2, =alen
    MOV R7, #4
    SWI 0

    MOV R1, #1
    SWI 0

.data
amessage:
    .asciz "Congratulations, you got an A. \n"
alen = .-amessage
    .asciz "Good job! You got a B.\n"
alen = .-amessage 
    .asciz "Not bad, you got a C.\n"
alen = .-amessage
    .asciz "Sorry, you got an F.\n"
alen = .-amessage    