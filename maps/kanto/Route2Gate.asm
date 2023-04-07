Route2Gate_Object:
	db $a ; border block

	def_warps
	warp  4,  0, 3, LAST_MAP
	warp  5,  0, 3, LAST_MAP
	warp  4,  7, 4, LAST_MAP
	warp  5,  7, 4, LAST_MAP

	def_signs

	def_objects

	def_warps_to ROUTE_2_GATE

Route2Gate_Script:
	jp EnableAutoTextBoxDrawing

Route2Gate_TextPointers:
	dw -1
