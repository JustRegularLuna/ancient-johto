VermilionCity_Object:
	db $43 ; border block

	def_warps
	warp 11,  3, 0, VERMILION_POKECENTER
	warp  9, 13, 0, POKEMON_FAN_CLUB
	warp 23, 13, 0, VERMILION_MART
	warp 12, 19, 0, VERMILION_GYM
	warp 23, 19, 0, VERMILION_PIDGEY_HOUSE
	warp 18, 31, 0, VERMILION_DOCK
	warp 19, 31, 0, VERMILION_DOCK
	warp 15, 13, 0, VERMILION_TRADE_HOUSE
	warp  7,  3, 0, VERMILION_OLD_ROD_HOUSE

	def_signs

	def_objects

	def_warps_to VERMILION_CITY

VermilionCity_Script:
	jp EnableAutoTextBoxDrawing

VermilionCity_TextPointers:
	dw -1
