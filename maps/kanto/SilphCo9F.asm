SilphCo9F_Object:
	db $2e ; border block

	def_warp_events
	warp_event 14,  0, SILPH_CO_10F, 1
	warp_event 16,  0, SILPH_CO_8F, 1
	warp_event 18,  0, SILPH_CO_ELEVATOR, 1
	warp_event  9,  3, SILPH_CO_3F, 8
	warp_event 17, 15, SILPH_CO_5F, 5

	def_bg_events

	def_object_events

	def_warps_to SILPH_CO_9F

SilphCo9F_Script:
	jp EnableAutoTextBoxDrawing

SilphCo9F_TextPointers:
	dw -1
