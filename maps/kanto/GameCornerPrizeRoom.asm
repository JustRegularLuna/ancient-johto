GameCornerPrizeRoom_Object:
	db $f ; border block

	def_warp_events
	warp_event  4,  7, LAST_MAP, 10
	warp_event  5,  7, LAST_MAP, 10

	def_bg_events

	def_object_events

	def_warps_to GAME_CORNER_PRIZE_ROOM

GameCornerPrizeRoom_Script:
	jp EnableAutoTextBoxDrawing

GameCornerPrizeRoom_TextPointers:
	dw -1
