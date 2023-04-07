MtMoonB2F_Object:
	db $3 ; border block

	def_warps
	warp 25,  9, 1, MT_MOON_B1F
	warp 21, 17, 4, MT_MOON_B1F
	warp 15, 27, 5, MT_MOON_B1F
	warp  5,  7, 6, MT_MOON_B1F

	def_signs

	def_objects

	def_warps_to MT_MOON_B2F

MtMoonB2F_Script:
	jp EnableAutoTextBoxDrawing

MtMoonB2F_TextPointers:
	dw -1
