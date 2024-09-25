; text constants
	const_def 1
	; NPCs
	const_export WOODS_NORTH_GATE_OFFICER
	; Signs

EvergreenWoodsNorthGate_Object:
	db $0 ; border block

	def_warp_events
	warp_event  0,  4, KANSAI_ROUTE_3, 1
	warp_event  0,  5, KANSAI_ROUTE_3, 2
	warp_event  9,  4, EVERGREEN_WOODS, 3
	warp_event  9,  5, EVERGREEN_WOODS, 4

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_OFFICER, STAY, DOWN, WOODS_NORTH_GATE_OFFICER

	def_warps_to EVERGREEN_WOODS_NORTH_GATE


EvergreenWoodsNorthGate_Script:
	jp EnableAutoTextBoxDrawing

EvergreenWoodsNorthGate_TextPointers:
	dw EvergreenWoodsNorthGateOfficerText

EvergreenWoodsNorthGateOfficerText:
	text "Hey there! Just"
	line "passing through?"

	para "You should stop"
	line "and see all that"
	cont "BELLFLOWER CITY"
	cont "has to offer!"
	done
