SafariZoneNorth_Object:
	db $0 ; border block

	def_warps
	warp  2, 35, 0, SAFARI_ZONE_WEST
	warp  3, 35, 1, SAFARI_ZONE_WEST
	warp  8, 35, 2, SAFARI_ZONE_WEST
	warp  9, 35, 3, SAFARI_ZONE_WEST
	warp 20, 35, 4, SAFARI_ZONE_CENTER
	warp 21, 35, 5, SAFARI_ZONE_CENTER
	warp 39, 30, 0, SAFARI_ZONE_EAST
	warp 39, 31, 1, SAFARI_ZONE_EAST
	warp 35,  3, 0, SAFARI_ZONE_NORTH_REST_HOUSE

	def_signs

	def_objects

	def_warps_to SAFARI_ZONE_NORTH

SafariZoneNorth_Script:
	jp EnableAutoTextBoxDrawing

SafariZoneNorth_TextPointers:
	dw -1
