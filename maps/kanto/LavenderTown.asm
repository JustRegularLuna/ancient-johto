LavenderTown_Object:
	db $2c ; border block

	def_warp_events
	warp_event  3,  5, LAVENDER_POKECENTER, 1
	warp_event 14,  5, POKEMON_TOWER_1F, 1
	warp_event  7,  9, MR_FUJIS_HOUSE, 1
	warp_event 15, 13, LAVENDER_MART, 1
	warp_event  3, 13, LAVENDER_CUBONE_HOUSE, 1
	warp_event  7, 13, NAME_RATERS_HOUSE, 1

	def_bg_events

	def_object_events

	def_warps_to LAVENDER_TOWN

LavenderTown_Script:
	jp EnableAutoTextBoxDrawing

LavenderTown_TextPointers:
	dw -1
