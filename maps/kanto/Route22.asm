Route22_Object:
	db $2c ; border block

	def_warp_events
	warp_event  8,  5, ROUTE_22_GATE, 1

	def_bg_events

	def_object_events

	def_warps_to ROUTE_22

Route22_Script:
	jp EnableAutoTextBoxDrawing

Route22_TextPointers:
	dw -1
