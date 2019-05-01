// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

	@2	//Refers to R2
	M=0 //R2=0
	@count //Refers to some memory location 
	M=0	   //count=0

(LOOP)
	@count
	D=M    //D=count

	@1
	D=D-M  //D=count-b

	@END
	D;JGE  //If (count-b)>=0 goto END

	@0
	D=M    //D=R0

	@2
	M=D+M  //R2=R2+R0

	@count
	M=M+1  //count++

	@LOOP
	0;JMP // GoTo LOOP

(END)
	@END
	0;JMP //Infinite loop





