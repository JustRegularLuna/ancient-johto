MACRO coll_tiles
REPT _NARG
	db \1
	shift
ENDR
	db -1 ; end
ENDM

Underground_Coll::
	coll_tiles $0b, $0c, $13, $15, $18

Overworld_Coll::
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
	coll_tiles $01, $12, $14, $28, $32, $37, $44, $54, $5c

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
	coll_tiles $1b, $23, $2c, $2d, $3b, $45

Johto_Coll::
	coll_tiles $04, $05, $06, $29, $39, $40, $56, $5b, $64

JohtoCave_Coll::
	coll_tiles $01, $04, $16, $18, $1E, $30, $32, $34, $36, $37, $38, $3A, 

TraditionalHouse_Coll::
	coll_tiles $01, $12, $14, $50, $54, $55, $5F
