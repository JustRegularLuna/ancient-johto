SilphCo6F_Object:
	db $2e ; border block

	def_warp_events
	warp_event 16,  0, SILPH_CO_7F, 2
	warp_event 14,  0, SILPH_CO_5F, 1
	warp_event 18,  0, SILPH_CO_ELEVATOR, 1
	warp_event  3,  3, SILPH_CO_4F, 5
	warp_event 23,  3, SILPH_CO_2F, 7

	def_bg_events

	def_object_events

	def_warps_to SILPH_CO_6F

SilphCo6F_Script:
	jp EnableAutoTextBoxDrawing

SilphCo6F_TextPointers:
	dw -1
