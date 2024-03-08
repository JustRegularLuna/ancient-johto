; text constants
	const_def 1
	; NPCs

	; signs

Route32_Object:
	db $5 ; border block

	def_warps
	warp  4,  2, 0, RUINS_OF_ALPH_EAST_GATE
	warp  4,  3, 1, RUINS_OF_ALPH_EAST_GATE

	def_signs

	def_objects

	def_warps_to ROUTE_32


Route32_Script:
	jp EnableAutoTextBoxDrawing

Route32_TextPointers:
	dw -1
