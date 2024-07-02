BikeShop_Object:
	db $e ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 5
	warp_event  3,  7, LAST_MAP, 5

	def_bg_events

	def_object_events

	def_warps_to BIKE_SHOP

BikeShop_Script:
	jp EnableAutoTextBoxDrawing

BikeShop_TextPointers:
	dw -1
