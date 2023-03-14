DoorTileIDPointers:
	dbw OVERWORLD,     .OverworldDoorTileIDs
	dbw FOREST,        .ForestDoorTileIDs
	dbw MART,          .MartDoorTileIDs
	dbw HOUSE,         .HouseDoorTileIDs
	dbw MUSEUM,        .MuseumDoorTileIDs
	dbw GATE,          .GateDoorTileIDs
	dbw SHIP,          .ShipDoorTileIDs
	dbw LOBBY,         .LobbyDoorTileIDs
	dbw MANSION,       .MansionDoorTileIDs
	dbw LAB,           .LabDoorTileIDs
	dbw FACILITY,      .FacilityDoorTileIDs
	dbw PLATEAU,       .PlateauDoorTileIDs
	dbw JOHTO,         .JohtoDoorTileIDs
	dbw PLAYERS_HOUSE, .PlayersHouseDoorTileIDs
	dbw PLAYERS_ROOM,  .PlayersRoomDoorTileIDs
	dbw POKECENTER,    .PokecenterDoorTileIDs
	dbw JOHTO_CAVE,    .JohtoCaveDoorTileIDs
	db -1 ; end

MACRO door_tiles
REPT _NARG
	db \1
	shift
ENDR
	db 0 ; end
ENDM

.OverworldDoorTileIDs:
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

.JohtoDoorTileIDs:
	door_tiles $29, $39, $56

.PlayersHouseDoorTileIDs:
	door_tiles $5c, $5e

.PlayersRoomDoorTileIDs:
	door_tiles $50

.JohtoCaveDoorTileIDs:
	door_tiles $1E
