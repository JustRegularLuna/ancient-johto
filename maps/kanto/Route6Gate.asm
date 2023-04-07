Route6Gate_Object:
	db $a ; border block

	def_warps
	warp  3,  5, 2, LAST_MAP
	warp  4,  5, 2, LAST_MAP
	warp  3,  0, 1, LAST_MAP
	warp  4,  0, 1, LAST_MAP

	def_signs

	def_objects

	def_warps_to ROUTE_6_GATE

Route6Gate_Script:
	jp EnableAutoTextBoxDrawing

Route6Gate_TextPointers:
	dw -1
