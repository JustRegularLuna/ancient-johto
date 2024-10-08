; text constants
	const_def 1
	; NPCs
	const_export SILENT_GIRL
	const_export SILENT_FISHER
	const_export SILENT_RIVAL
	; Signs
	const SILENT_HILLS_SIGN
	const SILENT_PLAYERS_HOUSE_SIGN
	const SILENT_ELMS_HOUSE_SIGN
	const SILENT_ELMS_LAB_SIGN
	const SILENT_POKECENTER_SIGN
	; Other
	const SILENT_HEY_WAIT_TEXT

SilentHills_Object:
	db $39 ; border block

	def_warp_events
	warp_event  5,  5, PLAYERS_HOUSE_1F, 2
	warp_event 11,  5, SILENT_POKECENTER, 1
	warp_event  3, 13, ELMS_HOUSE, 1
	warp_event 15, 13, ELMS_LAB, 2
	warp_event 14, 13, ELMS_LAB, 2

	def_bg_events
	bg_event 12,  8, SILENT_HILLS_SIGN
	bg_event  3,  5, SILENT_PLAYERS_HOUSE_SIGN
	bg_event  7, 13, SILENT_ELMS_HOUSE_SIGN
	bg_event 11, 13, SILENT_ELMS_LAB_SIGN
	bg_event 12,  5, SILENT_POKECENTER_SIGN

	def_object_events
	object_event  6,  8, SPRITE_GIRL, STAY, NONE, SILENT_GIRL
	object_event 14,  6, SPRITE_FISHER, STAY, RIGHT, SILENT_FISHER
	object_event  5,  8, SPRITE_RIVAL, STAY, RIGHT, SILENT_RIVAL

	def_warps_to SILENT_HILLS


SilentHills_Script:
	call EnableAutoTextBoxDrawing
	ld hl, SilentHills_ScriptPointers
	ld a, [wSilentHillsCurScript]
	jp CallFunctionInTable

SilentHills_ScriptPointers:
	const_def
	dw_const SilentHillsLeaveHouseScript,   SCRIPT_SILENT_LEAVE_HOUSE
	dw_const SilentHillsMeetRivalScript,    SCRIPT_SILENT_MEET_RIVAL
	dw_const SilentHillsRivalLeavesScript,  SCRIPT_SILENT_RIVAL_LEAVES
	dw_const SilentHillsBlockExitScript,    SCRIPT_SILENT_BLOCK_EXIT
	dw_const SilentHillsHeyWaitScript,      SCRIPT_SILENT_HEY_WAIT
	dw_const SilentHillsWalkToPlayerScript, SCRIPT_SILENT_WALK_TO_PLAYER
	dw_const SilentHillsNotSafeScript,      SCRIPT_SILENT_NOT_SAFE
	dw_const SilentHillsFollowLadyScript,   SCRIPT_SILENT_FOLLOW_LADY
	dw_const SilentHillsNoopScript,         SCRIPT_SILENT_NOOP

SilentHillsLeaveHouseScript:
	; wait for you to finish walking out the door
	call IsPlayerCharacterBeingControlledByGame
	ret nz
	; show "!" above player's head
	xor a
	ld [wEmotionBubbleSpriteIndex], a ; player's sprite
	ld [wWhichEmotionBubble], a ; EXCLAMATION_BUBBLE
	predef EmotionBubble
	; have rival walk up
	ld a, SFX_STOP_ALL_MUSIC
	call PlaySound
	ld a, MUSIC_RIVAL_ENCOUNTER
	call PlayMusic
	ld a, SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld de, .walkToDoor
	ld a, SILENT_RIVAL
	ldh [hSpriteIndex], a
	call MoveSprite
	ld a, SCRIPT_SILENT_MEET_RIVAL
	ld [wSilentHillsCurScript], a
	ret

.walkToDoor
	db NPC_MOVEMENT_UP
	db -1

SilentHillsMeetRivalScript:
	; Is Kamon finished walking?
	ld a, [wd730]
	bit 0, a
	ret nz
	; Have him bother you
	ld a, SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, SILENT_RIVAL
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	; Walk away after the bothers you
	ld de, .walkAway
	ld a, SILENT_RIVAL
	ldh [hSpriteIndex], a
	call MoveSprite
	; trigger the next scene
	ld a, SCRIPT_SILENT_RIVAL_LEAVES
	ld [wSilentHillsCurScript], a
	ret

.walkAway
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_RIGHT
	db -1

SilentHillsRivalLeavesScript:
	; Is Kamon finished walking?
	ld a, [wd730]
	bit 0, a
	ret nz

	; Hide his NPC
	ld a, HS_SILENT_RIVAL
	ld [wMissableObjectIndex], a
	predef HideObject

	; stop ignoring input once the scene is over
	xor a
	ld [wJoyIgnore], a
	call PlayDefaultMusic

	; trigger the next scene
	ld a, SCRIPT_SILENT_BLOCK_EXIT
	ld [wSilentHillsCurScript], a
	ret

SilentHillsBlockExitScript:
	ld a, [wXCoord]
	cp 1 ; is player near the edge of the map?
	ret nz
	ld a, [wYCoord]
	; is the player in the actual exit?
	cp 8
	jr z, .ok
	cp 9
	ret nz
.ok
	; Mark you as having tried to leave town early
	SetEvent EVENT_TRIED_TO_LEAVE_EARLY

	; have the lady notice  you
	ld a, SILENT_GIRL
	ldh [hSpriteIndex], a
	ld a, SPRITE_FACING_LEFT
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	call Delay3

	xor a
	ldh [hJoyHeld], a
	ld a, PLAYER_DIR_RIGHT
	ld [wPlayerMovingDirection], a
	ld a, SFX_STOP_ALL_MUSIC
	call PlaySound
	ld a, MUSIC_BEAUTY_ENCOUNTER
	call PlayMusic
	ld a, SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a

	; trigger next scene
	ld a, SCRIPT_SILENT_HEY_WAIT
	ld [wSilentHillsCurScript], a
	ret

SilentHillsHeyWaitScript:
	xor a
	ld [wcf0d], a ; marks which text to show when
	ld a, SILENT_HEY_WAIT_TEXT
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a

	; trigger the next scene
	ld a, SCRIPT_SILENT_WALK_TO_PLAYER
	ld [wSilentHillsCurScript], a
	ret

SilentHillsWalkToPlayerScript:
	; make the lady face you
	ld a, SILENT_GIRL
	ldh [hSpriteIndex], a
	ld a, SPRITE_FACING_LEFT
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	call Delay3

	ld a, [wYCoord]
	cp 8 ; are you on the top side of the path?
	ld de, .moveToTop
	jr z, .gotLocation
	ld de, .moveToBottom
.gotLocation
	ld a, SILENT_GIRL
	ldh [hSpriteIndex], a
	call MoveSprite
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a

	; trigger the next scene
	ld a, SCRIPT_SILENT_NOT_SAFE
	ld [wSilentHillsCurScript], a
	ret

.moveToBottom
	db NPC_MOVEMENT_LEFT
.moveToTop
	db NPC_MOVEMENT_LEFT
	db NPC_MOVEMENT_LEFT
	db NPC_MOVEMENT_LEFT
	db NPC_MOVEMENT_LEFT
	db -1

SilentHillsNotSafeScript:
	ld a, [wd730]
	bit 0, a
	ret nz

	ld a, [wYCoord]
	cp 8 ; are we on the top path?
	ld a, SPRITE_FACING_RIGHT
	jr z, .gotLocation
	ld a, SPRITE_FACING_UP
.gotLocation
	ld [wSpritePlayerStateData1FacingDirection], a

	ld a, SILENT_GIRL
	ldh [hSpriteIndex], a
	ld a, [wYCoord]
	cp 8 ; are we on the top path?
	ld a, SPRITE_FACING_LEFT
	jr z, .gotLocation2
	ld a, SPRITE_FACING_DOWN
.gotLocation2
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay

	ld a, 1
	ld [wcf0d], a
	ld a, SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, SILENT_HEY_WAIT_TEXT
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID

	; set up the movement to make you follow the girl away from the exit
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, SILENT_GIRL
	ld [wSpriteIndex], a
	xor a
	ld [wNPCMovementScriptFunctionNum], a
	ld a, 1
	ld [wNPCMovementScriptPointerTableNum], a
	ldh a, [hLoadedROMBank]
	ld [wNPCMovementScriptBank], a

	; trigger the next scene
	ld a, SCRIPT_SILENT_FOLLOW_LADY
	ld [wSilentHillsCurScript], a
	ret

SilentHillsFollowLadyScript:
	ld a, [wNPCMovementScriptPointerTableNum]
	and a ; is the movement script over?
	ret nz

	; stop ignoring input once the scene is over
	xor a
	ld [wJoyIgnore], a
	call PlayDefaultMusic

	; Make the girl not rubberband back to the exit
	ld a, $3C
	ldh [hSpriteScreenYCoord], a
	ld a, $50
	ldh [hSpriteScreenXCoord], a
	ld a, 8 + 4
	ldh [hSpriteMapYCoord], a
	ld a, 6 + 4
	ldh [hSpriteMapXCoord], a
	ld a, SILENT_GIRL
	ld [wSpriteIndex], a
	call SetSpritePosition1

	; trigger the next scene
	ld a, SCRIPT_SILENT_BLOCK_EXIT
	ld [wSilentHillsCurScript], a
	; fallthrough

SilentHillsNoopScript:
	ret

SilentHills_TextPointers:
	dw SilentGirlText
	dw SilentFatManText
	dw SilentRivalText
	dw SilentHillsSignText
	dw SilentPlayerHouseSignText
	dw SilentElmsHouseSignText
	dw SilentElmsLabSignText
	dw PokeCenterSignText
	dw SilentHeyWaitText

SilentGirlText:
	text_asm
	CheckEvent EVENT_GOT_POKEDEX
	ld hl, .TalkAfterMrPokemonText
	jr nz, .done
	CheckEvent EVENT_GOT_STARTER
	ld hl, .CutePokemonText
	jr nz, .done
	CheckEvent EVENT_TRIED_TO_LEAVE_EARLY
	ld hl, .NoLeavingEarlyText
	jr nz, .done
	; else
	ld hl, .WhatAJerkText
.done
	call PrintText
	jp TextScriptEnd

.WhatAJerkText
	text "That guy is such a"
	line "jerk!"

	para "I wonder what he's"
	line "even doing here?"
	done

.NoLeavingEarlyText
	text "You should go see"
	line "PROF.ELM before"

	para "you try to leave"
	line "town again."

	para "It isn't safe to"
	line "go out alone!"
	done

.CutePokemonText
	text "Aww, your #MON"
	line "is so cute!"

	para "I wish I had one"
	line "like that!"
	done

.TalkAfterMrPokemonText
	text "Going anywhere"
	line "feels safer when"

	para "you have #MON"
	line "by your side!"
	done

SilentFatManText:
	text_asm
	CheckEvent EVENT_GOT_POKEDEX
	ld hl, .TalkAfterMrPokemonText
	jr nz, .done
	; else
	ld hl, .TechnologyIsIncredible
.done
	call PrintText
	jp TextScriptEnd

.TechnologyIsIncredible
	text "Technology is"
	line "incredible!"

	para "You can instantly"
	line "trade #MON all"

	para "over the world,"
	line "like e-mail!"
	done

.TalkAfterMrPokemonText
	text "Technology is"
	line "incredible!"

	para "Wow, is that the"
	line "new #DEX?"

	para "I'll bet it has"
	line "information about"

	para "all sorts of new"
	line "#MON in it!"
	done

SilentRivalText:
	text "<RIVAL>: Well,"
	line "look what we have"
	cont "here…"

	para "A wimp that still"
	line "lives with their"
	cont "MOM!"

	para "What a loser…"

	para "You should just"
	line "stay home, kid."

	para "Stay out of my"
	line "way!"
	done

SilentHillsSignText:
	text "SILENT HILLS"

	para "The quiet town of"
	line "new beginnings."
	done

SilentPlayerHouseSignText:
	text "<PLAYER>'s HOUSE"
	done

SilentElmsHouseSignText:
	text "ELM's HOUSE"
	done

SilentElmsLabSignText:
	text "ELM #MON LAB"
	done

SilentHeyWaitText:
	text_asm
	ld a, [wcf0d]
	and a
	jr nz, .next
	ld a, 1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld hl, .HeyWaitDontGoOutText
	jr .done
.next
	ld hl, .ItsUnsafeText
.done
	call PrintText
	jp TextScriptEnd

.HeyWaitDontGoOutText:
	text "Wait, <PLAYER>!@"
	text_asm
	ld c, 10
	call DelayFrames
	xor a
	ld [wEmotionBubbleSpriteIndex], a ; player's sprite
	ld [wWhichEmotionBubble], a ; EXCLAMATION_BUBBLE
	predef EmotionBubble
	ld a, PLAYER_DIR_RIGHT
	ld [wPlayerMovingDirection], a
	jp TextScriptEnd

.ItsUnsafeText:
	text "What do you think"
	line "you're doing?"

	para "It's dangerous to"
	line "go out without a"
	cont "#MON!"
	done
