SilphCo6F_Object:
	db $2e ; border block

	def_warps
	warp 16,  0, 1, SILPH_CO_7F
	warp 14,  0, 0, SILPH_CO_5F
	warp 18,  0, 0, SILPH_CO_ELEVATOR
	warp  3,  3, 4, SILPH_CO_4F
	warp 23,  3, 6, SILPH_CO_2F

	def_signs

	def_objects

	def_warps_to SILPH_CO_6F

SilphCo6F_Script:
	jp EnableAutoTextBoxDrawing

SilphCo6F_TextPointers:
	dw -1
