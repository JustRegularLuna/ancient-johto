SilphCo9F_Object:
	db $2e ; border block

	def_warps
	warp 14,  0, 0, SILPH_CO_10F
	warp 16,  0, 0, SILPH_CO_8F
	warp 18,  0, 0, SILPH_CO_ELEVATOR
	warp  9,  3, 7, SILPH_CO_3F
	warp 17, 15, 4, SILPH_CO_5F

	def_signs

	def_objects

	def_warps_to SILPH_CO_9F

SilphCo9F_Script:
	jp EnableAutoTextBoxDrawing

SilphCo9F_TextPointers:
	dw -1
