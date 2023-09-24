; text constants
	const_def 1
	; NPCs
	const ELMSHOUSE_ELMS_WIFE
	const ELMSHOUSE_ELMS_SON

NewBarkHouse2_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 2, LAST_MAP
	warp  3,  7, 2, LAST_MAP

	def_signs

	def_objects
	object SPRITE_TEACHER,  2,  4, STAY, RIGHT, ELMSHOUSE_ELMS_WIFE
	object SPRITE_BUG_CATCHER,  5,  3, STAY, UP, ELMSHOUSE_ELMS_SON

	def_warps_to NEW_BARK_HOUSE_2


NewBarkHouse2_Script:
	jp EnableAutoTextBoxDrawing

NewBarkHouse2_TextPointers:
	dw ElmsWifeText
	dw ElmsSonText

ElmsWifeText:
	text "Hi, <PLAYER>! Did"
	line "you come here"

	para "looking for my"
	line "husband?"

	para "He's out at his"
	line "lab right now."

	para "I wish he would"
	line "spend more time"
	cont "here at home…"
	done

ElmsSonText:
	text "I like it when Dad"
	line "lets me help take"

	para "care of #MON"
	line "at the lab."

	para "I'm gonna be just"
	line "like him when I"
	cont "grow up!"
	done
