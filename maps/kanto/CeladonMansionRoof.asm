CeladonMansionRoof_Object:
	db $9 ; border block

	def_warp_events
	warp_event  6,  1, CELADON_MANSION_3F, 2
	warp_event  2,  1, CELADON_MANSION_3F, 3
	warp_event  2,  7, CELADON_MANSION_ROOF_HOUSE, 1

	def_bg_events

	def_object_events

	def_warps_to CELADON_MANSION_ROOF

CeladonMansionRoof_Script:
	jp EnableAutoTextBoxDrawing

CeladonMansionRoof_TextPointers:
	dw -1
