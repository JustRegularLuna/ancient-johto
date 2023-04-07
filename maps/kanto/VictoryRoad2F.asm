VictoryRoad2F_Object:
	db $7d ; border block

	def_warps
	warp  0,  8, 2, VICTORY_ROAD_1F
	warp 29,  7, 3, LAST_MAP
	warp 29,  8, 3, LAST_MAP
	warp 23,  7, 0, VICTORY_ROAD_3F
	warp 25, 14, 2, VICTORY_ROAD_3F
	warp 27,  7, 1, VICTORY_ROAD_3F
	warp  1,  1, 3, VICTORY_ROAD_3F

	def_signs

	def_objects

	def_warps_to VICTORY_ROAD_2F

VictoryRoad2F_Script:
	jp EnableAutoTextBoxDrawing

VictoryRoad2F_TextPointers:
	dw -1
