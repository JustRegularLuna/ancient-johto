Route16Gate1F_Object:
	db $0 ; border block

	def_warp_events
	warp_event  0, 10, LAST_MAP, 1
	warp_event  0, 11, LAST_MAP, 2
	warp_event  9, 10, LAST_MAP, 3
	warp_event  9, 11, LAST_MAP, 3
	warp_event  0,  4, LAST_MAP, 5
	warp_event  0,  5, LAST_MAP, 6
	warp_event  9,  4, LAST_MAP, 7
	warp_event  9,  5, LAST_MAP, 8
	warp_event  9, 13, ROUTE_16_GATE_2F, 1

	def_bg_events

	def_object_events

	def_warps_to ROUTE_16_GATE_1F

Route16Gate1F_Script:
	jp EnableAutoTextBoxDrawing

Route16Gate1F_TextPointers:
	dw -1
