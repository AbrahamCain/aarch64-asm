.global _start

_start:
    MOV X1, #1              ;X1 = 1
    MOV X2, #2              ;X2 = 2
    MOV X3, #3              ;X3 = 3
    MOV X4, #4              ;X4 = 4
    CMP X1, X2              ;Compare 1 - 2 (set the N flag)
    CSEL X3, X1, X2, EQ     ;If the Equal condition was met in the CPSR bits, X3 = X1, Else X3 = X2

    MOV X1, #1  ;X1 = 1
    MOV X3, #2  ;X3 = 2
    CMP X1, #22 ;Compare 1 - 22 (Set the N flag)
    CSET X3, LE ;If Less Than, Set X3 to 1

    MOV X1, #20             ;X1 = 20
    MOV X2, #21             ;X2 = 21
    ADD X3, X1, X2          ;X3 = 20 + 21 = 41
    MOV X4, #4              ;X4 = 4
    CMP X1, #21             ;Compare 20 - 21 (Set the N flag)
    CSINC X3, X1, X3, GT    ;If Greater Than -> X3 = X1, Else -> X3 = X3 + 1
