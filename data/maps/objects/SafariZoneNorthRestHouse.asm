SafariZoneNorthRestHouse_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 8, SAFARI_ZONE_NORTH
	warp  3,  7, 8, SAFARI_ZONE_NORTH

	def_signs

	def_objects

	def_warps_to SAFARI_ZONE_NORTH_REST_HOUSE

SafariZoneNorthRestHouse_Script:
	jp EnableAutoTextBoxDrawing

SafariZoneNorthRestHouse_TextPointers:
	dw -1
