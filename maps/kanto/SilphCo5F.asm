SilphCo5F_Object:
	db $2e ; border block

	def_warps
	warp 24,  0, 1, SILPH_CO_6F
	warp 26,  0, 1, SILPH_CO_4F
	warp 20,  0, 0, SILPH_CO_ELEVATOR
	warp 27,  3, 5, SILPH_CO_7F
	warp  9, 15, 4, SILPH_CO_9F
	warp 11,  5, 4, SILPH_CO_3F
	warp  3, 15, 5, SILPH_CO_3F

	def_signs

	def_objects

	def_warps_to SILPH_CO_5F

SilphCo5F_Script:
	jp EnableAutoTextBoxDrawing

SilphCo5F_TextPointers:
	dw -1
