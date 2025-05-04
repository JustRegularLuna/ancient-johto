MACRO tileset
	dba \1GFX, \1Meta, \1Coll
	dw \1Anim
	dw NULL
	dw NULL ; formerly palette map
ENDM

; Associated data:
; - The *GFX, *Meta, and *Coll are defined in gfx/tilesets.asm
; - The *Anim are defined in engine/tilesets/tileset_anims.asm

Tilesets::
; entries correspond to TILESET_* constants (see constants/tileset_constants.asm)
	table_width TILESET_LENGTH
	tileset Tileset0
	tileset TilesetSilent
	tileset TilesetBellflower
	tileset TilesetKanto
	tileset TilesetPlateau
	tileset TilesetPlayersHouse
	tileset TilesetPlayersRoom
	tileset TilesetHouse
	tileset TilesetTraditionalHouse
	tileset TilesetPokecenter
	tileset TilesetClub
	tileset TilesetMart
	tileset TilesetGate
	tileset TilesetSchool
	tileset TilesetLab
	tileset TilesetMansion
	tileset TilesetGameCorner
	tileset TilesetTrainStation
	tileset TilesetRadioTower
	tileset TilesetEliteFourRoom
	tileset TilesetChampionsRoom
	tileset TilesetPort
	tileset TilesetShip
	tileset TilesetTower
	tileset TilesetRuins
	tileset TilesetWarehouse
	tileset TilesetCemetery
	tileset TilesetFacility
	tileset TilesetGenerator
	tileset TilesetInterior
	tileset TilesetKansaiCave
	tileset TilesetKansaiDarkCave
	tileset TilesetIceCave
	tileset TilesetKantoCave
	tileset TilesetKansaiPark
	tileset TilesetKansaiForest
	tileset TilesetKantoPark
	tileset TilesetKantoForest
	tileset TilesetKansaiMuseum
	tileset TilesetKantoMuseum
	assert_table_length NUM_TILESETS + 1
