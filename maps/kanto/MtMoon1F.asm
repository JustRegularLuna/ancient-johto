MtMoon1F_Object:
	db $3 ; border block

	def_warps
	warp 14, 35, 1, LAST_MAP
	warp 15, 35, 1, LAST_MAP
	warp  5,  5, 0, MT_MOON_B1F
	warp 17, 11, 2, MT_MOON_B1F
	warp 25, 15, 3, MT_MOON_B1F

	def_signs

	def_objects

	def_warps_to MT_MOON_1F

MtMoon1F_Script:
	jp EnableAutoTextBoxDrawing

MtMoon1F_TextPointers:
	dw -1
