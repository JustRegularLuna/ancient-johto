VermilionOldRodHouse_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 8, LAST_MAP
	warp  3,  7, 8, LAST_MAP

	def_signs

	def_objects

	def_warps_to VERMILION_OLD_ROD_HOUSE

VermilionOldRodHouse_Script:
	jp EnableAutoTextBoxDrawing

VermilionOldRodHouse_TextPointers:
	dw -1
