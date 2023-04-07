PewterGym_Object:
	db $3 ; border block

	def_warps
	warp  4, 13, 2, LAST_MAP
	warp  5, 13, 2, LAST_MAP

	def_signs

	def_objects

	def_warps_to PEWTER_GYM

PewterGym_Script:
	jp EnableAutoTextBoxDrawing

PewterGym_TextPointers:
	dw -1
