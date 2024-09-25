ViridianForestSouthGate_Object:
	db $0 ; border block

	def_warp_events
	warp_event  4,  0, VIRIDIAN_FOREST, 4
	warp_event  5,  0, VIRIDIAN_FOREST, 5
	warp_event  4,  7, LAST_MAP, 6
	warp_event  5,  7, LAST_MAP, 6

	def_bg_events

	def_object_events

	def_warps_to VIRIDIAN_FOREST_SOUTH_GATE

ViridianForestSouthGate_Script:
	jp EnableAutoTextBoxDrawing

ViridianForestSouthGate_TextPointers:
	dw -1
