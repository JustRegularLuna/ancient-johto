DoorTileIDPointers:
	dbw KANTO,           .KantoDoorTileIDs
	dbw PLATEAU,         .PlateauDoorTileIDs
	dbw SILENT,          .SilentDoorTileIDs
	dbw BELLFLOWER,      .BellflowerDoorTileIDs
	dbw FOREST,          .ForestDoorTileIDs
	dbw MART,            .MartDoorTileIDs
	dbw HOUSE,           .HouseDoorTileIDs
	dbw MUSEUM,          .MuseumDoorTileIDs
	dbw GATE,            .GateDoorTileIDs
	dbw SHIP,            .ShipDoorTileIDs
	dbw LOBBY,           .LobbyDoorTileIDs
	dbw MANSION,         .MansionDoorTileIDs
	dbw LAB,             .LabDoorTileIDs
	dbw FACILITY,        .FacilityDoorTileIDs
	dbw PLAYERS_HOUSE,   .PlayersHouseDoorTileIDs
	dbw PLAYERS_ROOM,    .PlayersRoomDoorTileIDs
	dbw POKECENTER,      .PokecenterDoorTileIDs
	dbw KANSAI_CAVE,     .KansaiCaveDoorTileIDs
	dbw ELITE_FOUR_ROOM, .EliteFourRoomDoorTileIDs
	dbw KANSAI_FOREST,   .KansaiForestDoorTileIDs
	dbw BIKE_TILESET,    .BikeTilesetDoorTileIDs
	dbw LIGHTHOUSE,      .LighthouseDoorTileIDs
	dbw RADIO_TOWER,     .RadioTowerDoorTileIDs
	dbw TRAIN_STATION,   .TrainStationDoorTileIDs
	db -1 ; end

MACRO door_tiles
REPT _NARG
	db \1
	shift
ENDR
	db 0 ; end
ENDM

.KantoDoorTileIDs:
	door_tiles $1B, $58

.ForestDoorTileIDs:
	door_tiles $3a

.MartDoorTileIDs:
	door_tiles $5A, $5C, $5E

.PokecenterDoorTileIDs:
	door_tiles $32

.HouseDoorTileIDs:
	door_tiles $54

.MuseumDoorTileIDs:
	door_tiles $3b

.GateDoorTileIDs:
	door_tiles $3b

.ShipDoorTileIDs:
	door_tiles $1e

.LobbyDoorTileIDs:
	door_tiles $1c, $38, $1a

.MansionDoorTileIDs:
	door_tiles $1a, $1c, $53

.LabDoorTileIDs:
	door_tiles $34, $43

.FacilityDoorTileIDs:
	door_tiles $43, $58, $1b

.PlateauDoorTileIDs:
	door_tiles $3b, $1b

.SilentDoorTileIDs:
	door_tiles $22, $5E

.BellflowerDoorTileIDs
	door_tiles $22, $5E

.PlayersHouseDoorTileIDs:
	door_tiles $5c, $5e

.PlayersRoomDoorTileIDs:
	door_tiles $50

.KansaiCaveDoorTileIDs:
	door_tiles $1E

.EliteFourRoomDoorTileIDs:
	door_tiles $4A

.KansaiForestDoorTileIDs:
	door_tiles $17

.BikeTilesetDoorTileIDs:
	door_tiles $5B

.LighthouseDoorTileIDs:
	door_tiles $1E

.RadioTowerDoorTileIDs:
	door_tiles $1C, $1E

.TrainStationDoorTileIDs:
	door_tiles $17
