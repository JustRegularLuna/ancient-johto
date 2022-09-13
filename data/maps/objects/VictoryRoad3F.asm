VictoryRoad3F_Object:
	db $7d ; border block

	def_warps
	warp 23,  7, 3, VICTORY_ROAD_2F
	warp 26,  8, 5, VICTORY_ROAD_2F
	warp 27, 15, 4, VICTORY_ROAD_2F
	warp  2,  0, 6, VICTORY_ROAD_2F

	def_signs

	def_objects

	def_warps_to VICTORY_ROAD_3F

VictoryRoad3F_Script:
	jp EnableAutoTextBoxDrawing

VictoryRoad3F_TextPointers:
	dw -1
