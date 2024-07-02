RocketHideoutB3F_Object:
	db $2e ; border block

	def_warp_events
	warp_event 25,  6, ROCKET_HIDEOUT_B2F, 2
	warp_event 19, 18, ROCKET_HIDEOUT_B4F, 1

	def_bg_events

	def_object_events

	def_warps_to ROCKET_HIDEOUT_B3F

RocketHideoutB3F_Script:
	jp EnableAutoTextBoxDrawing

RocketHideoutB3F_TextPointers:
	dw -1
