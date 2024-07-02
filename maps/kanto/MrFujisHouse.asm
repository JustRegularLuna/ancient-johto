MrFujisHouse_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 3
	warp_event  3,  7, LAST_MAP, 3

	def_bg_events

	def_object_events

	def_warps_to MR_FUJIS_HOUSE

MrFujisHouse_Script:
	jp EnableAutoTextBoxDrawing

MrFujisHouse_TextPointers:
	dw -1
