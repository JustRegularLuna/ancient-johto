; text constants
	const_def 1
	; NPCs
	const_export KANSAI_ROUTE_2_BERRYTREE
	const_export KANSAI_ROUTE_2_BUG_CATCHER
	const_export KANSAI_ROUTE_2_HANDYMAN

	; Signs
	const KANSAI_ROUTE_2_SIGN
	const KANSAI_ROUTE_2_TIPS_SIGN
	const KANSAI_ROUTE_2_WOODS_SIGN

KansaiRoute2_Object:
	db $5D ; border block

	def_warp_events
	warp_event  9,  5, EVERGREEN_WOODS_SOUTH_GATE, 1
	warp_event 10,  5, EVERGREEN_WOODS_SOUTH_GATE, 2

	def_bg_events
	bg_event 12, 32, KANSAI_ROUTE_2_SIGN
	bg_event 11, 23, KANSAI_ROUTE_2_TIPS_SIGN
	bg_event 12,  6, KANSAI_ROUTE_2_WOODS_SIGN

	def_object_events
	object_event  5,  6, SPRITE_FRUIT_TREE, STAY, NONE, KANSAI_ROUTE_2_BERRYTREE
	object_event 14, 24, SPRITE_BUG_CATCHER, STAY, NONE, KANSAI_ROUTE_2_BUG_CATCHER
	object_event  9, 21, SPRITE_POKEFAN_M, STAY, UP, KANSAI_ROUTE_2_HANDYMAN

	def_warps_to KANSAI_ROUTE_2


KansaiRoute2_Script:
	call EnableAutoTextBoxDrawing
	ld hl, KansaiRoute2_ScriptPointers
	ld a, [wKansaiRoute2CurScript]
	jp CallFunctionInTable

KansaiRoute2_ScriptPointers:
	const_def
	dw_const KansaiRoute2DefaultScript,       SCRIPT_KANSAI_ROUTE_2_DEFAULT
	dw_const KansaiRoute2NoopScript,          SCRIPT_KANSAI_ROUTE_2_NOOP

KansaiRoute2DefaultScript:
	; Check if the player is trying to cross the bridge
	ld a, [wXCoord]
	cp 8
	ret nz
	ld a, [wYCoord]
	cp 21
	ret nz

	; show "!" above the Handyman's head
	ld a, KANSAI_ROUTE_2_HANDYMAN
	ld [wEmotionBubbleSpriteIndex], a
	xor a ; EXCLAMATION_BUBBLE
	ld [wWhichEmotionBubble], a
	predef EmotionBubble

	; have the Handyman look at the player
	ld a, KANSAI_ROUTE_2_HANDYMAN
	ldh [hSpriteIndex], a
	ld a, SPRITE_FACING_LEFT
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	call Delay3

	; look at him while he's talking to you
	xor a
	ldh [hJoyHeld], a
	ld a, PLAYER_DIR_RIGHT
	ld [wPlayerMovingDirection], a

	; Hit me with your text box, fire away
	ld a, KANSAI_ROUTE_2_HANDYMAN
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID

	; Take a step down
	xor a
	ldh [hJoyHeld], a
	call StartSimulatingJoypadStates
	ld a, $1
	ld [wSimulatedJoypadStatesIndex], a
	ld a, D_DOWN
	ld [wSimulatedJoypadStatesEnd], a
	xor a
	ld [wSpritePlayerStateData1FacingDirection], a
	ld [wJoyIgnore], a
	; fallthrough
KansaiRoute2NoopScript:
	ret

KansaiRoute2_TextPointers:
	dw KansaiRoute2BerryTreeText
	dw KansaiRoute2BugCatcherText
	dw KansaiRoute2HandymanText
	dw KansaiRoute2SignText
	dw KansaiRoute2TipsSignText
	dw KansaiRoute2ForestSignText

KansaiRoute2BerryTreeText:
	text_asm
	ld a, FRUITTREE_KANSAI_ROUTE_2
	ld [wWhichTrade], a
	farcall BerryTreeScript
	jp TextScriptEnd

KansaiRoute2BugCatcherText:
	text "I'm not looking to"
	line "battle anyone…"

	para "I just like to"
	line "collect #MON."

	para "My RINRING is so"
	line "snuggly and cute!"
	done

KansaiRoute2HandymanText:
	text "Whoa! Sorry, you"
	line "have to wait here"
	cont "for now."

	para "I'm doing a safety"
	line "inspection on the"
	cont "bridge here."

	para "Shouldn't take me"
	line "too long…"
	done

KansaiRoute2SignText:
	text "ROUTE 2"

	para "SAKURA TOWN -"
	line "BELLFLOWER CITY"
	done

KansaiRoute2TipsSignText:
	text "TRAINER TIPS"

	para "Fruit trees will"
	line "regrow BERRIES"
	cont "on their own."

	para "Check back after"
	line "you've walked"
	cont "around for a bit."
	done

KansaiRoute2ForestSignText:
	text "EVERGREEN WOODS"
	done
