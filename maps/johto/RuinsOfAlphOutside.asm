; text constants
	const_def 1
	; NPCs

	; signs

RuinsOfAlphOutside_Object:
	db $5 ; border block

	def_warps
	warp  7,  5, 2, RUINS_OF_ALPH_NORTH_GATE
	warp 13, 20, 2, RUINS_OF_ALPH_EAST_GATE
	warp 13, 21, 3, RUINS_OF_ALPH_EAST_GATE
	warp 17, 11, 0, RUINS_OF_ALPH_LAB

	def_signs

	def_objects

	def_warps_to RUINS_OF_ALPH_OUTSIDE


RuinsOfAlphOutside_Script:
	jp EnableAutoTextBoxDrawing

RuinsOfAlphOutside_TextPointers:
	dw -1
