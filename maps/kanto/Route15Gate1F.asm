Route15Gate1F_Object:
	db $0 ; border block

	def_warp_events
	warp_event  0,  4, LAST_MAP, 1
	warp_event  0,  5, LAST_MAP, 2
	warp_event  9,  4, LAST_MAP, 3
	warp_event  9,  5, LAST_MAP, 4
	warp_event  9,  7, ROUTE_15_GATE_2F, 1

	def_bg_events

	def_object_events

	def_warps_to ROUTE_15_GATE_1F

Route15Gate1F_Script:
	jp EnableAutoTextBoxDrawing

Route15Gate1F_TextPointers:
	dw -1
