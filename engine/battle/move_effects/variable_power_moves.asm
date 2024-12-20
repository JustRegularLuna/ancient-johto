CheckVariablePowerMoves:
	; handles moves with varying base power
	call CheckForHex
	call CheckForElectroBall
	jp CheckForPresent

CheckForHex:
	ldh a, [hWhoseTurn]
	and a
	jr z, .notEnemyTurn
	ld a, [wEnemyMoveEffect]
	cp HEX_EFFECT
	ret nz
	ld a, [wBattleMonStatus]
	and a
	ld hl, wEnemyMovePower
	ld a, 65
	jp z, .skip1
	ld a, 130
.skip1
	ld [hl], a
	ret
.notEnemyTurn
	ld a, [wPlayerMoveEffect]
	cp HEX_EFFECT
	ret nz
	ld a, [wEnemyMonStatus]
	and a
	ld hl, wPlayerMovePower
	ld a, 65
	jp z, .skip2
	ld a, 130
.skip2
	ld [hl], a
	ret

CheckForElectroBall:
	ldh a, [hWhoseTurn]
	and a
	jr z, .notEnemyTurn
; Enemy's Turn
	ld a, [wEnemyMoveEffect]
	cp ELECTRO_BALL_EFFECT
	ret nz
	ld de, wBattleMonSpeed ; player speed value
	ld hl, wEnemyMonSpeed ; enemy speed value
	ld c, $2
	call StringCmp ; compare speed values
	ld hl, wEnemyMovePower
	jr z, .speedEqual1
	jr nc, .playerFaster1 ; if player is faster
; Enemy Faster 1
	ld a, 120
	jp .done
.speedEqual1
	ld a, 80
	jp .done
.playerFaster1
	ld a, 60
	jp .done
.notEnemyTurn
; Player's turn
	ld a, [wPlayerMoveEffect]
	cp ELECTRO_BALL_EFFECT
	ret nz
	ld de, wBattleMonSpeed ; player speed value
	ld hl, wEnemyMonSpeed ; enemy speed value
	ld c, $2
	call StringCmp ; compare speed values
	ld hl, wPlayerMovePower
	jr z, .speedEqual2
	jr nc, .playerFaster2 ; if player is faster
; Enemy Faster 2
	ld a, 60
	jp .done
.speedEqual2
	ld a, 80
	jp .done
.playerFaster2
	ld a, 120
; fall through
.done
	ld [hl], a
	ret

CheckForPresent:
	ldh a, [hWhoseTurn]
	and a
	jr z, .notEnemyTurn
	ld a, [wEnemyMoveEffect]
	cp PRESENT_EFFECT
	ret nz
	farcall BattleRandom
	ld a, [wBattleRand]
	; a holds a random number
	ld hl, wEnemyMovePower
	ld b, 120
	cp 10 percent
	jr c, .done1
	ld b, 80
	cp 40 percent ; 10% for the first one, + 30% for this one
	jr c, .done1
	; otherwise its 40 power
	ld b, 40
.done1
	ld a, b
	ld [hl], a
	ret

.notEnemyTurn
	ld a, [wPlayerMoveEffect]
	cp PRESENT_EFFECT
	ret nz
	farcall BattleRandom
	ld a, [wBattleRand]
	; a holds a random number
	ld hl, wPlayerMovePower
	ld b, 120
	cp 10 percent
	jr c, .done2
	ld b, 80
	cp 40 percent ; 10% for the first one, + 30% for this one
	jr c, .done2
	; otherwise its 40 power
	ld b, 40
.done2
	ld a, b
	ld [hl], a
	ret
