GameCorner_Object:
	db $f ; border block

	def_warps
	warp 15, 17, 7, LAST_MAP
	warp 16, 17, 7, LAST_MAP
	warp 17,  4, 1, ROCKET_HIDEOUT_B1F

	def_signs

	def_objects

	def_warps_to GAME_CORNER

GameCorner_Script:
	jp EnableAutoTextBoxDrawing

GameCorner_TextPointers:
	dw -1
