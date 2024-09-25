ViridianForestNorthGate_Object:
	db $0 ; border block

	def_warp_events
	warp_event  4,  0, LAST_MAP, 2
	warp_event  5,  0, LAST_MAP, 2
	warp_event  4,  7, VIRIDIAN_FOREST, 1
	warp_event  5,  7, VIRIDIAN_FOREST, 1

	def_bg_events

	def_object_events

	def_warps_to VIRIDIAN_FOREST_NORTH_GATE

ViridianForestNorthGate_Script:
	jp EnableAutoTextBoxDrawing

ViridianForestNorthGate_TextPointers:
	dw -1
