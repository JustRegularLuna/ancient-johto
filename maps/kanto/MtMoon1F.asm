MtMoon1F_Object:
	db $3 ; border block

	def_warp_events
	warp_event 14, 35, LAST_MAP, 2
	warp_event 15, 35, LAST_MAP, 2
	warp_event  5,  5, MT_MOON_B1F, 1
	warp_event 17, 11, MT_MOON_B1F, 3
	warp_event 25, 15, MT_MOON_B1F, 4

	def_bg_events

	def_object_events

	def_warps_to MT_MOON_1F

MtMoon1F_Script:
	jp EnableAutoTextBoxDrawing

MtMoon1F_TextPointers:
	dw -1
