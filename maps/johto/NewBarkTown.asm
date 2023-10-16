; text constants
	const_def 1
	; NPCs
	const_export NEWBARK_GIRL
	const_export NEWBARK_FISHER
	const_export NEWBARK_RIVAL
	; Signs
	const NEWBARK_TOWN_SIGN
	const NEWBARK_PLAYERS_HOUSE_SIGN
	const NEWBARK_ELMS_HOUSE_SIGN
	const NEWBARK_ELMS_LAB_SIGN
	; Other
	const NEWBARK_HEY_WAIT_TEXT

NewBarkTown_Object:
	db $5 ; border block

	def_warps
	warp 13,  5, 1, PLAYERS_HOUSE_1F
	warp  3, 11, 0, NEW_BARK_HOUSE_1
	warp 11, 13, 0, NEW_BARK_HOUSE_2
	warp  6,  3, 1, ELMS_LAB

	def_signs
	sign  8,  8, NEWBARK_TOWN_SIGN
	sign 11,  5, NEWBARK_PLAYERS_HOUSE_SIGN
	sign  9, 13, NEWBARK_ELMS_HOUSE_SIGN
	sign  3,  3, NEWBARK_ELMS_LAB_SIGN

	def_objects
	object SPRITE_GIRL,  6,  8, STAY, NONE, NEWBARK_GIRL
	object SPRITE_FISHER, 12,  9, WALK, ANY_DIR, NEWBARK_FISHER
	object SPRITE_RIVAL,  3,  2, STAY, RIGHT, NEWBARK_RIVAL

	def_warps_to NEW_BARK_TOWN


NewBarkTown_Script:
	call EnableAutoTextBoxDrawing
	ld hl, NewBarkTown_ScriptPointers
	ld a, [wNewBarkTownCurScript]
	jp CallFunctionInTable

NewBarkTown_ScriptPointers:
	const_def
	dw_const NewBarkTownBlockExitScript,    SCRIPT_NEWBARK_DEFAULT
	dw_const NewBarkTownHeyWaitScript,      SCRIPT_NEWBARK_HEY_WAIT
	dw_const NewBarkTownWalkToPlayerScript, SCRIPT_NEWBARK_WALK_TO_PLAYER
	dw_const NewBarkTownNotSafeScript,      SCRIPT_NEWBARK_NOT_SAFE
	dw_const NewBarkTownFollowLadyScript,   SCRIPT_NEWBARK_FOLLOW_LADY
	dw_const NewBarkTownNoopScript,         SCRIPT_NEWBARK_NOOP

NewBarkTownBlockExitScript:
	ld a, [wYCoord]
	cp 10 ; is the player in the top half of the map?
	ret nc

	ld a, [wXCoord]
	cp 1 ; is player trying to leave?
	ret nz

	; have the lady notice  you
	ld a, NEWBARK_GIRL
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
	ld a, 0
	ld c, a
	ld a, MUSIC_BEAUTY_ENCOUNTER
	call PlayMusic
	ld a, SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a

	; trigger next scene
	ld a, SCRIPT_NEWBARK_HEY_WAIT
	ld [wNewBarkTownCurScript], a
	ret

NewBarkTownHeyWaitScript:
	xor a
	ld [wcf0d], a ; marks which text to show when
	ld a, NEWBARK_HEY_WAIT_TEXT
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a

	; trigger the next scene
	ld a, SCRIPT_NEWBARK_WALK_TO_PLAYER
	ld [wNewBarkTownCurScript], a
	ret

NewBarkTownWalkToPlayerScript:
	; make the lady face you
	ld a, NEWBARK_GIRL
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
	ld a, NEWBARK_GIRL
	ldh [hSpriteIndex], a
	call MoveSprite
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a

	; trigger the next scene
	ld a, SCRIPT_NEWBARK_NOT_SAFE
	ld [wNewBarkTownCurScript], a
	ret

.moveToBottom
	db NPC_MOVEMENT_LEFT
.moveToTop
	db NPC_MOVEMENT_LEFT
	db NPC_MOVEMENT_LEFT
	db NPC_MOVEMENT_LEFT
	db NPC_MOVEMENT_LEFT
	db -1

NewBarkTownNotSafeScript:
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

	ld a, NEWBARK_GIRL
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
	ld a, NEWBARK_HEY_WAIT_TEXT
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID

	; set up the movement to make you follow the girl away from the exit
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, NEWBARK_GIRL
	ld [wSpriteIndex], a
	xor a
	ld [wNPCMovementScriptFunctionNum], a
	ld a, 1
	ld [wNPCMovementScriptPointerTableNum], a
	ldh a, [hLoadedROMBank]
	ld [wNPCMovementScriptBank], a

	; trigger the next scene
	ld a, SCRIPT_NEWBARK_FOLLOW_LADY
	ld [wNewBarkTownCurScript], a
	ret

NewBarkTownFollowLadyScript:
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
	ld a, NEWBARK_GIRL
	ld [wSpriteIndex], a
	call SetSpritePosition1

	; trigger the next scene
	ld a, SCRIPT_NEWBARK_DEFAULT
	ld [wNewBarkTownCurScript], a
	; fallthrough

NewBarkTownNoopScript:
	ret

NewBarkTown_TextPointers:
	dw NewBarkGirlText
	dw NewBarkFatManText
	dw NewBarkRivalText
	dw NewBarkTownSignText
	dw NewBarkPlayerHouseSignText
	dw NewBarkElmsHouseSignText
	dw NewBarkElmsLabSignText
	dw NewBarkHeyWaitText

NewBarkGirlText:
	text_asm
	CheckEvent EVENT_GOT_STARTER
	jr nz, .hasPokemon
	; no pokemon
	ld hl, NewBarkGirlText1
	jr .done
.hasPokemon
	ld hl, NewBarkGirlText2
.done
	call PrintText
	jp TextScriptEnd

NewBarkGirlText1:
	text "Hi, <PLAYER>!"

	para "Isn't today the"
	line "day you get your"
	cont "first #MON?"
	done

NewBarkGirlText2:
	text "Hi, <PLAYER>!"

	para "Aww, your #MON"
	line "is so cute!"
	done

NewBarkFatManText:
	text "Yo, <PLAYER>!"

	para "I hear PROF.ELM"
	line "discovered some"
	cont "new #MON."
	done

NewBarkRivalText:
	text "…"

	para "So, this is PROF."
	line "ELM's lab…"

	para "…"

	para "What are you look-"
	line "ing at, wimp?"
	done

NewBarkTownSignText:
	text "NEW BARK TOWN"

	para "The Town Where the"
	line "Winds of a New"
	cont "Beginning Blow"
	done

NewBarkPlayerHouseSignText:
	text "<PLAYER>'s HOUSE"
	done

NewBarkElmsHouseSignText:
	text "ELM'S HOUSE"
	done

NewBarkElmsLabSignText:
	text "ELM #MON LAB"
	done

NewBarkHeyWaitText:
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
