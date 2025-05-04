	object_const_def
	const SAKURAPOKECENTER1F_NURSE
	const SAKURAPOKECENTER1F_BENCH_SITTER

SakuraPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, SAKURA_TOWN, 1
	warp_event  4,  7, SAKURA_TOWN, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SakuraPokecenter1FNurseScript, -1
	object_event  0,  4, SPRITE_BENCH_GUY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1


SakuraPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks


SakuraPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript
