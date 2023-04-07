CeladonMansionRoof_Object:
	db $9 ; border block

	def_warps
	warp  6,  1, 1, CELADON_MANSION_3F
	warp  2,  1, 2, CELADON_MANSION_3F
	warp  2,  7, 0, CELADON_MANSION_ROOF_HOUSE

	def_signs

	def_objects

	def_warps_to CELADON_MANSION_ROOF

CeladonMansionRoof_Script:
	jp EnableAutoTextBoxDrawing

CeladonMansionRoof_TextPointers:
	dw -1
