Route8_Object:
	db $2c ; border block

	def_warps
	warp  1,  9, 0, ROUTE_8_GATE
	warp  1, 10, 1, ROUTE_8_GATE
	warp  8,  9, 2, ROUTE_8_GATE
	warp  8, 10, 3, ROUTE_8_GATE
	warp 13,  3, 0, UNDERGROUND_PATH_ROUTE_8

	def_signs

	def_objects

	def_warps_to ROUTE_8

Route8_Script:
	jp EnableAutoTextBoxDrawing

Route8_TextPointers:
	dw -1
