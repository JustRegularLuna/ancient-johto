SilphCo5F_Object:
	db $2e ; border block

	def_warp_events
	warp_event 24,  0, SILPH_CO_6F, 2
	warp_event 26,  0, SILPH_CO_4F, 2
	warp_event 20,  0, SILPH_CO_ELEVATOR, 1
	warp_event 27,  3, SILPH_CO_7F, 6
	warp_event  9, 15, SILPH_CO_9F, 5
	warp_event 11,  5, SILPH_CO_3F, 5
	warp_event  3, 15, SILPH_CO_3F, 6

	def_bg_events

	def_object_events

	def_warps_to SILPH_CO_5F

SilphCo5F_Script:
	jp EnableAutoTextBoxDrawing

SilphCo5F_TextPointers:
	dw -1
