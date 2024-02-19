.global _start

_start:
  MOV X1, #1    ;X1 = 1
  MOV X2, #2    ;X2 = 2
  MOV X3, #3    ;X3 = 3
  MOV X4, #4    ;X4 = 4
  MOV W5, #5    ;W5 = 5
  MOV W6, #6    ;W6 = 6
  MOV W7, #7    ;W7 = 7
  MOV W8, #8    ;W8 = 8
  STP X0, X1, [SP, #-0x10]! ;SP = SP - 16 --> Store X0 at (SP) --> Store X1 at (SP+8)
  SUB SP, SP, 0x10          ;SP = SP - 16
  STP W5, W6, [SP]          ;Store W5 at SP --> Store W6 at (SP + 8)
  STP W7, W8, [SP, #0x10]   ;Store W7 at (SP + 16) --> Store W8 at (SP + 24)
  LDP X0, X1, [SP], #0x10   ;Load the value at SP into X0 --> Load the value at SP + 8 into X1 --> SP = SP + 16
  NOP                       ;Do nothing
