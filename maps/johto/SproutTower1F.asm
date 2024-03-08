; text constants
	const_def 1
	; NPCs

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
	;object SPRITE_TEACHER,  2,  3, STAY, RIGHT, CHERRYGROVE_HOUSE1_TEACHER

	def_warps_to SPROUT_TOWER_1F


SproutTower1F_Script:
	jp EnableAutoTextBoxDrawing

SproutTower1F_TextPointers:
	dw -1
