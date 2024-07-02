Route4_Object:
	db $2c ; border block

	def_warp_events
	warp_event 11,  5, MT_MOON_POKECENTER, 1
	warp_event 18,  5, MT_MOON_1F, 1
	warp_event 24,  5, MT_MOON_B1F, 8

	def_bg_events

	def_object_events

	def_warps_to ROUTE_4

Route4_Script:
	jp EnableAutoTextBoxDrawing

Route4_TextPointers:
	dw -1
