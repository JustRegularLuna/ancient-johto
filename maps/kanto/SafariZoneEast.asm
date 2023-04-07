SafariZoneEast_Object:
	db $0 ; border block

	def_warps
	warp  0,  4, 6, SAFARI_ZONE_NORTH
	warp  0,  5, 7, SAFARI_ZONE_NORTH
	warp  0, 22, 6, SAFARI_ZONE_CENTER
	warp  0, 23, 6, SAFARI_ZONE_CENTER
	warp 25,  9, 0, SAFARI_ZONE_EAST_REST_HOUSE

	def_signs

	def_objects

	def_warps_to SAFARI_ZONE_EAST

SafariZoneEast_Script:
	jp EnableAutoTextBoxDrawing

SafariZoneEast_TextPointers:
	dw -1
