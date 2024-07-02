SafariZoneWestRestHouse_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  7, SAFARI_ZONE_WEST, 8
	warp_event  3,  7, SAFARI_ZONE_WEST, 8

	def_bg_events

	def_object_events

	def_warps_to SAFARI_ZONE_WEST_REST_HOUSE

SafariZoneWestRestHouse_Script:
	jp EnableAutoTextBoxDrawing

SafariZoneWestRestHouse_TextPointers:
	dw -1
