SafariZoneGate_Object:
	db $a ; border block

	def_warps
	warp  3,  5, 4, LAST_MAP
	warp  4,  5, 4, LAST_MAP
	warp  3,  0, 0, SAFARI_ZONE_CENTER
	warp  4,  0, 1, SAFARI_ZONE_CENTER

	def_signs

	def_objects

	def_warps_to SAFARI_ZONE_GATE

SafariZoneGate_Script:
	jp EnableAutoTextBoxDrawing

SafariZoneGate_TextPointers:
	dw -1
