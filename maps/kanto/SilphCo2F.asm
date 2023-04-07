SilphCo2F_Object:
	db $2e ; border block

	def_warps
	warp 24,  0, 2, SILPH_CO_1F
	warp 26,  0, 0, SILPH_CO_3F
	warp 20,  0, 0, SILPH_CO_ELEVATOR
	warp  3,  3, 6, SILPH_CO_3F
	warp 13,  3, 4, SILPH_CO_8F
	warp 27, 15, 5, SILPH_CO_8F
	warp  9, 15, 4, SILPH_CO_6F

	def_signs

	def_objects

	def_warps_to SILPH_CO_2F

SilphCo2F_Script:
	jp EnableAutoTextBoxDrawing

SilphCo2F_TextPointers:
	dw -1
