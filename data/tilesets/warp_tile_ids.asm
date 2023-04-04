WarpTileIDPointers:
	table_width 2, WarpTileIDPointers
	dw .OverworldWarpTileIDs
	dw .PlayersHouseWarpTileIDs
	dw .MartWarpTileIDs
	dw .ForestWarpTileIDs
	dw .PlayersRoomWarpTileIDs
	dw .PokecenterWarpTileIDs
	dw .GymWarpTileIDs
	dw .HouseWarpTileIDs
	dw .MuseumWarpTileIDs
	dw .UndergroundWarpTileIDs
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
	dw .PlateauWarpTileIDs
	dw .JohtoWarpTileIDs
	dw .JohtoCaveWarpTileIDs
	dw .TraditionalHouseWarpTileIDs
	assert_table_length NUM_TILESETS

MACRO warp_tiles
REPT _NARG
	db \1
	shift
ENDR
	db -1 ; end
ENDM

.OverworldWarpTileIDs:
	warp_tiles $1B, $58

.MuseumWarpTileIDs:
	warp_tiles $1A, $1C, $3B

.GateWarpTileIDs:
	warp_tiles $1A, $1C, $3B

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
	warp_tiles $54, $5C, $32

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

.UndergroundWarpTileIDs:
	warp_tiles $13

.PlateauWarpTileIDs:
	warp_tiles $1B, $3B

.ShipPortWarpTileIDs:
	warp_tiles

.ClubWarpTileIDs:
	warp_tiles

.JohtoWarpTileIDs:
	warp_tiles $29, $39, $56

.JohtoCaveWarpTileIDs:
	warp_tiles $1E, $30, $32, $38, $3A

.TraditionalHouseWarpTileIDs
	warp_tiles $5C
