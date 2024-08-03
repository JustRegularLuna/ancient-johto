; text constants
	const_def 1
	; NPCs
	const_export SAKURA_RIVAL
	const_export SAKURA_ISLAND_GUY
	const_export SAKURA_LASS
	const_export SAKURA_GUY
	; Signs
	const SAKURA_POKECENTER_SIGN
	const SAKURA_MART_SIGN
	const SAKURA_TOWN_SIGN
	const SAKURA_GUIDE_GENT_SIGN
	const SAKURA_SECRET_HOUSE_SIGN
	const SAKURA_MR_POKEMON_SIGN

SakuraTown_Object:
	db $5D ; border block

	def_warp_events
	warp_event 31, 21, SAKURA_POKECENTER, 1
	warp_event 21, 21, SAKURA_MART, 1
	warp_event 21, 15, SAKURA_HOUSE_1, 1
	warp_event 21,  9, SAKURA_HOUSE_2, 1
	warp_event 33, 15, SAKURA_HOUSE_3, 1
	warp_event  5,  9, SAKURA_SECRET_HOUSE, 1
	warp_event 37,  7, MR_POKEMONS_HOUSE, 2

	def_bg_events
	bg_event 32, 21, SAKURA_POKECENTER_SIGN
	bg_event 22, 21, SAKURA_MART_SIGN
	bg_event 27, 15, SAKURA_TOWN_SIGN
	bg_event 20, 10, SAKURA_GUIDE_GENT_SIGN
	bg_event 15, 11, SAKURA_SECRET_HOUSE_SIGN
	bg_event 35,  7, SAKURA_MR_POKEMON_SIGN

	def_object_events
	object_event 40, 24, SPRITE_RIVAL, STAY, LEFT, SAKURA_RIVAL
	object_event  8, 26, SPRITE_FISHER, STAY, DOWN, SAKURA_ISLAND_GUY
	object_event 22, 17, SPRITE_LASS, WALK, LEFT_RIGHT, SAKURA_LASS
	object_event 28, 27, SPRITE_YOUNGSTER, STAY, DOWN, SAKURA_GUY

	def_warps_to SAKURA_TOWN


SakuraTown_Script:
	call EnableAutoTextBoxDrawing
	ld hl, SakuraTown_ScriptPointers
	ld a, [wSakuraTownCurScript]
	jp CallFunctionInTable

SakuraTown_ScriptPointers:
	const_def
	dw_const SakuraTownDefaultScript,       SCRIPT_SAKURA_DEFAULT
	dw_const SakuraTownBattleRivalScript,   SCRIPT_SAKURA_BATTLE_RIVAL
	dw_const SakuraTownDefeatedRivalScript, SCRIPT_SAKURA_DEFEATED_RIVAL
	dw_const SakuraTownWaitWalkDownScript,  SCRIPT_SAKURA_WAIT_WALK_DOWN
	dw_const SakuraTownRivalExitsScript,    SCRIPT_SAKURA_RIVAL_EXITS
	dw_const SakuraTownNoopScript,          SCRIPT_SAKURA_NOOP

SakuraTownDefaultScript:
	; If you have not been to Mr. Pokemon yet, then no Rival Battle yet
	CheckEvent EVENT_GOT_MYSTERY_EGG
	ret z
	; If you already beat the rival, no rival battle again
	CheckEvent EVENT_BEAT_SAKURA_RIVAL
	ret nz
	; Is the player trying to leave, after getting the Mystery Egg?
	ld a, [wXCoord]
	cp 35
	ret nz
	ld a, [wYCoord]
	cp 24
	jr z, .ok
	cp 25
	ret nz
.ok
	; If you are in the right place at the right time, do the Rival encounter
	ld a, SFX_STOP_ALL_MUSIC
	call PlaySound
	ld a, MUSIC_RIVAL_ENCOUNTER
	call PlayMusic
	; make the rival walk up to you
	ld a, [wYCoord]
	cp 24 ; is player on top path?
	ld de, .moveTopPath
	jr z, .gotLocation
	ld de, .moveBottomPath
.gotLocation
	ld a, SAKURA_RIVAL
	ldh [hSpriteIndex], a
	call MoveSprite
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a

	; trigger the next scene
	ld a, SCRIPT_SAKURA_BATTLE_RIVAL
	ld [wSakuraTownCurScript], a
	ret

.moveBottomPath
	db NPC_MOVEMENT_LEFT
.moveTopPath
	db NPC_MOVEMENT_LEFT
	db NPC_MOVEMENT_LEFT
	db NPC_MOVEMENT_LEFT
	db NPC_MOVEMENT_LEFT
	db -1

SakuraTownBattleRivalScript:
	; Is Kamon finished walking?
	ld a, [wd730]
	bit 0, a
	ret nz
	; Which path are you on?
	; If you are on the same level as each other, you are both already facing each other
	ld a, [wYCoord]
	cp 24
	jr z, .sameLevel
	; If he is on top path and you are below, turn to face each other
	ld a, SPRITE_FACING_UP
	ld [wSpritePlayerStateData1FacingDirection], a
	ld a, SAKURA_RIVAL
	ldh [hSpriteIndex], a
	ld a, SPRITE_FACING_DOWN
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
.sameLevel
	ld a, SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, SAKURA_RIVAL
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	xor a
	ldh [hJoyHeld], a
	ldh [hJoyPressed], a
	ret

SakuraTownDefeatedRivalScript:
	ld a, SFX_STOP_ALL_MUSIC
	call PlaySound
	ld a, MUSIC_RIVAL_ENCOUNTER
	call PlayMusic
	; Which path are you on?
	ld a, [wYCoord]
	cp 24
	jr z, .sameLevel
	; If he is on top path and you are below, turn to face each other
	ld a, SPRITE_FACING_UP
	ld [wSpritePlayerStateData1FacingDirection], a
	ld a, SAKURA_RIVAL
	ldh [hSpriteIndex], a
	ld a, SPRITE_FACING_DOWN
	ldh [hSpriteFacingDirection], a
	jr .setFacing
.sameLevel
	; If you are on the same path, turn to face each other
	ld a, SPRITE_FACING_RIGHT
	ld [wSpritePlayerStateData1FacingDirection], a
	ld a, SAKURA_RIVAL
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
	SetEvent EVENT_BEAT_SAKURA_RIVAL
	ld a, SAKURA_RIVAL
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	; If you are on the same level, move the player out of the way with a thud
	ld a, [wYCoord]
	cp 24
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
	ld a, SCRIPT_SAKURA_WAIT_WALK_DOWN
	ld [wSakuraTownCurScript], a
	ld [wCurMapScript], a
	ret

SakuraTownWaitWalkDownScript:
	ld a, A_BUTTON | B_BUTTON | D_UP | D_DOWN | D_LEFT | D_RIGHT | SELECT | START
	ld [wJoyIgnore], a
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz

	ld de, .RivalWalksAway
	ld a, SAKURA_RIVAL
	ldh [hSpriteIndex], a
	call MoveSprite
	ld a, SCRIPT_SAKURA_RIVAL_EXITS
	ld [wSakuraTownCurScript], a
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

SakuraTownRivalExitsScript:
	; Is Kamon still walking away?
	ld a, [wd730]
	bit 0, a
	ret nz
	ld a, HS_SAKURA_RIVAL
	ld [wMissableObjectIndex], a
	predef HideObject
	xor a
	ld [wJoyIgnore], a
	call PlayDefaultMusic
	ld a, SCRIPT_SAKURA_NOOP
	ld [wSakuraTownCurScript], a
	ld [wCurMapScript], a
	; fallthrough
SakuraTownNoopScript:
	ret

SakuraTown_TextPointers:
	dw SakuraTownRivalText
	dw SakuraIslandGuyText
	dw SakuraLassText
	dw SakuraGuyText
	dw PokeCenterSignText
	dw MartSignText
	dw SakuraTownSignText
	dw SakuraGuideGentSignText
	dw SakuraSecretHouseSignText
	dw SakuraMrPokemonsHouseSignText

SakuraTownRivalText:
	text_asm
	CheckEvent EVENT_BEAT_SAKURA_RIVAL
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
	ld a, SCRIPT_SAKURA_DEFEATED_RIVAL
	ld [wSakuraTownCurScript], a
	ld [wCurMapScript], a
.text_script_end
	jp TextScriptEnd

.WimpLikeYouText
	text "<RIVAL>: Well, if"
	line "it isn't the wimp"
	cont "from SILENT HILLS"
	cont "again!"

	para "You got a #MON"
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

SakuraIslandGuyText:
	text_asm
	CheckEvent EVENT_GOT_SAKURA_KINGS_ROCK
	jr nz, .got_item
	ld hl, .IntroductionText
	call PrintText
	lb bc, KINGS_ROCK, 1
	call GiveItem
	jr nc, .bag_full
	ld hl, .ReceivedItemText
	call PrintText
	SetEvent EVENT_GOT_SAKURA_KINGS_ROCK
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

SakuraLassText:
	text "Have you been to"
	line "the GUIDE GENT's"
	cont "house yet?"

	para "He'll give you a"
	line "map of the KANSAI"
	cont "region for free!"
	done

SakuraGuyText:
	text "Sometimes I sit"
	line "and watch the"
	cont "ocean like this."

	para "I wonder what all"
	line "there is to dis-"
	cont "cover out there?"
	done

SakuraTownSignText:
	text "SAKURA TOWN"

	para "A tranquil cherry"
	line "blossom grove."
	done

SakuraGuideGentSignText:
	text "GUIDE GENT's HOUSE"
	done

SakuraSecretHouseSignText:
	text "There's a note…"

	para "NO SOLICITORS!"
	done

SakuraMrPokemonsHouseSignText:
	text "MR.#MON's HOUSE"
	done
