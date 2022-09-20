AnimatePartyMon_ForceSpeed1:
	xor a
	ld [wCurrentMenuItem], a
	ld b, a
	inc a
	jr GetAnimationSpeed

; wPartyMenuHPBarColors contains the party mon's health bar colors
; 0: green
; 1: yellow
; 2: red
AnimatePartyMon::
	ld hl, wPartyMenuHPBarColors
	ld a, [wCurrentMenuItem]
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [hl]

GetAnimationSpeed:
	ld c, a
	ld hl, PartyMonSpeeds
	add hl, bc
	ld a, [wOnSGB]
	xor $1
	add [hl]
	ld c, a
	add a
	ld b, a
	ld a, [wAnimCounter]
	and a
	jr z, .resetSprites
	cp c
	jr z, .animateSprite
.incTimer
	inc a
	cp b
	jr nz, .skipResetTimer
	xor a ; reset timer
.skipResetTimer
	ld [wAnimCounter], a
	jp DelayFrame
.resetSprites
	push bc
	ld hl, wMonPartySpritesSavedOAM
	ld de, wOAMBuffer
	ld bc, $60
	call CopyData
	pop bc
	xor a
	jr .incTimer
.animateSprite
	push bc
	ld hl, wOAMBuffer + $02 ; OAM tile id
	ld bc, $10
	ld a, [wCurrentMenuItem]
	call AddNTimes
	ld a, [hl] ; contains tile number
	bit 2, a
	jr z, .firstFrame
	sub 8
.firstFrame
	add 4
.updateTiles
	ld bc, $4
	ld [hl], a
	add hl, bc
	inc a
	ld [hl], a
	add hl, bc
	inc a
	ld [hl], a
	add hl, bc
	inc a
	ld [hl], a
.done
	pop bc
	ld a, c
	jr .incTimer

; Party mon animations cycle between 2 frames.
; The members of the PartyMonSpeeds array specify the number of V-blanks
; that each frame lasts for green HP, yellow HP, and red HP in order.
; On the naming screen, the yellow HP speed is always used.
PartyMonSpeeds:
	db 5, 16, 32

LoadAnimSpriteGfx:
; Load animated sprite tile patterns into VRAM during V-blank. hl is the address
; of an array of structures that contain arguments for CopyVideoData and a is
; the number of structures in the array.
	ld bc, $0
.loop
	push af
	push bc
	push hl
	add hl, bc
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call CopyVideoData
	pop hl
	pop bc
	ld a, $6
	add c
	ld c, a
	pop af
	dec a
	jr nz, .loop
	ret

LoadMonPartySpriteGfx: ; nickname screen, etc
	call DisableLCD
	ld a, [wcf91] ; contains mon id

	ld [wd11e], a
	predef IndexToPokedex
	ld a, [wd11e]

	dec a
	ld hl, MonPartyData
	ld e, a
	ld d, 0
	add hl, de
	ld a, [hl] ; read the icon ID
	ld hl, MonIcons
	ld bc, $80
	call AddNTimes ; hl now contains pointer to mons mini sprite
	ld a, Bank(MonIcons)
	ld de, vSprites
	call FarCopyData2
	ld de,  vSprites + $38 * $10
	ld hl, TradeBubbleIconGFX
	ld bc, $40
	call CopyData
	ld de,  vSprites + $78 * $10
	ld hl, TradeBubbleIconGFX + $40
	ld bc, $40
	call CopyData
	jp EnableLCD

LoadMonPartySpriteGfxWithLCDDisabled: ; party menu
; Load mon party sprite tile patterns into VRAM immediately by disabling the
; LCD.
	call DisableLCD
	xor a
	push af
	ld hl, wPartySpecies
.loop
	; load the correct mon's mini sprite into each subsequent OAM slot
	ld a, [hli] ; a contains mon id
	push hl

	ld [wd11e], a
	predef IndexToPokedex
	ld a, [wd11e]

	dec a
	ld hl, MonPartyData
	ld e, a
	ld d, 0
	add hl, de
	ld a, [hl] ; read the icon ID

	ld hl, MonIcons
	ld bc, $80
	call AddNTimes ; hl now contains pointer to mon's mini sprite
	ld d, h
	ld e, l

	pop hl ; this is the mon id adress
	pop af
	push af
	push hl
	ld h, d
	ld l, e ; hl now contains pointer to mon's mini sprite
	push hl

	; calculate address in VRAM for the tiles
	ld hl, vSprites
	ld bc, $80
	call AddNTimes
	ld d, h
	ld e, l ; de now contains address in VRAM for the tiles

	ld a, Bank(MonIcons)
	ld bc, $80 ; length of two frames in the mini sprite
	pop hl
	call FarCopyData2
	pop hl
	ld a, [wPartyCount]
	ld b, a
	pop af
	inc a
	cp b
	jr z, .done
	push af
	jr .loop
.done
	jp EnableLCD

WriteMonPartySpriteOAMByPartyIndex:
; Write OAM blocks for the party mon in [hPartyMonIndex].
	push hl
	push de
	push bc
	call GetPartyMonSpriteID
	ld [wOAMBaseTile], a
	call WriteMonPartySpriteOAM
	pop bc
	pop de
	pop hl
	ret

WriteMonPartySpriteOAMBySpecies:
; Write OAM blocks for the party sprite of the species in
; [wMonPartySpriteSpecies].
	xor a
	ldh [hPartyMonIndex], a
	ld a, [wMonPartySpriteSpecies]
	call GetPartyMonSpriteID
	ld [wOAMBaseTile], a
	jr WriteMonPartySpriteOAM

WriteMonPartySpriteOAM:
; Write the OAM blocks for the first animation frame into the OAM buffer and
; make a copy at wMonPartySpritesSavedOAM.
	push af
	ld c, $10
	ld h, HIGH(wOAMBuffer)
	ldh a, [hPartyMonIndex]
	swap a
	ld l, a
	add $10
	ld b, a
	pop af
	call WriteAsymmetricMonPartySpriteOAM
; Make a copy of the OAM buffer with the first animation frame written so that
; we can flip back to it from the second frame by copying it back.
.makeCopy
	ld hl, wOAMBuffer
	ld de, wMonPartySpritesSavedOAM
	ld bc, $60
	jp CopyData

GetPartyMonSpriteID:
	ld a, [hPartyMonIndex]
	add 1
	ld d, a
	xor a
.partyLoop
	dec d
	jr z, .donePartyLoop
	add 8
	jr .partyLoop
.donePartyLoop
	ret

INCLUDE "data/pokemon/menu_icons.asm"

TradeBubbleIconGFX:  INCBIN "gfx/trade/bubble.2bpp"
