MACRO treemon_map
	map_id \1
	db \2 ; treemon set
ENDM

TreeMonMaps:
	treemon_map KANSAI_ROUTE_1,            TREEMON_SET_CANYON
	treemon_map SILENT_HILLS,              TREEMON_SET_CITY
	db -1

RockMonMaps:
	;treemon_map CIANWOOD_CITY,             TREEMON_SET_ROCK
	db -1
