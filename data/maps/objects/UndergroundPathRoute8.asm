UndergroundPathRoute8_Object:
	db $a ; border block

	def_warps
	warp  3,  7, 4, LAST_MAP
	warp  4,  7, 4, LAST_MAP
	warp  4,  4, 1, UNDERGROUND_PATH_WEST_EAST

	def_signs

	def_objects

	def_warps_to UNDERGROUND_PATH_ROUTE_8

UndergroundPathRoute8_Script:
	ld a, ROUTE_8
	ld [wLastMap], a
	jp EnableAutoTextBoxDrawing

UndergroundPathRoute8_TextPointers:
	dw -1
