; text constants
	const_def 1
	; NPCs
	const_export KANSAI_ROUTE_3_FISHER
	const_export KANSAI_ROUTE_3_COOLTRAINER
	const_export KANSAI_ROUTE_3_LASS
	const_export KANSAI_ROUTE_3_FRUIT_TREE
	const_export KANSAI_ROUTE_3_ESCAPE_ROPE
	; Signs
	const KANSAI_ROUTE_3_SIGN
	const KANSAI_ROUTE_3_WOODS_SIGN
	const KANSAI_ROUTE_3_CAVE_SIGN

KansaiRoute3_Object:
	db $05 ; border block

	def_warp_events
	warp_event 33, 10, EVERGREEN_WOODS_NORTH_GATE, 1
	warp_event 33, 11, EVERGREEN_WOODS_NORTH_GATE, 2

	def_bg_events
	bg_event  6,  8, KANSAI_ROUTE_3_SIGN
	bg_event 32,  9, KANSAI_ROUTE_3_WOODS_SIGN
	bg_event 24,  6, KANSAI_ROUTE_3_CAVE_SIGN

	def_object_events
	object_event  8,  6, SPRITE_FISHER, STAY, RIGHT, KANSAI_ROUTE_3_FISHER
	object_event 27,  7, SPRITE_COOLTRAINER_M, STAY, DOWN, KANSAI_ROUTE_3_COOLTRAINER
	object_event 18, 12, SPRITE_LASS, WALK, LEFT_RIGHT, KANSAI_ROUTE_3_LASS
	object_event  7,  6, SPRITE_FRUIT_TREE, STAY, NONE, KANSAI_ROUTE_3_FRUIT_TREE
	object_event 17,  3, SPRITE_POKE_BALL, STAY, NONE, KANSAI_ROUTE_3_ESCAPE_ROPE, ESCAPE_ROPE

	def_warps_to KANSAI_ROUTE_3


KansaiRoute3_Script:
	jp EnableAutoTextBoxDrawing

KansaiRoute3_TextPointers:
	dw KansaiRoute3FisherText
	dw KansaiRoute3CooltrainerText
	dw KansaiRoute3LassText
	dw KansaiRoute3FruitTreeText
	dw PickUpItemText
	dw KansaiRoute3Sign
	dw KansaiRoute3WoodsSign
	dw KansaiRoute3CaveSign

KansaiRoute3FisherText:
	text "I've been fishing"
	line "all day…"

	para "I thought I'd lean"
	line "against this tree"
	cont "and take a quick"
	cont "nap…"

	para "But now, I don't"
	line "feel that sleepy"
	cont "anymore…"
	done

KansaiRoute3CooltrainerText:
	text "Be careful if you"
	line "go in that cave."

	para "I couldn't see an"
	line "inch in front of"
	cont "my face!"
	done

KansaiRoute3LassText:
	text "The #MON here"
	line "are so plain."

	para "I wish there was a"
	line "fluffy one with a"
	cont "zig-zag pattern."
	done

KansaiRoute3FruitTreeText:
	text_asm
	ld a, FRUITTREE_KANSAI_ROUTE_3
	ld [wWhichTrade], a
	farcall BerryTreeScript
	jp TextScriptEnd

KansaiRoute3Sign:
	text "ROUTE 3"

	para "BELLFLOWER CITY -"
	line "SAKURA TOWN"
	done

KansaiRoute3WoodsSign:
	text "EVERGREEN WOODS"
	done

KansaiRoute3CaveSign:
	text "DIM CAVE"
	done
