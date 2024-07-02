ViridianGym_Object:
	db $3 ; border block

	def_warp_events
	warp_event 16, 17, LAST_MAP, 5
	warp_event 17, 17, LAST_MAP, 5

	def_bg_events

	def_object_events

	def_warps_to VIRIDIAN_GYM

ViridianGym_Script:
	jp EnableAutoTextBoxDrawing

ViridianGym_TextPointers:
	dw -1
