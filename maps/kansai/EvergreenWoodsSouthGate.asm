; text constants
	const_def 1
	; NPCs
	const_export WOODS_SOUTH_GATE_JENNY
	const_export WOODS_SOUTH_GATE_GRANNY
	; Signs

EvergreenWoodsSouthGate_Object:
	db $a ; border block

	def_warp_events
	warp_event  4,  7, KANSAI_ROUTE_2, 1
	warp_event  5,  7, KANSAI_ROUTE_2, 2
	warp_event  4,  0, EVERGREEN_WOODS, 1
	warp_event  5,  0, EVERGREEN_WOODS, 2
	warp_event  9,  7, EVERGREEN_WOODS_SOUTH_GATE_2F, 1

	def_bg_events

	def_object_events
	object_event  0,  3, SPRITE_OFFICER_JENNY, STAY, RIGHT, WOODS_SOUTH_GATE_JENNY
	object_event  6,  4, SPRITE_GRANNY, WALK, UP_DOWN, WOODS_SOUTH_GATE_GRANNY

	def_warps_to EVERGREEN_WOODS_SOUTH_GATE


EvergreenWoodsSouthGate_Script:
	jp EnableAutoTextBoxDrawing

EvergreenWoodsSouthGate_TextPointers:
	dw EvergreenWoodsSouthGateJennyText
	dw EvergreenWoodsSouthGateGrannyText

EvergreenWoodsSouthGateJennyText:
	text "I'd better not"
	line "catch you getting"
	cont "up to any sort of"
	cont "shenanigans in"
	cont "the woods here."
	done

EvergreenWoodsSouthGateGrannyText:
	text "It's a long walk"
	line "up to BELLFLOWER"
	cont "CITY, but I'm"
	cont "used to it."

	para "I've been walking"
	line "this trail since"
	cont "I was a little"
	cont "girl."
	done
