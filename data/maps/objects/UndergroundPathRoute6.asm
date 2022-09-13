UndergroundPathRoute6_Object:
	db $a ; border block

	def_warps
	warp  3,  7, 3, LAST_MAP
	warp  4,  7, 3, LAST_MAP
	warp  4,  4, 1, UNDERGROUND_PATH_NORTH_SOUTH

	def_signs

	def_objects

	def_warps_to UNDERGROUND_PATH_ROUTE_6

UndergroundPathRoute6_Script:
	ld a, ROUTE_6
	ld [wLastMap], a
	jp EnableAutoTextBoxDrawing

UndergroundPathRoute6_TextPointers:
	dw -1
