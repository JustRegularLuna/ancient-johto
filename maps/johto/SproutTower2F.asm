; text constants
	const_def 1
	; NPCs

	; signs

SproutTower2F_Object:
	db $0 ; border block

	def_warps
	warp  4,  4, 2, SPROUT_TOWER_1F
	warp 15,  3, 3, SPROUT_TOWER_1F
	warp  0,  6, 4, SPROUT_TOWER_1F
	warp  8, 14, 0, SPROUT_TOWER_3F

	def_signs

	def_objects
	;object SPRITE_TEACHER,  2,  3, STAY, RIGHT, CHERRYGROVE_HOUSE1_TEACHER

	def_warps_to SPROUT_TOWER_2F


SproutTower2F_Script:
	jp EnableAutoTextBoxDrawing

SproutTower2F_TextPointers:
	dw -1
