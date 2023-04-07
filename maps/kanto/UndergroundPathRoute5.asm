UndergroundPathRoute5_Object:
	db $a ; border block

	def_warps
	warp  3,  7, 3, LAST_MAP
	warp  4,  7, 3, LAST_MAP
	warp  4,  4, 0, UNDERGROUND_PATH_NORTH_SOUTH

	def_signs

	def_objects

	def_warps_to UNDERGROUND_PATH_ROUTE_5

UndergroundPathRoute5_Script:
	ld a, ROUTE_5
	ld [wLastMap], a
	ret

UndergroundPathRoute5_TextPointers:
	dw -1
