Route12Gate2F_Object:
	db $0 ; border block

	def_warp_events
	warp_event  7,  7, ROUTE_12_GATE_1F, 5

	def_bg_events

	def_object_events

	def_warps_to ROUTE_12_GATE_2F

Route12Gate2F_Script:
	jp EnableAutoTextBoxDrawing

Route12Gate2F_TextPointers:
	dw -1
