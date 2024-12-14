PrintMoveDescription::
	ld a, [wMoveNum]
	dec a
	ld hl, MoveDescriptions
	ld bc, 2
	call AddNTimes
	ld a, [hli]
	ld d, [hl]
	ld e, a
	hlcoord 1, 4
	jp PlaceString

INCLUDE "data/moves/descriptions.asm"
