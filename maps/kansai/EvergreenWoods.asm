; text constants
	const_def 1
	; NPCs
	const_export EVERGREEN_WOODS_BUG_CATCHER_PETER
	const_export EVERGREEN_WOODS_BUG_CATCHER_WADE
	const_export EVERGREEN_WOODS_LASS_CHEYENNE
	const_export EVERGREEN_WOODS_BUG_CATCHER_KEN
	const_export EVERGREEN_WOODS_YOUNGSTER_ALAN
	const_export EVERGREEN_WOODS_COOLTRAINER_F
	const_export EVERGREEN_WOODS_FRUIT_TREE
	const_export EVERGREEN_WOODS_POTION
	const_export EVERGREEN_WOODS_GREAT_BALL
	const_export EVERGREEN_WOODS_LEAF_STONE

	; Signs
	const EVERGREEN_WOODS_ENTRANCE_SIGN
	const EVERGREEN_WOODS_TIPS_SIGN
	const EVERGREEN_WOODS_EXIT_SIGN

EvergreenWoods_Object:
	db $0 ; border block

	def_warp_events
	warp_event  8, 49, EVERGREEN_WOODS_SOUTH_GATE, 3
	warp_event  9, 49, EVERGREEN_WOODS_SOUTH_GATE, 4
	warp_event 22,  4, EVERGREEN_WOODS_NORTH_GATE, 3
	warp_event 22,  5, EVERGREEN_WOODS_NORTH_GATE, 4

	def_bg_events
	bg_event 11, 47, EVERGREEN_WOODS_ENTRANCE_SIGN
	bg_event  6, 12, EVERGREEN_WOODS_TIPS_SIGN
	bg_event 27,  5, EVERGREEN_WOODS_EXIT_SIGN

	def_object_events
	; trainers
	object_event 14, 42, SPRITE_BUG_CATCHER, STAY, DOWN, EVERGREEN_WOODS_BUG_CATCHER_PETER, BUG_CATCHER, PETER
	object_event 28, 37, SPRITE_BUG_CATCHER, STAY, LEFT, EVERGREEN_WOODS_BUG_CATCHER_WADE, BUG_CATCHER, WADE
	object_event  3, 30, SPRITE_LASS, STAY, RIGHT, EVERGREEN_WOODS_LASS_CHEYENNE, LASS, CHEYENNE
	object_event 10, 22, SPRITE_BUG_CATCHER, STAY, NONE, EVERGREEN_WOODS_BUG_CATCHER_KEN, BUG_CATCHER, KEN
	object_event 22, 12, SPRITE_YOUNGSTER, STAY, DOWN, EVERGREEN_WOODS_YOUNGSTER_ALAN, YOUNGSTER, ALAN
	object_event  7, 45, SPRITE_COOLTRAINER_F, STAY, NONE, EVERGREEN_WOODS_COOLTRAINER_F
	object_event 19, 21, SPRITE_FRUIT_TREE, STAY, NONE, EVERGREEN_WOODS_FRUIT_TREE
	object_event  1, 35, SPRITE_POKE_BALL, STAY, NONE, EVERGREEN_WOODS_POTION, POTION
	object_event 12, 27, SPRITE_POKE_BALL, STAY, NONE, EVERGREEN_WOODS_GREAT_BALL, GREAT_BALL
	object_event 21,  8, SPRITE_POKE_BALL, STAY, NONE, EVERGREEN_WOODS_LEAF_STONE, LEAF_STONE

	def_warps_to EVERGREEN_WOODS


EvergreenWoods_Script:
	call EnableAutoTextBoxDrawing
	ld hl, EvergreenWoodsTrainerHeaders
	ld de, EvergreenWoods_ScriptPointers
	ld a, [wGenericTrainersCurScript]
	call ExecuteCurMapScriptInTable
	ld [wGenericTrainersCurScript], a
	ret

EvergreenWoods_ScriptPointers:
	const_def
	dw_const CheckFightingMapTrainers,              SCRIPT_EVERGREEN_WOODS_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_EVERGREEN_WOODS_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_EVERGREEN_WOODS_END_BATTLE


EvergreenWoods_TextPointers:
	dw EvergreenWoodsBugCatcherPeterText
	dw EvergreenWoodsBugCatcherWadeText
	dw EvergreenWoodsLassCheyenneText
	dw EvergreenWoodsBugCatcherKenText
	dw EvergreenWoodsYoungsterAlanText
	dw EvergreenWoodsCooltrainerFText
	dw EvergreenWoodsFruitTreeText
	dw PickUpItemText
	dw PickUpItemText
	dw PickUpItemText
	dw EvergreenWoodsEntranceSign
	dw EvergreenWoodsTipsSign
	dw EvergreenWoodsExitSign


EvergreenWoodsTrainerHeaders:
	def_trainers 1
EvergreenWoodsTrainerHeader0:
	trainer EVENT_BEAT_EVERGREEN_WOODS_TRAINER_0, 3, EvergreenWoodsBugCatcherPeterBattleText, EvergreenWoodsBugCatcherPeterEndBattleText, EvergreenWoodsBugCatcherPeterAfterBattleText
EvergreenWoodsTrainerHeader1:
	trainer EVENT_BEAT_EVERGREEN_WOODS_TRAINER_1, 1, EvergreenWoodsBugCatcherWadeBattleText, EvergreenWoodsBugCatcherWadeEndBattleText, EvergreenWoodsBugCatcherWadeAfterBattleText
EvergreenWoodsTrainerHeader2:
	trainer EVENT_BEAT_EVERGREEN_WOODS_TRAINER_2, 4, EvergreenWoodsLassCheyenneBattleText, EvergreenWoodsLassCheyenneEndBattleText, EvergreenWoodsLassCheyenneAfterBattleText
EvergreenWoodsTrainerHeader3:
	trainer EVENT_BEAT_EVERGREEN_WOODS_TRAINER_3, 2, EvergreenWoodsBugCatcherKenBattleText, EvergreenWoodsBugCatcherKenEndBattleText, EvergreenWoodsBugCatcherKenAfterBattleText
EvergreenWoodsTrainerHeader4:
	trainer EVENT_BEAT_EVERGREEN_WOODS_TRAINER_4, 3, EvergreenWoodsYoungsterAlanBattleText, EvergreenWoodsYoungsterAlanEndBattleText, EvergreenWoodsYoungsterAlanAfterBattleText
	db -1 ; end

EvergreenWoodsBugCatcherPeterText:
	text_asm
	ld hl, EvergreenWoodsTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

EvergreenWoodsBugCatcherWadeText:
	text_asm
	ld hl, EvergreenWoodsTrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

EvergreenWoodsLassCheyenneText:
	text_asm
	ld hl, EvergreenWoodsTrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

EvergreenWoodsBugCatcherKenText:
	text_asm
	ld hl, EvergreenWoodsTrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

EvergreenWoodsYoungsterAlanText:
	text_asm
	ld hl, EvergreenWoodsTrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

EvergreenWoodsCooltrainerFText:
	text "Some people think"
	line "all girls hate"
	cont "bugs, but they"
	cont "don't bother me."

	para "I like all kinds"
	line "of #MON!"

	para "Well… Maybe not"
	line "that two-legged"
	cont "fire-duck-thing I"
	cont "saw one time…"

	para "But most #MON"
	line "are great!"
	done

EvergreenWoodsFruitTreeText:
	text_asm
	ld a, FRUITTREE_EVERGREEN_WOODS
	ld [wWhichTrade], a
	farcall BerryTreeScript
	jp TextScriptEnd

EvergreenWoodsEntranceSign:
	text "Now Entering"
	line "EVERGREEN WOODS"
	done

EvergreenWoodsTipsSign:
	text "TRAINER TIPS"

	para "Watch your step!"

	para "Dropped items may"
	line "be hard to see in"
	cont "the dim light."
	done

EvergreenWoodsExitSign:
	text "Now Leaving"
	line "EVERGREEN WOODS"
	done

EvergreenWoodsBugCatcherPeterBattleText:
	text "I like the forest,"
	line "there are bugs"
	cont "everywhere!"
	done

EvergreenWoodsBugCatcherPeterEndBattleText:
	text "I need stronger"
	line "#MON…"
	prompt

EvergreenWoodsBugCatcherPeterAfterBattleText:
	text "I love bugs, but I"
	line "guess the're kind"
	cont "of weak…"
	done

EvergreenWoodsBugCatcherWadeBattleText:
	text "Why the hurry?"

	para "Stop and have a"
	line "battle!"
	done

EvergreenWoodsBugCatcherWadeEndBattleText:
	text "Guess I should've"
	line "let you keep on"
	cont "walking…"
	prompt

EvergreenWoodsBugCatcherWadeAfterBattleText:
	text "I'll go back to"
	line "training for now,"
	cont "I guess…"
	done

EvergreenWoodsLassCheyenneBattleText:
	text "I love skirts!"
	line "They're cute, and"
	cont "comfy to wear!"
	done

EvergreenWoodsLassCheyenneEndBattleText:
	text "That battle wasn't"
	line "very comfy…"
	prompt

EvergreenWoodsLassCheyenneAfterBattleText:
	text "It's a long walk"
	line "to and from class"
	cont "for me, so I try"
	cont "to stay comfy."
	done

EvergreenWoodsBugCatcherKenBattleText:
	text "Hey! You scared"
	line "off the #MON I"
	cont "was trying to"
	cont "catch!"
	done

EvergreenWoodsBugCatcherKenEndBattleText:
	text "If I'd caught the"
	line "#MON that I"
	cont "saw, I would've"
	cont "won…"
	prompt

EvergreenWoodsBugCatcherKenAfterBattleText:
	text "I'm always on the"
	line "lookout for more"
	cont "bug #MON!"
	done

EvergreenWoodsYoungsterAlanBattleText:
	text "I like my battles"
	line "the way I like my"
	cont "pants. Short!"
	done

EvergreenWoodsYoungsterAlanEndBattleText:
	text "That was short,"
	line "alright…"
	prompt

EvergreenWoodsYoungsterAlanAfterBattleText:
	text "I guess NIDORAN"
	line "can't always hack"
	cont "it."
	done
