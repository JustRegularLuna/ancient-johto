CeladonChiefHouse_Object:
	db $f ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 12
	warp_event  3,  7, LAST_MAP, 12

	def_bg_events

	def_object_events

	def_warps_to CELADON_CHIEF_HOUSE

CeladonChiefHouse_Script:
	jp EnableAutoTextBoxDrawing

CeladonChiefHouse_TextPointers:
	dw -1
