; text constants
	const_def 1
	; NPCs
	const ROUTE29_ITEMBALL
	const ROUTE29_BERRYTREE_1
	const ROUTE29_DUDE
	const ROUTE29_GIRL
	const ROUTE29_PERSON
	; Signs
	const ROUTE29_EAST_SIGN
	const ROUTE29_WEST_SIGN

Route29_Object:
	db $5 ; border block

	def_warps

	def_signs
	sign 51, 7, ROUTE29_EAST_SIGN
	sign  3, 5, ROUTE29_WEST_SIGN

	def_objects
	object SPRITE_POKE_BALL, 48,  2, STAY, NONE, ROUTE29_ITEMBALL, POTION
	object SPRITE_FRUIT_TREE, 13,  3, STAY, NONE, ROUTE29_BERRYTREE_1
	object SPRITE_COOLTRAINER_M, 49, 12, STAY, NONE, ROUTE29_DUDE
	object SPRITE_GIRL, 16, 11, STAY, DOWN, ROUTE29_GIRL
	object SPRITE_BUG_CATCHER,  6, 12, WALK, LEFT_RIGHT, ROUTE29_PERSON

	def_warps_to ROUTE_29


Route29_Script:
	jp EnableAutoTextBoxDrawing

Route29_TextPointers:
	dw PickUpItemText
	dw Route29BerryTreeText
	dw Route29DudeText
	dw Route29GirlText
	dw Route29PersonText
	dw Route29Sign1Text
	dw Route29Sign2Text


Route29BerryTreeText:
	text_asm
	ld a, FRUITTREE_ROUTE_29
	ld [wWhichTrade], a
	farcall BerryTreeScript
	jp TextScriptEnd

Route29DudeText:
	text "Wild #MON live"
	line "in tall grass."

	para "You never know"
	line "when one might"
	cont "jump out…"
	done

Route29GirlText:
	text "You see the ledges"
	line "right here?"

	para "It's scary, but"
	line "you can jump off"
	cont "them."

	para "You can get back"
	line "to NEW BARK TOWN"

	para "without walking"
	line "through the grass"
	cont "that way!"
	done

Route29PersonText:
	text "Different types of"
	line "#MON appear in"
	cont "different areas."

	para "I'm looking for a"
	line "pink one with"

	para "little leaves on"
	line "its head!"
	done

Route29Sign1Text:
	text "ROUTE 29"

	para "NEW BARK TOWN -"
	line "CHERRYGROVE CITY"
	done

Route29Sign2Text:
	text "ROUTE 29"

	para "CHERRYGROVE CITY -"
	line "NEW BARK TOWN"
	done
