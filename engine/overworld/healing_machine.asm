AnimateHealingMachine:
	ld de, PokeCenterFlashingMonitorAndHealBall
	ld hl, vChars0 tile $fc
	lb bc, BANK(PokeCenterFlashingMonitorAndHealBall), 2
	call CopyVideoData
	ld hl, wUpdateSpritesEnabled
	ld a, [hl]
	push af
	ld [hl], $ff
	push hl
	ldh a, [rOBP1]
	push af
	ld a, $e0
	ldh [rOBP1], a
	ld hl, wOAMBuffer + $84
	ld de, PokeCenterOAMData
	call CopyHealingMachineOAM
	call CopyHealingMachineOAM

	ld a, 4
	ld [wMusicFade], a
	xor a
	ld [wMusicFadeID], a
.waitLoop
	ld a, [wMusicFade]
	and a ; is fade-out finished?
	jr nz, .waitLoop ; if not, check again

	ld a, [wPartyCount]
	ld b, a
.partyLoop
	call CopyHealingMachineOAM
	ld a, SFX_HEALING_MACHINE
	call PlaySound
	ld c, 30
	call DelayFrames
	dec b
	jr nz, .partyLoop
	ld a, MUSIC_PKMN_HEALED
	call PlayMusic
	ld d, $28
	call FlashSprite8Times
.waitLoop2
	ld a, [wChannel1MusicID]
	and a
	jr nz, .waitLoop2
	ld c, 32
	call DelayFrames
	pop af
	ldh [rOBP1], a
	pop hl
	pop af
	ld [hl], a
	jp UpdateSprites

PokeCenterFlashingMonitorAndHealBall:
	INCBIN "gfx/overworld/heal_machine.2bpp"

PokeCenterOAMData:
	; heal machine monitor
	dbsprite   4,   4, 2, 0, $fc, OAM_OBP1
	dbsprite   4,   4, 6, 0, $fc, OAM_OBP1
	; poke balls 1-6
	dbsprite   4,   4, 0, 6, $fd, OAM_OBP1
	dbsprite   5,   4, 0, 6, $fd, OAM_OBP1 | OAM_HFLIP
	dbsprite   4,   5, 0, 3, $fd, OAM_OBP1
	dbsprite   5,   5, 0, 3, $fd, OAM_OBP1 | OAM_HFLIP
	dbsprite   4,   6, 0, 0, $fd, OAM_OBP1
	dbsprite   5,   6, 0, 0, $fd, OAM_OBP1 | OAM_HFLIP

; d = value to xor with palette
FlashSprite8Times:
	ld b, 8
.loop
	ldh a, [rOBP1]
	xor d
	ldh [rOBP1], a
	ld c, 10
	call DelayFrames
	dec b
	jr nz, .loop
	ret

CopyHealingMachineOAM:
; copy one OAM entry and advance the pointers
	REPT 4
	ld a, [de]
	inc de
	ld [hli], a
	ENDR
	ret
