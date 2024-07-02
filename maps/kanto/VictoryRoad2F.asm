VictoryRoad2F_Object:
	db $7d ; border block

	def_warp_events
	warp_event  0,  8, VICTORY_ROAD_1F, 3
	warp_event 29,  7, LAST_MAP, 4
	warp_event 29,  8, LAST_MAP, 4
	warp_event 23,  7, VICTORY_ROAD_3F, 1
	warp_event 25, 14, VICTORY_ROAD_3F, 3
	warp_event 27,  7, VICTORY_ROAD_3F, 2
	warp_event  1,  1, VICTORY_ROAD_3F, 4

	def_bg_events

	def_object_events

	def_warps_to VICTORY_ROAD_2F

VictoryRoad2F_Script:
	jp EnableAutoTextBoxDrawing

VictoryRoad2F_TextPointers:
	dw -1
