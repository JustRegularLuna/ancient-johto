UndergroundPathRoute7_Object:
	db $a ; border block

	def_warps
	warp  3,  7, 4, LAST_MAP
	warp  4,  7, 4, LAST_MAP
	warp  4,  4, 0, UNDERGROUND_PATH_WEST_EAST

	def_signs

	def_objects

	def_warps_to UNDERGROUND_PATH_ROUTE_7

UndergroundPathRoute7_Script:
	ld a, ROUTE_7
	ld [wLastMap], a
	jp EnableAutoTextBoxDrawing

UndergroundPathRoute7_TextPointers:
	dw -1
