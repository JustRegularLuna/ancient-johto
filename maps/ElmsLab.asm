	object_const_def

ElmsLab_MapScripts:
	def_scene_scripts
	scene_script ElmsLabNoop1Scene,   SCENE_ELMSLAB_NOOP

	def_callbacks

ElmsLabNoop1Scene:
	end

ElmsLab_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 11, NEW_BARK_TOWN, 1
	warp_event  5, 11, NEW_BARK_TOWN, 1

	def_coord_events

	def_bg_events

	def_object_events
