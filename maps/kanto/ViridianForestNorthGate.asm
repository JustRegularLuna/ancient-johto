ViridianForestNorthGate_Object:
	db $a ; border block

	def_warps
	warp  4,  0, 1, LAST_MAP
	warp  5,  0, 1, LAST_MAP
	warp  4,  7, 0, VIRIDIAN_FOREST
	warp  5,  7, 0, VIRIDIAN_FOREST

	def_signs

	def_objects

	def_warps_to VIRIDIAN_FOREST_NORTH_GATE

ViridianForestNorthGate_Script:
	jp EnableAutoTextBoxDrawing

ViridianForestNorthGate_TextPointers:
	dw -1
