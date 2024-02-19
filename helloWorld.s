.section .text
.global _start

_start:
    ;Execute the write syscall to print text to file descriptor #1 (STDOUT)
    MOV X0, #1          ;File Descriptor #1
    LDR X1, =message    ;Load the message into register X1
    LDR X2, =messageLen ;Load the message length into resiter X2
    MOV W8, $64         ;Specify syscall number 64 in the W8 register
    SVC #0              ;Execute the syscall

    ;Execute the Exit syscall in below code chunk
    MOV X0, #0          ;Set the return value to 0
    MOV W8, #93         ;Specify syscall #93 in the W8 register
    SVC #0              ;Execute the syscall

message:
    .asciz "What's up peeps! I'm doing syscalls now :P"

messageLen = .-message