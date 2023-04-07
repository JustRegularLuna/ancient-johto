SafariZoneEastRestHouse_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 4, SAFARI_ZONE_EAST
	warp  3,  7, 4, SAFARI_ZONE_EAST

	def_signs

	def_objects

	def_warps_to SAFARI_ZONE_EAST_REST_HOUSE

SafariZoneEastRestHouse_Script:
	jp EnableAutoTextBoxDrawing

SafariZoneEastRestHouse_TextPointers:
	dw -1
