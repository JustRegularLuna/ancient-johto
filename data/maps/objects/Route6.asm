Route6_Object:
	db $f ; border block

	def_warps
	warp 11,  1, 2, ROUTE_6_GATE
	warp 12,  1, 2, ROUTE_6_GATE
	warp 11,  5, 0, ROUTE_6_GATE
	warp 17, 13, 0, UNDERGROUND_PATH_ROUTE_6

	def_signs

	def_objects

	def_warps_to ROUTE_6

Route6_Script:
	jp EnableAutoTextBoxDrawing

Route6_TextPointers:
	dw -1
