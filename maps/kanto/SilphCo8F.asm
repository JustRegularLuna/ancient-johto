SilphCo8F_Object:
	db $2e ; border block

	def_warp_events
	warp_event 16,  0, SILPH_CO_9F, 2
	warp_event 14,  0, SILPH_CO_7F, 1
	warp_event 18,  0, SILPH_CO_ELEVATOR, 1
	warp_event  3, 11, SILPH_CO_8F, 7
	warp_event  3, 15, SILPH_CO_2F, 5
	warp_event 11,  5, SILPH_CO_2F, 6
	warp_event 11,  9, SILPH_CO_8F, 4

	def_bg_events

	def_object_events

	def_warps_to SILPH_CO_8F

SilphCo8F_Script:
	jp EnableAutoTextBoxDrawing

SilphCo8F_TextPointers:
	dw -1
