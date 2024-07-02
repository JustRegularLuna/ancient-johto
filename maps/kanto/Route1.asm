Route1_Object:
	db $b ; border block

	def_warp_events

	def_bg_events

	def_object_events

	def_warps_to ROUTE_1

Route1_Script:
	jp EnableAutoTextBoxDrawing

Route1_TextPointers:
	dw -1
