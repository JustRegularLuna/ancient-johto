PokemonMansionB1F_Object:
	db $1 ; border block

	def_warp_events
	warp_event 23, 22, POKEMON_MANSION_1F, 6

	def_bg_events

	def_object_events

	def_warps_to POKEMON_MANSION_B1F

PokemonMansionB1F_Script:
	jp EnableAutoTextBoxDrawing

PokemonMansionB1F_TextPointers:
	dw -1
