SafariZoneCenterRestHouse_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 8, SAFARI_ZONE_CENTER
	warp  3,  7, 8, SAFARI_ZONE_CENTER

	def_signs

	def_objects

	def_warps_to SAFARI_ZONE_CENTER_REST_HOUSE

SafariZoneCenterRestHouse_Script:
	jp EnableAutoTextBoxDrawing

SafariZoneCenterRestHouse_TextPointers:
	dw -1
