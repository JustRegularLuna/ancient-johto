PewterCity_Object:
	db $a ; border block

	def_warp_events
	warp_event 14,  7, MUSEUM_1F, 1
	warp_event 19,  5, MUSEUM_1F, 3
	warp_event 16, 17, PEWTER_GYM, 1
	warp_event 29, 13, PEWTER_NIDORAN_HOUSE, 1
	warp_event 23, 17, PEWTER_MART, 1
	warp_event  7, 29, PEWTER_SPEECH_HOUSE, 1
	warp_event 13, 25, PEWTER_POKECENTER, 1

	def_bg_events

	def_object_events

	def_warps_to PEWTER_CITY

PewterCity_Script:
	jp EnableAutoTextBoxDrawing

PewterCity_TextPointers:
	dw -1
