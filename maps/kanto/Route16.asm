Route16_Object:
	db $f ; border block

	def_warps
	warp 17, 10, 0, ROUTE_16_GATE_1F
	warp 17, 11, 1, ROUTE_16_GATE_1F
	warp 24, 10, 2, ROUTE_16_GATE_1F
	warp 24, 11, 3, ROUTE_16_GATE_1F
	warp 17,  4, 4, ROUTE_16_GATE_1F
	warp 17,  5, 5, ROUTE_16_GATE_1F
	warp 24,  4, 6, ROUTE_16_GATE_1F
	warp 24,  5, 7, ROUTE_16_GATE_1F
	warp  7,  5, 0, ROUTE_16_FLY_HOUSE

	def_signs

	def_objects

	def_warps_to ROUTE_16

Route16_Script:
	jp EnableAutoTextBoxDrawing

Route16_TextPointers:
	dw -1
