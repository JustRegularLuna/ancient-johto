; text constants
	const_def 1
	; NPCs
	const_export ROUTE30_YOUNGSTER_JOEY
	const_export ROUTE30_LASS_NICOLE
	const_export ROUTE30_YOUNGSTER_ALAN
	const_export ROUTE30_BUG_CATCHER
	const_export ROUTE30_YOUNGSTER_ALAN_BLOCKER
	const_export ROUTE30_RATTATA_BLOCKER_1
	const_export ROUTE30_RATTATA_BLOCKER_2
	const_export ROUTE30_BERRY_TREE
	const_export ROUTE30_PSNCUREBERRY_TREE
	; Signs
	const ROUTE30_SIGN
	const ROUTE30_TRAINER_TIPS_SIGN
	const ROUTE30_MR_POKEMON_DIRECTIONS_SIGN
	const ROUTE30_MR_POKEMON_HOUSE_SIGN

Route30_Object:
	db $5 ; border block

	def_warps
	warp  7, 39, 0, ROUTE_30_BERRY_HOUSE
	warp 17,  5, 1, MR_POKEMONS_HOUSE

	def_signs
	sign  9, 43, ROUTE30_SIGN
	sign  3, 21, ROUTE30_TRAINER_TIPS_SIGN
	sign 13, 29, ROUTE30_MR_POKEMON_DIRECTIONS_SIGN
	sign 15,  5, ROUTE30_MR_POKEMON_HOUSE_SIGN

	def_objects
	object SPRITE_YOUNGSTER,  5, 23, STAY, DOWN, ROUTE30_YOUNGSTER_JOEY, YOUNGSTER, JOEY
	object SPRITE_LASS,  3, 14, STAY, NONE, ROUTE30_LASS_NICOLE, LASS, NICOLE
	object SPRITE_YOUNGSTER,  6, 28, STAY, LEFT, ROUTE30_YOUNGSTER_ALAN, YOUNGSTER, ALAN
	object SPRITE_BUG_CATCHER,  5,  6, STAY, NONE, ROUTE30_BUG_CATCHER
	object SPRITE_YOUNGSTER,  5, 26, STAY, UP, ROUTE30_YOUNGSTER_ALAN_BLOCKER
	object SPRITE_MONSTER,  5, 24, STAY, DOWN, ROUTE30_RATTATA_BLOCKER_1
	object SPRITE_MONSTER,  5, 25, STAY, UP, ROUTE30_RATTATA_BLOCKER_2
	object SPRITE_FRUIT_TREE,  5, 39, STAY, NONE, ROUTE30_BERRY_TREE
	object SPRITE_FRUIT_TREE, 12,  6, STAY, NONE, ROUTE30_PSNCUREBERRY_TREE

	def_warps_to ROUTE_30


Route30_Script:
	call EnableAutoTextBoxDrawing
	ld hl, Route30TrainerHeaders
	ld de, Route30_ScriptPointers
	ld a, [wRoute30CurScript]
	call ExecuteCurMapScriptInTable
	ld [wRoute30CurScript], a
	ret

Route30_ScriptPointers:
	const_def
	dw_const CheckFightingMapTrainers,              SCRIPT_ROUTE30_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_ROUTE30_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_ROUTE30_END_BATTLE

Route30_TextPointers:
	dw Route30YoungsterJoeyText
	dw Route30LassNikkiText
	dw Route30YoungsterAlanText
	dw Route30BugCatcherText
	dw Route30YoungsterAlanBlockerText
	dw Route30ObjectEventText
	dw Route30ObjectEventText
	dw Route30BerryTreeText
	dw Route30PSNCureBerryTreeText
	dw Route30SignText
	dw Route30TrainerTipsText
	dw Route30MrPokemonDirectionsText
	dw Route30MrPokemonHouseText

Route30TrainerHeaders:
	def_trainers 1
Route30TrainerHeader0:
	trainer EVENT_BEAT_ROUTE_30_TRAINER_0, 1, Route30YoungsterJoeyBattleText, Route30YoungsterJoeyEndBattleText, Route30YoungsterJoeyAfterBattleText
Route30TrainerHeader1:
	trainer EVENT_BEAT_ROUTE_30_TRAINER_1, 2, Route30LassNikkiBattleText, Route30LassNikkiEndBattleText, Route30LassNikkiAfterBattleText
Route30TrainerHeader2:
	trainer EVENT_BEAT_ROUTE_30_TRAINER_2, 4, Route30YoungsterAlanBattleText, Route30YoungsterAlanEndBattleText, Route30YoungsterAlanAfterBattleText
	db -1 ; end

Route30YoungsterJoeyText:
	text_asm
	ld hl, Route30TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

Route30LassNikkiText:
	text_asm
	ld hl, Route30TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

Route30YoungsterAlanText:
	text_asm
	ld hl, Route30TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

Route30BugCatcherText:
	text "I'm not interested"
	line "in battling, I"

	para "just like looking"
	line "for BUG #MON"

	para "to add to my"
	line "collection!"
	done

Route30YoungsterAlanBlockerText:
	text "Hey! This is an"
	line "important battle!"

	para "Leave me alone!"
	done

Route30ObjectEventText:
	text "Object event."
	done

Route30BerryTreeText:
	text_asm
	ld a, FRUITTREE_ROUTE_30_1
	ld [wWhichTrade], a
	farcall BerryTreeScript
	jp TextScriptEnd

Route30PSNCureBerryTreeText:
	text_asm
	ld a, FRUITTREE_ROUTE_30_2
	ld [wWhichTrade], a
	farcall BerryTreeScript
	jp TextScriptEnd

Route30YoungsterJoeyBattleText:
	text "Check out my"
	line "RATTATA!"

	para "He's so great, I"
	line "bet he's in the"

	para "top percent of"
	line "RATTATA!"
	done

Route30YoungsterJoeyEndBattleText:
	text "No way! I won the"
	line "last time…"
	prompt

Route30YoungsterJoeyAfterBattleText:
	text "Just because you"
	line "won, doesn't mean"
	cont "you get to gloat…"
	done

Route30LassNikkiBattleText:
	text "Hi! Do you have"
	line "#MON?"
	cont "Let's battle!"
	done

Route30LassNikkiEndBattleText:
	text "Aww, I lost!"
	prompt

Route30LassNikkiAfterBattleText:
	text "The #MON here"
	line "are cute, but I"

	para "wish I could find"
	line "a fluffy little"

	para "brown one with a"
	line "zig-zag pattern…"
	done

Route30YoungsterAlanBattleText:
	text "I'm itching to"
	line "redeem myself"

	para "after that last"
	line "battle."

	para "You'll have to do!"
	done

Route30YoungsterAlanEndBattleText:
	text "Darn… I just can't"
	line "seem to win…"
	prompt

Route30YoungsterAlanAfterBattleText:
	text "I wish I was more"
	line "like my buddy,"
	cont "KEN."

	para "He wins all the"
	line "time!"
	done

Route30SignText:
	text "ROUTE 30"

	para "CHERRYGROVE CITY -"
	line "VIOLET CITY"
	done

Route30TrainerTipsText:
	text "TRAINER TIPS"

	para "Catch #MON"
	line "and expand your"
	cont "collection!"

	para "#MON live in"
	line "more places than"
	cont "just tall grass."
	done

Route30MrPokemonDirectionsText:
	text_asm
	CheckEvent EVENT_DELIVERED_MYSTERY_EGG
	ld hl, .MrPokemonHouseText
	jr z, .gotText
	ld hl, .TrainerTipsText
.gotText
	call PrintText
	jp TextScriptEnd

.MrPokemonHouseText
	text "There's a note"
	line "taped here…"

	para "MR.#MON'S HOUSE"
	line "Straight Ahead!"
	done

.TrainerTipsText
	text "TRAINER TIPS"

	para "Fainted #MON"
	line "can't battle, but"

	para "can still use"
	line "moves like FLASH."
	done

Route30MrPokemonHouseText:
	text "MR.#MON'S HOUSE"
	done
