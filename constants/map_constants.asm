MACRO newgroup
;\1: group id
	const_skip
	DEF MAPGROUP_\1 EQU const_value
	DEF CURRENT_NUM_MAPGROUP_MAPS EQUS "NUM_\1_MAPS"
	DEF __map_value__ = 1
ENDM

MACRO map_const
;\1: map id
;\2: width: in blocks
;\3: height: in blocks
	DEF GROUP_\1 EQU const_value
	DEF MAP_\1 EQU __map_value__
	DEF __map_value__ += 1
	DEF \1_WIDTH EQU \2
	DEF \1_HEIGHT EQU \3
ENDM

MACRO endgroup
	DEF {CURRENT_NUM_MAPGROUP_MAPS} EQU __map_value__ - 1
	PURGE CURRENT_NUM_MAPGROUP_MAPS
ENDM

; map group ids
; `newgroup` indexes are for:
; - MapGroupPointers (see data/maps/maps.asm)
; - MapGroupRoofs (see data/maps/roofs.asm)
; - OutdoorSprites (see data/maps/outdoor_sprites.asm)
; - RoofPals (see gfx/tilesets/roofs.pal)
; `map_const` indexes are for the sub-tables of MapGroupPointers (see data/maps/maps.asm)
; Each map also has associated data:
; - attributes (see data/maps/attributes.asm)
; - blocks (see data/maps/blocks.asm)
; - scripts and events (see data/maps/scripts.asm)
	const_def

	newgroup CABLE_CLUB
	map_const POKECENTER_2F,                                8,  4
	map_const TRADE_CENTER,                                 5,  4
	map_const COLOSSEUM,                                    5,  4
	map_const TIME_CAPSULE,                                 5,  4
	endgroup

	newgroup DUNGEONS
	map_const EVERGREEN_WOODS_SOUTH_GATE_1F,                5,  4
	map_const EVERGREEN_WOODS_SOUTH_GATE_2F,                4,  4
	map_const EVERGREEN_WOODS_NORTH_GATE,                   5,  4
	map_const EVERGREEN_WOODS,                             15, 27
	map_const NATIONAL_PARK_GATE,                           5,  4
	map_const NATIONAL_PARK,                               20, 27
	map_const NATIONAL_PARK_BUG_CONTEST,                   20, 27
	map_const SAFARI_ZONE_ENTRANCE,                         5,  4
	map_const SAFARI_ZONE_BETA,                            10, 18
	endgroup

	newgroup SILENT
	map_const SILENT_HILLS,                                10,  9
	map_const KANSAI_ROUTE_1,                              30,  9
	map_const SILENT_POKECENTER_1F,                         5,  4
	map_const PLAYERS_HOUSE_1F,                             5,  4
	map_const PLAYERS_HOUSE_2F,                             4,  3
	map_const RIVALS_HOUSE,                                 5,  4
	map_const ELMS_LAB,                                     5,  6
	map_const ELMS_HOUSE,                                   4,  4
	endgroup

	newgroup SAKURA
	map_const SAKURA_TOWN,                                 20, 18
	map_const KANSAI_ROUTE_2,                              10, 18
	map_const SAKURA_POKECENTER_1F,                         5,  4
	map_const SAKURA_MART,                                  6,  4
	map_const SAKURA_HOUSE_1,                               4,  4
	map_const SAKURA_HOUSE_2,                               4,  4
	map_const SAKURA_HOUSE_3,                               4,  4
	map_const SAKURA_SECRET_HOUSE,                          4,  4
	map_const MR_POKEMONS_HOUSE,                            4,  4
	endgroup

	newgroup BELLFLOWER
	map_const BELLFLOWER_CITY,                             20, 18
	map_const KANSAI_ROUTE_3,                              20,  9
	map_const BELLFLOWER_POKECENTER_1F,                     5,  4
	map_const BELLFLOWER_MART,                              6,  4
	map_const BELLFLOWER_GYM,                               5,  8
	map_const BELLFLOWER_SCHOOL_HOUSE,                      4,  8
	map_const BELLFLOWER_HOUSE,                             4,  4
	map_const KURTS_HOUSE,                                  8,  4
	map_const BELLFLOWER_MUSEUM_1F,                         8,  4
	map_const BELLFLOWER_MUSEUM_2F,                         8,  4
	endgroup

DEF NUM_MAP_GROUPS EQU const_value
