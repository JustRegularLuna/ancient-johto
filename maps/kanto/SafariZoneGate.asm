SafariZoneGate_Object:
	db $a ; border block

	def_warp_events
	warp_event  3,  5, LAST_MAP, 5
	warp_event  4,  5, LAST_MAP, 5
	warp_event  3,  0, SAFARI_ZONE_CENTER, 1
	warp_event  4,  0, SAFARI_ZONE_CENTER, 2

	def_bg_events

	def_object_events

	def_warps_to SAFARI_ZONE_GATE

SafariZoneGate_Script:
	jp EnableAutoTextBoxDrawing

SafariZoneGate_TextPointers:
	dw -1
