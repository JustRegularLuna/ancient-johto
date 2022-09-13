SilphCo10F_Object:
	db $2e ; border block

	def_warps
	warp  8,  0, 0, SILPH_CO_9F
	warp 10,  0, 0, SILPH_CO_11F
	warp 12,  0, 0, SILPH_CO_ELEVATOR
	warp  9, 11, 3, SILPH_CO_4F
	warp 13, 15, 5, SILPH_CO_4F
	warp 13,  7, 6, SILPH_CO_4F

	def_signs

	def_objects

	def_warps_to SILPH_CO_10F

SilphCo10F_Script:
	jp EnableAutoTextBoxDrawing

SilphCo10F_TextPointers:
	dw -1
