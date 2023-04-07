SafariZoneSecretHouse_Object:
	db $17 ; border block

	def_warps
	warp  2,  7, 6, SAFARI_ZONE_WEST
	warp  3,  7, 6, SAFARI_ZONE_WEST

	def_signs

	def_objects

	def_warps_to SAFARI_ZONE_SECRET_HOUSE

SafariZoneSecretHouse_Script:
	jp EnableAutoTextBoxDrawing

SafariZoneSecretHouse_TextPointers:
	dw -1
