WardensHouse_Object:
	db $17 ; border block

	def_warp_events
	warp_event  4,  7, LAST_MAP, 4
	warp_event  5,  7, LAST_MAP, 4

	def_bg_events

	def_object_events

	def_warps_to WARDENS_HOUSE

WardensHouse_Script:
	jp EnableAutoTextBoxDrawing

WardensHouse_TextPointers:
	dw -1
