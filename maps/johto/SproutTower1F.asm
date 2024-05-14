; text constants
	const_def 1
	; NPCs
	const_export SPROUT_TOWER_1F_SAGE_GREETER
	; signs

SproutTower1F_Object:
	db $0 ; border block

	def_warps
	warp  7, 15, 8, LAST_MAP
	warp  8, 15, 8, LAST_MAP
	warp  4,  4, 0, SPROUT_TOWER_2F
	warp 15,  3, 1, SPROUT_TOWER_2F
	warp  0,  6, 2, SPROUT_TOWER_2F

	def_signs

	def_objects
	object SPRITE_SAGE,  9,  8, STAY, DOWN, SPROUT_TOWER_1F_SAGE_GREETER

	def_warps_to SPROUT_TOWER_1F


SproutTower1F_Script:
	jp EnableAutoTextBoxDrawing

SproutTower1F_TextPointers:
	dw SproutTower1FSageGreeterText

SproutTower1FSageGreeterText:
	text "We have dedicated"
	line "our lives to"
	cont "studying the ways"
	cont "of BELLSPROUT."

	para "It's fine."
	done
