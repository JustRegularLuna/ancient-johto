WarpTileIDPointers:
	table_width 2, WarpTileIDPointers
	dw .KantoWarpTileIDs
	dw .PlateauWarpTileIDs
	dw .SilentWarpTileIDs
	dw .BellflowerWarpTileIDs
	dw .PlayersHouseWarpTileIDs
	dw .MartWarpTileIDs
	dw .ForestWarpTileIDs
	dw .PlayersRoomWarpTileIDs
	dw .PokecenterWarpTileIDs
	dw .GymWarpTileIDs
	dw .HouseWarpTileIDs
	dw .MuseumWarpTileIDs
	dw .GeneratorWarpTileIDs
	dw .GateWarpTileIDs
	dw .ShipWarpTileIDs
	dw .ShipPortWarpTileIDs
	dw .CemeteryWarpTileIDs
	dw .InteriorWarpTileIDs
	dw .CavernWarpTileIDs
	dw .LobbyWarpTileIDs
	dw .MansionWarpTileIDs
	dw .LabWarpTileIDs
	dw .ClubWarpTileIDs
	dw .FacilityWarpTileIDs
	dw .KansaiCaveWarpTileIDs
	dw .TraditionalHouseWarpTileIDs
	dw .EliteFourRoomWarpTileIDs
	dw .TowerWarpTileIDs
	dw .RuinsWarpTileIDs
	dw .KansaiForestWarpTileIDs
	dw .ParkWarpTileIDs
	dw .BikeTilesetWarpTileIDs
	dw .IcePathWarpTileIDs
	dw .LighthouseWarpTileIDs
	dw .RadioTowerWarpTileIDs
	dw .TrainStationWarpTileIDs
	dw .HideoutWarpTileIDs
	dw .KansaiMuseumWarpTileIDs
	assert_table_length NUM_TILESETS

MACRO warp_tiles
REPT _NARG
	db \1
	shift
ENDR
	db -1 ; end
ENDM

.KantoWarpTileIDs:
	warp_tiles $1B, $58

.MuseumWarpTileIDs:
	warp_tiles $1A, $1C, $3B

.GateWarpTileIDs:
	warp_tiles $1A, $1C, $3B, $76

.PlayersHouseWarpTileIDs:
	warp_tiles $5C, $5E

.PlayersRoomWarpTileIDs:
	warp_tiles $50

.MartWarpTileIDs:
	warp_tiles $5A, $5C, $5E

.PokecenterWarpTileIDs:
	warp_tiles $32, $52, $54

.ForestWarpTileIDs:
	warp_tiles $5A, $5C, $3A

.GymWarpTileIDs:
	warp_tiles $4A

.HouseWarpTileIDs:
	warp_tiles $2A, $54, $32

.ShipWarpTileIDs:
	warp_tiles $37, $39, $1E, $4A

.InteriorWarpTileIDs:
	warp_tiles $15, $55, $04

.CavernWarpTileIDs:
	warp_tiles $18, $1A, $22

.LobbyWarpTileIDs:
	warp_tiles $1A, $1C, $38

.MansionWarpTileIDs:
	warp_tiles $1A, $1C, $53

.LabWarpTileIDs:
	warp_tiles $34, $43, $70, $72

.FacilityWarpTileIDs:
	warp_tiles $13, $1B, $43, $58, $20

.CemeteryWarpTileIDs:
	warp_tiles $13, $1B

.GeneratorWarpTileIDs:
	warp_tiles $16, $36

.PlateauWarpTileIDs:
	warp_tiles $1B, $3B

.ShipPortWarpTileIDs:
	warp_tiles

.ClubWarpTileIDs:
	warp_tiles

.SilentWarpTileIDs:
	warp_tiles $22, $5E

.BellflowerWarpTileIDs:
	warp_tiles $22, $5E

.KansaiCaveWarpTileIDs:
	warp_tiles $1E, $30, $32, $38, $3A

.TraditionalHouseWarpTileIDs:
	warp_tiles $5C

.EliteFourRoomWarpTileIDs:
	warp_tiles $0F, $3C, $42, $4A

.TowerWarpTileIDs:
	warp_tiles $01, $10, $1C, $1E, $54

.RuinsWarpTileIDs:
	warp_tiles $01, $18, $28

.KansaiForestWarpTileIDs:
	warp_tiles $17

.ParkWarpTileIDs:
	warp_tiles 

.BikeTilesetWarpTileIDs:
	warp_tiles $5B

.IcePathWarpTileIDs:
	warp_tiles $02, $1A, $3A

.LighthouseWarpTileIDs:
	warp_tiles $1E, $37, $39, $4F

.RadioTowerWarpTileIDs:
	warp_tiles $1C, $1E

.TrainStationWarpTileIDs:
	warp_tiles $17

.HideoutWarpTileIDs:
	warp_tiles $32, $3A, $3C

.KansaiMuseumWarpTileIDs:
	warp_tiles $1C, $1E
