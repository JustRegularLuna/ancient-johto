Route16FlyHouse_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 8, LAST_MAP
	warp  3,  7, 8, LAST_MAP

	def_signs

	def_objects

	def_warps_to ROUTE_16_FLY_HOUSE

Route16FlyHouse_Script:
	jp EnableAutoTextBoxDrawing

Route16FlyHouse_TextPointers:
	dw -1
