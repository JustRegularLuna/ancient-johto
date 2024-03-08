; text constants
	const_def 1
	; NPCs

	; signs

VioletSchoolHouse_Object:
	db $a ; border block

	def_warps
	warp  3, 15, 4, LAST_MAP
	warp  4, 15, 4, LAST_MAP

	def_signs

	def_objects
	;object SPRITE_TEACHER,  2,  3, STAY, RIGHT, CHERRYGROVE_HOUSE1_TEACHER

	def_warps_to VIOLET_SCHOOL_HOUSE


VioletSchoolHouse_Script:
	jp EnableAutoTextBoxDrawing

VioletSchoolHouse_TextPointers:
	dw -1
