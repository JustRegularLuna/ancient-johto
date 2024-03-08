; text constants
	const_def 1
	; NPCs
	const_export ROUTE31GATE_GUARD
	; Signs

Route31Gate_Object:
	db $a ; border block

	def_warps
	warp  9,  4, 0, ROUTE_31
	warp  9,  5, 1, ROUTE_31
	warp  0,  4, 0, VIOLET_CITY
	warp  0,  5, 1, VIOLET_CITY

	def_signs

	def_objects
	object SPRITE_OFFICER,  6,  2, STAY, DOWN, ROUTE31GATE_GUARD

	def_warps_to ROUTE_31_GATE


Route31Gate_Script:
	jp EnableAutoTextBoxDrawing

Route31Gate_TextPointers:
	dw Route31GateGuardText

Route31GateGuardText:
	text "Hello there! Are"
	line "you going to see"
	cont "SPROUT TOWER?"

	para "Please, enjoy your"
	line "stay in VIOLET"
	cont "CITY!"
	done
