PowerPlant_Object:
	db $2e ; border block

	def_warps
	warp  4, 35, 3, LAST_MAP
	warp  5, 35, 3, LAST_MAP
	warp  0, 11, 3, LAST_MAP

	def_signs

	def_objects

	def_warps_to POWER_PLANT

PowerPlant_Script:
	jp EnableAutoTextBoxDrawing

PowerPlant_TextPointers:
	dw -1
