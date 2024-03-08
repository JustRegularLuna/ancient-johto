; text constants
	const_def 1
	; NPCs

	; signs

VioletHouse2_Object:
	db $0 ; border block

	def_warps
	warp  3,  7, 6, LAST_MAP
	warp  4,  7, 6, LAST_MAP

	def_signs

	def_objects
	;object SPRITE_TEACHER,  2,  3, STAY, RIGHT, CHERRYGROVE_HOUSE1_TEACHER

	def_warps_to VIOLET_HOUSE_2


VioletHouse2_Script:
	jp EnableAutoTextBoxDrawing

VioletHouse2_TextPointers:
	dw -1
