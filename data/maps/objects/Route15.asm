Route15_Object:
	db $43 ; border block

	def_warps
	warp  7,  8, 0, ROUTE_15_GATE_1F
	warp  7,  9, 1, ROUTE_15_GATE_1F
	warp 14,  8, 2, ROUTE_15_GATE_1F
	warp 14,  9, 3, ROUTE_15_GATE_1F

	def_signs

	def_objects

	def_warps_to ROUTE_15

Route15_Script:
	jp EnableAutoTextBoxDrawing

Route15_TextPointers:
	dw -1
