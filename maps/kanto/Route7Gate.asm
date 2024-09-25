Route7Gate_Object:
	db $0 ; border block

	def_warp_events
	warp_event  0,  4, LAST_MAP, 4
	warp_event  0,  5, LAST_MAP, 4
	warp_event  9,  4, LAST_MAP, 1
	warp_event  9,  5, LAST_MAP, 2

	def_bg_events

	def_object_events

	def_warps_to ROUTE_7_GATE

Route7Gate_Script:
	jp EnableAutoTextBoxDrawing

Route7Gate_TextPointers:
	dw -1
