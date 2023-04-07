FuchsiaGym_Object:
	db $3 ; border block

	def_warps
	warp  4, 17, 5, LAST_MAP
	warp  5, 17, 5, LAST_MAP

	def_signs

	def_objects

	def_warps_to FUCHSIA_GYM

FuchsiaGym_Script:
	jp EnableAutoTextBoxDrawing

FuchsiaGym_TextPointers:
	dw -1
