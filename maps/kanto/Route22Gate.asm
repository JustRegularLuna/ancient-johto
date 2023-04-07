Route22Gate_Object:
	db $a ; border block

	def_warps
	warp  4,  7, 0, LAST_MAP
	warp  5,  7, 0, LAST_MAP
	warp  4,  0, 0, LAST_MAP
	warp  5,  0, 1, LAST_MAP

	def_signs

	def_objects

	def_warps_to ROUTE_22_GATE

Route22Gate_Script:
	jp EnableAutoTextBoxDrawing

Route22Gate_TextPointers:
	dw -1
