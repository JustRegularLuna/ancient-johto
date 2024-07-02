PalletTown_Object:
	db $b ; border block

	def_warp_events
	warp_event  5,  5, REDS_HOUSE_1F, 1
	warp_event 13,  5, BLUES_HOUSE, 1
	warp_event 12, 11, OAKS_LAB, 2

	def_bg_events

	def_object_events

	def_warps_to PALLET_TOWN

PalletTown_Script:
	jp EnableAutoTextBoxDrawing

PalletTown_TextPointers:
	dw -1
