CeladonMartRoof_Object:
	db $42 ; border block

	def_warp_events
	warp_event 15,  2, CELADON_MART_5F, 1

	def_bg_events

	def_object_events

	def_warps_to CELADON_MART_ROOF

CeladonMartRoof_Script:
	jp EnableAutoTextBoxDrawing

CeladonMartRoof_TextPointers:
	dw -1
