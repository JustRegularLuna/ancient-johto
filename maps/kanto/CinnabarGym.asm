CinnabarGym_Object:
	db $2e ; border block

	def_warp_events
	warp_event 16, 17, LAST_MAP, 2
	warp_event 17, 17, LAST_MAP, 2

	def_bg_events

	def_object_events

	def_warps_to CINNABAR_GYM

CinnabarGym_Script:
	jp EnableAutoTextBoxDrawing

CinnabarGym_TextPointers:
	dw -1
