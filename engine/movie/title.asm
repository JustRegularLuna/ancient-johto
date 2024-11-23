; copy text of fixed length NAME_LENGTH (like player name, rival name, mon names, ...)
CopyFixedLengthText:
	ld bc, NAME_LENGTH
	jp CopyData

SetDefaultNamesBeforeTitlescreen::
	ld hl, NintenText
	ld de, wPlayerName
	call CopyFixedLengthText
	ld hl, SonyText
	ld de, wRivalName
	call CopyFixedLengthText
	xor a
	ldh [hWY], a
	ld [wLetterPrintingDelayFlags], a
	ld hl, wd732
	ld [hli], a
	ld [hli], a
	ld [hl], a

DisplayTitleScreen:
	call GBPalWhiteOut
	ld a, $1
	ldh [hAutoBGTransferEnabled], a
	xor a
	ldh [hTileAnimations], a
	call ClearScreen
	call DisableLCD
	call LoadFontTilePatterns

; load the graphics
	ld hl, TitleScreenGFX1
	ld de, vChars1
	ld bc, TitleScreenGFX1End - TitleScreenGFX1
	ld a, BANK(TitleScreenGFX1)
	call FarCopyData

	ld hl, TitleScreenGFX2
	ld de, vChars2 + $1E tiles
	ld bc, TitleScreenGFX2End - TitleScreenGFX2
	ld a, BANK(TitleScreenGFX2)
	call FarCopyData

; Fill the screen with background color
	hlcoord 0, 0
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	ld a, $80
	call FillMemory

; Draw the Pokemon logo
	hlcoord 0, 0
	lb bc, 7, 20
	lb de, $80, $14
	call DrawTitleGraphic

; Draw Ho-oh/Lugia
	hlcoord 7, 8
	lb bc, 7, 7
	lb de, $1E, $07
	call DrawTitleGraphic

; Draw the dust
	ld a, $1A + 4
	hlcoord 0, 16
	ld b, 5
.dustLoop
	add -4
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	dec b
	jr nz, .dustLoop

; Draw the copyright text
	ld a, $19
	ld b, SCREEN_WIDTH
	hlcoord 0, 17
.copyrightLoop
	ld [hli], a
	dec b
	jr nz, .copyrightLoop
	hlcoord 3, 17
	lb bc, 1, 13
	lb de, $0c, 13
	call DrawTitleGraphic

; main screen turn on
	call EnableLCD
	ld b, SET_PAL_TITLE_SCREEN
	call RunPaletteCommand
	call GBPalNormal
	ld a, MUSIC_TITLE_SCREEN
	call PlayMusic
	xor a
	ld [wUnusedCC5B], a

.awaitUserInterruptionLoop
	ld c, 200
	call CheckForUserInterruption
	jr c, .finishedWaiting
	jr .awaitUserInterruptionLoop

.finishedWaiting
	call GBPalWhiteOutWithDelay3
	call ClearSprites
	xor a
	ldh [hWY], a
	inc a
	ldh [hAutoBGTransferEnabled], a
	call ClearScreen
	ld a, HIGH(vBGMap0)
	call TitleScreenCopyTileMapToVRAM
	ld a, HIGH(vBGMap1)
	call TitleScreenCopyTileMapToVRAM
	call Delay3
	call LoadGBPal
	ldh a, [hJoyHeld]
	ld b, a
	and D_UP | SELECT | B_BUTTON
	cp D_UP | SELECT | B_BUTTON
	jp z, .doClearSaveDialogue
IF DEF(_DEBUG)
	ld a, b
	bit BIT_SELECT, a
	jp nz, DebugMenu
ENDC
	jp MainMenu

.doClearSaveDialogue
	farjp DoClearSaveDialogue

DrawTitleGraphic:
; input:
;   hl: draw location
;   b: height
;   c: width
;   d: tile to start drawing from
;   e: number of tiles to advance for each bgrows
.bgrows
	push de
	push bc
	push hl
.col
	ld a, d
	ld [hli], a
	inc d
	dec c
	jr nz, .col
	pop hl
	ld bc, SCREEN_WIDTH
	add hl, bc
	pop bc
	pop de
	ld a, e
	add d
	ld d, a
	dec b
	jr nz, .bgrows
	ret

TitleScreenCopyTileMapToVRAM:
	ldh [hAutoBGTransferDest + 1], a
	jp Delay3

LoadCopyrightAndTextBoxTiles:
	xor a
	ldh [hWY], a
	call ClearScreen
	call LoadTextBoxTilePatterns

LoadCopyrightTiles:
	ld de, NintendoCopyrightLogoGraphics
	ld hl, vChars2 tile $60
	lb bc, BANK(NintendoCopyrightLogoGraphics), (GamefreakLogoGraphicsEnd - NintendoCopyrightLogoGraphics) / $10
	call CopyVideoData
	hlcoord 2, 7
	ld de, CopyrightTextString
	jp PlaceString

CopyrightTextString:
	db   $60,$61,$62,$61,$63,$61,$64,$7F,$65,$66,$67,$68,$69,$6A             ; ©'95.'96.'98 Nintendo
	next $60,$61,$62,$61,$63,$61,$64,$7F,$6B,$6C,$6D,$6E,$6F,$70,$71,$72     ; ©'95.'96.'98 Creatures inc.
	next $60,$61,$62,$61,$63,$61,$64,$7F,$73,$74,$75,$76,$77,$78,$79,$7A,$7B ; ©'95.'96.'98 GAME FREAK inc.
	db   "@"

NintenText: db "NINTEN@"
SonyText:   db "SONY@"
