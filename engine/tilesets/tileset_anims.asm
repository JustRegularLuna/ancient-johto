DummyPredef3A_DummyData: ; unreferenced
	db 0

DummyPredef3A:
	ret

DummyPredef3A_DummyFunction: ; unreferenced
	ret


_AnimateTileset::
; Increment [hTileAnimFrame] and run that frame's function
; from the array pointed to by wTilesetAnim.

; Called in WRAM bank 1.

	ld a, [wTilesetAnim]
	ld e, a
	ld a, [wTilesetAnim + 1]
	ld d, a

	ldh a, [hTileAnimFrame]
	ld l, a
	inc a
	ldh [hTileAnimFrame], a

	ld h, 0
	add hl, hl
	add hl, hl
	add hl, de

; 2-byte parameter
; All functions take input de
	ld e, [hl]
	inc hl
	ld d, [hl]
	inc hl

; Function address
	ld a, [hli]
	ld h, [hl]
	ld l, a

	jp hl

Tileset0Anim::
TilesetSilentAnim::
TilesetBellflowerAnim::
TilesetKantoAnim::
TilesetPlateauAnim::
TilesetKansaiParkAnim::
TilesetKansaiForestAnim::
TilesetKantoParkAnim::
TilesetKantoForestAnim::
	dw vTiles2 tile $14, ReadTileToAnimBuffer
	dw NULL,  WaitTileAnimation
	dw wTileAnimBuffer, ScrollTileRightLeft
	dw NULL,  WaitTileAnimation
	dw vTiles2 tile $14, WriteTileFromAnimBuffer
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  AnimateFlowerTile
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  DoneTileAnimation

TilesetAzureAnim:
	dw vTiles2 tile $14, ReadTileToAnimBuffer
	dw NULL,  WaitTileAnimation
	dw wTileAnimBuffer, ScrollTileRightLeft
	dw NULL,  WaitTileAnimation
	dw vTiles2 tile $14, WriteTileFromAnimBuffer
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  AnimateFlowerTile
	dw WhirlpoolFrames1, AnimateWhirlpoolTile
	dw WhirlpoolFrames2, AnimateWhirlpoolTile
	dw WhirlpoolFrames3, AnimateWhirlpoolTile
	dw WhirlpoolFrames4, AnimateWhirlpoolTile
	dw NULL,  WaitTileAnimation
	dw NULL,  DoneTileAnimation

TilesetPortAnim:
TilesetKantoCaveAnim:
	dw vTiles2 tile $14, ReadTileToAnimBuffer
	dw NULL,  WaitTileAnimation
	dw wTileAnimBuffer, ScrollTileRightLeft
	dw NULL,  WaitTileAnimation
	dw vTiles2 tile $14, WriteTileFromAnimBuffer
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  DoneTileAnimation

TilesetEliteFourRoomAnim:
	dw NULL,  AnimateLavaBubbleTile2
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  AnimateLavaBubbleTile1
	dw NULL,  WaitTileAnimation
	dw NULL,  StandingTileFrame8
	dw NULL,  DoneTileAnimation

TilesetKansaiCaveAnim:
TilesetKansaiDarkCaveAnim:
	dw vTiles2 tile $14, ReadTileToAnimBuffer
	dw NULL,  WaitTileAnimation
	dw wTileAnimBuffer, ScrollTileRightLeft
	dw NULL,  WaitTileAnimation
	dw vTiles2 tile $14, WriteTileFromAnimBuffer
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw vTiles2 tile $40, ReadTileToAnimBuffer
	dw NULL,  WaitTileAnimation
	dw wTileAnimBuffer, ScrollTileDown
	dw NULL,  WaitTileAnimation
	dw wTileAnimBuffer, ScrollTileDown
	dw NULL,  WaitTileAnimation
	dw wTileAnimBuffer, ScrollTileDown
	dw NULL,  WaitTileAnimation
	dw vTiles2 tile $40, WriteTileFromAnimBuffer
	dw NULL,  WaitTileAnimation
	dw NULL,  DoneTileAnimation

TilesetIceCaveAnim:
	dw vTiles2 tile $35, ReadTileToAnimBuffer
	dw NULL,  WaitTileAnimation
	dw wTileAnimBuffer, ScrollTileRightLeft
	dw NULL,  WaitTileAnimation
	dw vTiles2 tile $35, WriteTileFromAnimBuffer
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw vTiles2 tile $31, ReadTileToAnimBuffer
	dw NULL,  WaitTileAnimation
	dw wTileAnimBuffer, ScrollTileDown
	dw NULL,  WaitTileAnimation
	dw wTileAnimBuffer, ScrollTileDown
	dw NULL,  WaitTileAnimation
	dw wTileAnimBuffer, ScrollTileDown
	dw NULL,  WaitTileAnimation
	dw vTiles2 tile $31, WriteTileFromAnimBuffer
	dw NULL,  WaitTileAnimation
	dw NULL,  DoneTileAnimation

TilesetTowerAnim:
	dw TowerPillarTilePointer9, AnimateTowerPillarTile
	dw TowerPillarTilePointer10, AnimateTowerPillarTile
	dw TowerPillarTilePointer7, AnimateTowerPillarTile
	dw TowerPillarTilePointer8, AnimateTowerPillarTile
	dw TowerPillarTilePointer5, AnimateTowerPillarTile
	dw TowerPillarTilePointer6, AnimateTowerPillarTile
	dw TowerPillarTilePointer3, AnimateTowerPillarTile
	dw TowerPillarTilePointer4, AnimateTowerPillarTile
	dw TowerPillarTilePointer1, AnimateTowerPillarTile
	dw TowerPillarTilePointer2, AnimateTowerPillarTile
	dw NULL,  StandingTileFrame
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  DoneTileAnimation

TilesetHouseAnim:
TilesetPlayersHouseAnim:
TilesetPokecenterAnim:
TilesetGateAnim:
TilesetClubAnim:
TilesetSchoolAnim:
TilesetLabAnim:
TilesetMartAnim:
TilesetMansionAnim:
TilesetGameCornerAnim:
TilesetTraditionalHouseAnim:
TilesetTrainStationAnim:
TilesetChampionsRoomAnim:
TilesetShipAnim:
TilesetPlayersRoomAnim:
TilesetRuinsAnim:
TilesetRadioTowerAnim:
TilesetKansaiMuseumAnim:
TilesetKantoMuseumAnim:
TilesetCemeteryAnim:
TilesetGeneratorAnim:
TilesetInteriorAnim:
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  DoneTileAnimation

TilesetWarehouseAnim:
	dw vTiles2 tile $22, TopLeftSpinnerAnimation
	dw vTiles2 tile $23, TopRightSpinnerAnimation
	dw vTiles2 tile $32, BottomLeftSpinnerAnimation
	dw vTiles2 tile $33, BottomRightSpinnerAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  StandingTileFrame8
	dw NULL,  DoneTileAnimation

TilesetFacilityAnim:
	dw vTiles2 tile $14, ReadTileToAnimBuffer
	dw NULL,  WaitTileAnimation
	dw wTileAnimBuffer, ScrollTileRightLeft
	dw NULL,  WaitTileAnimation
	dw vTiles2 tile $14, WriteTileFromAnimBuffer
	dw vTiles2 tile $21, TopLeftSpinnerAnimation
	dw vTiles2 tile $31, TopRightSpinnerAnimation
	dw vTiles2 tile $20, BottomLeftSpinnerAnimation
	dw vTiles2 tile $30, BottomRightSpinnerAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  DoneTileAnimation

DoneTileAnimation:
; Reset the animation command loop.
	xor a
	ldh [hTileAnimFrame], a

WaitTileAnimation:
; Do nothing this frame.
	ret

StandingTileFrame8:
; Tick the wTileAnimationTimer, wrapping from 7 to 0.
	ld a, [wTileAnimationTimer]
	inc a
	and %111
	ld [wTileAnimationTimer], a
	ret

ScrollTileRightLeft:
; Scroll right for 4 ticks, then left for 4 ticks.
	ld a, [wTileAnimationTimer]
	inc a
	and %111
	ld [wTileAnimationTimer], a
	and %100
	jr nz, ScrollTileLeft
	jr ScrollTileRight

ScrollTileUpDown: ; unreferenced
; Scroll up for 4 ticks, then down for 4 ticks.
	ld a, [wTileAnimationTimer]
	inc a
	and %111
	ld [wTileAnimationTimer], a
	and %100
	jr nz, ScrollTileDown
	jr ScrollTileUp

ScrollTileLeft:
	ld h, d
	ld l, e
	ld c, LEN_2BPP_TILE / 4
.loop
rept 4
	ld a, [hl]
	rlca
	ld [hli], a
endr
	dec c
	jr nz, .loop
	ret

ScrollTileRight:
	ld h, d
	ld l, e
	ld c, LEN_2BPP_TILE / 4
.loop
rept 4
	ld a, [hl]
	rrca
	ld [hli], a
endr
	dec c
	jr nz, .loop
	ret

ScrollTileUp:
	ld h, d
	ld l, e
	ld d, [hl]
	inc hl
	ld e, [hl]
	ld bc, LEN_2BPP_TILE - 2
	add hl, bc
	ld a, LEN_2BPP_TILE / 4
.loop
	ld c, [hl]
	ld [hl], e
	dec hl
	ld b, [hl]
	ld [hl], d
	dec hl
	ld e, [hl]
	ld [hl], c
	dec hl
	ld d, [hl]
	ld [hl], b
	dec hl
	dec a
	jr nz, .loop
	ret

ScrollTileDown:
	ld h, d
	ld l, e
	ld de, LEN_2BPP_TILE - 2
	push hl
	add hl, de
	ld d, [hl]
	inc hl
	ld e, [hl]
	pop hl
	ld a, LEN_2BPP_TILE / 4
.loop
	ld b, [hl]
	ld [hl], d
	inc hl
	ld c, [hl]
	ld [hl], e
	inc hl
	ld d, [hl]
	ld [hl], b
	inc hl
	ld e, [hl]
	ld [hl], c
	inc hl
	dec a
	jr nz, .loop
	ret

AnimateFlowerTile:
; Save the stack pointer in bc for WriteTile to restore
	ld hl, sp+0
	ld b, h
	ld c, l

; A cycle of 2 frames, updating every other tick
	ld a, [wTileAnimationTimer]
	and %10

; hl = .FlowerTileFrames + a * 16
	swap a
	ld e, a
	ld d, 0
	ld hl, .FlowerTileFrames
	add hl, de

; Write the tile graphic from hl (now sp) to tile $03 (now hl)
	ld sp, hl
	ld hl, vTiles2 tile $03
	jp WriteTile

.FlowerTileFrames:
	INCBIN "gfx/tilesets/flower/flower1.2bpp"
	INCBIN "gfx/tilesets/flower/flower1.2bpp"
	INCBIN "gfx/tilesets/flower/flower2.2bpp"
	INCBIN "gfx/tilesets/flower/flower2.2bpp"

AnimateLavaBubbleTile1:
; Save the stack pointer in bc for WriteTile to restore
	ld hl, sp+0
	ld b, h
	ld c, l

; A cycle of 4 frames, updating every other tick
	ld a, [wTileAnimationTimer]
	and %110

; Offset by 2 frames from AnimateLavaBubbleTile2
	srl a
	inc a
	inc a
	and %011

; hl = LavaBubbleTileFrames + a * 16
	swap a
	ld e, a
	ld d, 0
	ld hl, LavaBubbleTileFrames
	add hl, de

; Write the tile graphic from hl (now sp) to tile $5b (now hl)
	ld sp, hl
	ld hl, vTiles2 tile $5b
	jp WriteTile

AnimateLavaBubbleTile2:
; Save the stack pointer in bc for WriteTile to restore
	ld hl, sp+0
	ld b, h
	ld c, l

; A cycle of 4 frames, updating every other tick
	ld a, [wTileAnimationTimer]
	and %110

; hl = LavaBubbleTileFrames + a * 8
; (a was pre-multiplied by 2 from 'and %110')
	add a
	add a
	add a
	ld e, a
	ld d, 0
	ld hl, LavaBubbleTileFrames
	add hl, de

; Write the tile graphic from hl (now sp) to tile $38 (now hl)
	ld sp, hl
	ld hl, vTiles2 tile $38
	jp WriteTile

LavaBubbleTileFrames:
	INCBIN "gfx/tilesets/lava/1.2bpp"
	INCBIN "gfx/tilesets/lava/2.2bpp"
	INCBIN "gfx/tilesets/lava/3.2bpp"
	INCBIN "gfx/tilesets/lava/4.2bpp"

AnimateTowerPillarTile:
; Input de points to the destination in VRAM, then the source tile frames

; Save the stack pointer in bc for WriteTile to restore
	ld hl, sp+0
	ld b, h
	ld c, l

; A cycle of 8 frames, updating every tick
	ld a, [wTileAnimationTimer]
	and %111

; a = [.TowerPillarTileFrameOffsets + a]
	ld hl, .TowerPillarTileFrameOffsets
	add l
	ld l, a
	ld a, 0
	adc h
	ld h, a
	ld a, [hl]

; de = the destination in VRAM
	ld l, e
	ld h, d
	ld e, [hl]
	inc hl
	ld d, [hl]
	inc hl

; hl = the source tile frames + offset a
	add [hl]
	inc hl
	ld h, [hl]
	ld l, a
	ld a, 0
	adc h
	ld h, a

; Write the tile graphic from hl (now sp) to de (now hl)
	ld sp, hl
	ld l, e
	ld h, d
	jr WriteTile

.TowerPillarTileFrameOffsets:
	db 0 tiles
	db 1 tiles
	db 2 tiles
	db 3 tiles
	db 4 tiles
	db 3 tiles
	db 2 tiles
	db 1 tiles

StandingTileFrame:
; Tick the wTileAnimationTimer.
	ld hl, wTileAnimationTimer
	inc [hl]
	ret

AnimateWhirlpoolTile:
; Input de points to the destination in VRAM, then the source tile frames

; Save the stack pointer in bc for WriteTile to restore
	ld hl, sp+0
	ld b, h
	ld c, l

; de = the destination in VRAM
	ld l, e
	ld h, d
	ld e, [hl]
	inc hl
	ld d, [hl]
	inc hl

; A cycle of 4 frames, updating every tick
	ld a, [wTileAnimationTimer]
	and %11

; hl = the source tile frames + a * 16
	swap a
	add [hl]
	inc hl
	ld h, [hl]
	ld l, a
	ld a, 0
	adc h
	ld h, a

; Write the tile graphic from hl (now sp) to de (now hl)
	ld sp, hl
	ld l, e
	ld h, d
	jr WriteTile

WriteTileFromAnimBuffer:
; Save the stack pointer in bc for WriteTile to restore
	ld hl, sp+0
	ld b, h
	ld c, l

; Write the tile graphic from wTileAnimBuffer (now sp) to de (now hl)
	ld hl, wTileAnimBuffer
	ld sp, hl
	ld h, d
	ld l, e
	jr WriteTile

ReadTileToAnimBuffer:
; Save the stack pointer in bc for WriteTile to restore
	ld hl, sp+0
	ld b, h
	ld c, l

; Write the tile graphic from de (now sp) to wTileAnimBuffer (now hl)
	ld h, d
	ld l, e
	ld sp, hl
	ld hl, wTileAnimBuffer
	; fallthrough

WriteTile:
; Write one tile from sp to hl.
; The stack pointer has been saved in bc.

; This function cannot be called, only jumped to,
; because it relocates the stack pointer to quickly
; copy data with a "pop slide".

	pop de
	ld [hl], e
	inc hl
	ld [hl], d
rept (LEN_2BPP_TILE - 2) / 2
	pop de
	inc hl
	ld [hl], e
	inc hl
	ld [hl], d
endr

; Restore the stack pointer from bc
	ld h, b
	ld l, c
	ld sp, hl
	ret

TowerPillarTilePointer1:  dw vTiles2 tile $2d, TowerPillarTile1
TowerPillarTilePointer2:  dw vTiles2 tile $2f, TowerPillarTile2
TowerPillarTilePointer3:  dw vTiles2 tile $3d, TowerPillarTile3
TowerPillarTilePointer4:  dw vTiles2 tile $3f, TowerPillarTile4
TowerPillarTilePointer5:  dw vTiles2 tile $3c, TowerPillarTile5
TowerPillarTilePointer6:  dw vTiles2 tile $2c, TowerPillarTile6
TowerPillarTilePointer7:  dw vTiles2 tile $4d, TowerPillarTile7
TowerPillarTilePointer8:  dw vTiles2 tile $4f, TowerPillarTile8
TowerPillarTilePointer9:  dw vTiles2 tile $5d, TowerPillarTile9
TowerPillarTilePointer10: dw vTiles2 tile $5f, TowerPillarTile10

TowerPillarTile1:  INCBIN "gfx/tilesets/tower-pillar/1.2bpp"
TowerPillarTile2:  INCBIN "gfx/tilesets/tower-pillar/2.2bpp"
TowerPillarTile3:  INCBIN "gfx/tilesets/tower-pillar/3.2bpp"
TowerPillarTile4:  INCBIN "gfx/tilesets/tower-pillar/4.2bpp"
TowerPillarTile5:  INCBIN "gfx/tilesets/tower-pillar/5.2bpp"
TowerPillarTile6:  INCBIN "gfx/tilesets/tower-pillar/6.2bpp"
TowerPillarTile7:  INCBIN "gfx/tilesets/tower-pillar/7.2bpp"
TowerPillarTile8:  INCBIN "gfx/tilesets/tower-pillar/8.2bpp"
TowerPillarTile9:  INCBIN "gfx/tilesets/tower-pillar/9.2bpp"
TowerPillarTile10: INCBIN "gfx/tilesets/tower-pillar/10.2bpp"

WhirlpoolFrames1: dw vTiles2 tile $32, WhirlpoolTiles1
WhirlpoolFrames2: dw vTiles2 tile $33, WhirlpoolTiles2
WhirlpoolFrames3: dw vTiles2 tile $42, WhirlpoolTiles3
WhirlpoolFrames4: dw vTiles2 tile $43, WhirlpoolTiles4

WhirlpoolTiles1: INCBIN "gfx/tilesets/whirlpool/1.2bpp"
WhirlpoolTiles2: INCBIN "gfx/tilesets/whirlpool/2.2bpp"
WhirlpoolTiles3: INCBIN "gfx/tilesets/whirlpool/3.2bpp"
WhirlpoolTiles4: INCBIN "gfx/tilesets/whirlpool/4.2bpp"

TopLeftSpinnerAnimation:
	ld hl, sp + 0
	ld b, h
	ld c, l

	ld a, [wSpinning]
	and a
	jr z, .ok

	; period 2, every 2 frames, offset to 1 tile (16 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 2, 1
	add a
	add a
	add a

.ok
	add LOW(.SpinnerTileFrames)
	ld l, a
	adc HIGH(.SpinnerTileFrames)
	sub l
	ld h, a

	ld sp, hl
	ld l, e
	ld h, d
	jp WriteTile

.SpinnerTileFrames:
INCBIN "gfx/tilesets/spinners/top_left.2bpp"

TopRightSpinnerAnimation:
	ld hl, sp + 0
	ld b, h
	ld c, l

	ld a, [wSpinning]
	and a
	jr z, .ok

	; period 2, every 2 frames, offset to 1 tile (16 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 2, 1
	add a
	add a
	add a

.ok
	add LOW(.SpinnerTileFrames)
	ld l, a
	adc HIGH(.SpinnerTileFrames)
	sub l
	ld h, a

	ld sp, hl
	ld l, e
	ld h, d
	jp WriteTile

.SpinnerTileFrames:
INCBIN "gfx/tilesets/spinners/top_right.2bpp"

BottomLeftSpinnerAnimation:
	ld hl, sp + 0
	ld b, h
	ld c, l

	ld a, [wSpinning]
	and a
	jr z, .ok

	; period 2, every 2 frames, offset to 1 tile (16 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 2, 1
	add a
	add a
	add a

.ok
	add LOW(.SpinnerTileFrames)
	ld l, a
	adc HIGH(.SpinnerTileFrames)
	sub l
	ld h, a

	ld sp, hl
	ld l, e
	ld h, d
	jp WriteTile

.SpinnerTileFrames:
INCBIN "gfx/tilesets/spinners/bottom_left.2bpp"

BottomRightSpinnerAnimation:
	ld hl, sp + 0
	ld b, h
	ld c, l

	ld a, [wSpinning]
	and a
	jr z, .ok

	; period 2, every 2 frames, offset to 1 tile (16 bytes)
	ld a, [wTileAnimationTimer]
	maskbits 2, 1
	add a
	add a
	add a

.ok
	add LOW(.SpinnerTileFrames)
	ld l, a
	adc HIGH(.SpinnerTileFrames)
	sub l
	ld h, a

	ld sp, hl
	ld l, e
	ld h, d
	jp WriteTile

.SpinnerTileFrames:
INCBIN "gfx/tilesets/spinners/bottom_right.2bpp"
