MACRO spawn
; map, x, y
	map_id \1
	db \2, \3
ENDM

SpawnPoints:
; entries correspond to SPAWN_* constants
	table_width 4
	spawn PLAYERS_HOUSE_2F,            3,  3 ; new game
	spawn NEW_BARK_TOWN,              13,  6 ; debug

; fly points
	spawn NEW_BARK_TOWN,              13,  6

; end of list thing?
	spawn N_A,                        -1, -1

	assert_table_length NUM_SPAWNS + 1
