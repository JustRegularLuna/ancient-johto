ViridianForestSouthGate_Object:
	db $a ; border block

	def_warps
	warp  4,  0, 3, VIRIDIAN_FOREST
	warp  5,  0, 4, VIRIDIAN_FOREST
	warp  4,  7, 5, LAST_MAP
	warp  5,  7, 5, LAST_MAP

	def_signs

	def_objects

	def_warps_to VIRIDIAN_FOREST_SOUTH_GATE

ViridianForestSouthGate_Script:
	jp EnableAutoTextBoxDrawing

ViridianForestSouthGate_TextPointers:
	dw -1
