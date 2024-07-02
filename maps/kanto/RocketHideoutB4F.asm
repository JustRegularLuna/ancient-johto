RocketHideoutB4F_Object:
	db $2e ; border block

	def_warp_events
	warp_event 19, 10, ROCKET_HIDEOUT_B3F, 2
	warp_event 24, 15, ROCKET_HIDEOUT_ELEVATOR, 1
	warp_event 25, 15, ROCKET_HIDEOUT_ELEVATOR, 2

	def_bg_events

	def_object_events

	def_warps_to ROCKET_HIDEOUT_B4F

RocketHideoutB4F_Script:
	jp EnableAutoTextBoxDrawing

RocketHideoutB4F_TextPointers:
	dw -1
