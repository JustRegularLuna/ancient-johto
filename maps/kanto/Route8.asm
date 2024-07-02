Route8_Object:
	db $2c ; border block

	def_warp_events
	warp_event  1, 10, ROUTE_8_GATE, 1
	warp_event  1, 11, ROUTE_8_GATE, 2
	warp_event  8, 10, ROUTE_8_GATE, 3
	warp_event  8, 11, ROUTE_8_GATE, 4
	warp_event 13,  3, UNDERGROUND_PATH_ROUTE_8, 1

	def_bg_events

	def_object_events

	def_warps_to ROUTE_8

Route8_Script:
	jp EnableAutoTextBoxDrawing

Route8_TextPointers:
	dw -1
