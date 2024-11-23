; text constants
	const_def 1
	; NPCs
	const_export BELLFLOWER_PP_UP
	const_export BELLFLOWER_RARE_CANDY
	const_export BELLFLOWER_BERRYTREE
	const_export BELLFLOWER_CHANNELER
	const_export BELLFLOWER_GRAMPS
	const_export BELLFLOWER_YOUNGSTER
	const_export BELLFLOWER_LASS
	; Signs
	const BELLFLOWER_CITY_SIGN
	const BELLFLOWER_POKECENTER_SIGN
	const BELLFLOWER_MART_SIGN
	const BELLFLOWER_TOWER_SIGN
	const BELLFLOWER_SCHOOL_SIGN
	const BELLFLOWER_GYM_SIGN
	const BELLFLOWER_JOKE_SIGN
	const BELLFLOWER_MUSEUM_SIGN
	const BELLFLOWER_KURTS_HOUSE_SIGN

BellflowerCity_Object:
	db $5 ; border block

	def_warp_events
	warp_event 29, 29, BELLFLOWER_POKECENTER, 1
	warp_event 25, 29, BELLFLOWER_MART, 1
	warp_event 18, 29, BELLFLOWER_GYM, 1
	warp_event 19, 29, BELLFLOWER_GYM, 2
	warp_event 32, 17, BELLFLOWER_SCHOOL_HOUSE, 1
	warp_event 33, 17, BELLFLOWER_SCHOOL_HOUSE, 2
	warp_event 16,  4, BELLFLOWER_MUSEUM, 1
	warp_event 17,  4, BELLFLOWER_MUSEUM, 2
	warp_event  3, 15, BELLFLOWER_HOUSE, 1
	warp_event 33,  3, KURTS_HOUSE, 1
	warp_event 17, 18, LAST_MAP, 11 ; Sprout Tower
	warp_event 18, 18, LAST_MAP, 12 ; Sprout Tower

	def_bg_events
	bg_event 33, 27, BELLFLOWER_CITY_SIGN
	bg_event 30, 29, BELLFLOWER_POKECENTER_SIGN
	bg_event 26, 29, BELLFLOWER_MART_SIGN
	bg_event 20, 20, BELLFLOWER_TOWER_SIGN
	bg_event 29, 17, BELLFLOWER_SCHOOL_SIGN
	bg_event 15, 29, BELLFLOWER_GYM_SIGN
	bg_event 19, 29, BELLFLOWER_JOKE_SIGN
	bg_event 18,  6, BELLFLOWER_MUSEUM_SIGN
	bg_event 32,  4, BELLFLOWER_KURTS_HOUSE_SIGN

	def_object_events
	object_event 26,  1, SPRITE_POKE_BALL, STAY, NONE, BELLFLOWER_PP_UP, PP_UP
	object_event 39,  5, SPRITE_POKE_BALL, STAY, NONE, BELLFLOWER_RARE_CANDY, RARE_CANDY
	object_event 25,  7, SPRITE_FRUIT_TREE, STAY, NONE, BELLFLOWER_BERRYTREE
	object_event 13,  8, SPRITE_CHANNELER, WALK, LEFT_RIGHT, BELLFLOWER_CHANNELER
	object_event 17, 30, SPRITE_GRAMPS, STAY, DOWN, BELLFLOWER_GRAMPS
	object_event 19, 22, SPRITE_YOUNGSTER, WALK, LEFT_RIGHT, BELLFLOWER_YOUNGSTER
	object_event 33, 20, SPRITE_LASS, STAY, NONE, BELLFLOWER_LASS

	def_warps_to BELLFLOWER_CITY


BellflowerCity_Script:
	jp EnableAutoTextBoxDrawing

BellflowerCity_TextPointers:
	dw PickUpItemText
	dw PickUpItemText
	dw BellflowerBerryTreeText
	dw BellflowerChannelerText
	dw BellflowerGrampsText
	dw BellflowerYoungsterText
	dw BellflowerLassText
	dw BellflowerCitySignText
	dw PokeCenterSignText
	dw MartSignText
	dw BellflowerTowerSignText
	dw BellflowerSchoolSignText
	dw BellflowerGymSignText
	dw BellflowerJokeSignText
	dw BellflowerMuseumSignText
	dw BellflowerKurtsHouseSignText

BellflowerBerryTreeText:
	text_asm
	ld a, FRUITTREE_BELLFLOWER_CITY
	ld [wWhichTrade], a
	farcall BerryTreeScript
	jp TextScriptEnd

BellflowerChannelerText:
	text_asm
	ld hl, .DoYouBelieveText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .no
	ld hl, .SaidYesText
	call PrintText
	jr .text_script_end
.no
	ld hl, .SaidNoText
	call PrintText
.text_script_end
	jp TextScriptEnd

.DoYouBelieveText:
	text "Tell me…"

	para "Do you believe in"
	line "ghosts?"
	done

.SaidNoText:
	text "I see… Hopefully"
	line "you believe in"
	cont "GASTLY, at least…"

	para "They're all over"
	line "the BELL TOWER…"
	done

.SaidYesText:
	text "You might want to"
	line "go explore the"
	cont "ANCIENT RUINS,"
	cont "then…"

	para "Something strange"
	line "has been going on"
	cont "there lately…"
	done

BellflowerGrampsText:
	text "This is a second-"
	line "generation GYM."

	para "WALKER was the"
	line "LEADER when this"

	para "GYM opened, all"
	line "those years ago."

	para "Now, his son has"
	line "taken over the"
	cont "family business."
	done

BellflowerYoungsterText:
	text "I went into the"
	line "BELL TOWER here,"
	cont "looking to catch"
	cont "a BELLSPROUT."

	para "Turns out, the"
	line "only ones inside"
	cont "belong to all the"
	cont "trainers…"

	para "Boy, was I sure"
	line "embarassed!"
	done

BellflowerLassText:
	text "Are you going to"
	line "ask KURT to make"
	cont "some # BALLS"
	cont "for you?"

	para "Very few people"
	line "still know how to"
	cont "make them by hand"
	cont "from APRICORNS"
	cont "like he does."
	done

BellflowerCitySignText:
	text "BELLFLOWER CITY"

	para "A village with"
	line "nostalgic charm."
	done

BellflowerTowerSignText:
	text "BELL TOWER"

	para "Discover the ways"
	line "of the BELLSPROUT"
	cont "to improve your"
	cont "life."
	done

BellflowerSchoolSignText:
	text "BELLFLOWER #MON"
	line "ACADEMY"
	done

BellflowerGymSignText:
	text "BELLFLOWER CITY"
	line "#MON GYM"

	para "LEADER: FALKNER"

	para "The High Flying"
	line "Bird Master!"
	done

BellflowerJokeSignText:
	text "There is a note"
	line "taped here…"

	para "BORN TO FLY"
	line "ELECTRIC IS HECK"

	para "Faint Em All 1999"
	line "I am bird man"

	para "410,757,864,530"
	line "FAINTED MAREEP"
	done

BellflowerMuseumSignText:
	text "BELLFLOWER MUSEUM"
	done

BellflowerKurtsHouseSignText:
	text "KURT'S HOUSE"
	done
