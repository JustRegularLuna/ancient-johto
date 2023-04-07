ViridianForest_Object:
	db $3 ; border block

	def_warps
	warp  1,  0, 2, VIRIDIAN_FOREST_NORTH_GATE
	warp  2,  0, 3, VIRIDIAN_FOREST_NORTH_GATE
	warp 15, 47, 1, VIRIDIAN_FOREST_SOUTH_GATE
	warp 16, 47, 1, VIRIDIAN_FOREST_SOUTH_GATE
	warp 17, 47, 1, VIRIDIAN_FOREST_SOUTH_GATE
	warp 18, 47, 1, VIRIDIAN_FOREST_SOUTH_GATE

	def_signs

	def_objects

	def_warps_to VIRIDIAN_FOREST

ViridianForest_Script:
	jp EnableAutoTextBoxDrawing

ViridianForest_TextPointers:
	dw -1
