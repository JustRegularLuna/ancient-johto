LoreleisRoom_Object:
	db $3 ; border block

	def_warps
	warp  4, 11, 2, INDIGO_PLATEAU_LOBBY
	warp  5, 11, 2, INDIGO_PLATEAU_LOBBY
	warp  4,  0, 0, BRUNOS_ROOM
	warp  5,  0, 1, BRUNOS_ROOM

	def_signs

	def_objects
	object SPRITE_LORELEI, 5, 2, STAY, DOWN, 1, LORELEI, 1

	def_warps_to LORELEIS_ROOM

LoreleisRoom_Script:
	call LoreleiShowOrHideExitBlock
	call EnableAutoTextBoxDrawing
	ld hl, LoreleisRoomTrainerHeaders
	ld de, LoreleisRoom_ScriptPointers
	ld a, [wLoreleisRoomCurScript]
	call ExecuteCurMapScriptInTable
	ld [wLoreleisRoomCurScript], a
	ret

LoreleiShowOrHideExitBlock:
; Blocks or clears the exit to the next room.
	ld hl, wCurrentMapScriptFlags
	bit 5, [hl]
	res 5, [hl]
	ret z
	ld hl, wBeatLorelei
	set 1, [hl]
	CheckEvent EVENT_BEAT_LORELEIS_ROOM_TRAINER_0
	jr z, .blockExitToNextRoom
	ld a, $5
	jr .setExitBlock
.blockExitToNextRoom
	ld a, $24
.setExitBlock
	ld [wNewTileBlockID], a
	lb bc, 0, 2
	predef_jump ReplaceTileBlock

ResetLoreleiScript:
	xor a
	ld [wLoreleisRoomCurScript], a
	ret

LoreleisRoom_ScriptPointers:
	dw LoreleiScript0
	dw DisplayEnemyTrainerTextAndStartBattle
	dw LoreleiScript2
	dw LoreleiScript3
	dw LoreleiScript4

LoreleiScript4:
	ret

LoreleiScriptWalkIntoRoom:
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
	ld [wLoreleisRoomCurScript], a
	ld [wCurMapScript], a
	ret

LoreleiScript0:
	ld hl, LoreleiEntranceCoords
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
	CheckAndSetEvent EVENT_AUTOWALKED_INTO_LORELEIS_ROOM
	jr z, LoreleiScriptWalkIntoRoom
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
	ld [wLoreleisRoomCurScript], a
	ld [wCurMapScript], a
	ret

LoreleiEntranceCoords:
	dbmapcoord  4, 10
	dbmapcoord  5, 10
	dbmapcoord  4, 11
	dbmapcoord  5, 11
	db -1 ; end

LoreleiScript3:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	call Delay3
	xor a
	ld [wJoyIgnore], a
	ld [wLoreleisRoomCurScript], a
	ld [wCurMapScript], a
	ret

LoreleiScript2:
	call EndTrainerBattle
	ld a, [wIsInBattle]
	cp $ff
	jp z, ResetLoreleiScript
	ld a, $1
	ldh [hSpriteIndexOrTextID], a
	jp DisplayTextID

LoreleisRoom_TextPointers:
	dw LoreleiText1
	dw LoreleiDontRunAwayText

LoreleisRoomTrainerHeaders:
	def_trainers
LoreleiTrainerHeader0:
	trainer EVENT_BEAT_LORELEIS_ROOM_TRAINER_0, 0, LoreleiBeforeBattleText, LoreleiEndBattleText, LoreleiAfterBattleText
	db -1 ; end

LoreleiText1:
	text_asm
	ld hl, LoreleiTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

LoreleiBeforeBattleText:
	text "Welcome to"
	line "#MON LEAGUE!"

	para "I am LORELEI of"
	line "the ELITE FOUR!"

	para "No one can best"
	line "me when it comes"
	cont "to icy #MON!"

	para "Freezing moves"
	line "are powerful!"

	para "Your #MON will"
	line "be at my mercy"
	cont "when they are"
	cont "frozen solid!"

	para "Hahaha!"
	line "Are you ready?"
	done

LoreleiEndBattleText:
	text "How"
	line "dare you!"
	prompt

LoreleiAfterBattleText:
	text "You're better"
	line "than I thought!"
	cont "Go on ahead!"

	para "You only got a"
	line "taste of #MON"
	cont "LEAGUE power!"
	done

LoreleiDontRunAwayText:
	text "Someone's voice:"
	line "Don't run away!"
	done
