	object_const_def

SilentHills_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  5, PLAYERS_HOUSE_1F, 1
	warp_event 14, 13, ELMS_LAB, 1
	warp_event 15, 13, ELMS_LAB, 1
	warp_event 11,  5, SILENT_POKECENTER_1F, 1
	warp_event  3, 13, RIVALS_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 12,  8, BGEVENT_READ, SilentHillsTownSign
	bg_event  3,  5, BGEVENT_READ, SilentHillsPlayerHouseSign
	bg_event  7, 13, BGEVENT_READ, SilentHillsRivalHouseSign
	bg_event 11, 13, BGEVENT_READ, SilentHillsElmLabSign
	bg_event 12,  5, BGEVENT_READ, SilentHillsPokecenterSign

	def_object_events


SilentHills_MapScripts:
	def_scene_scripts
	scene_script SilentHillsDefaultScene, SCENE_SILENTHILLS_DEFAULT

	def_callbacks
	callback MAPCALLBACK_NEWMAP, SilentHillsFlypointCallback

SilentHillsDefaultScene:
	end

SilentHillsFlypointCallback:
	setflag ENGINE_FLYPOINT_SILENT_HILLS
	endcallback

SilentHillsTownSign:
	jumptext SilentHillsTownSignText

SilentHillsPlayerHouseSign:
	jumptext SilentHillsPlayerHouseSignText

SilentHillsRivalHouseSign:
	jumptext SilentHillsRivalHouseSignText

SilentHillsElmLabSign:
	jumptext SilentHillsElmLabSignText

SilentHillsPokecenterSign:
	jumpstd PokecenterSignScript

SilentHillsTownSignText:
	text "SILENT HILLS"

	para "The quiet town of"
	line "new beginnings."
	done

SilentHillsPlayerHouseSignText:
	text "<PLAYER>'s HOUSE"
	done

SilentHillsRivalHouseSignText:
	text "<RIVAL>'s HOUSE"
	done

SilentHillsElmLabSignText:
	text "ELM #MON LAB"
	done
