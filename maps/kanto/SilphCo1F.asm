SilphCo1F_Object:
	db $2e ; border block

	def_warps
	warp 10, 17, 5, LAST_MAP
	warp 11, 17, 5, LAST_MAP
	warp 26,  0, 0, SILPH_CO_2F
	warp 20,  0, 0, SILPH_CO_ELEVATOR
	warp 16, 10, 6, SILPH_CO_3F

	def_signs

	def_objects

	def_warps_to SILPH_CO_1F

SilphCo1F_Script:
	jp EnableAutoTextBoxDrawing

SilphCo1F_TextPointers:
	dw -1
