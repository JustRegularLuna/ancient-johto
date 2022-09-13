RocketHideoutB2F_Object:
	db $2e ; border block

	def_warps
	warp 27,  8, 0, ROCKET_HIDEOUT_B1F
	warp 21,  8, 0, ROCKET_HIDEOUT_B3F
	warp 24, 19, 0, ROCKET_HIDEOUT_ELEVATOR
	warp 21, 22, 3, ROCKET_HIDEOUT_B1F
	warp 25, 19, 1, ROCKET_HIDEOUT_ELEVATOR

	def_signs

	def_objects

	def_warps_to ROCKET_HIDEOUT_B2F

RocketHideoutB2F_Script:
	jp EnableAutoTextBoxDrawing

RocketHideoutB2F_TextPointers:
	dw -1
