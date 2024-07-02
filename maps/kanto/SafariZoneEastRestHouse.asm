SafariZoneEastRestHouse_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  7, SAFARI_ZONE_EAST, 5
	warp_event  3,  7, SAFARI_ZONE_EAST, 5

	def_bg_events

	def_object_events

	def_warps_to SAFARI_ZONE_EAST_REST_HOUSE

SafariZoneEastRestHouse_Script:
	jp EnableAutoTextBoxDrawing

SafariZoneEastRestHouse_TextPointers:
	dw -1
