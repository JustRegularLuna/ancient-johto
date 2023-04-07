Route8Gate_Object:
	db $a ; border block

	def_warps
	warp  0,  3, 0, LAST_MAP
	warp  0,  4, 1, LAST_MAP
	warp  5,  3, 2, LAST_MAP
	warp  5,  4, 3, LAST_MAP

	def_signs

	def_objects

	def_warps_to ROUTE_8_GATE

Route8Gate_Script:
	jp EnableAutoTextBoxDrawing

Route8Gate_TextPointers:
	dw -1
