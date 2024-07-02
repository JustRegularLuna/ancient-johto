SafariZoneNorthRestHouse_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  7, SAFARI_ZONE_NORTH, 9
	warp_event  3,  7, SAFARI_ZONE_NORTH, 9

	def_bg_events

	def_object_events

	def_warps_to SAFARI_ZONE_NORTH_REST_HOUSE

SafariZoneNorthRestHouse_Script:
	jp EnableAutoTextBoxDrawing

SafariZoneNorthRestHouse_TextPointers:
	dw -1
