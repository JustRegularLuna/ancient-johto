; text constants
	const_def 1
	; NPCs
	const_export ROUTE36_SUDOWOODO
	; signs

Route36_Object:
	db $5 ; border block

	def_warps
	warp 47, 13, 0, RUINS_OF_ALPH_NORTH_GATE
	warp 48, 13, 1, RUINS_OF_ALPH_NORTH_GATE

	def_signs

	def_objects
	object SPRITE_WEIRD_TREE, 35,  9, STAY, DOWN, ROUTE36_SUDOWOODO

	def_warps_to ROUTE_36


Route36_Script:
	jp EnableAutoTextBoxDrawing

Route36_TextPointers:
	dw Route36SudowoodoText

Route36SudowoodoText:
	text "A weird tree is"
	line "blocking the way!"
	done
