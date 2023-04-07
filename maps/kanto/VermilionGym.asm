VermilionGym_Object:
	db $3 ; border block

	def_warps
	warp  4, 17, 3, LAST_MAP
	warp  5, 17, 3, LAST_MAP

	def_signs

	def_objects

	def_warps_to VERMILION_GYM

VermilionGym_Script:
	jp EnableAutoTextBoxDrawing

VermilionGym_TextPointers:
	dw -1
