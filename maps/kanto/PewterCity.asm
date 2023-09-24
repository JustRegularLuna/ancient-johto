PewterCity_Object:
	db $a ; border block

	def_warps
	warp 14,  7, 0, MUSEUM_1F
	warp 19,  5, 2, MUSEUM_1F
	warp 16, 17, 0, PEWTER_GYM
	warp 29, 13, 0, PEWTER_NIDORAN_HOUSE
	warp 23, 17, 0, PEWTER_MART
	warp  7, 29, 0, PEWTER_SPEECH_HOUSE
	warp 13, 25, 0, PEWTER_POKECENTER

	def_signs

	def_objects

	def_warps_to PEWTER_CITY

PewterCity_Script:
	jp EnableAutoTextBoxDrawing

PewterCity_TextPointers:
	dw -1
