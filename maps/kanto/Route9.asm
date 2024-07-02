Route9_Object:
	db $2c ; border block

	def_warp_events

	def_bg_events

	def_object_events

	def_warps_to ROUTE_9

Route9_Script:
	jp EnableAutoTextBoxDrawing

Route9_TextPointers:
	dw -1
