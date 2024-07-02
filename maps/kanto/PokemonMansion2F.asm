PokemonMansion2F_Object:
	db $1 ; border block

	def_warp_events
	warp_event  5, 10, POKEMON_MANSION_1F, 5
	warp_event  7, 10, POKEMON_MANSION_3F, 1
	warp_event 25, 14, POKEMON_MANSION_3F, 3
	warp_event  6,  1, POKEMON_MANSION_3F, 2

	def_bg_events

	def_object_events

	def_warps_to POKEMON_MANSION_2F

PokemonMansion2F_Script:
	jp EnableAutoTextBoxDrawing

PokemonMansion2F_TextPointers:
	dw -1
