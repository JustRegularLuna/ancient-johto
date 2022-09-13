Route4_Object:
	db $2c ; border block

	def_warps
	warp 11,  5, 0, MT_MOON_POKECENTER
	warp 18,  5, 0, MT_MOON_1F
	warp 24,  5, 7, MT_MOON_B1F

	def_signs

	def_objects

	def_warps_to ROUTE_4

Route4_Script:
	jp EnableAutoTextBoxDrawing

Route4_TextPointers:
	dw -1
