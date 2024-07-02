Route6_Object:
	db $f ; border block

	def_warp_events
	warp_event 11,  1, ROUTE_6_GATE, 3
	warp_event 12,  1, ROUTE_6_GATE, 3
	warp_event 11,  5, ROUTE_6_GATE, 1
	warp_event 17, 13, UNDERGROUND_PATH_ROUTE_6, 1

	def_bg_events

	def_object_events

	def_warps_to ROUTE_6

Route6_Script:
	jp EnableAutoTextBoxDrawing

Route6_TextPointers:
	dw -1
