Route7Gate_Object:
	db $a ; border block

	def_warps
	warp  0,  3, 3, LAST_MAP
	warp  0,  4, 3, LAST_MAP
	warp  5,  3, 0, LAST_MAP
	warp  5,  4, 1, LAST_MAP

	def_signs

	def_objects

	def_warps_to ROUTE_7_GATE

Route7Gate_Script:
	jp EnableAutoTextBoxDrawing

Route7Gate_TextPointers:
	dw -1
