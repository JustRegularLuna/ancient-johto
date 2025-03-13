MACRO treemon_map
	map_id \1
	db \2 ; treemon set
ENDM

TreeMonMaps:
	treemon_map ROUTE_29,                  TREEMON_SET_CANYON
	treemon_map NEW_BARK_TOWN,             TREEMON_SET_CITY
	db -1

RockMonMaps:
	;treemon_map CIANWOOD_CITY,             TREEMON_SET_ROCK
	db -1
