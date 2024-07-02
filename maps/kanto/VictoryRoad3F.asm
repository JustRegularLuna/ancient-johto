VictoryRoad3F_Object:
	db $7d ; border block

	def_warp_events
	warp_event 23,  7, VICTORY_ROAD_2F, 4
	warp_event 26,  8, VICTORY_ROAD_2F, 6
	warp_event 27, 15, VICTORY_ROAD_2F, 5
	warp_event  2,  0, VICTORY_ROAD_2F, 7

	def_bg_events

	def_object_events

	def_warps_to VICTORY_ROAD_3F

VictoryRoad3F_Script:
	jp EnableAutoTextBoxDrawing

VictoryRoad3F_TextPointers:
	dw -1
