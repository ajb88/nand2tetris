"""
Assembler without symbols
Nand2Tetris Chapter 6

Translates programs written in symbolic Hack language to binary code
that can execute on the Hack hardware playform. 

"""

import string
import numpy

class Parser():
	"""
	Parse the symbolic command into its underlying fields
	"""

	INSTRUCTIONS = {
	'0'		: '0101010',
	'1'		: '0111111',
	'-1'	: '0111010',
	'D'		: '0001100',
	 
	}