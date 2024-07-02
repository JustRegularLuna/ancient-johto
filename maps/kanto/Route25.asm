Route25_Object:
	db $2c ; border block

	def_warp_events
	warp_event 45,  3, BILLS_HOUSE, 1

	def_bg_events

	def_object_events

	def_warps_to ROUTE_25

Route25_Script:
	jp EnableAutoTextBoxDrawing

Route25_TextPointers:
	dw -1
