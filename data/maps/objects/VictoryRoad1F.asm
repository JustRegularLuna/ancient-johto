VictoryRoad1F_Object:
	db $7d ; border block

	def_warps
	warp  8, 17, 2, LAST_MAP
	warp  9, 17, 2, LAST_MAP
	warp  1,  1, 0, VICTORY_ROAD_2F

	def_signs

	def_objects

	def_warps_to VICTORY_ROAD_1F

VictoryRoad1F_Script:
	jp EnableAutoTextBoxDrawing

VictoryRoad1F_TextPointers:
	dw -1
