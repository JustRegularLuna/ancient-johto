UndergroundPathRoute5_Object:
	db $a ; border block

	def_warp_events
	warp_event  3,  7, LAST_MAP, 4
	warp_event  4,  7, LAST_MAP, 4
	warp_event  4,  4, UNDERGROUND_PATH_NORTH_SOUTH, 1

	def_bg_events

	def_object_events

	def_warps_to UNDERGROUND_PATH_ROUTE_5

UndergroundPathRoute5_Script:
	ld a, ROUTE_5
	ld [wLastMap], a
	ret

UndergroundPathRoute5_TextPointers:
	dw -1
