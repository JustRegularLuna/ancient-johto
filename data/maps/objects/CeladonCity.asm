CeladonCity_Object:
	db $f ; border block

	def_warps
	warp  8, 13, 0, CELADON_MART_1F
	warp 10, 13, 2, CELADON_MART_1F
	warp 24,  9, 0, CELADON_MANSION_1F
	warp 24,  3, 2, CELADON_MANSION_1F
	warp 25,  3, 2, CELADON_MANSION_1F
	warp 41,  9, 0, CELADON_POKECENTER
	warp 12, 27, 0, CELADON_GYM
	warp 28, 19, 0, GAME_CORNER
	warp 39, 19, 0, CELADON_MART_5F ; beta warp! no longer used
	warp 33, 19, 0, GAME_CORNER_PRIZE_ROOM
	warp 31, 27, 0, CELADON_DINER
	warp 35, 27, 0, CELADON_CHIEF_HOUSE
	warp 43, 27, 0, CELADON_HOTEL

	def_signs

	def_objects

	def_warps_to CELADON_CITY

CeladonCity_Script:
	jp EnableAutoTextBoxDrawing

CeladonCity_TextPointers:
	dw -1
