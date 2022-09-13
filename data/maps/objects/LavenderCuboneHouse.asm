LavenderCuboneHouse_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 4, LAST_MAP
	warp  3,  7, 4, LAST_MAP

	def_signs

	def_objects

	def_warps_to LAVENDER_CUBONE_HOUSE

LavenderCuboneHouse_Script:
	jp EnableAutoTextBoxDrawing

LavenderCuboneHouse_TextPointers:
	dw -1
