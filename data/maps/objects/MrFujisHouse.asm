MrFujisHouse_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 2, LAST_MAP
	warp  3,  7, 2, LAST_MAP

	def_signs

	def_objects

	def_warps_to MR_FUJIS_HOUSE

MrFujisHouse_Script:
	jp EnableAutoTextBoxDrawing

MrFujisHouse_TextPointers:
	dw -1
