ViridianCity_Object:
	db $f ; border block

	def_warp_events
	warp_event 23, 25, VIRIDIAN_POKECENTER, 1
	warp_event 29, 19, VIRIDIAN_MART, 1
	warp_event 21,  3, VIRIDIAN_SCHOOL_HOUSE, 1
	warp_event 21,  9, VIRIDIAN_NICKNAME_HOUSE, 1
	warp_event 32,  7, VIRIDIAN_GYM, 1

	def_bg_events

	def_object_events

	def_warps_to VIRIDIAN_CITY

ViridianCity_Script:
	jp EnableAutoTextBoxDrawing

ViridianCity_TextPointers:
	dw -1
