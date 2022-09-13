RocketHideoutB3F_Object:
	db $2e ; border block

	def_warps
	warp 25,  6, 1, ROCKET_HIDEOUT_B2F
	warp 19, 18, 0, ROCKET_HIDEOUT_B4F

	def_signs

	def_objects

	def_warps_to ROCKET_HIDEOUT_B3F

RocketHideoutB3F_Script:
	jp EnableAutoTextBoxDrawing

RocketHideoutB3F_TextPointers:
	dw -1
