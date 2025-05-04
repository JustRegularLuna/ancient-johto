; these blocks all use COLL_CUT_TREE in one quadrant
CutTreeBlockPointers:
; tileset, block list pointer
	dbw TILESET_SILENT,        .silent
	dbw TILESET_KANTO,         .kanto
	dbw TILESET_KANSAI_PARK,   .kansai_park
	dbw TILESET_KANSAI_FOREST, .kansai_forest
	db -1 ; end

.silent:
; facing block, replacement block, animation
	db $03, $02, 1 ; grass
	db $66, $64, 0 ; tree
	db $67, $65, 0 ; tree
	db $6A, $68, 0 ; tree
	db $6B, $69, 0 ; tree
	db -1 ; end

.kanto:
; facing block, replacement block, animation
	db $0b, $0a, 1 ; grass
	db $32, $6d, 0 ; tree
	db $33, $6c, 0 ; tree
	db $34, $6f, 0 ; tree
	db $35, $4c, 0 ; tree
	db $60, $6e, 0 ; tree
	db -1 ; end

.kansai_park:
; facing block, replacement block, animation
	db $13, $03, 1 ; grass
	db $03, $04, 1 ; grass
	db -1 ; end

.kansai_forest:
; facing block, replacement block, animation
	db $0f, $17, 0
	db -1 ; end


; these blocks all use COLL_WHIRLPOOL in one quadrant
WhirlpoolBlockPointers:
	;dbw TILESET_JOHTO, .johto
	db -1 ; end

.johto:
; facing block, replacement block, animation
	;db $07, $36, 0
	db -1 ; end
