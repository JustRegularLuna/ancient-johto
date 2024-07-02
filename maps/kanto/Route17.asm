Route17_Object:
	db $43 ; border block

	def_warp_events

	def_bg_events

	def_object_events

	def_warps_to ROUTE_17

Route17_Script:
	jp EnableAutoTextBoxDrawing

Route17_TextPointers:
	dw -1
