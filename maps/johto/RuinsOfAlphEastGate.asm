; text constants
	const_def 1
	; NPCs
	const_export RUINSEASTGATE_GUARD
	; Signs

RuinsOfAlphEastGate_Object:
	db $a ; border block

	def_warps
	warp  9,  4, 0, ROUTE_32
	warp  9,  5, 1, ROUTE_32
	warp  0,  4, 1, RUINS_OF_ALPH_OUTSIDE
	warp  0,  5, 2, RUINS_OF_ALPH_OUTSIDE

	def_signs

	def_objects
	object SPRITE_OFFICER,  6,  2, STAY, DOWN, RUINSEASTGATE_GUARD

	def_warps_to RUINS_OF_ALPH_EAST_GATE


RuinsOfAlphEastGate_Script:
	jp EnableAutoTextBoxDrawing

RuinsOfAlphEastGate_TextPointers:
	dw RuinsOfAlphEastGateGuardText

RuinsOfAlphEastGateGuardText:
	text "Hello there!"
	done
