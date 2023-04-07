FuchsiaGoodRodHouse_Object:
	db $c ; border block

	def_warps
	warp  2,  0, 8, LAST_MAP
	warp  2,  7, 7, LAST_MAP
	warp  3,  7, 7, LAST_MAP

	def_signs

	def_objects

	def_warps_to FUCHSIA_GOOD_ROD_HOUSE

FuchsiaGoodRodHouse_Script:
	jp EnableAutoTextBoxDrawing

FuchsiaGoodRodHouse_TextPointers:
	dw -1
