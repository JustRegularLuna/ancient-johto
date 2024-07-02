Route21_Object:
	db $43 ; border block

	def_warp_events

	def_bg_events

	def_object_events

	def_warps_to ROUTE_21

Route21_Script:
	jp EnableAutoTextBoxDrawing

Route21_TextPointers:
	dw -1
