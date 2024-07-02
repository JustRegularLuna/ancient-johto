Route3_Object:
	db $2c ; border block

	def_warp_events

	def_bg_events

	def_object_events

	def_warps_to ROUTE_3

Route3_Script:
	jp EnableAutoTextBoxDrawing

Route3_TextPointers:
	dw -1
