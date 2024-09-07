; text constants
	const_def 1
	; NPCs
	const_export WOODS_SOUTH_GATE_2F_KID
	const_export WOODS_SOUTH_GATE_2F_LARRY

	; Signs
	const WOODS_SOUTH_GATE_2F_LEFT_TELESCOPE
	const WOODS_SOUTH_GATE_2F_RIGHT_TELESCOPE

EvergreenWoodsSouthGate2F_Object:
	db $a ; border block

	def_warp_events
	warp_event  7,  7, EVERGREEN_WOODS_SOUTH_GATE, 5

	def_bg_events
	bg_event  1,  2, WOODS_SOUTH_GATE_2F_LEFT_TELESCOPE
	bg_event  6,  2, WOODS_SOUTH_GATE_2F_RIGHT_TELESCOPE

	def_object_events
	object_event  5,  2, SPRITE_TWIN, STAY, UP, WOODS_SOUTH_GATE_2F_KID
	object_event  3,  5, SPRITE_SILPH_GUY, WALK, LEFT_RIGHT, WOODS_SOUTH_GATE_2F_LARRY

	def_warps_to EVERGREEN_WOODS_SOUTH_GATE_2F


EvergreenWoodsSouthGate2F_Script:
	jp EnableAutoTextBoxDrawing

EvergreenWoodsSouthGate2F_TextPointers:
	dw EvergreenWoodsSouthGate2FKidText
	dw EvergreenWoodsSouthGate2FLarryText
	dw EvergreenWoodsSouthGate2FLeftTelescopeText
	dw EvergreenWoodsSouthGate2FRightTelescopeText

EvergreenWoodsSouthGate2FKidText:
	text "Hey look! I can"
	line "see trainers out"
	cont "there battling in"
	cont "the woods!"
	done

EvergreenWoodsSouthGate2FLarryText:
	text_asm
	ld a, TRADE_FOR_SPARKY
	ld [wWhichTrade], a
	predef DoInGameTradeDialogue
	jp TextScriptEnd

EvergreenWoodsSouthGate2FLeftTelescopeText:
	text "Looked into the"
	line "telescope!"

	para "An old tower is"
	line "swaying from side"
	cont "to side!"
	done

EvergreenWoodsSouthGate2FRightTelescopeText:
	text "Looked into the"
	line "telescope!"

	para "Trainers battling"
	line "out in the woods!"
	done
