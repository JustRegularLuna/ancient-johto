LoadRoofTilePatterns::
	ld a, [wCurRegion]
	and a ; Kanto?
	ret z ; this is only for Kansai

	; This is only for certain tilesets
	ld a, [wCurMapTileset]
	ld de, 1
	ld hl, TilesetsWithRoofs
	call IsInArray
	ret nc

	; If we're in a tileset that loads roof tiles, look up the RoofSet based on map ID
	ld a, [wCurMap]
	cp FIRST_KANSAI_INDOOR_MAP
	ret nc ; Anything past the Towns and Routes keeps default roof patterns

	; Get the roof ID for this map
	ld c, a
	ld b, 0
	ld hl, MapRoofSets
	add hl, bc
	ld a, [hl]
	cp $f0
	jr c, .gotRoofID ; If it is a normal ID, grab the matching roof

	; Some maps load a different roof ID in different parts of the map
	; These use IDs starting with $f1
	; This works exactly the same as split spritesets on maps
	; However, sprite sets do not have to match roof sets, so this is a different list
	ld hl, SplitMapRoofSets
	and $0f
	dec a
	sla a
	sla a
	add l
	ld l, a
	jr nc, .noCarry
	inc h
.noCarry
	ld a, [hli]
	cp $01
	ld a, [hli]
	ld b, a
	jr z, .eastWestDivide
.northSouthDivide
	ld a, [wYCoord]
	jr .compareCoord
.eastWestDivide
	ld a, [wXCoord]
.compareCoord
	cp b
	jr c, .loadRoofSetID
; if in the East Side or South Side
	inc hl
.loadRoofSetID
	ld a, [hl]

.gotRoofID
	; load the roof tiles over the tileset
	ld hl, Roofs
	ld bc, $90 ; 9 tiles
	call AddNTimes
	ld de, vTileset tile $0A
	ld bc, $90 ; 9 tiles
	jp CopyData

INCLUDE "data/maps/map_roofs.asm"
