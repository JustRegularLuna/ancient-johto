ViridianCity_Object:
	db $f ; border block

	def_warps
	warp 23, 25, 0, VIRIDIAN_POKECENTER
	warp 29, 19, 0, VIRIDIAN_MART
	warp 21, 15, 0, VIRIDIAN_SCHOOL_HOUSE
	warp 21,  9, 0, VIRIDIAN_NICKNAME_HOUSE
	warp 32,  7, 0, VIRIDIAN_GYM

	def_signs

	def_objects

	def_warps_to VIRIDIAN_CITY

ViridianCity_Script:
	jp EnableAutoTextBoxDrawing

ViridianCity_TextPointers:
	dw -1
