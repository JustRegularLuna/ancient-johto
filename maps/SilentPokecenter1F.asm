	object_const_def
	const SILENTPOKECENTER1F_NURSE
	const SILENTPOKECENTER1F_BENCH_SITTER

SilentPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, SILENT_HILLS, 4
	warp_event  4,  7, SILENT_HILLS, 4
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilentPokecenter1FNurseScript, -1
	object_event  0,  4, SPRITE_BENCH_LASS, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1


SilentPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks


SilentPokecenter1FNurseScript:
	checkevent EVENT_GOT_POKEMON
	iffalse .no_pokemon
	jumpstd PokecenterNurseScript

.no_pokemon
	jumptextfaceplayer SilentPokecenterNotSeenElmText

SilentPokecenterNotSeenElmText:
	text "Welcome to our"
	line "#MON CENTER!"

	para "What's that?"

	para "No, I haven't seen"
	line "PROF.ELM today."

	para "You should try his"
	line "LAB, near the"
	cont "shoreline."
	done
