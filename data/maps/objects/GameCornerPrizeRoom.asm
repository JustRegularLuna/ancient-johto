GameCornerPrizeRoom_Object:
	db $f ; border block

	def_warps
	warp  4,  7, 9, LAST_MAP
	warp  5,  7, 9, LAST_MAP

	def_signs

	def_objects

	def_warps_to GAME_CORNER_PRIZE_ROOM

GameCornerPrizeRoom_Script:
	jp EnableAutoTextBoxDrawing

GameCornerPrizeRoom_TextPointers:
	dw -1
