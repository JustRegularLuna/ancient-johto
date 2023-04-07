CeladonMansion2F_Object:
	db $f ; border block

	def_warps
	warp  6,  1, 0, CELADON_MANSION_3F
	warp  7,  1, 3, CELADON_MANSION_1F
	warp  2,  1, 4, CELADON_MANSION_1F
	warp  4,  1, 3, CELADON_MANSION_3F

	def_signs

	def_objects

	def_warps_to CELADON_MANSION_2F

CeladonMansion2F_Script:
	jp EnableAutoTextBoxDrawing

CeladonMansion2F_TextPointers:
	dw -1
