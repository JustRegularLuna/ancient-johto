SilphCo7F_Object:
	db $2e ; border block

	def_warps
	warp 16,  0, 1, SILPH_CO_8F
	warp 22,  0, 0, SILPH_CO_6F
	warp 18,  0, 0, SILPH_CO_ELEVATOR
	warp  5,  7, 3, SILPH_CO_11F
	warp  5,  3, 8, SILPH_CO_3F
	warp 21, 15, 3, SILPH_CO_5F

	def_signs

	def_objects

	def_warps_to SILPH_CO_7F

SilphCo7F_Script:
	jp EnableAutoTextBoxDrawing

SilphCo7F_TextPointers:
	dw -1
