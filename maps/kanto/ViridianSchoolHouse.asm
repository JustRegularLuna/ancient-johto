ViridianSchoolHouse_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 2, LAST_MAP
	warp  3,  7, 2, LAST_MAP

	def_signs

	def_objects

	def_warps_to VIRIDIAN_SCHOOL_HOUSE

ViridianSchoolHouse_Script:
	jp EnableAutoTextBoxDrawing

ViridianSchoolHouse_TextPointers:
	dw -1
