FuchsiaBillsGrandpasHouse_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 1, LAST_MAP
	warp  3,  7, 1, LAST_MAP

	def_signs

	def_objects

	def_warps_to FUCHSIA_BILLS_GRANDPAS_HOUSE

FuchsiaBillsGrandpasHouse_Script:
	jp EnableAutoTextBoxDrawing

FuchsiaBillsGrandpasHouse_TextPointers:
	dw -1
