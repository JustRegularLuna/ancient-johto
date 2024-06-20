CutTreeBlockSwaps:
	; first byte = tileset block containing the cut tree
	; second byte = corresponding tileset block after the cut animation happens
; KANTO
	db $32, $6D
	db $33, $6C
	db $34, $6F
	db $35, $4C
	db $60, $6E
	db $0B, $0A
; SILENT
	db $66, $64
	db $67, $65
	db $6B, $69
	db $6A, $68
	db $03, $02
; KANSAI_FOREST
	db $0F, $17
	db -1 ; end
