FuchsiaCity_Object:
	db $f ; border block

	def_warps
	warp  5, 13, 0, FUCHSIA_MART
	warp 11, 27, 0, FUCHSIA_BILLS_GRANDPAS_HOUSE
	warp 19, 27, 0, FUCHSIA_POKECENTER
	warp 27, 27, 0, WARDENS_HOUSE
	warp 18,  3, 0, SAFARI_ZONE_GATE
	warp  5, 27, 0, FUCHSIA_GYM
	warp 22, 13, 0, FUCHSIA_MEETING_ROOM
	warp 31, 27, 1, FUCHSIA_GOOD_ROD_HOUSE
	warp 31, 24, 0, FUCHSIA_GOOD_ROD_HOUSE

	def_signs

	def_objects

	def_warps_to FUCHSIA_CITY

FuchsiaCity_Script:
	jp EnableAutoTextBoxDrawing

FuchsiaCity_TextPointers:
	dw -1
