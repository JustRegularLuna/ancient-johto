ViridianGym_Object:
	db $3 ; border block

	def_warps
	warp 16, 17, 4, LAST_MAP
	warp 17, 17, 4, LAST_MAP

	def_signs

	def_objects

	def_warps_to VIRIDIAN_GYM

ViridianGym_Script:
	jp EnableAutoTextBoxDrawing

ViridianGym_TextPointers:
	dw -1
