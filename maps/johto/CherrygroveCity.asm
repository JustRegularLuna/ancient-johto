; text constants
	const_def 1
	; NPCs
	const_export CHERRYGROVE_RIVAL
	const_export CHERRYGROVE_ISLAND_GUY
	const_export CHERRYGROVE_LASS
	const_export CHERRYGROVE_GUY
	; Signs
	const CHERRYGROVE_POKECENTER_SIGN
	const CHERRYGROVE_MART_SIGN
	const CHERRYGROVE_CITY_SIGN
	const CHERRYGROVE_GUIDE_GENT_SIGN

CherrygroveCity_Object:
	db $35 ; border block

	def_warps
	warp 29,  3, 0, CHERRYGROVE_POKECENTER
	warp 23,  3, 0, CHERRYGROVE_MART
	warp 17,  7, 0, CHERRYGROVE_HOUSE_1
	warp 25,  9, 0, CHERRYGROVE_HOUSE_2
	warp 31, 11, 0, CHERRYGROVE_HOUSE_3

	def_signs
	sign 30,  3, CHERRYGROVE_POKECENTER_SIGN
	sign 24,  3, CHERRYGROVE_MART_SIGN
	sign 30,  8, CHERRYGROVE_CITY_SIGN
	sign 23,  9, CHERRYGROVE_GUIDE_GENT_SIGN

	def_objects
	object SPRITE_RIVAL, 39,  6, STAY, LEFT, CHERRYGROVE_RIVAL
	object SPRITE_FISHER,  5, 12, STAY, DOWN, CHERRYGROVE_ISLAND_GUY
	object SPRITE_LASS, 21, 11, WALK, LEFT_RIGHT, CHERRYGROVE_LASS
	object SPRITE_YOUNGSTER, 11,  7, STAY, LEFT, CHERRYGROVE_GUY

	def_warps_to CHERRYGROVE_CITY


CherrygroveCity_Script:
	call EnableAutoTextBoxDrawing
	ld hl, CherrygroveCity_ScriptPointers
	ld a, [wCherrygroveCityCurScript]
	jp CallFunctionInTable

CherrygroveCity_ScriptPointers:
	const_def
	dw_const CherrygroveCityDefaultScript,       SCRIPT_CHERRYGROVE_DEFAULT
	dw_const CherrygroveCityBattleRivalScript,   SCRIPT_CHERRYGROVE_BATTLE_RIVAL
	dw_const CherrygroveCityDefeatedRivalScript, SCRIPT_CHERRYGROVE_DEFEATED_RIVAL
	dw_const CherrygroveCityWaitWalkDownScript,  SCRIPT_CHERRYGROVE_WAIT_WALK_DOWN
	dw_const CherrygroveCityRivalExitsScript,    SCRIPT_CHERRYGROVE_RIVAL_EXITS
	dw_const CherrygroveCityNoopScript,          SCRIPT_CHERRYGROVE_NOOP

CherrygroveCityDefaultScript:
	; If you have not been to Mr. Pokemon yet, then no Rival Battle yet
	CheckEvent EVENT_GOT_MYSTERY_EGG
	ret z
	; If you already beat the rival, no rival battle again
	CheckEvent EVENT_BEAT_CHERRYGROVE_RIVAL
	ret nz
	; Is the player trying to leave, after getting the Mystery Egg?
	ld a, [wXCoord]
	cp 34
	ret nz
	; If you are in the right place at the right time, do the Rival encounter
	ld a, SFX_STOP_ALL_MUSIC
	call PlaySound
	ld a, MUSIC_RIVAL_ENCOUNTER
	call PlayMusic
	; make the rival walk up to you
	ld a, [wYCoord]
	cp 6 ; is player on top path?
	ld de, .moveTopPath
	jr z, .gotLocation
	ld de, .moveBottomPath
.gotLocation
	ld a, CHERRYGROVE_RIVAL
	ldh [hSpriteIndex], a
	call MoveSprite
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a

	; trigger the next scene
	ld a, SCRIPT_CHERRYGROVE_BATTLE_RIVAL
	ld [wCherrygroveCityCurScript], a
	ret

.moveBottomPath
	db NPC_MOVEMENT_LEFT
.moveTopPath
	db NPC_MOVEMENT_LEFT
	db NPC_MOVEMENT_LEFT
	db NPC_MOVEMENT_LEFT
	db NPC_MOVEMENT_LEFT
	db -1

CherrygroveCityBattleRivalScript:
	; Is Kamon finished walking?
	ld a, [wd730]
	bit 0, a
	ret nz
	; Which path are you on?
	; If you are on the same level as each other, you are both already facing each other
	ld a, [wYCoord]
	cp 6
	jr z, .sameLevel
	; If he is on top path and you are below, turn to face each other
	ld a, SPRITE_FACING_UP
	ld [wSpritePlayerStateData1FacingDirection], a
	ld a, CHERRYGROVE_RIVAL
	ldh [hSpriteIndex], a
	ld a, SPRITE_FACING_DOWN
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
.sameLevel
	ld a, SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, CHERRYGROVE_RIVAL
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	xor a
	ldh [hJoyHeld], a
	ldh [hJoyPressed], a
	ret

CherrygroveCityDefeatedRivalScript:
	ld a, SFX_STOP_ALL_MUSIC
	call PlaySound
	ld a, MUSIC_RIVAL_ENCOUNTER
	call PlayMusic
	; Which path are you on?
	ld a, [wYCoord]
	cp 6
	jr z, .sameLevel
	; If he is on top path and you are below, turn to face each other
	ld a, SPRITE_FACING_UP
	ld [wSpritePlayerStateData1FacingDirection], a
	ld a, CHERRYGROVE_RIVAL
	ldh [hSpriteIndex], a
	ld a, SPRITE_FACING_DOWN
	ldh [hSpriteFacingDirection], a
	jr .setFacing
.sameLevel
	; If you are on the same path, turn to face each other
	ld a, SPRITE_FACING_RIGHT
	ld [wSpritePlayerStateData1FacingDirection], a
	ld a, CHERRYGROVE_RIVAL
	ldh [hSpriteIndex], a
	ld a, SPRITE_FACING_LEFT
	ldh [hSpriteFacingDirection], a
.setFacing
	call SetSpriteFacingDirectionAndDelay
	; Heal your Pokemon
	predef HealParty
	; show the after-battle text
	ld a, FALSE
	ld [wIsTrainerBattle], a
	ld a, D_RIGHT | D_LEFT | D_UP | D_DOWN | START | SELECT
	ld [wJoyIgnore], a
	SetEvent EVENT_BEAT_CHERRYGROVE_RIVAL
	ld a, CHERRYGROVE_RIVAL
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	; If you are on the same level, move the player out of the way with a thud
	ld a, [wYCoord]
	cp 6
	jr nz, .playerBelow
	ld a, SFX_COLLISION
	call PlaySound
	call StartSimulatingJoypadStates
	ld a, $1
	ld [wSimulatedJoypadStatesIndex], a
	ld a, D_DOWN
	ld [wSimulatedJoypadStatesEnd], a
	xor a
	ld [wSpritePlayerStateData1FacingDirection], a
.playerBelow
	ld a, SCRIPT_CHERRYGROVE_WAIT_WALK_DOWN
	ld [wCherrygroveCityCurScript], a
	ld [wCurMapScript], a
	ret

CherrygroveCityWaitWalkDownScript:
	ld a, A_BUTTON | B_BUTTON | D_UP | D_DOWN | D_LEFT | D_RIGHT | SELECT | START
	ld [wJoyIgnore], a
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz

	ld de, .RivalWalksAway
	ld a, CHERRYGROVE_RIVAL
	ldh [hSpriteIndex], a
	call MoveSprite
	ld a, SCRIPT_CHERRYGROVE_RIVAL_EXITS
	ld [wCherrygroveCityCurScript], a
	ld [wCurMapScript], a
	ret

.RivalWalksAway
	db NPC_MOVEMENT_LEFT
	db NPC_MOVEMENT_LEFT
	db NPC_MOVEMENT_LEFT
	db NPC_MOVEMENT_LEFT
	db NPC_MOVEMENT_LEFT
	db NPC_MOVEMENT_LEFT
	db -1

CherrygroveCityRivalExitsScript:
	; Is Kamon still walking away?
	ld a, [wd730]
	bit 0, a
	ret nz
	ld a, HS_CHERRYGROVE_RIVAL
	ld [wMissableObjectIndex], a
	predef HideObject
	xor a
	ld [wJoyIgnore], a
	call PlayDefaultMusic
	ld a, SCRIPT_CHERRYGROVE_NOOP
	ld [wCherrygroveCityCurScript], a
	ld [wCurMapScript], a
	; fallthrough
CherrygroveCityNoopScript:
	ret

CherrygroveCity_TextPointers:
	dw CherrygroveCityRivalText
	dw CherrygroveIslandGuyText
	dw CherrygroveLassText
	dw CherrygroveGuyText
	dw PokeCenterSignText
	dw MartSignText
	dw CherrygroveCitySignText
	dw CherrygroveGuideGentSignText

CherrygroveCityRivalText:
	text_asm
	CheckEvent EVENT_BEAT_CHERRYGROVE_RIVAL
	jr z, .do_battle

	; If you beat him, show his walking away text
	ld hl, .ImTheBestText
	call PrintText
	jr .text_script_end

.do_battle
	; If you are about to battle him, have him taunt you and load the battle info
	ld hl, .WimpLikeYouText
	call PrintText

	; Start setting trainer battle info
	ld hl, wd72d
	set 6, [hl]
	set 7, [hl]
	ld hl, .DefeatedText
	ld de, .VictoryText
	call SaveEndBattleTextPointers
	ld a, RIVAL1
	ld [wCurOpponent], a

	; Determind the team based on Rival Starter
	ld a, [wRivalStarter]
	cp STARTER2 ; Totodile
	jr nz, .notTotodile
	ld a, RIVAL1_1_TOTODILE
	jr .done
.notTotodile
	cp STARTER3 ; Chikorita
	jr nz, .notChikorita
	ld a, RIVAL1_1_CHIKORITA
	jr .done
.notChikorita
	; If it wasn't Totodile or Chikorita, it had to be Cyndaquil
	ld a, RIVAL1_1_CYNDAQUIL
.done
	ld [wTrainerNo], a
	ld a, TRUE
	ld [wIsTrainerBattle], a
	xor a
	ld [wJoyIgnore], a

	; Trigger the next map scene
	ld a, SCRIPT_CHERRYGROVE_DEFEATED_RIVAL
	ld [wCherrygroveCityCurScript], a
	ld [wCurMapScript], a
.text_script_end
	jp TextScriptEnd

.WimpLikeYouText
	text "You got a #MON"
	line "at the LAB?"

	para "What a waste… a"
	line "wimp like you."

	para "You probably don't"
	line "know anything"
	cont "about battling."

	para "…"

	para "Oh? If you think"
	line "you're so tough,"

	para "why don't we find"
	line "out!"
	done

.DefeatedText
	text "<RIVAL>: You just"
	line "got lucky!"
	prompt

.VictoryText
	text "<RIVAL>: Look at"
	line "your wimpy little"
	cont "#MON!"
	prompt

.ImTheBestText
	text "My name's <RIVAL>,"
	line "and I'm gonna be"

	para "the strongest"
	line "#MON trainer"
	cont "in the world."

	para "I don't need some"
	line "wimp like you"

	para "around, so stay"
	line "out of my way!"
	done

CherrygroveIslandGuyText:
	text_asm
	CheckEvent EVENT_GOT_CHERRYGROVE_KINGS_ROCK
	jr nz, .got_item
	ld hl, .IntroductionText
	call PrintText
	lb bc, KINGS_ROCK, 1
	call GiveItem
	jr nc, .bag_full
	ld hl, .ReceivedItemText
	call PrintText
	SetEvent EVENT_GOT_CHERRYGROVE_KINGS_ROCK
	jr .done
.bag_full
	ld hl, .ItemNoRoomText
	call PrintText
	jr .done
.got_item
	ld hl, .ItemExplanationText
	call PrintText
.done
	jp TextScriptEnd

.IntroductionText
	text "I found a strange"
	line "rock on the beach"
	cont "here."

	para "It almost looks"
	line "like a crown!"

	para "I don't have much"
	line "use for it, so"
	cont "I'll let you have"
	cont "it."
	prompt

.ReceivedItemText
	text "<PLAYER> received"
	line "KINGS ROCK!@"
	sound_get_key_item
	text_end

.ItemNoRoomText
	text "You have too much"
	line "stuff already."
	done

.ItemExplanationText
	text "Maybe you can let"
	line "a #MON wear"
	cont "that KINGS ROCK."

	para "It would make it"
	line "look regal!"
	done

CherrygroveLassText:
	text "Have you been to"
	line "the GUIDE GENT's"
	cont "house yet?"

	para "He'll give you a"
	line "map of the JOHTO"
	cont "region for free!"
	done

CherrygroveGuyText:
	text "Sometimes I sit"
	line "and watch the"
	cont "ocean like this."

	para "I wonder what all"
	line "there is to dis-"
	cont "cover out there?"
	done

CherrygroveCitySignText:
	text "CHERRYGROVE CITY"

	para "The city of cute"
	line "fragrant flowers."
	done

CherrygroveGuideGentSignText:
	text "GUIDE GENT's HOUSE"
	done
