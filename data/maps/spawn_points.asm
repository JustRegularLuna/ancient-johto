MACRO spawn
; map, x, y
	map_id \1
	db \2, \3
ENDM

SpawnPoints:
; entries correspond to SPAWN_* constants
	table_width 4
	spawn PLAYERS_HOUSE_2F,            3,  3 ; new game
	spawn SILENT_HILLS,                5,  6 ; debug

; fly points
	spawn SILENT_HILLS,               11,  6
	spawn SAKURA_TOWN,                31, 22
	spawn BELLFLOWER_CITY,            29, 30

; end of list thing?
	spawn N_A,                        -1, -1

	assert_table_length NUM_SPAWNS + 1
