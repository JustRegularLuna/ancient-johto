RedsHouse2F_Object:
	db $0 ; border block

	def_warp_events
	warp_event  7,  0, REDS_HOUSE_1F, 3

	def_bg_events

	def_object_events

	def_warps_to REDS_HOUSE_2F

RedsHouse2F_Script:
	jp EnableAutoTextBoxDrawing

RedsHouse2F_TextPointers:
	dw -1
