	object_const_def
	const PLAYERSHOUSE_TEST_POKEBALL

PlayersHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  7, SILENT_HILLS, 1
	warp_event  7,  7, SILENT_HILLS, 1
	warp_event  9,  0, PLAYERS_HOUSE_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TestingPokeBallScript, EVENT_GOT_POKEMON


PlayersHouse1F_MapScripts:
	def_scene_scripts
	scene_script PlayersHouse1FMeetMomScene, SCENE_PLAYERSHOUSE1F_MEET_MOM
	scene_script PlayersHouse1FNoopScene,    SCENE_PLAYERSHOUSE1F_NOOP

	def_callbacks

PlayersHouse1FMeetMomScene:
	end

PlayersHouse1FNoopScene:
	end

TestingPokeBallScript:
	disappear PLAYERSHOUSE_TEST_POKEBALL
	opentext
	writetext .GotPokemonText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke PIKACHU, 10, BERRY
	closetext
	end

.GotPokemonText
	text "Picked up the"
	line "#MON."
	done
