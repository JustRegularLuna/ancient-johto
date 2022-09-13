SaffronCity_Object:
	db $f ; border block

	def_warps
	warp  7,  5, 0, COPYCATS_HOUSE_1F
	warp 26,  3, 0, FIGHTING_DOJO
	warp 34,  3, 0, SAFFRON_GYM
	warp 13, 11, 0, SAFFRON_PIDGEY_HOUSE
	warp 25, 11, 0, SAFFRON_MART
	warp 18, 21, 0, SILPH_CO_1F
	warp  9, 29, 0, SAFFRON_POKECENTER
	warp 29, 29, 0, MR_PSYCHICS_HOUSE

	def_signs

	def_objects

	def_warps_to SAFFRON_CITY

SaffronCity_Script:
	jp EnableAutoTextBoxDrawing

SaffronCity_TextPointers:
	dw -1
