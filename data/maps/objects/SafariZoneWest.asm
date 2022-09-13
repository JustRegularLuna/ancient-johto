SafariZoneWest_Object:
	db $0 ; border block

	def_warps
	warp 20,  0, 0, SAFARI_ZONE_NORTH
	warp 21,  0, 1, SAFARI_ZONE_NORTH
	warp 26,  0, 2, SAFARI_ZONE_NORTH
	warp 27,  0, 3, SAFARI_ZONE_NORTH
	warp 29, 22, 2, SAFARI_ZONE_CENTER
	warp 29, 23, 3, SAFARI_ZONE_CENTER
	warp  3,  3, 0, SAFARI_ZONE_SECRET_HOUSE
	warp 11, 11, 0, SAFARI_ZONE_WEST_REST_HOUSE

	def_signs

	def_objects

	def_warps_to SAFARI_ZONE_WEST

SafariZoneWest_Script:
	jp EnableAutoTextBoxDrawing

SafariZoneWest_TextPointers:
	dw -1
