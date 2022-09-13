FuchsiaMeetingRoom_Object:
	db $17 ; border block

	def_warps
	warp  4,  7, 6, LAST_MAP
	warp  5,  7, 6, LAST_MAP

	def_signs

	def_objects

	def_warps_to FUCHSIA_MEETING_ROOM

FuchsiaMeetingRoom_Script:
	jp EnableAutoTextBoxDrawing

FuchsiaMeetingRoom_TextPointers:
	dw -1
