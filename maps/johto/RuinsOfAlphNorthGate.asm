; text constants
	const_def 1
	; NPCs
	const_export RUINSNORTHGATE_GUARD
	; Signs

RuinsOfAlphNorthGate_Object:
	db $a ; border block

	def_warps
	warp  4,  0, 0, ROUTE_36
	warp  5,  0, 1, ROUTE_36
	warp  4,  7, 0, RUINS_OF_ALPH_OUTSIDE
	warp  5,  7, 0, RUINS_OF_ALPH_OUTSIDE
	warp  9,  7, 0, RUINS_OF_ALPH_NORTH_GATE_2F

	def_signs

	def_objects
	object SPRITE_OFFICER_JENNY,  0,  3, STAY, RIGHT, RUINSNORTHGATE_GUARD

	def_warps_to RUINS_OF_ALPH_NORTH_GATE


RuinsOfAlphNorthGate_Script:
	jp EnableAutoTextBoxDrawing

RuinsOfAlphNorthGate_TextPointers:
	dw RuinsOfAlphNorthGateGuardText

RuinsOfAlphNorthGateGuardText:
	text "The RUINS OF ALPH"
	line "are thousands of"
	cont "years old."

	para "It's amazing what"
	line "people could do"
	cont "back then!"

	para "Yes, PEOPLE built"
	line "them, no matter"

	para "what they might"
	line "say on TV…"
	done
