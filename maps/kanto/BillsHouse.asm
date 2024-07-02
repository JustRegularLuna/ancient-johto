BillsHouse_Object:
	db $d ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 1
	warp_event  3,  7, LAST_MAP, 1

	def_bg_events

	def_object_events

	def_warps_to BILLS_HOUSE

BillsHouse_Script:
	jp EnableAutoTextBoxDrawing

BillsHouse_TextPointers:
	dw -1
