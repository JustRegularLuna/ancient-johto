GetHiddenPowerType::
	ldh a, [hWhoseTurn]
	and a
	jp z, .player
	ld a, [wEnemySelectedMove]
	ld hl, wEnemyMonDVs
	ld de, wEnemyMoveType
	jr .selected
.player
	ld a, [wPlayerSelectedMove]
	ld hl, wBattleMonDVs
	ld de, wPlayerMoveType
.selected
	cp HIDDEN_POWER
	ret nz
; Hidden Power does not have varying BasePower anymore
; That part of the code from crystal is omitted

; Type:

	; Def & 3
	ld a, [hl]
	and %0011
	ld b, a

	; + (Atk & 3) << 2
	ld a, [hl]
	and %0011 << 4
	swap a
	add a
	add a
	or b

; Skip Normal
	inc a

; Skip Bird
	cp BIRD
	jr c, .done
	inc a

; Skip unused types
	cp UNUSED_TYPES
	jr c, .done
	add FIRE - UNUSED_TYPES

.done
; Overwrite the current move type.
	ld [de], a
	ret
