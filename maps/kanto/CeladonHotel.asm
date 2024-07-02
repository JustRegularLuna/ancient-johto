CeladonHotel_Object:
	db $0 ; border block

	def_warp_events
	warp_event  3,  7, LAST_MAP, 13
	warp_event  4,  7, LAST_MAP, 13

	def_bg_events

	def_object_events

	def_warps_to CELADON_HOTEL

CeladonHotel_Script:
	jp EnableAutoTextBoxDrawing

CeladonHotel_TextPointers:
	dw -1
