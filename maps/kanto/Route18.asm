Route18_Object:
	db $43 ; border block

	def_warp_events
	warp_event 33,  8, ROUTE_18_GATE_1F, 1
	warp_event 33,  9, ROUTE_18_GATE_1F, 2
	warp_event 40,  8, ROUTE_18_GATE_1F, 3
	warp_event 40,  9, ROUTE_18_GATE_1F, 4

	def_bg_events

	def_object_events

	def_warps_to ROUTE_18

Route18_Script:
	jp EnableAutoTextBoxDrawing

Route18_TextPointers:
	dw -1
