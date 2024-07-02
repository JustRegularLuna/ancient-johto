Route11_Object:
	db $f ; border block

	def_warp_events
	warp_event 49,  8, ROUTE_11_GATE_1F, 1
	warp_event 49,  9, ROUTE_11_GATE_1F, 2
	warp_event 58,  8, ROUTE_11_GATE_1F, 3
	warp_event 58,  9, ROUTE_11_GATE_1F, 4
	warp_event  4,  5, DIGLETTS_CAVE_ROUTE_11, 1

	def_bg_events

	def_object_events

	def_warps_to ROUTE_11

Route11_Script:
	jp EnableAutoTextBoxDrawing

Route11_TextPointers:
	dw -1
