CeladonMansion1F_Object:
	db $f ; border block

	def_warps
	warp  4, 11, 2, LAST_MAP
	warp  5, 11, 2, LAST_MAP
	warp  4,  0, 4, LAST_MAP
	warp  7,  1, 1, CELADON_MANSION_2F
	warp  2,  1, 2, CELADON_MANSION_2F

	def_signs

	def_objects

	def_warps_to CELADON_MANSION_1F

CeladonMansion1F_Script:
	jp EnableAutoTextBoxDrawing

CeladonMansion1F_TextPointers:
	dw -1
