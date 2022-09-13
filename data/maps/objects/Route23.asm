Route23_Object:
	db $f ; border block

	def_warps
	warp  7, 139, 2, ROUTE_22_GATE
	warp  8, 139, 3, ROUTE_22_GATE
	warp  4, 31, 0, VICTORY_ROAD_1F
	warp 14, 31, 1, VICTORY_ROAD_2F

	def_signs

	def_objects

	def_warps_to ROUTE_23

Route23_Script:
	jp EnableAutoTextBoxDrawing

Route23_TextPointers:
	dw -1
