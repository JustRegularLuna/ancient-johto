CeruleanGym_Object:
	db $3 ; border block

	def_warp_events
	warp_event  4, 13, LAST_MAP, 4
	warp_event  5, 13, LAST_MAP, 4

	def_bg_events

	def_object_events

	def_warps_to CERULEAN_GYM

CeruleanGym_Script:
	jp EnableAutoTextBoxDrawing

CeruleanGym_TextPointers:
	dw -1
