FuchsiaMeetingRoom_Object:
	db $17 ; border block

	def_warp_events
	warp_event  4,  7, LAST_MAP, 7
	warp_event  5,  7, LAST_MAP, 7

	def_bg_events

	def_object_events

	def_warps_to FUCHSIA_MEETING_ROOM

FuchsiaMeetingRoom_Script:
	jp EnableAutoTextBoxDrawing

FuchsiaMeetingRoom_TextPointers:
	dw -1
