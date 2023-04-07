Route7_Object:
	db $f ; border block

	def_warps
	warp 18, 10, 2, ROUTE_7_GATE
	warp 18, 11, 3, ROUTE_7_GATE
	warp 11, 10, 0, ROUTE_7_GATE
	warp 11, 11, 1, ROUTE_7_GATE
	warp  5, 13, 0, UNDERGROUND_PATH_ROUTE_7

	def_signs

	def_objects

	def_warps_to ROUTE_7

Route7_Script:
	jp EnableAutoTextBoxDrawing

Route7_TextPointers:
	dw -1
