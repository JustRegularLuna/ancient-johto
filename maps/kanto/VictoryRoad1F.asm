VictoryRoad1F_Object:
	db $7d ; border block

	def_warp_events
	warp_event  8, 17, LAST_MAP, 3
	warp_event  9, 17, LAST_MAP, 3
	warp_event  1,  1, VICTORY_ROAD_2F, 1

	def_bg_events

	def_object_events

	def_warps_to VICTORY_ROAD_1F

VictoryRoad1F_Script:
	jp EnableAutoTextBoxDrawing

VictoryRoad1F_TextPointers:
	dw -1
