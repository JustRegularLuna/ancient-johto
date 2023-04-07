CeruleanCity_Object:
	db $f ; border block

	def_warps
	warp 27, 11, 0, CERULEAN_TRASHED_HOUSE
	warp 13, 15, 0, CERULEAN_TRADE_HOUSE
	warp 19, 17, 0, CERULEAN_POKECENTER
	warp 30, 19, 0, CERULEAN_GYM
	warp 13, 25, 0, BIKE_SHOP
	warp 25, 25, 0, CERULEAN_MART
	warp  4, 11, 0, CERULEAN_CAVE_1F
	warp 27,  9, 2, CERULEAN_TRASHED_HOUSE
	warp  9, 11, 1, CERULEAN_BADGE_HOUSE
	warp  9,  9, 0, CERULEAN_BADGE_HOUSE

	def_signs

	def_objects

	def_warps_to CERULEAN_CITY

CeruleanCity_Script:
	jp EnableAutoTextBoxDrawing

CeruleanCity_TextPointers:
	dw -1
