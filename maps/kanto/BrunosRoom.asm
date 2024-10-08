; Text Constants
	const_def 1
	; NPCS
	const_export BRUNOS_ROOM_BRUNO

BrunosRoom_Object:
	db $3 ; border block

	def_warp_events
	warp_event  4, 11, LORELEIS_ROOM, 3
	warp_event  5, 11, LORELEIS_ROOM, 4
	warp_event  4,  0, AGATHAS_ROOM, 1
	warp_event  5,  0, AGATHAS_ROOM, 2

	def_bg_events

	def_object_events
	object_event 5, 2, SPRITE_BRUNO, STAY, DOWN, 1, BRUNO, 1

	def_warps_to BRUNOS_ROOM

BrunosRoom_Script:
	call BrunoShowOrHideExitBlock
	call EnableAutoTextBoxDrawing
	ld hl, BrunosRoomTrainerHeaders
	ld de, BrunosRoom_ScriptPointers
	ld a, [wBrunosRoomCurScript]
	call ExecuteCurMapScriptInTable
	ld [wBrunosRoomCurScript], a
	ret

BrunoShowOrHideExitBlock:
; Blocks or clears the exit to the next room.
	ld hl, wCurrentMapScriptFlags
	bit 5, [hl]
	res 5, [hl]
	ret z
	CheckEvent EVENT_BEAT_BRUNOS_ROOM_TRAINER_0
	jr z, .blockExitToNextRoom
	ld a, $5
	jp .setExitBlock
.blockExitToNextRoom
	ld a, $24
.setExitBlock
	ld [wNewTileBlockID], a
	lb bc, 0, 2
	predef_jump ReplaceTileBlock

ResetBrunoScript:
	xor a
	ld [wBrunosRoomCurScript], a
	ret

BrunosRoom_ScriptPointers:
	dw BrunoScript0
	dw DisplayEnemyTrainerTextAndStartBattle
	dw BrunoScript2
	dw BrunoScript3
	dw BrunoScript4

BrunoScript4:
	ret

BrunoScriptWalkIntoRoom:
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
	ld [wBrunosRoomCurScript], a
	ld [wCurMapScript], a
	ret

BrunoScript0:
	ld hl, BrunoEntranceCoords
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
	CheckAndSetEvent EVENT_AUTOWALKED_INTO_BRUNOS_ROOM
	jr z, BrunoScriptWalkIntoRoom
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
	ld [wBrunosRoomCurScript], a
	ld [wCurMapScript], a
	ret

BrunoEntranceCoords:
	dbmapcoord  4, 10
	dbmapcoord  5, 10
	dbmapcoord  4, 11
	dbmapcoord  5, 11
	db -1 ; end

BrunoScript3:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	call Delay3
	xor a
	ld [wJoyIgnore], a
	ld [wBrunosRoomCurScript], a
	ld [wCurMapScript], a
	ret

BrunoScript2:
	call EndTrainerBattle
	ld a, [wIsInBattle]
	cp $ff
	jp z, ResetBrunoScript
	ld a, $1
	ldh [hSpriteIndexOrTextID], a
	jp DisplayTextID

BrunosRoom_TextPointers:
	dw BrunoText1
	dw BrunoDontRunAwayText

BrunosRoomTrainerHeaders:
	def_trainers
BrunoTrainerHeader0:
	trainer EVENT_BEAT_BRUNOS_ROOM_TRAINER_0, 0, BrunoBeforeBattleText, BrunoEndBattleText, BrunoAfterBattleText
	db -1 ; end

BrunoText1:
	text_asm
	ld hl, BrunoTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

BrunoBeforeBattleText:
	text "I am BRUNO of"
	line "the ELITE FOUR!"

	para "Through rigorous"
	line "training, people"
	cont "and #MON can"
	cont "become stronger!"

	para "I've weight"
	line "trained with"
	cont "my #MON!"

	para "<PLAYER>!"

	para "We will grind you"
	line "down with our"
	cont "superior power!"

	para "Hoo hah!"
	done

BrunoEndBattleText:
	text "Why?"
	line "How could I lose?"
	prompt

BrunoAfterBattleText:
	text "My job is done!"
	line "Go face your next"
	cont "challenge!"
	done

BrunoDontRunAwayText:
	text "Someone's voice:"
	line "Don't run away!"
	done
