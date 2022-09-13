UndergroundPathRoute7Copy_Object:
	db $a ; border block

	def_warps
	warp  3,  7, 5, LAST_MAP
	warp  4,  7, 5, LAST_MAP
	warp  4,  4, 0, UNDERGROUND_PATH_WEST_EAST

	def_signs

	def_objects

	def_warps_to UNDERGROUND_PATH_ROUTE_7_COPY

UndergroundPathRoute7Copy_Script:
	ld a, ROUTE_7
	ld [wLastMap], a
	ret

UndergroundPathRoute7Copy_TextPointers:
	dw -1
