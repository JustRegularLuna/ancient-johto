; Tilesets indexes (see data/tilesets.asm)
	const_def 1
	const TILESET_SILENT
	const TILESET_BELLFLOWER
	const TILESET_KANTO
	const TILESET_PLATEAU
	const TILESET_PLAYERS_HOUSE
	const TILESET_PLAYERS_ROOM
	const TILESET_HOUSE
	const TILESET_TRADITIONAL_HOUSE
	const TILESET_POKECENTER
	const TILESET_CLUB
	const TILESET_MART
	const TILESET_GATE
	const TILESET_SCHOOL
	const TILESET_LAB
	const TILESET_MANSION
	const TILESET_GAME_CORNER
	const TILESET_TRAIN_STATION
	const TILESET_RADIO_TOWER
	const TILESET_ELITE_FOUR_ROOM
	const TILESET_CHAMPIONS_ROOM
	const TILESET_PORT
	const TILESET_SHIP
	const TILESET_TOWER
	const TILESET_RUINS
	const TILESET_WAREHOUSE
	const TILESET_CEMETERY
	const TILESET_FACILITY
	const TILESET_GENERATOR
	const TILESET_INTERIOR
	const TILESET_KANSAI_CAVE
	const TILESET_KANSAI_DARK_CAVE
	const TILESET_ICE_CAVE
	const TILESET_KANTO_CAVE
	const TILESET_KANSAI_PARK
	const TILESET_KANSAI_FOREST
	const TILESET_KANTO_PARK
	const TILESET_KANTO_FOREST
	const TILESET_KANSAI_MUSEUM
	const TILESET_KANTO_MUSEUM
DEF NUM_TILESETS EQU const_value - 1

; wTileset struct size
DEF TILESET_LENGTH EQU 15

; roof length (see gfx/tilesets/roofs)
DEF ROOF_LENGTH EQU 9

; bg palette values (see gfx/tilesets/*_palette_map.asm)
; TilesetBGPalette indexes (see gfx/tilesets/bg_tiles.pal)
	const_def
	const PAL_BG_GRAY   ; 0
	const PAL_BG_RED    ; 1
	const PAL_BG_GREEN  ; 2
	const PAL_BG_WATER  ; 3
	const PAL_BG_YELLOW ; 4
	const PAL_BG_BROWN  ; 5
	const PAL_BG_ROOF   ; 6
	const PAL_BG_TEXT   ; 7
