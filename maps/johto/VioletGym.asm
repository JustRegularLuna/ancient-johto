; text constants
	const_def 1
	; NPCs

	; signs

VioletGym_Object:
	db $0 ; border block

	def_warps
	warp  4, 15, 7, LAST_MAP
	warp  5, 15, 7, LAST_MAP

	def_signs

	def_objects
	;object SPRITE_TEACHER,  2,  3, STAY, RIGHT, CHERRYGROVE_HOUSE1_TEACHER

	def_warps_to VIOLET_GYM


VioletGym_Script:
	jp EnableAutoTextBoxDrawing

VioletGym_TextPointers:
	dw -1
