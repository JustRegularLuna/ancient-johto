; text constants
	const_def 1
	; NPCs
	const CHERRYGROVE_HOUSE1_TEACHER
	const CHERRYGROVE_HOUSE1_EEVEE
	; signs

CherrygroveHouse1_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 2, LAST_MAP
	warp  3,  7, 2, LAST_MAP

	def_signs

	def_objects
	object SPRITE_TEACHER,  2,  3, STAY, RIGHT, CHERRYGROVE_HOUSE1_TEACHER
	object SPRITE_ICON_FOX,  2,  4, STAY, NONE, CHERRYGROVE_HOUSE1_EEVEE

	def_warps_to CHERRYGROVE_HOUSE_1


CherrygroveHouse1_Script:
	jp EnableAutoTextBoxDrawing

CherrygroveHouse1_TextPointers:
	dw CherrygroveHouse1TeacherText
	dw CherrygroveHouse1EeveeText

CherrygroveHouse1TeacherText:
	text "I can't decide"
	line "whether to get a"

	para "MOON STONE or a"
	line "SUN STONE to use"
	cont "on my EEVEE."
	done

CherrygroveHouse1EeveeText:
	text "EEVEE: Ouii!"
	done
