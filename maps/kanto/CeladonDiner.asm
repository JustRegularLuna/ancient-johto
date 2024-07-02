CeladonDiner_Object:
	db $f ; border block

	def_warp_events
	warp_event  3,  7, LAST_MAP, 11
	warp_event  4,  7, LAST_MAP, 11

	def_bg_events

	def_object_events

	def_warps_to CELADON_DINER

CeladonDiner_Script:
	jp EnableAutoTextBoxDrawing

CeladonDiner_TextPointers:
	dw -1
