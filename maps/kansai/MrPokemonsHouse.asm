; text constants
	const_def 1
	; NPCs
	const_export MR_POKEMONS_HOUSE_MR_POKEMON
	const_export MR_POKEMONS_HOUSE_OAK
	; Signs
	const MR_POKEMONS_HOUSE_PC
	; Other
	const MR_POKEMONS_HOUSE_GREETING_TEXT
	const MR_POKEMONS_HOUSE_GIVE_EGG_TEXT
	const MR_POKEMONS_HOUSE_GIVE_POKEDEX_TEXT
	const MR_POKEMONS_HOUSE_HAVE_SOME_REST_TEXT

MrPokemonsHouse_Object:
	db $17 ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 7
	warp_event  3,  7, LAST_MAP, 7

	def_bg_events
	bg_event  6,  4, MR_POKEMONS_HOUSE_PC

	def_object_events
	object_event  3,  5, SPRITE_GENTLEMAN, STAY, RIGHT, MR_POKEMONS_HOUSE_MR_POKEMON
	object_event  6,  5, SPRITE_OAK, STAY, UP, MR_POKEMONS_HOUSE_OAK

	def_warps_to MR_POKEMONS_HOUSE


MrPokemonsHouse_Script:
	call EnableAutoTextBoxDrawing
	ld hl, MrPokemonsHouse_ScriptPointers
	ld a, [wMrPokemonsHouseCurScript]
	jp CallFunctionInTable

MrPokemonsHouse_ScriptPointers:
	const_def
	dw_const MrPokemonsHousePlayerEntersScript,   SCRIPT_MR_POKEMONS_HOUSE_PLAYER_ENTERS
	dw_const MrPokemonsHouseGiveEggScript,        SCRIPT_MR_POKEMONS_HOUSE_GIVE_EGG
	dw_const MrPokemonsHouseReceivePokedexScript, SCRIPT_MR_POKEMONS_HOUSE_RECEIVE_POKEDEX
	dw_const MrPokemonsHouseHealPokemonScript,    SCRIPT_MR_POKEMONS_HOUSE_HEAL_POKEMON
	dw_const MrPokemonsHouseNoopScript,           SCRIPT_MR_POKEMONS_HOUSE_NOOP

MrPokemonsHousePlayerEntersScript:
	; Mr Pokemon looks at you
	call UpdateSprites
	ld a, MR_POKEMONS_HOUSE_MR_POKEMON
	ldh [hSpriteIndex], a
	ld a, SPRITE_FACING_DOWN
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	call Delay3
	; Says his stuff and makes you walk up
	ld a, MR_POKEMONS_HOUSE_GREETING_TEXT
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	ld hl, wSimulatedJoypadStatesEnd
	ld de, .PlayerMovement
	call DecodeRLEList
	dec a
	ld [wSimulatedJoypadStatesIndex], a
	call StartSimulatingJoypadStates
	; Trigger next scene
	ld a, SCRIPT_MR_POKEMONS_HOUSE_GIVE_EGG
	ld [wMrPokemonsHouseCurScript], a
	ret

.PlayerMovement
	db D_UP, 1
	db -1 ; end

MrPokemonsHouseGiveEggScript:
	; Are you done walking?
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	; Mr Pokemon says more stuff and gives the egg
	call Delay3
	ld a, MR_POKEMONS_HOUSE_GIVE_EGG_TEXT
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	; Play Oak's song
	ld a, SFX_STOP_ALL_MUSIC
	call PlaySound
	ld a, MUSIC_MEET_PROF_OAK
	call PlayMusic
	; Then Prof Oak walks over
	ld de, .OakWalksOver
	ld a, MR_POKEMONS_HOUSE_OAK
	ldh [hSpriteIndex], a
	call MoveSprite
	; Trigger next scene
	ld a, SCRIPT_MR_POKEMONS_HOUSE_RECEIVE_POKEDEX
	ld [wMrPokemonsHouseCurScript], a
	ret

.OakWalksOver
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_LEFT
	db NPC_MOVEMENT_LEFT
	db -1

MrPokemonsHouseReceivePokedexScript:
	; Don't do anything stupid
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a

	; Is Oak still walking?
	ld a, [wd730]
	bit 0, a
	ret nz

	ld a, SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	; Turn to look at Oak
	xor a
	ldh [hJoyHeld], a
	ld a, PLAYER_DIR_RIGHT
	ld [wPlayerMovingDirection], a
	; Oak talks about pokedex
	ld a, MR_POKEMONS_HOUSE_GIVE_POKEDEX_TEXT
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	; Oak leaves
	ld de, .OakWalksOut
	ld a, MR_POKEMONS_HOUSE_OAK
	ldh [hSpriteIndex], a
	call MoveSprite
	; Trigger next scene
	ld a, SCRIPT_MR_POKEMONS_HOUSE_HEAL_POKEMON
	ld [wMrPokemonsHouseCurScript], a
	ret

.OakWalksOut
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_LEFT
	db -1

MrPokemonsHouseHealPokemonScript:
	; Is Oak still walking?
	ld a, [wd730]
	bit 0, a
	ret nz
	; Make Oak face down
	ld a, MR_POKEMONS_HOUSE_OAK
	ldh [hSpriteIndex], a
	ld a, SPRITE_FACING_DOWN
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	call Delay3
	; Turn to look at Mr Pokemon
	xor a
	ldh [hJoyHeld], a
	ld a, PLAYER_DIR_UP
	ld [wPlayerMovingDirection], a
	; Make Mr Pokemon face down
	ld a, MR_POKEMONS_HOUSE_MR_POKEMON
	ldh [hSpriteIndex], a
	ld a, SPRITE_FACING_DOWN
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	call Delay3
	; Mr Pokemon Talks and heals you
	ld a, MR_POKEMONS_HOUSE_HAVE_SOME_REST_TEXT
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	; Trigger next script
	ld a, SCRIPT_MR_POKEMONS_HOUSE_NOOP
	ld [wMrPokemonsHouseCurScript], a
	; fallthrough
MrPokemonsHouseNoopScript:
	ret

MrPokemonsHouse_TextPointers:
	dw MrPokemonsHouseMrPokemonText
	dw MrPokemonsHouseOakText
	dw MrPokemonsHousePCText
	dw MrPokemonsHouseGreetingText
	dw MrPokemonsHouseGiveEggText
	dw MrPokemonsHouseGivePokedexText
	dw MrPokemonsHouseHaveSomeRestText

MrPokemonsHouseMrPokemonText:
	text_asm
	CheckEvent EVENT_DELIVERED_MYSTERY_EGG
	ld hl, .talkAfterEggText
	jr nz, .printText
	; if none are set, tell you to deliver egg
	ld hl, .goDeliverItText
.printText
	call PrintText
	jp TextScriptEnd

.goDeliverItText
	text "MR.#MON: Safe"
	line "travels, <PLAYER>."

	para "If anyone can"
	line "figure out what"
	cont "is up with that,"
	cont "its PROF.ELM!"
	done

.talkAfterEggText
	text "MR.#MON: I'm"
	line "always on the"

	para "lookout for rare"
	line "and mysterious"
	cont "things!"

	para "If you find any,"
	line "show them to me!"
	done

MrPokemonsHouseOakText:
	text "Object event."
	done

MrPokemonsHousePCText:
	text "There's a pile of"
	line "strange coins"
	cont "laying here!"

	para "They must be from"
	line "another country!"
	done

MrPokemonsHouseGreetingText:
	text "MR.#MON: Hello"
	line "hello! You must"
	cont "be <PLAYER>!"

	para "PROF.ELM told me"
	line "you were coming."
	done

MrPokemonsHouseGiveEggText:
	text_asm
	ld hl, .IntroduceEggText
	call PrintText
	lb bc, MYSTERY_EGG, 1
	call GiveItem
	SetEvent EVENT_GOT_MYSTERY_EGG
	ld hl, .IntroduceEggText2
	call PrintText
	jp TextScriptEnd

.IntroduceEggText
	text "This is the big"
	line "discovery I told"
	cont "PROF.ELM about."

	para "<PLAYER> received"
	line "the MYSTERY EGG!@"
	sound_get_key_item
	text_waitbutton
	text_end

.IntroduceEggText2
	text "The couple who run"
	line "the DAY CARE sent"
	cont "that to me."

	para "They were raising"
	line "some #MON, and"

	para "were shocked to"
	line "find an EGG!"

	para "I knew when I saw"
	line "it, it was a huge"
	cont "discovery."

	para "That's why I had"
	line "to pass it on to"
	cont "PROF.ELM."

	para "He's the leading"
	line "expert on #MON"
	cont "evolution."

	para "If anyone can find"
	line "out what this EGG"

	para "is about, it will"
	line "be him."

	para "Even my friend"
	line "PROF.OAK here"
	cont "agrees!"
	done

MrPokemonsHouseGivePokedexText:
	text_asm
	ld hl, .IntroText
	call PrintText
	SetEvent EVENT_GOT_POKEDEX
	ld hl, .OutroText
	call PrintText
	jp TextScriptEnd

.IntroText
	text "OAK: Hello!"
	line "<PLAYER>, right?"

	para "It's true. I had"
	line "a look at the EGG"

	para "myself before you"
	line "got here."

	para "I have my hunches,"
	line "but this is ELM's"

	para "field, so I'll"
	line "leave it to him."

	para "He's always had a"
	line "talent for this"
	cont "sort of thing."

	para "…"

	para "I see that he"
	line "trusted you with"
	cont "a rare #MON."

	para "He must see a lot"
	line "of potential in"
	cont "you, then."

	para "Here, I want you"
	line "to take this with"

	para "you during your"
	line "travels."

	para "It's the latest"
	line "version of my"

	para "invention, the"
	line "#DEX MK.II!"

	para "<PLAYER> received"
	line "a #DEX!@"
	sound_get_key_item
	text_waitbutton
	text_end

.OutroText
	text "A #DEX is an"
	line "invaluable tool"
	cont "for any trainer."

	para "It automatically"
	line "records data on"

	para "any #MON you"
	line "see and catch."

	para "Well, I must be"
	line "going."

	para "I have a meeting"
	line "to attend, over"
	cont "in MARIGOLD CITY."

	para "Good luck on your"
	line "journey, <PLAYER>."

	para "Maybe I'll see you"
	line "again some day."
	done

MrPokemonsHouseHaveSomeRestText:
	text_asm
	; Make it sound like Oak leaves
	ld a, SFX_GO_OUTSIDE
	call PlaySound
	; Hide Oak
	ld a, HS_MR_POKEMONS_HOUSE_OAK
	ld [wMissableObjectIndex], a
	predef HideObject
	xor a
	ld [wJoyIgnore], a
	call PlayDefaultMusic
	; Talk about healing your Pokemon
	ld hl, .healPokemonText
	call PrintText
	; set blackout map to Cherrygrove if it wasn't already
	ld a, SAKURA_TOWN
	ld [wLastBlackoutMap], a
	; Heal the party
	call GBFadeOutToWhite
	call ReloadMapData
	predef HealParty
	ld a, MUSIC_PKMN_HEALED
	call PlayMusic
	call WaitForSongToFinish
	ld a, [wMapMusicSoundID]
	call PlayMusic
	call GBFadeInFromWhite
	; talk some more
	ld hl, .returnToElmText
	call PrintText
	; Hide the pokeball for the Rival's starter
	ld a, [wPlayerStarter]
	cp STARTER1
	jr z, .choseCyndaquil
	cp STARTER2
	jr z, .choseTotodile
	; chose Chikorita
	ld a, HS_STARTER_BALL_1
	jr .hideStarter
.choseCyndaquil
	ld a, HS_STARTER_BALL_2
	jr .hideStarter
.choseTotodile
	ld a, HS_STARTER_BALL_3
	; fallthrough
.hideStarter
	ld [wMissableObjectIndex], a
	predef HideObject
	; Hide the rival in New Bark Town
	ld a, HS_SILENT_RIVAL
	ld [wMissableObjectIndex], a
	predef HideObject
	; Show the rival in Cherrygrove
	ld a, HS_SAKURA_RIVAL
	ld [wMissableObjectIndex], a
	predef ShowObject
	jp TextScriptEnd

.healPokemonText
	text "MR.#MON: Here,"
	line "before you return"

	para "to PROF.ELM, your"
	line "#MON should"
	cont "have some rest."
	done

.returnToElmText
	text "Much better!"

	para "Now your #MON"
	line "are good to go"

	para "for your trip"
	line "back."
	done
