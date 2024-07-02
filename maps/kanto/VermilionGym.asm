VermilionGym_Object:
	db $3 ; border block

	def_warp_events
	warp_event  4, 17, LAST_MAP, 4
	warp_event  5, 17, LAST_MAP, 4

	def_bg_events

	def_object_events

	def_warps_to VERMILION_GYM

VermilionGym_Script:
	jp EnableAutoTextBoxDrawing

VermilionGym_TextPointers:
	dw -1
