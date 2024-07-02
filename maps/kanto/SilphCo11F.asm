SilphCo11F_Object:
	db $d ; border block

	def_warp_events
	warp_event  9,  0, SILPH_CO_10F, 2
	warp_event 13,  0, SILPH_CO_ELEVATOR, 1
	warp_event  5,  5, LAST_MAP, 10
	warp_event  3,  2, SILPH_CO_7F, 4

	def_bg_events

	def_object_events

	def_warps_to SILPH_CO_11F

SilphCo11F_Script:
	jp EnableAutoTextBoxDrawing

SilphCo11F_TextPointers:
	dw -1
