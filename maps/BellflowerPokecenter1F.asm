	object_const_def
	const BELLFLOWERPOKECENTER1F_NURSE
	const BELLFLOWERPOKECENTER1F_BENCH_SITTER

BellflowerPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, BELLFLOWER_CITY, 1
	warp_event  4,  7, BELLFLOWER_CITY, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BellflowerPokecenter1FNurseScript, -1
	object_event  0,  4, SPRITE_BENCH_GUY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1


BellflowerPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks


BellflowerPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript
