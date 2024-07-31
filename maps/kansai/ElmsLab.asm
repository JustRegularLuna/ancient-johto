; text constants
	const_def 1
	; NPCs
	const_export ELMSLAB_STARTER_BALL_1
	const_export ELMSLAB_STARTER_BALL_2
	const_export ELMSLAB_STARTER_BALL_3
	const_export ELMSLAB_ELM
	const_export ELMSLAB_AIDE
	; Signs
	const ELMSLAB_BIN
	const ELMSLAB_PC
	; Other
	const ELMSLAB_ENTER_LAB_TEXT
	const ELMSLAB_DONT_GO_AWAY_TEXT
	const ELMSLAB_TALK_ABOUT_POKEMON_TEXT

ElmsLab_Object:
	db $3 ; border block

	def_warp_events
	warp_event  4, 11, LAST_MAP, 4
	warp_event  5, 11, LAST_MAP, 4

	def_bg_events
	bg_event  9,  3, ELMSLAB_BIN
	bg_event  0,  1, ELMSLAB_PC

	def_object_events
	object_event 6, 3, SPRITE_POKE_BALL, STAY, NONE, ELMSLAB_STARTER_BALL_1
	object_event 7, 3, SPRITE_POKE_BALL, STAY, NONE, ELMSLAB_STARTER_BALL_2
	object_event 8, 3, SPRITE_POKE_BALL, STAY, NONE, ELMSLAB_STARTER_BALL_3
	object_event 5, 2, SPRITE_ELM, STAY, DOWN, ELMSLAB_ELM
	object_event 8, 10, SPRITE_SCIENTIST, STAY, NONE, ELMSLAB_AIDE

	def_warps_to ELMS_LAB


ElmsLab_Script:
	call EnableAutoTextBoxDrawing
	ld hl, ElmsLab_ScriptPointers
	ld a, [wElmsLabCurScript]
	jp CallFunctionInTable

ElmsLab_ScriptPointers:
	const_def
	dw_const ElmsLabPlayerEntersScript,           SCRIPT_ELMSLAB_PLAYER_ENTERS
	dw_const ElmsLabMeetElmScript,                SCRIPT_ELMSLAB_MEET_ELM
	dw_const ElmsLabDontGoAwayScript,             SCRIPT_ELMSLAB_DONT_GO_AWAY
	dw_const ElmsLabPlayerForcedToWalkBackScript, SCRIPT_ELMSLAB_PLAYER_FORCED_TO_WALK_BACK_SCRIPT
	dw_const ElmsLabWalkBackToElmScript,          SCRIPT_ELMSLAB_WALK_BACK_TO_ELM
	dw_const ElmsLabTalkAboutPokemonScript,       SCRIPT_ELMSLAB_TALK_ABOUT_POKEMON
	dw_const ElmsLabAbleToLeave1Script,           SCRIPT_ELMSLAB_ABLE_TO_LEAVE_1

ElmsLabPlayerEntersScript:
	; Have the player walk up to Elm
	call Delay3
	ld hl, wSimulatedJoypadStatesEnd
	ld de, PlayerEntryMovementRLE
	call DecodeRLEList
	dec a
	ld [wSimulatedJoypadStatesIndex], a
	call StartSimulatingJoypadStates

	; Go to the next scene
	ld a, SCRIPT_ELMSLAB_MEET_ELM
	ld [wElmsLabCurScript], a
	ret

PlayerEntryMovementRLE:
	db D_UP, 8
	db -1 ; end

ElmsLabMeetElmScript:
	; Wait until you are done walking up
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz

	; Have Elm talk to you
	ld a, SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, ELMSLAB_ENTER_LAB_TEXT
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	call Delay3
	xor a
	ld [wJoyIgnore], a

	; Go to the next scene
	ld a, SCRIPT_ELMSLAB_DONT_GO_AWAY
	ld [wElmsLabCurScript], a
	ret

ElmsLabDontGoAwayScript:
	ld a, [wYCoord]
	cp 6
	ret nz
	ld a, ELMSLAB_DONT_GO_AWAY_TEXT
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	ld a, $1
	ld [wSimulatedJoypadStatesIndex], a
	ld a, D_UP
	ld [wSimulatedJoypadStatesEnd], a
	call StartSimulatingJoypadStates
	ld a, PLAYER_DIR_UP
	ld [wPlayerMovingDirection], a

	ld a, SCRIPT_ELMSLAB_PLAYER_FORCED_TO_WALK_BACK_SCRIPT
	ld [wElmsLabCurScript], a
	ret

ElmsLabPlayerForcedToWalkBackScript:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	call Delay3

	ld a, SCRIPT_ELMSLAB_DONT_GO_AWAY
	ld [wElmsLabCurScript], a
	ret

ElmsLabWalkBackToElmScript:
	; Determine where the player is
	ld a, [wSpritePlayerStateData1FacingDirection]
	cp SPRITE_FACING_RIGHT ; Are we already directly underneath Elm?
	ld a, PLAYER_DIR_UP
	ld [wPlayerMovingDirection], a
	jr z, .done ; Just turn to face Elm if already there
	ld a, [wPlayerStarter]
	cp STARTER1
	ld de, .Starter1MovementRLE
	jr z, .gotMovement
	cp STARTER2
	ld de, .Starter2MovementRLE
	jr z, .gotMovement
	; else Starter 3
	ld de, .Starter3MovementRLE
.gotMovement
	ld hl, wSimulatedJoypadStatesEnd
	call DecodeRLEList
	dec a
	ld [wSimulatedJoypadStatesIndex], a
	call StartSimulatingJoypadStates
.done
	ld a, SCRIPT_ELMSLAB_TALK_ABOUT_POKEMON
	ld [wElmsLabCurScript], a
	ret

.Starter1MovementRLE
	db D_UP, 1
	db D_LEFT, 1
	db -1

.Starter2MovementRLE
	db D_UP, 1
	db D_LEFT, 2
	db -1

.Starter3MovementRLE
	db D_UP, 1
	db D_LEFT, 3
	db -1

ElmsLabTalkAboutPokemonScript:
	; Wait until you are done walking over
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz

	; Have Elm talk to you
	ld a, SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, ELMSLAB_TALK_ABOUT_POKEMON_TEXT
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	call Delay3
	xor a
	ld [wJoyIgnore], a

	; Let you leave New Bark Town
	ld a, SCRIPT_SILENT_NOOP
	ld [wSilentHillsCurScript], a

	; Go to the next scene
	ld a, SCRIPT_ELMSLAB_ABLE_TO_LEAVE_1
	ld [wElmsLabCurScript], a
	ret

ElmsLabAbleToLeave1Script:
	ret

ElmsLab_TextPointers:
	dw ElmsLabStarter1Script
	dw ElmsLabStarter2Script
	dw ElmsLabStarter3Script
	dw ElmsLabElmScript
	dw ElmsLabAideScript
	dw ElmsLabBinText
	dw ElmsLabPCText
	dw ElmsLabEnterLabText
	dw ElmsLabDontGoAwayText
	dw ElmsLabTalkAboutPokemonText

ElmsLabStarter1Script:
	text_asm
	; Make sure you have not already picked a starter
	CheckEvent EVENT_GOT_STARTER
	jp nz, AlreadyChoseStarter
	; Show the pokedex entry and ask if you want it
	call TempFillPokedex
	ld a, STARTER1
	call DisplayPokedex
	ld hl, TakeCyndaquilText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a ; Did you choose Yes or No?
	; Setup variables for Rival and Player starters
	; Say which ball to hide
	;(Z is not overwritten until it is read a few lines below)
	ld a, STARTER2
	ld [wRivalStarter], a
	ld a, STARTER1
	ld [wPlayerStarter], a
	ld a, HS_STARTER_BALL_1
	; Give the starter if you chose Yes
	jr z, GiveStarterCommon
	; If No, let you choose again
	jr DidNotChooseStarterScript

ElmsLabStarter2Script:
	text_asm
	; Make sure you have not already picked a starter
	CheckEvent EVENT_GOT_STARTER
	jp nz, AlreadyChoseStarter
	; Show the pokedex entry and ask if you want it
	call TempFillPokedex
	ld a, STARTER2
	call DisplayPokedex
	ld hl, TakeTotodileText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a ; Did you choose Yes or No?
	; Setup variables for Rival and Player starters
	; Say which ball to hide
	;(Z is not overwritten until it is read a few lines below)
	ld a, STARTER3
	ld [wRivalStarter], a
	ld a, STARTER2
	ld [wPlayerStarter], a
	ld a, HS_STARTER_BALL_2
	; Give the starter if you chose Yes
	jr z, GiveStarterCommon
	; If No, let you choose again
	jr DidNotChooseStarterScript

ElmsLabStarter3Script:
	text_asm
	; Make sure you have not already picked a starter
	CheckEvent EVENT_GOT_STARTER
	jp nz, AlreadyChoseStarter
	; Show the pokedex entry and ask if you want it
	call TempFillPokedex
	ld a, STARTER3
	call DisplayPokedex
	ld hl, TakeChikoritaText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a ; Did you choose Yes or No?
	; Setup variables for Rival and Player starters
	; Say which ball to hide
	;(Z is not overwritten until it is read a few lines below)
	ld a, STARTER1
	ld [wRivalStarter], a
	ld a, STARTER3
	ld [wPlayerStarter], a
	ld a, HS_STARTER_BALL_3
	; Give the starter if you chose Yes
	jr z, GiveStarterCommon
	; If No, let you choose again
	jr DidNotChooseStarterScript

DidNotChooseStarterScript:
	ld hl, DidntChooseStarterText
	call PrintText
	jp TextScriptEnd

GiveStarterCommon:
	; Hide the pokeball and say you got it
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, [wPlayerStarter]
	ld [wd11e], a
	call GetMonName
	ld hl, ChoseStarterText
	call PrintText
	; Revert temporarily filling the pokedex
	ld hl, wPokedexOwned
	ld bc, wPokedexOwnedEnd - wPokedexOwned
	ld a, $00
	call FillMemory
	; Give the starter you chose
	xor a ; PLAYER_PARTY_DATA
	ld [wMonDataLocation], a
	ld a, 5
	ld [wCurEnemyLVL], a
	ld a, [wPlayerStarter]
	ld [wd11e], a
	call AddPartyMon
	SetEvent EVENT_GOT_STARTER
	; Trigger the scene to make you walk back to Elm
	ld a, SCRIPT_ELMSLAB_WALK_BACK_TO_ELM
	ld [wElmsLabCurScript], a
	jp TextScriptEnd

AlreadyChoseStarter:
	ld hl, ItContainsAPokemonText
	call PrintText
	jp TextScriptEnd

TempFillPokedex:
	; Temporarily fill the pokedex to show full dex entry on starters
	ld hl, wPokedexOwned
	ld bc, wPokedexOwnedEnd - wPokedexOwned
	ld a, $FF
	jp FillMemory

ItContainsAPokemonText:
	text "It contains a"
	line "#MON caught by"
	cont "PROF.ELM!"
	done

ElmsLabElmScript:
	text_asm
	; TODO: Additional checks later on
	CheckEvent EVENT_DELIVERED_MYSTERY_EGG
	ld hl, ElmTalksAboutResearchingEggText
	jr nz, .ShowText
	CheckEvent EVENT_GOT_MYSTERY_EGG
	jr nz, .TryDeliverMysteryEgg
	CheckEvent EVENT_GOT_STARTER
	ld hl, ElmDescribesMrPokemonText
	jr nz, .ShowText
	; If no events are set, it must be the first time
	ld hl, ElmDontBeShyText
.ShowText
	call PrintText
	jp TextScriptEnd

.TryDeliverMysteryEgg
	ld hl, ElmTalksAboutBreakInText
	call PrintText
	ld b, MYSTERY_EGG
	call IsItemInBag
	jr nz, .gotMysteryEgg
	; ELSE the player talked to Mr Pokemon, but does not have Mystery Egg in their pack
	ld hl, ElmAsksWhyYouDontHaveEggText
	call PrintText
	jr .done
.gotMysteryEgg
	call ElmsLabScript_RemoveMysteryEgg
	ld hl, ElmReactsToMysteryEggText
	call PrintText
	lb bc, POKE_BALL, 5
	call GiveItem
	SetEvent EVENT_DELIVERED_MYSTERY_EGG
	ld hl, ElmTalksAboutResearchingEggText
	call PrintText
	; Hide the blockers in Route 30
	;ld a, HS_ROUTE_30_YOUNGSTER_ALAN_BLOCKER
	;ld [wMissableObjectIndex], a
	;predef HideObject
	;ld a, HS_ROUTE_30_RATTATA_BLOCKER_1
	;ld [wMissableObjectIndex], a
	;predef HideObject
	;ld a, HS_ROUTE_30_RATTATA_BLOCKER_2
	;ld [wMissableObjectIndex], a
	;predef HideObject
	; Show the regular Youngster Alan in Route 30
	;ld a, HS_ROUTE_30_YOUNGSTER_ALAN
	;ld [wMissableObjectIndex], a
	;predef ShowObject
.done
	jp TextScriptEnd

ElmsLabScript_RemoveMysteryEgg:
	ld hl, wBagItems
	ld bc, 0
.loop
	ld a, [hli]
	cp $ff
	ret z
	cp MYSTERY_EGG
	jr z, .foundEgg
	inc hl
	inc c
	jr .loop
.foundEgg
	ld hl, wNumBagItems
	ld a, c
	ld [wWhichPokemon], a
	ld a, 1
	ld [wItemQuantity], a
	jp RemoveItemFromInventory

ElmDontBeShyText:
	text "Now, <PLAYER>,"
	line "which #MON do"
	cont "you want?"

	para "Go on, don't be"
	line "shy!"
	done

ElmDescribesMrPokemonText:
	text "MR.#MON goes"
	line "everywhere and"
	cont "finds rarities."

	para "Too bad they're"
	line "just rare and"
	cont "not very useful…"

	para "<PLAYER>, I'm"
	line "counting on you!"
	done

ElmsLabAideScript:
	text_asm
	CheckEvent EVENT_DELIVERED_MYSTERY_EGG
	ld hl, .TalkAboutHoaxes
	jr nz, .done
	CheckEvent EVENT_GOT_MYSTERY_EGG
	ld hl, .TalkAboutBreakIn
	jr nz, .done
	; If nothing has happened yet
	ld hl, .AlwaysBusyText
.done
	call PrintText
	jp TextScriptEnd

.AlwaysBusyText
	text "There's only two"
	line "of us, so we're"
	cont "always busy."
	done

.TalkAboutBreakIn
	text "This is horrible…"

	para "That poor stolen"
	line "#MON…"

	para "I hope it's ok…"
	done

.TalkAboutHoaxes
	text "I'll be helping"
	line "PROF.ELM study"

	para "the EGG that you"
	line "brought us."

	para "Sometimes, things"
	line "like this aren't"
	cont "what they seem."

	para "Like a few years"
	line "ago, some guys in"

	para "KANTO claimed to"
	line "have discovered"

	para "evolved forms of"
	line "RAICHU…"

	para "That didn't turn"
	line "out to be true."

	para "One time, it was"
	line "just a case of a"

	para "strangely colored"
	line "RAICHU, and a man"

	para "who didn't quite"
	line "understand how"
	cont "trading worked…"

	para "The other one did"
	line "look like a blue"

	para "PIKACHU relative,"
	line "but it turned out"

	para "to be a new, un-"
	line "related kind of"

	para "#MON. So you"
	line "never know!"
	done

ElmsLabBinText:
	text "The wrapper from"
	line "a snack PROF.ELM"
	cont "ate is in here…"
	done

ElmsLabPCText:
	text "There's an e-mail"
	line "message here!"

	para "…"

	para "PROF.ELM! I have"
	line "made an astonish-"
	cont "ing discovery!"

	para "I can assure you,"
	line "this time it is"
	cont "very real."

	para "Can you come and"
	line "see me?"
	cont "- MR.#MON"
	done

ElmsLabEnterLabText:
	text "ELM: <PLAYER>!"
	line "There you are!"

	para "I was wondering"
	line "when you would"
	cont "stop by."

	para "I've gone ahead"
	line "and prepared some"

	para "#MON for you"
	line "to choose from."

	para "They're all rare"
	line "#MON that were"
	cont "just discovered!"

	para "Choose whichever"
	line "one you like!"
	done

ElmsLabDontGoAwayText:
	text "ELM: Wait! Where"
	line "are you going?"
	done

TakeCyndaquilText:
	text "ELM: You'll take"
	line "CUBBURN, the"
	cont "fire #MON?"
	done

TakeTotodileText:
	text "ELM: Do you want"
	line "CRUZ, the water"
	cont "#MON?"
	done

TakeChikoritaText:
	text "ELM: So, you like"
	line "CHIKORITA, the"
	cont "grass #MON?"
	done

DidntChooseStarterText:
	text "ELM: Think it over"
	line "carefully."

	para "Your partner is"
	line "important."
	prompt

ChoseStarterText:
	text "ELM: I think"
	line "that's a great"
	cont "#MON too!"

	para "<PLAYER> received"
	line "a @"
	text_ram wcd6d
	text "!@"
	sound_get_key_item
	text_waitbutton
	text_end

ElmsLabTalkAboutPokemonText:
	text "ELM: I hope you"
	line "don't mind, but I"

	para "have a small"
	line "favor to ask."

	para "I got an e-mail"
	line "from my acquaint-"
	cont "ance, MR.#MON."

	para "He seemed very"
	line "excited to share"

	para "a discovery with"
	line "me, but sadly I'm"

	para "too busy with my"
	line "research to make"
	cont "the trip."

	para "Would you stop by"
	line "and see what it"
	cont "was for me?"

	para "That's great!"

	para "MR.#MON lives"
	line "in SAKURA TOWN,"
	cont "the next city."

	para "It's almost a"
	line "direct route to"
	cont "there."

	para "Have a safe trip,"
	line "<PLAYER>."
	done

ElmTalksAboutBreakInText:
	text "ELM: <PLAYER>!"
	line "This is terrible…"

	para "While you were"
	line "away, someone"

	para "broke in through"
	line "the back window,"

	para "and stole one of"
	line "the #MON from"
	cont "the table there…"

	para "He escaped, but I"
	line "got a look at his"
	cont "face…"

	para "It was <RIVAL>,"
	line "that shady guy"

	para "who has been in"
	line "town lately!"

	para "The police only"
	line "left minutes ago."

	para "But… let's have"
	line "some good news!"

	para "What was this big"
	line "discovery that"

	para "MR.#MON wanted"
	line "us to see?"
	prompt

ElmAsksWhyYouDontHaveEggText:
	text "Erm… You don't"
	line "have it on you?"

	para "I'm sure you were"
	line "only trying to"
	cont "keep it safe…"

	para "Please bring it"
	line "to me, <PLAYER>."
	done

ElmReactsToMysteryEggText:
	text "<PLAYER> handed"
	line "over the MYSTERY"
	cont "EGG."

	para "ELM: THIS?! Why…"
	line "Could it be?"

	para "Could this really"
	line "be a #MON EGG?"

	para "If so, this is a"
	line "major discovery…"

	para "But we can't jump"
	line "to conclusions."

	para "That isn't how"
	line "science works."

	para "We have to study"
	line "this seriously to"

	para "make sure it isn't"
	line "just a hoax."

	para "Yes, unfortunately"
	line "those happen from"
	cont "time to time."

	para "Hopefully this"
	line "won't be one of"
	cont "those times."

	para "Thank you for"
	line "bringing this to"
	cont "me to study."

	para "Oh! I almost"
	line "forgot."

	para "PROF.OAK told me"
	line "that he gave you"
	cont "a #DEX!"

	para "That's great news,"
	line "<PLAYER>."

	para "A #DEX will"
	line "help a lot during"
	cont "your travels."

	para "Here. Before you"
	line "leave town again,"

	para "let me give you"
	line "something to help"

	para "you complete that"
	line "#DEX."

	para "<PLAYER> received"
	line "5 #BALLs!@"
	sound_get_key_item
	text_waitbutton
	text_end

ElmTalksAboutResearchingEggText:
	text "ELM: Thanks again"
	line "for helping with"
	cont "my research."

	para "I'll keep you in"
	line "the loop as we"
	cont "learn more!"
	done
