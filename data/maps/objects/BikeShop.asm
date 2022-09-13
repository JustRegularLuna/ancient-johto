BikeShop_Object:
	db $e ; border block

	def_warps
	warp  2,  7, 4, LAST_MAP
	warp  3,  7, 4, LAST_MAP

	def_signs

	def_objects

	def_warps_to BIKE_SHOP

BikeShop_Script:
	jp EnableAutoTextBoxDrawing

BikeShop_TextPointers:
	dw -1
