SafariZoneEast_Object:
	db $0 ; border block

	def_warp_events
	warp_event  0,  4, SAFARI_ZONE_NORTH, 7
	warp_event  0,  5, SAFARI_ZONE_NORTH, 8
	warp_event  0, 22, SAFARI_ZONE_CENTER, 7
	warp_event  0, 23, SAFARI_ZONE_CENTER, 7
	warp_event 25,  9, SAFARI_ZONE_EAST_REST_HOUSE, 1

	def_bg_events

	def_object_events

	def_warps_to SAFARI_ZONE_EAST

SafariZoneEast_Script:
	jp EnableAutoTextBoxDrawing

SafariZoneEast_TextPointers:
	dw -1
