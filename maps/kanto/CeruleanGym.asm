CeruleanGym_Object:
	db $3 ; border block

	def_warps
	warp  4, 13, 3, LAST_MAP
	warp  5, 13, 3, LAST_MAP

	def_signs

	def_objects

	def_warps_to CERULEAN_GYM

CeruleanGym_Script:
	jp EnableAutoTextBoxDrawing

CeruleanGym_TextPointers:
	dw -1
