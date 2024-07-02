Museum1F_Object:
	db $a ; border block

	def_warp_events
	warp_event 10,  7, LAST_MAP, 1
	warp_event 11,  7, LAST_MAP, 1
	warp_event 16,  7, LAST_MAP, 2
	warp_event 17,  7, LAST_MAP, 2
	warp_event  7,  7, MUSEUM_2F, 1

	def_bg_events

	def_object_events

	def_warps_to MUSEUM_1F

Museum1F_Script:
	jp EnableAutoTextBoxDrawing

Museum1F_TextPointers:
	dw -1
