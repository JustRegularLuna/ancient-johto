; text constants
	const_def 1
	; NPCs
	const_export ROUTE31_BUG_CATCHER_KEN
	const_export ROUTE31_DARK_CAVE_GUY
	const_export ROUTE31_FISHER
	const_export ROUTE31_YOUNGSTER
	const_export ROUTE31_ITEMBALL_1
	const_export ROUTE31_ITEMBALL_2
	const_export ROUTE31_BERRY_TREE
	; Signs
	const ROUTE31_DARK_CAVE_SIGN
	const ROUTE31_ROUTE_SIGN

Route31_Object:
	db $5 ; border block

	def_warps

	def_signs
	sign 31,  5, ROUTE31_DARK_CAVE_SIGN
	sign  7,  5, ROUTE31_ROUTE_SIGN

	def_objects
	object SPRITE_BUG_CATCHER, 18, 15, STAY, UP, ROUTE31_BUG_CATCHER_KEN, BUG_CATCHER, KEN
	object SPRITE_COOLTRAINER_M, 32,  7, STAY, NONE, ROUTE31_DARK_CAVE_GUY
	object SPRITE_FISHER, 17,  7, STAY, DOWN, ROUTE31_FISHER
	object SPRITE_YOUNGSTER,  9,  6, STAY, NONE, ROUTE31_YOUNGSTER
	object SPRITE_POKE_BALL, 29,  5, STAY, NONE, ROUTE31_ITEMBALL_1, ANTIDOTE
	object SPRITE_POKE_BALL, 21, 13, STAY, NONE, ROUTE31_ITEMBALL_2, POKE_BALL
	object SPRITE_FRUIT_TREE, 16,  7, STAY, NONE, ROUTE31_BERRY_TREE

	def_warps_to ROUTE_31


Route31_Script:
	call EnableAutoTextBoxDrawing
	ld hl, Route31TrainerHeaders
	ld de, Route31_ScriptPointers
	ld a, [wRoute31CurScript]
	call ExecuteCurMapScriptInTable
	ld [wRoute31CurScript], a
	ret

Route31_ScriptPointers:
	const_def
	dw_const CheckFightingMapTrainers,              SCRIPT_ROUTE31_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_ROUTE31_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_ROUTE31_END_BATTLE

Route31_TextPointers:
	dw Route31BugCatcherKenText
	dw Route31DarkCaveGuyText
	dw Route31FisherText
	dw Route31YoungsterText
	dw PickUpItemText
	dw PickUpItemText
	dw Route31BerryTreeText
	dw Route31DarkCaveSignText
	dw Route31RouteSignText

Route31TrainerHeaders:
	def_trainers 1
Route31TrainerHeader0:
	trainer EVENT_BEAT_ROUTE_31_TRAINER_0, 3, Route31BugCatcherKenBattleText, Route31BugCatcherKenEndBattleText, Route31BugCatcherKenAfterBattleText
	db -1 ; end

Route31BugCatcherKenText:
	text_asm
	ld hl, Route31TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

Route31DarkCaveGuyText:
	text "DARK CAVE…"

	para "If a #MON could"
	line "light it up, you"
	cont "could explore it…"
	done

Route31FisherText:
	text "Zzzz…"

	para "He's fast asleep!"
	done

Route31YoungsterText:
	text "If your #MON"
	line "get tired, you"

	para "should stop and"
	line "rest."
	done

Route31BerryTreeText:
	text_asm
	ld a, FRUITTREE_ROUTE_31
	ld [wWhichTrade], a
	farcall BerryTreeScript
	jp TextScriptEnd

Route31DarkCaveSignText:
	text "DARK CAVE"
	done

Route31RouteSignText:
	text "ROUTE 31"

	para "VIOLET CITY -"
	line "CHERRYGROVE CITY"
	done

Route31BugCatcherKenBattleText:
	text "Instead of more"
	line "BUG #MON, I"
	cont "found a trainer!"
	done

Route31BugCatcherKenEndBattleText:
	text "Darn! Even my"
	line "SPINARAK can't"
	cont "hack it!"
	prompt

Route31BugCatcherKenAfterBattleText:
	text "That's weird, I've"
	line "never lost before"
	cont "now…"
	done
