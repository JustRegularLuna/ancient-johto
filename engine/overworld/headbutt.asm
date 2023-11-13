; Handles functionality for Headbutt outside of battle
; Headbutt Pokemon tables are stored in data/wildPokemon/headbutt_trees.asm
UseHeadbuttOW::
	xor a
	ld [wActionResultOrTookBattleTurn], a
	ld a, [wCurMapTileset]
	cp JOHTO
	jr z, .johto
	; TODO: More tileset checks
	jr nz, .noHeadbutt

.johto
	ld a, [wTileInFrontOfPlayer]
	cp $3E ; Tree corner
	jr z, .useHeadbutt
.noHeadbutt
	ld hl, NothingToHeadbuttText
	jp PrintText

.useHeadbutt
	ld [wCutTile], a
	ld a, $1
	ld [wActionResultOrTookBattleTurn], a
	ld a, [wWhichPokemon]
	ld hl, wPartyMonNicks
	call GetPartyMonName
	ld hl, wd730
	set 6, [hl]
	call GBPalWhiteOutWithDelay3
	call ClearSprites
	call RestoreScreenTilesAndReloadTilePatterns
    call ReloadMapData
	ld a, $90
	ld [hWY], a
	call Delay3
	call LoadGBPal
	call LoadCurrentMapView
	call Delay3
	xor a
	ld [hWY], a

UseHeadbuttOW2:: ; for calling it when not in party menu
	ld hl, UsedHeadbuttText
	call PrintText
	ld hl, wd730
	res 6, [hl]
	call ReloadMapData
	jp GetHeadbuttMons

UsedHeadbuttText:
	text_far _UsedHeadbuttText
	text_end

NothingToHeadbuttText:
	text_far _NothingToHeadbuttText
	text_end

GetHeadbuttMons:
; First, check to see if we will have an encounter
; If we are, find the appropriate list and load a random encounter
; Else, say nothing happened
	call Random
	cp $D0
	jr c, .getHeadbuttMon

.getHeadbuttMon
	ld a, [wCurRegion]
	cp KANTO_REGION
	jr z, .kanto
	; else JOHTO_REGION
.johto
	ld a, [wCurMap]
	cp FIRST_JOHTO_INDOOR_MAP
	ld hl, TreeMons1
	jr nc, .skipCalc

	ld hl, JohtoTreeMonPointerTable
	ld bc, $2
	call AddNTimes
	; hl not points to the entry in the table
	jr .gotPointer

.kanto
	ld a, [wCurMap]
	cp FIRST_INDOOR_MAP
	ld hl, TreeMons1 ; If it isn't in the table, it loads the first list
	jr nc, .skipCalc

	ld hl, KantoTreeMonPointerTable
	ld bc, $2
	call AddNTimes
	; hl now points to entry in the table

.gotPointer
	ld a, [hli]
	ld h, [hl]
	ld l, a
	; hl now points to the start of the TreeMon data for that map

.skipCalc
	push hl ; don't lose our place

	ldh a, [hRandomSub]
	ld b, a
	ld hl, TreeEncounterRateChances
.determineEncounterSlot
	ld a, [hli]
	cp b
	jr nc, .gotEncounterSlot
	inc hl
	jr .determineEncounterSlot
.gotEncounterSlot
; determine which wild mon will appear
	ld c, [hl]
	pop hl ; get the mon list back
	ld b, 0
	add hl, bc

	ld a, 2
	ld [wMoveMissed], a ; fell out of tree text at start of battle
	ld a, [hli]
	ld [wCurEnemyLVL], a
	ld a, [hl]
	ld [wCurOpponent], a
	xor a
	ld [wIsTrainerBattle], a ; make sure this doesn't try to be a glitch trainer
	ret

.noHeadbuttMon
	ld hl, NoHeadbuttMonText
	jp PrintText

NoHeadbuttMonText:
	text_far _NoHeadbuttMonText
	text_end

TreeEncounterRateChances:
; There are 10 slots for wild pokemon, and this is the table that defines how common each of
; those 10 slots is. A random number is generated and then the first byte of each pair in this
; table is compared against that random number. If the random number is less than or equal
; to the first byte, then that slot is chosen.  The second byte is double the slot number.
	db $32, $00 ; 51/256 = 19.9% chance of slot 0
	db $65, $02 ; 51/256 = 19.9% chance of slot 1
	db $8C, $04 ; 39/256 = 15.2% chance of slot 2
	db $A5, $06 ; 25/256 =  9.8% chance of slot 3
	db $BE, $08 ; 25/256 =  9.8% chance of slot 4
	db $D7, $0A ; 25/256 =  9.8% chance of slot 5
	db $E4, $0C ; 13/256 =  5.1% chance of slot 6
	db $F1, $0E ; 13/256 =  5.1% chance of slot 7
	db $FC, $10 ; 11/256 =  4.3% chance of slot 8
	db $FF, $12 ;  3/256 =  1.2% chance of slot 9

INCLUDE "data/wild/headbutt_trees.asm"