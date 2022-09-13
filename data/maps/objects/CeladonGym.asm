CeladonGym_Object:
	db $3 ; border block

	def_warps
	warp  4, 17, 6, LAST_MAP
	warp  5, 17, 6, LAST_MAP

	def_signs

	def_objects

	def_warps_to CELADON_GYM

CeladonGym_Script:
	jp EnableAutoTextBoxDrawing

CeladonGym_TextPointers:
	dw -1
