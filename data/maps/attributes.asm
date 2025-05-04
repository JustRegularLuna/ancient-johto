MACRO map_attributes
;\1: map name
;\2: map id
;\3: border block
;\4: connections: combo of NORTH, SOUTH, WEST, and/or EAST, or 0 for none
	DEF CURRENT_MAP_WIDTH = \2_WIDTH
	DEF CURRENT_MAP_HEIGHT = \2_HEIGHT
\1_MapAttributes::
	db \3
	db CURRENT_MAP_HEIGHT, CURRENT_MAP_WIDTH
	db BANK(\1_Blocks)
	dw \1_Blocks
	db BANK(\1_MapScripts) ; aka BANK(\1_MapEvents)
	dw \1_MapScripts
	dw \1_MapEvents
	db \4
ENDM

; Connections go in order: north, south, west, east
MACRO connection
;\1: direction
;\2: map name
;\3: map id
;\4: offset of the target map relative to the current map
;    (x offset for east/west, y offset for north/south)

	; LEGACY: Support for old connection macro
	if _NARG == 6
		connection \1, \2, \3, (\4) - (\5)
	else

		; Calculate tile offsets for source (current) and target maps
		DEF _src = 0
		DEF _tgt = (\4) + 3
		if _tgt < 0
			DEF _src = -_tgt
			DEF _tgt = 0
		endc

		if !STRCMP("\1", "north")
			DEF _blk = \3_WIDTH * (\3_HEIGHT - 3) + _src
			DEF _map = _tgt
			DEF _win = (\3_WIDTH + 6) * \3_HEIGHT + 1
			DEF _y = \3_HEIGHT * 2 - 1
			DEF _x = (\4) * -2
			DEF _len = CURRENT_MAP_WIDTH + 3 - (\4)
			if _len > \3_WIDTH
				DEF _len = \3_WIDTH
			endc

		elif !STRCMP("\1", "south")
			DEF _blk = _src
			DEF _map = (CURRENT_MAP_WIDTH + 6) * (CURRENT_MAP_HEIGHT + 3) + _tgt
			DEF _win = \3_WIDTH + 7
			DEF _y = 0
			DEF _x = (\4) * -2
			DEF _len = CURRENT_MAP_WIDTH + 3 - (\4)
			if _len > \3_WIDTH
				DEF _len = \3_WIDTH
			endc

		elif !STRCMP("\1", "west")
			DEF _blk = (\3_WIDTH * _src) + \3_WIDTH - 3
			DEF _map = (CURRENT_MAP_WIDTH + 6) * _tgt
			DEF _win = (\3_WIDTH + 6) * 2 - 6
			DEF _y = (\4) * -2
			DEF _x = \3_WIDTH * 2 - 1
			DEF _len = CURRENT_MAP_HEIGHT + 3 - (\4)
			if _len > \3_HEIGHT
				DEF _len = \3_HEIGHT
			endc

		elif !STRCMP("\1", "east")
			DEF _blk = (\3_WIDTH * _src)
			DEF _map = (CURRENT_MAP_WIDTH + 6) * _tgt + CURRENT_MAP_WIDTH + 3
			DEF _win = \3_WIDTH + 7
			DEF _y = (\4) * -2
			DEF _x = 0
			DEF _len = CURRENT_MAP_HEIGHT + 3 - (\4)
			if _len > \3_HEIGHT
				DEF _len = \3_HEIGHT
			endc

		else
			fail "Invalid direction for 'connection'."
		endc

		map_id \3
		dw \2_Blocks + _blk
		dw wOverworldMapBlocks + _map
		db _len - _src
		db \3_WIDTH
		db _y, _x
		dw wOverworldMapBlocks + _win

	endc
ENDM

; Connected Outdoor Maps
	map_attributes SilentHills, SILENT_HILLS, $39, WEST
	connection west, KansaiRoute1, KANSAI_ROUTE_1, 0

	map_attributes KansaiRoute1, KANSAI_ROUTE_1, $05, WEST | EAST
	connection west, SakuraTown, SAKURA_TOWN, -9
	connection east, SilentHills, SILENT_HILLS, 0

	map_attributes SakuraTown, SAKURA_TOWN, $5D, NORTH | EAST
	connection north, KansaiRoute2, KANSAI_ROUTE_2, 5
	connection east, KansaiRoute1, KANSAI_ROUTE_1, 9

	map_attributes KansaiRoute2, KANSAI_ROUTE_2, $5D, NORTH | SOUTH
	connection north, KansaiRoute3, KANSAI_ROUTE_3, -10
	connection south, SakuraTown, SAKURA_TOWN, -5

	map_attributes BellflowerCity, BELLFLOWER_CITY, $05, EAST
	connection east, KansaiRoute3, KANSAI_ROUTE_3, 9

	map_attributes KansaiRoute3, KANSAI_ROUTE_3, $05, SOUTH | WEST
	connection south, KansaiRoute2, KANSAI_ROUTE_2, 10
	connection west, BellflowerCity, BELLFLOWER_CITY, -9

; Cable Club Group
	map_attributes Pokecenter2F, POKECENTER_2F, $00, 0
	map_attributes TradeCenter, TRADE_CENTER, $00, 0
	map_attributes Colosseum, COLOSSEUM, $00, 0
	map_attributes TimeCapsule, TIME_CAPSULE, $00, 0

; Dungeons Group
	map_attributes EvergreenWoodsSouthGate1F, EVERGREEN_WOODS_SOUTH_GATE_1F, $00, 0
	map_attributes EvergreenWoodsSouthGate2F, EVERGREEN_WOODS_SOUTH_GATE_2F, $00, 0
	map_attributes EvergreenWoodsNorthGate, EVERGREEN_WOODS_NORTH_GATE, $00, 0
	map_attributes EvergreenWoods, EVERGREEN_WOODS, $00, 0
	map_attributes NationalParkGate, NATIONAL_PARK_GATE, $00, 0
	map_attributes NationalPark, NATIONAL_PARK, $00, 0
	map_attributes NationalParkBugContest, NATIONAL_PARK_BUG_CONTEST, $00, 0
	map_attributes SafariZoneEntrance, SAFARI_ZONE_ENTRANCE, $00, 0
	map_attributes SafariZoneBeta, SAFARI_ZONE_BETA, $13, 0

; Silent Hills Group
	map_attributes ElmsLab, ELMS_LAB, $00, 0
	map_attributes ElmsHouse, ELMS_HOUSE, $00, 0
	map_attributes PlayersHouse1F, PLAYERS_HOUSE_1F, $00, 0
	map_attributes PlayersHouse2F, PLAYERS_HOUSE_2F, $00, 0
	map_attributes RivalsHouse, RIVALS_HOUSE, $00, 0
	map_attributes SilentPokecenter1F, SILENT_POKECENTER_1F, $00, 0

; Sakura Town Group
	map_attributes SakuraPokecenter1F, SAKURA_POKECENTER_1F, $00, 0
	map_attributes SakuraMart, SAKURA_MART, $00, 0
	map_attributes SakuraHouse1, SAKURA_HOUSE_1, $00, 0
	map_attributes SakuraHouse2, SAKURA_HOUSE_2, $00, 0
	map_attributes SakuraHouse3, SAKURA_HOUSE_3, $00, 0
	map_attributes SakuraSecretHouse, SAKURA_SECRET_HOUSE, $00, 0
	map_attributes MrPokemonsHouse, MR_POKEMONS_HOUSE, $00, 0

; Bellflower City Group
	map_attributes BellflowerPokecenter1F, BELLFLOWER_POKECENTER_1F, $00, 0
	map_attributes BellflowerMart, BELLFLOWER_MART, $00, 0
	map_attributes BellflowerGym, BELLFLOWER_GYM, $00, 0
	map_attributes BellflowerSchoolHouse, BELLFLOWER_SCHOOL_HOUSE, $00, 0
	map_attributes BellflowerHouse, BELLFLOWER_HOUSE, $00, 0
	map_attributes KurtsHouse, KURTS_HOUSE, $00, 0
	map_attributes BellflowerMuseum1F, BELLFLOWER_MUSEUM_1F, $00, 0
	map_attributes BellflowerMuseum2F, BELLFLOWER_MUSEUM_2F, $00, 0
