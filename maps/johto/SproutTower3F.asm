; text constants
	const_def 1
	; NPCs

	; signs

SproutTower3F_Object:
	db $0 ; border block

	def_warps
	warp  8, 14, 3, SPROUT_TOWER_2F

	def_signs

	def_objects
	;object SPRITE_TEACHER,  2,  3, STAY, RIGHT, CHERRYGROVE_HOUSE1_TEACHER

	def_warps_to SPROUT_TOWER_3F


SproutTower3F_Script:
	jp EnableAutoTextBoxDrawing

SproutTower3F_TextPointers:
	dw -1
