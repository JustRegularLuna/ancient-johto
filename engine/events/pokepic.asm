Pokepic::
	ld hl, PokepicMenuHeader
	call CopyMenuHeader
	call MenuBox
	call UpdateSprites
	call ApplyTilemap
	ld b, SCGB_POKEPIC
	call GetSGBLayout
	xor a
	ldh [hBGMapMode], a
	ld a, [wCurPartySpecies]
	ld [wCurSpecies], a
	call GetBaseData
	ld de, vTiles1
	predef GetMonFrontpic
	; fallthrough

_ShowPokepic:
	ld a, [wMenuBorderTopCoord]
	inc a
	ld b, a
	ld a, [wMenuBorderLeftCoord]
	inc a
	ld c, a
	call Coord2Tile
	ld a, $80
	ldh [hGraphicStartTile], a
	lb bc, 7, 7
	predef PlaceGraphic
	call WaitBGMap
	ret

MuseumPic::
	ld hl, PokepicMenuHeader
	call CopyMenuHeader
	call MenuBox
	call UpdateSprites
	call ApplyTilemap
	ld b, SCGB_POKEPIC
	call GetSGBLayout
	xor a
	ldh [hBGMapMode], a
	ld de, vTiles1
	predef GetMuseumPic
	jr _ShowPokepic

ClosePokepic::
	ld hl, PokepicMenuHeader
	call CopyMenuHeader
	call ClearMenuBoxInterior
	call WaitBGMap
	call GetMemSGBLayout
	xor a
	ldh [hBGMapMode], a
	call LoadOverworldTilemapAndAttrmapPals
	call ApplyTilemap
	call UpdateSprites
	call LoadStandardFont
	ret

PokepicMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 6, 4, 14, 12
	dw NULL
	db 1 ; default option
