; text constants
	const_def 1
	; NPCs
	const_export PLAYERSHOUSE_MOM
	; Signs
	const PLAYERSHOUSE_STOVE
	const PLAYERSHOUSE_SINK
	const PLAYERSHOUSE_FRIDGE
	const PLAYERSHOUSE_TV

PlayersHouse1F_Object:
	db $0 ; border block

	def_warp_events
	warp_event  9,  0, PLAYERS_HOUSE_2F, 1
	warp_event  6,  7, LAST_MAP, 1
	warp_event  7,  7, LAST_MAP, 1

	def_bg_events
	bg_event  0,  1, PLAYERSHOUSE_STOVE
	bg_event  1,  1, PLAYERSHOUSE_SINK
	bg_event  2,  1, PLAYERSHOUSE_FRIDGE
	bg_event  4,  1, PLAYERSHOUSE_TV

	def_object_events
	object_event  7,  4, SPRITE_MOM, STAY, LEFT, PLAYERSHOUSE_MOM

	def_warps_to PLAYERS_HOUSE_1F


PlayersHouse1F_Script:
	jp EnableAutoTextBoxDrawing

PlayersHouse1F_TextPointers:
	dw PlayersHouse1FMomText
	dw PlayersHouse1FStoveText
	dw PlayersHouse1FSinkText
	dw PlayersHouse1FFridgeText
	dw PlayersHouse1FTVText

PlayersHouse1FMomText:
	text_asm
	CheckEvent EVENT_GOT_STARTER
	ld hl, PlayersHouseMomAfterPokemonText
	jr nz, .got_text
	ld hl, PlayersHouseMomGoSeeElmText
.got_text
	call PrintText
	jp TextScriptEnd

PlayersHouseMomGoSeeElmText:
	text "MOM: <PLAYER>!"
	line "PROF.ELM is wait-"
	cont "ing for you."

	para "Hurry up, baby!"
	done

PlayersHouseMomAfterPokemonText:
	text "MOM: PROF. ELM"
	line "tells me you're"
	cont "going on a long"
	cont "trip…"

	para "I hope you'll stop"
	line "by and visit me."
	done

PlayersHouse1FStoveText: ; Bell Beefer? Sloppy José? VOLCANO BAKEMEAT?
	text "Spicy sloppy joes,"
	line "made with taco"
	cont "meat!"

	para "It smells yummy!"
	done

PlayersHouse1FSinkText:
	text "The sink is shiny"
	line "and clean."
	done

PlayersHouse1FFridgeText:
	text "Let's see what's"
	line "in the fridge…"

	para "FRESH WATER and my"
	line "favorite flavors"
	cont "of SODA POP!"
	done

PlayersHouse1FTVText:
	text_asm
	ld a, [wSpritePlayerStateData1FacingDirection]
	cp SPRITE_FACING_UP
	ld hl, PlayersHouseTVWrongSideText
	jr nz, .got_text
	ld hl, PlayersHouseMovieText
.got_text
	call PrintText
	jp TextScriptEnd

PlayersHouseMovieText: ; Back to the Future
	text "There's a movie on"
	line "TV: A modified"

	para "sports car races"
	line "down an empty"

	para "city street, and"
	line "vanishes in a"

	para "blinding flash of"
	line "light…"

	para "I'd better get"
	line "going too!"
	done

PlayersHouseTVWrongSideText:
	text "Oops, wrong side."
	done
