Route18Gate2F_Object:
	db $0 ; border block

	def_warp_events
	warp_event  7,  7, ROUTE_18_GATE_1F, 5

	def_bg_events

	def_object_events

	def_warps_to ROUTE_18_GATE_2F

Route18Gate2F_Script:
	jp EnableAutoTextBoxDrawing

Route18Gate2F_TextPointers:
	dw -1
