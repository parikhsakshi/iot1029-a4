.global _start

.equ AGRADE, 90 
.equ BGRADE, 75
.equ CGRADE, 50

_start:

    MOV R5, #99 //Percentage grade in R5
    LDR R6, =AGRADE // A GRADE branching
    BL printf //Print "Congratulations! You got an A."
    B end
    LDR R7, =BGRADE //B GRADE branching
    BL printf //Print "Good job! You got a B."
    B end
    LDR R8, =CGRADE //C GRADE branching
    BL printf //Print "Not bad, you got a C."
    B end
    LDR R9, FGRADE //F GRADE branching
    BL printf //Print "Sorry, you got an F."

CMP R6, #A_GRADE //Comparing grade with A GRADE threshold
    BGE A_GRADE_BRANCH 
CMP R7, #B_GRADE //Comparing grade with B GRADE threshold
    BGE B_GRADE_BRANCH
CMP R8, #C_GRADE //Comparing grade with C GRADE threshold
    BGE C_GRADE_BRANCH


    LDR R1, =amessage //amessage will store in R1
    LDR R2, =alen // alen will store in R2
    MOV R7, #4
    SWI 0

    MOV R1, #1 //ending the program
    SWI 0

.data
amessage:
    .asciz "Congratulations, you got an A. \n" //message for A GRADE
alen = .-amessage
    .asciz "Good job! You got a B.\n" //message for B GRADE
alen = .-amessage 
    .asciz "Not bad, you got a C.\n" //message for C GRADE
alen = .-amessage
    .asciz "Sorry, you got an F.\n" //message for D GRADE
alen = .-amessage    