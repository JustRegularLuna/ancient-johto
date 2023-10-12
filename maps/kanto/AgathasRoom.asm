AgathasRoom_Object:
	db $0 ; border block

	def_warps
	warp  4, 11, 2, BRUNOS_ROOM
	warp  5, 11, 3, BRUNOS_ROOM
	warp  4,  0, 0, LANCES_ROOM
	warp  5,  0, 0, LANCES_ROOM

	def_signs

	def_objects
	object SPRITE_AGATHA, 5, 2, STAY, DOWN, 1, AGATHA, 1

	def_warps_to AGATHAS_ROOM

AgathasRoom_Script:
	call AgathaShowOrHideExitBlock
	call EnableAutoTextBoxDrawing
	ld hl, AgathasRoomTrainerHeaders
	ld de, AgathasRoom_ScriptPointers
	ld a, [wAgathasRoomCurScript]
	call ExecuteCurMapScriptInTable
	ld [wAgathasRoomCurScript], a
	ret

AgathaShowOrHideExitBlock:
; Blocks or clears the exit to the next room.
	ld hl, wCurrentMapScriptFlags
	bit 5, [hl]
	res 5, [hl]
	ret z
	CheckEvent EVENT_BEAT_AGATHAS_ROOM_TRAINER_0
	jr z, .blockExitToNextRoom
	ld a, $e
	jp .setExitBlock
.blockExitToNextRoom
	ld a, $3b
.setExitBlock
	ld [wNewTileBlockID], a
	lb bc, 0, 2
	predef_jump ReplaceTileBlock

ResetAgathaScript:
	xor a
	ld [wAgathasRoomCurScript], a
	ret

AgathasRoom_ScriptPointers:
	dw AgathaScript0
	dw DisplayEnemyTrainerTextAndStartBattle
	dw AgathaScript2
	dw AgathaScript3
	dw AgathaScript4

AgathaScript4:
	ret

AgathaScriptWalkIntoRoom:
; Walk six steps upward.
	ld hl, wSimulatedJoypadStatesEnd
	ld a, D_UP
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld a, $6
	ld [wSimulatedJoypadStatesIndex], a
	call StartSimulatingJoypadStates
	ld a, $3
	ld [wAgathasRoomCurScript], a
	ld [wCurMapScript], a
	ret

AgathaScript0:
	ld hl, AgathaEntranceCoords
	call ArePlayerCoordsInArray
	jp nc, CheckFightingMapTrainers
	xor a
	ldh [hJoyPressed], a
	ldh [hJoyHeld], a
	ld [wSimulatedJoypadStatesEnd], a
	ld [wSimulatedJoypadStatesIndex], a
	ld a, [wCoordIndex]
	cp $3  ; Is player standing one tile above the exit?
	jr c, .stopPlayerFromLeaving
	CheckAndSetEvent EVENT_AUTOWALKED_INTO_AGATHAS_ROOM
	jr z, AgathaScriptWalkIntoRoom
.stopPlayerFromLeaving
	ld a, $2
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID  ; "Don't run away!"
	ld a, D_UP
	ld [wSimulatedJoypadStatesEnd], a
	ld a, $1
	ld [wSimulatedJoypadStatesIndex], a
	call StartSimulatingJoypadStates
	ld a, $3
	ld [wAgathasRoomCurScript], a
	ld [wCurMapScript], a
	ret

AgathaEntranceCoords:
	dbmapcoord  4, 10
	dbmapcoord  5, 10
	dbmapcoord  4, 11
	dbmapcoord  5, 11
	db -1 ; end

AgathaScript3:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	call Delay3
	xor a
	ld [wJoyIgnore], a
	ld [wAgathasRoomCurScript], a
	ld [wCurMapScript], a
	ret

AgathaScript2:
	call EndTrainerBattle
	ld a, [wIsInBattle]
	cp $ff
	jp z, ResetAgathaScript
	ld a, $1
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	ld a, $1
	ld [wChampionsRoomCurScript], a
	ret

AgathasRoom_TextPointers:
	dw AgathaText1
	dw AgathaDontRunAwayText

AgathasRoomTrainerHeaders:
	def_trainers
AgathaTrainerHeader0:
	trainer EVENT_BEAT_AGATHAS_ROOM_TRAINER_0, 0, AgathaBeforeBattleText, AgathaEndBattleText, AgathaAfterBattleText
	db -1 ; end

AgathaText1:
	text_asm
	ld hl, AgathaTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

AgathaBeforeBattleText:
	text "I am AGATHA of"
	line "the ELITE FOUR!"

	para "OAK's taken a lot"
	line "of interest in"
	cont "you, child!"

	para "That old duff was"
	line "once tough and"
	cont "handsome! That"
	cont "was decades ago!"

	para "Now he just wants"
	line "to fiddle with"
	cont "his #DEX! He's"
	cont "wrong! #MON"
	cont "are for fighting!"

	para "<PLAYER>! I'll show"
	line "you how a real"
	cont "trainer fights!"
	done

AgathaEndBattleText:
	text "Oh ho!"
	line "You're something"
	cont "special, child!"
	prompt

AgathaAfterBattleText:
	text "You win! I see"
	line "what the old duff"
	cont "sees in you now!"

	para "I have nothing"
	line "else to say! Run"
	cont "along now, child!"
	done

AgathaDontRunAwayText:
	text "Someone's voice:"
	line "Don't run away!"
	done
