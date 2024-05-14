; text constants
	const_def 1
	; NPCs
	const_export VIOLET_ITEMBALL_1
	const_export VIOLET_ITEMBALL_2
	const_export VIOLET_BERRYTREE
	const_export VIOLET_LASS
	const_export VIOLET_GRAMPS
	const_export VIOLET_YOUNGSTER
	; Signs
	const VIOLET_POKECENTER_SIGN
	const VIOLET_MART_SIGN
	const VIOLET_SLOGAN_SIGN
	const VIOLET_SCHOOL_SIGN
	const VIOLET_SPROUT_TOWER_SIGN
	const VIOLET_CITY_GYM_SIGN

VioletCity_Object:
	db $5 ; border block

	def_warps
	warp 39, 24, 2, ROUTE_31_GATE
	warp 39, 25, 3, ROUTE_31_GATE
	warp 31, 25, 0, VIOLET_POKECENTER
	warp  9, 17, 0, VIOLET_MART
	warp 30, 17, 0, VIOLET_SCHOOL_HOUSE
	warp 21, 29, 0, VIOLET_TRADE_HOUSE
	warp  3, 15, 0, VIOLET_HOUSE_2
	warp 18, 17, 0, VIOLET_GYM
	warp 23,  5, 0, SPROUT_TOWER_1F

	def_signs
	sign 32, 25, VIOLET_POKECENTER_SIGN
	sign 10, 17, VIOLET_MART_SIGN
	sign 24, 20, VIOLET_SLOGAN_SIGN
	sign 27, 17, VIOLET_SCHOOL_SIGN
	sign 24,  8, VIOLET_SPROUT_TOWER_SIGN
	sign 15, 17, VIOLET_CITY_GYM_SIGN

	def_objects
	object SPRITE_POKE_BALL,  4,  1, STAY, NONE, VIOLET_ITEMBALL_1, PP_UP
	object SPRITE_POKE_BALL, 35,  5, STAY, NONE, VIOLET_ITEMBALL_2, RARE_CANDY
	object SPRITE_FRUIT_TREE, 14, 29, STAY, NONE, VIOLET_BERRYTREE
	object SPRITE_LASS, 27, 27, STAY, NONE, VIOLET_LASS
	object SPRITE_GRAMPS, 16, 18, STAY, DOWN, VIOLET_GRAMPS
	object SPRITE_YOUNGSTER, 24, 12, WALK, UP_DOWN, VIOLET_YOUNGSTER

	def_warps_to VIOLET_CITY


VioletCity_Script:
	jp EnableAutoTextBoxDrawing

VioletCity_TextPointers:
	dw PickUpItemText
	dw PickUpItemText
	dw VioletBerryTreeText
	dw VioletLassText
	dw VioletGrampsText
	dw VioletYoungsterText
	dw PokeCenterSignText
	dw MartSignText
	dw VioletSloganSignText
	dw VioletSchoolSignText
	dw VioletSproutTowerSignText
	dw VioletCityGymSignText

VioletBerryTreeText:
	text_asm
	ld a, FRUITTREE_VIOLET_CITY
	ld [wWhichTrade], a
	farcall BerryTreeScript
	jp TextScriptEnd

VioletLassText:
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
	text "Hi! Do you believe"
	line "in ghosts?"
	done

.SaidNoText:
	text "What? Hopefully"
	line "you believe in"
	cont "GASTLY, at least…"

	para "They're all over"
	line "SPROUT TOWER!"
	done

.SaidYesText:
	text "You might want to"
	line "go explore the"
	cont "RUINS OF ALPH,"
	cont "then."

	para "Something strange"
	line "has been going on"
	cont "out there lately…"
	done

VioletGrampsText:
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

VioletYoungsterText:
	text "I went into the"
	line "SPROUT TOWER"
	cont "looking to catch"
	cont "a BELLSPROUT."

	para "Turns out, the"
	line "only ones inside"
	cont "belong to all the"
	cont "trainers…"

	para "Boy, was I sure"
	line "embarassed!"
	done

VioletSloganSignText:
	text "VIOLET CITY"

	para "The city of nost-"
	line "algic scents."
	done

VioletSchoolSignText:
	text "EARL's #MON"
	line "SCHOOL"
	done

VioletSproutTowerSignText:
	text "SPROUT TOWER"

	para "Experience the way"
	line "of the BELLSPROUT"
	cont "to cast aside all"
	cont "worry."
	done

VioletCityGymSignText:
	text "VIOLET CITY GYM"
	line "LEADER: FALKNER"

	para "The master of"
	line "FLYING #MON."
	done
