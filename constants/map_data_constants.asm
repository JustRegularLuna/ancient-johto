DEF MAPGROUP_N_A  EQU -1
DEF GROUP_N_A     EQU -1
DEF MAP_N_A       EQU -1
DEF MAPGROUP_NONE EQU 0
DEF GROUP_NONE    EQU 0
DEF MAP_NONE      EQU 0

; map struct members (see data/maps/maps.asm)
rsreset
DEF MAP_MAPATTRIBUTES_BANK rb ; 0
DEF MAP_TILESET            rb ; 1
DEF MAP_ENVIRONMENT        rb ; 2
DEF MAP_MAPATTRIBUTES      rw ; 3
DEF MAP_LOCATION           rb ; 5
DEF MAP_MUSIC              rb ; 6
DEF MAP_PALETTE            rb ; 7
DEF MAP_FISHGROUP          rb ; 8
DEF MAP_LENGTH EQU _RS

; map environments (wEnvironment)
; EnvironmentColorsPointers indexes (see data/maps/environment_colors.asm)
	const_def 1
	const TOWN
	const ROUTE
	const INDOOR
	const CAVE
	const FOREST
	const GATE
	const DUNGEON
DEF NUM_ENVIRONMENTS EQU const_value - 1

; map palettes (wMapTimeOfDay)
	const_def
	const PALETTE_AUTO
	const PALETTE_DAY
	const PALETTE_NITE
	const PALETTE_MORN
	const PALETTE_DARK
DEF NUM_MAP_PALETTES EQU const_value

; FishGroups indexes (see data/wild/fish.asm)
	const_def
	const FISHGROUP_NONE
	const FISHGROUP_SHORE
	const FISHGROUP_OCEAN
	const FISHGROUP_LAKE
	const FISHGROUP_POND
	const FISHGROUP_DRATINI
	const FISHGROUP_QWILFISH_SWARM
	const FISHGROUP_REMORAID_SWARM
	const FISHGROUP_GYARADOS
	const FISHGROUP_DRATINI_2
	const FISHGROUP_WHIRL_ISLANDS
	const FISHGROUP_QWILFISH
	const FISHGROUP_REMORAID
	const FISHGROUP_QWILFISH_NO_SWARM
DEF NUM_FISHGROUPS EQU const_value - 1

; wMapConnections
; connection directions (see data/maps/data.asm)
	const_def
	shift_const EAST
	shift_const WEST
	shift_const SOUTH
	shift_const NORTH

; SpawnPoints indexes (see data/maps/spawn_points.asm)
	const_def
	const SPAWN_HOME
	const SPAWN_DEBUG
; johto
	const SPAWN_SILENT
	const SPAWN_SAKURA
	const SPAWN_BELLFLOWER
DEF NUM_SPAWNS EQU const_value

DEF SPAWN_N_A EQU -1

; Flypoints indexes (see data/maps/flypoints.asm)
	const_def
; kansai
DEF KANSAI_FLYPOINT EQU const_value
	const FLY_SILENT
	const FLY_SAKURA
	const FLY_BELLFLOWER
; kanto
DEF KANTO_FLYPOINT EQU const_value

DEF NUM_FLYPOINTS EQU const_value

DEF MAX_OUTDOOR_SPRITES EQU 11 ; see engine/overworld/overworld.asm
