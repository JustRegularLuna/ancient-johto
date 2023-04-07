CeladonDiner_Object:
	db $f ; border block

	def_warps
	warp  3,  7, 10, LAST_MAP
	warp  4,  7, 10, LAST_MAP

	def_signs

	def_objects

	def_warps_to CELADON_DINER

CeladonDiner_Script:
	jp EnableAutoTextBoxDrawing

CeladonDiner_TextPointers:
	dw -1
