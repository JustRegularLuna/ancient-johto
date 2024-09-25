Route2Gate_Object:
	db $0 ; border block

	def_warp_events
	warp_event  4,  0, LAST_MAP, 4
	warp_event  5,  0, LAST_MAP, 4
	warp_event  4,  7, LAST_MAP, 5
	warp_event  5,  7, LAST_MAP, 5

	def_bg_events

	def_object_events

	def_warps_to ROUTE_2_GATE

Route2Gate_Script:
	jp EnableAutoTextBoxDrawing

Route2Gate_TextPointers:
	dw -1
