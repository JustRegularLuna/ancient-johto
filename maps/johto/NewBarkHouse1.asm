; text constants
	const_def 1
	; NPCs
	const NEWBARK_HOUSE1_GIRL

NewBarkHouse1_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 1, LAST_MAP
	warp  3,  7, 1, LAST_MAP

	def_signs

	def_objects
	object SPRITE_LASS,  2,  3, STAY, RIGHT, NEWBARK_HOUSE1_GIRL

	def_warps_to NEW_BARK_HOUSE_1


NewBarkHouse1_Script:
	jp EnableAutoTextBoxDrawing

NewBarkHouse1_TextPointers:
	dw NewBarkHouse1GirlText

NewBarkHouse1GirlText:
	text "PIKACHU is an"
	line "evolved #MON."

	para "I was amazed by"
	line "PROF.ELM's find-"
	cont "ings."

	para "He's so famous for"
	line "his research on"
	cont "evolution."

	para "…sigh…"

	para "I wish I could be"
	line "a researcher like"
	cont "him…"
	done
