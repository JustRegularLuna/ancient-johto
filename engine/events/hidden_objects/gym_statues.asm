GymStatues:
; if in a gym and have the corresponding badge, a = GymStatueText2_id and jp PrintPredefTextID
; if in a gym and don't have the corresponding badge, a = GymStatueText1_id and jp PrintPredefTextID
; else ret
	call EnableAutoTextBoxDrawing
	ld a, [wSpritePlayerStateData1FacingDirection]
	cp SPRITE_FACING_UP
	ret nz
	ld a, [wCurRegion]
	and a ; Kanto?
	ld hl, MapBadgeFlags
	jr z, .gotBadgeMaps
	; else Johto
	ld hl, JohtoMapBadgeFlags
.gotBadgeMaps
	ld a, [wCurMap]
	ld b, a
.loop
	ld a, [hli]
	cp $ff
	ret z
	cp b
	jr z, .match
	inc hl
	jr .loop
.match
	ld b, [hl]
	ld a, [wCurRegion]
	and a ; Kanto?
	ld a, [wKantoBadges]
	jr z, .gotRegion
	; Johto
	ld a, [wJohtoBadges]
.gotRegion
	and b
	cp b
	tx_pre_id GymStatueText2
	jr z, .haveBadge
	tx_pre_id GymStatueText1
.haveBadge
	jp PrintPredefTextID

INCLUDE "data/maps/badge_maps.asm"

GymStatueText1::
	text_far _GymStatueText1
	text_end

GymStatueText2::
	text_far _GymStatueText2
	text_end
