; text constants
	const_def 1
	; NPCs
	const ROUTE29_ITEMBALL
	const ROUTE29_BERRYTREE_1
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

	def_warps_to ROUTE_29


Route29_Script:
	jp EnableAutoTextBoxDrawing

Route29_TextPointers:
	dw PickUpItemText
	dw Route29BerryTreeText
	dw Route29Sign1Text
	dw Route29Sign2Text


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

Route29BerryTreeText:
	text_asm
	ld a, FRUITTREE_ROUTE_29
	ld [wWhichTrade], a
	farcall BerryTreeScript
	jp TextScriptEnd
