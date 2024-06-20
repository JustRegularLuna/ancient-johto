MACRO external_map
	db \2 + 16, \1 + 8
	dw \3
ENDM

; the appearance of towns and routes in the town map
ExternalMapEntries:
	table_width 4, ExternalMapEntries
	; x, y, name
	external_map  52, 108, PalletTownName
	external_map  52,  76, ViridianCityName
	external_map  52,  52, PewterCityName
	external_map 100,  52, CeruleanCityName
	external_map 132,  68, LavenderTownName
	external_map 100,  84, VermilionCityName
	external_map  76,  68, CeladonCityName
	external_map  92, 116, FuchsiaCityName
	external_map  52, 132, CinnabarIslandName
	external_map  28,  36, IndigoPlateauName
	external_map 100,  68, SaffronCityName
	external_map   0,   0, PalletTownName ; unused
	external_map  52,  92, Route1Name
	external_map  52,  64, Route2Name
	external_map  64,  52, Route3Name
	external_map  88,  52, Route4Name
	external_map 100,  60, Route5Name
	external_map 100,  76, Route6Name
	external_map  88,  68, Route7Name
	external_map 116,  68, Route8Name
	external_map 116,  52, Route9Name
	external_map 132,  56, Route10Name
	external_map 116,  84, Route11Name
	external_map 132,  80, Route12Name
	external_map 124, 100, Route13Name
	external_map 116, 112, Route14Name
	external_map 104, 116, Route15Name
	external_map  68,  68, Route16Name
	external_map  68,  92, Route17Name
	external_map  80, 116, Route18Name
	external_map  92, 128, Route19Name
	external_map  76, 132, Route20Name
	external_map  52, 120, Route21Name
	external_map  36,  68, Route22Name
	external_map  28,  44, Route23Name
	external_map 100,  44, Route24Name
	external_map 108,  36, Route25Name
	assert_table_length FIRST_INDOOR_MAP


MACRO internal_map
	db \1 + 1
	db \3 + 16, \2 + 8
	dw \4
ENDM

; the appearance of buildings and dungeons in the town map
InternalMapEntries:
	; maximum map id subject to this rule, x, y, name
	internal_map OAKS_LAB,                       52, 108, PalletTownName
	internal_map VIRIDIAN_GYM,                   52,  76, ViridianCityName
	internal_map VIRIDIAN_FOREST_SOUTH_GATE,     52,  64, Route2Name
	internal_map VIRIDIAN_FOREST,                52,  64, ViridianForestName
	internal_map PEWTER_POKECENTER,              52,  52, PewterCityName
	internal_map MT_MOON_B2F,                    76,  52, MountMoonName
	internal_map CERULEAN_MART,                 100,  52, CeruleanCityName
	internal_map MT_MOON_POKECENTER,             88,  52, Route4Name
	internal_map CERULEAN_TRASHED_HOUSE_COPY,   100,  52, CeruleanCityName
	internal_map DAYCARE,                       100,  60, Route5Name
	internal_map UNDERGROUND_PATH_ROUTE_6_COPY, 100,  76, Route6Name
	internal_map UNDERGROUND_PATH_ROUTE_7_COPY,  88,  68, Route7Name
	internal_map UNDERGROUND_PATH_ROUTE_8,      116,  68, Route8Name
	internal_map ROCK_TUNNEL_1F,                132,  52, RockTunnelName
	internal_map POWER_PLANT,                   132,  60, PowerPlantName
	internal_map ROUTE_11_GATE_2F,              116,  84, Route11Name
	internal_map ROUTE_12_GATE_1F,              132,  80, Route12Name
	internal_map BILLS_HOUSE,                   108,  36, Route25Name
	internal_map VERMILION_DOCK,                100,  84, VermilionCityName
	internal_map SS_ANNE_B1F_ROOMS,             100,  92, SSAnneName
	internal_map VICTORY_ROAD_1F,                28,  52, VictoryRoadName
	internal_map HALL_OF_FAME,                   28,  36, PokemonLeagueName
	internal_map UNDERGROUND_PATH_NORTH_SOUTH,  108,  76, UndergroundPathName
	internal_map CHAMPIONS_ROOM,                 28,  36, PokemonLeagueName
	internal_map UNDERGROUND_PATH_WEST_EAST,    108,  76, UndergroundPathName
	internal_map CELADON_HOTEL,                  76,  68, CeladonCityName
	internal_map LAVENDER_POKECENTER,           132,  68, LavenderTownName
	internal_map POKEMON_TOWER_7F,              140,  68, PokemonTowerName
	internal_map LAVENDER_CUBONE_HOUSE,         132,  68, LavenderTownName
	internal_map WARDENS_HOUSE,                  92, 116, FuchsiaCityName
	internal_map SAFARI_ZONE_GATE,               92, 108, SafariZoneName
	internal_map FUCHSIA_MEETING_ROOM,           92, 116, FuchsiaCityName
	internal_map SEAFOAM_ISLANDS_B4F,            68, 132, SeafoamIslandsName
	internal_map VERMILION_OLD_ROD_HOUSE,       100,  84, VermilionCityName
	internal_map FUCHSIA_GOOD_ROD_HOUSE,         92, 116, FuchsiaCityName
	internal_map POKEMON_MANSION_1F,             52, 132, PokemonMansionName
	internal_map CINNABAR_MART,                  52, 132, CinnabarIslandName
	internal_map INDIGO_PLATEAU_LOBBY,           28,  36, IndigoPlateauName
	internal_map MR_PSYCHICS_HOUSE,             100,  68, SaffronCityName
	internal_map ROUTE_15_GATE_2F,              104, 116, Route15Name
	internal_map ROUTE_16_FLY_HOUSE,             68,  68, Route16Name
	internal_map ROUTE_12_SUPER_ROD_HOUSE,      132,  80, Route12Name
	internal_map ROUTE_18_GATE_2F,               80, 116, Route18Name
	internal_map SEAFOAM_ISLANDS_1F,             68, 132, SeafoamIslandsName
	internal_map ROUTE_22_GATE,                  36,  68, Route22Name
	internal_map VICTORY_ROAD_2F,                28,  52, VictoryRoadName
	internal_map ROUTE_12_GATE_2F,              132,  80, Route12Name
	internal_map VERMILION_TRADE_HOUSE,         100,  84, VermilionCityName
	internal_map DIGLETTS_CAVE,                  88,  60, DiglettsCaveName
	internal_map VICTORY_ROAD_3F,                28,  52, VictoryRoadName
	internal_map UNUSED_MAP_CE,                  76,  68, RocketHQName
	internal_map SILPH_CO_8F,                   100,  68, SilphCoName
	internal_map POKEMON_MANSION_B1F,            52, 132, PokemonMansionName
	internal_map SAFARI_ZONE_NORTH_REST_HOUSE,   92, 108, SafariZoneName
	internal_map CERULEAN_CAVE_1F,               92,  44, CeruleanCaveName
	internal_map NAME_RATERS_HOUSE,             132,  68, LavenderTownName
	internal_map CERULEAN_BADGE_HOUSE,          100,  52, CeruleanCityName
	internal_map ROCK_TUNNEL_B1F,               132,  52, RockTunnelName
	internal_map SILPH_CO_ELEVATOR,             100,  68, SilphCoName
	internal_map AGATHAS_ROOM,                   28,  36, PokemonLeagueName
	db -1 ; end


; the appearance of towns and routes in the town map
KansaiExternalMapEntries:
	table_width 4, KansaiExternalMapEntries
	; x, y, name
	external_map 140, 100, SilentHillsName
	external_map 100, 100, SakuraTownName
	external_map 128, 100, Route1Name
	assert_table_length FIRST_KANSAI_INDOOR_MAP

; the appearance of buildings and dungeons in the town map
KansaiInternalMapEntries:
	; maximum map id subject to this rule, x, y, name
	internal_map ELMS_LAB,                      140, 100, SilentHillsName
	internal_map MR_POKEMONS_HOUSE,             100, 100, SakuraTownName
	db -1 ; end
