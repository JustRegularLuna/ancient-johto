; text constants
	const_def 1
	; NPCs
	const_export CHERRYGROVE_HOUSE3_GAMBLER
	; signs

CherrygroveHouse3_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 4, LAST_MAP
	warp  3,  7, 4, LAST_MAP

	def_signs

	def_objects
	object SPRITE_GAMBLER,  2,  3, STAY, RIGHT, CHERRYGROVE_HOUSE3_GAMBLER

	def_warps_to CHERRYGROVE_HOUSE_3


CherrygroveHouse3_Script:
	jp EnableAutoTextBoxDrawing

CherrygroveHouse3_TextPointers:
	dw CherrygroveHouse3GamblerText

CherrygroveHouse3GamblerText:
	text "CHERRYGROVE CITY"
	line "is a nice place"
	cont "to live."

	para "There were too"
	line "many slackers"
	cont "where I used to"
	cont "live…"
	done
