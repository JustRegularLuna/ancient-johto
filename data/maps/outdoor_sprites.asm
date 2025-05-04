; Valid sprite IDs for each map group.
; Maps with environment ROUTE or TOWN can only use these sprites.

OutdoorSprites:
; entries correspond to MAPGROUP_* constants
	table_width 2
	dw CableClubGroupSprites
	dw DungeonsGroupSprites
	dw SilentGroupSprites
	dw SakuraGroupSprites
	dw BellflowerGroupSprites
	assert_table_length NUM_MAP_GROUPS

CableClubGroupSprites:
DungeonsGroupSprites:
	db SPRITE_LASS
	db SPRITE_POKEFAN_F
	db SPRITE_TEACHER
	db SPRITE_YOUNGSTER
	db SPRITE_GROWLITHE
	db SPRITE_POKEFAN_M
	db SPRITE_ROCKER
	db SPRITE_GAMEBOY_KID
	db SPRITE_SCIENTIST
	db SPRITE_POKE_BALL
	db SPRITE_BOULDER

SilentGroupSprites:
SakuraGroupSprites:
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

BellflowerGroupSprites:
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
