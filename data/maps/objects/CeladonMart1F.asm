CeladonMart1F_Object:
	db $f ; border block

	def_warps
	warp  2,  7, 0, LAST_MAP
	warp  3,  7, 0, LAST_MAP
	warp 16,  7, 1, LAST_MAP
	warp 17,  7, 1, LAST_MAP
	warp 12,  1, 0, CELADON_MART_2F
	warp  1,  1, 0, CELADON_MART_ELEVATOR

	def_signs

	def_objects

	def_warps_to CELADON_MART_1F

CeladonMart1F_Script:
	jp EnableAutoTextBoxDrawing

CeladonMart1F_TextPointers:
	dw -1
