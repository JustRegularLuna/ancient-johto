RedsHouse1F_Object:
	db $0 ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 1
	warp_event  3,  7, LAST_MAP, 1
	warp_event  7,  0, REDS_HOUSE_2F, 1

	def_bg_events

	def_object_events

	def_warps_to REDS_HOUSE_1F

RedsHouse1F_Script:
	jp EnableAutoTextBoxDrawing

RedsHouse1F_TextPointers:
	dw -1
