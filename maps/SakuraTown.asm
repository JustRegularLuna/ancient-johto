	object_const_def

SakuraTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 31, 21, SAKURA_POKECENTER_1F, 1
	warp_event 21, 21, SAKURA_MART, 1
	warp_event 21, 15, SAKURA_HOUSE_1, 1
	warp_event 21,  9, SAKURA_HOUSE_2, 1
	warp_event 33, 15, SAKURA_HOUSE_3, 1
	warp_event  5,  9, SAKURA_SECRET_HOUSE, 1
	warp_event 37,  7, MR_POKEMONS_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 32, 21, BGEVENT_READ, SakuraPokecenterSign
	bg_event 22, 21, BGEVENT_READ, SakuraMartSign
	bg_event 27, 15, BGEVENT_READ, SakuraTownSign
	bg_event 20, 10, BGEVENT_READ, SakuraGuideGentSign
	bg_event 15, 11, BGEVENT_READ, SakuraSecretHouseSign
	bg_event 35,  7, BGEVENT_READ, SakuraMrPokemonsHouseSign

	def_object_events


SakuraTown_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, SakuraTownFlypointCallback

SakuraTownFlypointCallback:
	setflag ENGINE_FLYPOINT_SAKURA_TOWN
	endcallback

SakuraPokecenterSign:
	jumpstd PokecenterSignScript

SakuraMartSign:
	jumpstd MartSignScript

SakuraTownSign:
	jumptext SakuraTownSignText

SakuraGuideGentSign:
	jumptext SakuraGuideGentSignText

SakuraSecretHouseSign:
	jumptext SakuraSecretHouseSignText

SakuraMrPokemonsHouseSign:
	jumptext SakuraMrPokemonsHouseSignText

SakuraTownSignText:
	text "SAKURA TOWN"

	para "A tranquil cherry"
	line "blossom grove."
	done

SakuraGuideGentSignText:
	text "GUIDE GENT's HOUSE"
	done

SakuraSecretHouseSignText:
	text "There's a note…"

	para "NO SOLICITORS!"
	done

SakuraMrPokemonsHouseSignText:
	text "MR.#MON's HOUSE"
	done
