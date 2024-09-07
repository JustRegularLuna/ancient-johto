LedgeTiles:
	dbw KANTO, .kanto
	dbw SILENT, .silent
	dbw BELLFLOWER, .bellflower
	dbw KANSAI_CAVE, .kansai_cave
	dbw TRADITIONAL_HOUSE, .traditional_house
	dbw TOWER, .tower
	dbw KANSAI_FOREST, .kansai_forest
	dbw ICE_PATH, .ice_path
	db -1

	; player direction, tile player standing on, ledge tile, input required
.kanto
	db SPRITE_FACING_DOWN,  $2C, $37, D_DOWN
	db SPRITE_FACING_DOWN,  $39, $36, D_DOWN
	db SPRITE_FACING_DOWN,  $39, $37, D_DOWN
	db SPRITE_FACING_LEFT,  $2C, $27, D_LEFT
	db SPRITE_FACING_LEFT,  $39, $27, D_LEFT
	db SPRITE_FACING_RIGHT, $2C, $0D, D_RIGHT
	db SPRITE_FACING_RIGHT, $2C, $1D, D_RIGHT
	db SPRITE_FACING_RIGHT, $39, $0D, D_RIGHT
	db -1 ; end

.silent
	db SPRITE_FACING_DOWN,  $01, $5C, D_DOWN
	db SPRITE_FACING_DOWN,  $02, $5C, D_DOWN
	db SPRITE_FACING_LEFT,  $01, $4B, D_LEFT
	db SPRITE_FACING_LEFT,  $02, $4B, D_LEFT
	db SPRITE_FACING_RIGHT, $01, $38, D_RIGHT
	db SPRITE_FACING_RIGHT, $02, $39, D_RIGHT
	db -1 ; end

.bellflower
	db SPRITE_FACING_DOWN,  $01, $5C, D_DOWN
	db SPRITE_FACING_DOWN,  $02, $5C, D_DOWN
	db SPRITE_FACING_LEFT,  $01, $4B, D_LEFT
	db SPRITE_FACING_LEFT,  $02, $4B, D_LEFT
	db SPRITE_FACING_RIGHT, $01, $6E, D_RIGHT
	db SPRITE_FACING_RIGHT, $02, $6F, D_RIGHT
	db -1 ; end

.kansai_cave
	db SPRITE_FACING_DOWN,  $01, $26, D_DOWN
	db SPRITE_FACING_LEFT,  $01, $15, D_LEFT
	db SPRITE_FACING_RIGHT, $01, $41, D_RIGHT
	db -1 ; end

.traditional_house
	db SPRITE_FACING_DOWN,  $50, $0F, D_DOWN
	db -1 ; end

.tower
	db SPRITE_FACING_LEFT,  $02, $61, D_LEFT
	db SPRITE_FACING_RIGHT, $02, $57, D_RIGHT
	db SPRITE_FACING_DOWN,  $02, $60, D_DOWN
	db -1 ; end

.kansai_forest
	db SPRITE_FACING_LEFT,  $05, $19, D_LEFT
	db SPRITE_FACING_RIGHT, $05, $3B, D_RIGHT
	db SPRITE_FACING_DOWN,  $05, $2A, D_DOWN
	db -1 ; end

.ice_path
	db SPRITE_FACING_LEFT,  $19, $11, D_LEFT
	db SPRITE_FACING_RIGHT, $19, $09, D_RIGHT
	db SPRITE_FACING_DOWN,  $19, $22, D_DOWN
	db -1 ; end
