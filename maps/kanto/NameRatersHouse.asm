NameRatersHouse_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 5, LAST_MAP
	warp  3,  7, 5, LAST_MAP

	def_signs

	def_objects

	def_warps_to NAME_RATERS_HOUSE

NameRatersHouse_Script:
	jp EnableAutoTextBoxDrawing

NameRatersHouse_TextPointers:
	dw -1
