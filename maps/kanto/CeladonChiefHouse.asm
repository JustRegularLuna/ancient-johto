CeladonChiefHouse_Object:
	db $f ; border block

	def_warps
	warp  2,  7, 11, LAST_MAP
	warp  3,  7, 11, LAST_MAP

	def_signs

	def_objects

	def_warps_to CELADON_CHIEF_HOUSE

CeladonChiefHouse_Script:
	jp EnableAutoTextBoxDrawing

CeladonChiefHouse_TextPointers:
	dw -1
