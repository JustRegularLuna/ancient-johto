; text constants
	const_def 1
	; NPCs
	const_export BELLFLOWER_MUSEUM_RECEPTIONIST
	const_export BELLFLOWER_MUSEUM_SCIENTIST
	const_export BELLFLOWER_MUSEUM_GAMBLER
	const_export BELLFLOWER_MUSEUM_GIRL
	; signs
	const BELLFLOWER_MUSEUM_SIGN_1
	const BELLFLOWER_MUSEUM_DOME_FOSSIL
	const BELLFLOWER_MUSEUM_OLD_AMBER
	const BELLFLOWER_MUSEUM_HELIX_FOSSIL
	const BELLFLOWER_MUSEUM_SIGN_2
	const BELLFLOWER_MUSEUM_RAI_STATUE
	const BELLFLOWER_MUSEUM_EN_STATUE
	const BELLFLOWER_MUSEUM_SUI_STATUE
	const BELLFLOWER_MUSEUM_HOOH_STATUE

BellflowerMuseum_Object:
	db $0 ; border block

	def_warp_events
	warp_event  7, 19, LAST_MAP, 7
	warp_event  8, 19, LAST_MAP, 8
	warp_event  0, 13, BELLFLOWER_MUSEUM, 4
	warp_event  0,  1, BELLFLOWER_MUSEUM, 3

	def_bg_events
	bg_event  2, 15, BELLFLOWER_MUSEUM_SIGN_1
	bg_event  5, 15, BELLFLOWER_MUSEUM_DOME_FOSSIL
	bg_event  9, 15, BELLFLOWER_MUSEUM_OLD_AMBER
	bg_event 13, 15, BELLFLOWER_MUSEUM_HELIX_FOSSIL
	bg_event  8,  3, BELLFLOWER_MUSEUM_SIGN_2
	bg_event  5,  2, BELLFLOWER_MUSEUM_RAI_STATUE
	bg_event 11,  2, BELLFLOWER_MUSEUM_EN_STATUE
	bg_event  5,  5, BELLFLOWER_MUSEUM_SUI_STATUE
	bg_event 11,  5, BELLFLOWER_MUSEUM_HOOH_STATUE

	def_object_events
	object_event 12, 18, SPRITE_RECEPTIONIST, WALK, LEFT_RIGHT, BELLFLOWER_MUSEUM_RECEPTIONIST
	object_event  4, 16, SPRITE_SCIENTIST, STAY, UP, BELLFLOWER_MUSEUM_SCIENTIST
	object_event  1,  4, SPRITE_GAMBLER, STAY, NONE, BELLFLOWER_MUSEUM_GAMBLER
	object_event 12,  6, SPRITE_GAMBLER, STAY, UP, BELLFLOWER_MUSEUM_GIRL

	def_warps_to BELLFLOWER_MUSEUM


BellflowerMuseum_Script:
	jp EnableAutoTextBoxDrawing

BellflowerMuseum_TextPointers:
	dw BellflowerMuseumReceptionistText
	dw BellflowerMuseumScientistText
	dw BellflowerMuseumGamblerText
	dw BellflowerMuseumGirlText
	dw BellflowerMuseumSign1Text
	dw BellflowerMuseumDomeFossilText
	dw BellflowerMuseumOldAmberText
	dw BellflowerMuseumHelixFossilText
	dw BellflowerMuseumSign2Text
	dw BellflowerMuseumRaiStatueText
	dw BellflowerMuseumEnStateText
	dw BellflowerMuseumSuiStatueText
	dw BellflowerMuseumHoohStatueText

BellflowerMuseumReceptionistText:
	text "Preserving our"
	line "history is very"
	cont "important."
	done

BellflowerMuseumScientistText:
	text "It may sound like"
	line "science fiction,"

	para "but three years"
	line "ago, we were able"

	para "to clone #MON"
	line "from fossils just"
	cont "like these."

	para "The MUSEUM doesn't"
	line "want to try it on"

	para "the ones in their"
	line "collection, but"

	para "if you find any"
	line "yourself, stop by"

	para "the LAB near the"
	line "ANCIENT RUINS."
	done

BellflowerMuseumGamblerText:
	text "When I was just a"
	line "youngster, I saw"
	cont "the red dog in"
	cont "that one statue."

	para "People said it was"
	line "our protector."

	para "I haven't seen it"
	line "for many years,"
	cont "though."

	para "I wonder where it"
	line "went?"
	done

BellflowerMuseumGirlText:
	text "This statue looks"
	line "so regal!"

	para "I wonder if the"
	line "#MON it was"
	cont "based on is still"
	cont "around?"
	done

BellflowerMuseumSign1Text:
	text "FOSSIL EXHIBIT"

	para "These fossils were"
	line "all unearthed in"
	cont "the caves near"
	cont "the city."

	para "They are millions"
	line "of years older"
	cont "than any other"
	cont "exhibit here."
	done

BellflowerMuseumDomeFossilText:
	text "A fossil believed"
	line "to be KABUTO."
	done

BellflowerMuseumOldAmberText:
	text "A polished piece"
	line "of OLD AMBER."

	para "It appears to have"
	line "a large mosquito"
	cont "inside of it."
	done

BellflowerMuseumHelixFossilText:
	text "A fossil believed"
	line "to be OMANYTE."
	done

BellflowerMuseumSign2Text:
	text "ANCIENT RELICS"

	para "The statues here"
	line "depict #MON"
	cont "that, according"
	cont "to legend, have"
	cont "inhabited this"
	cont "region for many"
	cont "generations."

	para "The statues are"
	line "all thousands of"
	cont "years old, and"
	cont "were unearthed in"
	cont "the ANCIENT RUINS"
	cont "during a recent"
	cont "excavation."
	done

BellflowerMuseumRaiStatueText:
	text "A statue depicting"
	line "a canine #MON."

	para "It is painted in"
	line "black and yellow."
	done

BellflowerMuseumEnStateText:
	text "A statue depicting"
	line "a canine #MON."

	para "It is painted in"
	line "red and orange."
	done

BellflowerMuseumSuiStatueText:
	text "A statue depicting"
	line "a canine #MON."

	para "It is painted in"
	line "blue and white."
	done

BellflowerMuseumHoohStatueText:
	text "A statue depicting"
	line "a majestic bird"
	cont "#MON with its"
	cont "wings outspread."

	para "It is painted in"
	line "red and orange."
	done
