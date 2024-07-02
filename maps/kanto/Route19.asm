Route19_Object:
	db $43 ; border block

	def_warp_events

	def_bg_events

	def_object_events

	def_warps_to ROUTE_19

Route19_Script:
	jp EnableAutoTextBoxDrawing

Route19_TextPointers:
	dw -1
