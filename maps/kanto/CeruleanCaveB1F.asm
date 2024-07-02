CeruleanCaveB1F_Object:
	db $7d ; border block

	def_warp_events
	warp_event  3,  6, CERULEAN_CAVE_1F, 9

	def_bg_events

	def_object_events

	def_warps_to CERULEAN_CAVE_B1F

CeruleanCaveB1F_Script:
	jp EnableAutoTextBoxDrawing

CeruleanCaveB1F_TextPointers:
	dw -1
