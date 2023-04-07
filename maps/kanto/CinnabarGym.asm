CinnabarGym_Object:
	db $2e ; border block

	def_warps
	warp 16, 17, 1, LAST_MAP
	warp 17, 17, 1, LAST_MAP

	def_signs

	def_objects

	def_warps_to CINNABAR_GYM

CinnabarGym_Script:
	jp EnableAutoTextBoxDrawing

CinnabarGym_TextPointers:
	dw -1
