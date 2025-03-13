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
	map_const NATIONAL_PARK_GATE,                           5,  4
	map_const NATIONAL_PARK,                               20, 27
	map_const NATIONAL_PARK_BUG_CONTEST,                   20, 27
	map_const SAFARI_ZONE_ENTRANCE,                         5,  4
	map_const SAFARI_ZONE_BETA,                            10, 18
	endgroup

	newgroup NEW_BARK
	map_const ROUTE_29,                                    30,  9
	map_const NEW_BARK_TOWN,                               10,  9
	map_const ELMS_LAB,                                     5,  6
	map_const PLAYERS_HOUSE_1F,                             5,  4
	map_const PLAYERS_HOUSE_2F,                             4,  3
	endgroup

DEF NUM_MAP_GROUPS EQU const_value
