MACRO scene_var
; map, variable
	map_id \1
	dw \2
ENDM

MapScenes::
	scene_var POKECENTER_2F,                               wPokecenter2FSceneID
	scene_var TRADE_CENTER,                                wTradeCenterSceneID
	scene_var COLOSSEUM,                                   wColosseumSceneID
	scene_var TIME_CAPSULE,                                wTimeCapsuleSceneID
	scene_var NATIONAL_PARK_GATE,                          wNationalParkGateSceneID
	scene_var SAFARI_ZONE_ENTRANCE,                        wSafariZoneEntranceSceneID
	scene_var PLAYERS_HOUSE_1F,                            wPlayersHouse1FSceneID
	scene_var NEW_BARK_TOWN,                               wNewBarkTownSceneID
	scene_var ELMS_LAB,                                    wElmsLabSceneID
	db -1 ; end
