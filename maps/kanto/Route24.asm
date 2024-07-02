Route24_Object:
	db $2c ; border block

	def_warp_events

	def_bg_events

	def_object_events

	def_warps_to ROUTE_24

Route24_Script:
	jp EnableAutoTextBoxDrawing

Route24_TextPointers:
	dw -1
