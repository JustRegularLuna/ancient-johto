;
; KANTO STUFF
;

MapSpriteSets:
	table_width 1, MapSpriteSets
	db $01 ; PALLET_TOWN
	db $01 ; VIRIDIAN_CITY
	db $01 ; PEWTER_CITY
	db $01 ; CERULEAN_CITY
	db $01 ; LAVENDER_TOWN
	db $01 ; VERMILION_CITY
	db $01 ; CELADON_CITY
	db $01 ; FUCHSIA_CITY
	db $01 ; CINNABAR_ISLAND
	db $01 ; INDIGO_PLATEAU
	db $01 ; SAFFRON_CITY
	db $01 ; unused map ID
	db $01 ; ROUTE_1
	db $01 ; ROUTE_2
	db $01 ; ROUTE_3
	db $01 ; ROUTE_4
	db $01 ; ROUTE_5
	db $01 ; ROUTE_6
	db $01 ; ROUTE_7
	db $01 ; ROUTE_8
	db $01 ; ROUTE_9
	db $01 ; ROUTE_10
	db $01 ; ROUTE_11
	db $01 ; ROUTE_12
	db $01 ; ROUTE_13
	db $01 ; ROUTE_14
	db $01 ; ROUTE_15
	db $01 ; ROUTE_16
	db $01 ; ROUTE_17
	db $01 ; ROUTE_18
	db $01 ; ROUTE_19
	db $01 ; ROUTE_20
	db $01 ; ROUTE_21
	db $01 ; ROUTE_22
	db $01 ; ROUTE_23
	db $01 ; ROUTE_24
	db $01 ; ROUTE_25
	assert_table_length FIRST_INDOOR_MAP

DEF EAST_WEST   EQU 1
DEF NORTH_SOUTH EQU 2

; Format:
; 00: determines whether the map is split EAST_WEST or NORTH_SOUTH
; 01: coordinate of dividing line
; 02: sprite set ID if in the West or North side
; 03: sprite set ID if in the East or South side
SplitMapSpriteSets:
	db NORTH_SOUTH, 37, $02, $01 ; $f1
	db NORTH_SOUTH, 50, $02, $03 ; $f2
	db EAST_WEST,   57, $04, $08 ; $f3
	db NORTH_SOUTH, 21, $03, $08 ; $f4
	db EAST_WEST,    8, $0A, $08 ; $f5
	db EAST_WEST,   24, $09, $05 ; $f6
	db EAST_WEST,   34, $09, $0A ; $f7
	db EAST_WEST,   53, $01, $0A ; $f8
	db NORTH_SOUTH, 33, $02, $07 ; $f9
	db NORTH_SOUTH,  2, $07, $04 ; $fa
	db EAST_WEST,   17, $05, $07 ; $fb
	db EAST_WEST,    3, $07, $03 ; $fc

SpriteSets:

; each sprite set has 9 walking sprites and 2 still sprites
DEF SPRITE_SET_LENGTH EQU 9 + 2

; sprite set $01
; PALLET_TOWN
	table_width 1
	db SPRITE_GIRL
	db SPRITE_FISHER
	db SPRITE_YOUNGSTER
	db SPRITE_BLUE
	db SPRITE_GRAMPS
	db SPRITE_BUG_CATCHER
	db SPRITE_COOLTRAINER_F
	db SPRITE_SWIMMER_GIRL
	db SPRITE_SWIMMER_GUY
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	assert_table_length SPRITE_SET_LENGTH


;
; JOHTO STUFF
;


KansaiMapSpriteSets:
	table_width 1, KansaiMapSpriteSets
	db $01 ; SILENT_HILLS
	db $01 ; SAKURA_TOWN
	db $01 ; KANSAI_ROUTE_1
	db $01 ; KANSAI_ROUTE_2
	db $02 ; KANSAI_ROUTE_3
	assert_table_length FIRST_KANSAI_INDOOR_MAP


KansaiSplitMapSpriteSets:
	db NORTH_SOUTH, 37, $02, $01 ; $f1 **Placeholder


KansaiSpriteSets:

; sprite set $01
; SILENT_HILLS
; SAKURA_TOWN
	table_width 1
	db SPRITE_RIVAL
	db SPRITE_GIRL
	db SPRITE_FISHER
	db SPRITE_COOLTRAINER_M
	db SPRITE_YOUNGSTER
	db SPRITE_FISHING_GURU
	db SPRITE_POKEFAN_M
	db SPRITE_BUG_CATCHER
	db SPRITE_LASS
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	assert_table_length SPRITE_SET_LENGTH

; sprite set $02
; BELLFLOWER_CITY
	table_width 1
	db SPRITE_TWIN
	db SPRITE_TEACHER
	db SPRITE_FISHER
	db SPRITE_COOLTRAINER_M
	db SPRITE_YOUNGSTER
	db SPRITE_CHANNELER
	db SPRITE_GRAMPS
	db SPRITE_BUG_CATCHER
	db SPRITE_LASS
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	assert_table_length SPRITE_SET_LENGTH
