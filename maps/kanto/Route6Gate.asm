Route6Gate_Object:
	db $a ; border block

	def_warp_events
	warp_event  3,  5, LAST_MAP, 3
	warp_event  4,  5, LAST_MAP, 3
	warp_event  3,  0, LAST_MAP, 2
	warp_event  4,  0, LAST_MAP, 2

	def_bg_events

	def_object_events

	def_warps_to ROUTE_6_GATE

Route6Gate_Script:
	jp EnableAutoTextBoxDrawing

Route6Gate_TextPointers:
	dw -1
