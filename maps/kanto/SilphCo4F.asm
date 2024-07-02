SilphCo4F_Object:
	db $2e ; border block

	def_warp_events
	warp_event 24,  0, SILPH_CO_3F, 2
	warp_event 26,  0, SILPH_CO_5F, 2
	warp_event 20,  0, SILPH_CO_ELEVATOR, 1
	warp_event 11,  7, SILPH_CO_10F, 4
	warp_event 17,  3, SILPH_CO_6F, 4
	warp_event  3, 15, SILPH_CO_10F, 5
	warp_event 17, 11, SILPH_CO_10F, 6

	def_bg_events

	def_object_events

	def_warps_to SILPH_CO_4F

SilphCo4F_Script:
	jp EnableAutoTextBoxDrawing

SilphCo4F_TextPointers:
	dw -1
