HallOfFame_Object:
	db $3 ; border block

	def_warps
	warp  4,  7, 2, CHAMPIONS_ROOM
	warp  5,  7, 3, CHAMPIONS_ROOM

	def_signs

	def_objects
	object SPRITE_OAK, 5, 2, STAY, DOWN, 1 ; person

	def_warps_to HALL_OF_FAME

HallOfFame_Script:
	call EnableAutoTextBoxDrawing
	ld hl, HallOfFame_ScriptPointers
	ld a, [wHallOfFameCurScript]
	jp CallFunctionInTable

HallofFameRoomScript_5a4aa:
	xor a
	ld [wJoyIgnore], a
	ld [wHallOfFameCurScript], a
	ret

HallOfFame_ScriptPointers:
	dw HallofFameRoomScript0
	dw HallofFameRoomScript1
	dw HallofFameRoomScript2
	dw HallofFameRoomScript3

HallofFameRoomScript3:
	ret

HallofFameRoomScript2:
	call Delay3
	ld a, [wLetterPrintingDelayFlags]
	push af
	xor a
	ld [wJoyIgnore], a
	predef HallOfFamePC
	pop af
	ld [wLetterPrintingDelayFlags], a
	ld hl, wFlags_D733
	res 1, [hl]
	inc hl
	set 0, [hl]
	xor a
	ld hl, wLoreleisRoomCurScript
	ld [hli], a ; wLoreleisRoomCurScript
	ld [hli], a ; wBrunosRoomCurScript
	ld [hl], a ; wAgathasRoomCurScript
	ld [wLancesRoomCurScript], a
	ld [wHallOfFameCurScript], a
	; Elite 4 events
	ResetEventRange ELITE4_EVENTS_START, ELITE4_CHAMPION_EVENTS_END, 1
	xor a
	ld [wHallOfFameCurScript], a
	ld a, PALLET_TOWN
	ld [wLastBlackoutMap], a
	farcall SaveSAVtoSRAM
	ld b, 5
.delayLoop
	ld c, 600 / 5
	call DelayFrames
	dec b
	jr nz, .delayLoop
	call WaitForTextScrollButtonPress
	jp Init

HallofFameRoomScript0:
	ld a, $ff
	ld [wJoyIgnore], a
	ld hl, wSimulatedJoypadStatesEnd
	ld de, RLEMovement5a528
	call DecodeRLEList
	dec a
	ld [wSimulatedJoypadStatesIndex], a
	call StartSimulatingJoypadStates
	ld a, $1
	ld [wHallOfFameCurScript], a
	ret

RLEMovement5a528:
	db D_UP, 5
	db -1 ; end

HallofFameRoomScript1:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	ld a, PLAYER_DIR_RIGHT
	ld [wPlayerMovingDirection], a
	ld a, $1
	ldh [hSpriteIndex], a
	call SetSpriteMovementBytesToFF
	ld a, SPRITE_FACING_LEFT
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	call Delay3
	xor a
	ld [wJoyIgnore], a
	inc a ; PLAYER_DIR_RIGHT
	ld [wPlayerMovingDirection], a
	ld a, $1
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	ld a, $ff
	ld [wJoyIgnore], a
	;ld a, HS_CERULEAN_CAVE_GUY
	;ld [wMissableObjectIndex], a
	;predef HideObject
	ld a, $2
	ld [wHallOfFameCurScript], a
	ret

HallOfFame_TextPointers:
	dw HallofFameRoomText1

HallofFameRoomText1:
	text "OAK: Er-hem!"
	line "Congratulations"
	cont "<PLAYER>!"

	para "This floor is the"
	line "#MON HALL OF"
	cont "FAME!"

	para "#MON LEAGUE"
	line "champions are"
	cont "honored for their"
	cont "exploits here!"

	para "Their #MON are"
	line "also recorded in"
	cont "the HALL OF FAME!"

	para "<PLAYER>! You have"
	line "endeavored hard"
	cont "to become the new"
	cont "LEAGUE champion!"

	para "Congratulations,"
	line "<PLAYER>, you and"
	cont "your #MON are"
	cont "HALL OF FAMERs!"
	done
