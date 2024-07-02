Route15_Object:
	db $43 ; border block

	def_warp_events
	warp_event  7,  8, ROUTE_15_GATE_1F, 1
	warp_event  7,  9, ROUTE_15_GATE_1F, 2
	warp_event 14,  8, ROUTE_15_GATE_1F, 3
	warp_event 14,  9, ROUTE_15_GATE_1F, 4

	def_bg_events

	def_object_events

	def_warps_to ROUTE_15

Route15_Script:
	jp EnableAutoTextBoxDrawing

Route15_TextPointers:
	dw -1
