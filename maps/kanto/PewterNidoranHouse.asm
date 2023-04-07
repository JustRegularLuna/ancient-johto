PewterNidoranHouse_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 3, LAST_MAP
	warp  3,  7, 3, LAST_MAP

	def_signs

	def_objects

	def_warps_to PEWTER_NIDORAN_HOUSE

PewterNidoranHouse_Script:
	jp EnableAutoTextBoxDrawing

PewterNidoranHouse_TextPointers:
	dw -1
