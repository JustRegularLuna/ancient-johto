CutTreeBlockSwaps:
	; first byte = tileset block containing the cut tree
	; second byte = corresponding tileset block after the cut animation happens
; OVERWORLD
	db $32, $6D
	db $33, $6C
	db $34, $6F
	db $35, $4C
	db $60, $6E
	db $0B, $0A
; GYM
	db $3C, $35
	db $3F, $35
	db $3D, $36
; JOHTO
	db $03, $02
	db $5B, $3C
	db $5F, $3D
	db $63, $3F
	db $67, $3E
	db -1 ; end
