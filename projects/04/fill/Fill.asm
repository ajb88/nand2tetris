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

// Put your code here.

	@color
	M=0		//Default color is white

(LOOP)

	@SCREEN		//Top left pixel address
	D=A 		
	@pixels
	M=D 		//Pixel address 16384

	@KBD		//Keyboard address
	D=M

	@BLACK
	D;JGT		// If M[keyboard]>0 goto BLACK

	@color
	M=0			//Set color to white

	@COLOR_SCREEN
	0;JMP		//Jump to subroutine that colors screen white

(BLACK)
	@color
	M=-1			//Change color to black

(COLOR_SCREEN)
	@color
	D=M

	@pixels
	A=M			//Indirect address
	M=D 		//Color Pixels

	@pixels
	M=M+1
	D=M

	@24576
	D=D-A

	@COLOR_SCREEN
	D;JLT

	@LOOP
	0;JMP