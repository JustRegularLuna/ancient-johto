CeladonMart3F_Object:
	db $0 ; border block

	def_warp_events
	warp_event 12,  1, CELADON_MART_4F, 1
	warp_event 16,  1, CELADON_MART_2F, 2
	warp_event  1,  1, CELADON_MART_ELEVATOR, 1

	def_bg_events

	def_object_events

	def_warps_to CELADON_MART_3F

CeladonMart3F_Script:
	jp EnableAutoTextBoxDrawing

CeladonMart3F_TextPointers:
	dw -1
