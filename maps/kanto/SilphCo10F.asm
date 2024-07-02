SilphCo10F_Object:
	db $2e ; border block

	def_warp_events
	warp_event  8,  0, SILPH_CO_9F, 1
	warp_event 10,  0, SILPH_CO_11F, 1
	warp_event 12,  0, SILPH_CO_ELEVATOR, 1
	warp_event  9, 11, SILPH_CO_4F, 4
	warp_event 13, 15, SILPH_CO_4F, 6
	warp_event 13,  7, SILPH_CO_4F, 7

	def_bg_events

	def_object_events

	def_warps_to SILPH_CO_10F

SilphCo10F_Script:
	jp EnableAutoTextBoxDrawing

SilphCo10F_TextPointers:
	dw -1
