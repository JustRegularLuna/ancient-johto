Route12_Object:
	db $43 ; border block

	def_warp_events
	warp_event 10, 15, ROUTE_12_GATE_1F, 1
	warp_event 11, 15, ROUTE_12_GATE_1F, 2
	warp_event 10, 21, ROUTE_12_GATE_1F, 3
	warp_event 11, 77, ROUTE_12_SUPER_ROD_HOUSE, 1

	def_bg_events

	def_object_events

	def_warps_to ROUTE_12

Route12_Script:
	jp EnableAutoTextBoxDrawing

Route12_TextPointers:
	dw -1
