; text constants
	const_def 1
	; NPCs
	const_export KURTS_HOUSE_KURT
	const_export KURTS_HOUSE_GRANDAUGHTER
	const_export KURTS_HOUSE_SLOWPOKE
	; signs
	const KURTS_HOUSE_POSTER_LEFT
	const KURTS_HOUSE_POSTER_RIGHT
	const KURTS_HOUSE_WORKBENCH

KurtsHouse_Object:
	db $0 ; border block

	def_warp_events
	warp_event  3,  7, LAST_MAP, 10
	warp_event  4,  7, LAST_MAP, 10

	def_bg_events
	bg_event  8,  0, KURTS_HOUSE_POSTER_LEFT
	bg_event  9,  0, KURTS_HOUSE_POSTER_RIGHT
	bg_event 14,  2, KURTS_HOUSE_WORKBENCH

	def_object_events
	object_event  3,  2, SPRITE_KURT, STAY, DOWN, KURTS_HOUSE_KURT
	object_event  5,  3, SPRITE_TWIN, STAY, DOWN, KURTS_HOUSE_GRANDAUGHTER
	object_event  6,  3, SPRITE_ICON_SLOWPOKE, STAY, NONE, KURTS_HOUSE_SLOWPOKE

	def_warps_to KURTS_HOUSE


KurtsHouse_Script:
	jp EnableAutoTextBoxDrawing

KurtsHouse_TextPointers:
	dw KurtsHouseKurtText
	dw KurtsHouseGrandaughterText
	dw KurtsHouseSlowpokeText
	dw KurtsHousePosterText
	dw KurtsHousePosterText
	dw KurtsHouseWorkbenchText

KurtsHouseKurtText:
	text "KURT: I make BALLS"
	line "from APRICORNS."

	para "Collect them from"
	line "trees and bring"
	cont "'em to me."

	para "I'll make BALLS"
	line "out of them."
	done

KurtsHouseGrandaughterText:
	text "Dad works at SILPH"
	line "where he studies"
	cont "# BALLS."

	para "I have to stay"
	line "home with Grandpa"
	cont "and SLOWPOKE."
	done

KurtsHouseSlowpokeText:
	text "SLOWPOKE: …"
	line "Yawn?"
	done

KurtsHousePosterText:
	text "A framed picture"
	line "of KURT, standing"
	cont "with a woman and…"
	cont "a young PROF.OAK?"
	done

KurtsHouseWorkbenchText:
	text "There are a lot of"
	line "craftsman's tools"
	cont "on the workbench."
	done
