SilphCo2F_Object:
	db $2e ; border block

	def_warp_events
	warp_event 24,  0, SILPH_CO_1F, 3
	warp_event 26,  0, SILPH_CO_3F, 1
	warp_event 20,  0, SILPH_CO_ELEVATOR, 1
	warp_event  3,  3, SILPH_CO_3F, 7
	warp_event 13,  3, SILPH_CO_8F, 5
	warp_event 27, 15, SILPH_CO_8F, 6
	warp_event  9, 15, SILPH_CO_6F, 5

	def_bg_events

	def_object_events

	def_warps_to SILPH_CO_2F

SilphCo2F_Script:
	jp EnableAutoTextBoxDrawing

SilphCo2F_TextPointers:
	dw -1
