; text constants
	const_def 1
	; NPCs
	const CHERRYGROVE_RIVAL
	; Signs
	const CHERRYGROVE_CITY_SIGN

CherrygroveCity_Object:
	db $35 ; border block

	def_warps
	warp 29,  3, 0, CHERRYGROVE_POKECENTER
	warp 23,  3, 0, CHERRYGROVE_MART
	warp 17,  7, 0, CHERRYGROVE_HOUSE_1
	warp 25,  9, 0, CHERRYGROVE_HOUSE_2
	warp 31, 11, 0, CHERRYGROVE_HOUSE_3

	def_signs

	def_objects

	def_warps_to CHERRYGROVE_CITY


CherrygroveCity_Script:
	jp EnableAutoTextBoxDrawing

CherrygroveCity_TextPointers:
	dw CherrygroveCityText1

CherrygroveCityText1:
	text "!"
	done
