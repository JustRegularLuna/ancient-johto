Route7_Object:
	db $f ; border block

	def_warp_events
	warp_event 18, 10, ROUTE_7_GATE, 3
	warp_event 18, 11, ROUTE_7_GATE, 4
	warp_event 11, 10, ROUTE_7_GATE, 1
	warp_event 11, 11, ROUTE_7_GATE, 2
	warp_event  5, 13, UNDERGROUND_PATH_ROUTE_7, 1

	def_bg_events

	def_object_events

	def_warps_to ROUTE_7

Route7_Script:
	jp EnableAutoTextBoxDrawing

Route7_TextPointers:
	dw -1
