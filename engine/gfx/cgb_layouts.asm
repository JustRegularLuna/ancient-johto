; Replaces the functionality of sgb.asm to work with CGB hardware.

CheckCGB:
	ldh a, [hCGB]
	and a
	ret

LoadSGBLayoutCGB:
	ld a, b
	cp SCGB_DEFAULT
	jr nz, .not_default
	ld a, [wDefaultSGBLayout]
.not_default
	cp SCGB_PARTY_MENU_HP_BARS
	jp z, CGB_ApplyPartyMenuHPPals
	call ResetBGPals
	ld l, a
	ld h, 0
	add hl, hl
	ld de, CGBLayoutJumptable
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, .done
	push de
	jp hl
.done:
	ret

CGBLayoutJumptable:
; entries correspond to SCGB_* constants (see constants/scgb_constants.asm)
	table_width 2
	dw _CGB_BattleGrayscale
	dw _CGB_BattleColors
	dw _CGB_PokegearPals
	dw _CGB_StatsScreenHPPals
	dw _CGB_Pokedex
	dw _CGB_SlotMachine
	dw _CGB_BetaTitleScreen
	dw _CGB_GSIntro
	dw _CGB_Diploma
	dw _CGB_MapPals
	dw _CGB_PartyMenu
	dw _CGB_Evolution
	dw _CGB_GSTitleScreen
	dw _CGB_Unused0D
	dw _CGB_MoveList
	dw _CGB_BetaPikachuMinigame
	dw _CGB_PokedexSearchOption
	dw _CGB_BetaPoker
	dw _CGB_Pokepic
	dw _CGB_MagnetTrain
	dw _CGB_PackPals
	dw _CGB_TrainerCard
	dw _CGB_PokedexUnownMode
	dw _CGB_BillsPC
	dw _CGB_UnownPuzzle
	dw _CGB_GamefreakLogo
	dw _CGB_PlayerOrMonFrontpicPals
	dw _CGB_TradeTube
	dw _CGB_TrainerOrMonFrontpicPals
	dw _CGB_MysteryGift
	dw _CGB_Unused1E
	dw _CGB_Pokedex_5x5
	assert_table_length NUM_SCGB_LAYOUTS

_CGB_BattleGrayscale:
	ld hl, PalPacket_BattleGrayscale + 1
	ld de, wBGPals1
	ld c, 4
	call CopyPalettes
	ld hl, PalPacket_BattleGrayscale + 1
	ld de, wBGPals1 palette PAL_BATTLE_BG_EXP
	ld c, 4
	call CopyPalettes
	ld hl, PalPacket_BattleGrayscale + 1
	ld de, wOBPals1
	ld c, 2
	call CopyPalettes
	jr _CGB_FinishBattleScreenLayout

_CGB_BattleColors:
	ld de, wBGPals1
	call GetBattlemonBackpicPalettePointer
	push hl
	call LoadHLPaletteIntoDE ; PAL_BATTLE_BG_PLAYER
	call GetEnemyFrontpicPalettePointer
	push hl
	call LoadHLPaletteIntoDE ; PAL_BATTLE_BG_ENEMY
	ld a, [wEnemyHPPal]
	add PAL_HP_GREEN
	call GetPredefPal
	call LoadHLPaletteIntoDE ; PAL_BATTLE_BG_ENEMY_HP
	ld a, [wPlayerHPPal]
	add PAL_HP_GREEN
	call GetPredefPal
	call LoadHLPaletteIntoDE ; PAL_BATTLE_BG_PLAYER_HP
	; on the SGB, the EXP Bar was the same color as your HP bar
	ld de, wOBPals1
	pop hl
	call LoadHLPaletteIntoDE ; PAL_BATTLE_OB_ENEMY
	pop hl
	call LoadHLPaletteIntoDE ; PAL_BATTLE_OB_PLAYER
	ld a, SCGB_BATTLE_COLORS
	ld [wDefaultSGBLayout], a
	call ApplyPals
_CGB_FinishBattleScreenLayout:
	ld de, wBGPals1 palette PAL_BATTLE_BG_TEXT
	ld a, PAL_GRAYMON
	call GetPredefPal
	call LoadHLPaletteIntoDE
	hlcoord 0, 0, wAttrmap
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	ld a, PAL_BATTLE_BG_ENEMY_HP
	call ByteFill
	hlcoord 0, 4, wAttrmap
	lb bc, 8, 10
	ld a, PAL_BATTLE_BG_PLAYER
	call FillBoxCGB
	hlcoord 10, 0, wAttrmap
	lb bc, 7, 10
	ld a, PAL_BATTLE_BG_ENEMY
	call FillBoxCGB
	hlcoord 0, 0, wAttrmap
	lb bc, 4, 10
	ld a, PAL_BATTLE_BG_ENEMY_HP
	call FillBoxCGB
	hlcoord 10, 7, wAttrmap
	lb bc, 5, 10
	ld a, PAL_BATTLE_BG_PLAYER_HP
	call FillBoxCGB
	hlcoord 10, 11, wAttrmap
	lb bc, 1, 9
	ld a, PAL_BATTLE_BG_PLAYER_HP
	call FillBoxCGB
	hlcoord 0, 12, wAttrmap
	ld bc, 6 * SCREEN_WIDTH
	ld a, PAL_BATTLE_BG_TEXT
	call ByteFill
	call LoadBattleObjectPals
	call ApplyAttrmap
	ret

_CGB_PokegearPals:
	ld a, PAL_POKEGEAR
	call GetPredefPal
	; save this pal because we'll be reusing it
	push hl
	push hl
	push hl
	; store it as the default bg palette
	ld de, wBGPals1
	call LoadHLPaletteIntoDE
	; store it in the font pal, too...
	pop hl
	ld de, wBGPals1 palette PAL_BATTLE_BG_TEXT
	call LoadHLPaletteIntoDE
	; also store it as the obj pals
	ld de, wOBPals1
	pop hl
	call _CGB_MapPals.LoadHLOBPaletteIntoDE
	pop hl
	call _CGB_MapPals.LoadHLOBPaletteIntoDE

	call WipeAttrmap
	call ApplyAttrmap
	call ApplyPals
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	ret

_CGB_StatsScreenHPPals:
	ld de, wBGPals1
	ld a, [wCurHPPal]
	add PAL_HP_GREEN
	call GetPredefPal
	push hl
	call LoadHLPaletteIntoDE ; hp palette
	ld a, [wCurPartySpecies]
	ld bc, wTempMonDVs
	call GetPlayerOrMonPalettePointer
	call LoadHLPaletteIntoDE ; mon palette
	pop hl ; EXP Bar matches HP Bar in SGB mode
	call LoadHLPaletteIntoDE ; exp palette
	ld de, wBGPals1 palette 3
	; page button palettes
	ld a, PAL_HP_GREEN
	call GetPredefPal
	call LoadHLPaletteIntoDE
	call WipeAttrmap

	hlcoord 0, 0, wAttrmap
	lb bc, 8, SCREEN_WIDTH
	ld a, $1 ; mon palette
	call FillBoxCGB

	hlcoord 10, 16, wAttrmap
	ld bc, 10
	ld a, $2 ; exp palette
	call ByteFill

	hlcoord 13, 5, wAttrmap
	lb bc, 2, 6
	ld a, $3 ; pages palette
	call FillBoxCGB

	call ApplyAttrmap
	call ApplyPals
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	ret

_CGB_Pokedex:
	call _CGB_Pokedex_Init
	hlcoord 1, 1, wAttrmap
	lb bc, 7, 7
	ld a, $1
	call FillBoxCGB
	jp _CGB_Pokedex_Resume

_CGB_Pokedex_5x5:
	call _CGB_Pokedex_Init
	hlcoord 1, 1, wAttrmap
	lb bc, 5, 5
	ld a, $1
	call FillBoxCGB
	jp _CGB_Pokedex_Resume

_CGB_Pokedex_Init:
	ld de, wBGPals1
	ld a, PAL_REDMON
	call GetPredefPal
	call LoadHLPaletteIntoDE ; dex interface palette
	ld a, [wCurPartySpecies]
	cp $ff
	jr nz, .is_pokemon
	ld a, PAL_GRAYMON
	call GetPredefPal
	call LoadHLPaletteIntoDE ; question mark palette
	jr .got_palette

.is_pokemon
	call GetMonPalettePointer
	call LoadHLPaletteIntoDE ; mon palette
.got_palette
	call WipeAttrmap
	ret

_CGB_Pokedex_Resume:
	call InitPartyMenuOBPals
	ld a, PAL_REDMON
	call GetPredefPal
	ld de, wOBPals1 palette 7 ; cursor palette
	call LoadHLPaletteIntoDE
	call ApplyAttrmap
	call ApplyPals
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	ret

_CGB_BillsPC:
	ld de, wBGPals1
	ld a, PAL_REDMON
	call GetPredefPal
	call LoadHLPaletteIntoDE
	ld a, [wCurPartySpecies]
	cp $ff
	jr nz, .GetMonPalette
	ld a, PAL_GRAYMON
	call GetPredefPal
	call LoadHLPaletteIntoDE
	jr .GotPalette

.GetMonPalette:
	ld bc, wTempMonDVs
	call GetPlayerOrMonPalettePointer
	call LoadHLPaletteIntoDE
.GotPalette:
	call WipeAttrmap
	hlcoord 1, 4, wAttrmap
	lb bc, 7, 7
	ld a, $1 ; mon palette
	call FillBoxCGB
	call InitPartyMenuOBPals
	call ApplyAttrmap
	call ApplyPals
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	ret

_CGB_PokedexUnownMode:
	ld de, wBGPals1
	ld a, PAL_REDMON
	call GetPredefPal
	call LoadHLPaletteIntoDE
	ld a, [wCurPartySpecies]
	call GetMonPalettePointer
	call LoadHLPaletteIntoDE
	call WipeAttrmap
	hlcoord 7, 5, wAttrmap
	lb bc, 7, 7
	ld a, $1 ; mon palette
	call FillBoxCGB
	call InitPartyMenuOBPals
	call ApplyAttrmap
	call ApplyPals
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	ret

_CGB_SlotMachine:
	; grab the SGB color packet
	ld hl, PalPacket_SlotMachine + 1
	call CopyFourPalettes
	; in SGB, Slot Reels use Pal 0
	; fill OB Pals with Pal 0
	ld de, wOBPals1
	ld a, PAL_SLOT_MACHINE_0
	call GetPredefPal
	ld b, 8
.loop
	push hl
	call LoadHLPaletteIntoDE
	pop hl
	dec b
	jr nz, .loop
	; Apply the palettes to the screen like SGB
	call WipeAttrmap
	hlcoord 0, 2, wAttrmap
	lb bc, 10, 3
	ld a, $1 ; "3" palette
	call FillBoxCGB
	hlcoord 17, 2, wAttrmap
	lb bc, 10, 3
	ld a, $1 ; "3" palette
	call FillBoxCGB
	hlcoord 0, 4, wAttrmap
	lb bc, 6, 3
	ld a, $2 ; "2" palette
	call FillBoxCGB
	hlcoord 17, 4, wAttrmap
	lb bc, 6, 3
	ld a, $2 ; "2" palette
	call FillBoxCGB
	hlcoord 0, 6, wAttrmap
	lb bc, 2, 3
	ld a, $3 ; "1" palette
	call FillBoxCGB
	hlcoord 17, 6, wAttrmap
	lb bc, 2, 3
	ld a, $3 ; "1" palette
	call FillBoxCGB
	call ApplyAttrmap
	call ApplyPals
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	ret

_CGB_BetaTitleScreen:
	ld hl, PalPacket_BetaTitleScreen + 1
	call CopyFourPalettes
	call WipeAttrmap
	ld de, wOBPals1
	ld a, PAL_PACK
	call GetPredefPal
	call LoadHLPaletteIntoDE
	hlcoord 0, 6, wAttrmap
	lb bc, 12, SCREEN_WIDTH
	ld a, $1
	call FillBoxCGB
	call ApplyAttrmap
	call ApplyPals
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	ret

_CGB_GSIntro:
	ld b, 0
	ld hl, .Jumptable
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.Jumptable:
	dw .ShellderLaprasScene
	dw .JigglypuffPikachuScene
	dw .StartersCharizardScene

.ShellderLaprasScene:
	ld a, PAL_GS_INTRO_SHELLDER_LAPRAS
	call GetPredefPal
	push hl
	push hl
	ld de, wBGPals1
	call LoadHLPaletteIntoDE
	pop hl
	ld de, wOBPals1
	call LoadHLPaletteIntoDE
	pop hl
	call LoadHLPaletteIntoDE
	call WipeAttrmap
	ret

.JigglypuffPikachuScene:
	ld de, wBGPals1
	ld a, PAL_GS_INTRO_JIGGLYPUFF_PIKACHU_BG
	call GetPredefPal
	call LoadHLPaletteIntoDE

	ld de, wOBPals1
	ld a, PAL_GS_INTRO_JIGGLYPUFF_PIKACHU_OB
	call GetPredefPal
	call LoadHLPaletteIntoDE
	call WipeAttrmap
	ret

.StartersCharizardScene:
	ld a, PAL_REDMON ; Charizard
	call GetPredefPal
	ld de, wBGPals1
	call LoadHLPaletteIntoDE
	ld de, wOBPals1
	ld a, PAL_GS_INTRO_STARTERS_TRANSITION
	call GetPredefPal
	call LoadHLPaletteIntoDE
	call WipeAttrmap
	ret

_CGB_BetaPoker:
	ld hl, BetaPokerPals
	ld de, wBGPals1
	ld bc, 5 palettes
	call CopyBytes
	call ApplyPals
	call WipeAttrmap
	call ApplyAttrmap
	ret

_CGB_Diploma:
; Start by loading PAL_MEWMON for 2 object pals
	ld de, wOBPals1
	ld a, PAL_MEWMON
	call GetPredefPal
	push hl
	call _CGB_MapPals.LoadHLOBPaletteIntoDE
	pop hl
	call _CGB_MapPals.LoadHLOBPaletteIntoDE
; then load diploma palettes
	ld hl, PalPacket_Diploma + 1
	call CopyFourPalettes
	call WipeAttrmap
	jp ApplyAttrmap

_CGB_MapPals:
; Get SGB palette
	call SGBLayoutJumptable.GetMapPalsIndex
	call GetPredefPal
	ld de, wBGPals1
; Copy 7 BG palettes
	ld b, 7
.bg_loop
	call .LoadHLBGPaletteIntoDE
	dec b
	jr nz, .bg_loop
; Copy PAL_BG_TEXT and 6 OB palettes
	push hl
	ld a, PAL_SHINY_GRAYMON
	call GetPredefPal
	call LoadHLPaletteIntoDE
	pop hl
	ld b, 6
.ob_loop
	call .LoadHLOBPaletteIntoDE
	dec b
	jr nz, .ob_loop
; Copy PAL_OW_TREE and PAL_OW_ROCK
	call .LoadHLBGPaletteIntoDE
	call .LoadHLBGPaletteIntoDE
	ld a, SCGB_MAPPALS
	ld [wDefaultSGBLayout], a
	ret

.LoadHLBGPaletteIntoDE:
; morn/day: shades 0, 1, 2, 3 -> 0, 1, 2, 3
; nite: shades 0, 1, 2, 3 -> 1, 2, 2, 3
	push hl
	ld a, [wTimeOfDayPal]
	cp NITE_F
	jr c, .bg_morn_day
	inc hl
	inc hl
	call .LoadHLColorIntoDE
	call .LoadHLColorIntoDE
	dec hl
	dec hl
	call .LoadHLColorIntoDE
	call .LoadHLColorIntoDE
.bg_done
	pop hl
	ret

.bg_morn_day
	call LoadHLPaletteIntoDE
	jr .bg_done

.LoadHLOBPaletteIntoDE:
; shades 0, 1, 2, 3 -> 0, 0, 1, 3
	push hl
	call .LoadHLColorIntoDE
	dec hl
	dec hl
	call .LoadHLColorIntoDE
	call .LoadHLColorIntoDE
	inc hl
	inc hl
	call .LoadHLColorIntoDE
	pop hl
	ret

.LoadHLColorIntoDE:
	ldh a, [rSVBK]
	push af
	ld a, BANK(wBGPals1)
	ldh [rSVBK], a
rept PAL_COLOR_SIZE
	ld a, [hli]
	ld [de], a
	inc de
endr
	pop af
	ldh [rSVBK], a
	ret

_CGB_PartyMenu:
	ld hl, PalPacket_PartyMenu + 1
	call CopyFourPalettes
	call InitPartyMenuOBPals
	call ApplyAttrmap
	ret

_CGB_Evolution:
	ld de, wBGPals1
	ld a, c
	and a
	jr z, .pokemon
	ld a, PAL_BLACKOUT
	call GetPredefPal
	call LoadHLPaletteIntoDE
	jr .got_palette

.pokemon
	ld hl, wPartyMon1DVs
	ld bc, PARTYMON_STRUCT_LENGTH
	ld a, [wCurPartyMon]
	call AddNTimes
	ld c, l
	ld b, h
	ld a, [wPlayerHPPal]
	call GetPlayerOrMonPalettePointer
	call LoadHLPaletteIntoDE
	call LoadBattleObjectPals

.got_palette
	call WipeAttrmap
	call ApplyAttrmap
	call ApplyPals
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	ret

LoadBattleObjectPals:
	ld de, wOBPals1 palette PAL_BATTLE_OB_GRAY
	ld a, PAL_GRAYMON
	call GetPredefPal
	call LoadHLPaletteIntoDE
	ld a, PAL_YELLOWMON
	call GetPredefPal
	call LoadHLPaletteIntoDE
	ld a, PAL_REDMON
	call GetPredefPal
	call LoadHLPaletteIntoDE
	ld a, PAL_GREENMON
	call GetPredefPal
	call LoadHLPaletteIntoDE
	ld a, PAL_BLUEMON
	call GetPredefPal
	call LoadHLPaletteIntoDE
	ld a, PAL_BROWNMON
	call GetPredefPal
	jp LoadHLPaletteIntoDE

_CGB_GSTitleScreen:
	ld de, wBGPals1
	; dust
	ld a, PAL_GS_TITLE_SCREEN_3
	call GetPredefPal
	call LoadHLPaletteIntoDE
	; pokemon logo
	ld a, PAL_GS_TITLE_SCREEN_0
	call GetPredefPal
	call LoadHLPaletteIntoDE
	; ???
	ld a, PAL_GS_TITLE_SCREEN_2
	call GetPredefPal
	call LoadHLPaletteIntoDE
	; gold/silver version text
	ld a, PAL_GS_TITLE_SCREEN_1
	call GetPredefPal
	call LoadHLPaletteIntoDE
	; dust
	ld a, PAL_GS_TITLE_SCREEN_3
	call GetPredefPal
	call LoadHLPaletteIntoDE
	ld de, wOBPals1
	; bird has a solid black palette
	xor a
	ld b, 8 ; 8 bytes for a palette
.birdLoop
	ld [de], a
	inc de
	dec b
	jr nz, .birdLoop
	; trails
	ld a, PAL_GS_TITLE_SCREEN_3
	call GetPredefPal
	call LoadHLPaletteIntoDE
	ld a, SCGB_DIPLOMA
	ld [wDefaultSGBLayout], a
	call ApplyPals
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	ret

_CGB_Unused0D:
	ld hl, PalPacket_Diploma + 1
	call CopyFourPalettes
	call WipeAttrmap
	call ApplyAttrmap
	ret

_CGB_UnownPuzzle:
	ld hl, PalPacket_UnownPuzzle + 1
	call CopyFourPalettes
	ld de, wOBPals1
	ld a, PAL_UNOWN_PUZZLE
	call GetPredefPal
	call LoadHLPaletteIntoDE
	ld hl, wOBPals1
	ld a, LOW(palred 31 + palgreen 0 + palblue 0)
	ld [hli], a
	ld a, HIGH(palred 31 + palgreen 0 + palblue 0)
	ld [hl], a
	call WipeAttrmap
	call ApplyAttrmap
	ret

_CGB_TrainerCard:
	; Palettes for border and trainers
	ld de, wBGPals1
	ld a, PAL_CYANMON
	call GetPredefPal
	call LoadHLPaletteIntoDE
	ld a, PAL_REDMON
	call GetPredefPal
	call LoadHLPaletteIntoDE
	ld a, PAL_MEWMON
	call GetPredefPal
	call LoadHLPaletteIntoDE
	; palette for the badges when visible
	ld de, wOBPals1
	ld a, PAL_GRAYMON
	call GetPredefPal
	call LoadHLPaletteIntoDE

	; fill screen with gender-specific palette for the card border
	hlcoord 0, 0, wAttrmap
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	; TODO: Player Gender, gender-specific trainer card pal
	;ld a, [wPlayerGender]
	;and a
	ld a, $1 ; red
	;jr z, .got_gender
	;xor a ; cyan
;.got_gender
	call ByteFill
	; fill trainer sprite area with trainer palette
	hlcoord 14, 1, wAttrmap
	lb bc, 7, 5
	ld a, $2 ; trainers
	call FillBoxCGB
	; top-right corner still uses the border's palette
	hlcoord 0, 0, wAttrmap
	ld a, [hl]
	hlcoord 18, 1, wAttrmap
	ld [hl], a
	; fill the gym leader faces' area with the shared trainer palette
	hlcoord 2, 10, wAttrmap
	lb bc, 6, 16
	ld a, $2 ; trainers
	call FillBoxCGB
	call ApplyAttrmap
	call ApplyPals
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	ret

_CGB_MoveList:
	ld de, wBGPals1
	ld a, PAL_GOLDENROD
	call GetPredefPal
	call LoadHLPaletteIntoDE
	ld a, [wPlayerHPPal]
	add PAL_HP_GREEN
	call GetPredefPal
	call LoadHLPaletteIntoDE
	call WipeAttrmap
	hlcoord 11, 1, wAttrmap
	lb bc, 2, 9
	ld a, $1
	call FillBoxCGB
	call ApplyAttrmap
	call ApplyPals
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	ret

_CGB_BetaPikachuMinigame:
	ld hl, PalPacket_BetaPikachuMinigame + 1
	call CopyFourPalettes
	call WipeAttrmap
	call ApplyAttrmap
	call ApplyPals
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	ret

_CGB_PokedexSearchOption:
	ld de, wBGPals1
	ld a, PAL_REDMON
	call GetPredefPal
	call LoadHLPaletteIntoDE
	call WipeAttrmap
	call ApplyAttrmap
	call ApplyPals
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	ret

_CGB_PackPals:
	ld de, wBGPals1
	ld a, PAL_PACK
	call GetPredefPal
	call LoadHLPaletteIntoDE
	call WipeAttrmap
	call ApplyAttrmap
	call ApplyPals
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	ret

_CGB_Pokepic:
	call _CGB_MapPals
	call LoadOverworldAttrmapPals
	ld de, SCREEN_WIDTH
	hlcoord 0, 0, wAttrmap
	ld a, [wMenuBorderTopCoord]
.loop
	and a
	jr z, .found_top
	dec a
	add hl, de
	jr .loop

.found_top
	ld a, [wMenuBorderLeftCoord]
	ld e, a
	ld d, 0
	add hl, de
	ld a, [wMenuBorderTopCoord]
	ld b, a
	ld a, [wMenuBorderBottomCoord]
	inc a
	sub b
	ld b, a
	ld a, [wMenuBorderLeftCoord]
	ld c, a
	ld a, [wMenuBorderRightCoord]
	sub c
	inc a
	ld c, a
	ld a, PAL_BG_TEXT
	call FillBoxCGB
	call ApplyAttrmap
	ret

_CGB_MagnetTrain: ; unused
	ld hl, PalPacket_MagnetTrain + 1
	call CopyFourPalettes
	call WipeAttrmap
	hlcoord 0, 4, wAttrmap
	lb bc, 10, SCREEN_WIDTH
	ld a, PAL_BG_GREEN
	call FillBoxCGB
	hlcoord 0, 6, wAttrmap
	lb bc, 6, SCREEN_WIDTH
	ld a, PAL_BG_RED
	call FillBoxCGB
	call ApplyAttrmap
	call ApplyPals
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	ret

_CGB_GamefreakLogo:
	ld de, wBGPals1
	ld a, PAL_GS_INTRO_GAMEFREAK_LOGO
	call GetPredefPal
	push hl
	push hl
	call LoadHLPaletteIntoDE
	ld de, wOBPals1
	pop hl
	call LoadHLPaletteIntoDE
	ld de, wOBPals1 palette 1
	pop hl
	call LoadHLPaletteIntoDE
	call WipeAttrmap
	call ApplyAttrmap
	call ApplyPals
	ret

_CGB_PlayerOrMonFrontpicPals:
	ld de, wBGPals1
	ld a, [wCurPartySpecies]
	ld bc, wTempMonDVs
	call GetPlayerOrMonPalettePointer
	call LoadHLPaletteIntoDE
	call WipeAttrmap
	call ApplyAttrmap
	call ApplyPals
	ret

_CGB_Unused1E:
	ld de, wBGPals1
	ld a, [wCurPartySpecies]
	call GetMonPalettePointer
	call LoadHLPaletteIntoDE
	call WipeAttrmap
	call ApplyAttrmap
	ret

_CGB_TradeTube:
	ld hl, PalPacket_TradeTube + 1
	call CopyFourPalettes
	call InitPartyMenuOBPals
	ld de, wOBPals1 palette 7
	ld a, PAL_BLUEMON
	call GetPredefPal
	call LoadHLPaletteIntoDE
	call WipeAttrmap
	ret

_CGB_TrainerOrMonFrontpicPals:
	ld de, wBGPals1
	ld a, [wCurPartySpecies]
	ld bc, wTempMonDVs
	call GetFrontpicPalettePointer
	call LoadHLPaletteIntoDE
	call WipeAttrmap
	call ApplyAttrmap
	call ApplyPals
	ret

_CGB_MysteryGift:
	ld de, wBGPals1
	ld a, PAL_MEWMON
	call GetPredefPal
	call LoadHLPaletteIntoDE
	call ApplyPals
	call WipeAttrmap
	call ApplyAttrmap
	ret
