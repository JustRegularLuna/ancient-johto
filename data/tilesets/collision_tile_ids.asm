MACRO coll_tiles
REPT _NARG
	db \1
	shift
ENDR
	db -1 ; end
ENDM

Underground_Coll::
	coll_tiles $0b, $0c, $13, $15, $18

Kanto_Coll::
	coll_tiles $00, $10, $1b, $20, $21, $23, $2c, $2d, $2e, $30, $31, $33, $39, $3c, $3e, $52, $54, $58, $5b, $5e

PlayersHouse_Coll::
	coll_tiles $01, $05, $10, $12, $14, $5c, $5e

PlayersRoom_Coll::
	coll_tiles $01, $0d, $1d, $2d, $3d, $4d, $50, $5d

Mart_Coll::
	coll_tiles $11, $1A, $23, $5A, $5C, $5E

Pokecenter_Coll::
	coll_tiles $01, $11, $32, $50, $52, $54, $58, $5b, $69, $76

Gym_Coll::
	coll_tiles $11, $16, $19, $2b, $3c, $3d, $3f, $4a, $4c, $4d, $03

Forest_Coll::
	coll_tiles $1e, $20, $2e, $30, $34, $37, $39, $3a, $40, $51, $52, $5a, $5c, $5e, $5f

House_Coll::
	coll_tiles $01, $12, $14, $32, $37, $54

Museum_Coll::
	coll_tiles $01, $12, $14, $1a, $1c, $37, $38, $3b, $3c, $5e

Gate_Coll::
	coll_tiles $01, $12, $14, $1a, $1c, $37, $38, $3b, $3c, $5e

Ship_Coll::
	coll_tiles $04, $0d, $17, $1d, $1e, $23, $34, $37, $39, $4a

ShipPort_Coll::
	coll_tiles $0a, $1a, $32, $3b

Cemetery_Coll::
	coll_tiles $01, $10, $13, $1b, $22, $42, $52

Interior_Coll::
	coll_tiles $04, $0f, $15, $1f, $3b, $45, $47, $55, $56

Cavern_Coll::
	coll_tiles $05, $15, $18, $1a, $20, $21, $22, $2a, $2d, $30

Lobby_Coll::
	coll_tiles $14, $17, $1a, $1c, $20, $38, $45

Mansion_Coll::
	coll_tiles $01, $05, $11, $12, $14, $1a, $1c, $2c, $53

Lab_Coll::
	coll_tiles $0c, $1c, $26, $16, $1e, $34, $37, $38, $43, $70, $72

Club_Coll::
	coll_tiles $0f, $1a, $1f, $26, $28, $29, $2c, $2d, $2e, $2f, $41

Facility_Coll::
	coll_tiles $01, $10, $11, $13, $1b, $20, $21, $22, $30, $31, $32, $42, $43, $48, $52, $55, $58, $5e

Plateau_Coll::
	coll_tiles $1b, $23, $2c, $2d, $3b, $45, $46

Silent_Coll::
	coll_tiles $00, $01, $02, $04, $22, $27, $46, $53, $56, $5E

Bellflower_Coll::
	coll_tiles $00, $01, $02, $04, $22, $27, $5E, $60, $6B

KansaiCave_Coll::
	coll_tiles $01, $04, $16, $18, $1E, $30, $32, $34, $36, $37, $38, $3A, 

TraditionalHouse_Coll::
	coll_tiles $01, $12, $14, $50, $54, $55, $5F

EliteFourRoom_Coll::
	coll_tiles $01, $03, $0F, $14, $15, $1E, $1F, $28, $3C, $42, $46, $4A, $52, $53, $54

Tower_Coll::
	coll_tiles $01, $02, $10, $17, $18, $1C, $1E, $54

Ruins_Coll::
	coll_tiles $01, $03, $11, $18, $28, $3A, $3B

KansaiForest_Coll::
	coll_tiles $02, $05, $13, $17, $42, $4F, $52

Park_Coll::
	coll_tiles $01, $02, $04, $06, $1B, $4A, $4F

BikeTileset_Coll::
	coll_tiles $11, $14, $20, $2D, $3B, $3C, $4A, $51, $53, $54, $5A, $5B, $5D

IcePath_Coll::
	coll_tiles $02, $12, $18, $19, $1A, $1C, $2F, $38, $3A, $3C, $40

Lighthouse_Coll::
	coll_tiles $04, $17, $1D, $1E, $23, $2F, $34, $37, $39, $4F

RadioTower_Coll::
	coll_tiles $01, $12, $1C, $1E, $37

TrainStation_Coll::
	coll_tiles $17, $1E, $33, $3D, $3E, $42, $56, $57

Hideout_Coll::
	coll_tiles $10, $12, $32, $34, $35, $38, $3A, $3C
