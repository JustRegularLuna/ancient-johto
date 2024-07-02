UndergroundPathRoute6_Object:
	db $a ; border block

	def_warp_events
	warp_event  3,  7, LAST_MAP, 4
	warp_event  4,  7, LAST_MAP, 4
	warp_event  4,  4, UNDERGROUND_PATH_NORTH_SOUTH, 2

	def_bg_events

	def_object_events

	def_warps_to UNDERGROUND_PATH_ROUTE_6

UndergroundPathRoute6_Script:
	ld a, ROUTE_6
	ld [wLastMap], a
	jp EnableAutoTextBoxDrawing

UndergroundPathRoute6_TextPointers:
	dw -1
