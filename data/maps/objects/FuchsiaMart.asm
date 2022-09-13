FuchsiaMart_Object:
	db $0 ; border block

	def_warps
	warp  3,  7, 0, LAST_MAP
	warp  4,  7, 0, LAST_MAP

	def_signs

	def_objects
	object SPRITE_CLERK, 0, 5, STAY, RIGHT, 1 ; person

	def_warps_to FUCHSIA_MART

FuchsiaMart_Script:
	jp EnableAutoTextBoxDrawing

FuchsiaMart_TextPointers:
	dw FuchsiaCashierText
