CeruleanTrashedHouse_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 1
	warp_event  3,  7, LAST_MAP, 1
	warp_event  3,  0, LAST_MAP, 8

	def_bg_events

	def_object_events

	def_warps_to CERULEAN_TRASHED_HOUSE

CeruleanTrashedHouse_Script:
	jp EnableAutoTextBoxDrawing

CeruleanTrashedHouse_TextPointers:
	dw -1
