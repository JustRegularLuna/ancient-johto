; text constants
	const_def 1
	; NPCs

	; Signs

RuinsOfAlphNorthGate2F_Object:
	db $a ; border block

	def_warps
	warp  7,  7, 4, RUINS_OF_ALPH_NORTH_GATE

	def_signs

	def_objects

	def_warps_to RUINS_OF_ALPH_NORTH_GATE_2F


RuinsOfAlphNorthGate2F_Script:
	jp EnableAutoTextBoxDrawing

RuinsOfAlphNorthGate2F_TextPointers:
	dw -1
