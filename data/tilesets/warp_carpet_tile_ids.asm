MACRO warp_carpet_tiles
REPT _NARG
	db \1
	shift
ENDR
	db -1 ; end
ENDM

WarpTileListPointers:
	dbw OVERWORLD, OverworldWarpCarpetTiles
	dbw FACILITY, FacilityWarpCarpetTiles
	dbw PLATEAU, PlateauWarpCarpetTiles
	dbw SHIP, ShipWarpCarpetTiles
	dbw SHIP_PORT, ShipPortWarpCarpetTiles
	dbw GATE, GateWarpCarpetTiles
	dbw JOHTO, JohtoWarpCarpetTiles
	dbw JOHTO_MODERN, JohtoModernWarpCarpetTiles
	dbw JOHTO_CAVE, JohtoCaveWarpCarpetTiles
	dbw JOHTO_FOREST, JohtoForestWarpCarpetTiles
	dbw PARK, ParkWarpCarpetTiles
	dbw ICE_PATH, IcePathWarpCarpetTiles
	dbw HIDEOUT, HideoutWarpCarpetTiles
	db -1


; OVERWORLD
OverworldWarpCarpetTiles:
	dw .FacingDown
	dw .FacingUp
	dw .FacingLeft
	dw .FacingRight

.FacingDown
	warp_carpet_tiles $12, $17
.FacingUp
	warp_carpet_tiles
.FacingLeft
	warp_carpet_tiles $1A, $4B
.FacingRight
	warp_carpet_tiles $0F, $4E


; PLATEAU
PlateauWarpCarpetTiles:
	dw .FacingDown
	dw .FacingUp
	dw .FacingLeft
	dw .FacingRight

.FacingDown
	warp_carpet_tiles $3D
.FacingUp
	warp_carpet_tiles
.FacingLeft
	warp_carpet_tiles
.FacingRight
	warp_carpet_tiles


; FACILITY
FacilityWarpCarpetTiles:
	dw .FacingDown
	dw .FacingUp
	dw .FacingLeft
	dw .FacingRight

.FacingDown
	warp_carpet_tiles $33
.FacingUp
	warp_carpet_tiles
.FacingLeft
	warp_carpet_tiles
.FacingRight
	warp_carpet_tiles


; SHIP
ShipWarpCarpetTiles:
	dw .FacingDown
	dw .FacingUp
	dw .FacingLeft
	dw .FacingRight

.FacingDown
	warp_carpet_tiles $01
.FacingUp
	warp_carpet_tiles
.FacingLeft
	warp_carpet_tiles
.FacingRight
	warp_carpet_tiles $4B


; SHIP_PORT
ShipPortWarpCarpetTiles:
	dw .FacingDown
	dw .FacingUp
	dw .FacingLeft
	dw .FacingRight

.FacingDown
	warp_carpet_tiles $18
.FacingUp
	warp_carpet_tiles
.FacingLeft
	warp_carpet_tiles
.FacingRight
	warp_carpet_tiles


; GATE
GateWarpCarpetTiles:
	dw .FacingDown
	dw .FacingUp
	dw .FacingLeft
	dw .FacingRight

.FacingDown
	warp_carpet_tiles $0A
.FacingUp
	warp_carpet_tiles
.FacingLeft
	warp_carpet_tiles
.FacingRight
	warp_carpet_tiles


; JOHTO
JohtoWarpCarpetTiles:
	dw .FacingDown
	dw .FacingUp
	dw .FacingLeft
	dw .FacingRight

.FacingDown
	warp_carpet_tiles $0E, $48
.FacingUp
	warp_carpet_tiles 
.FacingLeft
	warp_carpet_tiles $02, $26
.FacingRight
	warp_carpet_tiles $01, $1A


; JOHTO_MODERN
JohtoModernWarpCarpetTiles:
	dw .FacingDown
	dw .FacingUp
	dw .FacingLeft
	dw .FacingRight

.FacingDown
	warp_carpet_tiles $0E, $46
.FacingUp
	warp_carpet_tiles
.FacingLeft
	warp_carpet_tiles $02, $26
.FacingRight
	warp_carpet_tiles $01, $1A


; JOHTO_CAVE
JohtoCaveWarpCarpetTiles:
	dw .FacingDown
	dw .FacingUp
	dw .FacingLeft
	dw .FacingRight

.FacingDown
	warp_carpet_tiles $11
.FacingUp
	warp_carpet_tiles
.FacingLeft
	warp_carpet_tiles
.FacingRight
	warp_carpet_tiles


; JOHTO_FOREST
JohtoForestWarpCarpetTiles:
	dw .FacingDown
	dw .FacingUp
	dw .FacingLeft
	dw .FacingRight

.FacingDown
	warp_carpet_tiles
.FacingUp
	warp_carpet_tiles
.FacingLeft
	warp_carpet_tiles
.FacingRight
	warp_carpet_tiles $23, $33


; PARK
ParkWarpCarpetTiles:
	dw .FacingDown
	dw .FacingUp
	dw .FacingLeft
	dw .FacingRight

.FacingDown
	warp_carpet_tiles $21
.FacingUp
	warp_carpet_tiles
.FacingLeft
	warp_carpet_tiles
.FacingRight
	warp_carpet_tiles $40, $50


; ICE_PATH
IcePathWarpCarpetTiles:
	dw .FacingDown
	dw .FacingUp
	dw .FacingLeft
	dw .FacingRight

.FacingDown
	warp_carpet_tiles $44
.FacingUp
	warp_carpet_tiles
.FacingLeft
	warp_carpet_tiles
.FacingRight
	warp_carpet_tiles


; HIDEOUT
HideoutWarpCarpetTiles:
	dw .FacingDown
	dw .FacingUp
	dw .FacingLeft
	dw .FacingRight

.FacingDown
	warp_carpet_tiles $01
.FacingUp
	warp_carpet_tiles $01
.FacingLeft
	warp_carpet_tiles $01
.FacingRight
	warp_carpet_tiles $01
