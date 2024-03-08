; text constants
	const_def 1
	; NPCs

	; signs

RuinsOfAlphLab_Object:
	db $17 ; border block

	def_warps
	warp  2,  7, 3, RUINS_OF_ALPH_OUTSIDE
	warp  3,  7, 3, RUINS_OF_ALPH_OUTSIDE

	def_signs

	def_objects

	def_warps_to RUINS_OF_ALPH_LAB


RuinsOfAlphLab_Script:
	jp EnableAutoTextBoxDrawing

RuinsOfAlphLab_TextPointers:
	dw -1
