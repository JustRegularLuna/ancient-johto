Route12_Object:
	db $43 ; border block

	def_warps
	warp 10, 15, 0, ROUTE_12_GATE_1F
	warp 11, 15, 1, ROUTE_12_GATE_1F
	warp 10, 21, 2, ROUTE_12_GATE_1F
	warp 11, 77, 0, ROUTE_12_SUPER_ROD_HOUSE

	def_signs

	def_objects

	def_warps_to ROUTE_12

Route12_Script:
	jp EnableAutoTextBoxDrawing

Route12_TextPointers:
	dw -1
