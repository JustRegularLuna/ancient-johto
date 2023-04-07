RocketHideoutB4F_Object:
	db $2e ; border block

	def_warps
	warp 19, 10, 1, ROCKET_HIDEOUT_B3F
	warp 24, 15, 0, ROCKET_HIDEOUT_ELEVATOR
	warp 25, 15, 1, ROCKET_HIDEOUT_ELEVATOR

	def_signs

	def_objects

	def_warps_to ROCKET_HIDEOUT_B4F

RocketHideoutB4F_Script:
	jp EnableAutoTextBoxDrawing

RocketHideoutB4F_TextPointers:
	dw -1
