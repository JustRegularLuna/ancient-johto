CeladonGym_Object:
	db $3 ; border block

	def_warp_events
	warp_event  4, 17, LAST_MAP, 7
	warp_event  5, 17, LAST_MAP, 7

	def_bg_events

	def_object_events

	def_warps_to CELADON_GYM

CeladonGym_Script:
	jp EnableAutoTextBoxDrawing

CeladonGym_TextPointers:
	dw -1
