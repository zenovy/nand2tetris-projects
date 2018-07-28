// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

(START)
// Listen for keyboard input
@KBD
D=M
@EMPTYINIT
D;JEQ


// Fill screen
@KBD
D=-A
@SCREEN
D=D+A
(FILL)
@KBD
D=D+A
A=D
M=-1
D=D+1
// Jump if Screen Ptr == KBD
// D == SCREEN + 1
@KBD
D=D-A
@FILL
D;JLT
// Return
@START
0;JMP


(EMPTYINIT)
// Fill screen
@KBD
D=-A
@SCREEN
D=D+A
(EMPTY)
@KBD
D=D+A
A=D
M=0
D=D+1
// Jump if Screen Ptr == KBD
// D == SCREEN + 1
@KBD
D=D-A
@EMPTY
D;JLT
// Return
@START
0;JMP
