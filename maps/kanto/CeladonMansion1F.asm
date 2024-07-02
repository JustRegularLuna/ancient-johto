CeladonMansion1F_Object:
	db $f ; border block

	def_warp_events
	warp_event  4, 11, LAST_MAP, 3
	warp_event  5, 11, LAST_MAP, 3
	warp_event  4,  0, LAST_MAP, 5
	warp_event  7,  1, CELADON_MANSION_2F, 2
	warp_event  2,  1, CELADON_MANSION_2F, 3

	def_bg_events

	def_object_events

	def_warps_to CELADON_MANSION_1F

CeladonMansion1F_Script:
	jp EnableAutoTextBoxDrawing

CeladonMansion1F_TextPointers:
	dw -1
