	object_const_def

EvergreenWoodsSouthGate1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, KANSAI_ROUTE_2, 1
	warp_event  5,  7, KANSAI_ROUTE_2, 2
	warp_event  4,  0, EVERGREEN_WOODS, 1
	warp_event  5,  0, EVERGREEN_WOODS, 2
	warp_event  9,  7, EVERGREEN_WOODS_SOUTH_GATE_2F, 1

	def_coord_events

	def_bg_events

	def_object_events


EvergreenWoodsSouthGate1F_MapScripts:
	def_scene_scripts

	def_callbacks
