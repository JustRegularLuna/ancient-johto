Route11_Object:
	db $f ; border block

	def_warps
	warp 49,  8, 0, ROUTE_11_GATE_1F
	warp 49,  9, 1, ROUTE_11_GATE_1F
	warp 58,  8, 2, ROUTE_11_GATE_1F
	warp 58,  9, 3, ROUTE_11_GATE_1F
	warp  4,  5, 0, DIGLETTS_CAVE_ROUTE_11

	def_signs

	def_objects

	def_warps_to ROUTE_11

Route11_Script:
	jp EnableAutoTextBoxDrawing

Route11_TextPointers:
	dw -1
