	object_const_def

NationalPark_MapScripts:
	def_scene_scripts

	def_callbacks

NationalPark_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 33, 18, NATIONAL_PARK_GATE, 1
	warp_event 33, 19, NATIONAL_PARK_GATE, 2

	def_coord_events

	def_bg_events

	def_object_events
