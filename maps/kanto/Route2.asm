Route2_Object:
	db $f ; border block

	def_warps
	warp 12,  9, 0, DIGLETTS_CAVE_ROUTE_2
	warp  3, 11, 1, VIRIDIAN_FOREST_NORTH_GATE
	warp 15, 19, 0, ROUTE_2_TRADE_HOUSE
	warp 16, 35, 1, ROUTE_2_GATE
	warp 15, 39, 2, ROUTE_2_GATE
	warp  3, 43, 2, VIRIDIAN_FOREST_SOUTH_GATE

	def_signs

	def_objects

	def_warps_to ROUTE_2

Route2_Script:
	jp EnableAutoTextBoxDrawing

Route2_TextPointers:
	dw -1
