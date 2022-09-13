SilphCo8F_Object:
	db $2e ; border block

	def_warps
	warp 16,  0, 1, SILPH_CO_9F
	warp 14,  0, 0, SILPH_CO_7F
	warp 18,  0, 0, SILPH_CO_ELEVATOR
	warp  3, 11, 6, SILPH_CO_8F
	warp  3, 15, 4, SILPH_CO_2F
	warp 11,  5, 5, SILPH_CO_2F
	warp 11,  9, 3, SILPH_CO_8F

	def_signs

	def_objects

	def_warps_to SILPH_CO_8F

SilphCo8F_Script:
	jp EnableAutoTextBoxDrawing

SilphCo8F_TextPointers:
	dw -1
