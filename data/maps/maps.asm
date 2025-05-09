MACRO map
;\1: map name: for the MapAttributes pointer (see data/maps/attributes.asm)
;\2: tileset: a TILESET_* constant
;\3: environment: TOWN, ROUTE, INDOOR, CAVE, FOREST, GATE, or DUNGEON
;\4: location: a LANDMARK_* constant
;\5: music: a MUSIC_* constant
;\6: phone service flag: TRUE to prevent phone calls
;\7: time of day: a PALETTE_* constant
;\8: fishing group: a FISHGROUP_* constant
	db BANK(\1_MapAttributes), \2, \3
	dw \1_MapAttributes
	db \4, \5
	dn \6, \7
	db \8
ENDM

MapGroupPointers::
; pointers to the first map of each map group
	table_width 2
	dw MapGroup_CableClub
	dw MapGroup_Dungeons
	dw MapGroup_Silent
	dw MapGroup_Sakura
	dw MapGroup_Bellflower
	assert_table_length NUM_MAP_GROUPS

MapGroup_CableClub:
	table_width MAP_LENGTH
	map Pokecenter2F, TILESET_POKECENTER, INDOOR, LANDMARK_SPECIAL, MUSIC_POKEMON_CENTER, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map TradeCenter, TILESET_CLUB, INDOOR, LANDMARK_SPECIAL, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map Colosseum, TILESET_CLUB, INDOOR, LANDMARK_SPECIAL, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map TimeCapsule, TILESET_CLUB, INDOOR, LANDMARK_SPECIAL, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	assert_table_length NUM_CABLE_CLUB_MAPS

MapGroup_Dungeons:
	table_width MAP_LENGTH
	map EvergreenWoodsSouthGate1F, TILESET_GATE, GATE, LANDMARK_EVERGREEN_WOODS, MUSIC_ROUTE_30, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map EvergreenWoodsSouthGate2F, TILESET_GATE, GATE, LANDMARK_EVERGREEN_WOODS, MUSIC_ROUTE_30, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map EvergreenWoodsNorthGate, TILESET_GATE, GATE, LANDMARK_EVERGREEN_WOODS, MUSIC_ROUTE_30, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map EvergreenWoods, TILESET_KANSAI_FOREST, FOREST, LANDMARK_EVERGREEN_WOODS, MUSIC_UNION_CAVE, FALSE, PALETTE_NITE, FISHGROUP_SHORE
	map NationalParkGate, TILESET_GATE, GATE, LANDMARK_NATIONAL_PARK, MUSIC_GOLDENROD_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map NationalPark, TILESET_KANSAI_PARK, ROUTE, LANDMARK_NATIONAL_PARK, MUSIC_NATIONAL_PARK, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map NationalParkBugContest, TILESET_KANSAI_PARK, ROUTE, LANDMARK_NATIONAL_PARK, MUSIC_BUG_CATCHING_CONTEST, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map SafariZoneEntrance, TILESET_GATE, GATE, LANDMARK_FUCHSIA_CITY, MUSIC_VIRIDIAN_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map SafariZoneBeta, TILESET_KANTO_PARK, ROUTE, LANDMARK_SAFARI_ZONE, MUSIC_EVOLUTION, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	assert_table_length NUM_DUNGEONS_MAPS

MapGroup_Silent:
	table_width MAP_LENGTH
	map SilentHills, TILESET_SILENT, TOWN, LANDMARK_SILENT_HILLS, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	map KansaiRoute1, TILESET_SILENT, ROUTE, LANDMARK_KANSAI_ROUTE_1, MUSIC_ROUTE_29, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map SilentPokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_SILENT_HILLS, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map PlayersHouse1F, TILESET_PLAYERS_HOUSE, INDOOR, LANDMARK_SILENT_HILLS, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map PlayersHouse2F, TILESET_PLAYERS_ROOM, INDOOR, LANDMARK_SILENT_HILLS, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map RivalsHouse, TILESET_PLAYERS_HOUSE, INDOOR, LANDMARK_SILENT_HILLS, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map ElmsLab, TILESET_SCHOOL, INDOOR, LANDMARK_SILENT_HILLS, MUSIC_PROF_ELM, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map ElmsHouse, TILESET_HOUSE, INDOOR, LANDMARK_SILENT_HILLS, MUSIC_PROF_ELM, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	assert_table_length NUM_SILENT_MAPS

MapGroup_Sakura:
	table_width MAP_LENGTH
	map SakuraTown, TILESET_SILENT, TOWN, LANDMARK_SAKURA_TOWN, MUSIC_CHERRYGROVE_CITY, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	map KansaiRoute2, TILESET_SILENT, ROUTE, LANDMARK_KANSAI_ROUTE_2, MUSIC_ROUTE_30, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map SakuraPokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_SAKURA_TOWN, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map SakuraMart, TILESET_MART, INDOOR, LANDMARK_SAKURA_TOWN, MUSIC_CHERRYGROVE_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map SakuraHouse1, TILESET_HOUSE, INDOOR, LANDMARK_SAKURA_TOWN, MUSIC_CHERRYGROVE_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map SakuraHouse2, TILESET_HOUSE, INDOOR, LANDMARK_SAKURA_TOWN, MUSIC_CHERRYGROVE_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map SakuraHouse3, TILESET_HOUSE, INDOOR, LANDMARK_SAKURA_TOWN, MUSIC_CHERRYGROVE_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map SakuraSecretHouse, TILESET_HOUSE, INDOOR, LANDMARK_SAKURA_TOWN, MUSIC_CHERRYGROVE_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map MrPokemonsHouse, TILESET_LAB, INDOOR, LANDMARK_SAKURA_TOWN, MUSIC_CHERRYGROVE_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	assert_table_length NUM_SAKURA_MAPS

MapGroup_Bellflower:
	table_width MAP_LENGTH
	map BellflowerCity, TILESET_BELLFLOWER, TOWN, LANDMARK_BELLFLOWER_CITY, MUSIC_VIOLET_CITY, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	map KansaiRoute3, TILESET_BELLFLOWER, ROUTE, LANDMARK_KANSAI_ROUTE_3, MUSIC_ROUTE_30, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	map BellflowerPokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_BELLFLOWER_CITY, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map BellflowerMart, TILESET_MART, INDOOR, LANDMARK_BELLFLOWER_CITY, MUSIC_VIOLET_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map BellflowerGym, TILESET_TOWER, INDOOR, LANDMARK_BELLFLOWER_CITY, MUSIC_GYM, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map BellflowerSchoolHouse, TILESET_SCHOOL, INDOOR, LANDMARK_BELLFLOWER_CITY, MUSIC_VIOLET_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map BellflowerHouse, TILESET_TRADITIONAL_HOUSE, INDOOR, LANDMARK_BELLFLOWER_CITY, MUSIC_VIOLET_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map KurtsHouse, TILESET_TRADITIONAL_HOUSE, INDOOR, LANDMARK_BELLFLOWER_CITY, MUSIC_VIOLET_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map BellflowerMuseum1F, TILESET_KANSAI_MUSEUM, INDOOR, LANDMARK_BELLFLOWER_CITY, MUSIC_VIOLET_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map BellflowerMuseum2F, TILESET_KANSAI_MUSEUM, INDOOR, LANDMARK_BELLFLOWER_CITY, MUSIC_VIOLET_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	assert_table_length NUM_BELLFLOWER_MAPS
