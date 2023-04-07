CeruleanTrashedHouse_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 0, LAST_MAP
	warp  3,  7, 0, LAST_MAP
	warp  3,  0, 7, LAST_MAP

	def_signs

	def_objects

	def_warps_to CERULEAN_TRASHED_HOUSE

CeruleanTrashedHouse_Script:
	jp EnableAutoTextBoxDrawing

CeruleanTrashedHouse_TextPointers:
	dw -1
