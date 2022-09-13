CeruleanCaveB1F_Object:
	db $7d ; border block

	def_warps
	warp  3,  6, 8, CERULEAN_CAVE_1F

	def_signs

	def_objects

	def_warps_to CERULEAN_CAVE_B1F

CeruleanCaveB1F_Script:
	jp EnableAutoTextBoxDrawing

CeruleanCaveB1F_TextPointers:
	dw -1
