Route15Gate1F_Object:
	db $a ; border block

	def_warps
	warp  0,  4, 0, LAST_MAP
	warp  0,  5, 1, LAST_MAP
	warp  7,  4, 2, LAST_MAP
	warp  7,  5, 3, LAST_MAP
	warp  7,  9, 0, ROUTE_15_GATE_2F

	def_signs

	def_objects

	def_warps_to ROUTE_15_GATE_1F

Route15Gate1F_Script:
	jp EnableAutoTextBoxDrawing

Route15Gate1F_TextPointers:
	dw -1
