RocketHideoutB1F_Object:
	db $2e ; border block

	def_warp_events
	warp_event 23,  2, ROCKET_HIDEOUT_B2F, 1
	warp_event 21,  2, GAME_CORNER, 3
	warp_event 24, 19, ROCKET_HIDEOUT_ELEVATOR, 1
	warp_event 21, 24, ROCKET_HIDEOUT_B2F, 4
	warp_event 25, 19, ROCKET_HIDEOUT_ELEVATOR, 2

	def_bg_events

	def_object_events

	def_warps_to ROCKET_HIDEOUT_B1F

RocketHideoutB1F_Script:
	jp EnableAutoTextBoxDrawing

RocketHideoutB1F_TextPointers:
	dw -1
