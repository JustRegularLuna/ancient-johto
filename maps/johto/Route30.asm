; text constants
	const_def 1
	; NPCs

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

	def_warps_to ROUTE_30


Route30_Script:
	jp EnableAutoTextBoxDrawing

Route30_TextPointers:
	dw Route30SignText
	dw Route30TrainerTipsText
	dw Route30MrPokemonDirectionsText
	dw Route30MrPokemonHouseText

Route30SignText:
	text "ROUTE 30"

	para "VIOLET CITY -"
	line "CHERRYGROVE CITY"
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
	text "MR.#MON'S HOUSE"
	line "Straight Ahead!"
	done

Route30MrPokemonHouseText:
	text "MR.#MON'S HOUSE"
	done
