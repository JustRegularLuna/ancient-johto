; Moved to save precious space in HOME bank
_CheckTilePassable::
	call GetPredefRegisters
	ld hl, wTilesetCollisionPtr ; pointer to list of passable tiles
	ld a, [hli]
	ld h, [hl]
	ld l, a ; hl now points to passable tiles
.loop
	ld a, [hli]
	cp $ff
	jr z, .tileNotPassable
	cp c
	jr z, .passable
	jr .loop
.passable
	xor a
	jr .done
.tileNotPassable
	ld a, 1
.done
	ld [wCollisionResult], a
	ret

INCLUDE "data/tilesets/collision_tile_ids.asm"
