CopycatsHouse2F_Object:
	db $0 ; border block

	def_warp_events
	warp_event  7,  0, COPYCATS_HOUSE_1F, 3

	def_bg_events

	def_object_events

	def_warps_to COPYCATS_HOUSE_2F

CopycatsHouse2F_Script:
	jp EnableAutoTextBoxDrawing

CopycatsHouse2F_TextPointers:
	dw -1
