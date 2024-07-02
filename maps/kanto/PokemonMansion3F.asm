PokemonMansion3F_Object:
	db $1 ; border block

	def_warp_events
	warp_event  7, 10, POKEMON_MANSION_2F, 2
	warp_event  6,  1, POKEMON_MANSION_2F, 4
	warp_event 25, 14, POKEMON_MANSION_2F, 3

	def_bg_events

	def_object_events

	def_warps_to POKEMON_MANSION_3F

PokemonMansion3F_Script:
	jp EnableAutoTextBoxDrawing

PokemonMansion3F_TextPointers:
	dw -1
