	object_const_def
	const SAFARIZONEENTRANCE_GAME_CLERK
	const SAFARIZONEENTRANCE_OFFICER

SafariZoneEntrance_MapScripts:
	def_scene_scripts
	scene_script SafariZoneEntranceNoopScene,       SCENE_SAFARIZONEENTRANCE_DEFAULT
	scene_script SafariZoneEntranceLeaveEarlyScene, SCENE_SAFARIZONEENTRANCE_LEAVE_EARLY

	def_callbacks

SafariZoneEntranceNoopScene:
	end

SafariZoneEntranceLeaveEarlyScene:
	sdefer .leaveEarlyScript

.leaveEarlyScript
	applymovement PLAYER, SafariZoneEntrance_StepDown1Movement
	opentext
	writetext SafariZoneEntranceAskLeavingEarlyText
	yesorno
	iffalse .notLeaving
	clearflag ENGINE_SAFARI_ZONE
	writetext SafariZoneEntranceGoodHaulText
	promptbutton
	writetext SafariZoneEntranceReturnLeftoverBallsText
	waitbutton
	closetext
	applymovement PLAYER, SafariZoneEntrance_StepDown2Movement
	setscene SCENE_SAFARIZONEENTRANCE_DEFAULT
	end

.notLeaving
	writetext SafariZoneEntranceGoodLuckText
	waitbutton
	closetext
	applymovement PLAYER, SafariZoneEntrance_StepUp1Movement
	warpcheck
	end

SafariZoneEntrance_LeftTriggerScene:
	opentext
	writetext SafariZoneEntranceWelcomeText
	waitbutton
	closetext
	turnobject PLAYER, LEFT
	sjump SafariZoneEntrance_StartSafariGameScript

SafariZoneEntrance_RightTriggerScene:
	opentext
	writetext SafariZoneEntranceWelcomeText
	waitbutton
	closetext
	applymovement PLAYER, SafariZoneEntrance_StepOverMovement
	; fallthrough

SafariZoneEntrance_StartSafariGameScript:
	opentext
	writetext SafariZoneEntranceWouldYouLikeToJoinText
	special PlaceMoneyTopRight
	yesorno
	iffalse .choseNo
	; check if there is space in the party or PC box
	readvar VAR_PARTYCOUNT
	ifless 6, .skipBox
	readvar VAR_BOXSPACE
	ifequal 0, .noBoxSpace
.skipBox
	; make sure you have enough money
	checkmoney YOUR_MONEY, 500
	ifequal HAVE_LESS, .notEnoughCash
	; take your money and start the game
	setflag ENGINE_SAFARI_ZONE
	playsound SFX_TRANSACTION
	takemoney YOUR_MONEY, 500
	special PlaceMoneyTopRight
	writetext SafariZoneEntranceThatllBe500PleaseText
	playsound SFX_ITEM
	waitsfx
	writetext SafariZoneEntranceCallYouOnThePAText
	waitbutton
	closetext
	setscene SCENE_SAFARIZONEENTRANCE_LEAVE_EARLY
	special GiveSafariBalls
	applymovement PLAYER, SafariZoneEntrance_StepUp2Movement
	warpcheck
	end

.choseNo
	writetext SafariZoneEntrancePleaseComeAgainText
	waitbutton
	closetext
	applymovement PLAYER, SafariZoneEntrance_StepDown1Movement
	end

.noBoxSpace
	writetext SafariZoneEntranceBoxFullText
	waitbutton
	closetext
	applymovement PLAYER, SafariZoneEntrance_StepDown1Movement
	end

.notEnoughCash
	writetext SafariZoneEntranceNotEnoughMoneyText
	waitbutton
	closetext
	applymovement PLAYER, SafariZoneEntrance_StepDown1Movement
	end

; called as a std_script
SafariZoneOverWarpScript::
	playsound SFX_ENTER_DOOR
	special ClearBGPalettes
	waitsfx
	warpfacing DOWN, SAFARI_ZONE_ENTRANCE, 4, 0
	applymovement PLAYER, SafariZoneEntrance_StepDown1Movement
	opentext
	writetext SafariZoneEntranceGoodHaulText
	waitbutton
	closetext
	applymovement PLAYER, SafariZoneEntrance_StepDown2Movement
	setscene SCENE_SAFARIZONEENTRANCE_DEFAULT
	end

SafariZoneEntranceOfficerScript:
	faceplayer
	opentext
	writetext SafariZoneEntranceFirstTimeText
	yesorno
	iffalse .no
	writetext SafariZoneEntranceZoneExplanationText
	waitbutton
	closetext
	end

.no
	writetext SafariZoneEntranceSorryRegularText
	waitbutton
	closetext
	end

; step over to clerk
SafariZoneEntrance_StepOverMovement:
	step LEFT
	step_end

; step out of door, or step away when chosing "No"
SafariZoneEntrance_StepDown1Movement:
	step DOWN
	step_end

; step back onto door
SafariZoneEntrance_StepUp1Movement:
	step UP
	step_end

; step away when you leave
SafariZoneEntrance_StepDown2Movement:
	step DOWN
	step DOWN
	step_end

; step up to the door to enter
SafariZoneEntrance_StepUp2Movement:
	step UP
	step UP
	step_end

SafariZoneEntranceWelcomeText:
	text "Welcome to the"
	line "SAFARI ZONE!"
	done

SafariZoneEntranceWouldYouLikeToJoinText:
	text "For just ¥500,"
	line "you can catch all"
	cont "the #MON you"
	cont "want in the park!"

	para "Would you like to"
	line "join the hunt?"
	done

SafariZoneEntranceThatllBe500PleaseText:
	text "That'll be ¥500"
	line "please!"

	para "We only use a"
	line "special # BALL"
	cont "here."

	para "<PLAYER> received"
	line "30 SAFARI BALLs!"
	done

SafariZoneEntranceCallYouOnThePAText:
	text "We'll call you on"
	line "the PA when you"
	cont "run out of time"
	cont "or SAFARI BALLs!"
	done

SafariZoneEntrancePleaseComeAgainText:
	text "OK! Please come"
	line "again!"
	done

SafariZoneEntranceNotEnoughMoneyText:
	text "Oops! Not enough"
	line "money!"
	done

SafariZoneEntranceBoxFullText:
	text "Uh-oh!"
	line "Both your party"

	para "and your PC BOX"
	line "are full."

	para "You have no room"
	line "for any #MON"
	cont "you catch."

	para "Please make room"
	line "in your party or"

	para "your PC BOX, then"
	line "come see me."
	done

SafariZoneEntranceAskLeavingEarlyText:
	text "Leaving early?"
	done

SafariZoneEntranceReturnLeftoverBallsText:
	text "Please return any"
	line "SAFARI BALLs you"
	cont "have left."
	done

SafariZoneEntranceGoodLuckText:
	text "Good Luck!"
	done

SafariZoneEntranceGoodHaulText:
	text "Did you get a"
	line "good haul?"
	cont "Come again!"
	done

SafariZoneEntranceFirstTimeText:
	text "Hi! Is it your"
	line "first time here?"
	done

SafariZoneEntranceZoneExplanationText:
	text "SAFARI ZONE has 4"
	line "zones in it."

	para "Each zone has"
	line "different kinds"
	cont "of #MON. Use"
	cont "SAFARI BALLs to"
	cont "catch them!"

	para "When you run out"
	line "of time or SAFARI"
	cont "BALLs, it's game"
	cont "over for you!"

	para "Before you go,"
	line "open an unused"
	cont "#MON BOX so"
	cont "there's room for"
	cont "new #MON!"
	done

SafariZoneEntranceSorryRegularText:
	text "Sorry, you're a"
	line "regular here!"
	done

SafariZoneEntrance_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, SAFARI_ZONE_BETA, 1
	warp_event  5,  0, SAFARI_ZONE_BETA, 2
	warp_event  4,  7, NEW_BARK_TOWN, 3 ; placeholder
	warp_event  5,  7, NEW_BARK_TOWN, 3 ; placeholder

	def_coord_events
	coord_event  4,  2, SCENE_SAFARIZONEENTRANCE_DEFAULT, SafariZoneEntrance_LeftTriggerScene
	coord_event  5,  2, SCENE_SAFARIZONEENTRANCE_DEFAULT, SafariZoneEntrance_RightTriggerScene

	def_bg_events

	def_object_events
	object_event  2,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  7,  3, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneEntranceOfficerScript, -1
