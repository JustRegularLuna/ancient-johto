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

	def_warp_events

	def_bg_events
	bg_event 52, 10, KANSAI_ROUTE_1_EAST_SIGN
	bg_event  3, 5, KANSAI_ROUTE_1_WEST_SIGN

	def_object_events
	object_event 26,  9, SPRITE_POKE_BALL, STAY, NONE, KANSAI_ROUTE_1_ITEMBALL, POTION
	object_event 13,  4, SPRITE_FRUIT_TREE, STAY, NONE, KANSAI_ROUTE_1_BERRYTREE_1
	object_event 49, 12, SPRITE_COOLTRAINER_M, STAY, NONE, KANSAI_ROUTE_1_DUDE
	object_event 16, 14, SPRITE_GIRL, STAY, DOWN, KANSAI_ROUTE_1_GIRL
	object_event  7, 12, SPRITE_BUG_CATCHER, WALK, LEFT_RIGHT, KANSAI_ROUTE_1_PERSON

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
	line "cute one with"

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
