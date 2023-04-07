SilphCo11F_Object:
	db $d ; border block

	def_warps
	warp  9,  0, 1, SILPH_CO_10F
	warp 13,  0, 0, SILPH_CO_ELEVATOR
	warp  5,  5, 9, LAST_MAP
	warp  3,  2, 3, SILPH_CO_7F

	def_signs

	def_objects

	def_warps_to SILPH_CO_11F

SilphCo11F_Script:
	jp EnableAutoTextBoxDrawing

SilphCo11F_TextPointers:
	dw -1
