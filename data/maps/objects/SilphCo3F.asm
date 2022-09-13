SilphCo3F_Object:
	db $2e ; border block

	def_warps
	warp 26,  0, 1, SILPH_CO_2F
	warp 24,  0, 0, SILPH_CO_4F
	warp 20,  0, 0, SILPH_CO_ELEVATOR
	warp 23, 11, 9, SILPH_CO_3F
	warp  3,  3, 5, SILPH_CO_5F
	warp  3, 15, 6, SILPH_CO_5F
	warp 27,  3, 3, SILPH_CO_2F
	warp  3, 11, 3, SILPH_CO_9F
	warp 11, 11, 4, SILPH_CO_7F
	warp 27, 15, 3, SILPH_CO_3F

	def_signs

	def_objects

	def_warps_to SILPH_CO_3F

SilphCo3F_Script:
	jp EnableAutoTextBoxDrawing

SilphCo3F_TextPointers:
	dw -1
