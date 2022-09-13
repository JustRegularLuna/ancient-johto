SafariZoneWestRestHouse_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 7, SAFARI_ZONE_WEST
	warp  3,  7, 7, SAFARI_ZONE_WEST

	def_signs

	def_objects

	def_warps_to SAFARI_ZONE_WEST_REST_HOUSE

SafariZoneWestRestHouse_Script:
	jp EnableAutoTextBoxDrawing

SafariZoneWestRestHouse_TextPointers:
	dw -1
