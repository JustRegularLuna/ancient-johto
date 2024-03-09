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
	dbw JOHTO, JohtoWarpCarpetTiles
	dbw JOHTO_CAVE, JohtoCaveWarpCarpetTiles
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
