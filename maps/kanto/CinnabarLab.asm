CinnabarLab_Object:
	db $17 ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 3
	warp_event  3,  7, LAST_MAP, 3
	warp_event  8,  4, CINNABAR_LAB_TRADE_ROOM, 1
	warp_event 12,  4, CINNABAR_LAB_METRONOME_ROOM, 1
	warp_event 16,  4, CINNABAR_LAB_FOSSIL_ROOM, 1

	def_bg_events

	def_object_events

	def_warps_to CINNABAR_LAB

CinnabarLab_Script:
	jp EnableAutoTextBoxDrawing

CinnabarLab_TextPointers:
	dw -1
