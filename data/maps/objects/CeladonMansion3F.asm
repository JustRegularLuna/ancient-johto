CeladonMansion3F_Object:
	db $f ; border block

	def_warps
	warp  6,  1, 0, CELADON_MANSION_2F
	warp  7,  1, 0, CELADON_MANSION_ROOF
	warp  2,  1, 1, CELADON_MANSION_ROOF
	warp  4,  1, 3, CELADON_MANSION_2F

	def_signs

	def_objects

	def_warps_to CELADON_MANSION_3F

CeladonMansion3F_Script:
	jp EnableAutoTextBoxDrawing

CeladonMansion3F_TextPointers:
	dw -1
