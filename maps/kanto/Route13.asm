Route13_Object:
	db $43 ; border block

	def_warp_events

	def_bg_events

	def_object_events

	def_warps_to ROUTE_13

Route13_Script:
	jp EnableAutoTextBoxDrawing

Route13_TextPointers:
	dw -1
