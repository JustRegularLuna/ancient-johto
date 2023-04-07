CeruleanCave2F_Object:
	db $7d ; border block

	def_warps
	warp 29,  1, 2, CERULEAN_CAVE_1F
	warp 22,  6, 3, CERULEAN_CAVE_1F
	warp 19,  7, 4, CERULEAN_CAVE_1F
	warp  9,  1, 5, CERULEAN_CAVE_1F
	warp  1,  3, 6, CERULEAN_CAVE_1F
	warp  3, 11, 7, CERULEAN_CAVE_1F

	def_signs

	def_objects

	def_warps_to CERULEAN_CAVE_2F

CeruleanCave2F_Script:
	jp EnableAutoTextBoxDrawing

CeruleanCave2F_TextPointers:
	dw -1
