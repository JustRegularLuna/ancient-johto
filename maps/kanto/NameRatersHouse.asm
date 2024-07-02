NameRatersHouse_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 6
	warp_event  3,  7, LAST_MAP, 6

	def_bg_events

	def_object_events

	def_warps_to NAME_RATERS_HOUSE

NameRatersHouse_Script:
	jp EnableAutoTextBoxDrawing

NameRatersHouse_TextPointers:
	dw -1
