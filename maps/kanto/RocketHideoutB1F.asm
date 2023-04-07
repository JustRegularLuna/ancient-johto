RocketHideoutB1F_Object:
	db $2e ; border block

	def_warps
	warp 23,  2, 0, ROCKET_HIDEOUT_B2F
	warp 21,  2, 2, GAME_CORNER
	warp 24, 19, 0, ROCKET_HIDEOUT_ELEVATOR
	warp 21, 24, 3, ROCKET_HIDEOUT_B2F
	warp 25, 19, 1, ROCKET_HIDEOUT_ELEVATOR

	def_signs

	def_objects

	def_warps_to ROCKET_HIDEOUT_B1F

RocketHideoutB1F_Script:
	jp EnableAutoTextBoxDrawing

RocketHideoutB1F_TextPointers:
	dw -1
