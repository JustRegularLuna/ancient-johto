Route23_Object:
	db $f ; border block

	def_warp_events
	warp_event  7, 139, ROUTE_22_GATE, 3
	warp_event  8, 139, ROUTE_22_GATE, 4
	warp_event  4, 31, VICTORY_ROAD_1F, 1
	warp_event 14, 31, VICTORY_ROAD_2F, 2

	def_bg_events

	def_object_events

	def_warps_to ROUTE_23

Route23_Script:
	jp EnableAutoTextBoxDrawing

Route23_TextPointers:
	dw -1
