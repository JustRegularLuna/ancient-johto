MtMoonB2F_Object:
	db $3 ; border block

	def_warp_events
	warp_event 25,  9, MT_MOON_B1F, 2
	warp_event 21, 17, MT_MOON_B1F, 5
	warp_event 15, 27, MT_MOON_B1F, 6
	warp_event  5,  7, MT_MOON_B1F, 7

	def_bg_events

	def_object_events

	def_warps_to MT_MOON_B2F

MtMoonB2F_Script:
	jp EnableAutoTextBoxDrawing

MtMoonB2F_TextPointers:
	dw -1
