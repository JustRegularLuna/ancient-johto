; text constants
	const_def 1
	; NPCs
	const_export KANSAI_ROUTE_1_ITEMBALL
	const_export KANSAI_ROUTE_1_BERRYTREE_1
	const_export KANSAI_ROUTE_1_DUDE
	const_export KANSAI_ROUTE_1_GIRL
	const_export KANSAI_ROUTE_1_PERSON
	; Signs
	const KANSAI_ROUTE_1_EAST_SIGN
	const KANSAI_ROUTE_1_WEST_SIGN

KansaiRoute1_Object:
	db $5D ; border block

	def_warps

	def_signs
	sign 52, 10, KANSAI_ROUTE_1_EAST_SIGN
	sign  3, 5, KANSAI_ROUTE_1_WEST_SIGN

	def_objects
	object SPRITE_POKE_BALL, 26,  9, STAY, NONE, KANSAI_ROUTE_1_ITEMBALL, POTION
	object SPRITE_FRUIT_TREE, 13,  4, STAY, NONE, KANSAI_ROUTE_1_BERRYTREE_1
	object SPRITE_COOLTRAINER_M, 49, 12, STAY, NONE, KANSAI_ROUTE_1_DUDE
	object SPRITE_GIRL, 16, 14, STAY, DOWN, KANSAI_ROUTE_1_GIRL
	object SPRITE_BUG_CATCHER,  7, 12, WALK, LEFT_RIGHT, KANSAI_ROUTE_1_PERSON

	def_warps_to KANSAI_ROUTE_1


KansaiRoute1_Script:
	jp EnableAutoTextBoxDrawing

KansaiRoute1_TextPointers:
	dw PickUpItemText
	dw KansaiRoute1BerryTreeText
	dw KansaiRoute1DudeText
	dw KansaiRoute1GirlText
	dw KansaiRoute1PersonText
	dw KansaiRoute1Sign1Text
	dw KansaiRoute1Sign2Text


KansaiRoute1BerryTreeText:
	text_asm
	ld a, FRUITTREE_KANSAI_ROUTE_1
	ld [wWhichTrade], a
	farcall BerryTreeScript
	jp TextScriptEnd

KansaiRoute1DudeText:
	text "Wild #MON live"
	line "in tall grass."

	para "You never know"
	line "when one might"
	cont "jump out…"
	done

KansaiRoute1GirlText:
	text "You see the ledges"
	line "right here?"

	para "It's scary, but"
	line "you can jump off"
	cont "them."

	para "You can get back"
	line "to SILENT HILLS"

	para "without walking"
	line "through the grass"
	cont "that way!"
	done

KansaiRoute1PersonText:
	text "Different types of"
	line "#MON appear in"
	cont "different areas."

	para "I'm looking for a"
	line "pink one with"

	para "little leaves on"
	line "its head!"
	done

KansaiRoute1Sign1Text:
	text "ROUTE 1"

	para "SILENT HILLS -"
	line "SAKURA TOWN"
	done

KansaiRoute1Sign2Text:
	text "ROUTE 1"

	para "SAKURA TOWN -"
	line "SILENT HILLS"
	done
