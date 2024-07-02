FuchsiaGym_Object:
	db $3 ; border block

	def_warp_events
	warp_event  4, 17, LAST_MAP, 6
	warp_event  5, 17, LAST_MAP, 6

	def_bg_events

	def_object_events

	def_warps_to FUCHSIA_GYM

FuchsiaGym_Script:
	jp EnableAutoTextBoxDrawing

FuchsiaGym_TextPointers:
	dw -1
