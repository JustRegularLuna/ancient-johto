SetLastBlackoutMap:
; Set the map to return to when
; blacking out or using Teleport or Dig.
; Safari rest houses don't count.

	push hl
	ld a, [wCurRegion]
	and a ; Kanto?
	jr nz, .notresthouse

	ld hl, SafariZoneRestHouses
	ld a, [wCurMap]
	ld b, a
.loop
	ld a, [hli]
	cp -1
	jr z, .notresthouse
	cp b
	jr nz, .loop
	jr .done

.notresthouse
	ld a, [wCurRegion]
	ld [wLastBlackoutRegion], a
	ld a, [wLastMap]
	ld [wLastBlackoutMap], a
.done
	pop hl
	ret

INCLUDE "data/maps/rest_house_maps.asm"
