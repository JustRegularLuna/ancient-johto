	object_const_def

ElmsLab_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 11, SILENT_HILLS, 2
	warp_event  5, 11, SILENT_HILLS, 3
	warp_event  9, 10, ELMS_HOUSE, 1

	def_coord_events

	def_bg_events

	def_object_events


ElmsLab_MapScripts:
	def_scene_scripts
	scene_script ElmsLabNoop1Scene,   SCENE_ELMSLAB_NOOP

	def_callbacks

ElmsLabNoop1Scene:
	end
