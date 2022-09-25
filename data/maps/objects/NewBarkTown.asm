NewBarkTown_Object:
	db $5 ; border block

	def_warps
	warp 13,  5, 1, PLAYERS_HOUSE_1F
	warp  3, 11, 0, NEW_BARK_HOUSE_1
	warp 11, 13, 0, NEW_BARK_HOUSE_2
	warp  6,  3, 0, ELMS_LAB

	def_signs
	sign  8,  8, 4
	sign 11,  5, 5
	sign  9, 13, 6
	sign  3,  3, 7

	def_objects
	object SPRITE_RIVAL,  3,  2, STAY, RIGHT, 1 ; person
	object SPRITE_TEACHER,  6,  8, STAY, NONE, 2 ; person
	object SPRITE_FISHER, 12,  9, WALK, ANY_DIR, 3 ; person

	def_warps_to NEW_BARK_TOWN


NewBarkTown_Script:
	jp EnableAutoTextBoxDrawing

NewBarkTown_TextPointers:
	dw NewBarkTownText1
	dw NewBarkTownText2
	dw NewBarkTownText3
	dw NewBarkTownText4
	dw NewBarkTownText5
	dw NewBarkTownText6
	dw NewBarkTownText7

NewBarkTownText1:
	text "<……>"

	para "So this is the"
	line "famous ELM #MON"
	cont "LAB…"

	para "…What are you"
	line "staring at?"
	done

NewBarkTownText2:
	text "Wow, your #GEAR"
	line "is impressive!"

	para "Did your mom get"
	line "it for you?"
	done

NewBarkTownText3:
	text "Yo, <PLAYER>!"

	para "I hear PROF.ELM"
	line "discovered some"
	cont "new #MON."
	done

NewBarkTownText4:
	text "NEW BARK TOWN"

	para "The Town Where the"
	line "Winds of a New"
	cont "Beginning Blow"
	done

NewBarkTownText5:
	text "<PLAYER>'s House"
	done

NewBarkTownText6:
	text "ELM'S HOUSE"
	done

NewBarkTownText7:
	text "ELM #MON LAB"
	done
