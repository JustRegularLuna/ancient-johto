CeruleanBadgeHouse_Object:
	db $c ; border block

	def_warps
	warp  2,  0, 9, LAST_MAP
	warp  2,  7, 8, LAST_MAP
	warp  3,  7, 8, LAST_MAP

	def_signs

	def_objects

	def_warps_to CERULEAN_BADGE_HOUSE

CeruleanBadgeHouse_Script:
	jp EnableAutoTextBoxDrawing

CeruleanBadgeHouse_TextPointers:
	dw -1
