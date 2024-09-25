Route16Gate2F_Object:
	db $0 ; border block

	def_warp_events
	warp_event  7,  7, ROUTE_16_GATE_1F, 9

	def_bg_events

	def_object_events

	def_warps_to ROUTE_16_GATE_2F

Route16Gate2F_Script:
	jp EnableAutoTextBoxDrawing

Route16Gate2F_TextPointers:
	dw -1
