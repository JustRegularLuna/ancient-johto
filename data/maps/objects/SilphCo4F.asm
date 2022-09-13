SilphCo4F_Object:
	db $2e ; border block

	def_warps
	warp 24,  0, 1, SILPH_CO_3F
	warp 26,  0, 1, SILPH_CO_5F
	warp 20,  0, 0, SILPH_CO_ELEVATOR
	warp 11,  7, 3, SILPH_CO_10F
	warp 17,  3, 3, SILPH_CO_6F
	warp  3, 15, 4, SILPH_CO_10F
	warp 17, 11, 5, SILPH_CO_10F

	def_signs

	def_objects

	def_warps_to SILPH_CO_4F

SilphCo4F_Script:
	jp EnableAutoTextBoxDrawing

SilphCo4F_TextPointers:
	dw -1
