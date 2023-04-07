Route18_Object:
	db $43 ; border block

	def_warps
	warp 33,  8, 0, ROUTE_18_GATE_1F
	warp 33,  9, 1, ROUTE_18_GATE_1F
	warp 40,  8, 2, ROUTE_18_GATE_1F
	warp 40,  9, 3, ROUTE_18_GATE_1F

	def_signs

	def_objects

	def_warps_to ROUTE_18

Route18_Script:
	jp EnableAutoTextBoxDrawing

Route18_TextPointers:
	dw -1
