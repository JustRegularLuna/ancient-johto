GameCorner_Object:
	db $f ; border block

	def_warp_events
	warp_event 15, 17, LAST_MAP, 8
	warp_event 16, 17, LAST_MAP, 8
	warp_event 17,  4, ROCKET_HIDEOUT_B1F, 2

	def_bg_events

	def_object_events

	def_warps_to GAME_CORNER

GameCorner_Script:
	jp EnableAutoTextBoxDrawing

GameCorner_TextPointers:
	dw -1
