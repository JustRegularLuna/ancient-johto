Route14_Object:
	db $43 ; border block

	def_warp_events

	def_bg_events

	def_object_events

	def_warps_to ROUTE_14

Route14_Script:
	jp EnableAutoTextBoxDrawing

Route14_TextPointers:
	dw -1
