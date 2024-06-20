MACRO hidden_coin
	db \1, \3, \2
ENDM

HiddenCoinCoords:
	; map id, x, y
	;hidden_coin GAME_CORNER,  0,  8
	db -1 ; end

KansaiHiddenCoinCoords:
	db -1 ; end
