CeladonMansionRoofHouse_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 2, CELADON_MANSION_ROOF
	warp  3,  7, 2, CELADON_MANSION_ROOF

	def_signs

	def_objects

	def_warps_to CELADON_MANSION_ROOF_HOUSE

CeladonMansionRoofHouse_Script:
	jp EnableAutoTextBoxDrawing

CeladonMansionRoofHouse_TextPointers:
	dw -1
