UndergroundPathRoute7Copy_Object:
	db $a ; border block

	def_warp_events
	warp_event  3,  7, LAST_MAP, 6
	warp_event  4,  7, LAST_MAP, 6
	warp_event  4,  4, UNDERGROUND_PATH_WEST_EAST, 1

	def_bg_events

	def_object_events

	def_warps_to UNDERGROUND_PATH_ROUTE_7_COPY

UndergroundPathRoute7Copy_Script:
	ld a, ROUTE_7
	ld [wLastMap], a
	ret

UndergroundPathRoute7Copy_TextPointers:
	dw -1
