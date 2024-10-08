PlayerStepOutFromDoor::
	ld hl, wd730
	res 1, [hl]
	call IsPlayerStandingOnDoorTile
	jr nc, .notStandingOnDoor
	ld a, $fc
	ld [wJoyIgnore], a
	ld hl, wd736
	set 1, [hl]
	ld a, $1
	ld [wSimulatedJoypadStatesIndex], a
	ld a, D_DOWN
	ld [wSimulatedJoypadStatesEnd], a
	xor a
	ld [wSpritePlayerStateData1ImageIndex], a
	call StartSimulatingJoypadStates
	ret
.notStandingOnDoor
	xor a
	ld [wWastedByteCD3A], a
	ld [wSimulatedJoypadStatesIndex], a
	ld [wSimulatedJoypadStatesEnd], a
	ld hl, wd736
	res 0, [hl]
	res 1, [hl]
	ld hl, wd730
	res 7, [hl]
	ret

_EndNPCMovementScript::
	ld hl, wd730
	res 7, [hl]
	ld hl, wd72e
	res 7, [hl]
	ld hl, wd736
	res 0, [hl]
	res 1, [hl]
	xor a
	ld [wNPCMovementScriptSpriteOffset], a
	ld [wNPCMovementScriptPointerTableNum], a
	ld [wNPCMovementScriptFunctionNum], a
	ld [wWastedByteCD3A], a
	ld [wSimulatedJoypadStatesIndex], a
	ld [wSimulatedJoypadStatesEnd], a
	ret

NewBarkMovementScriptPointerTable::
	dw NewBarkMovementScript_LadyMoveOver
	dw NewBarkMovementScript_PlayerMoveOver
	dw NewBarkMovementScript_WaitAndWalkBack
	dw NewBarkMovementScript_WalkBack
	dw NewBarkMovementScript_Done

NewBarkMovementScript_LadyMoveOver:
	ld a, 1
	ld [wNumStepsToTake], a
	ld b, 0
	ld c, a
	ld hl, wNPCMovementDirections2
	ld a, NPC_MOVEMENT_RIGHT
	call FillMemory
	ld [hl], $ff
	ld a, [wSpriteIndex]
	ldh [hSpriteIndex], a
	ld de, wNPCMovementDirections2
	call MoveSprite
	ld a, $1
	ld [wNPCMovementScriptFunctionNum], a
	ld a, $fc
	ld [wJoyIgnore], a
	ret

NewBarkMovementScript_PlayerMoveOver:
	ld a, [wd730]
	bit 0, a ; is an NPC being moved by a script?
	ret nz ; return if Lady is still moving
	ld a, [wNumStepsToTake]
	ld [wSimulatedJoypadStatesIndex], a
	ldh [hNPCMovementDirections2Index], a
	predef ConvertNPCMovementDirectionsToJoypadMasks
	call StartSimulatingJoypadStates
	ld a, $2
	ld [wNPCMovementScriptFunctionNum], a
	ret

NewBarkMovementScript_WaitAndWalkBack:
	ld a, [wSimulatedJoypadStatesIndex]
	and a ; is the player done moving left yet?
	ret nz

NewBarkMovementScript_WalkBack:
	xor a
	ld [wOverrideSimulatedJoypadStatesMask], a
	ld a, [wSpriteIndex]
	swap a
	ld [wNPCMovementScriptSpriteOffset], a
	xor a
	ld [wSpritePlayerStateData2MovementByte1], a
	ld hl, wSimulatedJoypadStatesEnd
	ld a, [wYCoord]
	cp 8
	ld de, RLEList_PlayerFollowLady
	jr z, .gotCoord
	ld de, RLEList_PlayerFollowLady2
.gotCoord
	call DecodeRLEList
	dec a
	ld [wSimulatedJoypadStatesIndex], a
	ld hl, wNPCMovementDirections2
	ld a, [wYCoord]
	cp 8
	ld de, RLEList_LadyWalkBack
	jr z, .gotCoord2
	ld de, RLEList_LadyWalkBack2
.gotCoord2
	call DecodeRLEList
	ld hl, wd72e
	res 7, [hl]
	ld hl, wd730
	set 7, [hl]
	ld a, $4
	ld [wNPCMovementScriptFunctionNum], a
	ret

RLEList_LadyWalkBack:
	db NPC_MOVEMENT_RIGHT, 5
	db -1 ; end

RLEList_LadyWalkBack2:
	db NPC_MOVEMENT_RIGHT, 4
	db -1 ; end

RLEList_PlayerFollowLady:
	db D_RIGHT, 4
	db NO_INPUT, 1
	db -1 ; end

RLEList_PlayerFollowLady2:
	db D_RIGHT, 4
	db D_UP, 1
	db -1 ; end

NewBarkMovementScript_Done:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	ld hl, wd730
	res 7, [hl]
	ld hl, wd72e
	res 7, [hl]
	jp EndNPCMovementScript

PewterMuseumGuyMovementScriptPointerTable::
	dw PewterMovementScript_WalkToMuseum
	dw PewterMovementScript_Done

PewterMovementScript_WalkToMuseum:
	ld a, MUSIC_MUSEUM_GUY
	call PlayMusic
	ld a, [wSpriteIndex]
	swap a
	ld [wNPCMovementScriptSpriteOffset], a
	call StartSimulatingJoypadStates
	ld hl, wSimulatedJoypadStatesEnd
	ld de, RLEList_PewterMuseumPlayer
	call DecodeRLEList
	dec a
	ld [wSimulatedJoypadStatesIndex], a
	xor a
	ld [wWhichPewterGuy], a
	predef PewterGuys
	ld hl, wNPCMovementDirections2
	ld de, RLEList_PewterMuseumGuy
	call DecodeRLEList
	ld hl, wd72e
	res 7, [hl]
	ld a, $1
	ld [wNPCMovementScriptFunctionNum], a
	ret

RLEList_PewterMuseumPlayer:
	db NO_INPUT, 1
	db D_UP, 3
	db D_LEFT, 13
	db D_UP, 6
	db -1 ; end

RLEList_PewterMuseumGuy:
	db NPC_MOVEMENT_UP, 6
	db NPC_MOVEMENT_LEFT, 13
	db NPC_MOVEMENT_UP, 3
	db NPC_MOVEMENT_LEFT, 1
	db -1 ; end

PewterMovementScript_Done:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	ld hl, wd730
	res 7, [hl]
	ld hl, wd72e
	res 7, [hl]
	jp EndNPCMovementScript

PewterGymGuyMovementScriptPointerTable::
	dw PewterMovementScript_WalkToGym
	dw PewterMovementScript_Done

PewterMovementScript_WalkToGym:
	ld a, MUSIC_MUSEUM_GUY
	call PlayMusic
	ld a, [wSpriteIndex]
	swap a
	ld [wNPCMovementScriptSpriteOffset], a
	xor a
	ld [wSpritePlayerStateData2MovementByte1], a
	ld hl, wSimulatedJoypadStatesEnd
	ld de, RLEList_PewterGymPlayer
	call DecodeRLEList
	dec a
	ld [wSimulatedJoypadStatesIndex], a
	ld a, 1
	ld [wWhichPewterGuy], a
	predef PewterGuys
	ld hl, wNPCMovementDirections2
	ld de, RLEList_PewterGymGuy
	call DecodeRLEList
	ld hl, wd72e
	res 7, [hl]
	ld hl, wd730
	set 7, [hl]
	ld a, $1
	ld [wNPCMovementScriptFunctionNum], a
	ret

RLEList_PewterGymPlayer:
	db NO_INPUT, 1
	db D_RIGHT, 2
	db D_DOWN, 5
	db D_LEFT, 11
	db D_UP, 5
	db D_LEFT, 15
	db -1 ; end

RLEList_PewterGymGuy:
	db NPC_MOVEMENT_DOWN, 2
	db NPC_MOVEMENT_LEFT, 15
	db NPC_MOVEMENT_UP, 5
	db NPC_MOVEMENT_LEFT, 11
	db NPC_MOVEMENT_DOWN, 5
	db NPC_MOVEMENT_RIGHT, 3
	db -1 ; end

FreezeEnemyTrainerSprite::
	ld a, [wCurRegion]
	and a ; Kanto?
	jr nz, .notPokemonTower7F
	ld a, [wCurMap]
	cp POKEMON_TOWER_7F
	ret z ; the Rockets on Pokemon Tower 7F leave after battling, so don't freeze them
.notPokemonTower7F
	ld hl, RivalIDs
	ld a, [wEngagedTrainerClass]
	ld b, a
.loop
	ld a, [hli]
	cp -1
	jr z, .notRival
	cp b
	ret z ; the rival leaves after battling, so don't freeze him
	jr .loop
.notRival
	ld a, [wSpriteIndex]
	ldh [hSpriteIndex], a
	jp SetSpriteMovementBytesToFF

RivalIDs:
	db RIVAL1
	db RIVAL2
	db -1 ; end
