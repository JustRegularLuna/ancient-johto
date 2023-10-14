; Text Constants
	const_def 1
	; NPCs
	const_export CHAMPIONS_ROOM_CHAMPION
	const_export CHAMPIONS_ROOM_OAK

ChampionsRoom_Object:
	db $3 ; border block

	def_warps
	warp  3,  7, 1, LANCES_ROOM
	warp  4,  7, 2, LANCES_ROOM
	warp  3,  0, 0, HALL_OF_FAME
	warp  4,  0, 0, HALL_OF_FAME

	def_signs

	def_objects
	object SPRITE_BLUE, 4, 2, STAY, DOWN, 1 ; person
	object SPRITE_OAK, 3, 7, STAY, UP, 2 ; person

	def_warps_to CHAMPIONS_ROOM

ChampionsRoom_Script:
	call EnableAutoTextBoxDrawing
	ld hl, ChampionsRoom_ScriptPointers
	ld a, [wChampionsRoomCurScript]
	jp CallFunctionInTable

ResetChampionScript:
	xor a
	ld [wJoyIgnore], a
	ld [wChampionsRoomCurScript], a
	ret

ChampionsRoom_ScriptPointers:
	dw ChampionScript0
	dw ChampionScript1
	dw ChampionScript2
	dw ChampionScript3
	dw ChampionScript4
	dw ChampionScript5
	dw ChampionScript6
	dw ChampionScript7
	dw ChampionScript8
	dw ChampionScript9
	dw ChampionScript10

ChampionScript0:
	ret

ChampionScript1:
	ld a, $ff
	ld [wJoyIgnore], a
	ld hl, wSimulatedJoypadStatesEnd
	ld de, ChampionEntrance_RLEMovement
	call DecodeRLEList
	dec a
	ld [wSimulatedJoypadStatesIndex], a
	call StartSimulatingJoypadStates
	ld a, $2
	ld [wChampionsRoomCurScript], a
	ret

ChampionEntrance_RLEMovement:
	db D_UP, 1
	db D_RIGHT, 1
	db D_UP, 3
	db -1 ; end

ChampionScript2:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	call Delay3
	xor a
	ld [wJoyIgnore], a
	ld hl, wOptions
	res 7, [hl]  ; Turn on battle animations to make the battle feel more epic.
	ld a, $1
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	call Delay3
	ld hl, wd72d
	set 6, [hl]
	set 7, [hl]
	ld hl, ChampionDefeatedText
	ld de, ChampionVictoryText
	call SaveEndBattleTextPointers
	ld a, CHAMPION
	ld [wCurOpponent], a

	; select which team to use during the encounter
	ld a, [wRivalStarter]
	cp STARTER2
	jr nz, .NotStarter2
	ld a, $1
	jr .saveTrainerId
.NotStarter2
	cp STARTER3
	jr nz, .NotStarter3
	ld a, $2
	jr .saveTrainerId
.NotStarter3
	ld a, $3
.saveTrainerId
	ld [wTrainerNo], a

	xor a
	ldh [hJoyHeld], a
	ld a, $3
	ld [wChampionsRoomCurScript], a
	ret

ChampionScript3:
	ld a, [wIsInBattle]
	cp $ff
	jp z, ResetChampionScript
	call UpdateSprites
	SetEvent EVENT_BEAT_CHAMPION_RIVAL
	ld a, $f0
	ld [wJoyIgnore], a
	ld a, $1
	ldh [hSpriteIndexOrTextID], a
	call ChampionScript_760c8
	ld a, $1
	ldh [hSpriteIndex], a
	call SetSpriteMovementBytesToFF
	ld a, $4
	ld [wChampionsRoomCurScript], a
	ret

ChampionScript4:
	farcall Music_Cities1AlternateTempo
	ld a, $2
	ldh [hSpriteIndexOrTextID], a
	call ChampionScript_760c8
	ld a, $2
	ldh [hSpriteIndex], a
	call SetSpriteMovementBytesToFF
	ld de, OakEntranceAfterVictoryMovement
	ld a, $2
	ldh [hSpriteIndex], a
	call MoveSprite
	ld a, HS_CHAMPIONS_ROOM_OAK
	ld [wMissableObjectIndex], a
	predef ShowObject
	ld a, $5
	ld [wChampionsRoomCurScript], a
	ret

OakEntranceAfterVictoryMovement:
	db NPC_MOVEMENT_UP
	db NPC_MOVEMENT_UP
	db NPC_MOVEMENT_UP
	db NPC_MOVEMENT_UP
	db NPC_MOVEMENT_UP
	db -1 ; end

ChampionScript5:
	ld a, [wd730]
	bit 0, a
	ret nz
	ld a, PLAYER_DIR_LEFT
	ld [wPlayerMovingDirection], a
	ld a, $1
	ldh [hSpriteIndex], a
	ld a, SPRITE_FACING_LEFT
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	ld a, $2
	ldh [hSpriteIndex], a
	xor a ; SPRITE_FACING_DOWN
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	ld a, $3
	ldh [hSpriteIndexOrTextID], a
	call ChampionScript_760c8
	ld a, $6
	ld [wChampionsRoomCurScript], a
	ret

ChampionScript6:
	ld a, $2
	ldh [hSpriteIndex], a
	ld a, SPRITE_FACING_RIGHT
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	ld a, $4
	ldh [hSpriteIndexOrTextID], a
	call ChampionScript_760c8
	ld a, $7
	ld [wChampionsRoomCurScript], a
	ret

ChampionScript7:
	ld a, $2
	ldh [hSpriteIndex], a
	xor a ; SPRITE_FACING_DOWN
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	ld a, $5
	ldh [hSpriteIndexOrTextID], a
	call ChampionScript_760c8
	ld de, OakExitChampionRoomMovement
	ld a, $2
	ldh [hSpriteIndex], a
	call MoveSprite
	ld a, $8
	ld [wChampionsRoomCurScript], a
	ret

OakExitChampionRoomMovement:
	db NPC_MOVEMENT_UP
	db NPC_MOVEMENT_UP
	db -1 ; end

ChampionScript8:
	ld a, [wd730]
	bit 0, a
	ret nz
	ld a, HS_CHAMPIONS_ROOM_OAK
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, $9
	ld [wChampionsRoomCurScript], a
	ret

ChampionScript9:
	ld a, $ff
	ld [wJoyIgnore], a
	ld hl, wSimulatedJoypadStatesEnd
	ld de, WalkToHallOfFame_RLEMovment
	call DecodeRLEList
	dec a
	ld [wSimulatedJoypadStatesIndex], a
	call StartSimulatingJoypadStates
	ld a, $a
	ld [wChampionsRoomCurScript], a
	ret

WalkToHallOfFame_RLEMovment:
	db D_UP, 4
	db D_LEFT, 1
	db -1 ; end

ChampionScript10:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	xor a
	ld [wJoyIgnore], a
	ld a, $0
	ld [wChampionsRoomCurScript], a
	ret

ChampionScript_760c8:
	ld a, $f0
	ld [wJoyIgnore], a
	call DisplayTextID
	ld a, $ff
	ld [wJoyIgnore], a
	ret

ChampionsRoom_TextPointers:
	dw ChampionText1
	dw ChampionText2
	dw ChampionText3
	dw ChampionText4
	dw ChampionText5

ChampionText1:
	text_asm
	CheckEvent EVENT_BEAT_CHAMPION_RIVAL
	ld hl, ChampionChampionIntroText
	jr z, .printText
	ld hl, ChampionText_76103
.printText
	call PrintText
	jp TextScriptEnd

ChampionChampionIntroText:
	text "<RIVAL>: Hey!"

	para "I was looking"
	line "forward to seeing"
	cont "you, <PLAYER>!"

	para "My rival should"
	line "be strong to keep"
	cont "me sharp!"

	para "While working on"
	line "#DEX, I looked"
	cont "all over for"
	cont "powerful #MON!"

	para "Not only that, I"
	line "assembled teams"
	cont "that would beat"
	cont "any #MON type!"

	para "And now!"

	para "I'm the #MON"
	line "LEAGUE champion!"

	para "<PLAYER>! Do you"
	line "know what that"
	cont "means?"

	para "I'll tell you!"

	para "I am the most"
	line "powerful trainer"
	cont "in the world!"
	done

ChampionDefeatedText:
	text "NO!"
	line "That can't be!"
	cont "You beat my best!"

	para "After all that"
	line "work to become"
	cont "LEAGUE champ?"

	para "My reign is over"
	line "already?"
	cont "It's not fair!"
	prompt

ChampionVictoryText:
	text "Hahaha!"
	line "I won, I won!"

	para "I'm too good for"
	line "you, <PLAYER>!"

	para "You did well to"
	line "even reach me,"
	cont "<RIVAL>, the"
	cont "#MON genius!"

	para "Nice try, loser!"
	line "Hahaha!"
	prompt

ChampionText_76103:
	text "Why?"
	line "Why did I lose?"

	para "I never made any"
	line "mistakes raising"
	cont "my #MON..."

	para "Darn it! You're"
	line "the new #MON"
	cont "LEAGUE champion!"

	para "Although I don't"
	line "like to admit it."
	done

ChampionText2:
	text "OAK: <PLAYER>!"
	done

ChampionText3:
	text_asm
	ld a, [wPlayerStarter]
	ld [wd11e], a
	call GetMonName
	ld hl, ChampionText_76120
	call PrintText
	jp TextScriptEnd

ChampionText_76120:
	text "OAK: So, you won!"
	line "Congratulations!"
	cont "You're the new"
	cont "#MON LEAGUE"
	cont "champion!"

	para "You've grown up so"
	line "much since you"
	cont "first left with"
	cont "@"
	text_ram wcd6d
	text "!"

	para "<PLAYER>, you have"
	line "come of age!"
	done

ChampionText4:
	text "OAK: <RIVAL>! I'm"
	line "disappointed!"

	para "I came when I"
	line "heard you beat"
	cont "the ELITE FOUR!"

	para "But, when I got"
	line "here, you had"
	cont "already lost!"

	para "<RIVAL>! Do you"
	line "understand why"
	cont "you lost?"

	para "You have forgotten"
	line "to treat your"
	cont "#MON with"
	cont "trust and love!"

	para "Without them, you"
	line "will never become"
	cont "a champ again!"
	done

ChampionText5:
	text "OAK: <PLAYER>!"

	para "You understand"
	line "that your victory"
	cont "was not just your"
	cont "own doing!"

	para "The bond you share"
	line "with your #MON"
	cont "is marvelous!"

	para "<PLAYER>!"
	line "Come with me!"
	done
