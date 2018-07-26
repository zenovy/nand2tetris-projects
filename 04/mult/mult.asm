// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
// Set output to 0
@R2
M=0
(START)
// Jump if R1 == 0
@R1
D=M
@END
D;JEQ
// Set R0 to D
@R0
D=M
// Add D to R2
@R2
M=M+D
// Reduce R1
@R1
M=M-1
// Jump to start
@START
0;JMP
// End
(END)
@END
0;JMP
