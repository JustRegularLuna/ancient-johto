PewterGym_Object:
	db $3 ; border block

	def_warp_events
	warp_event  4, 13, LAST_MAP, 3
	warp_event  5, 13, LAST_MAP, 3

	def_bg_events

	def_object_events

	def_warps_to PEWTER_GYM

PewterGym_Script:
	jp EnableAutoTextBoxDrawing

PewterGym_TextPointers:
	dw -1
